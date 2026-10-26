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
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A228039.P4227557278893953699

`A010060(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228039.P4227557278893953699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n ^ 2)

end

end A228039.P4227557278893953699

noncomputable section

/-- A228039: Thue-Morse sequence along the squares: A010060(n^2).

Offset 0, canonical program `A228039.P4227557278893953699`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(n²)` (program `A228039.P4227557278893953699`, by `A228039.P4227557278893953699.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A228039 (n : ℕ) : ℤ :=
  A228039.P4227557278893953699.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(n²)` (program `A228039.P4227557278893953699`, by `A228039.P4227557278893953699.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A228039.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A293162.P16567619776842325743

`A010060(3*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293162.P16567619776842325743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (3 * n)

end

end A293162.P16567619776842325743

noncomputable section

/-- A293162: Take every third term of the {0,1}-version of the Thue-Morse sequence: a(n) = A010060(3n).

Offset 0, canonical program `A293162.P16567619776842325743`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(3*n)` (program `A293162.P16567619776842325743`, by `A293162.P16567619776842325743.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A293162 (n : ℕ) : ℤ :=
  A293162.P16567619776842325743.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(3*n)` (program `A293162.P16567619776842325743`, by `A293162.P16567619776842325743.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A293162.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A293163.P4132471224215771802

`A010060(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293163.P4132471224215771802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (3 * n + 1)

end

end A293163.P4132471224215771802

noncomputable section

/-- A293163: a(n) = A010060(3n+1).

Offset 0, canonical program `A293163.P4132471224215771802`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(3*n+1)` (program `A293163.P4132471224215771802`, by `A293163.P4132471224215771802.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A293163 (n : ℕ) : ℤ :=
  A293163.P4132471224215771802.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(3*n+1)` (program `A293163.P4132471224215771802`, by `A293163.P4132471224215771802.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A293163.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A293164.P10087759990100678830

`A010060(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293164.P10087759990100678830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (3 * n + 2)

end

end A293164.P10087759990100678830

noncomputable section

/-- A293164: a(n) = A010060(3n+2).

Offset 0, canonical program `A293164.P10087759990100678830`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(3*n+2)` (program `A293164.P10087759990100678830`, by `A293164.P10087759990100678830.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A293164 (n : ℕ) : ℤ :=
  A293164.P10087759990100678830.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(3*n+2)` (program `A293164.P10087759990100678830`, by `A293164.P10087759990100678830.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A293164.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A197863.P618205374624486698

`(n+1)*A055231(n+1)`
-/

namespace A197863.P618205374624486698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055231 (n + 1)

end

end A197863.P618205374624486698

noncomputable section

/-- A197863: Smallest powerful number that is a multiple of n.

Offset 1, canonical program `A197863.P618205374624486698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A197863 (n : ℕ) : ℤ :=
  A197863.P618205374624486698.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A197863.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A201208.P11775252334027749297

`A057212(n+1)+1`
-/

namespace A201208.P11775252334027749297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1) + 1

end

end A201208.P11775252334027749297

noncomputable section

/-- A201208: One 1, two 2's, three 1's, four 2's, five 1's, ...

Offset 1, canonical program `A201208.P11775252334027749297`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A201208 (n : ℕ) : ℤ :=
  A201208.P11775252334027749297.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A201208.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A202342.P5796561117243952660

`A005374(A136496(n+1))`
-/

namespace A202342.P5796561117243952660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A136496 (n + 1)).toNat

end

end A202342.P5796561117243952660

noncomputable section

/-- A202342: Numbers occurring exactly twice in Hofstadter H-sequence A005374.

Offset 1, canonical program `A202342.P5796561117243952660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202342 (n : ℕ) : ℤ :=
  A202342.P5796561117243952660.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A203008.P4929955156994495110

`1/2*(A024451(1+n)-A070826(1+n))`
-/

namespace A203008.P4929955156994495110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A024451 (1 + n) - A070826 (1 + n) : ℚ)

end

end A203008.P4929955156994495110

noncomputable section

/-- A203008: (n-1)-st elementary symmetric function of the first n odd primes; a(0) = 0.

Offset 0, canonical program `A203008.P4929955156994495110`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203008 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A203008.P4929955156994495110.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A206787.P5835391057460083436

`A048250(n+1)/A010684(n)`
-/

namespace A206787.P5835391057460083436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A206787.P5835391057460083436

noncomputable section

/-- A206787: Sum of the odd squarefree divisors of n.

Offset 1, canonical program `A206787.P5835391057460083436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206787 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A206787.P5835391057460083436.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206787.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213714.P736048023233046129

`A079559(n)*(A046699(n+2)-1)`
-/

namespace A213714.P736048023233046129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n * (A046699 (n + 2) - 1)

end

end A213714.P736048023233046129

noncomputable section

/-- A213714: Inverse function for injection A005187.

Offset 0, canonical program `A213714.P736048023233046129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213714 (n : ℕ) : ℤ :=
  A213714.P736048023233046129.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214560.P494932617173923030

`A023416(n²)`
-/

namespace A214560.P494932617173923030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n ^ 2)

end

end A214560.P494932617173923030

noncomputable section

/-- A214560: Number of 0's in binary expansion of n^2.

Offset 0, canonical program `A214560.P494932617173923030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214560 (n : ℕ) : ℤ :=
  A214560.P494932617173923030.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A215947.P3538818604850998885

`A239050(n+1)-A062731(n+1)`
-/

namespace A215947.P3538818604850998885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239050 (n + 1) - A062731 (n + 1)

end

end A215947.P3538818604850998885

noncomputable section

/-- A215947: Difference between the sum of the even divisors and the sum of the odd divisors of 2n.

Offset 1, canonical program `A215947.P3538818604850998885`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215947 (n : ℕ) : ℤ :=
  A215947.P3538818604850998885.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215947.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216144.P10868306596373888871

`A060797(n+1)+1`
-/

namespace A216144.P10868306596373888871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060797 (n + 1) + 1

end

end A216144.P10868306596373888871

noncomputable section

/-- A216144: Square root of smallest square greater than the product of first n primes.

Offset 1, canonical program `A216144.P10868306596373888871`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216144 (n : ℕ) : ℤ :=
  A216144.P10868306596373888871.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216195.P5070679371522791591

`A007302(n+1)+1`
-/

namespace A216195.P5070679371522791591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (n + 1) + 1

end

end A216195.P5070679371522791591

noncomputable section

/-- A216195: Abelian complexity function of the period-doubling sequence (A096268).

Offset 1, canonical program `A216195.P5070679371522791591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216195 (n : ℕ) : ℤ :=
  A216195.P5070679371522791591.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216195.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A224195.P2968674169476824705

`A081118(n+1)+2`
-/

namespace A224195.P2968674169476824705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) + 2

end

end A224195.P2968674169476824705

noncomputable section

/-- A224195: Ordered sequence of numbers of form (2^n - 1)*2^m + 1 where n >= 1, m >= 1.

Offset 1, canonical program `A224195.P2968674169476824705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A224195 (n : ℕ) : ℤ :=
  A224195.P2968674169476824705.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A224195.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A225081.P6319409890311663631

`2^(A005811(n+1)-1)`
-/

namespace A225081.P6319409890311663631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005811 (n + 1) - 1 : ℤ)

end

end A225081.P6319409890311663631

noncomputable section

/-- A225081: Gray code variant of A048896.

Offset 0, canonical program `A225081.P6319409890311663631`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225081 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A225081.P6319409890311663631.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227169.P12999617952910354842

`3*A135389(n)/((n+2)*(n+3))`
-/

namespace A227169.P12999617952910354842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A135389 n : ℚ) / ((n + 2) * (n + 3) : ℚ)

end

end A227169.P12999617952910354842

noncomputable section

/-- A227169: a(n) = 3*((2*n+2)!)^2 / (n!*(n+1)!*(n+2)!*(n+3)!).

Offset 0, canonical program `A227169.P12999617952910354842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227169 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227169.P12999617952910354842.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227169.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227991.P607222595589635829

`3^A227990(n+1)`
-/

namespace A227991.P607222595589635829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A227990 (n + 1) : ℤ)

end

end A227991.P607222595589635829

noncomputable section

/-- A227991: Highest power of 3 dividing prime(n)+1.

Offset 1, canonical program `A227991.P607222595589635829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227991.P607222595589635829.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228495.P3981489379467428454

`A000035(n)*A010060(n)`
-/

namespace A228495.P3981489379467428454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A010060 n

end

end A228495.P3981489379467428454

noncomputable section

/-- A228495: Characteristic function of the odd odious numbers (A092246).

Offset 0, canonical program `A228495.P3981489379467428454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228495 (n : ℕ) : ℤ :=
  A228495.P3981489379467428454.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A229067.P4043255727745089421

`A000040(n+1)+A145445(n+1)`
-/

namespace A229067.P4043255727745089421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A145445 (n + 1)

end

end A229067.P4043255727745089421

noncomputable section

/-- A229067: Sum of n-th prime and next perfect square.

Offset 1, canonical program `A229067.P4043255727745089421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229067 (n : ℕ) : ℤ :=
  A229067.P4043255727745089421.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229067.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A229497.P2706809178029199216

`A000040(n+1)*A145445(n+1)`
-/

namespace A229497.P2706809178029199216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A145445 (n + 1)

end

end A229497.P2706809178029199216

noncomputable section

/-- A229497: Product between n-th prime and next perfect square.

Offset 1, canonical program `A229497.P2706809178029199216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229497 (n : ℕ) : ℤ :=
  A229497.P2706809178029199216.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230714.P17564723223337425468

`n!*A205958(n)`
-/

namespace A230714.P17564723223337425468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A205958 n

end

end A230714.P17564723223337425468

noncomputable section

/-- A230714: a(n) = lcm(1,2,...,n)*a(floor(n/2))^2 for n > 0, a(0) = 1.

Offset 0, canonical program `A230714.P17564723223337425468`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230714 (n : ℕ) : ℤ :=
  A230714.P17564723223337425468.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232243.P16373768799838248871

`A159918(n)-A000120(n)`
-/

namespace A232243.P16373768799838248871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n - A000120 n

end

end A232243.P16373768799838248871

noncomputable section

/-- A232243: a(n) = wt(n^2) - wt(n), where wt(n) = A000120(n) is the binary weight function.

Offset 0, canonical program `A232243.P16373768799838248871`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232243 (n : ℕ) : ℤ :=
  A232243.P16373768799838248871.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232243.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232245.P5094151863049896055

`A159918(n)+A000120(n)`
-/

namespace A232245.P5094151863049896055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n + A000120 n

end

end A232245.P5094151863049896055

noncomputable section

/-- A232245: Sum of the number of ones in binary representation of n and n^2.

Offset 0, canonical program `A232245.P5094151863049896055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232245 (n : ℕ) : ℤ :=
  A232245.P5094151863049896055.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232245.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232637.P15784883994947189699

`A000069(A000069(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A232637.P15784883994947189699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A000069 (n + 1)).toNat

end

end A232637.P15784883994947189699

noncomputable section

/-- A232637: Odious numbers of order 2: a(n) = A000069(A000069(n)).

Offset 1, canonical program `A232637.P15784883994947189699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232637 (n : ℕ) : ℤ :=
  A232637.P15784883994947189699.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232637.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234011.P632387481214595856

`A000069(n+1)+A000069(n+2)`
-/

namespace A234011.P632387481214595856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + A000069 (n + 2)

end

end A234011.P632387481214595856

noncomputable section

/-- A234011: The sums of 2 consecutive odious numbers (A000069).

Offset 1, canonical program `A234011.P632387481214595856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234011 (n : ℕ) : ℤ :=
  A234011.P632387481214595856.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234011.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234016.P16847082992809600842

`a(n-1)+1-A079559(n)` with `a(0)=0`
-/

namespace A234016.P16847082992809600842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A079559 n)

end

end A234016.P16847082992809600842

noncomputable section

/-- A234016: Partial sums of the characteristic function of A055938.

Offset 0, canonical program `A234016.P16847082992809600842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234016 (n : ℕ) : ℤ :=
  A234016.P16847082992809600842.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236840.P5330150570220508668

`n-A005811(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A236840.P5330150570220508668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005811 n

end

end A236840.P5330150570220508668

noncomputable section

/-- A236840: n minus number of runs in the binary expansion of n: a(n) = n - A005811(n).

Offset 0, canonical program `A236840.P5330150570220508668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236840 (n : ℕ) : ℤ :=
  A236840.P5330150570220508668.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240857.P5485024977046605687

`A048881(col(n)+row(n))`
-/

namespace A240857.P5485024977046605687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (SequenceMachineLib.triCol n + SequenceMachineLib.triRow n)

end

end A240857.P5485024977046605687

noncomputable section

/-- A240857: Triangle read by rows: T(0,0) = 0; T(n+1,k) = T(n,k+1), 0 <= k < n; T(n+1,n) = T(n,0); T(n+1,n+1) = T(n,0)+1.

Offset 0, canonical program `A240857.P5485024977046605687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240857 (n : ℕ) : ℤ :=
  A240857.P5485024977046605687.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240857.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240883.P5378419761383427474

`A046818(n)-1`
-/

namespace A240883.P5378419761383427474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046818 n - 1

end

end A240883.P5378419761383427474

noncomputable section

/-- A240883: Central terms of the triangle in A240857.

Offset 0, canonical program `A240883.P5378419761383427474`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240883 (n : ℕ) : ℤ :=
  A240883.P5378419761383427474.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242481.P14390238496426978029

`A242480(n+1)/(n+1)`
-/

namespace A242481.P14390238496426978029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242480 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A242481.P14390238496426978029

noncomputable section

/-- A242481: a(n) = ((n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n) / n.

Offset 1, canonical program `A242481.P14390238496426978029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242481 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242481.P14390238496426978029.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243499.P13821279400790425584

`(1+A023416(n))*a(A053645(n))` with `a(0)=1`
-/

namespace A243499.P13821279400790425584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 + A023416 n) * a (A053645 n).toNat

end

end A243499.P13821279400790425584

noncomputable section

/-- A243499: Product of parts of integer partitions as enumerated in the table A125106.

Offset 0, canonical program `A243499.P13821279400790425584`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243499 (n : ℕ) : ℤ :=
  A243499.P13821279400790425584.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243980.P11138556836325931032

`4*A024916(n+1)`
-/

namespace A243980.P11138556836325931032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A024916 (n + 1)

end

end A243980.P11138556836325931032

noncomputable section

/-- A243980: Four times the sum of all divisors of all positive integers <= n.

Offset 1, canonical program `A243980.P11138556836325931032`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243980 (n : ℕ) : ℤ :=
  A243980.P11138556836325931032.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243980.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244465.P2424451479601373234

`(-1)^n*A214264(n)`
-/

namespace A244465.P2424451479601373234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A214264 n

end

end A244465.P2424451479601373234

noncomputable section

/-- A244465: Expansion of f(-x^3, -x^5) in powers of x where f() is Ramanujan's two-variable theta function.

Offset 0, canonical program `A244465.P2424451479601373234`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244465 (n : ℕ) : ℤ :=
  A244465.P2424451479601373234.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244465.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244525.P10571466511866612896

`(-1)^n*A214263(n)`
-/

namespace A244525.P10571466511866612896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A214263 n

end

end A244525.P10571466511866612896

noncomputable section

/-- A244525: Expansion of f(-x^1, -x^7) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A244525.P10571466511866612896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244525 (n : ℕ) : ℤ :=
  A244525.P10571466511866612896.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244525.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244583.P1388980908316134735

`A024916(A000040(n+1))`
-/

namespace A244583.P1388980908316134735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A000040 (n + 1)).toNat

end

end A244583.P1388980908316134735

noncomputable section

/-- A244583: a(n) = sum of all divisors of all positive integers <= prime(n).

Offset 1, canonical program `A244583.P1388980908316134735`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244583 (n : ℕ) : ℤ :=
  A244583.P1388980908316134735.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244621.P10991117742551691609

`A024451(n+1)%12`
-/

namespace A244621.P10991117742551691609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024451 (n + 1)) 12

end

end A244621.P10991117742551691609

noncomputable section

/-- A244621: (First arithmetic derivative of primorials) read mod 12.

Offset 1, canonical program `A244621.P10991117742551691609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244621 (n : ℕ) : ℤ :=
  A244621.P10991117742551691609.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244621.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244824.P13510409849128085719

`A024916(A000079(n))`
-/

namespace A244824.P13510409849128085719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A000079 n).toNat

end

end A244824.P13510409849128085719

noncomputable section

/-- A244824: Sum of all divisors of all positive integers <= 2^n.

Offset 0, canonical program `A244824.P13510409849128085719`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244824 (n : ℕ) : ℤ :=
  A244824.P13510409849128085719.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A246960.P13943913027465924161

`A005811(n)%4`
-/

namespace A246960.P13943913027465924161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 n) 4

end

end A246960.P13943913027465924161

noncomputable section

/-- A246960: Directions of the lines in the (Heighway) Dragon Curve.

Offset 0, canonical program `A246960.P13943913027465924161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246960 (n : ℕ) : ℤ :=
  A246960.P13943913027465924161.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A250093.P5831941036718819745

`A069110((n+1)²)`
-/

namespace A250093.P5831941036718819745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069110 ((n + 1) ^ 2)

end

end A250093.P5831941036718819745

noncomputable section

/-- A250093: Squarefree part of Fibonacci(n^2).

Offset 1, canonical program `A250093.P5831941036718819745`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250093 (n : ℕ) : ℤ :=
  A250093.P5831941036718819745.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250093.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254379.P11537696663455735807

`A059841(n)*A010060(n)`
-/

namespace A254379.P11537696663455735807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A010060 n

end

end A254379.P11537696663455735807

noncomputable section

/-- A254379: Characteristic function of the even odious numbers (A128309).

Offset 0, canonical program `A254379.P11537696663455735807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254379 (n : ℕ) : ℤ :=
  A254379.P11537696663455735807.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254379.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254633.P6403475487283811037

`4^n*A172392(n)`
-/

namespace A254633.P6403475487283811037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A172392 n

end

end A254633.P6403475487283811037

noncomputable section

/-- A254633: a(n) = 16^n*[x^n]hypergeometric([3/2, -2*n], [3], -x).

Offset 0, canonical program `A254633.P6403475487283811037`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254633 (n : ℕ) : ℤ :=
  A254633.P6403475487283811037.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255817.P14378805417068519773

`A115384(n)%2`
-/

namespace A255817.P14378805417068519773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115384 n) 2

end

end A255817.P14378805417068519773

noncomputable section

/-- A255817: Parity of A000788, which is the total number of ones in 0..n in binary.

Offset 0, canonical program `A255817.P14378805417068519773`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255817 (n : ℕ) : ℤ :=
  A255817.P14378805417068519773.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255817.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261226.P5886764903879751177

`1+a(A261225(n))` with `a(0)=0, a(1)=1`
-/

namespace A261226.P5886764903879751177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A261225 n).toNat

end

end A261226.P5886764903879751177

noncomputable section

/-- A261226: a(n) = number of steps to reach 0 when starting from k = n and repeatedly applying the map that replaces k with k - A055401(k), where A055401(k) = the number of positive cubes needed to sum to k using the greedy algorithm.

Offset 0, canonical program `A261226.P5886764903879751177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261226 (n : ℕ) : ℤ :=
  (A261226.P5886764903879751177.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261226.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261233.P9209519308442447348

`A261232(n)-1`
-/

namespace A261233.P9209519308442447348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261232 n - 1

end

end A261233.P9209519308442447348

noncomputable section

/-- A261233: a(n) = number of steps to reach 0 when starting from k = (3^n)-1 and repeatedly applying the map that replaces k with k - (sum of digits in base-3 representation of k).

Offset 0, canonical program `A261233.P9209519308442447348`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261233 (n : ℕ) : ℤ :=
  A261233.P9209519308442447348.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261233.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A267896.P13651887793568132644

`A024675(n+1)*A028334(n+2)/2`
-/

namespace A267896.P13651887793568132644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024675 (n + 1) * A028334 (n + 2) : ℚ) / 2

end

end A267896.P13651887793568132644

noncomputable section

/-- A267896: a(n) = (Prime(n+1)^2 - Prime(n)^2) / 8.

Offset 2, canonical program `A267896.P13651887793568132644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267896 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A267896.P13651887793568132644.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268733.P4062617571701723603

`A000203(A251720(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268733.P4062617571701723603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A251720 (n + 1)).toNat

end

end A268733.P4062617571701723603

noncomputable section

/-- A268733: a(n) = A000203(A251720(n)).

Offset 1, canonical program `A268733.P4062617571701723603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268733 (n : ℕ) : ℤ :=
  A268733.P4062617571701723603.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268733.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272211.P17519105524056241919

`A272173(n+1)-A000203(n+1)`
-/

namespace A272211.P17519105524056241919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272173 (n + 1) - A000203 (n + 1)

end

end A272211.P17519105524056241919

noncomputable section

/-- A272211: Product of n-th prime and the sum of the divisors of n.

Offset 1, canonical program `A272211.P17519105524056241919`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272211 (n : ℕ) : ℤ :=
  A272211.P17519105524056241919.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272211.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A278741.P14531857081843335100

`A061286(n+1)+1`
-/

namespace A278741.P14531857081843335100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061286 (n + 1) + 1

end

end A278741.P14531857081843335100

noncomputable section

/-- A278741: Odd numbers k such that tau(k-1) is a prime.

Offset 1, canonical program `A278741.P14531857081843335100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A278741 (n : ℕ) : ℤ :=
  A278741.P14531857081843335100.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A278741.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280705.P16911354259463589492

`A002110(A280700(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280705.P16911354259463589492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A280700 n).toNat

end

end A280705.P16911354259463589492

noncomputable section

/-- A280705: a(n) = A002110(A280700(n)) = A046523(A283475(n)).

Offset 0, canonical program `A280705.P16911354259463589492`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280705 (n : ℕ) : ℤ :=
  A280705.P16911354259463589492.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280705.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280737.P4532675294742488203

`A007302(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280737.P4532675294742488203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (n + 1) - 1

end

end A280737.P4532675294742488203

noncomputable section

/-- A280737: a(n) = A007302(n) - 1.

Offset 1, canonical program `A280737.P4532675294742488203`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280737 (n : ℕ) : ℤ :=
  A280737.P4532675294742488203.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280737.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284173.P17227999024753311474

`A280706(n+1)%(n+1)`
-/

namespace A284173.P17227999024753311474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280706 (n + 1)) (n + 1 : ℤ)

end

end A284173.P17227999024753311474

noncomputable section

/-- A284173: a(n) = (Sum_{k=1..n} q(k+1-q(k))) mod n where q(k) = A005185(k).

Offset 1, canonical program `A284173.P17227999024753311474`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284173 (n : ℕ) : ℤ :=
  A284173.P17227999024753311474.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285008.P18285019941351917306

`3^n*C(2*n, n)/A001316(n)`
-/

namespace A285008.P18285019941351917306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n * Nat.choose (2 * n) n : ℚ) / (A001316 n : ℚ)

end

end A285008.P18285019941351917306

noncomputable section

/-- A285008: Numerator of (3/4)^n * binomial(2*n,n).

Offset 0, canonical program `A285008.P18285019941351917306`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285008 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285008.P18285019941351917306.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A291750.P5209050474501545968

`1/2*(2+(A003557(n+1)+A048250(n+1))²-A003557(n+1)-3*A048250(n+1))`
-/

namespace A291750.P5209050474501545968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A003557 (n + 1) + A048250 (n + 1)) ^ 2 - A003557 (n + 1) - 3 * A048250 (n + 1) : ℚ)

end

end A291750.P5209050474501545968

noncomputable section

/-- A291750: Compound filter: a(n) = P(A003557(n), A048250(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A291750.P5209050474501545968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291750 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291750.P5209050474501545968.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A291900.P14772207315450596015

`A280098(n+1)-(n+1)`
-/

namespace A291900.P14772207315450596015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280098 (n + 1) - (n + 1 : ℤ)

end

end A291900.P14772207315450596015

noncomputable section

/-- A291900: Sum of the divisors of 24*n - 1, divided by 24, minus n.

Offset 1, canonical program `A291900.P14772207315450596015`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291900 (n : ℕ) : ℤ :=
  A291900.P14772207315450596015.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294015.P9060703257274913068

`A091818(n+1)+1`
-/

namespace A294015.P9060703257274913068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) + 1

end

end A294015.P9060703257274913068

noncomputable section

/-- A294015: Sum of the even divisors of 2n, minus the (n-1)st odd number.

Offset 1, canonical program `A294015.P9060703257274913068`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294015 (n : ℕ) : ℤ :=
  A294015.P9060703257274913068.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294015.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295890.P8084053589707736800

`1-A295889(n)`
-/

namespace A295890.P8084053589707736800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A295889 n

end

end A295890.P8084053589707736800

noncomputable section

/-- A295890: a(n) = 1 if binary weights of n and 3n have different parity, 0 otherwise; a(n) = A010060(n) XOR A010060(3n).

Offset 0, canonical program `A295890.P8084053589707736800`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295890 (n : ℕ) : ℤ :=
  A295890.P8084053589707736800.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A297208.P13177567222155169446

`a(n-1-A023416(n))+A000120(n)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A297208.P13177567222155169446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n : ℤ) - 1 - A023416 n).toNat + A000120 n

end

end A297208.P13177567222155169446

noncomputable section

/-- A297208: a(0)=0; for n >= 1, a(n) = a(n-1-A023416(n)) + A000120(n).

Offset 0, canonical program `A297208.P13177567222155169446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297208 (n : ℕ) : ℤ :=
  A297208.P13177567222155169446.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297208.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A297212.P6382382023899161157

`a(A023416(n))+a(A000120(n))` with `a(0)=1, a(1)=1, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A297212.P6382382023899161157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (A023416 n).toNat + a (A000120 n).toNat

end

end A297212.P6382382023899161157

noncomputable section

/-- A297212: a(0)=1; a(1)=1; for n >= 2, a(n) = a(A023416(n)) + a(A000120(n)).

Offset 0, canonical program `A297212.P6382382023899161157`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297212 (n : ℕ) : ℤ :=
  (A297212.P6382382023899161157.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A297216.P16521217013821379212

`a(n-A000120(n))+a(n-1-A023416(n))` with `a(0)=1, a(1)=1, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A297216.P16521217013821379212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a ((n : ℤ) - A000120 n).toNat + a ((n : ℤ) - 1 - A023416 n).toNat

end

end A297216.P16521217013821379212

noncomputable section

/-- A297216: a(0)=1; a(1)=1; for n >= 2, a(n) = a(n-A000120(n)) + a(n-1-A023416(n)).

Offset 0, canonical program `A297216.P16521217013821379212`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297216 (n : ℕ) : ℤ :=
  (A297216.P16521217013821379212.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297216.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A299692.P2407571763722409211

`A024916(n+1)+A002378(n+1)`
-/

namespace A299692.P2407571763722409211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + A002378 (n + 1)

end

end A299692.P2407571763722409211

noncomputable section

/-- A299692: a(n) is the total area that is visible in the perspective view of the stepped pyramid with n levels described in A245092.

Offset 1, canonical program `A299692.P2407571763722409211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299692 (n : ℕ) : ℤ :=
  A299692.P2407571763722409211.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193828.P7698008167923322003

`2*A154293(n+1)`
-/

namespace A193828.P7698008167923322003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154293 (n + 1)

end

end A193828.P7698008167923322003

noncomputable section

/-- A193828: Even generalized pentagonal numbers.

Offset 0, canonical program `A193828.P7698008167923322003`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193828 (n : ℕ) : ℤ :=
  A193828.P7698008167923322003.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193828.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216430.P17716969539992197610

`(-1)^A081603(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216430.P17716969539992197610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A081603 (n + 1) : ℤ)

end

end A216430.P17716969539992197610

noncomputable section

/-- A216430: (-1)^A081603(n), parity of the number of 2's in the ternary expansion of n.

Offset 1, canonical program `A216430.P17716969539992197610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216430 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A216430.P17716969539992197610.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A225804.P13090922353215695081

`ceil(A007504(n+1)/(n+1))`
-/

namespace A225804.P13090922353215695081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A225804.P13090922353215695081

noncomputable section

/-- A225804: Arithmetic mean of the first n primes, rounded up.

Offset 1, canonical program `A225804.P13090922353215695081`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225804 (n : ℕ) : ℤ :=
  A225804.P13090922353215695081.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228274.P5163058848440072856

`(n+1)*A002131(n+1)`
-/

namespace A228274.P5163058848440072856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002131 (n + 1)

end

end A228274.P5163058848440072856

noncomputable section

/-- A228274: a(n) = Sum_{d|n, n/d odd} n * d.

Offset 1, canonical program `A228274.P5163058848440072856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228274 (n : ℕ) : ℤ :=
  A228274.P5163058848440072856.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228274.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A237684.P6315179612299634331

`floor(A033286(n+1)/A007504(n+1))`
-/

namespace A237684.P6315179612299634331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033286 (n + 1) : ℚ) / (A007504 (n + 1) : ℚ)⌋

end

end A237684.P6315179612299634331

noncomputable section

/-- A237684: a(n) = floor(n*prime(n) / Sum_{i<=n} prime(i)).

Offset 1, canonical program `A237684.P6315179612299634331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237684 (n : ℕ) : ℤ :=
  A237684.P6315179612299634331.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237684.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239731.P14772903405319056009

`A007504(n+1)-A006450(n+1)`
-/

namespace A239731.P14772903405319056009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A006450 (n + 1)

end

end A239731.P14772903405319056009

noncomputable section

/-- A239731: Difference between sum of first n primes and prime(prime(n)).

Offset 1, canonical program `A239731.P14772903405319056009`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239731 (n : ℕ) : ℤ :=
  A239731.P14772903405319056009.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239731.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240388.P11621996562073166528

`A002487(3*n)/2`
-/

namespace A240388.P11621996562073166528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 (3 * n) : ℚ) / 2

end

end A240388.P11621996562073166528

noncomputable section

/-- A240388: A sequence related to the Stern sequence s(n) (A002487), defined by w(n) = s(3n)/2.

Offset 0, canonical program `A240388.P11621996562073166528`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A240388.P11621996562073166528.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240388.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240568.P14315675564415486684

`(n+1)*A000040(n+1)-2*A007504(n+1)`
-/

namespace A240568.P14315675564415486684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (n + 1) - 2 * A007504 (n + 1)

end

end A240568.P14315675564415486684

noncomputable section

/-- A240568: Difference between n times the n-th prime and twice the sum of the first n primes.

Offset 1, canonical program `A240568.P14315675564415486684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240568 (n : ℕ) : ℤ :=
  A240568.P14315675564415486684.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245685.P1437960620465361428

`A247159(n+2)/2`
-/

namespace A245685.P1437960620465361428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247159 (n + 2) : ℚ) / 2

end

end A245685.P1437960620465361428

noncomputable section

/-- A245685: Sigma(2p)/2, for odd primes p.

Offset 1, canonical program `A245685.P1437960620465361428`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245685 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A245685.P1437960620465361428.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A250473.P15728952414264512561

`2+A000879(n+1)-(n+1)`
-/

namespace A250473.P15728952414264512561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A000879 (n + 1) - (n + 1 : ℤ)

end

end A250473.P15728952414264512561

noncomputable section

/-- A250473: Length of the maximal prefix of noncomposite numbers on row n of A249821.

Offset 1, canonical program `A250473.P15728952414264512561`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250473 (n : ℕ) : ℤ :=
  A250473.P15728952414264512561.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253203.P13303616197894554342

`A256244(n+1)²`
-/

namespace A253203.P13303616197894554342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256244 (n + 1) ^ 2

end

end A253203.P13303616197894554342

noncomputable section

/-- A253203: The least square larger than n with same parity as n.

Offset 1, canonical program `A253203.P13303616197894554342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253203 (n : ℕ) : ℤ :=
  A253203.P13303616197894554342.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256243.P16588352687810024248

`(A256244(n+1)²-(n+1))/2`
-/

namespace A256243.P16588352687810024248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256244 (n + 1) ^ 2 - (n + 1 : ℤ) : ℚ) / 2

end

end A256243.P16588352687810024248

noncomputable section

/-- A256243: Smallest positive integer m such that n + 2m is a square.

Offset 1, canonical program `A256243.P16588352687810024248`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256243 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A256243.P16588352687810024248.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256243.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257799.P15511006834302166355

`A010060(A233271(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257799.P15511006834302166355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A233271 n).toNat

end

end A257799.P15511006834302166355

noncomputable section

/-- A257799: Parity of binary weight of each term in the infinite trunk of inverted binary beanstalk: a(n) = A010060(A233271(n)).

Offset 0, canonical program `A257799.P15511006834302166355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257799 (n : ℕ) : ℤ :=
  A257799.P15511006834302166355.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257807.P15241754971067141480

`A257800(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A257807.P15241754971067141480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A257800 n + a (n - 1)

end

end A257807.P15241754971067141480

noncomputable section

/-- A257807: a(n) = number of odd numbers in range 0 .. n of A233271, the infinite trunk of inverted binary beanstalk.

Offset 0, canonical program `A257807.P15241754971067141480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257807 (n : ℕ) : ℤ :=
  A257807.P15241754971067141480.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257807.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257808.P5584975749564527316

`1-A257800(n)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A257808.P5584975749564527316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  1 - A257800 n + a (n - 1)

end

end A257808.P5584975749564527316

noncomputable section

/-- A257808: a(n) = number of nonzero even numbers in range 0 .. n of A233271, the infinite trunk of inverted binary beanstalk.

Offset 0, canonical program `A257808.P5584975749564527316`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257808 (n : ℕ) : ℤ :=
  A257808.P5584975749564527316.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257808.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A260683.P1450554479988976395

`A081603(A000079(n))`
-/

namespace A260683.P1450554479988976395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A000079 n).toNat

end

end A260683.P1450554479988976395

noncomputable section

/-- A260683: Number of 2's in the expansion of 2^n in base 3.

Offset 0, canonical program `A260683.P1450554479988976395`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260683 (n : ℕ) : ℤ :=
  A260683.P1450554479988976395.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261179.P18166660369402713705

`A002487(A000040(n+1))`
-/

namespace A261179.P18166660369402713705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A000040 (n + 1)).toNat

end

end A261179.P18166660369402713705

noncomputable section

/-- A261179: a(n) is the prime(n)-th term of Stern-Brocot sequence, A002487.

Offset 1, canonical program `A261179.P18166660369402713705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261179 (n : ℕ) : ℤ :=
  A261179.P18166660369402713705.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261273.P13419199438936783095

`A002487(A008864(n+1))`
-/

namespace A261273.P13419199438936783095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A008864 (n + 1)).toNat

end

end A261273.P13419199438936783095

noncomputable section

/-- A261273: a(n) is the (prime(n)+1)-th term of Stern-Brocot sequence, A002487.

Offset 1, canonical program `A261273.P13419199438936783095`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261273 (n : ℕ) : ℤ :=
  A261273.P13419199438936783095.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261273.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262392.P17406529640943534344

`A007504(n)+A010693(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262392.P17406529640943534344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + A010693 n

end

end A262392.P17406529640943534344

noncomputable section

/-- A262392: a(n) = A007504(n) + A010693(n).

Offset 0, canonical program `A262392.P17406529640943534344`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262392 (n : ℕ) : ℤ :=
  A262392.P17406529640943534344.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262392.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262744.P16246989097155820814

`A007504(n+1)%A000217(n+1)`
-/

namespace A262744.P16246989097155820814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (n + 1)) (A000217 (n + 1))

end

end A262744.P16246989097155820814

noncomputable section

/-- A262744: Remainder when sum of first n primes is divided by n-th triangular number.

Offset 1, canonical program `A262744.P16246989097155820814`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262744 (n : ℕ) : ℤ :=
  A262744.P16246989097155820814.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262744.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A267084.P13753241132986256046

`ceil(A007504(n+1)/(n+1))-floor(A007504(n+1)/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A267084.P13753241132986256046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ - ⌊(A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A267084.P13753241132986256046

noncomputable section

/-- A267084: a(n) = ceiling(A007504(n)/n) - floor(A007504(n)/n); a(n) is 0 if n divides the sum of first n primes, 1 otherwise.

Offset 1, canonical program `A267084.P13753241132986256046`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267084 (n : ℕ) : ℤ :=
  A267084.P13753241132986256046.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267084.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A267087.P15838477372030421436

`ceil(A007504(n+1)/(n+1))+floor(A007504(n+1)/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A267087.P15838477372030421436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ + ⌊(A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A267087.P15838477372030421436

noncomputable section

/-- A267087: a(n) = ceiling(A007504(n)/n) + floor(A007504(n)/n).

Offset 1, canonical program `A267087.P15838477372030421436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267087 (n : ℕ) : ℤ :=
  A267087.P15838477372030421436.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267087.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268605.P2485238640013637007

`A051885(A007504(n))`
-/

namespace A268605.P2485238640013637007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A007504 n).toNat

end

end A268605.P2485238640013637007

noncomputable section

/-- A268605: a(1) = 0; a(n+1) is the smallest integer in which the difference between its digits sum and the a(n) digits sum is equal to the n-th prime.

Offset 1, canonical program `A268605.P2485238640013637007`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268605 (n : ℕ) : ℤ :=
  A268605.P2485238640013637007.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268605.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A270828.P17164903374292891255

`A007504(2*(n+1)-1)%A000040(n+1)`
-/

namespace A270828.P17164903374292891255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (2 * (n + 1) - 1)) (A000040 (n + 1))

end

end A270828.P17164903374292891255

noncomputable section

/-- A270828: a(n) = (Sum_{k=1..2n-1} prime(k)) mod prime(n).

Offset 1, canonical program `A270828.P17164903374292891255`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270828 (n : ℕ) : ℤ :=
  A270828.P17164903374292891255.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270828.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272356.P12428427733733645423

`A007504(n)%4`
-/

namespace A272356.P12428427733733645423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n) 4

end

end A272356.P12428427733733645423

noncomputable section

/-- A272356: (Sum_{i=1..n} prime(i)) mod 4.

Offset 0, canonical program `A272356.P12428427733733645423`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272356 (n : ℕ) : ℤ :=
  A272356.P12428427733733645423.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272356.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273149.P13038668691077749708

`A053839(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A273149.P13038668691077749708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 n + 1

end

end A273149.P13038668691077749708

noncomputable section

/-- A273149: a(n) = A053839(n)+1.

Offset 0, canonical program `A273149.P13038668691077749708`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273149 (n : ℕ) : ℤ :=
  A273149.P13038668691077749708.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273149.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274048.P17286915012048234897

`A116640(A018900(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A274048.P17286915012048234897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116640 (A018900 (n + 1)).toNat

end

end A274048.P17286915012048234897

noncomputable section

/-- A274048: a(n) = A116640(A018900(n)) = A116623(A059893(A018900(n))).

Offset 1, canonical program `A274048.P17286915012048234897`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274048 (n : ℕ) : ℤ :=
  A274048.P17286915012048234897.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274048.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274515.P13101901733059160930

`A002487(A065361(n)+1)`
-/

namespace A274515.P13101901733059160930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A065361 n + 1).toNat

end

end A274515.P13101901733059160930

noncomputable section

/-- A274515: a(n) is the number of times that the value of ternary n when read as hyperbinary occurs in the set of hyperbinary representations.

Offset 0, canonical program `A274515.P13101901733059160930`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274515 (n : ℕ) : ℤ :=
  A274515.P13101901733059160930.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274515.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276824.P1865868106888623118

`A000879(n+1)-A007504(n+1)`
-/

namespace A276824.P1865868106888623118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) - A007504 (n + 1)

end

end A276824.P1865868106888623118

noncomputable section

/-- A276824: a(n) = p-s, where s = Sum_{i=1..n} prime(i) and p = primepi(prime(n)^2).

Offset 1, canonical program `A276824.P1865868106888623118`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276824 (n : ℕ) : ℤ :=
  A276824.P1865868106888623118.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277545.P12409738716283908751

`A242603(n+1)%7`
-/

namespace A277545.P12409738716283908751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242603 (n + 1)) 7

end

end A277545.P12409738716283908751

noncomputable section

/-- A277545: a(n) = n/7^m mod 7, where 7^m is the greatest power of 7 that divides n.

Offset 1, canonical program `A277545.P12409738716283908751`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277545 (n : ℕ) : ℤ :=
  A277545.P12409738716283908751.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277545.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283474.P6694215091919527259

`a(n-1)+a(n-A002487(n))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283474.P6694215091919527259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a ((n : ℤ) - A002487 n).toNat

end

end A283474.P6694215091919527259

noncomputable section

/-- A283474: a(0) = 0, a(1) = 1, for n > 1, a(n) = a(n-1) + a(n-A002487(n)).

Offset 0, canonical program `A283474.P6694215091919527259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283474 (n : ℕ) : ℤ :=
  (A283474.P6694215091919527259.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283556.P4279643971322405347

`A010888(A007504(n))`
-/

namespace A283556.P4279643971322405347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A007504 n).toNat

end

end A283556.P4279643971322405347

noncomputable section

/-- A283556: Digital root of the sum of the first n primes.

Offset 0, canonical program `A283556.P4279643971322405347`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283556 (n : ℕ) : ℤ :=
  A283556.P4279643971322405347.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283556.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284007.P7935664608743128822

`a(a(n-A002487(n+1))-1)+a(n-a(n-A002487(n+1)))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284007.P7935664608743128822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (a ((n : ℤ) - A002487 (n + 1)).toNat - 1) + a (n - a ((n : ℤ) - A002487 (n + 1)).toNat)

end

end A284007.P7935664608743128822

noncomputable section

/-- A284007: a(n) = a(a(n-A002487(n))) + a(n-a(n-A002487(n))) with a(1) = a(2) = 1, where A002487 = Stern-Brocot sequence.

Offset 1, canonical program `A284007.P7935664608743128822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284007 (n : ℕ) : ℤ :=
  (A284007.P7935664608743128822.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284007.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284013.P1136611558935881771

`n-A002487(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284013.P1136611558935881771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002487 n

end

end A284013.P1136611558935881771

noncomputable section

/-- A284013: a(n) = n - A002487(n).

Offset 0, canonical program `A284013.P1136611558935881771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284013 (n : ℕ) : ℤ :=
  A284013.P1136611558935881771.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284013.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284556.P13375523094989058147

`(A002487(n)-A102283(n))/2`
-/

namespace A284556.P13375523094989058147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 n - A102283 n : ℚ) / 2

end

end A284556.P13375523094989058147

noncomputable section

/-- A284556: Sequence c of the mutual recurrence pair: b(0) = 0, b(1) = 1, b(2n) = c(n), b(2n+1) = b(n) + b(n+1), c(0) = c(1) = 0, c(2n) = b(n), c(2n+1) = c(n) + c(n+1).

Offset 0, canonical program `A284556.P13375523094989058147`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284556 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A284556.P13375523094989058147.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284556.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286387.P16052920801655735120

`A002487(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286387.P16052920801655735120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n ^ 2)

end

end A286387.P16052920801655735120

noncomputable section

/-- A286387: a(n) = A002487(n^2).

Offset 0, canonical program `A286387.P16052920801655735120`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286387 (n : ℕ) : ℤ :=
  A286387.P16052920801655735120.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286387.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295294.P5934329699896356661

`A000203(A057521(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295294.P5934329699896356661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A057521 (n + 1)).toNat

end

end A295294.P5934329699896356661

noncomputable section

/-- A295294: Sum of the divisors of the powerful part of n: a(n) = A000203(A057521(n)).

Offset 1, canonical program `A295294.P5934329699896356661`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295294 (n : ℕ) : ℤ :=
  A295294.P5934329699896356661.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295294.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295295.P17200479442831636122

`A048250(A057521(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295295.P17200479442831636122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A057521 (n + 1)).toNat

end

end A295295.P17200479442831636122

noncomputable section

/-- A295295: Sum of squarefree divisors of the powerful part of n: a(n) = A048250(A057521(n)).

Offset 1, canonical program `A295295.P17200479442831636122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295295 (n : ℕ) : ℤ :=
  A295295.P17200479442831636122.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295295.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295515.P11785583445350184235

`A002487(floor((n+1)/2))`
-/

namespace A295515.P11785583445350184235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A295515.P11785583445350184235

noncomputable section

/-- A295515: The Euclid tree, read across levels.

Offset 1, canonical program `A295515.P11785583445350184235`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295515 (n : ℕ) : ℤ :=
  A295515.P11785583445350184235.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295515.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261618.P10123286181822269614

`n+1+10^(1+A004216(n+1))*(n+2)+10^(2+A004216(n+1)+A004216(n+2))*(n+1)`
-/

namespace A261618.P10123286181822269614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (10 : ℚ) ^ (1 + A004216 (n + 1) : ℤ) * (n + 2 : ℚ) + (10 : ℚ) ^ (2 + A004216 (n + 1) + A004216 (n + 2) : ℤ) * (n + 1 : ℚ)

end

end A261618.P10123286181822269614

noncomputable section

/-- A261618: Concatenation of n, n+1 and n.

Offset 1, canonical program `A261618.P10123286181822269614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261618 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A261618.P10123286181822269614.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261618.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263132.P11366629162255137699

`A263133(n+1)+1`
-/

namespace A263132.P11366629162255137699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263133 (n + 1) + 1

end

end A263132.P11366629162255137699

noncomputable section

/-- A263132: Positive values of m such that binomial(4*m - 1, m) is odd.

Offset 1, canonical program `A263132.P11366629162255137699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263132 (n : ℕ) : ℤ :=
  A263132.P11366629162255137699.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193738.P15912685866539530359

`A002260(A132128(n+1))`
-/

namespace A193738.P15912685866539530359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A132128 (n + 1)).toNat

end

end A193738.P15912685866539530359

noncomputable section

/-- A193738: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=q(n,x)=x^n+x^(n-1)+...+x+1.

Offset 0, canonical program `A193738.P15912685866539530359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193738 (n : ℕ) : ℤ :=
  A193738.P15912685866539530359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193846.P9935074766537536262

`A090988(n+1)*A193842(n)`
-/

namespace A193846.P9935074766537536262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1) * A193842 n

end

end A193846.P9935074766537536262

noncomputable section

/-- A193846: Triangular array: the fission of ((x+2)^n) by ((x+1)^n).

Offset 0, canonical program `A193846.P9935074766537536262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A193846 (n : ℕ) : ℤ :=
  A193846.P9935074766537536262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A193846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193848.P11847408491001959917

`A130321(n)*A193842(n)`
-/

namespace A193848.P11847408491001959917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A193842 n

end

end A193848.P11847408491001959917

noncomputable section

/-- A193848: Triangular array: (1/2)*A193846.

Offset 0, canonical program `A193848.P11847408491001959917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193848 (n : ℕ) : ℤ :=
  A193848.P11847408491001959917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193912.P17477318446375195437

`∑[A193911(n+1)]`
-/

namespace A193912.P17477318446375195437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193912.P17477318446375195437

noncomputable section

/-- A193912: Partial sums of A193911.

Offset 1, canonical program `A193912.P17477318446375195437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 654 terms. -/
def A193912 (n : ℕ) : ℤ :=
  A193912.P17477318446375195437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 654 terms. -/
def A193912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193975.P7422222807454422260

`A177877(n-A049780(n))+A177877(n)`
-/

namespace A193975.P7422222807454422260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177877 ((n : ℤ) - A049780 n).toNat + A177877 n

end

end A193975.P7422222807454422260

noncomputable section

/-- A193975: Triangular array: the self-fission of (p(n,x)), where p(n,x)=x*p(n-1,x)+n+1, where p(0,x)=1.

Offset 0, canonical program `A193975.P7422222807454422260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193975 (n : ℕ) : ℤ :=
  A193975.P7422222807454422260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193976.P17233718569355432960

`A104634(n+1)+abs(A122432(n))`
-/

namespace A193976.P17233718569355432960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) + |A122432 n|

end

end A193976.P17233718569355432960

noncomputable section

/-- A193976: Mirror of the triangle A193975.

Offset 0, canonical program `A193976.P17233718569355432960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193976 (n : ℕ) : ℤ :=
  A193976.P17233718569355432960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194032.P1700617738271961526

`A002262(n)+A000196(A082156(n+1))²`
-/

namespace A194032.P1700617738271961526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000196 (A082156 (n + 1)).toNat ^ 2

end

end A194032.P1700617738271961526

noncomputable section

/-- A194032: Natural interspersion of the squares (1,4,9,16,25,...), a rectangular array, by antidiagonals.

Offset 1, canonical program `A194032.P1700617738271961526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A194032 (n : ℕ) : ℤ :=
  A194032.P1700617738271961526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A194032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194138.P1802011036160146576

`A194102(n+1)+∑[n+1]`
-/

namespace A194138.P1802011036160146576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194102 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194138.P1802011036160146576

noncomputable section

/-- A194138: a(n) = Sum_{j=1..n} floor(j*(1+sqrt(2))), n-th partial sum of Beatty sequence for 1+sqrt(2).

Offset 1, canonical program `A194138.P1802011036160146576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194138 (n : ℕ) : ℤ :=
  A194138.P1802011036160146576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194141.P4532975986403058293

`A194140(n+1)+∑[n+1]`
-/

namespace A194141.P4532975986403058293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194140 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194141.P4532975986403058293

noncomputable section

/-- A194141: Sum{floor(j*(2+sqrt(3))) : 1<=j<=n}; n-th partial sum of Beatty sequence for 2+sqrt(3).

Offset 1, canonical program `A194141.P4532975986403058293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194141 (n : ℕ) : ℤ :=
  A194141.P4532975986403058293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194153.P3430387214408108044

`A194151(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A194153.P3430387214408108044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194151 (n + 1) + a (n - 1)

end

end A194153.P3430387214408108044

noncomputable section

/-- A194153: a(n) = Sum_{j=1..n} floor(j*(sqrt(5))/2); n-th partial sum of Beatty sequence for (sqrt(5))/2.

Offset 1, canonical program `A194153.P3430387214408108044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194153 (n : ℕ) : ℤ :=
  A194153.P3430387214408108044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194195.P697157208742840349

`A004737(n+1)+A004739(n+1)*A079813(n+1)`
-/

namespace A194195.P697157208742840349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) + A004739 (n + 1) * A079813 (n + 1)

end

end A194195.P697157208742840349

noncomputable section

/-- A194195: First inverse function (numbers of rows) for pairing function A060734.

Offset 1, canonical program `A194195.P697157208742840349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194195 (n : ℕ) : ℤ :=
  A194195.P697157208742840349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194404.P6698143406103776618

`lt[A057428(n)+A005653(A008619(n)), n]`
-/

namespace A194404.P6698143406103776618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A005653 (A008619 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A194404.P6698143406103776618

noncomputable section

/-- A194404: Numbers m such that Sum_{k=1..m} ( - ) > 0, where r=(1+sqrt(5))/2 and < > denotes fractional part.

Offset 1, canonical program `A194404.P6698143406103776618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 971 terms. -/
def A194404 (n : ℕ) : ℤ :=
  (A194404.P6698143406103776618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 971 terms. -/
def A194404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194581.P13119146017149971246

`p?[A024675(n+1)-A001223(n+1)]`
-/

namespace A194581.P13119146017149971246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194581.P13119146017149971246

noncomputable section

/-- A194581: Primes prime(k) of the form (2*prime(k-1) + prime(k+1))/3.

Offset 1, canonical program `A194581.P13119146017149971246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 747 terms. -/
def A194581 (n : ℕ) : ℤ :=
  A194581.P13119146017149971246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 747 terms. -/
def A194581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194588.P2938280453957278802

`A189912(n-1)-a(n-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194588.P2938280453957278802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A189912 (n - 1) - a (n - 1)

end

end A194588.P2938280453957278802

noncomputable section

/-- A194588: a(n) = A189912(n-1)-a(n-1) for n>0, a(0) = 1; extended Riordan numbers.

Offset 0, canonical program `A194588.P2938280453957278802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194588 (n : ℕ) : ℤ :=
  A194588.P2938280453957278802.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194588.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194740.P1783803332448557360

`A194739(n+1)+1`
-/

namespace A194740.P1783803332448557360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194739 (n + 1) + 1

end

end A194740.P1783803332448557360

noncomputable section

/-- A194740: Number of k such that {-k*sqrt(3)} < {-n*sqrt(3)}, where { } = fractional part.

Offset 1, canonical program `A194740.P1783803332448557360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194740 (n : ℕ) : ℤ :=
  A194740.P1783803332448557360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194743.P6637608899086095242

`1-A194742(n+1)+n`
-/

namespace A194743.P6637608899086095242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194742 (n + 1) + (n : ℤ)

end

end A194743.P6637608899086095242

noncomputable section

/-- A194743: Number of k such that {k*sqrt(5)} > {n*sqrt(5)}, where { } = fractional part.

Offset 1, canonical program `A194743.P6637608899086095242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194743 (n : ℕ) : ℤ :=
  A194743.P6637608899086095242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194745.P9191396942374646438

`A194742(n+1)-1`
-/

namespace A194745.P9191396942374646438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194742 (n + 1) - 1

end

end A194745.P9191396942374646438

noncomputable section

/-- A194745: Number of k such that {-k*sqrt(5)} > {-n*sqrt(5)}, where { } = fractional part.

Offset 1, canonical program `A194745.P9191396942374646438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194745 (n : ℕ) : ℤ :=
  A194745.P9191396942374646438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194752.P8535250005586994287

`A194751(n+1)+1`
-/

namespace A194752.P8535250005586994287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194751 (n + 1) + 1

end

end A194752.P8535250005586994287

noncomputable section

/-- A194752: Number of k such that {-k*e} < {-n*e}, where { } = fractional part.

Offset 1, canonical program `A194752.P8535250005586994287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194752 (n : ℕ) : ℤ :=
  A194752.P8535250005586994287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194813.P15364618294108284325

`∑[1-(A001966(n)+A001468(n))%2]`
-/

namespace A194813.P15364618294108284325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A001966 n + A001468 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194813.P15364618294108284325

noncomputable section

/-- A194813: Number of integers k in [1,n] such that {n*r + k*r} < {n*r - k*r}, where { } = fractional part and r = (1+sqrt(5))/2 (the golden ratio).

Offset 1, canonical program `A194813.P15364618294108284325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194813 (n : ℕ) : ℤ :=
  A194813.P15364618294108284325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194847.P15779347047936523882

`A056556(n)+2`
-/

namespace A194847.P15779347047936523882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n + 2

end

end A194847.P15779347047936523882

noncomputable section

/-- A194847: Write n = C(i,3)+C(j,2)+C(k,1) with i>j>k>=0; sequence gives i values.

Offset 0, canonical program `A194847.P15779347047936523882`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194847 (n : ℕ) : ℤ :=
  A194847.P15779347047936523882.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194883.P13313094170097831058

`A000120(eq[2, A023416(A006257(n))])`
-/

namespace A194883.P13313094170097831058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194883.P13313094170097831058

noncomputable section

/-- A194883: Write n = C(i,4)+C(j,3)+C(k,2)+C(l,1) with i>j>k>l>=0; sequence gives j values.

Offset 0, canonical program `A194883.P13313094170097831058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A194883 (n : ℕ) : ℤ :=
  A194883.P13313094170097831058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A194883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194959.P7468883608781216461

`A157458(n)+A101688(n)`
-/

namespace A194959.P7468883608781216461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157458 n + A101688 n

end

end A194959.P7468883608781216461

noncomputable section

/-- A194959: Fractalization of (1 + floor(n/2)).

Offset 1, canonical program `A194959.P7468883608781216461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194959 (n : ℕ) : ℤ :=
  A194959.P7468883608781216461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195153.P11953675593454716449

`A128227(lt[A051731(n+1), A051731(n+2)])`
-/

namespace A195153.P11953675593454716449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195153.P11953675593454716449

noncomputable section

/-- A195153: Irregular triangle read by rows in which row n lists numbers d-1 that do not divide n, where d divides n.

Offset 3, canonical program `A195153.P11953675593454716449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A195153 (n : ℕ) : ℤ :=
  A195153.P11953675593454716449.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A195153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196748.P1291725474753101285

`∩[A058185(n+1), A196747(n+1)]`
-/

namespace A196748.P1291725474753101285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196748.P1291725474753101285

noncomputable section

/-- A196748: Numbers k such that 3 and 5 do not divide swing(k) = A056040(k).

Offset 1, canonical program `A196748.P1291725474753101285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A196748 (n : ℕ) : ℤ :=
  (A196748.P1291725474753101285.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A196748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199986.P499890319884036768

`record[A071762(A061579(n+1))]`
-/

namespace A199986.P499890319884036768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071762 (A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199986.P499890319884036768

noncomputable section

/-- A199986: Numbers with digital product = 2.

Offset 1, canonical program `A199986.P499890319884036768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A199986 (n : ℕ) : ℤ :=
  A199986.P499890319884036768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A199986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200244.P5861281741457501030

`A059841(A014499(n+1))`
-/

namespace A200244.P5861281741457501030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A014499 (n + 1)).toNat

end

end A200244.P5861281741457501030

noncomputable section

/-- A200244: a(n)=1 iff binary weight of n-th prime is even.

Offset 1, canonical program `A200244.P5861281741457501030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200244 (n : ℕ) : ℤ :=
  A200244.P5861281741457501030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200247.P10788717506110287263

`∑[A200246(n+1)]`
-/

namespace A200247.P10788717506110287263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200247.P10788717506110287263

noncomputable section

/-- A200247: Partial sums of A200246.

Offset 1, canonical program `A200247.P10788717506110287263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200247 (n : ℕ) : ℤ :=
  A200247.P10788717506110287263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202276.P11372972948396556949

`∑[A175253(n+1)]`
-/

namespace A202276.P11372972948396556949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P11372972948396556949

noncomputable section

/-- A202276: Number of integers k <= n such that sigma(x) = k has no solution, sigma = A000203.

Offset 1, canonical program `A202276.P11372972948396556949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202276 (n : ℕ) : ℤ :=
  A202276.P11372972948396556949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202394.P10766434799180443179

`A010816(n)*A089812(n)`
-/

namespace A202394.P10766434799180443179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n * A089812 n

end

end A202394.P10766434799180443179

noncomputable section

/-- A202394: Expansion of f(-x)^3 + 9 * x * f(-x^9)^3 in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A202394.P10766434799180443179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A202394 (n : ℕ) : ℤ :=
  A202394.P10766434799180443179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A202394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204016.P18052484230199461045

`A027656(xor(1, A157458(n)))`
-/

namespace A204016.P18052484230199461045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (Int.xor 1 (A157458 n)).toNat

end

end A204016.P18052484230199461045

noncomputable section

/-- A204016: Symmetric matrix based on f(i,j) = max(j mod i, i mod j), by antidiagonals.

Offset 1, canonical program `A204016.P18052484230199461045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204016 (n : ℕ) : ℤ :=
  A204016.P18052484230199461045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204026.P14006372752453652619

`A000045(val(A036561(n), 6)+2)`
-/

namespace A204026.P14006372752453652619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (A036561 n).toNat 6 + 2)

end

end A204026.P14006372752453652619

noncomputable section

/-- A204026: Symmetric matrix based on f(i,j)=min(F(i+1),F(j+1)), where F=A000045 (Fibonacci numbers), by antidiagonals.

Offset 1, canonical program `A204026.P14006372752453652619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204026 (n : ℕ) : ℤ :=
  A204026.P14006372752453652619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204028.P5390969343002212322

`3*val(A036561(n), 6)+1`
-/

namespace A204028.P5390969343002212322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.valuation (A036561 n).toNat 6 + 1

end

end A204028.P5390969343002212322

noncomputable section

/-- A204028: Symmetric matrix based on f(i,j)=min(3i-2,3j-2), by antidiagonals.

Offset 1, canonical program `A204028.P5390969343002212322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204028 (n : ℕ) : ℤ :=
  (A204028.P5390969343002212322.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204123.P7659429009219767533

`gcd(A003988(n+1), A004199(n+1))`
-/

namespace A204123.P7659429009219767533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003988 (n + 1)) (A004199 (n + 1))

end

end A204123.P7659429009219767533

noncomputable section

/-- A204123: Symmetric matrix based on f(i,j)=max([i/j],[j/i]), where [ ]=floor, by antidiagonals.

Offset 1, canonical program `A204123.P7659429009219767533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204123 (n : ℕ) : ℤ :=
  (A204123.P7659429009219767533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204143.P7169083616238944113

`A010783(n+1)*A010783(A038722(n+1))`
-/

namespace A204143.P7169083616238944113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1) * A010783 (A038722 (n + 1)).toNat

end

end A204143.P7169083616238944113

noncomputable section

/-- A204143: Symmetric matrix based on f(i,j)=max(ceiling(i/j),ceiling(j/i)), by antidiagonals.

Offset 1, canonical program `A204143.P7169083616238944113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204143 (n : ℕ) : ℤ :=
  A204143.P7169083616238944113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204177.P4715536723901757887

`abs(A185917(n+1))`
-/

namespace A204177.P4715536723901757887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185917 (n + 1)|

end

end A204177.P4715536723901757887

noncomputable section

/-- A204177: Symmetric matrix based on f(i,j)=(1 if i=1 or j=1 or i=j, and 0 otherwise), by antidiagonals.

Offset 1, canonical program `A204177.P4715536723901757887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204177 (n : ℕ) : ℤ :=
  A204177.P4715536723901757887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204181.P7402957696718526263

`and(A099375(n), A185917(n+1))`
-/

namespace A204181.P7402957696718526263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099375 n) (A185917 (n + 1))

end

end A204181.P7402957696718526263

noncomputable section

/-- A204181: Symmetric matrix based on f(i,j) defined by f(i,1)=f(1,j)=1; f(i,i)= 2i-1; f(i,j)=0 otherwise; by antidiagonals.

Offset 1, canonical program `A204181.P7402957696718526263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204181 (n : ℕ) : ℤ :=
  A204181.P7402957696718526263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204221.P16762614138165113717

`A154293(n+1)+A152749(A004526(n))`
-/

namespace A204221.P16762614138165113717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154293 (n + 1) + A152749 (A004526 n).toNat

end

end A204221.P16762614138165113717

noncomputable section

/-- A204221: Integers of the form (N^2 - 1) / 15.

Offset 0, canonical program `A204221.P16762614138165113717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204221 (n : ℕ) : ℤ :=
  A204221.P16762614138165113717.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204237.P6099322334008855491

`A204156(n+1)+1`
-/

namespace A204237.P6099322334008855491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204156 (n + 1) + 1

end

end A204237.P6099322334008855491

noncomputable section

/-- A204237: Symmetric matrix given by f(i,j)=max(3i-j,3j-i).

Offset 1, canonical program `A204237.P6099322334008855491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204237 (n : ℕ) : ℤ :=
  A204237.P6099322334008855491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204238.P6692770897565763232

`(A185251(2*(n+1))+n*A011782(n)²)/(-1)^n`
-/

namespace A204238.P6692770897565763232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185251 (2 * (n + 1)) + (n : ℤ) * A011782 n ^ 2 : ℚ) / ((-1) ^ n : ℚ)

end

end A204238.P6692770897565763232

noncomputable section

/-- A204238: Determinant of the n-th principal submatrix of A204237.

Offset 1, canonical program `A204238.P6692770897565763232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A204238 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A204238.P6692770897565763232.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A204238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204267.P11067029943541218959

`C(2, A204263(n+1)²)`
-/

namespace A204267.P11067029943541218959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A204263 (n + 1) ^ 2).toNat

end

end A204267.P11067029943541218959

noncomputable section

/-- A204267: Symmetric matrix: f(i,j)=(i+j+1 mod 3), by antidiagonals.

Offset 1, canonical program `A204267.P11067029943541218959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204267 (n : ℕ) : ℤ :=
  (A204267.P11067029943541218959.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204697.P15234551903142194925

`and(n, A189640(n+1))+1`
-/

namespace A204697.P15234551903142194925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A189640 (n + 1)) + 1

end

end A204697.P15234551903142194925

noncomputable section

/-- A204697: Final nonzero digit of n^n in base 3.

Offset 0, canonical program `A204697.P15234551903142194925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3220 terms. -/
def A204697 (n : ℕ) : ℤ :=
  A204697.P15234551903142194925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3220 terms. -/
def A204697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204816.P3898216723695764510

`A277544(n^A134451(n))`
-/

namespace A204816.P3898216723695764510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A134451 n : ℤ))).toNat

end

end A204816.P3898216723695764510

noncomputable section

/-- A204816: Final nonzero digit of n^n in base 6.

Offset 0, canonical program `A204816.P3898216723695764510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A204816 (n : ℕ) : ℤ :=
  A204816.P3898216723695764510.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A204816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205016.P2286842531164054448

`2*A193974(n)`
-/

namespace A205016.P2286842531164054448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193974 n

end

end A205016.P2286842531164054448

noncomputable section

/-- A205016: Ordered differences of oblong numbers.

Offset 1, canonical program `A205016.P2286842531164054448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205016 (n : ℕ) : ℤ :=
  A205016.P2286842531164054448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205136.P11482582398427600183

`A096037(n+1)+A099375(n)+1`
-/

namespace A205136.P11482582398427600183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) + (A099375 n + 1)

end

end A205136.P11482582398427600183

noncomputable section

/-- A205136: Ordered differences of distinct pentagonal numbers.

Offset 1, canonical program `A205136.P11482582398427600183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205136 (n : ℕ) : ℤ :=
  A205136.P11482582398427600183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205456.P17031699656075010018

`C(A051125(n+1), A049581(n))`
-/

namespace A205456.P17031699656075010018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051125 (n + 1)).toNat (A049581 n).toNat

end

end A205456.P17031699656075010018

noncomputable section

/-- A205456: Symmetric matrix by antidiagonals: C(max(i,j),min(i,j)), i>=1, j>=1.

Offset 1, canonical program `A205456.P17031699656075010018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205456 (n : ℕ) : ℤ :=
  (A205456.P17031699656075010018.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205457.P628646899282360841

`A059674(A185868(n+1)-1)`
-/

namespace A205457.P628646899282360841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (A185868 (n + 1) - 1).toNat

end

end A205457.P628646899282360841

noncomputable section

/-- A205457: Symmetric matrix, by antidiagonals: C(max(2i,2j),min(2i,2j)), i>=0, j>=0.

Offset 1, canonical program `A205457.P628646899282360841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A205457 (n : ℕ) : ℤ :=
  A205457.P628646899282360841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A205457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205510.P11813062267428190125

`A000120(xor(A005097(n+1), A102781(n+1)))`
-/

namespace A205510.P11813062267428190125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A005097 (n + 1)) (A102781 (n + 1))).toNat

end

end A205510.P11813062267428190125

noncomputable section

/-- A205510: Binary Hamming distance between prime(n) and prime(n+1).

Offset 1, canonical program `A205510.P11813062267428190125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1899 terms. -/
def A205510 (n : ℕ) : ℤ :=
  A205510.P11813062267428190125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1899 terms. -/
def A205510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205548.P6561402102953099810

`C(A051125(n+1)+1, A049581(n))`
-/

namespace A205548.P6561402102953099810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051125 (n + 1) + 1).toNat (A049581 n).toNat

end

end A205548.P6561402102953099810

noncomputable section

/-- A205548: Symmetric matrix by antidiagonals: C(max(i+1,j+1),min(i+1,j+1)), i>=1, j>=1.

Offset 1, canonical program `A205548.P6561402102953099810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205548 (n : ℕ) : ℤ :=
  (A205548.P6561402102953099810.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205549.P12206282629607975759

`C(A051125(n+1)+2, A049581(n))`
-/

namespace A205549.P12206282629607975759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051125 (n + 1) + 2).toNat (A049581 n).toNat

end

end A205549.P12206282629607975759

noncomputable section

/-- A205549: Symmetric matrix by antidiagonals: C(max(i+2,j+2),min(i+2,j+2)), i>=1, j>=1.

Offset 1, canonical program `A205549.P12206282629607975759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205549 (n : ℕ) : ℤ :=
  (A205549.P12206282629607975759.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205559.P2583783127805785041

`eq[3, gcd(3, A204890(n+1))]+1`
-/

namespace A205559.P2583783127805785041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A204890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205559.P2583783127805785041

noncomputable section

/-- A205559: Positions of multiples of 3 in A204890 (differences of primes).

Offset 1, canonical program `A205559.P2583783127805785041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4901 terms. -/
def A205559 (n : ℕ) : ℤ :=
  (A205559.P2583783127805785041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4901 terms. -/
def A205559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205676.P6623450324532988599

`eq[4, gcd(4, A204890(n+1))]+1`
-/

namespace A205676.P6623450324532988599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A204890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205676.P6623450324532988599

noncomputable section

/-- A205676: Positions of multiples of 4 in A204890 (differences of primes).

Offset 1, canonical program `A205676.P6623450324532988599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. -/
def A205676 (n : ℕ) : ℤ :=
  (A205676.P6623450324532988599.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. -/
def A205676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205683.P17912161422184643973

`eq[5, gcd(5, A204890(n+1))]+1`
-/

namespace A205683.P17912161422184643973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A204890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205683.P17912161422184643973

noncomputable section

/-- A205683: Positions of multiples of 5 in A204890 (differences of primes).

Offset 1, canonical program `A205683.P17912161422184643973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A205683 (n : ℕ) : ℤ :=
  (A205683.P17912161422184643973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A205683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205697.P9126172670200338830

`lt[A204890(n+1)%7, 1]+1`
-/

namespace A205697.P9126172670200338830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204890 (n + 1)) 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A205697.P9126172670200338830

noncomputable section

/-- A205697: Positions of multiples of 7 in A204890 (differences of primes).

Offset 1, canonical program `A205697.P9126172670200338830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. -/
def A205697 (n : ℕ) : ℤ :=
  (A205697.P9126172670200338830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. -/
def A205697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205711.P11359309019057096152

`eq[9, dr(A204890(n+1))]+1`
-/

namespace A205711.P11359309019057096152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A204890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205711.P11359309019057096152

noncomputable section

/-- A205711: Positions of multiples of 9 in A204890 (differences of primes).

Offset 1, canonical program `A205711.P11359309019057096152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. -/
def A205711 (n : ℕ) : ℤ :=
  (A205711.P11359309019057096152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. -/
def A205711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205840.P6115930359801578087

`A205839(n+1)/2`
-/

namespace A205840.P6115930359801578087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205839 (n + 1) : ℚ) / 2

end

end A205840.P6115930359801578087

noncomputable section

/-- A205840: [s(k)-s(j)]/2, where the pairs (k,j) are given by A205837 and A205838.

Offset 1, canonical program `A205840.P6115930359801578087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205840 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A205840.P6115930359801578087.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205842.P9868123877778087869

`1+A002024(A205841(n+1))`
-/

namespace A205842.P9868123877778087869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002024 (A205841 (n + 1)).toNat

end

end A205842.P9868123877778087869

noncomputable section

/-- A205842: Numbers k for which 3 divides s(k)-s(j) for some j

Offset 1, canonical program `A205842.P9868123877778087869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3401 terms. -/
def A205842 (n : ℕ) : ℤ :=
  A205842.P9868123877778087869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3401 terms. -/
def A205842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205843.P8111042110380671226

`A002260(A205841(n+1))`
-/

namespace A205843.P8111042110380671226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205841 (n + 1)).toNat

end

end A205843.P8111042110380671226

noncomputable section

/-- A205843: The least number j such that 3 divides s(k)-s(j), where k(n)=A205842(n) and s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205843.P8111042110380671226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3839 terms. -/
def A205843 (n : ℕ) : ℤ :=
  A205843.P8111042110380671226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3839 terms. -/
def A205843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205847.P17021187226599039684

`A002024(A205846(n+1))+1`
-/

namespace A205847.P17021187226599039684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205846 (n + 1)).toNat + 1

end

end A205847.P17021187226599039684

noncomputable section

/-- A205847: Numbers k for which 4 divides s(k)-s(j) for some j

Offset 1, canonical program `A205847.P17021187226599039684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. -/
def A205847 (n : ℕ) : ℤ :=
  A205847.P17021187226599039684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. -/
def A205847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205848.P7474827148853857163

`A002260(A205846(n+1))`
-/

namespace A205848.P7474827148853857163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205846 (n + 1)).toNat

end

end A205848.P7474827148853857163

noncomputable section

/-- A205848: The least number j such that 4 divides s(k)-s(j), where k(n)=A205847(n) and s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205848.P7474827148853857163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3750 terms. -/
def A205848 (n : ℕ) : ℤ :=
  A205848.P7474827148853857163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3750 terms. -/
def A205848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205852.P2970175676094598334

`A003057(A205851(n+1)+1)`
-/

namespace A205852.P2970175676094598334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205851 (n + 1) + 1).toNat

end

end A205852.P2970175676094598334

noncomputable section

/-- A205852: Numbers k for which 5 divides s(k)-s(j) for some j

Offset 1, canonical program `A205852.P2970175676094598334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. -/
def A205852 (n : ℕ) : ℤ :=
  A205852.P2970175676094598334.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. -/
def A205852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205853.P5082704050672343864

`A002260(A205851(n+1))`
-/

namespace A205853.P5082704050672343864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205851 (n + 1)).toNat

end

end A205853.P5082704050672343864

noncomputable section

/-- A205853: The least number j such that 5 divides s(k)-s(j), where k(n)=A205852(n) and s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205853.P5082704050672343864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2206 terms. -/
def A205853 (n : ℕ) : ℤ :=
  A205853.P5082704050672343864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2206 terms. -/
def A205853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205856.P9508475719355629558

`∩[A205556(n+1), A205841(n+1)]`
-/

namespace A205856.P9508475719355629558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205856.P9508475719355629558

noncomputable section

/-- A205856: Positions of multiples of 6 in A204922 (differences of Fibonacci numbers).

Offset 1, canonical program `A205856.P9508475719355629558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3373 terms. -/
def A205856 (n : ℕ) : ℤ :=
  (A205856.P9508475719355629558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3373 terms. -/
def A205856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205862.P9229607814627541584

`1+A002024(A205861(n+1))`
-/

namespace A205862.P9229607814627541584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002024 (A205861 (n + 1)).toNat

end

end A205862.P9229607814627541584

noncomputable section

/-- A205862: Numbers k for which 7 divides s(k)-s(j) for some j

Offset 1, canonical program `A205862.P9229607814627541584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1738 terms. -/
def A205862 (n : ℕ) : ℤ :=
  A205862.P9229607814627541584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1738 terms. -/
def A205862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205863.P14284149530257843342

`A002260(A205861(n+1))`
-/

namespace A205863.P14284149530257843342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205861 (n + 1)).toNat

end

end A205863.P14284149530257843342

noncomputable section

/-- A205863: The least number j such that 7 divides s(k)-s(j), where k(n)=A205862(n) and s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205863.P14284149530257843342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1963 terms. -/
def A205863 (n : ℕ) : ℤ :=
  A205863.P14284149530257843342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1963 terms. -/
def A205863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205876.P8063870460233133950

`∩[A205556(n+1), A205851(n+1)]`
-/

namespace A205876.P8063870460233133950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205876.P8063870460233133950

noncomputable section

/-- A205876: Positions of multiples of 10 in A204922 (differences of Fibonacci numbers).

Offset 1, canonical program `A205876.P8063870460233133950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1928 terms. -/
def A205876 (n : ℕ) : ℤ :=
  (A205876.P8063870460233133950.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1928 terms. -/
def A205876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206297.P14886430242369453730

`A140434(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A206297.P14886430242369453730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A140434 n + a (n - 1)

end

end A206297.P14886430242369453730

noncomputable section

/-- A206297: Position of n in the canonical bijection from the positive integers to the positive rational numbers.

Offset 1, canonical program `A206297.P14886430242369453730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206297 (n : ℕ) : ℤ :=
  A206297.P14886430242369453730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206350.P761280235204802101

`A140434(n)+a(n-1)` with `a(0)=1`
-/

namespace A206350.P761280235204802101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140434 n + a (n - 1)

end

end A206350.P761280235204802101

noncomputable section

/-- A206350: Position of 1/n in the canonical bijection from the positive integers to the positive rational numbers.

Offset 1, canonical program `A206350.P761280235204802101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206350 (n : ℕ) : ℤ :=
  A206350.P761280235204802101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206479.P12139223227204150552

`A000120(A003985(n+1))`
-/

namespace A206479.P12139223227204150552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003985 (n + 1)).toNat

end

end A206479.P12139223227204150552

noncomputable section

/-- A206479: Number of terms common to the binary expansions of m and n; a matrix by antidiagonals.

Offset 1, canonical program `A206479.P12139223227204150552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206479 (n : ℕ) : ℤ :=
  A206479.P12139223227204150552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206603.P3063521816794991771

`A001787(n)-A189391(n)`
-/

namespace A206603.P3063521816794991771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - A189391 n

end

end A206603.P3063521816794991771

noncomputable section

/-- A206603: Maximal apex value of an addition triangle whose base is a permutation of {k-n/2, k=0..n}.

Offset 0, canonical program `A206603.P3063521816794991771`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206603 (n : ℕ) : ℤ :=
  A206603.P3063521816794991771.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206603.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206853.P10300863134340145866

`A081118(n+1)-A057212(n+1)`
-/

namespace A206853.P10300863134340145866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) - A057212 (n + 1)

end

end A206853.P10300863134340145866

noncomputable section

/-- A206853: a(1)=1, for n>1, a(n) is the least number > a(n-1) such that the Hamming distance D(a(n-1), a(n)) = 2.

Offset 1, canonical program `A206853.P10300863134340145866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206853 (n : ℕ) : ℤ :=
  A206853.P10300863134340145866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207063.P16806840195117011538

`A081118(n+1)-A057211(n+1)`
-/

namespace A207063.P16806840195117011538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) - A057211 (n + 1)

end

end A207063.P16806840195117011538

noncomputable section

/-- A207063: a(n) is the smallest number larger than a(n-1) with mutual Hamming distance 2 and a(1)=0.

Offset 1, canonical program `A207063.P16806840195117011538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207063 (n : ℕ) : ℤ :=
  A207063.P16806840195117011538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207328.P8721381619634705548

`∑{p}[A057335(n), A097807(#)]`
-/

namespace A207328.P8721381619634705548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A097807 p

end

end A207328.P8721381619634705548

noncomputable section

/-- A207328: Nonlinearities of 4-variable Boolean functions ordered lexicographically.

Offset 0, canonical program `A207328.P8721381619634705548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A207328 (n : ℕ) : ℤ :=
  A207328.P8721381619634705548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A207328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207409.P10666545104290844078

`A204890(n+1)%A037126(n+1)`
-/

namespace A207409.P10666545104290844078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204890 (n + 1)) (A037126 (n + 1))

end

end A207409.P10666545104290844078

noncomputable section

/-- A207409: Triangular array: T(n,k) = prime(n) mod prime(k), 1 <= k < n.

Offset 2, canonical program `A207409.P10666545104290844078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207409 (n : ℕ) : ℤ :=
  A207409.P10666545104290844078.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207992.P2814114464240705401

`∩[A207990(n+1), A207991(n+1)]`
-/

namespace A207992.P2814114464240705401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207992.P2814114464240705401

noncomputable section

/-- A207992: Primes p of the form p = prime(n) + prime(n+1) - 5 and p = prime(k) + prime(k+1) + 5.

Offset 1, canonical program `A207992.P2814114464240705401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A207992 (n : ℕ) : ℤ :=
  (A207992.P2814114464240705401.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A207992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208149.P8257743425623628444

`record[A000040(n+1)%A137780(n+1)]`
-/

namespace A208149.P8257743425623628444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A137780 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208149.P8257743425623628444

noncomputable section

/-- A208149: Primes prime(k) such that prime(k) <= 2^(prime(k+1) - prime(k)).

Offset 1, canonical program `A208149.P8257743425623628444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2213 terms. -/
def A208149 (n : ℕ) : ℤ :=
  A208149.P8257743425623628444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2213 terms. -/
def A208149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208513.P6652233857505646847

`gcd(A010816(n), A110162(n))`
-/

namespace A208513.P6652233857505646847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A110162 n)

end

end A208513.P6652233857505646847

noncomputable section

/-- A208513: Triangle of coefficients of polynomials u(n,x) jointly generated with A111125; see the Formula section.

Offset 1, canonical program `A208513.P6652233857505646847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208513 (n : ℕ) : ℤ :=
  (A208513.P6652233857505646847.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208515.P6119070150029608843

`A207611(gcd(A010816(n), A038722(n+1)))`
-/

namespace A208515.P6119070150029608843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207611 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A208515.P6119070150029608843

noncomputable section

/-- A208515: Triangle of coefficients of polynomials v(n,x) jointly generated with A208514; see the Formula section.

Offset 1, canonical program `A208515.P6119070150029608843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A208515 (n : ℕ) : ℤ :=
  A208515.P6119070150029608843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A208515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208521.P14308452571978604591

`A060546(A002262(n))*A133084(n+1)`
-/

namespace A208521.P14308452571978604591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A002262 n).toNat * A133084 (n + 1)

end

end A208521.P14308452571978604591

noncomputable section

/-- A208521: Triangle of coefficients of polynomials v(n,x) jointly generated with A208520; see the Formula section.

Offset 1, canonical program `A208521.P14308452571978604591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208521 (n : ℕ) : ℤ :=
  A208521.P14308452571978604591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208906.P14491951014712469072

`A016116(A002262(n))*A133084(n+1)`
-/

namespace A208906.P14491951014712469072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002262 n).toNat * A133084 (n + 1)

end

end A208906.P14491951014712469072

noncomputable section

/-- A208906: Triangle of coefficients of polynomials v(n,x) jointly generated with A208905; see the Formula section.

Offset 1, canonical program `A208906.P14491951014712469072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208906 (n : ℕ) : ℤ :=
  A208906.P14491951014712469072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209127.P11508689501548597325

`A208337(n+1)+A038137(n)-A209126(n+1)`
-/

namespace A209127.P11508689501548597325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (n + 1) + (A038137 n - A209126 (n + 1))

end

end A209127.P11508689501548597325

noncomputable section

/-- A209127: Triangle of coefficients of polynomials v(n,x) jointly generated with A209126; see the Formula section.

Offset 1, canonical program `A209127.P11508689501548597325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209127 (n : ℕ) : ℤ :=
  A209127.P11508689501548597325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209492.P3658957468068443564

`2*A048645(n+1)-1`
-/

namespace A209492.P3658957468068443564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048645 (n + 1) - 1

end

end A209492.P3658957468068443564

noncomputable section

/-- A209492: a(0)=1; for n >= 1, let k = floor((1 + sqrt(8*n-7))/2), m = n - (k^2 - k+2)/2. Then a(n) = 2^k + 2^(m+1) - 1.

Offset 0, canonical program `A209492.P3658957468068443564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A209492 (n : ℕ) : ℤ :=
  A209492.P3658957468068443564.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A209492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209534.P9858660404653803592

`A029744(A173395(n+1))+1`
-/

namespace A209534.P9858660404653803592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A173395 (n + 1)).toNat + 1

end

end A209534.P9858660404653803592

noncomputable section

/-- A209534: T(n,k)=Half the number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having exactly two distinct clockwise edge differences.

Offset 1, canonical program `A209534.P9858660404653803592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1197 terms. -/
def A209534 (n : ℕ) : ℤ :=
  A209534.P9858660404653803592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1197 terms. -/
def A209534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209561.P13297843710123169914

`A051597(n)-a(n-1)` with `a(0)=1`
-/

namespace A209561.P13297843710123169914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051597 n - a (n - 1)

end

end A209561.P13297843710123169914

noncomputable section

/-- A209561: Triangle of coefficients of polynomials u(n,x) jointly generated with A209562; see the Formula section.

Offset 1, canonical program `A209561.P13297843710123169914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209561 (n : ℕ) : ℤ :=
  A209561.P13297843710123169914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209747.P17975551538374276799

`A057428(A198954(n))+2*A037027(n)`
-/

namespace A209747.P17975551538374276799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A198954 n).toNat + 2 * A037027 n

end

end A209747.P17975551538374276799

noncomputable section

/-- A209747: Triangle of coefficients of polynomials u(n,x) jointly generated with A209748; see the Formula section.

Offset 1, canonical program `A209747.P17975551538374276799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209747 (n : ℕ) : ℤ :=
  A209747.P17975551538374276799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209755.P4404714408825635894

`A209151(n+1)-Δ[A155161(A038722(n+1))]`
-/

namespace A209755.P4404714408825635894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209151 (n + 1) - (f1 (n + 1) - f1 n)

end

end A209755.P4404714408825635894

noncomputable section

/-- A209755: Triangle of coefficients of polynomials u(n,x) jointly generated with A209756; see the Formula section.

Offset 1, canonical program `A209755.P4404714408825635894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9869 terms. -/
def A209755 (n : ℕ) : ℤ :=
  A209755.P4404714408825635894.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9869 terms. -/
def A209755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209762.P11771980091990745712

`A209761(n+1)+A097805(n)-A177767(n)`
-/

namespace A209762.P11771980091990745712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209761 (n + 1) + A097805 n - A177767 n

end

end A209762.P11771980091990745712

noncomputable section

/-- A209762: Triangle of coefficients of polynomials v(n,x) jointly generated with A209761; see the Formula section.

Offset 1, canonical program `A209762.P11771980091990745712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209762 (n : ℕ) : ℤ :=
  A209762.P11771980091990745712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209932.P1013292124690884436

`lt[A209929(n+1), 1]+1`
-/

namespace A209932.P1013292124690884436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209929 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A209932.P1013292124690884436

noncomputable section

/-- A209932: Numbers k such that smallest digit of all divisors of k is 0.

Offset 1, canonical program `A209932.P1013292124690884436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8243 terms. -/
def A209932 (n : ℕ) : ℤ :=
  (A209932.P1013292124690884436.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8243 terms. -/
def A209932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210190.P939011334498092116

`A105070(Δ[A055087(n)]+n+1)`
-/

namespace A210190.P939011334498092116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105070 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat

end

end A210190.P939011334498092116

noncomputable section

/-- A210190: Triangle of coefficients of polynomials v(n,x) jointly generated with A210189; see the Formula section.

Offset 1, canonical program `A210190.P939011334498092116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210190 (n : ℕ) : ℤ :=
  A210190.P939011334498092116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210200.P13673094195992924329

`A209145(n+1)+A155161(A028310(n))`
-/

namespace A210200.P13673094195992924329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209145 (n + 1) + A155161 (A028310 n).toNat

end

end A210200.P13673094195992924329

noncomputable section

/-- A210200: Triangle of coefficients of polynomials v(n,x) jointly generated with A210199; see the Formula section.

Offset 1, canonical program `A210200.P13673094195992924329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210200 (n : ℕ) : ℤ :=
  A210200.P13673094195992924329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210552.P11406578577563423596

`A053538(A099375(n)+n)`
-/

namespace A210552.P11406578577563423596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (A099375 n + (n : ℤ)).toNat

end

end A210552.P11406578577563423596

noncomputable section

/-- A210552: Triangle of coefficients of polynomials u(n,x) jointly generated with A210553; see the Formula section.

Offset 1, canonical program `A210552.P11406578577563423596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A210552 (n : ℕ) : ℤ :=
  A210552.P11406578577563423596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A210552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210554.P3328515325039195703

`A105306(A099375(n)+1+n)`
-/

namespace A210554.P3328515325039195703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A099375 n + 1 + (n : ℤ)).toNat

end

end A210554.P3328515325039195703

noncomputable section

/-- A210554: Triangle of coefficients of polynomials v(n,x) jointly generated with A208341; see the Formula section.

Offset 1, canonical program `A210554.P3328515325039195703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210554 (n : ℕ) : ℤ :=
  A210554.P3328515325039195703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210619.P17701669326897386950

`∑[A000045(A099375(n))*A035214(n)]`
-/

namespace A210619.P17701669326897386950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A099375 n).toNat * A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210619.P17701669326897386950

noncomputable section

/-- A210619: Triangle of numbers with n 1's and n 0's in their representation in base of Fibonacci numbers (A014417).

Offset 1, canonical program `A210619.P17701669326897386950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210619 (n : ℕ) : ℤ :=
  A210619.P17701669326897386950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210628.P787028128316081024

`(-1)^n*A097331(n)`
-/

namespace A210628.P787028128316081024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A097331 n

end

end A210628.P787028128316081024

noncomputable section

/-- A210628: Expansion of (-1 + 2*x + sqrt( 1 - 4*x^2)) / (2*x) in powers of x.

Offset 0, canonical program `A210628.P787028128316081024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210628 (n : ℕ) : ℤ :=
  A210628.P787028128316081024.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210628.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A210742.P14717416751337395312

`A199479(A014132(n+1))`
-/

namespace A210742.P14717416751337395312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199479 (A014132 (n + 1)).toNat

end

end A210742.P14717416751337395312

noncomputable section

/-- A210742: Triangle of coefficients of polynomials v(n,x) jointly generated with A210741; see the Formula section.

Offset 1, canonical program `A210742.P14717416751337395312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A210742 (n : ℕ) : ℤ :=
  A210742.P14717416751337395312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A210742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211370.P13812400085331057885

`A143122(A099375(n)+1+n)`
-/

namespace A211370.P13812400085331057885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (A099375 n + 1 + (n : ℤ)).toNat

end

end A211370.P13812400085331057885

noncomputable section

/-- A211370: Array read by antidiagonals: T(m,n) = Sum( n <= i <= m+n-1 ) i!.

Offset 1, canonical program `A211370.P13812400085331057885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A211370 (n : ℕ) : ℤ :=
  A211370.P13812400085331057885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A211370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211779.P11493622072280912374

`A007429(n+1)-A000203(n+1)`
-/

namespace A211779.P11493622072280912374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) - A000203 (n + 1)

end

end A211779.P11493622072280912374

noncomputable section

/-- A211779: a(n) = Sum_{d_

Offset 1, canonical program `A211779.P11493622072280912374`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211779 (n : ℕ) : ℤ :=
  A211779.P11493622072280912374.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211779.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211780.P8877674507974761173

`A007429(n+1)-(n+1)`
-/

namespace A211780.P8877674507974761173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) - (n + 1 : ℤ)

end

end A211780.P8877674507974761173

noncomputable section

/-- A211780: a(n) = Sum_{d|n, d

Offset 1, canonical program `A211780.P8877674507974761173`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211780 (n : ℕ) : ℤ :=
  A211780.P8877674507974761173.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211780.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A212314.P11095941826537081414

`eq[A000120(n), A130724(A192085(n))]`
-/

namespace A212314.P11095941826537081414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (A192085 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212314.P11095941826537081414

noncomputable section

/-- A212314: Numbers m such that B(m^3) = 3*B(m), where B(m) is the binary weight of m (A000120).

Offset 1, canonical program `A212314.P11095941826537081414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A212314 (n : ℕ) : ℤ :=
  (A212314.P11095941826537081414.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A212314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212690.P220314655135149710

`n²²-A212689(n)`
-/

namespace A212690.P220314655135149710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212689 n

end

end A212690.P220314655135149710

noncomputable section

/-- A212690: Number of (w,x,y,z) with all terms in {1,...,n} and 2|w-x| <= n+|y-z|.

Offset 0, canonical program `A212690.P220314655135149710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212690 (n : ℕ) : ℤ :=
  A212690.P220314655135149710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212730.P8897697622710183952

`A055217(Δ[n²])`
-/

namespace A212730.P8897697622710183952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055217 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A212730.P8897697622710183952

noncomputable section

/-- A212730: Number of 0..2 arrays of length 2*n with sum less than 2*n in any length 2n subsequence (=less than 50% duty cycle).

Offset 1, canonical program `A212730.P8897697622710183952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A212730 (n : ℕ) : ℤ :=
  A212730.P8897697622710183952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A212730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213088.P18382071125931641229

`A209302(n+1)-1`
-/

namespace A213088.P18382071125931641229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (n + 1) - 1

end

end A213088.P18382071125931641229

noncomputable section

/-- A213088: The Manhattan distance to the origin while traversing the first quadrant in a taxicab geometry.

Offset 1, canonical program `A213088.P18382071125931641229`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213088 (n : ℕ) : ℤ :=
  A213088.P18382071125931641229.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213584.P14777536116696346004

`A213579(comp[∑[n]])-A003057(n+2)`
-/

namespace A213584.P14777536116696346004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A003057 (n + 2)

end

end A213584.P14777536116696346004

noncomputable section

/-- A213584: Rectangular array: (row n) = b**c, where b(h) = F(h+1), c(h) = n-1+h, where F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213584.P14777536116696346004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A213584 (n : ℕ) : ℤ :=
  A213584.P14777536116696346004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A213584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213649.P8547143096557772554

`A000720(A145445(n+1))-n`
-/

namespace A213649.P8547143096557772554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A145445 (n + 1)).toNat - (n : ℤ)

end

end A213649.P8547143096557772554

noncomputable section

/-- A213649: Smallest k such that there exists a square between prime(n) and prime(n+k).

Offset 1, canonical program `A213649.P8547143096557772554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A213649 (n : ℕ) : ℤ :=
  A213649.P8547143096557772554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A213649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213707.P7878863599904127051

`n+A213706(n)`
-/

namespace A213707.P7878863599904127051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A213706 n

end

end A213707.P7878863599904127051

noncomputable section

/-- A213707: Positions of zeros in A218254.

Offset 0, canonical program `A213707.P7878863599904127051`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213707 (n : ℕ) : ℤ :=
  A213707.P7878863599904127051.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213711.P10909222957996312783

`∑[char[A213710(n)]]`
-/

namespace A213711.P10909222957996312783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213710 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213711.P10909222957996312783

noncomputable section

/-- A213711: a(n) = minimal k for which A218600(k) >= n.

Offset 0, canonical program `A213711.P10909222957996312783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8728 terms. -/
def A213711 (n : ℕ) : ℤ :=
  (A213711.P10909222957996312783.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8728 terms. -/
def A213711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213722.P18332226970150710010

`A011782(n)-A213709(n)`
-/

namespace A213722.P18332226970150710010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A213709 n

end

end A213722.P18332226970150710010

noncomputable section

/-- A213722: a(n) = number of terms in A213717 whose magnitude is in range [(2^n)-1,(2^(n+1))-2] (or equally, in range [(2^n),(2^(n+1))-1]).

Offset 0, canonical program `A213722.P18332226970150710010`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213722 (n : ℕ) : ℤ :=
  A213722.P18332226970150710010.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213722.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213724.P12963400970453454858

`Δ[(∑[A079559(abs(1-n))]-1)²]`
-/

namespace A213724.P12963400970453454858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213724.P12963400970453454858

noncomputable section

/-- A213724: Largest natural number x such that x = n + A000120(x), or zero if no such number exists.

Offset 0, canonical program `A213724.P12963400970453454858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. -/
def A213724 (n : ℕ) : ℤ :=
  A213724.P12963400970453454858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. -/
def A213724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213750.P11543633709042919296

`2*A213500(n+1)-abs(A122432(n))`
-/

namespace A213750.P11543633709042919296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213500 (n + 1) - |A122432 n|

end

end A213750.P11543633709042919296

noncomputable section

/-- A213750: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = 2*(n-1+h)-1, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213750.P11543633709042919296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213750 (n : ℕ) : ℤ :=
  A213750.P11543633709042919296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213766.P16960842637779880189

`A023860(2*(n+1))-A099920(n)`
-/

namespace A213766.P16960842637779880189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (2 * (n + 1)) - A099920 n

end

end A213766.P16960842637779880189

noncomputable section

/-- A213766: Principal diagonal of the convolution array A213765.

Offset 1, canonical program `A213766.P16960842637779880189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A213766 (n : ℕ) : ℤ :=
  A213766.P16960842637779880189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A213766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213768.P6784078122479010732

`2*A213579(n+1)-A104582(n+1)`
-/

namespace A213768.P6784078122479010732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213579 (n + 1) - A104582 (n + 1)

end

end A213768.P6784078122479010732

noncomputable section

/-- A213768: Rectangular array: (row n) = b**c, where b(h) = F(h), c(h) = 2*n-3+2*h, F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213768.P6784078122479010732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213768 (n : ℕ) : ℤ :=
  A213768.P6784078122479010732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213821.P9578737112397043331

`A213771(n+1)+A049777(n+1)`
-/

namespace A213821.P9578737112397043331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213771 (n + 1) + A049777 (n + 1)

end

end A213821.P9578737112397043331

noncomputable section

/-- A213821: Rectangular array: (row n) = b**c, where b(h) = 3*h-1, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213821.P9578737112397043331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213821 (n : ℕ) : ℤ :=
  A213821.P9578737112397043331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213841.P5709133087758580350

`2*A213752(n+1)-A055461(n+1)`
-/

namespace A213841.P5709133087758580350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213752 (n + 1) - A055461 (n + 1)

end

end A213841.P5709133087758580350

noncomputable section

/-- A213841: Rectangular array: (row n) = b**c, where b(h) = 2*h-1, c(h) = 4*n-7+4*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213841.P5709133087758580350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213841 (n : ℕ) : ℤ :=
  A213841.P5709133087758580350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213844.P11503971655518464143

`A055461(n+1)+2*A213752(n+1)`
-/

namespace A213844.P11503971655518464143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + 2 * A213752 (n + 1)

end

end A213844.P11503971655518464143

noncomputable section

/-- A213844: Rectangular array: (row n) = b**c, where b(h) = 2*h-1, c(h) = 4*n-5+4*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213844.P11503971655518464143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213844 (n : ℕ) : ℤ :=
  A213844.P11503971655518464143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213902.P8697298374266597207

`A004523(A100820(n+1))`
-/

namespace A213902.P8697298374266597207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A100820 (n + 1)).toNat

end

end A213902.P8697298374266597207

noncomputable section

/-- A213902: Number of integers of the form 6*k+1 and 6*k-1 between prime(n) and prime(n+1).

Offset 1, canonical program `A213902.P8697298374266597207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A213902 (n : ℕ) : ℤ :=
  A213902.P8697298374266597207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A213902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214054.P9495975754376215366

`gcd(2, A007912(xor(3, n)+3))`
-/

namespace A214054.P9495975754376215366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007912 (Nat.xor 3 n + 3))

end

end A214054.P9495975754376215366

noncomputable section

/-- A214054: Least m>0 such that n!!+m and n-m have a common divisor > 1.

Offset 1, canonical program `A214054.P9495975754376215366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8165 terms. -/
def A214054 (n : ℕ) : ℤ :=
  (A214054.P9495975754376215366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8165 terms. -/
def A214054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214408.P1183294702136454259

`lt[A009194(n+1), A033880(n+1)]+1`
-/

namespace A214408.P1183294702136454259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A214408.P1183294702136454259

noncomputable section

/-- A214408: Abundant numbers for which the abundance is not a divisor.

Offset 1, canonical program `A214408.P1183294702136454259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2465 terms. -/
def A214408 (n : ℕ) : ℤ :=
  (A214408.P1183294702136454259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2465 terms. -/
def A214408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214651.P2445496297912900043

`A220465(record[A141419(n+1)])`
-/

namespace A214651.P2445496297912900043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220465 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214651.P2445496297912900043

noncomputable section

/-- A214651: Count down from n to 1, n times.

Offset 1, canonical program `A214651.P2445496297912900043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1015 terms. -/
def A214651 (n : ℕ) : ℤ :=
  A214651.P2445496297912900043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1015 terms. -/
def A214651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214710.P3311664088709254903

`A007877(A007912(n+3)+A007893(n+1))`
-/

namespace A214710.P3311664088709254903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A007912 (n + 3) + A007893 (n + 1)).toNat

end

end A214710.P3311664088709254903

noncomputable section

/-- A214710: Least m>0 such that n!-m and n!!-m are relatively prime.

Offset 1, canonical program `A214710.P3311664088709254903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A214710 (n : ℕ) : ℤ :=
  A214710.P3311664088709254903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A214710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214884.P7885018717770910458

`(3*A119283(n)+(-1)^n*A001654(n))/2`
-/

namespace A214884.P7885018717770910458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A119283 n + (-1) ^ n * A001654 n : ℚ) / 2

end

end A214884.P7885018717770910458

noncomputable section

/-- A214884: a(n) = Sum_{k=0..n} (-1)^k*F(k)*F(k+2), where F=A000045 (Fibonacci numbers).

Offset 0, canonical program `A214884.P7885018717770910458`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214884 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A214884.P7885018717770910458.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214884.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214885.P1344965221170745018

`2*A119283(n)+(-1)^n*A001654(n)`
-/

namespace A214885.P1344965221170745018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119283 n + (-1) ^ n * A001654 n

end

end A214885.P1344965221170745018

noncomputable section

/-- A214885: a(n) = Sum_{k=0..n} (-1)^k*F(k)*F(k+3), where F=A000045 (Fibonacci numbers).

Offset 0, canonical program `A214885.P1344965221170745018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214885 (n : ℕ) : ℤ :=
  A214885.P1344965221170745018.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A215202.P9003233885417552104

`A128227(eq[A048152(n+1), A128227(n)])`
-/

namespace A215202.P9003233885417552104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215202.P9003233885417552104

noncomputable section

/-- A215202: Irregular triangle in which n-th row gives m in 1, ..., n-1 such that m^2 == m (mod n).

Offset 2, canonical program `A215202.P9003233885417552104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A215202 (n : ℕ) : ℤ :=
  A215202.P9003233885417552104.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A215202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215456.P7038399107069761046

`A007912(4*(n+1))%Δ[A002378(n)]`
-/

namespace A215456.P7038399107069761046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007912 (4 * (n + 1))) (f1 (n + 1) - f1 n)

end

end A215456.P7038399107069761046

noncomputable section

/-- A215456: a(n)=(4n-1)!! modulo 2n, n=1,2,...

Offset 1, canonical program `A215456.P7038399107069761046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A215456 (n : ℕ) : ℤ :=
  A215456.P7038399107069761046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A215456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215713.P3588067354417912298

`A000079(n+1)²/A006519(A016777(n+2))`
-/

namespace A215713.P3588067354417912298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) ^ 2 : ℚ) / (A006519 (A016777 (n + 2)).toNat : ℚ)

end

end A215713.P3588067354417912298

noncomputable section

/-- A215713: Denominator of sum(i=1..n, 3*i/4^i).

Offset 1, canonical program `A215713.P3588067354417912298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A215713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A215713.P3588067354417912298.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A215713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215992.P12067662932436388896

`p?[A007504(n+51)-A007504(n)]`
-/

namespace A215992.P12067662932436388896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 51) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215992.P12067662932436388896

noncomputable section

/-- A215992: Primes that are the sum of 51 consecutive primes.

Offset 1, canonical program `A215992.P12067662932436388896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A215992 (n : ℕ) : ℤ :=
  A215992.P12067662932436388896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A215992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216126.P17812320918836418919

`A000351(n)%A017512(A010816(3*n+2))`
-/

namespace A216126.P17812320918836418919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000351 n) (A017512 (A010816 (3 * n + 2)).toNat)

end

end A216126.P17812320918836418919

noncomputable section

/-- A216126: a(n) = 5^n mod 10000.

Offset 0, canonical program `A216126.P17812320918836418919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A216126 (n : ℕ) : ℤ :=
  A216126.P17812320918836418919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A216126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217219.P6754064516663132838

`6*A045833(n)`
-/

namespace A217219.P6754064516663132838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A045833 n

end

end A217219.P6754064516663132838

noncomputable section

/-- A217219: Theta series of planar hexagonal net (honeycomb) with respect to deep hole.

Offset 0, canonical program `A217219.P6754064516663132838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217219 (n : ℕ) : ℤ :=
  A217219.P6754064516663132838.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217219.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217324.P15056833866793307979

`A005817(n+4)-A001006(n+4)`
-/

namespace A217324.P15056833866793307979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005817 (n + 4) - A001006 (n + 4)

end

end A217324.P15056833866793307979

noncomputable section

/-- A217324: Number of self-inverse permutations in S_n with longest increasing subsequence of length 4.

Offset 4, canonical program `A217324.P15056833866793307979`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217324 (n : ℕ) : ℤ :=
  A217324.P15056833866793307979.a (n - 4)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218265.P4459247732749169675

`A000085(n+5)-A005817(n+5)`
-/

namespace A218265.P4459247732749169675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 5) - A005817 (n + 5)

end

end A218265.P4459247732749169675

noncomputable section

/-- A218265: Number of standard Young tableaux of n cells and height >= 5.

Offset 5, canonical program `A218265.P4459247732749169675`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218265 (n : ℕ) : ℤ :=
  A218265.P4459247732749169675.a (n - 5)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218346.P7761468565434163924

`A066846(A007401(n+1))`
-/

namespace A218346.P7761468565434163924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066846 (A007401 (n + 1)).toNat

end

end A218346.P7761468565434163924

noncomputable section

/-- A218346: Numbers of the form a^a + b^b, with a > b > 0.

Offset 1, canonical program `A218346.P7761468565434163924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1540 terms. -/
def A218346 (n : ℕ) : ℤ :=
  A218346.P7761468565434163924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1540 terms. -/
def A218346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218601.P8037354091719983160

`n%A213710(∑[char[A213710(n+1)]])`
-/

namespace A218601.P8037354091719983160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213710 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A213710 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A218601.P8037354091719983160

noncomputable section

/-- A218601: After the first zero, integers from 0 to A213709(n)-1 followed by integers from 0 to A213709(n+1)-1, etc.

Offset 0, canonical program `A218601.P8037354091719983160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8728 terms. -/
def A218601 (n : ℕ) : ℤ :=
  A218601.P8037354091719983160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8728 terms. -/
def A218601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219194.P13841470351551942710

`A000079(abs(A036263(n+1)))`
-/

namespace A219194.P13841470351551942710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 |A036263 (n + 1)|.toNat

end

end A219194.P13841470351551942710

noncomputable section

/-- A219194: a(n) = max(A218075(n+1), A218075(n)) / min(A218075(n+1), A218075(n)).

Offset 1, canonical program `A219194.P13841470351551942710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219194 (n : ℕ) : ℤ :=
  A219194.P13841470351551942710.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220104.P13357652405321892040

`A056556(A004526(n))+1`
-/

namespace A220104.P13357652405321892040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A004526 n).toNat + 1

end

end A220104.P13357652405321892040

noncomputable section

/-- A220104: k appears k*(k+1) times.

Offset 1, canonical program `A220104.P13357652405321892040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220104 (n : ℕ) : ℤ :=
  A220104.P13357652405321892040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220861.P3384637757439596115

`-A204993(record[A110560(n)])`
-/

namespace A220861.P3384637757439596115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A204993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A220861.P3384637757439596115

noncomputable section

/-- A220861: Choose smallest m>0 such that the n-th rational prime p ramifies in the imaginary quadratic extension field K = Q(sqrt(-m)); a(n) = discriminant(K).

Offset 1, canonical program `A220861.P3384637757439596115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A220861 (n : ℕ) : ℤ :=
  A220861.P3384637757439596115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A220861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220883.P12342537143027041134

`abs(A008275(n+1)*A076112(A014132(n+1)))`
-/

namespace A220883.P12342537143027041134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008275 (n + 1) * A076112 (A014132 (n + 1)).toNat|

end

end A220883.P12342537143027041134

noncomputable section

/-- A220883: Triangle read by rows: row n gives coefficients of expansion of Product_{k = 1..n-1} ((n + 1)*x + k), starting with lowest power.

Offset 1, canonical program `A220883.P12342537143027041134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1466 terms. -/
def A220883 (n : ℕ) : ℤ :=
  A220883.P12342537143027041134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1466 terms. -/
def A220883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221146.P4369918167823876310

`2*A004198(n)`
-/

namespace A221146.P4369918167823876310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004198 n

end

end A221146.P4369918167823876310

noncomputable section

/-- A221146: Table read by antidiagonals: (m+n) - (m XOR n).

Offset 0, canonical program `A221146.P4369918167823876310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221146 (n : ℕ) : ℤ :=
  A221146.P4369918167823876310.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222404.P14214754150695596768

`2*A222403(n)`
-/

namespace A222404.P14214754150695596768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222403 n

end

end A222404.P14214754150695596768

noncomputable section

/-- A222404: Triangle read by rows: left and right edges are A002378, interior entries are filled in using the Pascal triangle rule.

Offset 0, canonical program `A222404.P14214754150695596768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222404 (n : ℕ) : ℤ :=
  A222404.P14214754150695596768.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225014.P12267725668881702781

`∑[∑[A225013(n+1)]]+1`
-/

namespace A225014.P12267725668881702781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225013 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225014.P12267725668881702781

noncomputable section

/-- A225014: Number of 7Xn 0..1 arrays with rows unimodal and columns nondecreasing.

Offset 1, canonical program `A225014.P12267725668881702781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225014 (n : ℕ) : ℤ :=
  A225014.P12267725668881702781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225222.P12882070343994640497

`p?[lt[A023416(n), A145037(n)]]`
-/

namespace A225222.P12882070343994640497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A225222.P12882070343994640497

noncomputable section

/-- A225222: Primes with more than twice as many 1's as 0's in binary.

Offset 1, canonical program `A225222.P12882070343994640497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. -/
def A225222 (n : ℕ) : ℤ :=
  (A225222.P12882070343994640497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. -/
def A225222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225541.P14151932172831400690

`∑[char[A058749(n+1)]]`
-/

namespace A225541.P14151932172831400690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058749 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225541.P14151932172831400690

noncomputable section

/-- A225541: Floor(W(n)) where W is the Lambert W function.

Offset 0, canonical program `A225541.P14151932172831400690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225541 (n : ℕ) : ℤ :=
  (A225541.P14151932172831400690.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225950.P5976257078115682793

`A222946(n+2)%2*A120070(n+2)`
-/

namespace A225950.P5976257078115682793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222946 (n + 2)) 2 * A120070 (n + 2)

end

end A225950.P5976257078115682793

noncomputable section

/-- A225950: Triangle for odd legs of primitive Pythagorean triangles.

Offset 2, canonical program `A225950.P5976257078115682793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A225950 (n : ℕ) : ℤ :=
  A225950.P5976257078115682793.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A225950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226008.P11268386641324381222

`A225975(n)²`
-/

namespace A226008.P11268386641324381222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 n ^ 2

end

end A226008.P11268386641324381222

noncomputable section

/-- A226008: a(0) = 0; for n>0, a(n) = denominator(1/4 - 4/n^2).

Offset 0, canonical program `A226008.P11268386641324381222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226008 (n : ℕ) : ℤ :=
  A226008.P11268386641324381222.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226060.P13014276364689543860

`A213709(n+1)-A213709(n)`
-/

namespace A226060.P13014276364689543860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213709 (n + 1) - A213709 n

end

end A226060.P13014276364689543860

noncomputable section

/-- A226060: First differences of A213709.

Offset 0, canonical program `A226060.P13014276364689543860`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226060 (n : ℕ) : ℤ :=
  A226060.P13014276364689543860.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226060.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226570.P10213379658734750824

`(A067462(n+1)+n)%(n+1)`
-/

namespace A226570.P10213379658734750824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067462 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A226570.P10213379658734750824

noncomputable section

/-- A226570: a(n) = Sum_{k=1..n} (k+1)! mod n.

Offset 1, canonical program `A226570.P10213379658734750824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226570 (n : ℕ) : ℤ :=
  A226570.P10213379658734750824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226721.P17856605481448909484

`1+A066344(n+1)`
-/

namespace A226721.P17856605481448909484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A066344 (n + 1)

end

end A226721.P17856605481448909484

noncomputable section

/-- A226721: Position of 2^n in the joint ranking of all the numbers 2^j for j>=0 and 5^k for k>=1; complement of A123384.

Offset 1, canonical program `A226721.P17856605481448909484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226721 (n : ℕ) : ℤ :=
  A226721.P17856605481448909484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226722.P14657880171830940678

`A156301(n)+A066344(A028310(n))`
-/

namespace A226722.P14657880171830940678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 n + A066344 (A028310 n).toNat

end

end A226722.P14657880171830940678

noncomputable section

/-- A226722: Positions of the numbers 2^n, for n >=0, in the joint ranking of all the numbers 2^h, 3^k, 5^k, for h >= 0, k >= 1.

Offset 1, canonical program `A226722.P14657880171830940678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A226722 (n : ℕ) : ℤ :=
  A226722.P14657880171830940678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A226722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226784.P7540790382231416408

`(2*n*A212514(n+1))%(n+1)`
-/

namespace A226784.P7540790382231416408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * ((n : ℤ) * A212514 (n + 1))) (n + 1 : ℤ)

end

end A226784.P7540790382231416408

noncomputable section

/-- A226784: If gcd(n,6) != 1 then a(n)=0, otherwise a(n)=6^(-1) in Z/nZ*.

Offset 1, canonical program `A226784.P7540790382231416408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A226784 (n : ℕ) : ℤ :=
  A226784.P7540790382231416408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A226784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226806.P12892588838181652546

`∪[A173195(n+1), A055236(n)]`
-/

namespace A226806.P12892588838181652546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A226806.P12892588838181652546

noncomputable section

/-- A226806: Numbers of the form 2^j + 4^k, for j and k >= 0.

Offset 1, canonical program `A226806.P12892588838181652546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226806 (n : ℕ) : ℤ :=
  (A226806.P12892588838181652546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226827.P13006153795325612832

`2*A226793(n+1)`
-/

namespace A226827.P13006153795325612832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226793 (n + 1)

end

end A226827.P13006153795325612832

noncomputable section

/-- A226827: Numbers of the form 3^j + 9^k, for j and k >= 0.

Offset 1, canonical program `A226827.P13006153795325612832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226827 (n : ℕ) : ℤ :=
  A226827.P13006153795325612832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226895.P9533121574335622783

`Δ[A226894(n+1)]`
-/

namespace A226895.P9533121574335622783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226895.P9533121574335622783

noncomputable section

/-- A226895: Difference sequence for A226894.

Offset 1, canonical program `A226895.P9533121574335622783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226895 (n : ℕ) : ℤ :=
  A226895.P9533121574335622783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226996.P1446342238526676326

`A226994(n)+1-A226995(n)`
-/

namespace A226996.P1446342238526676326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226994 n + (1 - A226995 n)

end

end A226996.P1446342238526676326

noncomputable section

/-- A226996: Number of lattice paths from (0,0) to (n,n) consisting of steps U=(1,1), H=(1,0) and S=(0,1) such that the first step leaving and the last step joining the diagonal (if any) is an H step.

Offset 0, canonical program `A226996.P1446342238526676326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A226996 (n : ℕ) : ℤ :=
  A226996.P1446342238526676326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A226996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227216.P6671624915462471529

`A119428(2*n)+A119428(2*n)-A119428(n)`
-/

namespace A227216.P6671624915462471529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119428 (2 * n) + (A119428 (2 * n) - A119428 n)

end

end A227216.P6671624915462471529

noncomputable section

/-- A227216: Expansion of f(-q^2, -q^3)^5 / f(-q)^3 in powers of q where f() is a Ramanujan theta function.

Offset 0, canonical program `A227216.P6671624915462471529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A227216 (n : ℕ) : ℤ :=
  A227216.P6671624915462471529.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A227216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227252.P15475645311993057881

`record[A059174(n)+1-2*n]`
-/

namespace A227252.P15475645311993057881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059174 n + (1 - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227252.P15475645311993057881

noncomputable section

/-- A227252: Number of n X 2 binary arrays indicating whether each 2 X 2 subblock of a larger binary array has lexicographically nondecreasing rows and columns, for some larger (n+1) X 3 binary array with rows and columns of the latter in lexicographically nondecreasing order.

Offset 1, canonical program `A227252.P15475645311993057881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227252 (n : ℕ) : ℤ :=
  A227252.P15475645311993057881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227737.P16611216507253860611

`a(n-A005811(a(n-1)))+1` with `a(0)=1`
-/

namespace A227737.P16611216507253860611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A005811 (a (n - 1))).toNat + 1

end

end A227737.P16611216507253860611

noncomputable section

/-- A227737: n occurs as many times as there are runs in binary representation of n.

Offset 1, canonical program `A227737.P16611216507253860611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227737 (n : ℕ) : ℤ :=
  (A227737.P16611216507253860611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227742.P14170089042966495226

`A173318(2*n)+1/2*(1+A005811(2*(n+1)-1))`
-/

namespace A227742.P14170089042966495226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173318 (2 * n) : ℚ) + (1 : ℚ) / 2 * (1 + A005811 (2 * (n + 1) - 1) : ℚ)

end

end A227742.P14170089042966495226

noncomputable section

/-- A227742: Fixed points of permutation A227741.

Offset 1, canonical program `A227742.P14170089042966495226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227742 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227742.P14170089042966495226.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227742.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227872.P9091759505244018972

`∑{d}[n+1, A010060(#)]`
-/

namespace A227872.P9091759505244018972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010060 d

end

end A227872.P9091759505244018972

noncomputable section

/-- A227872: Number of odious divisors (A000069) of n.

Offset 1, canonical program `A227872.P9091759505244018972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227872 (n : ℕ) : ℤ :=
  A227872.P9091759505244018972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227873.P5669908514505112701

`∑{d}[n+1, #*A010060(#)]`
-/

namespace A227873.P5669908514505112701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010060 d

end

end A227873.P5669908514505112701

noncomputable section

/-- A227873: Sum of odious divisors of n. See A000069 for odious numbers.

Offset 1, canonical program `A227873.P5669908514505112701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227873 (n : ℕ) : ℤ :=
  A227873.P5669908514505112701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227982.P6866240745655209750

`lt[A039653(n), A053246(n+1)]+1`
-/

namespace A227982.P6866240745655209750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A227982.P6866240745655209750

noncomputable section

/-- A227982: Numbers n such that sigma(n+1) - sigma(n-1) > sigma(n); where sigma(n) = A000203(n) = sum of the divisors of n.

Offset 1, canonical program `A227982.P6866240745655209750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A227982 (n : ℕ) : ℤ :=
  (A227982.P6866240745655209750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A227982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228179.P8496173092229865919

`A128227(eq[1, A048152(n+1)])`
-/

namespace A228179.P8496173092229865919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228179.P8496173092229865919

noncomputable section

/-- A228179: Irregular table where the n-th row consists of the square roots of 1 in Z_n.

Offset 2, canonical program `A228179.P8496173092229865919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A228179 (n : ℕ) : ℤ :=
  A228179.P8496173092229865919.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A228179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228197.P17697013685017105407

`A126966(n)+A068551(n)`
-/

namespace A228197.P17697013685017105407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n + A068551 n

end

end A228197.P17697013685017105407

noncomputable section

/-- A228197: Number of n-edge ordered trees with bicolored boundary edges.

Offset 0, canonical program `A228197.P17697013685017105407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A228197 (n : ℕ) : ℤ :=
  A228197.P17697013685017105407.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A228197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228294.P8313310365846261537

`A060885(n)-1`
-/

namespace A228294.P8313310365846261537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060885 n - 1

end

end A228294.P8313310365846261537

noncomputable section

/-- A228294: a(n) = Sum_{k=1..10} n^k.

Offset 0, canonical program `A228294.P8313310365846261537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228294 (n : ℕ) : ℤ :=
  A228294.P8313310365846261537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228312.P16144185583148908062

`A214604(n+1)-A141418(n+1)+n`
-/

namespace A228312.P16144185583148908062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214604 (n + 1) - A141418 (n + 1) + (n : ℤ)

end

end A228312.P16144185583148908062

noncomputable section

/-- A228312: Triangle read by rows: T(m,n) (1<=n<=m) is the hyper-Wiener index of the complete bipartite graph K(m,n).

Offset 1, canonical program `A228312.P16144185583148908062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228312 (n : ℕ) : ℤ :=
  A228312.P16144185583148908062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228338.P2629555823753106334

`A005554(n+2)+A005554(n+3)`
-/

namespace A228338.P2629555823753106334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005554 (n + 2) + A005554 (n + 3)

end

end A228338.P2629555823753106334

noncomputable section

/-- A228338: Third diagonal of Catalan difference table (A059346).

Offset 0, canonical program `A228338.P2629555823753106334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A228338 (n : ℕ) : ℤ :=
  A228338.P2629555823753106334.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A228338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228343.P4320931973267472568

`Δ[A143955(n)+2*a(n-1)]` with `a(0)=1`
-/

namespace A228343.P4320931973267472568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A143955 n + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228343.P4320931973267472568

noncomputable section

/-- A228343: The number of ordered trees with bicolored single edges on the boundary.

Offset 0, canonical program `A228343.P4320931973267472568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228343 (n : ℕ) : ℤ :=
  A228343.P4320931973267472568.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228404.P6042679917404451421

`A026012(n)+A000108(n)%A106640(n)`
-/

namespace A228404.P6042679917404451421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + Int.tmod (A000108 n) (A106640 n)

end

end A228404.P6042679917404451421

noncomputable section

/-- A228404: The number of complete binary trees with bicolored twigs. A twig is a vertex with one child on the boundary and the other child having no descendants.

Offset 0, canonical program `A228404.P6042679917404451421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228404 (n : ℕ) : ℤ :=
  A228404.P6042679917404451421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228669.P4523925343726764388

`A001281(A131694(n+2))`
-/

namespace A228669.P4523925343726764388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A131694 (n + 2)).toNat

end

end A228669.P4523925343726764388

noncomputable section

/-- A228669: Numbers k for which sum{prime(2*k) - prime(2*k-1)} is prime.

Offset 1, canonical program `A228669.P4523925343726764388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228669 (n : ℕ) : ℤ :=
  A228669.P4523925343726764388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229089.P7074531385501001204

`lt[A229087(n+1), 0]+1`
-/

namespace A229089.P7074531385501001204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229087 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A229089.P7074531385501001204

noncomputable section

/-- A229089: Numbers n such that sigma(n) mod n < antisigma(n) mod n, where sigma(n) = A000203(n) = sum of divisor of n, antisigma(n) = A024816(n) = sum of non-divisors of n.

Offset 1, canonical program `A229089.P7074531385501001204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7170 terms. -/
def A229089 (n : ℕ) : ℤ :=
  (A229089.P7074531385501001204.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7170 terms. -/
def A229089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229090.P2897396179284103415

`lt[0, A229087(n+1)]+1`
-/

namespace A229090.P2897396179284103415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A229090.P2897396179284103415

noncomputable section

/-- A229090: Numbers n such that sigma(n) mod n > antisigma(n) mod n, where sigma(n) = A000203(n) = sum of divisors of n, antisigma(n) = A024816(n) = sum of non-divisors of n.

Offset 1, canonical program `A229090.P2897396179284103415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2824 terms. -/
def A229090 (n : ℕ) : ℤ :=
  (A229090.P2897396179284103415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2824 terms. -/
def A229090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229115.P9819039358198494583

`eq[14, A229087(n+1)]+1`
-/

namespace A229115.P9819039358198494583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229115.P9819039358198494583

noncomputable section

/-- A229115: Numbers n such that sigma(n) mod n - antisigma(n) mod n = 14, where sigma(n) = A000203(n) = sum of divisor of n, antisigma(n) = A024816(n) = sum of non-divisors of n.

Offset 1, canonical program `A229115.P9819039358198494583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A229115 (n : ℕ) : ℤ :=
  (A229115.P9819039358198494583.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A229115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230048.P9001472186708211094

`record[A007913(A000069(n+1))]`
-/

namespace A230048.P9001472186708211094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000069 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230048.P9001472186708211094

noncomputable section

/-- A230048: Squarefree odious numbers.

Offset 1, canonical program `A230048.P9001472186708211094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6253 terms. -/
def A230048 (n : ℕ) : ℤ :=
  A230048.P9001472186708211094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6253 terms. -/
def A230048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230135.P6542863793755226928

`A000007(and(5, A145917(n)))`
-/

namespace A230135.P6542863793755226928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land 5 (A145917 n)).toNat

end

end A230135.P6542863793755226928

noncomputable section

/-- A230135: Triangle read by rows: T(n, k) = 1 if ((k mod 4 = 2) and (n mod 2 = 1)) or ((k mod 4 = 0) and (n mod 2 = 0)) else T(n, k) = 0.

Offset 0, canonical program `A230135.P6542863793755226928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A230135 (n : ℕ) : ℤ :=
  A230135.P6542863793755226928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A230135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230227.P15280561907443236401

`p?[2*A153134(n+1)+1]`
-/

namespace A230227.P15280561907443236401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153134 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230227.P15280561907443236401

noncomputable section

/-- A230227: Primes p with 3*p - 10 also prime.

Offset 1, canonical program `A230227.P15280561907443236401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A230227 (n : ℕ) : ℤ :=
  A230227.P15280561907443236401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A230227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230812.P15143335762898235150

`record[A059591(2*n+3)/2]`
-/

namespace A230812.P15143335762898235150
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059591 (2 * n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230812.P15143335762898235150

noncomputable section

/-- A230812: Smallest squarefree side lengths of primitive integer Soddyian triangles.

Offset 1, canonical program `A230812.P15143335762898235150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4475 terms. -/
def A230812 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A230812.P15143335762898235150.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4475 terms. -/
def A230812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231482.P13578622432860794418

`(n+1)*∑[A086871(n)]`
-/

namespace A231482.P13578622432860794418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231482.P13578622432860794418

noncomputable section

/-- A231482: The number of nonlinear normal modes for a fully resonant Hamiltonian system with n degrees of freedom.

Offset 1, canonical program `A231482.P13578622432860794418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A231482 (n : ℕ) : ℤ :=
  A231482.P13578622432860794418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A231482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231947.P3420748892416134547

`A103440(3*n+1)`
-/

namespace A231947.P3420748892416134547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103440 (3 * n + 1)

end

end A231947.P3420748892416134547

noncomputable section

/-- A231947: Expansion of q^(-1/3) * a(q)^2 * c(q) / 3 in powers of q where a(), c() are cubic AGM theta functions.

Offset 0, canonical program `A231947.P3420748892416134547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A231947 (n : ℕ) : ℤ :=
  A231947.P3420748892416134547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A231947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233558.P15177050206559062068

`A128142(n+1)%A003057(n+2)`
-/

namespace A233558.P15177050206559062068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128142 (n + 1)) (A003057 (n + 2))

end

end A233558.P15177050206559062068

noncomputable section

/-- A233558: Triangle read by rows: T(n,k) = real part mod n of (n + ki)^2, where k=1..n-1 and i is the imaginary unit.

Offset 2, canonical program `A233558.P15177050206559062068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A233558 (n : ℕ) : ℤ :=
  A233558.P15177050206559062068.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A233558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233671.P2639350309273888819

`lt[(1/3)², A036263(n+1)]+2`
-/

namespace A233671.P2639350309273888819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 3) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 2

end

end A233671.P2639350309273888819

noncomputable section

/-- A233671: Numbers k such that prime(k)^2 < prime(k-1)*prime(k+1).

Offset 1, canonical program `A233671.P2639350309273888819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233671 (n : ℕ) : ℤ :=
  (A233671.P2639350309273888819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234218.P2067863749200831996

`p?[n*A000035(A192085(n))]`
-/

namespace A234218.P2067863749200831996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000035 (A192085 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234218.P2067863749200831996

noncomputable section

/-- A234218: Primes whose cubes are odious.

Offset 1, canonical program `A234218.P2067863749200831996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A234218 (n : ℕ) : ℤ :=
  A234218.P2067863749200831996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A234218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234973.P16340142227347976092

`p?[A034961(n+1)+6]`
-/

namespace A234973.P16340142227347976092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234973.P16340142227347976092

noncomputable section

/-- A234973: Primes that are 6 plus the sum of three consecutive primes.

Offset 1, canonical program `A234973.P16340142227347976092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A234973 (n : ℕ) : ℤ :=
  A234973.P16340142227347976092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A234973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235879.P1504288234909662281

`A183626(n+1)+A305155(n)+1`
-/

namespace A235879.P1504288234909662281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183626 (n + 1) + (A305155 n + 1)

end

end A235879.P1504288234909662281

noncomputable section

/-- A235879: Number of (n+1) X (3+1) 0..2 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

Offset 1, canonical program `A235879.P1504288234909662281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A235879 (n : ℕ) : ℤ :=
  A235879.P1504288234909662281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A235879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236186.P5484807995005540986

`A049296(n+2)`
-/

namespace A236186.P5484807995005540986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049296 (n + 2)

end

end A236186.P5484807995005540986

noncomputable section

/-- A236186: Differences between terms of compacting Eratosthenes sieve for prime(5) = 11.

Offset 1, canonical program `A236186.P5484807995005540986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A236186 (n : ℕ) : ℤ :=
  A236186.P5484807995005540986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A236186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236294.P17686924681662183359

`A220838(n+5)`
-/

namespace A236294.P17686924681662183359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220838 (n + 5)

end

end A236294.P17686924681662183359

noncomputable section

/-- A236294: a(n) = max( a(n-1) + a(n-3), 2*a(n-2) ) - a(n-4), with a(0)=1, a(1)=1, a(2)=2, a(3)=3.

Offset 0, canonical program `A236294.P17686924681662183359`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236294 (n : ℕ) : ℤ :=
  A236294.P17686924681662183359.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236294.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A236676.P1389962155202570512

`A073846(A103517(n)+A080339(n+1))`
-/

namespace A236676.P1389962155202570512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A103517 n + A080339 (n + 1)).toNat

end

end A236676.P1389962155202570512

noncomputable section

/-- A236676: The n-th term is the n-th composite if n is prime, and the n-th prime if n is not prime.

Offset 1, canonical program `A236676.P1389962155202570512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A236676 (n : ℕ) : ℤ :=
  A236676.P1389962155202570512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A236676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238015.P2345716481472357313

`ceil(A001316(n)/8)`
-/

namespace A238015.P2345716481472357313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001316 n : ℚ) / 8⌉

end

end A238015.P2345716481472357313

noncomputable section

/-- A238015: Denominator of (2*n+1)!*8*Bernoulli(2*n,1/2).

Offset 0, canonical program `A238015.P2345716481472357313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2001 terms. -/
def A238015 (n : ℕ) : ℤ :=
  A238015.P2345716481472357313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2001 terms. -/
def A238015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240355.P8056118770245274033

`A014045(Δ[ceil(C(n, 2)/2)])`
-/

namespace A240355.P8056118770245274033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014045 (f1 (n + 1) - f1 n).toNat

end

end A240355.P8056118770245274033

noncomputable section

/-- A240355: Inverse of 72nd cyclotomic polynomial.

Offset 0, canonical program `A240355.P8056118770245274033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240355 (n : ℕ) : ℤ :=
  A240355.P8056118770245274033.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240689.P7296709912588250351

`A038800(A000040(n+1))`
-/

namespace A240689.P7296709912588250351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (A000040 (n + 1)).toNat

end

end A240689.P7296709912588250351

noncomputable section

/-- A240689: The number of values of the digit k for which prime(n)*10+k is prime.

Offset 1, canonical program `A240689.P7296709912588250351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A240689 (n : ℕ) : ℤ :=
  A240689.P7296709912588250351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A240689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240914.P651125426119913968

`record[A051544(n+3)*A072505(n+3)]`
-/

namespace A240914.P651125426119913968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051544 (n + 3) * A072505 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240914.P651125426119913968

noncomputable section

/-- A240914: Semiprimes of the form S(n) + T(n) where S(n) and T(n) are the n-th square and the n-th triangular numbers.

Offset 1, canonical program `A240914.P651125426119913968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A240914 (n : ℕ) : ℤ :=
  A240914.P651125426119913968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A240914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241592.P9669127012109654097

`A220838(n+2)-char[A004771(n)]`
-/

namespace A241592.P9669127012109654097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220838 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A241592.P9669127012109654097

noncomputable section

/-- A241592: Degree of Somos4-oid polynomial s_n(x).

Offset 1, canonical program `A241592.P9669127012109654097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A241592 (n : ℕ) : ℤ :=
  A241592.P9669127012109654097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A241592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241621.P17795635083322010053

`A108670(n+1)+A107891(n)`
-/

namespace A241621.P17795635083322010053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108670 (n + 1) + A107891 n

end

end A241621.P17795635083322010053

noncomputable section

/-- A241621: Number of length 6+2 0..n arrays with no consecutive three elements summing to more than n.

Offset 1, canonical program `A241621.P17795635083322010053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A241621 (n : ℕ) : ℤ :=
  A241621.P17795635083322010053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A241621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241891.P9479106235604816941

`A241682(n)+A176742(n)²`
-/

namespace A241891.P9479106235604816941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241682 n + A176742 n ^ 2

end

end A241891.P9479106235604816941

noncomputable section

/-- A241891: Total number of unit squares appearing in the Thue-Morse sequence of logical matrices (1, 0 version) after n stages.

Offset 0, canonical program `A241891.P9479106235604816941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241891 (n : ℕ) : ℤ :=
  A241891.P9479106235604816941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242206.P15295837578510900863

`∑[A167821(n+4)-2]`
-/

namespace A242206.P15295837578510900863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167821 (n + 4) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242206.P15295837578510900863

noncomputable section

/-- A242206: Number of length n binary words which contain 00 and 01 and 10 and 11 as (possibly overlapping) contiguous subsequences.

Offset 5, canonical program `A242206.P15295837578510900863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A242206 (n : ℕ) : ℤ :=
  A242206.P15295837578510900863.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A242206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242408.P5047545838099332547

`comp[A242407(n+1)]`
-/

namespace A242408.P5047545838099332547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242408.P5047545838099332547

noncomputable section

/-- A242408: Numbers such that in ternary representation at least one pair of adjacent digits has a sum greater than 2.

Offset 1, canonical program `A242408.P5047545838099332547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242408 (n : ℕ) : ℤ :=
  (A242408.P5047545838099332547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242653.P15016598860482311398

`A122851(A209293(n+1)-1)`
-/

namespace A242653.P15016598860482311398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122851 (A209293 (n + 1) - 1).toNat

end

end A242653.P15016598860482311398

noncomputable section

/-- A242653: Triangle read by rows: T(n,k) = ((n+k)/2)!/k! if n,k have same parity, otherwise 0.

Offset 0, canonical program `A242653.P15016598860482311398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9460 terms. -/
def A242653 (n : ℕ) : ℤ :=
  A242653.P15016598860482311398.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9460 terms. -/
def A242653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242767.P6276449245007787369

`A027833(round(sqrt(n²+1)))`
-/

namespace A242767.P6276449245007787369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A242767.P6276449245007787369

noncomputable section

/-- A242767: Numbers of repetitions of terms in A242758.

Offset 2, canonical program `A242767.P6276449245007787369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242767 (n : ℕ) : ℤ :=
  A242767.P6276449245007787369.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242881.P3869384848931526596

`eq[2, A027833(n+1)]+2`
-/

namespace A242881.P3869384848931526596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242881.P3869384848931526596

noncomputable section

/-- A242881: Positions of lesser of twin primes in A001359 with index 2.

Offset 1, canonical program `A242881.P3869384848931526596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1075 terms. -/
def A242881 (n : ℕ) : ℤ :=
  (A242881.P3869384848931526596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1075 terms. -/
def A242881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243717.P9128340511837324197

`A014409(n+2)-∑[n]`
-/

namespace A243717.P9128340511837324197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014409 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A243717.P9128340511837324197

noncomputable section

/-- A243717: Number of inequivalent (mod D_4) ways to place 2 nonattacking knights on an n X n board.

Offset 2, canonical program `A243717.P9128340511837324197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A243717 (n : ℕ) : ℤ :=
  A243717.P9128340511837324197.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A243717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244041.P9196953694922478811

`∑{digits}[A024631(n), #]`
-/

namespace A244041.P9196953694922478811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A244041.P9196953694922478811

noncomputable section

/-- A244041: Sum of digits of n written in fractional base 4/3.

Offset 0, canonical program `A244041.P9196953694922478811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244041 (n : ℕ) : ℤ :=
  (A244041.P9196953694922478811.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244215.P17054345626323859306

`A244160(n)-A244160(n-A081290(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244215.P17054345626323859306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 n - A244160 ((n : ℤ) - A081290 n).toNat

end

end A244215.P17054345626323859306

noncomputable section

/-- A244215: a(0)=0, and for n>=1, if n is the k-th Catalan number (A000108(k)), a(n) = k, otherwise the difference of the indices of the two largest Catalan numbers whose sum is less than or equal to n: a(n) = A244160(n) - A244160(n-A081290(n)).

Offset 0, canonical program `A244215.P17054345626323859306`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081290, A244160, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244215 (n : ℕ) : ℤ :=
  A244215.P17054345626323859306.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081290, A244160, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244222.P5228230116540986536

`record[n*(1-A244221(n))]`
-/

namespace A244222.P5228230116540986536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A244221 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244222.P5228230116540986536

noncomputable section

/-- A244222: Numbers k which have even representation in Greedy Catalan Base, i.e., where A014418(k) ends with zero.

Offset 0, canonical program `A244222.P5228230116540986536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5763 terms. -/
def A244222 (n : ℕ) : ℤ :=
  A244222.P5228230116540986536.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5763 terms. -/
def A244222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244224.P3371671429758605766

`∑[1-A244221(n)]`
-/

namespace A244224.P3371671429758605766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A244221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244224.P3371671429758605766

noncomputable section

/-- A244224: a(n) = Number of nonnegative integers 0 <= k <= n, which have an even representation in Greedy Catalan Base (A014418).

Offset 0, canonical program `A244224.P3371671429758605766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244224 (n : ℕ) : ℤ :=
  A244224.P3371671429758605766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244737.P1957845354810666174

`lt[A005097(n+1)%5, 2]+2`
-/

namespace A244737.P1957845354810666174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005097 (n + 1)) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A244737.P1957845354810666174

noncomputable section

/-- A244737: Numbers k such that (prime(k) mod 5) is odd.

Offset 1, canonical program `A244737.P1957845354810666174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A244737 (n : ℕ) : ℤ :=
  (A244737.P1957845354810666174.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A244737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244884.P1376533462208018478

`A001006(n)-A005554(n+1)%A001006(n)`
-/

namespace A244884.P1376533462208018478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - Int.tmod (A005554 (n + 1)) (A001006 n)

end

end A244884.P1376533462208018478

noncomputable section

/-- A244884: Expansion of (-2 +x^2 +x -x*sqrt(1-2*x-3*x^2))/(-1 +x -sqrt(1-2*x-3*x^2)).

Offset 0, canonical program `A244884.P1376533462208018478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A244884 (n : ℕ) : ℤ :=
  A244884.P1376533462208018478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A244884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244941.P15006314446011111513

`∑[A049472(A026251(n+1))+n+2]+1`
-/

namespace A244941.P15006314446011111513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A026251 (n + 1)).toNat + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A244941.P15006314446011111513

noncomputable section

/-- A244941: Number of length 2 0..n arrays with each partial sum starting from the beginning no more than sqrt(3) standard deviations from its mean.

Offset 1, canonical program `A244941.P15006314446011111513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A244941 (n : ℕ) : ℤ :=
  A244941.P15006314446011111513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A244941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245092.P5629512681857718136

`A033880(A152271(n))+n+1`
-/

namespace A245092.P5629512681857718136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A152271 n).toNat + (n + 1 : ℤ)

end

end A245092.P5629512681857718136

noncomputable section

/-- A245092: The even numbers (A005843) and the values of sigma function (A000203) interleaved.

Offset 0, canonical program `A245092.P5629512681857718136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245092 (n : ℕ) : ℤ :=
  A245092.P5629512681857718136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245305.P12336053277035372019

`floor(p?[A158709(n+1)-2]/4)`
-/

namespace A245305.P12336053277035372019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158709 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌋

end

end A245305.P12336053277035372019

noncomputable section

/-- A245305: Numbers k such that 4k+1, 4k+3, and 6k+5 are all primes.

Offset 1, canonical program `A245305.P12336053277035372019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A245305 (n : ℕ) : ℤ :=
  A245305.P12336053277035372019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A245305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245574.P5854510550737387433

`lcm(ceil(n/98), A057536(n))`
-/

namespace A245574.P5854510550737387433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(n : ℚ) / 98⌉ (A057536 n)

end

end A245574.P5854510550737387433

noncomputable section

/-- A245574: Minimal coin changing sequence for denominations 1, 2, 5, 10, 20 and 50 cents.

Offset 0, canonical program `A245574.P5854510550737387433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245574 (n : ℕ) : ℤ :=
  (A245574.P5854510550737387433.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245773.P11491610189230660149

`A064987(n+1)-A245484(n+1)`
-/

namespace A245773.P11491610189230660149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 1) - A245484 (n + 1)

end

end A245773.P11491610189230660149

noncomputable section

/-- A245773: a(n) = n*sigma(n) - Sum_{(d

Offset 1, canonical program `A245773.P11491610189230660149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245773 (n : ℕ) : ℤ :=
  A245773.P11491610189230660149.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246104.P17036566817136398494

`A003258(A087172(n+1))`
-/

namespace A246104.P17036566817136398494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003258 (A087172 (n + 1)).toNat

end

end A246104.P17036566817136398494

noncomputable section

/-- A246104: Least m > 0 for which (s(m), ..., s(n+m-1)) = (s(0), ..., s(n)), the first n+1 terms of the infinite Fibonacci word A003849.

Offset 0, canonical program `A246104.P17036566817136398494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246104 (n : ℕ) : ℤ :=
  A246104.P17036566817136398494.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246414.P8392572628755399728

`∩[A246410(n+1), A246413(n+1)-1]`
-/

namespace A246414.P8392572628755399728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246414.P8392572628755399728

noncomputable section

/-- A246414: Positive integers k satisfying csc(k) < csc(k+1) > csc(k+2).

Offset 1, canonical program `A246414.P8392572628755399728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A246414 (n : ℕ) : ℤ :=
  (A246414.P8392572628755399728.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A246414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246432.P7367098291756528111

`A120588(n)*A260196(n)`
-/

namespace A246432.P7367098291756528111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A260196 n

end

end A246432.P7367098291756528111

noncomputable section

/-- A246432: Convolution inverse of A001700.

Offset 0, canonical program `A246432.P7367098291756528111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A246432 (n : ℕ) : ℤ :=
  A246432.P7367098291756528111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A246432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246437.P8274867833887097828

`A257520(n)-n%2`
-/

namespace A246437.P8274867833887097828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n - ((n % 2 : ℕ) : ℤ)

end

end A246437.P8274867833887097828

noncomputable section

/-- A246437: Expansion of (1/2)*(1/(x+1)+1/(sqrt(-3*x^2-2*x+1))).

Offset 0, canonical program `A246437.P8274867833887097828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A246437 (n : ℕ) : ℤ :=
  A246437.P8274867833887097828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A246437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246498.P3117156610869488528

`(n+1)*A007407(n+1)`
-/

namespace A246498.P3117156610869488528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007407 (n + 1)

end

end A246498.P3117156610869488528

noncomputable section

/-- A246498: Numerator of the harmonic mean of the first n squares.

Offset 1, canonical program `A246498.P3117156610869488528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A246498 (n : ℕ) : ℤ :=
  A246498.P3117156610869488528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A246498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246575.P17700213826678581396

`∑[A078616(abs(1-n))]`
-/

namespace A246575.P17700213826678581396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246575.P17700213826678581396

noncomputable section

/-- A246575: Expansion of (Product_{r>=1} (1-x^r))*x^(k^2) / Product_{i=1..k} (1-x^i)^2 with k=1.

Offset 0, canonical program `A246575.P17700213826678581396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246575 (n : ℕ) : ℤ :=
  A246575.P17700213826678581396.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247517.P9623815378169510703

`∏{e}[n+1, A101098(#+1)]`
-/

namespace A247517.P9623815378169510703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A101098 (Nat.factorization (f1 n) p + 1)

end

end A247517.P9623815378169510703

noncomputable section

/-- A247517: Card{(x,y,z,t,u): 1<=x,y,z,t,u<=n, gcd(x,y,z,t,u)=1, lcm(x,y,z,t,u)=n}.

Offset 1, canonical program `A247517.P9623815378169510703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247517 (n : ℕ) : ℤ :=
  A247517.P9623815378169510703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247681.P16071207118859784125

`A161705(A153400(n+1))`
-/

namespace A247681.P16071207118859784125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (A153400 (n + 1)).toNat

end

end A247681.P16071207118859784125

noncomputable section

/-- A247681: Odd nonprimes congruent to 1 modulo 9.

Offset 1, canonical program `A247681.P16071207118859784125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7283 terms. -/
def A247681 (n : ℕ) : ℤ :=
  A247681.P16071207118859784125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7283 terms. -/
def A247681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248156.P4251534176202152880

`2*A105810(n)-A097808(n)`
-/

namespace A248156.P4251534176202152880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105810 n - A097808 n

end

end A248156.P4251534176202152880

noncomputable section

/-- A248156: Inverse Riordan triangle of A106513: Riordan ((1 - 2*x^2 )/(1 + x), x/(1+x)).

Offset 0, canonical program `A248156.P4251534176202152880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A248156 (n : ℕ) : ℤ :=
  A248156.P4251534176202152880.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A248156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248170.P13308943850553376554

`sqrt(A246934(n+1))`
-/

namespace A248170.P13308943850553376554
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A246934 (n + 1) : ℝ)

end

end A248170.P13308943850553376554

noncomputable section

/-- A248170: Nonnegative integer whose square is the closest square to prime(n).

Offset 1, canonical program `A248170.P13308943850553376554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248170 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A248170.P13308943850553376554.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248367.P14823438803111161390

`∩[A156104(n+1)-2, A156104(n+1)]`
-/

namespace A248367.P14823438803111161390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248367.P14823438803111161390

noncomputable section

/-- A248367: Initial members of prime quadruples (n, n+2, n+36, n+38).

Offset 1, canonical program `A248367.P14823438803111161390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A248367 (n : ℕ) : ℤ :=
  (A248367.P14823438803111161390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A248367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248378.P15567605782667338999

`A066686(A247375(n+2))`
-/

namespace A248378.P15567605782667338999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066686 (A247375 (n + 2)).toNat

end

end A248378.P15567605782667338999

noncomputable section

/-- A248378: a(2n) = concatenation of n+1 with n+2, a(2n+1) = concatenation of n+2 with n+1.

Offset 0, canonical program `A248378.P15567605782667338999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A248378 (n : ℕ) : ℤ :=
  A248378.P15567605782667338999.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A248378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248574.P8867556678546182953

`A131577(n)+A116406(n)`
-/

namespace A248574.P8867556678546182953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A116406 n

end

end A248574.P8867556678546182953

noncomputable section

/-- A248574: a(n) = A027306(n) + A027306(n-1) for n > 0; a(0) = 1.

Offset 0, canonical program `A248574.P8867556678546182953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A248574 (n : ℕ) : ℤ :=
  A248574.P8867556678546182953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A248574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248667.P10690883735429551010

`record[A124782(n+2)]`
-/

namespace A248667.P10690883735429551010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124782 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248667.P10690883735429551010

noncomputable section

/-- A248667: Numbers k for which coefficients of the polynomial p(k,x) defined in Comments are relatively prime.

Offset 1, canonical program `A248667.P10690883735429551010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1470 terms. -/
def A248667 (n : ℕ) : ℤ :=
  A248667.P10690883735429551010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1470 terms. -/
def A248667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248808.P11257078540313990282

`A084346(n+1)-(A000267(n)+1)`
-/

namespace A248808.P11257078540313990282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084346 (n + 1) - (A000267 n + 1)

end

end A248808.P11257078540313990282

noncomputable section

/-- A248808: Irregular triangle read by rows: row n gives golden ratio base representation of Fibonacci number F_n.

Offset 1, canonical program `A248808.P11257078540313990282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A248808 (n : ℕ) : ℤ :=
  A248808.P11257078540313990282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A248808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249037.P6663428575612269827

`∑[A059841(A249036(n+1))]`
-/

namespace A249037.P6663428575612269827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A249036 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249037.P6663428575612269827

noncomputable section

/-- A249037: Number of even terms in first n terms of A249036.

Offset 1, canonical program `A249037.P6663428575612269827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249037 (n : ℕ) : ℤ :=
  A249037.P6663428575612269827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249038.P8201411425765856461

`∑[A249036(n+1)%2]`
-/

namespace A249038.P8201411425765856461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249036 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249038.P8201411425765856461

noncomputable section

/-- A249038: Number of odd terms in first n terms of A249036.

Offset 1, canonical program `A249038.P8201411425765856461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249038 (n : ℕ) : ℤ :=
  A249038.P8201411425765856461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249095.P14931875295036221106

`A007318(((n+1)²%A122800(n+1))%(n+1))`
-/

namespace A249095.P14931875295036221106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.tmod (Int.tmod ((n + 1) ^ 2 : ℤ) (A122800 (n + 1))) (n + 1 : ℤ)).toNat

end

end A249095.P14931875295036221106

noncomputable section

/-- A249095: Triangle read by rows: interleaving successive pairs of rows of Pascal's triangle.

Offset 0, canonical program `A249095.P14931875295036221106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249095 (n : ℕ) : ℤ :=
  A249095.P14931875295036221106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249250.P10036823079148551915

`A122016(A099375(n)+1+n)`
-/

namespace A249250.P10036823079148551915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122016 (A099375 n + 1 + (n : ℤ)).toNat

end

end A249250.P10036823079148551915

noncomputable section

/-- A249250: Triangular array: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

Offset 0, canonical program `A249250.P10036823079148551915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A249250 (n : ℕ) : ℤ :=
  A249250.P10036823079148551915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A249250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249566.P7379888211326183224

`eq[4, A182134(n+1)]+1`
-/

namespace A249566.P7379888211326183224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A249566.P7379888211326183224

noncomputable section

/-- A249566: Numbers n such that A182134(n) = 4, i.e., there exist exactly four primes p with prime(n) < p < prime(n)^(1+1/n).

Offset 1, canonical program `A249566.P7379888211326183224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A249566 (n : ℕ) : ℤ :=
  (A249566.P7379888211326183224.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A249566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249679.P425418324060059187

`A007504(eq[0, A007504(n)%3])`
-/

namespace A249679.P425418324060059187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249679.P425418324060059187

noncomputable section

/-- A249679: Terms of A007504 divisible by 3.

Offset 1, canonical program `A249679.P425418324060059187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249679 (n : ℕ) : ℤ :=
  A249679.P425418324060059187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249720.P520286733806873807

`2*A249719(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249720.P520286733806873807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249719 (n + 1)

end

end A249720.P520286733806873807

noncomputable section

/-- A249720: a(n) = 2 * A249719(n).

Offset 1, canonical program `A249720.P520286733806873807`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249719, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249720 (n : ℕ) : ℤ :=
  A249720.P520286733806873807.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249719, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A251635.P2288493939989281121

`xor(1, 1-A156319(n+1))`
-/

namespace A251635.P2288493939989281121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A156319 (n + 1))

end

end A251635.P2288493939989281121

noncomputable section

/-- A251635: Riordan array (1-2*x,x), inverse of Riordan array (1/(1-2*x), x) = A130321.

Offset 0, canonical program `A251635.P2288493939989281121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251635 (n : ℕ) : ℤ :=
  A251635.P2288493939989281121.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251708.P2113703706727638287

`A251707(n+1)-A001592(n)`
-/

namespace A251708.P2113703706727638287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251707 (n + 1) - A001592 n

end

end A251708.P2113703706727638287

noncomputable section

/-- A251708: 6-step Fibonacci sequence starting with (0,0,1,0,0,0).

Offset 0, canonical program `A251708.P2113703706727638287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251708 (n : ℕ) : ℤ :=
  A251708.P2113703706727638287.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251712.P6674266782435870888

`A251711(n+1)-A122189(n)`
-/

namespace A251712.P6674266782435870888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251711 (n + 1) - A122189 n

end

end A251712.P6674266782435870888

noncomputable section

/-- A251712: 7-step Fibonacci sequence starting with (0,0,0,1,0,0,0).

Offset 0, canonical program `A251712.P6674266782435870888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251712 (n : ℕ) : ℤ :=
  A251712.P6674266782435870888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251742.P7292228339883376358

`A251741(n+1)-A079262(n)`
-/

namespace A251742.P7292228339883376358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251741 (n + 1) - A079262 n

end

end A251742.P7292228339883376358

noncomputable section

/-- A251742: 8-step Fibonacci sequence starting with 0,0,0,1,0,0,0,0.

Offset 0, canonical program `A251742.P7292228339883376358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251742 (n : ℕ) : ℤ :=
  A251742.P7292228339883376358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251748.P1350453629097894107

`A251747(n+1)-A104144(n)`
-/

namespace A251748.P1350453629097894107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251747 (n + 1) - A104144 n

end

end A251748.P1350453629097894107

noncomputable section

/-- A251748: 9-step Fibonacci sequence starting with 0,0,0,0,0,1,0,0,0.

Offset 0, canonical program `A251748.P1350453629097894107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251748 (n : ℕ) : ℤ :=
  A251748.P1350453629097894107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253243.P16913495343360513967

`A123530(2*n)`
-/

namespace A253243.P16913495343360513967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123530 (2 * n)

end

end A253243.P16913495343360513967

noncomputable section

/-- A253243: Expansion of phi(-x^2) * psi(x^3) * chi(x^3) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A253243.P16913495343360513967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253243 (n : ℕ) : ℤ :=
  A253243.P16913495343360513967.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253243.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253742.P9928295030245127996

`9*A222993(n+1)`
-/

namespace A253742.P9928295030245127996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A222993 (n + 1)

end

end A253742.P9928295030245127996

noncomputable section

/-- A253742: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

Offset 1, canonical program `A253742.P9928295030245127996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A253742 (n : ℕ) : ℤ :=
  A253742.P9928295030245127996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A253742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253970.P10693384126688661835

`A000040(eq[1, A079998(A011974(n+1))])`
-/

namespace A253970.P10693384126688661835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A011974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253970.P10693384126688661835

noncomputable section

/-- A253970: Primes p such that p + nextprime(p) is divisible by 5.

Offset 1, canonical program `A253970.P10693384126688661835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A253970 (n : ℕ) : ℤ :=
  A253970.P10693384126688661835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A253970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253973.P8343327783554958465

`A000040(eq[9, dr(A011974(n+1))])`
-/

namespace A253973.P8343327783554958465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A011974 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A253973.P8343327783554958465

noncomputable section

/-- A253973: Primes p such that p + nextprime(p) is divisible by 9.

Offset 1, canonical program `A253973.P8343327783554958465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A253973 (n : ℕ) : ℤ :=
  A253973.P8343327783554958465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A253973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254147.P9685819170958152587

`A254146(n)+A001556(n)`
-/

namespace A254147.P9685819170958152587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254146 n + A001556 n

end

end A254147.P9685819170958152587

noncomputable section

/-- A254147: a(n) = 1*9^n + 2*8^n + 3*7^n + 4*6^n + 5*5^n + 6*4^n + 7*3^n + 8*2^n + 9*1^n.

Offset 0, canonical program `A254147.P9685819170958152587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A254147 (n : ℕ) : ℤ :=
  A254147.P9685819170958152587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A254147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254466.P1393730528840118816

`A254465(n)+A254464(n)`
-/

namespace A254466.P1393730528840118816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254465 n + A254464 n

end

end A254466.P1393730528840118816

noncomputable section

/-- A254466: a(n) = 56*2^n + 20*4^n + 35*3^n + 4*6^n + 10*5^n + 7^n + 84.

Offset 0, canonical program `A254466.P1393730528840118816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254466 (n : ℕ) : ℤ :=
  A254466.P1393730528840118816.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255226.P4162017514556172731

`A255225(n+1)+27`
-/

namespace A255226.P4162017514556172731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + 27

end

end A255226.P4162017514556172731

noncomputable section

/-- A255226: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

Offset 1, canonical program `A255226.P4162017514556172731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255226 (n : ℕ) : ℤ :=
  A255226.P4162017514556172731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255227.P9716855678432011050

`A255225(n+1)+66`
-/

namespace A255227.P9716855678432011050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + 66

end

end A255227.P9716855678432011050

noncomputable section

/-- A255227: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

Offset 1, canonical program `A255227.P9716855678432011050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255227 (n : ℕ) : ℤ :=
  A255227.P9716855678432011050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255764.P9577008536080855973

`∑[A255743(n+1)]`
-/

namespace A255764.P9577008536080855973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255764.P9577008536080855973

noncomputable section

/-- A255764: Partial sums of A255743.

Offset 1, canonical program `A255764.P9577008536080855973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255764 (n : ℕ) : ℤ :=
  A255764.P9577008536080855973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255765.P11578663823581225176

`∑[A255744(n+1)]`
-/

namespace A255765.P11578663823581225176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255765.P11578663823581225176

noncomputable section

/-- A255765: Partial sums of A255744.

Offset 1, canonical program `A255765.P11578663823581225176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255765 (n : ℕ) : ℤ :=
  A255765.P11578663823581225176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255887.P1885334426485951398

`round(1/A089309(p?[xor(1, n)+1]))`
-/

namespace A255887.P1885334426485951398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A089309 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ))

end

end A255887.P1885334426485951398

noncomputable section

/-- A255887: a(n) = 1 if the n-th prime is the sum of three squares, otherwise a(n) = 0.

Offset 1, canonical program `A255887.P1885334426485951398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A255887 (n : ℕ) : ℤ :=
  A255887.P1885334426485951398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A255887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255935.P3423858100455783659

`A007318(n)+A197870(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255935.P3423858100455783659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A197870 (n + 1)

end

end A255935.P3423858100455783659

noncomputable section

/-- A255935: Triangle read by rows: a(n) = Pascal's triangle A007318(n) + A197870(n+1).

Offset 0, canonical program `A255935.P3423858100455783659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197870, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255935 (n : ℕ) : ℤ :=
  A255935.P3423858100455783659.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197870, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255935.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256699.P8613917048069733691

`eq[2, gcd(6, A182321(n))]`
-/

namespace A256699.P8613917048069733691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A182321 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256699.P8613917048069733691

noncomputable section

/-- A256699: Numbers with negative triangular trace.

Offset 1, canonical program `A256699.P8613917048069733691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A256699 (n : ℕ) : ℤ :=
  (A256699.P8613917048069733691.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A256699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256701.P16267587922398115576

`A001057(A073122(n+1)+n)`
-/

namespace A256701.P16267587922398115576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A073122 (n + 1) + (n : ℤ)).toNat

end

end A256701.P16267587922398115576

noncomputable section

/-- A256701: Positive part of the minimal alternating binary representation of n (defined at A245596).

Offset 1, canonical program `A256701.P16267587922398115576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256701 (n : ℕ) : ℤ :=
  A256701.P16267587922398115576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257444.P1880484331838550698

`A255225(n+1)+A019428(A008574(n))`
-/

namespace A257444.P1880484331838550698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + A019428 (A008574 n).toNat

end

end A257444.P1880484331838550698

noncomputable section

/-- A257444: Number of (n+2) X (5+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 1 and no column sum 1.

Offset 1, canonical program `A257444.P1880484331838550698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A257444 (n : ℕ) : ℤ :=
  A257444.P1880484331838550698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A257444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257762.P13096121525645801001

`eq[A001223(n+1), A036263(n+1)]+1`
-/

namespace A257762.P13096121525645801001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257762.P13096121525645801001

noncomputable section

/-- A257762: Numbers n with property that A062234(n) = A062234(n+1).

Offset 1, canonical program `A257762.P13096121525645801001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3130 terms. -/
def A257762 (n : ℕ) : ℤ :=
  (A257762.P13096121525645801001.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3130 terms. -/
def A257762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258028.P5148954063235550607

`lt[A036263(n+2), A036263(n+1)]+1`
-/

namespace A258028.P5148954063235550607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A258028.P5148954063235550607

noncomputable section

/-- A258028: Numbers k such that D(prime(k), 3) > 0, where D( * , 3) = 3rd difference.

Offset 1, canonical program `A258028.P5148954063235550607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258028 (n : ℕ) : ℤ :=
  (A258028.P5148954063235550607.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258143.P7349125463556418444

`A116406(n+2)-1`
-/

namespace A258143.P7349125463556418444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 (n + 2) - 1

end

end A258143.P7349125463556418444

noncomputable section

/-- A258143: Row sums of A257241, Stifel's version of the arithmetical triangle.

Offset 1, canonical program `A258143.P7349125463556418444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258143 (n : ℕ) : ℤ :=
  A258143.P7349125463556418444.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258574.P13614693427218727265

`record[A260316(A037918(n+1))]`
-/

namespace A258574.P13614693427218727265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260316 (A037918 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258574.P13614693427218727265

noncomputable section

/-- A258574: Numbers n such that Fibonacci(n)+Lucas(n) is squarefree.

Offset 1, canonical program `A258574.P13614693427218727265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. -/
def A258574 (n : ℕ) : ℤ :=
  A258574.P13614693427218727265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. -/
def A258574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258632.P10910427713438509506

`2-A092695(n+2)+n`
-/

namespace A258632.P10910427713438509506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A092695 (n + 2) + (n : ℤ)

end

end A258632.P10910427713438509506

noncomputable section

/-- A258632: Number of length 1 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

Offset 1, canonical program `A258632.P10910427713438509506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A258632 (n : ℕ) : ℤ :=
  A258632.P10910427713438509506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A258632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258876.P5938820012190541234

`eq[8, dr(A162177(n+1))]`
-/

namespace A258876.P5938820012190541234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A162177 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258876.P5938820012190541234

noncomputable section

/-- A258876: Integers k such that both k and prime(k) have the same digital root.

Offset 1, canonical program `A258876.P5938820012190541234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1145 terms. -/
def A258876 (n : ℕ) : ℤ :=
  (A258876.P5938820012190541234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1145 terms. -/
def A258876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259627.P17875211191962559022

`∪[A259625(n+1), A259626(n+1)]`
-/

namespace A259627.P17875211191962559022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259627.P17875211191962559022

noncomputable section

/-- A259627: List of numbers L - 1, L, and L+1, where L = A000032, the Lucas numbers, sorted into increasing order and duplicates removed.

Offset 1, canonical program `A259627.P17875211191962559022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A259627 (n : ℕ) : ℤ :=
  (A259627.P17875211191962559022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A259627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259629.P5182096387328738795

`A077011(A080036(n+2))`
-/

namespace A259629.P5182096387328738795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (A080036 (n + 2)).toNat

end

end A259629.P5182096387328738795

noncomputable section

/-- A259629: "Near Primorial" numbers.

Offset 1, canonical program `A259629.P5182096387328738795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A259629 (n : ℕ) : ℤ :=
  A259629.P5182096387328738795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A259629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259912.P8957557712481011937

`A010121(n+3)*A013946(n+1)`
-/

namespace A259912.P8957557712481011937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (n + 3) * A013946 (n + 1)

end

end A259912.P8957557712481011937

noncomputable section

/-- A259912: Discriminant of the field of the number having constant continued fraction [n,n,n,...].

Offset 1, canonical program `A259912.P8957557712481011937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259912 (n : ℕ) : ℤ :=
  A259912.P8957557712481011937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260458.P8030264566610905607

`∏{p}[n+1, #]*A006519(∑[A004526(n+1)]+1)`
-/

namespace A260458.P8030264566610905607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A006519 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

end

end A260458.P8030264566610905607

noncomputable section

/-- A260458: Limit of gcd(PP(n) - k, PP(n) + k) as k -> oo, where PP(n) is the product of the first n primes.

Offset 1, canonical program `A260458.P8030264566610905607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A260458 (n : ℕ) : ℤ :=
  A260458.P8030264566610905607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A260458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260477.P5696824646865594787

`eq[A159918(n+2), A159918(n+3)]+2`
-/

namespace A260477.P5696824646865594787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A260477.P5696824646865594787

noncomputable section

/-- A260477: Numbers n where n^2 is an anagram of (n+1)^2 in base 2.

Offset 1, canonical program `A260477.P5696824646865594787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. -/
def A260477 (n : ℕ) : ℤ :=
  (A260477.P5696824646865594787.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. -/
def A260477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260706.P10237371612471039830

`A193832(n)+a(n-1)` with `a(0)=0`
-/

namespace A260706.P10237371612471039830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A193832 n + a (n - 1)

end

end A260706.P10237371612471039830

noncomputable section

/-- A260706: Row sums of A260672.

Offset 0, canonical program `A260706.P10237371612471039830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260706 (n : ℕ) : ℤ :=
  A260706.P10237371612471039830.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261314.P4144115782238317051

`A073846(a(n-1))` with `a(0)=34`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261314.P4144115782238317051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [34] fun n a =>
  A073846 (a (n - 1)).toNat

end

end A261314.P4144115782238317051

noncomputable section

/-- A261314: Rocket Sequence 34: a(0)=34, a(n) = A073846(a(n-1)).

Offset 0, canonical program `A261314.P4144115782238317051`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261314 (n : ℕ) : ℤ :=
  A261314.P4144115782238317051.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261314.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261366.P6028586896546902556

`(n*A001316(abs(1-n)))%(n+1)`
-/

namespace A261366.P6028586896546902556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A001316 |1 - (n : ℤ)|.toNat) (n + 1 : ℤ)

end

end A261366.P6028586896546902556

noncomputable section

/-- A261366: a(n) = number of even terms in row n of triangle A261363.

Offset 0, canonical program `A261366.P6028586896546902556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261366 (n : ℕ) : ℤ :=
  A261366.P6028586896546902556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261621.P1768049004719597412

`A073846(a(n-1))` with `a(0)=42`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261621.P1768049004719597412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [42] fun n a =>
  A073846 (a (n - 1)).toNat

end

end A261621.P1768049004719597412

noncomputable section

/-- A261621: Rocket Sequence 42: a(0) = 42, a(n) = A073846(a(n-1)).

Offset 0, canonical program `A261621.P1768049004719597412`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261621 (n : ℕ) : ℤ :=
  A261621.P1768049004719597412.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261621.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262149.P10407631004289077614

`A073846(a(n-1))` with `a(0)=50`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262149.P10407631004289077614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [50] fun n a =>
  A073846 (a (n - 1)).toNat

end

end A262149.P10407631004289077614

noncomputable section

/-- A262149: Rocket sequence 50: a(0)=50, a(n)=A073846(a(n-1)).

Offset 0, canonical program `A262149.P10407631004289077614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262149 (n : ℕ) : ℤ :=
  A262149.P10407631004289077614.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262149.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262354.P4317031643290507164

`gcd(A138404(n+1), A244509(n+1))`
-/

namespace A262354.P4317031643290507164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138404 (n + 1)) (A244509 (n + 1))

end

end A262354.P4317031643290507164

noncomputable section

/-- A262354: a(n) is the number of 2 X 2 matrices over Z_p with determinant in {1,-1} where p = prime(n).

Offset 1, canonical program `A262354.P4317031643290507164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262354 (n : ℕ) : ℤ :=
  (A262354.P4317031643290507164.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262530.P16964743584819314098

`A003056(∑[A337843(n)])`
-/

namespace A262530.P16964743584819314098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262530.P16964743584819314098

noncomputable section

/-- A262530: Numbers such that digits occur at most twice in decimal representation.

Offset 1, canonical program `A262530.P16964743584819314098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A262530 (n : ℕ) : ℤ :=
  A262530.P16964743584819314098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A262530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262543.P13500433892424337736

`2*(A141351(n)-1)`
-/

namespace A262543.P13500433892424337736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A141351 n - 1)

end

end A262543.P13500433892424337736

noncomputable section

/-- A262543: Number of rooted asymmetrical polyenoids of type U_n* having n edges.

Offset 1, canonical program `A262543.P13500433892424337736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A262543 (n : ℕ) : ℤ :=
  A262543.P13500433892424337736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A262543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263170.P6412543418219483663

`A007504(n+1)^3-A098999(n+1)`
-/

namespace A263170.P6412543418219483663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) ^ 3 - A098999 (n + 1)

end

end A263170.P6412543418219483663

noncomputable section

/-- A263170: a(n) = (Sum_{k=1..n} prime(k))^3 - (Sum_{k=1..n} prime(k)^3).

Offset 1, canonical program `A263170.P6412543418219483663`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263170 (n : ℕ) : ℤ :=
  A263170.P6412543418219483663.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A263559.P8053390118549948923

`A083186(n+1)%A007504(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263559.P8053390118549948923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083186 (n + 1)) (A007504 (n + 1))

end

end A263559.P8053390118549948923

noncomputable section

/-- A263559: a(n) = A083186(n) mod A007504(n).

Offset 1, canonical program `A263559.P8053390118549948923`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083186, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263559 (n : ℕ) : ℤ :=
  A263559.P8053390118549948923.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083186, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263559.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A264055.P6652115627495244377

`A264054(n+1)²`
-/

namespace A264055.P6652115627495244377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264054 (n + 1) ^ 2

end

end A264055.P6652115627495244377

noncomputable section

/-- A264055: Number of (n+1) X (3+1) arrays of permutations of 0..n*4+3 with each element having index change +-(.,.) 0,0 1,2 or 2,-2.

Offset 1, canonical program `A264055.P6652115627495244377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A264055 (n : ℕ) : ℤ :=
  A264055.P6652115627495244377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A264055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265640.P15353337970693603697

`∪[(n+1)², A229125(n+1)]`
-/

namespace A265640.P15353337970693603697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265640.P15353337970693603697

noncomputable section

/-- A265640: Prime factorization palindromes (see comments for definition).

Offset 1, canonical program `A265640.P15353337970693603697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265640 (n : ℕ) : ℤ :=
  (A265640.P15353337970693603697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265890.P7956634040998674457

`A099563(A265609(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265890.P7956634040998674457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A265609 n).toNat

end

end A265890.P7956634040998674457

noncomputable section

/-- A265890: Array read by ascending antidiagonals: A(n,k) = A099563(A265609(n,k)), with n as row >= 0, k as column >= 0; the most significant digit in the factorial base representation of rising factorial n^(k) = (n+k-1)!/(n-1)!.

Offset 0, canonical program `A265890.P7956634040998674457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099563, A265609, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265890 (n : ℕ) : ℤ :=
  A265890.P7956634040998674457.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099563, A265609, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265890.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266109.P2256653544982279907

`A087686(1+A188163(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266109.P2256653544982279907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (1 + A188163 (n + 1)).toNat

end

end A266109.P2256653544982279907

noncomputable section

/-- A266109: a(n) = A087686(1+A188163(n)); second column of A265901, second row of A265903.

Offset 1, canonical program `A266109.P2256653544982279907`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087686, A188163, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266109 (n : ℕ) : ℤ :=
  A266109.P2256653544982279907.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087686, A188163, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266109.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266348.P13843108852213909738

`A004001(n+2)-A266341(A053644(n+1))`
-/

namespace A266348.P13843108852213909738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 2) - A266341 (A053644 (n + 1)).toNat

end

end A266348.P13843108852213909738

noncomputable section

/-- A266348: a(1) = 1; for n > 1, a(n) = A004001(n+1) - A072376(n).

Offset 1, canonical program `A266348.P13843108852213909738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A266348 (n : ℕ) : ℤ :=
  A266348.P13843108852213909738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A266348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266666.P7815966118144532855

`(A137735(n)%2)²`
-/

namespace A266666.P7815966118144532855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137735 n) 2 ^ 2

end

end A266666.P7815966118144532855

noncomputable section

/-- A266666: Triangle read by rows giving successive states of cellular automaton generated by "Rule 51" initiated with a single ON (black) cell.

Offset 0, canonical program `A266666.P7815966118144532855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266666 (n : ℕ) : ℤ :=
  A266666.P7815966118144532855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266754.P13841617243074620179

`(1-A070886(n))^n`
-/

namespace A266754.P13841617243074620179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A070886 n) ^ n

end

end A266754.P13841617243074620179

noncomputable section

/-- A266754: Triangle read by rows giving successive states of cellular automaton generated by "Rule 165" initiated with a single ON (black) cell.

Offset 0, canonical program `A266754.P13841617243074620179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266754 (n : ℕ) : ℤ :=
  A266754.P13841617243074620179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267098.P10945196871462922271

`n-A267097(n+1)`
-/

namespace A267098.P10945196871462922271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A267097 (n + 1)

end

end A267098.P10945196871462922271

noncomputable section

/-- A267098: a(n) = number of 4k+3 primes among first n primes; least monotonic left inverse of A080148.

Offset 1, canonical program `A267098.P10945196871462922271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267098 (n : ℕ) : ℤ :=
  A267098.P10945196871462922271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267247.P4603199812040826951

`A000007(n)+record[A219843(n)]`
-/

namespace A267247.P4603199812040826951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267247.P4603199812040826951

noncomputable section

/-- A267247: Decimal representation of the n-th iteration of the "Rule 165" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267247.P4603199812040826951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267247 (n : ℕ) : ℤ :=
  A267247.P4603199812040826951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267272.P2548666978376878626

`A267034(n-C(n, C(2, n)))`
-/

namespace A267272.P2548666978376878626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 (n - Nat.choose n (Nat.choose 2 n))

end

end A267272.P2548666978376878626

noncomputable section

/-- A267272: Triangle read by rows giving successive states of cellular automaton generated by "Rule 117" initiated with a single ON (black) cell.

Offset 0, canonical program `A267272.P2548666978376878626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267272 (n : ℕ) : ℤ :=
  A267272.P2548666978376878626.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267609.P8591642076610455746

`record[or(1, A219843(n)/2)]`
-/

namespace A267609.P8591642076610455746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((A219843 n : ℚ) / 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267609.P8591642076610455746

noncomputable section

/-- A267609: Decimal representation of the n-th iteration of the "Rule 182" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267609.P8591642076610455746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267609 (n : ℕ) : ℤ :=
  A267609.P8591642076610455746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267673.P5790354617243130186

`(1-A075438(n))^n`
-/

namespace A267673.P5790354617243130186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A075438 n) ^ n

end

end A267673.P5790354617243130186

noncomputable section

/-- A267673: Triangle read by rows giving successive states of cellular automaton generated by "Rule 195" initiated with a single ON (black) cell.

Offset 0, canonical program `A267673.P5790354617243130186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267673 (n : ℕ) : ℤ :=
  A267673.P5790354617243130186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267687.P10819127517150831275

`and(1, A265359(n+1)+and(n, A000267(n+1)))`
-/

namespace A267687.P10819127517150831275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A265359 (n + 1) + Int.land (n : ℤ) (A000267 (n + 1)))

end

end A267687.P10819127517150831275

noncomputable section

/-- A267687: Triangle read by rows giving successive states of cellular automaton generated by "Rule 199" initiated with a single ON (black) cell.

Offset 0, canonical program `A267687.P10819127517150831275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267687 (n : ℕ) : ℤ :=
  A267687.P10819127517150831275.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267813.P16093651698011700365

`A267773(n+1)`
-/

namespace A267813.P16093651698011700365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267773 (n + 1)

end

end A267813.P16093651698011700365

noncomputable section

/-- A267813: Triangle read by rows giving successive states of cellular automaton generated by "Rule 219" initiated with a single ON (black) cell.

Offset 0, canonical program `A267813.P16093651698011700365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267813 (n : ℕ) : ℤ :=
  A267813.P16093651698011700365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267864.P5040665294763150187

`A225975(2*A054531(n+1))`
-/

namespace A267864.P5040665294763150187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (2 * A054531 (n + 1)).toNat

end

end A267864.P5040665294763150187

noncomputable section

/-- A267864: Denominator triangle for A267863: T(n, k) = denominator((n - 2*k)/(2*n)), n >= 1, k = 1, ..., n.

Offset 1, canonical program `A267864.P5040665294763150187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267864 (n : ℕ) : ℤ :=
  A267864.P5040665294763150187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268040.P2413962629400240570

`A099026(A061579(n))`
-/

namespace A268040.P2413962629400240570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 (A061579 n).toNat

end

end A268040.P2413962629400240570

noncomputable section

/-- A268040: Array y AND NOT x, read by antidiagonals.

Offset 0, canonical program `A268040.P2413962629400240570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A268040 (n : ℕ) : ℤ :=
  A268040.P2413962629400240570.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A268040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268128.P3789248238406704639

`(A000123(n)-A001316(n))/2`
-/

namespace A268128.P3789248238406704639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 n - A001316 n : ℚ) / 2

end

end A268128.P3789248238406704639

noncomputable section

/-- A268128: a(n) = (A000123(n) - A001316)/2.

Offset 0, canonical program `A268128.P3789248238406704639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268128 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268128.P3789248238406704639.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268217.P5610168321208635427

`A133196(n+1)/2*A119741(n+2)`
-/

namespace A268217.P5610168321208635427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133196 (n + 1) : ℚ) / 2 * (A119741 (n + 2) : ℚ)

end

end A268217.P5610168321208635427

noncomputable section

/-- A268217: Triangle read by rows: T(n,k) (n>=3, k=3..n) is the number of topologies t on n points having exactly k open sets such that t contains exactly one open set of size m for each m in {0,2,3,4,...,s,n} where s is the size of the largest proper open set in t.

Offset 3, canonical program `A268217.P5610168321208635427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A268217 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268217.P5610168321208635427.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A268217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268328.P13273210723323809643

`∩[A024675(n+1), A008706(n+2)]/5`
-/

namespace A268328.P13273210723323809643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 5

end

end A268328.P13273210723323809643

noncomputable section

/-- A268328: Integers of the form (prime(m) + prime(m+1))/10 for some m.

Offset 1, canonical program `A268328.P13273210723323809643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268328 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268328.P13273210723323809643.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268407.P14441244389955032681

`A109263(n+1)+A000108(n)`
-/

namespace A268407.P14441244389955032681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109263 (n + 1) + A000108 n

end

end A268407.P14441244389955032681

noncomputable section

/-- A268407: Number of North-East lattice paths that do not bounce off the diagonal y = x to the right.

Offset 0, canonical program `A268407.P14441244389955032681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A268407 (n : ℕ) : ℤ :=
  A268407.P14441244389955032681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A268407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268732.P7253333164487900378

`∑[A124315(n+1)]`
-/

namespace A268732.P7253333164487900378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268732.P7253333164487900378

noncomputable section

/-- A268732: Sum of the numbers of divisors of gcd(x,y) with x*y <= n.

Offset 1, canonical program `A268732.P7253333164487900378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268732 (n : ℕ) : ℤ :=
  A268732.P7253333164487900378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269027.P11463476603679121488

`A010060(A005351(n))`
-/

namespace A269027.P11463476603679121488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A005351 n).toNat

end

end A269027.P11463476603679121488

noncomputable section

/-- A269027: Parity of the number of 1's in A039724(n).

Offset 0, canonical program `A269027.P11463476603679121488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269027 (n : ℕ) : ℤ :=
  A269027.P11463476603679121488.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269027.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269244.P13071982595472903123

`∑{digits}[n^3, A004198(#)]`
-/

namespace A269244.P13071982595472903123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A004198 x).sum

end

end A269244.P13071982595472903123

noncomputable section

/-- A269244: Number of times the digit 4 appears in the decimal expansion of n^3.

Offset 0, canonical program `A269244.P13071982595472903123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269244 (n : ℕ) : ℤ :=
  A269244.P13071982595472903123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269528.P15804477055261084594

`and(1, A264596(2*A005351(n)))`
-/

namespace A269528.P15804477055261084594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A264596 (2 * A005351 n).toNat)

end

end A269528.P15804477055261084594

noncomputable section

/-- A269528: Parity of number of runs of 1's in negabinary representation of n.

Offset 0, canonical program `A269528.P15804477055261084594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A269528 (n : ℕ) : ℤ :=
  A269528.P15804477055261084594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A269528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269593.P15396111525171696352

`(A268922(n)²+4)/5^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269593.P15396111525171696352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268922 n ^ 2 + 4 : ℚ) / (5 ^ n : ℚ)

end

end A269593.P15396111525171696352

noncomputable section

/-- A269593: a(n) = (A268922(n)^2 + 4)/5^n, n >= 0.

Offset 0, canonical program `A269593.P15396111525171696352`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268922, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269593 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A269593.P15396111525171696352.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268922, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269593.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269850.P6987586977767832841

`1-A269849(n+1)+n`
-/

namespace A269850.P6987586977767832841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A269849 (n + 1) + (n : ℤ)

end

end A269850.P6987586977767832841

noncomputable section

/-- A269850: a(n) = number of integers k <= n for which prime(k+1)-prime(k) is a multiple of three.

Offset 1, canonical program `A269850.P6987586977767832841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269850 (n : ℕ) : ℤ :=
  A269850.P6987586977767832841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270106.P18066099386289680719

`∑[A000079(A056792(2*n))]`
-/

namespace A270106.P18066099386289680719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A056792 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P18066099386289680719

noncomputable section

/-- A270106: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 84", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270106.P18066099386289680719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A270106 (n : ℕ) : ℤ :=
  A270106.P18066099386289680719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A270106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270107.P28231735696589533

`Δ[A000079(A056792(2*n))]`
-/

namespace A270107.P28231735696589533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A056792 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P28231735696589533

noncomputable section

/-- A270107: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 84", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270107.P28231735696589533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4634 terms. -/
def A270107 (n : ℕ) : ℤ :=
  A270107.P28231735696589533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4634 terms. -/
def A270107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270191.P1713007079887465515

`A270189(2*(n+1))-C(2, n+2)`
-/

namespace A270191.P1713007079887465515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (2 * (n + 1)) - (Nat.choose 2 (n + 2) : ℤ)

end

end A270191.P1713007079887465515

noncomputable section

/-- A270191: Numbers n for which (prime(n+1)-prime(n)) mod 3 = 1.

Offset 1, canonical program `A270191.P1713007079887465515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A270191 (n : ℕ) : ℤ :=
  A270191.P1713007079887465515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A270191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270299.P14931526767613465720

`88*A236206(n+1)`
-/

namespace A270299.P14931526767613465720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  88 * A236206 (n + 1)

end

end A270299.P14931526767613465720

noncomputable section

/-- A270299: Numbers which are representable as a sum of eleven but no fewer consecutive nonnegative integers.

Offset 1, canonical program `A270299.P14931526767613465720`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A236206, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270299 (n : ℕ) : ℤ :=
  A270299.P14931526767613465720.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A236206, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270774.P9173378272536170861

`(A005706(n)-A194459(n))/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A270774.P9173378272536170861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005706 n - A194459 n : ℚ) / 5

end

end A270774.P9173378272536170861

noncomputable section

/-- A270774: a(n) = (A005706(n) - A194459(n))/5.

Offset 0, canonical program `A270774.P9173378272536170861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270774 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A270774.P9173378272536170861.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270774.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270803.P9719610015116545739

`and(A151666(ceil(n/2)), A251720(n+1))`
-/

namespace A270803.P9719610015116545739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151666 ⌈(n : ℚ) / 2⌉.toNat) (A251720 (n + 1))

end

end A270803.P9719610015116545739

noncomputable section

/-- A270803: Formal inverse of Thue-Morse sequence A010060.

Offset 0, canonical program `A270803.P9719610015116545739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270803 (n : ℕ) : ℤ :=
  A270803.P9719610015116545739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271043.P14262682976509013838

`p?[A067790(n+1)]`
-/

namespace A271043.P14262682976509013838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271043.P14262682976509013838

noncomputable section

/-- A271043: Primes p such that p and prime(p) end with the same digit.

Offset 1, canonical program `A271043.P14262682976509013838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A271043 (n : ℕ) : ℤ :=
  A271043.P14262682976509013838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A271043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271999.P7167033125042987843

`A018227(n+1)-A033999(A159461(n+1))`
-/

namespace A271999.P7167033125042987843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 1) - A033999 (A159461 (n + 1)).toNat

end

end A271999.P7167033125042987843

noncomputable section

/-- A271999: Halogen sequence: a(n) = A018227(n)-1.

Offset 1, canonical program `A271999.P7167033125042987843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271999 (n : ℕ) : ℤ :=
  A271999.P7167033125042987843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272099.P15079894349942222201

`A210038(comp[∑[n]]+1)`
-/

namespace A272099.P15079894349942222201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210038 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A272099.P15079894349942222201

noncomputable section

/-- A272099: Triangle read by rows, T(n,k) = C(n+1,k+1)*F([k-n, k-n-1], [-n-1], -1), where F is the generalized hypergeometric function, for n>=0 and 0<=k<=n.

Offset 0, canonical program `A272099.P15079894349942222201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A272099 (n : ℕ) : ℤ :=
  A272099.P15079894349942222201.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A272099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272206.P9676339612670176817

`round(A014285(n+1)/A007504(n+1))`
-/

namespace A272206.P9676339612670176817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014285 (n + 1) : ℚ) / (A007504 (n + 1) : ℚ))

end

end A272206.P9676339612670176817

noncomputable section

/-- A272206: Rounded barycenter of first n primes defined as a(n) = round(sum_{i=1..n}(i*prime(i)) / sum_{i=1..n}prime(i)).

Offset 1, canonical program `A272206.P9676339612670176817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272206 (n : ℕ) : ℤ :=
  A272206.P9676339612670176817.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272206.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272476.P12077626384774782464

`(n+3)%(A007918(n)+3)+n`
-/

namespace A272476.P12077626384774782464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A007918 n + 3) + (n : ℤ)

end

end A272476.P12077626384774782464

noncomputable section

/-- A272476: a(n) = n if n is prime, a(n) = 2*n+3 otherwise.

Offset 0, canonical program `A272476.P12077626384774782464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272476 (n : ℕ) : ℤ :=
  A272476.P12077626384774782464.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272863.P5446068681317337397

`A083551(n+1)/A001223(n+1)`
-/

namespace A272863.P5446068681317337397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083551 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ)

end

end A272863.P5446068681317337397

noncomputable section

/-- A272863: Numerator of the ratio of consecutive prime gaps.

Offset 1, canonical program `A272863.P5446068681317337397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A272863 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A272863.P5446068681317337397.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A272863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272900.P12902754051628015523

`A008967(4*n+5)`
-/

namespace A272900.P12902754051628015523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008967 (4 * n + 5)

end

end A272900.P12902754051628015523

noncomputable section

/-- A272900: Fibonacci-products fractal sequence.

Offset 1, canonical program `A272900.P12902754051628015523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A272900 (n : ℕ) : ℤ :=
  A272900.P12902754051628015523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A272900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272928.P5031657854594105114

`∑[floor(A160410(n)/3)]`
-/

namespace A272928.P5031657854594105114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160410 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272928.P5031657854594105114

noncomputable section

/-- A272928: Partial sums of A147562.

Offset 0, canonical program `A272928.P5031657854594105114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3808 terms. -/
def A272928 (n : ℕ) : ℤ :=
  A272928.P5031657854594105114.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3808 terms. -/
def A272928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273019.P13210225163452937065

`A005717(2*n+1)-A099252(n)`
-/

namespace A273019.P13210225163452937065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (2 * n + 1) - A099252 n

end

end A273019.P13210225163452937065

noncomputable section

/-- A273019: a(n) = hypergeom([-2*n-1, 1/2], [2], 4) + (2*n+1)*hypergeom([-n+1/2, -n], [2], 4).

Offset 0, canonical program `A273019.P13210225163452937065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A273019 (n : ℕ) : ℤ :=
  A273019.P13210225163452937065.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A273019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273129.P1966559582175092992

`1-A171587(n+1)`
-/

namespace A273129.P1966559582175092992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A171587 (n + 1)

end

end A273129.P1966559582175092992

noncomputable section

/-- A273129: The Rote-Fibonacci infinite sequence.

Offset 0, canonical program `A273129.P1966559582175092992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6765 terms. -/
def A273129 (n : ℕ) : ℤ :=
  A273129.P1966559582175092992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6765 terms. -/
def A273129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273577.P15347930587704899884

`A069894(n)-or(1, A102376(n))`
-/

namespace A273577.P15347930587704899884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n - Int.lor 1 (A102376 n)

end

end A273577.P15347930587704899884

noncomputable section

/-- A273577: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 803", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273577.P15347930587704899884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2919 terms. -/
def A273577 (n : ℕ) : ℤ :=
  A273577.P15347930587704899884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2919 terms. -/
def A273577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273677.P3661748519550536159

`abs(A081436(n)-A254667(n))`
-/

namespace A273677.P3661748519550536159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081436 n - A254667 n|

end

end A273677.P3661748519550536159

noncomputable section

/-- A273677: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273677.P3661748519550536159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2938 terms. -/
def A273677 (n : ℕ) : ℤ :=
  A273677.P3661748519550536159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2938 terms. -/
def A273677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274034.P6668103445242214746

`eq[0, A101436(n+1)]+1`
-/

namespace A274034.P6668103445242214746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274034.P6668103445242214746

noncomputable section

/-- A274034: Numbers whose exponents in their prime power factorizations are not primes.

Offset 1, canonical program `A274034.P6668103445242214746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6511 terms. -/
def A274034 (n : ℕ) : ℤ :=
  (A274034.P6668103445242214746.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6511 terms. -/
def A274034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274093.P3378925896752465146

`a(n-1)-A010816(n-1)` with `a(0)=0`
-/

namespace A274093.P3378925896752465146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A010816 (n - 1)

end

end A274093.P3378925896752465146

noncomputable section

/-- A274093: a(0)=0; thereafter (-1)^n*n appears n times.

Offset 0, canonical program `A274093.P3378925896752465146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274093 (n : ℕ) : ℤ :=
  A274093.P3378925896752465146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274141.P9075115195362516254

`eq[1, A294619(A336551(n+1))]+1`
-/

namespace A274141.P9075115195362516254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 (A336551 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274141.P9075115195362516254

noncomputable section

/-- A274141: Positive numbers divisible by 3^3 or by the square of some other prime.

Offset 1, canonical program `A274141.P9075115195362516254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274141 (n : ℕ) : ℤ :=
  (A274141.P9075115195362516254.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274225.P17980933963953125294

`A001223(n+1)/A057467(n+1)`
-/

namespace A274225.P17980933963953125294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) / (A057467 (n + 1) : ℚ)

end

end A274225.P17980933963953125294

noncomputable section

/-- A274225: Denominator of the ratio of consecutive prime gaps.

Offset 1, canonical program `A274225.P17980933963953125294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A274225 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A274225.P17980933963953125294.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A274225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274465.P13282728255068810620

`∩[A072669(n+1), A145471(n+1)]`
-/

namespace A274465.P13282728255068810620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274465.P13282728255068810620

noncomputable section

/-- A274465: Primes which are the sum of cousin prime pairs - 1.

Offset 1, canonical program `A274465.P13282728255068810620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A274465 (n : ℕ) : ℤ :=
  (A274465.P13282728255068810620.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A274465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274701.P11955321872613421849

`A080513(A067731(n))`
-/

namespace A274701.P11955321872613421849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A067731 n).toNat

end

end A274701.P11955321872613421849

noncomputable section

/-- A274701: First differences of A259280.

Offset 1, canonical program `A274701.P11955321872613421849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274701 (n : ℕ) : ℤ :=
  A274701.P11955321872613421849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275015.P13420665391760099934

`floor(log2(gcd(15, A120027(n))))`
-/

namespace A275015.P13420665391760099934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Int.gcd 15 (A120027 n))

end

end A275015.P13420665391760099934

noncomputable section

/-- A275015: Number of neighbors of each new term in an isosceles triangle read by rows.

Offset 1, canonical program `A275015.P13420665391760099934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A275015 (n : ℕ) : ℤ :=
  (A275015.P13420665391760099934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A275015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275206.P3060918531879445442

`Δ[(4-6/(n+1))*a(n-1)]%A007595(n+1)` with `a(0)=1`
-/

namespace A275206.P3060918531879445442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) (A007595 (n + 1))

end

end A275206.P3060918531879445442

noncomputable section

/-- A275206: Expansion of (A(x)^2 - A(x^2))/2 where A(x) = A000108(x) - 1.

Offset 0, canonical program `A275206.P3060918531879445442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A275206 (n : ℕ) : ℤ :=
  A275206.P3060918531879445442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A275206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275222.P2051820910365035933

`A196630(n+2)-A057428(n)`
-/

namespace A275222.P2051820910365035933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196630 (n + 2) - A057428 n

end

end A275222.P2051820910365035933

noncomputable section

/-- A275222: Number of n X 2 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,0) and new values introduced in order 0..2.

Offset 1, canonical program `A275222.P2051820910365035933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A275222 (n : ℕ) : ℤ :=
  A275222.P2051820910365035933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A275222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275289.P10625359432271309099

`A026165(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A275289.P10625359432271309099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A026165 n + a (n - 2)

end

end A275289.P10625359432271309099

noncomputable section

/-- A275289: Number of set partitions of [n] with symmetric block size list of length three.

Offset 3, canonical program `A275289.P10625359432271309099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A275289 (n : ℕ) : ℤ :=
  A275289.P10625359432271309099.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A275289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276000.P16396236457092608332

`A184985(n+1)+A175856(n+1)`
-/

namespace A276000.P16396236457092608332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (n + 1) + A175856 (n + 1)

end

end A276000.P16396236457092608332

noncomputable section

/-- A276000: Least k such that n! divides phi(k!) (k > 0).

Offset 1, canonical program `A276000.P16396236457092608332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276000 (n : ℕ) : ℤ :=
  A276000.P16396236457092608332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276134.P17715433807570833748

`∑{digits}[A007091(n), A192085(A192085(#))]`
-/

namespace A276134.P17715433807570833748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A192085 (A192085 x).toNat).sum

end

end A276134.P17715433807570833748

noncomputable section

/-- A276134: a(5n) = a(n), a(5n+1) = a(5n+2) = a(5n+3) = a(5n+4) = a(n) + 1, a(0) = 0.

Offset 0, canonical program `A276134.P17715433807570833748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276134 (n : ℕ) : ℤ :=
  A276134.P17715433807570833748.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276150.P11723566750596417578

`1+a(n-A260188(n))` with `a(0)=0`
-/

namespace A276150.P11723566750596417578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a ((n : ℤ) - A260188 n).toNat

end

end A276150.P11723566750596417578

noncomputable section

/-- A276150: Sum of digits when n is written in primorial base (A049345); minimal number of primorials (A002110) that add to n.

Offset 0, canonical program `A276150.P11723566750596417578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276150 (n : ℕ) : ℤ :=
  (A276150.P11723566750596417578.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276307.P8997433821484487146

`p?[floor(A267891(n+1)/2)]`
-/

namespace A276307.P8997433821484487146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267891 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276307.P8997433821484487146

noncomputable section

/-- A276307: Primes p such that d(p*(2p+1)) = 16 where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A276307.P8997433821484487146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 716 terms. -/
def A276307 (n : ℕ) : ℤ :=
  A276307.P8997433821484487146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 716 terms. -/
def A276307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276355.P12182083431334526179

`Δ[A007504(A028505(n+1)-A038822(n))]`
-/

namespace A276355.P12182083431334526179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A028505 (n + 1) - A038822 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276355.P12182083431334526179

noncomputable section

/-- A276355: Sum of primes between 100*n and 100*n + 99.

Offset 0, canonical program `A276355.P12182083431334526179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A276355 (n : ℕ) : ℤ :=
  A276355.P12182083431334526179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A276355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276389.P3834930374717209442

`eq[0, A027868(n)-A090621(n)]`
-/

namespace A276389.P3834930374717209442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n - A090621 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276389.P3834930374717209442

noncomputable section

/-- A276389: Numbers n such that n! ends in the same number of 0's in both base 10 and base 16.

Offset 1, canonical program `A276389.P3834930374717209442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3069 terms. -/
def A276389 (n : ℕ) : ℤ :=
  (A276389.P3834930374717209442.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3069 terms. -/
def A276389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276621.P8554351487063663393

`∑[char[A261232(n)]]`
-/

namespace A276621.P8554351487063663393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261232 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276621.P8554351487063663393

noncomputable section

/-- A276621: After a(0)=0, each n occurs A261234(n-1) times.

Offset 0, canonical program `A276621.P8554351487063663393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6251 terms. -/
def A276621 (n : ℕ) : ℤ :=
  (A276621.P8554351487063663393.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6251 terms. -/
def A276621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276736.P6839819516574191289

`lcm(n+1, A007429(n+1))/(n+1)`
-/

namespace A276736.P6839819516574191289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A007429 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A276736.P6839819516574191289

noncomputable section

/-- A276736: a(n) = numerator of Sum_{d|n} tau(d)/d.

Offset 1, canonical program `A276736.P6839819516574191289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276736 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276736.P6839819516574191289.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276737.P10584001989765576024

`(n+1)/gcd(n+1, A007429(n+1))`
-/

namespace A276737.P10584001989765576024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A007429 (n + 1)) : ℚ)

end

end A276737.P10584001989765576024

noncomputable section

/-- A276737: a(n) = denominator of Sum_{d|n} tau(d)/d.

Offset 1, canonical program `A276737.P10584001989765576024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276737 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276737.P10584001989765576024.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276879.P10970740228062955951

`A188042(A188298(2*n+1)+n)`
-/

namespace A276879.P10970740228062955951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188042 (A188298 (2 * n + 1) + (n : ℤ)).toNat

end

end A276879.P10970740228062955951

noncomputable section

/-- A276879: Sums-complement of the Beatty sequence for 1 + sqrt(2).

Offset 1, canonical program `A276879.P10970740228062955951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A276879 (n : ℕ) : ℤ :=
  A276879.P10970740228062955951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A276879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277513.P97478074551810804

`A013609(eq[A035214(n), A132728(n)])`
-/

namespace A277513.P97478074551810804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A277513.P97478074551810804

noncomputable section

/-- A277513: Irregular triangle read by rows: T(n,k) is the number of integers greater than 4 such that they have n trits and 2k+1 (k>=1) nonzero trits in their balanced ternary representation, with n>=3 and 1<=k<=(j-1)/2.

Offset 3, canonical program `A277513.P97478074551810804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4894 terms. -/
def A277513 (n : ℕ) : ℤ :=
  A277513.P97478074551810804.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4894 terms. -/
def A277513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277551.P2486715914550172884

`record[A000217(A277548(n+1))%A277548(n+1)]`
-/

namespace A277551.P2486715914550172884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A277548 (n + 1)).toNat) (A277548 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277551.P2486715914550172884

noncomputable section

/-- A277551: Numbers k such that k/5^m == 2 (mod 5), where 5^m is the greatest power of 5 that divides k.

Offset 1, canonical program `A277551.P2486715914550172884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3750 terms. -/
def A277551 (n : ℕ) : ℤ :=
  A277551.P2486715914550172884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3750 terms. -/
def A277551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277627.P6584579301111323018

`C(A181940(n), A025581(A080036(n)))`
-/

namespace A277627.P6584579301111323018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A181940 n).toNat (A025581 (A080036 n).toNat).toNat

end

end A277627.P6584579301111323018

noncomputable section

/-- A277627: Square array read by antidiagonals downwards: T(n,k), n>=0, k>=0, in which column 0 is equal to A057427: 0, 1, 1, 1, ..., and for k > 0 column k lists two zeros followed by the partial sums of column k-1.

Offset 0, canonical program `A277627.P6584579301111323018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A277627 (n : ℕ) : ℤ :=
  (A277627.P6584579301111323018.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A277627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278907.P17364321886829146193

`gcd(C(2, 2*n+1), Δ[A257531(n+1)])`
-/

namespace A278907.P17364321886829146193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (2 * n + 1) : ℤ) (f1 (n + 1) - f1 n)

end

end A278907.P17364321886829146193

noncomputable section

/-- A278907: a(n) = floor((n*2^(n+1)+2)/(2*n-(-1)^n+3)) - floor((n*2^(n+1)-2)/(2*n-(-1)^n+3)).

Offset 0, canonical program `A278907.P17364321886829146193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278907 (n : ℕ) : ℤ :=
  (A278907.P17364321886829146193.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279071.P17899804211645114015

`∪[A023162(n+1), A023173(n+1)]`
-/

namespace A279071.P17899804211645114015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279071.P17899804211645114015

noncomputable section

/-- A279071: Numbers k such that Fibonacci(k) == +-1 (mod k).

Offset 1, canonical program `A279071.P17899804211645114015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279071 (n : ℕ) : ℤ :=
  (A279071.P17899804211645114015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279209.P393407883981076372

`A090996(A035327(n))`
-/

namespace A279209.P393407883981076372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A035327 n).toNat

end

end A279209.P393407883981076372

noncomputable section

/-- A279209: Length of first run of 0's in binary expansion of n.

Offset 0, canonical program `A279209.P393407883981076372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279209 (n : ℕ) : ℤ :=
  A279209.P393407883981076372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279210.P556875708574037845

`A090996(A087734(n))`
-/

namespace A279210.P556875708574037845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A087734 n).toNat

end

end A279210.P556875708574037845

noncomputable section

/-- A279210: Length of second run of 1's in binary expansion of n.

Offset 0, canonical program `A279210.P556875708574037845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279210 (n : ℕ) : ℤ :=
  A279210.P556875708574037845.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279984.P16893894406181977355

`A278029(A000040(n+1))`
-/

namespace A279984.P16893894406181977355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (A000040 (n + 1)).toNat

end

end A279984.P16893894406181977355

noncomputable section

/-- A279984: Positions of the prime numbers in the sequence of numbers that are not perfect powers (A007916).

Offset 1, canonical program `A279984.P16893894406181977355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A279984 (n : ℕ) : ℤ :=
  A279984.P16893894406181977355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A279984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280076.P4901522912243900716

`(A162177(n+1)+1+n)²`
-/

namespace A280076.P4901522912243900716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162177 (n + 1) + 1 + (n : ℤ)) ^ 2

end

end A280076.P4901522912243900716

noncomputable section

/-- A280076: Numbers n such that Sum_{d|n} tau(d) = Product_{d|n} tau(d).

Offset 1, canonical program `A280076.P4901522912243900716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280076 (n : ℕ) : ℤ :=
  A280076.P4901522912243900716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280077.P17597455334426451579

`∑[A007429(n+1)]`
-/

namespace A280077.P17597455334426451579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280077.P17597455334426451579

noncomputable section

/-- A280077: Partial sums of A007429 (Sum_{d|n} sigma(d)).

Offset 1, canonical program `A280077.P17597455334426451579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280077 (n : ℕ) : ℤ :=
  A280077.P17597455334426451579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280085.P11023069278118658947

`∑[A206032(n+1)]`
-/

namespace A280085.P11023069278118658947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280085.P11023069278118658947

noncomputable section

/-- A280085: Partial sums of A206032 (Product_{d|n} sigma(d)).

Offset 1, canonical program `A280085.P11023069278118658947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A280085 (n : ℕ) : ℤ :=
  A280085.P11023069278118658947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A280085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280891.P1764150059183000184

`A000245(n)+∑[A026012(n)]`
-/

namespace A280891.P1764150059183000184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280891.P1764150059183000184

noncomputable section

/-- A280891: Number of certain noncrossing set partitions.

Offset 1, canonical program `A280891.P1764150059183000184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A280891 (n : ℕ) : ℤ :=
  A280891.P1764150059183000184.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A280891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280998.P3756375050482110601

`eq[2, ∏{e}[A005811(n)², #]]`
-/

namespace A280998.P3756375050482110601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280998.P3756375050482110601

noncomputable section

/-- A280998: Numbers with a prime number of 1's in their binary reflected Gray code representation.

Offset 1, canonical program `A280998.P3756375050482110601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4049 terms. -/
def A280998 (n : ℕ) : ℤ :=
  (A280998.P3756375050482110601.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4049 terms. -/
def A280998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282004.P11991646138547053131

`A277866(n)+A134451(n)`
-/

namespace A282004.P11991646138547053131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277866 n + A134451 n

end

end A282004.P11991646138547053131

noncomputable section

/-- A282004: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 413", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282004.P11991646138547053131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A282004 (n : ℕ) : ℤ :=
  A282004.P11991646138547053131.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A282004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282800.P6996715877617918698

`A282796(n)-A199969(n+1)+n`
-/

namespace A282800.P6996715877617918698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282796 n - A199969 (n + 1) + (n : ℤ)

end

end A282800.P6996715877617918698

noncomputable section

/-- A282800: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 507", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282800.P6996715877617918698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282800 (n : ℕ) : ℤ :=
  A282800.P6996715877617918698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282807.P18360293587331063432

`A095121(n)+1-A282388(n)`
-/

namespace A282807.P18360293587331063432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A282388 n)

end

end A282807.P18360293587331063432

noncomputable section

/-- A282807: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282807.P18360293587331063432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A282807 (n : ℕ) : ℤ :=
  A282807.P18360293587331063432.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A282807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283317.P17118573524570604165

`val(A194459(n), 5)%2`
-/

namespace A283317.P17118573524570604165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A194459 n).toNat 5 % 2

end

end A283317.P17118573524570604165

noncomputable section

/-- A283317: Image of 0 under repeated applications of the morphism 0 -> 0,0,0,0,1, 1 -> 1,1,1,1,0.

Offset 1, canonical program `A283317.P17118573524570604165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283317 (n : ℕ) : ℤ :=
  (A283317.P17118573524570604165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283800.P14027803973692212953

`eq[1, abs(A065363(n))]`
-/

namespace A283800.P14027803973692212953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065363 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283800.P14027803973692212953

noncomputable section

/-- A283800: Numbers such that the sum of trits of its balanced ternary representation is 1 or -1.

Offset 1, canonical program `A283800.P14027803973692212953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2920 terms. -/
def A283800 (n : ℕ) : ℤ :=
  (A283800.P14027803973692212953.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2920 terms. -/
def A283800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284023.P9449801284099528945

`A126646(n)-A273973(n)%A126646(n)`
-/

namespace A284023.P9449801284099528945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A273973 n) (A126646 n)

end

end A284023.P9449801284099528945

noncomputable section

/-- A284023: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 779", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A284023.P9449801284099528945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A284023 (n : ℕ) : ℤ :=
  A284023.P9449801284099528945.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A284023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284104.P13760200148477607299

`A078182((n+1)/(n+1-and(n, n+1)))`
-/

namespace A284104.P13760200148477607299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))).toNat

end

end A284104.P13760200148477607299

noncomputable section

/-- A284104: a(n) = Sum_{d|n, d == 5 (mod 6)} d.

Offset 1, canonical program `A284104.P13760200148477607299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284104 (n : ℕ) : ℤ :=
  A284104.P13760200148477607299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284128.P5800027111026948998

`A090988(n+1)+A084468(n+1)`
-/

namespace A284128.P5800027111026948998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1) + A084468 (n + 1)

end

end A284128.P5800027111026948998

noncomputable section

/-- A284128: Hosoya triangle of Fermat Lucas type, read by rows.

Offset 9, canonical program `A284128.P5800027111026948998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284128 (n : ℕ) : ℤ :=
  A284128.P5800027111026948998.a (n - 9)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284677.P16819107862571488426

`A230901((2*n+1)%(n+3))`
-/

namespace A284677.P16819107862571488426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230901 ((2 * n + 1) % (n + 3))

end

end A284677.P16819107862571488426

noncomputable section

/-- A284677: 1-limiting word of the morphism 0->1, 1-> 0111.

Offset 1, canonical program `A284677.P16819107862571488426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284677 (n : ℕ) : ℤ :=
  A284677.P16819107862571488426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284778.P4992790969954017834

`Δ[A187306(n)+n%2]`
-/

namespace A284778.P4992790969954017834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187306 n + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284778.P4992790969954017834

noncomputable section

/-- A284778: Number of self-avoiding planar walks of length n+1 starting at (0,0), ending at (n,0), remaining in the first quadrant and using steps (0,1), (1,0), (1,1), (-1,1), and (1,-1) with the restriction that (0,1) is never used below the diagonal and (1,0) is never used above the diagonal.

Offset 0, canonical program `A284778.P4992790969954017834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A284778 (n : ℕ) : ℤ :=
  A284778.P4992790969954017834.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A284778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284852.P8629922077169779044

`a(n-1)+A284505(n)+1` with `a(0)=1`
-/

namespace A284852.P8629922077169779044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A284505 n + 1)

end

end A284852.P8629922077169779044

noncomputable section

/-- A284852: Positions of 0 in A284851; complement of A284853.

Offset 1, canonical program `A284852.P8629922077169779044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284852 (n : ℕ) : ℤ :=
  A284852.P8629922077169779044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284963.P4374081168494453790

`A284921(n+1)+A256077(n+1)`
-/

namespace A284963.P4374081168494453790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1) + A256077 (n + 1)

end

end A284963.P4374081168494453790

noncomputable section

/-- A284963: Numbers with digits 3 and 8 only.

Offset 1, canonical program `A284963.P4374081168494453790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284963 (n : ℕ) : ℤ :=
  A284963.P4374081168494453790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285117.P11572243704474235123

`2*A285116(n)-A007318(n)`
-/

namespace A285117.P11572243704474235123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285116 n - A007318 n

end

end A285117.P11572243704474235123

noncomputable section

/-- A285117: Triangle read by rows: T(0,n) = T(n,n) = 1; and for n > 0, 0 < k < n, T(n,k) = C(n-1,k-1) XOR C(n-1,k), where C(n,k) is binomial coefficient (A007318) and XOR is bitwise-XOR (A003987).

Offset 0, canonical program `A285117.P11572243704474235123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285117 (n : ℕ) : ℤ :=
  A285117.P11572243704474235123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285118.P16406240334695016361

`A007318(n)-A285116(n)`
-/

namespace A285118.P16406240334695016361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A285116 n

end

end A285118.P16406240334695016361

noncomputable section

/-- A285118: Triangle read by rows: T(0,n) = T(n,n) = 0; and for n > 0, 0 < k < n, T(n,k) = C(n-1,k-1) AND C(n-1,k), where C(n,k) is binomial coefficient (A007318) & AND is bitwise-AND (A004198).

Offset 0, canonical program `A285118.P16406240334695016361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285118 (n : ℕ) : ℤ :=
  A285118.P16406240334695016361.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285196.P9246399367700703755

`and(1, A081603(A001057(n)+n))`
-/

namespace A285196.P9246399367700703755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A081603 (A001057 n + (n : ℤ)).toNat)

end

end A285196.P9246399367700703755

noncomputable section

/-- A285196: If A_k denotes the first 2*3^k terms, then A_0 = 01, A_{k+1} = A_k A_k B_k, where B_k is the reversal of A_k.

Offset 0, canonical program `A285196.P9246399367700703755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285196 (n : ℕ) : ℤ :=
  A285196.P9246399367700703755.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285301.P15481445537404747309

`floor(Δ[A284371(n+1)/2])`
-/

namespace A285301.P15481445537404747309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284371 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A285301.P15481445537404747309

noncomputable section

/-- A285301: Fixed point of the morphism 0 -> 10, 1 -> 1000.

Offset 1, canonical program `A285301.P15481445537404747309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285301 (n : ℕ) : ℤ :=
  A285301.P15481445537404747309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285347.P10878793886673022585

`A284907(n+1)-1`
-/

namespace A285347.P10878793886673022585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 1) - 1

end

end A285347.P10878793886673022585

noncomputable section

/-- A285347: Positions of 1 in A285345; complement of A285346.

Offset 1, canonical program `A285347.P10878793886673022585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285347 (n : ℕ) : ℤ :=
  A285347.P10878793886673022585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285773.P10275403914654428335

`lcm(A056594(n), A285436(n))`
-/

namespace A285773.P10275403914654428335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A285436 n)

end

end A285773.P10275403914654428335

noncomputable section

/-- A285773: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 84", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285773.P10275403914654428335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A285773 (n : ℕ) : ℤ :=
  (A285773.P10275403914654428335.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A285773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285786.P15997609782870965771

`A028310(A285269(n))`
-/

namespace A285786.P15997609782870965771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A285269 n).toNat

end

end A285786.P15997609782870965771

noncomputable section

/-- A285786: Number of primes p with 2(n-1)^2 < p <= 2n^2.

Offset 1, canonical program `A285786.P15997609782870965771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285786 (n : ℕ) : ℤ :=
  A285786.P15997609782870965771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285957.P3290287961644241447

`A010060(eq[1, A127254(2*n)])`
-/

namespace A285957.P3290287961644241447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285957.P3290287961644241447

noncomputable section

/-- A285957: {01->0}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285957.P3290287961644241447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285957 (n : ℕ) : ℤ :=
  A285957.P3290287961644241447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285966.P18243699786434963245

`A010060(lt[0, A127254(n)])`
-/

namespace A285966.P18243699786434963245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A285966.P18243699786434963245

noncomputable section

/-- A285966: {11->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285966.P18243699786434963245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285966 (n : ℕ) : ℤ :=
  A285966.P18243699786434963245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285976.P3167710353206823821

`record[xor(n+1, A010060(n))]+n`
-/

namespace A285976.P3167710353206823821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A010060 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A285976.P3167710353206823821

noncomputable section

/-- A285976: Positions of 0 in A285975; complement of A285977.

Offset 1, canonical program `A285976.P3167710353206823821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285976 (n : ℕ) : ℤ :=
  A285976.P3167710353206823821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286098.P12308120415836337446

`A057944(n)+A004198(n)`
-/

namespace A286098.P12308120415836337446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004198 n

end

end A286098.P12308120415836337446

noncomputable section

/-- A286098: Square array read by antidiagonals: A(n,k) = T(n AND k, n OR k), where T(n,k) is sequence A001477 considered as a two-dimensional table, AND is bitwise-and (A004198) and OR is bitwise-or (A003986).

Offset 0, canonical program `A286098.P12308120415836337446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286098 (n : ℕ) : ℤ :=
  A286098.P12308120415836337446.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286099.P16724800913237782090

`A099026(n)+n`
-/

namespace A286099.P16724800913237782090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 n + (n : ℤ)

end

end A286099.P16724800913237782090

noncomputable section

/-- A286099: Square array read by antidiagonals: A(n,k) = T(n OR k, n AND k), where T(n,k) is sequence A001477 considered as a two-dimensional table, AND is bitwise-and (A004198) and OR is bitwise-or (A003986).

Offset 0, canonical program `A286099.P16724800913237782090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286099 (n : ℕ) : ℤ :=
  A286099.P16724800913237782090.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286100.P6392366946507749071

`A027656(A157458(n))`
-/

namespace A286100.P6392366946507749071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A157458 n).toNat

end

end A286100.P6392366946507749071

noncomputable section

/-- A286100: Square array A(n,k): If n = k, then A(n,k) = n, otherwise 0, read by antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

Offset 1, canonical program `A286100.P6392366946507749071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286100 (n : ℕ) : ℤ :=
  A286100.P6392366946507749071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286147.P2874123018124836590

`A286145(A061579(n))`
-/

namespace A286147.P2874123018124836590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286145 (A061579 n).toNat

end

end A286147.P2874123018124836590

noncomputable section

/-- A286147: Square array read by antidiagonals: A(n,k) = T(n XOR k, n), where T(n,k) is sequence A001477 considered as a two-dimensional table, and XOR is bitwise-xor (A003987).

Offset 0, canonical program `A286147.P2874123018124836590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286147 (n : ℕ) : ℤ :=
  A286147.P2874123018124836590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286298.P9111463687981062260

`A005811(n)+A070939(n)-1`
-/

namespace A286298.P9111463687981062260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n + (A070939 n - 1)

end

end A286298.P9111463687981062260

noncomputable section

/-- A286298: a(0) = 0, a(1) = 1; thereafter, a(2n) = a(n) + 1 + (n mod 2), a(2n+1) = a(n) + 2 - (n mod 2).

Offset 0, canonical program `A286298.P9111463687981062260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286298 (n : ℕ) : ℤ :=
  A286298.P9111463687981062260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286331.P2881170633672960388

`A022166(n)²*A002884(A002262(n))`
-/

namespace A286331.P2881170633672960388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n ^ 2 * A002884 (A002262 n).toNat

end

end A286331.P2881170633672960388

noncomputable section

/-- A286331: Triangle read by rows: T(n,k) is the number of n X n matrices of rank k over F_2.

Offset 0, canonical program `A286331.P2881170633672960388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A286331 (n : ℕ) : ℤ :=
  A286331.P2881170633672960388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A286331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286462.P12197192580777352399

`1/2*(2+(A051064(n+1)+A089309(n+1))²-A051064(n+1)-3*A089309(n+1))`
-/

namespace A286462.P12197192580777352399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A051064 (n + 1) + A089309 (n + 1)) ^ 2 - A051064 (n + 1) - 3 * A089309 (n + 1) : ℚ)

end

end A286462.P12197192580777352399

noncomputable section

/-- A286462: Compound filter (3-adic valuation & the length of rightmost run of 1's in base-2): a(n) = P(A051064(n), A089309(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286462.P12197192580777352399`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286462 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286462.P12197192580777352399.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286576.P18236901123644785812

`A001316(n)%A048883(C(and(n, 3*n), n))`
-/

namespace A286576.P18236901123644785812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 n) (A048883 (Nat.choose (Nat.land n (3 * n)) n))

end

end A286576.P18236901123644785812

noncomputable section

/-- A286576: a(n) = A132971(n) mod 3.

Offset 0, canonical program `A286576.P18236901123644785812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286576 (n : ℕ) : ℤ :=
  A286576.P18236901123644785812.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286634.P1089138795719838063

`ratio[A083550(n+1)]*A285851(n+1)`
-/

namespace A286634.P1089138795719838063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083550 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A285851 (n + 1) : ℚ)

end

end A286634.P1089138795719838063

noncomputable section

/-- A286634: Numerator of the ratio of alternate consecutive prime gaps: Numerator ((prime(n + 3) - prime(n + 2))/(prime(n + 1) - prime(n))).

Offset 1, canonical program `A286634.P1089138795719838063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A286634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286634.P1089138795719838063.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A286634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286692.P16986880809389966464

`A286689(n+1)+∑[A286665(n+1)]`
-/

namespace A286692.P16986880809389966464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286689 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286692.P16986880809389966464

noncomputable section

/-- A286692: Positions of 0 in A286691; complement of A286693.

Offset 1, canonical program `A286692.P16986880809389966464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286692 (n : ℕ) : ℤ :=
  A286692.P16986880809389966464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286901.P11134869275173269859

`A000217(n+3)-A000217(A070320(n+2))`
-/

namespace A286901.P11134869275173269859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 3) - A000217 (A070320 (n + 2)).toNat

end

end A286901.P11134869275173269859

noncomputable section

/-- A286901: Sum of the numbers from prevprime(n) to n.

Offset 3, canonical program `A286901.P11134869275173269859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A286901 (n : ℕ) : ℤ :=
  A286901.P11134869275173269859.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A286901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286996.P13697868704389971951

`A187969(A104521(n)+n)`
-/

namespace A286996.P13697868704389971951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187969 (A104521 n + (n : ℤ)).toNat

end

end A286996.P13697868704389971951

noncomputable section

/-- A286996: {0->000, 11->null}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286996.P13697868704389971951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286996 (n : ℕ) : ℤ :=
  A286996.P13697868704389971951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286997.P246402110141512210

`A097508(A008620(n))+1+n`
-/

namespace A286997.P246402110141512210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A008620 n).toNat + 1 + (n : ℤ)

end

end A286997.P246402110141512210

noncomputable section

/-- A286997: Positions of 0 in A286996; complement of A188383.

Offset 1, canonical program `A286997.P246402110141512210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286997 (n : ℕ) : ℤ :=
  A286997.P246402110141512210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287552.P9966408718549005967

`eq[0, A053839(n)]+1`
-/

namespace A287552.P9966408718549005967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287552.P9966408718549005967

noncomputable section

/-- A287552: Positions of 0 in A053839.

Offset 1, canonical program `A287552.P9966408718549005967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A287552 (n : ℕ) : ℤ :=
  (A287552.P9966408718549005967.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A287552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287774.P8513331073826968044

`a(n-1)+A187944(n)+1` with `a(0)=1`
-/

namespace A287774.P8513331073826968044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A187944 n + 1)

end

end A287774.P8513331073826968044

noncomputable section

/-- A287774: Positions of 0 in A287773; complement of A287777.

Offset 1, canonical program `A287774.P8513331073826968044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287774 (n : ℕ) : ℤ :=
  A287774.P8513331073826968044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288194.P11979238916523902207

`A286863(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A288194.P11979238916523902207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A286863 n - a (n - 1)

end

end A288194.P11979238916523902207

noncomputable section

/-- A288194: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288194.P11979238916523902207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A288194 (n : ℕ) : ℤ :=
  A288194.P11979238916523902207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A288194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288711.P17665607544117912145

`A288707(a(a(n-2))+n)` with `a(0)=1, a(1)=0`
-/

namespace A288711.P17665607544117912145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A288707 (a (a (n - 2)).toNat + (n : ℤ)).toNat

end

end A288711.P17665607544117912145

noncomputable section

/-- A288711: 1-limiting word of the mapping 00->1000, 10->00, starting with 00.

Offset 1, canonical program `A288711.P17665607544117912145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288711 (n : ℕ) : ℤ :=
  A288711.P17665607544117912145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288807.P2449499733387383223

`lcm(A174296(n), A285436(n))/A000034(n)`
-/

namespace A288807.P2449499733387383223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A174296 n) (A285436 n) : ℚ) / (A000034 n : ℚ)

end

end A288807.P2449499733387383223

noncomputable section

/-- A288807: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 510", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288807.P2449499733387383223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A288807 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A288807.P2449499733387383223.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A288807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288812.P14573539789979862981

`A095121(n)+1-A288808(n)`
-/

namespace A288812.P14573539789979862981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288808 n)

end

end A288812.P14573539789979862981

noncomputable section

/-- A288812: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288812.P14573539789979862981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A288812 (n : ℕ) : ℤ :=
  A288812.P14573539789979862981.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A288812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288932.P12337615007191442856

`(1-C(2, A082691(n+1)))²`
-/

namespace A288932.P12337615007191442856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose 2 (A082691 (n + 1)).toNat : ℤ)) ^ 2

end

end A288932.P12337615007191442856

noncomputable section

/-- A288932: Fixed point of the mapping 00->1000, 10->10101, starting with 00.

Offset 1, canonical program `A288932.P12337615007191442856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288932 (n : ℕ) : ℤ :=
  A288932.P12337615007191442856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288936.P17816657402752772345

`char[5-A010816(n+1)+n]`
-/

namespace A288936.P17816657402752772345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A010816 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288936.P17816657402752772345

noncomputable section

/-- A288936: Fixed point of the mapping 00->0010, 01->011, 10->011, starting with 00.

Offset 1, canonical program `A288936.P17816657402752772345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5006 terms. -/
def A288936 (n : ℕ) : ℤ :=
  (A288936.P17816657402752772345.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5006 terms. -/
def A288936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289268.P17575966914648777655

`A095121(n)+1-A288196(n)`
-/

namespace A289268.P17575966914648777655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288196 n)

end

end A289268.P17575966914648777655

noncomputable section

/-- A289268: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 553", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A289268.P17575966914648777655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A289268 (n : ℕ) : ℤ :=
  A289268.P17575966914648777655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A289268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289357.P7446358913802547436

`(n*A161550(n+1))%(n+1)`
-/

namespace A289357.P7446358913802547436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A161550 (n + 1)) (n + 1 : ℤ)

end

end A289357.P7446358913802547436

noncomputable section

/-- A289357: Least number k such that n^2 + n - k is prime.

Offset 1, canonical program `A289357.P7446358913802547436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289357 (n : ℕ) : ℤ :=
  A289357.P7446358913802547436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289597.P14791546879681151293

`Δ[A192480(n)]-A166444(n)`
-/

namespace A289597.P14791546879681151293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A166444 n

end

end A289597.P14791546879681151293

noncomputable section

/-- A289597: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 271) or the same sequence for the mesh patterns (12, 303), (12, 331), (12, 421), (12, 423), (12, 459), (12, 481), (12, 489).

Offset 0, canonical program `A289597.P14791546879681151293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289597 (n : ℕ) : ℤ :=
  A289597.P14791546879681151293.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289598.P8514294268036489134

`Δ[record[A097331(n)+n]]-n`
-/

namespace A289598.P8514294268036489134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A289598.P8514294268036489134

noncomputable section

/-- A289598: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 363) or the same sequence for the mesh patterns (12, 399), (12, 429), (12, 483).

Offset 0, canonical program `A289598.P8514294268036489134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289598 (n : ℕ) : ℤ :=
  A289598.P8514294268036489134.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289762.P6859236038393281802

`A004739(n+1)+A124258(n+1)-1`
-/

namespace A289762.P6859236038393281802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 1) + (A124258 (n + 1) - 1)

end

end A289762.P6859236038393281802

noncomputable section

/-- A289762: Triangular array T(m,k) = (m+1-k)^2 + k - 1 with m (row) >= 1 and k (column) >= 1, read by rows.

Offset 1, canonical program `A289762.P6859236038393281802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A289762 (n : ℕ) : ℤ :=
  A289762.P6859236038393281802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A289762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289834.P15437554386682079727

`A000108(n)+∑[A279557(n)-1]`
-/

namespace A289834.P15437554386682079727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289834.P15437554386682079727

noncomputable section

/-- A289834: Number of perfect matchings on n edges which represent RNA secondary folding structures characterized by the Lyngso and Pedersen (L&P) family and the Cao and Chen (C&C) family.

Offset 0, canonical program `A289834.P15437554386682079727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A289834 (n : ℕ) : ℤ :=
  A289834.P15437554386682079727.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A289834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290079.P14752260854256598816

`char[2*eq[0, char[A249719(n+1)]]]`
-/

namespace A290079.P14752260854256598816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249719 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A290079.P14752260854256598816

noncomputable section

/-- A290079: Characteristic function for A249721: a(n) = 1 if there are either no 1-digits at all in base-3 representation of n, or if there are exactly two 1's next to each other, a(n) = 0 in any other cases.

Offset 0, canonical program `A290079.P14752260854256598816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290079 (n : ℕ) : ℤ :=
  (A290079.P14752260854256598816.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290255.P12137032171756849024

`val(A057335(n+1), 2)-1`
-/

namespace A290255.P12137032171756849024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A057335 (n + 1)).toNat 2 : ℤ) - 1

end

end A290255.P12137032171756849024

noncomputable section

/-- A290255: Number of 0's following directly the first 1 in the binary representation of n.

Offset 1, canonical program `A290255.P12137032171756849024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290255 (n : ℕ) : ℤ :=
  A290255.P12137032171756849024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290448.P7491466255583086115

`A141689(n+1)-A007318(n)`
-/

namespace A290448.P7491466255583086115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141689 (n + 1) - A007318 n

end

end A290448.P7491466255583086115

noncomputable section

/-- A290448: Triangle read by rows: T(n,k) = (Eulerian(n+1,k)-binomial(n,k))/2, for 0 <= k <= n.

Offset 0, canonical program `A290448.P7491466255583086115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A290448 (n : ℕ) : ℤ :=
  A290448.P7491466255583086115.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A290448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291196.P12246191278883837724

`Δ[Δ[n-A338020(n+2)]]`
-/

namespace A291196.P12246191278883837724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A338020 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291196.P12246191278883837724

noncomputable section

/-- A291196: Third differences of {Pi*n^2}, fractional part of Pi*n^2.

Offset 1, canonical program `A291196.P12246191278883837724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A291196 (n : ℕ) : ℤ :=
  A291196.P12246191278883837724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A291196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291639.P12290553793458585906

`lt[1, n*A269250(n)]`
-/

namespace A291639.P12290553793458585906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A269250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A291639.P12290553793458585906

noncomputable section

/-- A291639: Numbers k such that 0 is the smallest decimal digit of k^3.

Offset 1, canonical program `A291639.P12290553793458585906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6506 terms. -/
def A291639 (n : ℕ) : ℤ :=
  (A291639.P12290553793458585906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6506 terms. -/
def A291639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291640.P2193196825498604768

`lt[A269250(n), tanh(A269241(n))]`
-/

namespace A291640.P2193196825498604768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269250 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A269241 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A291640.P2193196825498604768

noncomputable section

/-- A291640: Numbers k such that 1 is the smallest decimal digit of k^3.

Offset 1, canonical program `A291640.P2193196825498604768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2682 terms. -/
def A291640 (n : ℕ) : ℤ :=
  (A291640.P2193196825498604768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2682 terms. -/
def A291640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292144.P13355653509212919962

`(sqrt(n+1)-sqrt(sqrt(A055491(n+1))))²`
-/

namespace A292144.P13355653509212919962
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (n + 1 : ℝ) - Real.sqrt (Real.sqrt (A055491 (n + 1) : ℝ))) ^ 2

end

end A292144.P13355653509212919962

noncomputable section

/-- A292144: a(n) is the greatest k < n such that k*n is square.

Offset 1, canonical program `A292144.P13355653509212919962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292144 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A292144.P13355653509212919962.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292440.P2854485539403430927

`xor(A159075(n), A168051(n))`
-/

namespace A292440.P2854485539403430927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A159075 n) (A168051 n)

end

end A292440.P2854485539403430927

noncomputable section

/-- A292440: Expansion of (1 - x + sqrt(1 - 2*x - 3*x^2))/2 in powers of x.

Offset 0, canonical program `A292440.P2854485539403430927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A292440 (n : ℕ) : ℤ :=
  A292440.P2854485539403430927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A292440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292666.P16137424853136077463

`A189523(n+1)-A000572(n+1)`
-/

namespace A292666.P16137424853136077463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189523 (n + 1) - A000572 (n + 1)

end

end A292666.P16137424853136077463

noncomputable section

/-- A292666: Rank of n*(e+1) when all the numbers j*(e-1) and k*(e+1), for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292666.P16137424853136077463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292666 (n : ℕ) : ℤ :=
  A292666.P16137424853136077463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293168.P10275927370229923913

`∑[A054868(n)]`
-/

namespace A293168.P10275927370229923913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293168.P10275927370229923913

noncomputable section

/-- A293168: Partial sums of A054868.

Offset 0, canonical program `A293168.P10275927370229923913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293168 (n : ℕ) : ℤ :=
  A293168.P10275927370229923913.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293326.P17442974139172085568

`A094386(n+1)+A004547(n+2)`
-/

namespace A293326.P17442974139172085568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094386 (n + 1) + A004547 (n + 2)

end

end A293326.P17442974139172085568

noncomputable section

/-- A293326: The integer k that minimizes |k/2^n - sqrt(3)|.

Offset 0, canonical program `A293326.P17442974139172085568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A293326 (n : ℕ) : ℤ :=
  A293326.P17442974139172085568.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A293326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293338.P12856302276837498788

`A027437(n)+A004593(n+4)`
-/

namespace A293338.P12856302276837498788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027437 n + A004593 (n + 4)

end

end A293338.P12856302276837498788

noncomputable section

/-- A293338: The integer k that minimizes |k/2^n - e|.

Offset 0, canonical program `A293338.P12856302276837498788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A293338 (n : ℕ) : ℤ :=
  A293338.P12856302276837498788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A293338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293439.P5122133940352064495

`∑{e}[n+1, A010060(#)]`
-/

namespace A293439.P5122133940352064495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A010060 (Nat.factorization (f1 n) p)

end

end A293439.P5122133940352064495

noncomputable section

/-- A293439: Number of odious exponents in the prime factorization of n.

Offset 1, canonical program `A293439.P5122133940352064495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293439 (n : ℕ) : ℤ :=
  A293439.P5122133940352064495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293787.P5712687042617370225

`eq[0, A004547(A004547(n+1)+n)]`
-/

namespace A293787.P5712687042617370225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (A004547 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293787.P5712687042617370225

noncomputable section

/-- A293787: Numbers k such that (d(k), d(k+1)) = (0,0) in the base-2 digits d(i) of sqrt(3).

Offset 1, canonical program `A293787.P5712687042617370225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. -/
def A293787 (n : ℕ) : ℤ :=
  (A293787.P5712687042617370225.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. -/
def A293787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293788.P13888126167259245464

`eq[3, A004556(a(n-1)+1)+A004547(n+1)]` with `a(0)=1`
-/

namespace A293788.P13888126167259245464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A004556 (f2 (n - 1) + 1).toNat + A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293788.P13888126167259245464

noncomputable section

/-- A293788: Numbers k such that (d(k), d(k+1)) = (0,1) in the base-2 digits d(i) of sqrt(3).

Offset 1, canonical program `A293788.P13888126167259245464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A293788 (n : ℕ) : ℤ :=
  (A293788.P13888126167259245464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A293788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293789.P10665216587015611791

`lt[A004547(n+1), A004547(A028310(n))]`
-/

namespace A293789.P10665216587015611791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293789.P10665216587015611791

noncomputable section

/-- A293789: Numbers k such that (d(k), d(k+1)) = (1,0) in the base-2 digits d(i) of sqrt(3).

Offset 1, canonical program `A293789.P10665216587015611791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2489 terms. -/
def A293789 (n : ℕ) : ℤ :=
  (A293789.P10665216587015611791.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2489 terms. -/
def A293789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293790.P12012869596680859351

`record[C(n, a(n-1))*A004547(n+1)]` with `a(0)=1`
-/

namespace A293790.P12012869596680859351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.choose n (f1 (n - 1)).toNat : ℤ) * A004547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293790.P12012869596680859351

noncomputable section

/-- A293790: Numbers k such that (d(k), d(k+1)) = (1,1) in the base-2 digits d(i) of sqrt(3).

Offset 1, canonical program `A293790.P12012869596680859351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. -/
def A293790 (n : ℕ) : ℤ :=
  A293790.P12012869596680859351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. -/
def A293790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293792.P6768095798108131778

`eq[char[record[(n+1)*(A004593(n+2)-A004593(n+3))]], A004593(n+2)]`
-/

namespace A293792.P6768095798108131778
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A004593 (n + 2) - A004593 (n + 3))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f4 j) n

end

end A293792.P6768095798108131778

noncomputable section

/-- A293792: Numbers k such that (d(k), d(k+1)) = (0,0) in the base-2 digits d(i) of e.

Offset 1, canonical program `A293792.P6768095798108131778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A293792 (n : ℕ) : ℤ :=
  (A293792.P6768095798108131778.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A293792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293896.P8621911693602830936

`A293895(2*(n+1))-A279060(n+1)`
-/

namespace A293896.P8621911693602830936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (2 * (n + 1)) - A279060 (n + 1)

end

end A293896.P8621911693602830936

noncomputable section

/-- A293896: Number of proper divisors of n of the form 3k+2.

Offset 1, canonical program `A293896.P8621911693602830936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293896 (n : ℕ) : ℤ :=
  A293896.P8621911693602830936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293898.P15182913839119431634

`∑{d}[n+1, A078182(#)*A157658((n+1)/#)]`
-/

namespace A293898.P15182913839119431634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078182 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293898.P15182913839119431634

noncomputable section

/-- A293898: Sum of proper divisors of n of the form 3k+2.

Offset 1, canonical program `A293898.P15182913839119431634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293898 (n : ℕ) : ℤ :=
  A293898.P15182913839119431634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294180.P3974927329510953203

`A263844(n+1)+1`
-/

namespace A294180.P3974927329510953203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263844 (n + 1) + 1

end

end A294180.P3974927329510953203

noncomputable section

/-- A294180: The 3-symbol Pell word.

Offset 1, canonical program `A294180.P3974927329510953203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A294180 (n : ℕ) : ℤ :=
  A294180.P3974927329510953203.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A294180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294630.P1431911924905244028

`4*A294017(n+1)`
-/

namespace A294630.P1431911924905244028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A294017 (n + 1)

end

end A294630.P1431911924905244028

noncomputable section

/-- A294630: Partial sums of A294629.

Offset 1, canonical program `A294630.P1431911924905244028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294630 (n : ℕ) : ℤ :=
  A294630.P1431911924905244028.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294630.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295881.P4822389694980892212

`xor(2*A033880(n+1), A033880(n+1))`
-/

namespace A295881.P4822389694980892212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A033880 (n + 1)) (A033880 (n + 1))

end

end A295881.P4822389694980892212

noncomputable section

/-- A295881: Reversing binary representation of the deficiency of n, A033879(n).

Offset 1, canonical program `A295881.P4822389694980892212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295881 (n : ℕ) : ℤ :=
  A295881.P4822389694980892212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295989.P16301422566830817347

`A080099(A268231(n+1))`
-/

namespace A295989.P16301422566830817347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 (A268231 (n + 1)).toNat

end

end A295989.P16301422566830817347

noncomputable section

/-- A295989: Irregular triangle T(n, k), read by rows, n >= 0 and 0 <= k < A001316(n): T(n, k) is the (k+1)-th nonnegative number m such that n AND m = m (where AND denotes the bitwise AND operator).

Offset 0, canonical program `A295989.P16301422566830817347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6563 terms. -/
def A295989 (n : ℕ) : ℤ :=
  A295989.P16301422566830817347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6563 terms. -/
def A295989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296075.P11175105171194449082

`A074400(n+1)-A007429(n+1)`
-/

namespace A296075.P11175105171194449082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A007429 (n + 1)

end

end A296075.P11175105171194449082

noncomputable section

/-- A296075: Sum of deficiencies of divisors of n.

Offset 1, canonical program `A296075.P11175105171194449082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296075 (n : ℕ) : ℤ :=
  A296075.P11175105171194449082.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296199.P13100712386680932036

`A024450(n+1)/gcd(A024450(n+1), A117962(n+1))`
-/

namespace A296199.P13100712386680932036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024450 (n + 1) : ℚ) / (Int.gcd (A024450 (n + 1)) (A117962 (n + 1)) : ℚ)

end

end A296199.P13100712386680932036

noncomputable section

/-- A296199: Numerator of the contraharmonic mean of the first n primes.

Offset 1, canonical program `A296199.P13100712386680932036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296199 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A296199.P13100712386680932036.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296239.P16154602574454060367

`abs(A087172(a(n-1)+n)-n)` with `a(0)=0`
-/

namespace A296239.P16154602574454060367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |A087172 (a (n - 1) + (n : ℤ)).toNat - (n : ℤ)|

end

end A296239.P16154602574454060367

noncomputable section

/-- A296239: a(n) = distance from n to nearest Fibonacci number.

Offset 0, canonical program `A296239.P16154602574454060367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A296239 (n : ℕ) : ℤ :=
  A296239.P16154602574454060367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A296239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297054.P2331804208615802623

`A078616(n)-a(n-1)` with `a(0)=1`
-/

namespace A297054.P2331804208615802623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078616 n - a (n - 1)

end

end A297054.P2331804208615802623

noncomputable section

/-- A297054: The coefficients of the product (1-x^2)(1-x^3)(1-x^4)... / (1+x).

Offset 0, canonical program `A297054.P2331804208615802623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297054 (n : ℕ) : ℤ :=
  A297054.P2331804208615802623.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297150.P3820632814485889049

`5*A049591(n+1)`
-/

namespace A297150.P3820632814485889049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A049591 (n + 1)

end

end A297150.P3820632814485889049

noncomputable section

/-- A297150: Let b(k) denote A292081(k); the sequence lists numbers b(2n) where for all m > n, b(2m) > b(2n).

Offset 1, canonical program `A297150.P3820632814485889049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297150 (n : ℕ) : ℤ :=
  A297150.P3820632814485889049.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297925.P18079423066294423131

`A049591(n+1)+5`
-/

namespace A297925.P18079423066294423131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1) + 5

end

end A297925.P18079423066294423131

noncomputable section

/-- A297925: Even numbers k such that k - 5 is prime but k - 3 is not prime.

Offset 1, canonical program `A297925.P18079423066294423131`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297925 (n : ℕ) : ℤ :=
  A297925.P18079423066294423131.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297925.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A298008.P6229877649389155224

`A038800(n)+10*n`
-/

namespace A298008.P6229877649389155224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n + (10 * n : ℤ)

end

end A298008.P6229877649389155224

noncomputable section

/-- A298008: a(n) = f(n-1,n) + 10*(n-1), where f(a,b) is the number of primes in the range [10*a,10*b].

Offset 1, canonical program `A298008.P6229877649389155224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298008 (n : ℕ) : ℤ :=
  A298008.P6229877649389155224.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298008.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A298009.P5562014499968808434

`A038822(n)+100*n`
-/

namespace A298009.P5562014499968808434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n + (100 * n : ℤ)

end

end A298009.P5562014499968808434

noncomputable section

/-- A298009: a(n) = f(n-1,n)+(n-1)*k, n>=1, where the function f(a,b) gives the number of prime numbers in the range [a*k,b*k[ with k=10^p. For this sequence we use p=2.

Offset 1, canonical program `A298009.P5562014499968808434`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298009 (n : ℕ) : ℤ :=
  A298009.P5562014499968808434.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298009.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A298300.P9978731445362915200

`A002026(n)+∑[A026165(n)]`
-/

namespace A298300.P9978731445362915200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298300.P9978731445362915200

noncomputable section

/-- A298300: Analog of Motzkin numbers for Coxeter type D.

Offset 2, canonical program `A298300.P9978731445362915200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A298300 (n : ℕ) : ℤ :=
  A298300.P9978731445362915200.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A298300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298474.P2356451179476190984

`A008486(n)-(A035336(n+1)%A002522(n))%2`
-/

namespace A298474.P2356451179476190984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - Int.tmod (Int.tmod (A035336 (n + 1)) (A002522 n)) 2

end

end A298474.P2356451179476190984

noncomputable section

/-- A298474: a(n) is the least k such that A090701(k) = n.

Offset 1, canonical program `A298474.P2356451179476190984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298474 (n : ℕ) : ℤ :=
  A298474.P2356451179476190984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298639.P12281402705215784674

`comp[A298638(n+1)]`
-/

namespace A298639.P12281402705215784674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A298639.P12281402705215784674

noncomputable section

/-- A298639: Numbers k such that the digital sum of k and the digital root of k have the same parity.

Offset 1, canonical program `A298639.P12281402705215784674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298639 (n : ℕ) : ℤ :=
  (A298639.P12281402705215784674.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298862.P8575127337279644587

`A020900(n+1)+1+n`
-/

namespace A298862.P8575127337279644587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020900 (n + 1) + 1 + (n : ℤ)

end

end A298862.P8575127337279644587

noncomputable section

/-- A298862: Rank of n-th twice-prime when all the primes and twice-primes are jointly ranked.

Offset 1, canonical program `A298862.P8575127337279644587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298862 (n : ℕ) : ℤ :=
  A298862.P8575127337279644587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299788.P8869797389046882130

`∏{d}[n+1, #]/gcd(∏{d}[n+1, #], A206032(n+1))`
-/

namespace A299788.P8869797389046882130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Int.gcd ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) (A206032 (n + 1)) : ℚ)

end

end A299788.P8869797389046882130

noncomputable section

/-- A299788: a(n) = denominator of Product_{d|n} (sigma(d)/d) where sigma(k) = the sum of the divisors of k (A000203).

Offset 1, canonical program `A299788.P8869797389046882130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A299788 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A299788.P8869797389046882130.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A299788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301273.P17395654707237324989

`lcm(n+1, A007504(n+1))/(n+1)`
-/

namespace A301273.P17395654707237324989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A007504 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A301273.P17395654707237324989

noncomputable section

/-- A301273: Numerator of mean of first n primes.

Offset 1, canonical program `A301273.P17395654707237324989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301273 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A301273.P17395654707237324989.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193426.P7960739282691465682

`A131719(2*n)*A261884(2*(n+1))`
-/

namespace A193426.P7960739282691465682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131719 (2 * n) * A261884 (2 * (n + 1))

end

end A193426.P7960739282691465682

noncomputable section

/-- A193426: Expansion of (a(q^2) + a(q^3) - 2*a(q^6)) / 6 in powers of q where a() is a cubic AGM function.

Offset 1, canonical program `A193426.P7960739282691465682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A193426 (n : ℕ) : ℤ :=
  A193426.P7960739282691465682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A193426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193511.P8678682823205615366

`A146076(A252736(n+1)+1)`
-/

namespace A193511.P8678682823205615366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A252736 (n + 1) + 1).toNat

end

end A193511.P8678682823205615366

noncomputable section

/-- A193511: a(n) = Sum of even divisors of Omega(n), a(1) = 0.

Offset 1, canonical program `A193511.P8678682823205615366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193511 (n : ℕ) : ℤ :=
  A193511.P8678682823205615366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193736.P14164612170582133847

`A209151(gcd(A010816(n), A083920(n)))`
-/

namespace A193736.P14164612170582133847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209151 (Int.gcd (A010816 n) (A083920 n))

end

end A193736.P14164612170582133847

noncomputable section

/-- A193736: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x) = (n+1)-st Fibonacci polynomial and q(n,x) = (x+1)^n.

Offset 0, canonical program `A193736.P14164612170582133847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193736 (n : ℕ) : ℤ :=
  A193736.P14164612170582133847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193829.P10500776787776175054

`A208460(n+2)%A208460(n+3)`
-/

namespace A193829.P10500776787776175054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208460 (n + 2)) (A208460 (n + 3))

end

end A193829.P10500776787776175054

noncomputable section

/-- A193829: Irregular triangle read by rows in which row n lists the differences between consecutive divisors of n.

Offset 2, canonical program `A193829.P10500776787776175054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193829 (n : ℕ) : ℤ :=
  A193829.P10500776787776175054.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194003.P749613088496176937

`A193929(n²)`
-/

namespace A194003.P749613088496176937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (n ^ 2)

end

end A194003.P749613088496176937

noncomputable section

/-- A194003: Number of prime factors of n^8 + 1, counted with multiplicity.

Offset 0, canonical program `A194003.P749613088496176937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A194003 (n : ℕ) : ℤ :=
  A194003.P749613088496176937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A194003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194371.P12996466738484531238

`record[(n+1)%A190670(A008619(n))]`
-/

namespace A194371.P12996466738484531238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A190670 (A008619 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194371.P12996466738484531238

noncomputable section

/-- A194371: Numbers m such that Sum_{k=1..m} ( - ) < 0, where r=sqrt(3) and fractional part is denoted by < >.

Offset 1, canonical program `A194371.P12996466738484531238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A194371 (n : ℕ) : ℤ :=
  A194371.P12996466738484531238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A194371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194373.P2131192760433905498

`lt[A190670(A008619(n))-n, 1]`
-/

namespace A194373.P2131192760433905498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190670 (A008619 n).toNat - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A194373.P2131192760433905498

noncomputable section

/-- A194373: Numbers m such that Sum_{k=1..m} ( - ) > 0, where r=sqrt(3) and < > denotes fractional part.

Offset 1, canonical program `A194373.P2131192760433905498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A194373 (n : ℕ) : ℤ :=
  (A194373.P2131192760433905498.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A194373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194736.P10753671586819030676

`1-A194737(n+1)+n`
-/

namespace A194736.P10753671586819030676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194737 (n + 1) + (n : ℤ)

end

end A194736.P10753671586819030676

noncomputable section

/-- A194736: Number of k such that {-k*sqrt(2)} < {-n*sqrt(2)}, where { } = fractional part.

Offset 1, canonical program `A194736.P10753671586819030676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194736 (n : ℕ) : ℤ :=
  A194736.P10753671586819030676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194817.P12896036413848016526

`∑[A327180(n)]`
-/

namespace A194817.P12896036413848016526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194817.P12896036413848016526

noncomputable section

/-- A194817: Number of integers k in [1,n] such that {n*r+k*r} < {n*r-k*r}, where { } = fractional part and r=sqrt(3).

Offset 1, canonical program `A194817.P12896036413848016526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194817 (n : ℕ) : ℤ :=
  A194817.P12896036413848016526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194818.P8981448949594921892

`∑[1-A327180(n)]`
-/

namespace A194818.P8981448949594921892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A327180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194818.P8981448949594921892

noncomputable section

/-- A194818: Number of integers k in [1,n] such that {n*r+k*r} > {n*r-k*r}, where { } = fractional part and r=sqrt(3).

Offset 1, canonical program `A194818.P8981448949594921892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194818 (n : ℕ) : ℤ :=
  A194818.P8981448949594921892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195052.P8855072573721883915

`A195051(n+1)/2`
-/

namespace A195052.P8855072573721883915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195051 (n + 1) : ℚ) / 2

end

end A195052.P8855072573721883915

noncomputable section

/-- A195052: Number of divisors of 24*n - 1 divided by 2.

Offset 1, canonical program `A195052.P8855072573721883915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195052 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A195052.P8855072573721883915.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195052.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A195065.P14907772542944478463

`lt[n, A036044(n)]`
-/

namespace A195065.P14907772542944478463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195065.P14907772542944478463

noncomputable section

/-- A195065: Numbers n such that BCR(n) is greater than n, where BCR = binary-complement-and-reverse = A036044.

Offset 1, canonical program `A195065.P14907772542944478463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2816 terms. -/
def A195065 (n : ℕ) : ℤ :=
  (A195065.P14907772542944478463.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2816 terms. -/
def A195065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197208.P16904640746338435843

`A168577(n+2)*A209518(n)*A135278(n)`
-/

namespace A197208.P16904640746338435843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168577 (n + 2) * A209518 n * A135278 n

end

end A197208.P16904640746338435843

noncomputable section

/-- A197208: Triangular array: T(n,k) = sqrt(C(n-1,k-1)*C(n-1,k)*C(n,k+1)* C(n+1,k+1)*C(n+1,k)*C(n,k-1)), where C(n,k) = binomial(n,k).

Offset 2, canonical program `A197208.P16904640746338435843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6493 terms. -/
def A197208 (n : ℕ) : ℤ :=
  A197208.P16904640746338435843.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6493 terms. -/
def A197208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197637.P7917936694828647143

`comp[A197636(n+1)+n-1]-n`
-/

namespace A197637.P7917936694828647143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A197637.P7917936694828647143

noncomputable section

/-- A197637: Number of non-Wilson primes <= n.

Offset 1, canonical program `A197637.P7917936694828647143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197637 (n : ℕ) : ℤ :=
  A197637.P7917936694828647143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199427.P16032660571928218146

`∑[A110655(Δ[A103579(n+1)])]`
-/

namespace A199427.P16032660571928218146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103579 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199427.P16032660571928218146

noncomputable section

/-- A199427: Numbers n such that 4n+1 and 8n+3 are prime.

Offset 1, canonical program `A199427.P16032660571928218146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A199427 (n : ℕ) : ℤ :=
  A199427.P16032660571928218146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A199427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199805.P3565271180669152033

`(A199929(n)+A199927(n))/3`
-/

namespace A199805.P3565271180669152033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199929 n + A199927 n : ℚ) / 3

end

end A199805.P3565271180669152033

noncomputable section

/-- A199805: G.f.: 1/(1 + x + 5*x^2 - x^3 + x^4).

Offset 0, canonical program `A199805.P3565271180669152033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A199805 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A199805.P3565271180669152033.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A199805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200810.P3059771621700014501

`p?[a(A032741(n+1))+n*A010051(n+1)]` with `a(0)=1, a(1)=1`
-/

namespace A200810.P3059771621700014501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (A032741 (n + 1)).toNat + (n : ℤ) * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200810.P3059771621700014501

noncomputable section

/-- A200810: Iterate k -> d(k) until an odd prime is reached.

Offset 3, canonical program `A200810.P3059771621700014501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A200810 (n : ℕ) : ℤ :=
  A200810.P3059771621700014501.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A200810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202057.P9210268420412961846

`filter[A072437(n+1), A049240(#)]`
-/

namespace A202057.P9210268420412961846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A202057.P9210268420412961846

noncomputable section

/-- A202057: Numbers which are not perfect squares and such that all prime divisors are congruent to 1 or 2 mod 4.

Offset 1, canonical program `A202057.P9210268420412961846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9932 terms. -/
def A202057 (n : ℕ) : ℤ :=
  A202057.P9210268420412961846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9932 terms. -/
def A202057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202335.P3583749144337499304

`A027170(eq[0, A103451(n)])+6`
-/

namespace A202335.P3583749144337499304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 6

end

end A202335.P3583749144337499304

noncomputable section

/-- A202335: T(n,k)=Number of (n+1)X(k+1) binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

Offset 1, canonical program `A202335.P3583749144337499304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. -/
def A202335 (n : ℕ) : ℤ :=
  A202335.P3583749144337499304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. -/
def A202335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202822.P8406521791768772267

`filter[A003136(n+2), A187074(#)]`
-/

namespace A202822.P8406521791768772267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A202822.P8406521791768772267

noncomputable section

/-- A202822: Numbers of the form 3*(x^2 + xy + y^2 + x + y) + 1 where x and y are integers.

Offset 1, canonical program `A202822.P8406521791768772267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6444 terms. -/
def A202822 (n : ℕ) : ℤ :=
  A202822.P8406521791768772267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6444 terms. -/
def A202822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203639.P16011470496757075944

`A005361(n+1)*A003557(n+1)`
-/

namespace A203639.P16011470496757075944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A003557 (n + 1)

end

end A203639.P16011470496757075944

noncomputable section

/-- A203639: Multiplicative with a(p^e) = e*p^(e-1).

Offset 1, canonical program `A203639.P16011470496757075944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203639 (n : ℕ) : ℤ :=
  A203639.P16011470496757075944.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203639.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A203967.P2609417184401849939

`a(n-1)+A010055(n+1)*A010051(A100995(n+1)+1)` with `a(0)=0`
-/

namespace A203967.P2609417184401849939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A010055 (n + 1) * A010051 (A100995 (n + 1) + 1).toNat

end

end A203967.P2609417184401849939

noncomputable section

/-- A203967: The number of positive integers <= n that have a prime number of divisors.

Offset 1, canonical program `A203967.P2609417184401849939`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A010055, A100995, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A203967 (n : ℕ) : ℤ :=
  A203967.P2609417184401849939.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A010055, A100995, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A203967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204232.P14925845568226415786

`eq[1, ∑{e}[A030101(n), #]]`
-/

namespace A204232.P14925845568226415786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204232.P14925845568226415786

noncomputable section

/-- A204232: Numbers whose binary reversal is prime.

Offset 1, canonical program `A204232.P14925845568226415786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A204232 (n : ℕ) : ℤ :=
  (A204232.P14925845568226415786.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A204232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205098.P10471539786565330894

`A204822(n+1)-A005101(n+1)`
-/

namespace A205098.P10471539786565330894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1) - A005101 (n + 1)

end

end A205098.P10471539786565330894

noncomputable section

/-- A205098: Sum of proper divisors (A001065) of abundant numbers (A005101).

Offset 1, canonical program `A205098.P10471539786565330894`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A204822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A205098 (n : ℕ) : ℤ :=
  A205098.P10471539786565330894.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A204822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A205098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A205099.P16915794968075742101

`A204823(n+1)-A005100(n+1)`
-/

namespace A205099.P16915794968075742101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204823 (n + 1) - A005100 (n + 1)

end

end A205099.P16915794968075742101

noncomputable section

/-- A205099: Sum of proper divisors (A001065) of deficient numbers (A005100).

Offset 1, canonical program `A205099.P16915794968075742101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, A204823, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A205099 (n : ℕ) : ℤ :=
  A205099.P16915794968075742101.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, A204823, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A205099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A205523.P3343605037505574197

`lt[A272008(n+1), 2]+1`
-/

namespace A205523.P3343605037505574197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A205523.P3343605037505574197

noncomputable section

/-- A205523: Numbers k such that gcd(k, sigma(k)) == sigma(k) (mod k).

Offset 1, canonical program `A205523.P3343605037505574197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5222 terms. -/
def A205523 (n : ℕ) : ℤ :=
  (A205523.P3343605037505574197.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5222 terms. -/
def A205523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207536.P11378481812331935203

`A034839(n+1)/A034867(n+1)*A105070(n+2)`
-/

namespace A207536.P11378481812331935203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034839 (n + 1) : ℚ) / (A034867 (n + 1) : ℚ) * (A105070 (n + 2) : ℚ)

end

end A207536.P11378481812331935203

noncomputable section

/-- A207536: Triangle of coefficients of polynomials u(n,x) jointly generated with A105070; see Formula section.

Offset 1, canonical program `A207536.P11378481812331935203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A207536 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207536.P11378481812331935203.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A207536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208251.P10196813765732907531

`∑[A000007(A054008(n+1))]`
-/

namespace A208251.P10196813765732907531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A054008 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208251.P10196813765732907531

noncomputable section

/-- A208251: Number of refactorable numbers less than or equal to n.

Offset 1, canonical program `A208251.P10196813765732907531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208251 (n : ℕ) : ℤ :=
  A208251.P10196813765732907531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208449.P536335789057244037

`A007955(n+2)/gcd(A007955(n+2), A377484(n+2))`
-/

namespace A208449.P536335789057244037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 2) : ℚ) / (Int.gcd (A007955 (n + 2)) (A377484 (n + 2)) : ℚ)

end

end A208449.P536335789057244037

noncomputable section

/-- A208449: Numerator of A010786(n+1) / A010786(n).

Offset 1, canonical program `A208449.P536335789057244037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208449 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208449.P536335789057244037.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A208450.P18341200880370467894

`A377484(n+2)/gcd(A007955(n+2), A377484(n+2))`
-/

namespace A208450.P18341200880370467894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377484 (n + 2) : ℚ) / (Int.gcd (A007955 (n + 2)) (A377484 (n + 2)) : ℚ)

end

end A208450.P18341200880370467894

noncomputable section

/-- A208450: Denominator of A010786(n+1) / A010786(n).

Offset 1, canonical program `A208450.P18341200880370467894`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208450 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208450.P18341200880370467894.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A208511.P7476908769405234328

`A209758(n+1)-2*A049600(n)`
-/

namespace A208511.P7476908769405234328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209758 (n + 1) - 2 * A049600 n

end

end A208511.P7476908769405234328

noncomputable section

/-- A208511: Triangle of coefficients of polynomials u(n,x) jointly generated with A208512; see the Formula section.

Offset 1, canonical program `A208511.P7476908769405234328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208511 (n : ℕ) : ℤ :=
  A208511.P7476908769405234328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210189.P11192886446134679088

`A011782(A122197(n+1))*A210039(n+1)`
-/

namespace A210189.P11192886446134679088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A122197 (n + 1)).toNat * A210039 (n + 1)

end

end A210189.P11192886446134679088

noncomputable section

/-- A210189: Triangle of coefficients of polynomials u(n,x) jointly generated with A210190; see the Formula section.

Offset 1, canonical program `A210189.P11192886446134679088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210189 (n : ℕ) : ℤ :=
  A210189.P11192886446134679088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210198.P1741042711181140859

`A207538(n+2)-Δ[A000267(n)]`
-/

namespace A210198.P1741042711181140859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207538 (n + 2) - (f1 (n + 1) - f1 n)

end

end A210198.P1741042711181140859

noncomputable section

/-- A210198: Triangle of coefficients of polynomials v(n,x) jointly generated with A210197; see the Formula section.

Offset 1, canonical program `A210198.P1741042711181140859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210198 (n : ℕ) : ℤ :=
  A210198.P1741042711181140859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210635.P12986531844571725851

`A003056(n)-2*A051777(n+1)`
-/

namespace A210635.P12986531844571725851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - 2 * A051777 (n + 1)

end

end A210635.P12986531844571725851

noncomputable section

/-- A210635: Array read by descending antidiagonals: a(n,w) = ((w - (n mod w) - 1) + n) - (n mod w), n >= 0, w >= 1.

Offset 0, canonical program `A210635.P12986531844571725851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210635 (n : ℕ) : ℤ :=
  A210635.P12986531844571725851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211117.P3659241348641989542

`A211479(n+1)+A211490(n+1)-9`
-/

namespace A211117.P3659241348641989542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211479 (n + 1) + (A211490 (n + 1) - 9)

end

end A211117.P3659241348641989542

noncomputable section

/-- A211117: Number of (n+1) X (n+1) -2..2 symmetric matrices with every 2 X 2 subblock having sum zero and two, three or four distinct values.

Offset 1, canonical program `A211117.P3659241348641989542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A211117 (n : ℕ) : ℤ :=
  A211117.P3659241348641989542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A211117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211266.P4070917168156634709

`∑[A140106(A092405(2*n+1))]`
-/

namespace A211266.P4070917168156634709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A092405 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211266.P4070917168156634709

noncomputable section

/-- A211266: Number of integer pairs (x,y) such that 0

Offset 1, canonical program `A211266.P4070917168156634709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211266 (n : ℕ) : ℤ :=
  A211266.P4070917168156634709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211776.P3808314914225811013

`∏{d}[n+1, sqrt(A035116(#))]`
-/

namespace A211776.P3808314914225811013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Real.sqrt (A035116 d : ℝ)

end

end A211776.P3808314914225811013

noncomputable section

/-- A211776: a(n) = Product_{d | n} tau(d).

Offset 1, canonical program `A211776.P3808314914225811013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211776 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A211776.P3808314914225811013.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212167.P5687651809221960298

`comp[A212164(n+1)-1]+1`
-/

namespace A212167.P5687651809221960298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212164 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A212167.P5687651809221960298

noncomputable section

/-- A212167: Numbers k such that the maximum exponent in its prime factorization is not greater than the number of positive exponents (A051903(k) <= A001221(k)).

Offset 1, canonical program `A212167.P5687651809221960298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212167 (n : ℕ) : ℤ :=
  (A212167.P5687651809221960298.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212499.P7791444323466826119

`∪[A037124(n+1), A098394(n+1)]`
-/

namespace A212499.P7791444323466826119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212499.P7791444323466826119

noncomputable section

/-- A212499: Numbers k that divide the product of digits of k.

Offset 1, canonical program `A212499.P7791444323466826119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212499 (n : ℕ) : ℤ :=
  (A212499.P7791444323466826119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212508.P16126103335911313118

`A212503(n)+A212505(n)-A212511(n)`
-/

namespace A212508.P16126103335911313118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212503 n + (A212505 n - A212511 n)

end

end A212508.P16126103335911313118

noncomputable section

/-- A212508: Number of (w,x,y,z) with all terms in {1,...,n} and w

Offset 0, canonical program `A212508.P16126103335911313118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3430 terms. -/
def A212508 (n : ℕ) : ℤ :=
  A212508.P16126103335911313118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3430 terms. -/
def A212508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212563.P15478231082037985725

`A212562(n)+A212561(n)`
-/

namespace A212563.P15478231082037985725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212562 n + A212561 n

end

end A212563.P15478231082037985725

noncomputable section

/-- A212563: Number of (w,x,y,z) with all terms in {1,...,n} and w+x<=2y+2z.

Offset 0, canonical program `A212563.P15478231082037985725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212563 (n : ℕ) : ℤ :=
  A212563.P15478231082037985725.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212572.P15356776701281447964

`A212571(n)+A212570(n)`
-/

namespace A212572.P15356776701281447964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212571 n + A212570 n

end

end A212572.P15356776701281447964

noncomputable section

/-- A212572: Number of (w,x,y,z) with all terms in {1,...,n} and |w-x| <= |x-y| + |y-z|.

Offset 0, canonical program `A212572.P15356776701281447964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212572 (n : ℕ) : ℤ :=
  A212572.P15356776701281447964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212600.P11668726103471995510

`filter[A136437(n+3), A066247(#)]`
-/

namespace A212600.P11668726103471995510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136437 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A212600.P11668726103471995510

noncomputable section

/-- A212600: Composite numbers p-m! arising in A212266.

Offset 1, canonical program `A212600.P11668726103471995510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5599 terms. -/
def A212600 (n : ℕ) : ℤ :=
  A212600.P11668726103471995510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5599 terms. -/
def A212600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212793.P4153428830166235404

`abs(A053864(n+1))`
-/

namespace A212793.P4153428830166235404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053864 (n + 1)|

end

end A212793.P4153428830166235404

noncomputable section

/-- A212793: Characteristic function of cubefree numbers, A004709.

Offset 1, canonical program `A212793.P4153428830166235404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212793 (n : ℕ) : ℤ :=
  A212793.P4153428830166235404.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212793.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213392.P13729878407923535789

`A213393(n)+A092076(n)`
-/

namespace A213392.P13729878407923535789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213393 n + A092076 n

end

end A213392.P13729878407923535789

noncomputable section

/-- A213392: Number of (w,x,y) with all terms in {0,...,n} and 2*max(w,x,y) >= 3*min(w,x,y).

Offset 0, canonical program `A213392.P13729878407923535789`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213393, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213392 (n : ℕ) : ℤ :=
  A213392.P13729878407923535789.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213393, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213392.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213408.P6728982217744308874

`filter[A002654(n+1), A011558(#)]`
-/

namespace A213408.P6728982217744308874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A213408.P6728982217744308874

noncomputable section

/-- A213408: Sequence A002654 with the zero terms omitted.

Offset 1, canonical program `A213408.P6728982217744308874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A213408 (n : ℕ) : ℤ :=
  A213408.P6728982217744308874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A213408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213594.P8203987678726154595

`val(A048784(n+1), 2)`
-/

namespace A213594.P8203987678726154595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048784 (n + 1)).toNat 2

end

end A213594.P8203987678726154595

noncomputable section

/-- A213594: Greatest number k such that A048784(n) / 2^k is an integer.

Offset 1, canonical program `A213594.P8203987678726154595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1692 terms. -/
def A213594 (n : ℕ) : ℤ :=
  (A213594.P8203987678726154595.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1692 terms. -/
def A213594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214153.P12597963895467344712

`filter[A211337(n+1), A373977(#)]`
-/

namespace A214153.P12597963895467344712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A214153.P12597963895467344712

noncomputable section

/-- A214153: Numbers k for which k and tau(k) are both congruent to 1 modulo 3.

Offset 1, canonical program `A214153.P12597963895467344712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3607 terms. -/
def A214153 (n : ℕ) : ℤ :=
  A214153.P12597963895467344712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3607 terms. -/
def A214153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215102.P5571390027592218489

`∪[A141852(n+1), A214888(n+1)]`
-/

namespace A215102.P5571390027592218489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P5571390027592218489

noncomputable section

/-- A215102: Primes congruent to {2, 3, 5} mod 11.

Offset 1, canonical program `A215102.P5571390027592218489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215102 (n : ℕ) : ℤ :=
  (A215102.P5571390027592218489.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215134.P14482187140007417676

`∪[A141849(n+1), A214888(n+1)]`
-/

namespace A215134.P14482187140007417676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215134.P14482187140007417676

noncomputable section

/-- A215134: Primes congruent to {1, 2, 3} mod 11.

Offset 1, canonical program `A215134.P14482187140007417676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215134 (n : ℕ) : ℤ :=
  (A215134.P14482187140007417676.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215156.P6693637782986479371

`∪[A138629(n+1), A215104(n+1)]`
-/

namespace A215156.P6693637782986479371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215156.P6693637782986479371

noncomputable section

/-- A215156: Primes congruent to {2, 3, 5, 7} mod 17.

Offset 1, canonical program `A215156.P6693637782986479371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215156 (n : ℕ) : ℤ :=
  (A215156.P6693637782986479371.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215157.P6095938818374201116

`∪[A141872(n+1), A215105(n+1)]`
-/

namespace A215157.P6095938818374201116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215157.P6095938818374201116

noncomputable section

/-- A215157: Primes congruent to {2, 3, 5, 7} mod 19.

Offset 1, canonical program `A215157.P6095938818374201116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215157 (n : ℕ) : ℤ :=
  (A215157.P6095938818374201116.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215210.P12415954493624348144

`∪[A141854(n+1), A215167(n+1)]`
-/

namespace A215210.P12415954493624348144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215210.P12415954493624348144

noncomputable section

/-- A215210: Primes congruent to {2, 5, 7} mod 11.

Offset 1, canonical program `A215210.P12415954493624348144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215210 (n : ℕ) : ℤ :=
  (A215210.P12415954493624348144.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215211.P16553425419217108754

`∪[A102732(n+1), A215207(n+1)]`
-/

namespace A215211.P16553425419217108754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215211.P16553425419217108754

noncomputable section

/-- A215211: Primes congruent to {2, 5, 7} mod 13.

Offset 1, canonical program `A215211.P16553425419217108754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215211 (n : ℕ) : ℤ :=
  (A215211.P16553425419217108754.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215212.P3163214217033629190

`∪[A138629(n+1), A215169(n+1)]`
-/

namespace A215212.P3163214217033629190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215212.P3163214217033629190

noncomputable section

/-- A215212: Primes congruent to {2, 5, 7} mod 17.

Offset 1, canonical program `A215212.P3163214217033629190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215212 (n : ℕ) : ℤ :=
  (A215212.P3163214217033629190.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215213.P7586956025202272390

`∪[A102851(n+1), A215209(n+1)]`
-/

namespace A215213.P7586956025202272390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215213.P7586956025202272390

noncomputable section

/-- A215213: Primes congruent to {2, 5, 7} mod 19.

Offset 1, canonical program `A215213.P7586956025202272390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215213 (n : ℕ) : ℤ :=
  (A215213.P7586956025202272390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215260.P2192226197169425689

`round(∑[log(A008578(n+1))])`
-/

namespace A215260.P2192226197169425689
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A008578 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215260.P2192226197169425689

noncomputable section

/-- A215260: Nearest integer to log(A002110(n)).

Offset 0, canonical program `A215260.P2192226197169425689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215260 (n : ℕ) : ℤ :=
  A215260.P2192226197169425689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215279.P11091986200909952141

`∪[A141851(n+1), A214888(n+1)]`
-/

namespace A215279.P11091986200909952141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215279.P11091986200909952141

noncomputable section

/-- A215279: Primes congruent to {2, 3, 4} mod 11.

Offset 1, canonical program `A215279.P11091986200909952141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215279 (n : ℕ) : ℤ :=
  (A215279.P11091986200909952141.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215305.P11149716039746470790

`∪[A141870(n+1), A215154(n+1)]`
-/

namespace A215305.P11149716039746470790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215305.P11149716039746470790

noncomputable section

/-- A215305: Primes congruent to {1, 2, 3, 4} mod 19.

Offset 1, canonical program `A215305.P11149716039746470790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215305 (n : ℕ) : ℤ :=
  (A215305.P11149716039746470790.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215308.P9063674107072396088

`∪[A129484(n+1), A215104(n+1)]`
-/

namespace A215308.P9063674107072396088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215308.P9063674107072396088

noncomputable section

/-- A215308: Primes congruent to {1, 2, 3, 5} mod 17.

Offset 1, canonical program `A215308.P9063674107072396088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215308 (n : ℕ) : ℤ :=
  (A215308.P9063674107072396088.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215309.P9097329543681950437

`∪[A102851(n+1), A215154(n+1)]`
-/

namespace A215309.P9097329543681950437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215309.P9097329543681950437

noncomputable section

/-- A215309: Primes congruent to {1, 2, 3, 5} mod 19.

Offset 1, canonical program `A215309.P9097329543681950437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215309 (n : ℕ) : ℤ :=
  (A215309.P9097329543681950437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215312.P10401023248749367399

`∪[A138623(n+1), A215304(n+1)]`
-/

namespace A215312.P10401023248749367399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215312.P10401023248749367399

noncomputable section

/-- A215312: Primes congruent to {1, 2, 3, 4, 5} mod 17.

Offset 1, canonical program `A215312.P10401023248749367399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215312 (n : ℕ) : ℤ :=
  (A215312.P10401023248749367399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215317.P13650566873263467834

`∪[A102851(n+1), A215282(n+1)]`
-/

namespace A215317.P13650566873263467834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215317.P13650566873263467834

noncomputable section

/-- A215317: Primes congruent to {2, 3, 4, 5} mod 19.

Offset 1, canonical program `A215317.P13650566873263467834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215317 (n : ℕ) : ℤ :=
  (A215317.P13650566873263467834.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215324.P2756159153333768749

`∪[A140545(n+1), A215304(n+1)]`
-/

namespace A215324.P2756159153333768749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215324.P2756159153333768749

noncomputable section

/-- A215324: Primes congruent to {1, 2, 3, 4, 6} mod 17.

Offset 1, canonical program `A215324.P2756159153333768749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215324 (n : ℕ) : ℤ :=
  (A215324.P2756159153333768749.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215351.P11878786393599793784

`∪[A093350(n+1), A215280(n+1)]`
-/

namespace A215351.P11878786393599793784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215351.P11878786393599793784

noncomputable section

/-- A215351: Primes congruent to {2, 3, 4, 6} mod 13.

Offset 1, canonical program `A215351.P11878786393599793784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215351 (n : ℕ) : ℤ :=
  (A215351.P11878786393599793784.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215353.P7904200068461373245

`∪[A141871(n+1), A215282(n+1)]`
-/

namespace A215353.P7904200068461373245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215353.P7904200068461373245

noncomputable section

/-- A215353: Primes congruent to {2, 3, 4, 6} mod 19.

Offset 1, canonical program `A215353.P7904200068461373245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215353 (n : ℕ) : ℤ :=
  (A215353.P7904200068461373245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215384.P2905744902112368946

`∪[A140545(n+1), A215153(n+1)]`
-/

namespace A215384.P2905744902112368946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215384.P2905744902112368946

noncomputable section

/-- A215384: Primes congruent to {1, 2, 3, 6} mod 17.

Offset 1, canonical program `A215384.P2905744902112368946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215384 (n : ℕ) : ℤ :=
  (A215384.P2905744902112368946.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215385.P6170897729525375825

`∪[A141871(n+1), A215154(n+1)]`
-/

namespace A215385.P6170897729525375825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215385.P6170897729525375825

noncomputable section

/-- A215385: Primes congruent to {1, 2, 3, 6} mod 19.

Offset 1, canonical program `A215385.P6170897729525375825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215385 (n : ℕ) : ℤ :=
  (A215385.P6170897729525375825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215386.P6364758896401244281

`∪[A141853(n+1), A214888(n+1)]`
-/

namespace A215386.P6364758896401244281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215386.P6364758896401244281

noncomputable section

/-- A215386: Primes congruent to {2, 3, 6} mod 11.

Offset 1, canonical program `A215386.P6364758896401244281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215386 (n : ℕ) : ℤ :=
  (A215386.P6364758896401244281.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215523.P5248230795343589178

`A005097(∑[A091237(n+1)])`
-/

namespace A215523.P5248230795343589178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A215523.P5248230795343589178

noncomputable section

/-- A215523: Slowest increasing sequence of alternate-parity integers m such that 2m+1 is prime.

Offset 1, canonical program `A215523.P5248230795343589178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A215523 (n : ℕ) : ℤ :=
  A215523.P5248230795343589178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A215523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216153.P15491257447114026993

`A205959(A018252(n+1))`
-/

namespace A216153.P15491257447114026993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (A018252 (n + 1)).toNat

end

end A216153.P15491257447114026993

noncomputable section

/-- A216153: The partial products of a(n) are the distinct values of the exponential of the von Mangoldt function modified by restricting the divisors to prime divisors (A205957).

Offset 1, canonical program `A216153.P15491257447114026993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216153 (n : ℕ) : ℤ :=
  A216153.P15491257447114026993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216319.P7848709272495986412

`A038566(eq[1, A038566(n+1)%2]+1)`
-/

namespace A216319.P7848709272495986412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038566 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216319.P7848709272495986412

noncomputable section

/-- A216319: Irregular triangle: row n lists the odd numbers of the reduced residue system modulo n.

Offset 1, canonical program `A216319.P7848709272495986412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216319 (n : ℕ) : ℤ :=
  A216319.P7848709272495986412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216637.P16074414252254142737

`A329355(3*(n+1))%8`
-/

namespace A216637.P16074414252254142737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329355 (3 * (n + 1))) 8

end

end A216637.P16074414252254142737

noncomputable section

/-- A216637: Kolakoski sequence by 3-words.

Offset 1, canonical program `A216637.P16074414252254142737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A216637 (n : ℕ) : ℤ :=
  A216637.P16074414252254142737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A216637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217128.P10561566557455975693

`lt[1, A193929(2*n)]`
-/

namespace A217128.P10561566557455975693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217128.P10561566557455975693

noncomputable section

/-- A217128: Numbers n such that (2n)^4 + 1 is not prime.

Offset 1, canonical program `A217128.P10561566557455975693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A217128 (n : ℕ) : ℤ :=
  (A217128.P10561566557455975693.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A217128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217129.P6626584089061769423

`lt[1, A193929(n)]`
-/

namespace A217129.P6626584089061769423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217129.P6626584089061769423

noncomputable section

/-- A217129: Numbers n such that n^4 + 1 is not prime.

Offset 1, canonical program `A217129.P6626584089061769423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A217129 (n : ℕ) : ℤ :=
  (A217129.P6626584089061769423.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A217129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217564.P832865562934600438

`A079952(n+2)-A079952(n+1)`
-/

namespace A217564.P832865562934600438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079952 (n + 2) - A079952 (n + 1)

end

end A217564.P832865562934600438

noncomputable section

/-- A217564: Number of primes between prime(n)/2 and prime(n+1)/2.

Offset 1, canonical program `A217564.P832865562934600438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217564 (n : ℕ) : ℤ :=
  A217564.P832865562934600438.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217564.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217587.P11225916945597616311

`∩[A073102(n+1), A093359(n+1)]`
-/

namespace A217587.P11225916945597616311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P11225916945597616311

noncomputable section

/-- A217587: Primes p of the form 420k + 1 for some k.

Offset 1, canonical program `A217587.P11225916945597616311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A217587 (n : ℕ) : ℤ :=
  (A217587.P11225916945597616311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A217587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218567.P2187862195306331309

`A218506(n+6)-A117143(n+6)`
-/

namespace A218567.P2187862195306331309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218506 (n + 6) - A117143 (n + 6)

end

end A218567.P2187862195306331309

noncomputable section

/-- A218567: Number of partitions p of n such that max(p)-min(p) = 4.

Offset 6, canonical program `A218567.P2187862195306331309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117143, A218506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A218567 (n : ℕ) : ℤ :=
  A218567.P2187862195306331309.a (n - 6)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117143, A218506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A218567.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219636.P17854170644708396736

`A307295(n)-2`
-/

namespace A219636.P17854170644708396736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 n - 2

end

end A219636.P17854170644708396736

noncomputable section

/-- A219636: Complement of A035336.

Offset 1, canonical program `A219636.P17854170644708396736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219636 (n : ℕ) : ℤ :=
  A219636.P17854170644708396736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220053.P10350376442709660528

`A220075(A014132(n+1))%(n+2)`
-/

namespace A220053.P10350376442709660528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220075 (A014132 (n + 1)).toNat) (n + 2 : ℤ)

end

end A220053.P10350376442709660528

noncomputable section

/-- A220053: Partial sums in rows of A130517, triangle read by rows.

Offset 1, canonical program `A220053.P10350376442709660528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7140 terms. -/
def A220053 (n : ℕ) : ℤ :=
  A220053.P10350376442709660528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7140 terms. -/
def A220053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222548.P12009654421931561066

`2*A024916(n+1)-A006218(n+1)`
-/

namespace A222548.P12009654421931561066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024916 (n + 1) - A006218 (n + 1)

end

end A222548.P12009654421931561066

noncomputable section

/-- A222548: a(n) = Sum_{k=1..n} floor(n/k)^2.

Offset 1, canonical program `A222548.P12009654421931561066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A222548 (n : ℕ) : ℤ :=
  A222548.P12009654421931561066.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A222548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A224770.P4749613609057412326

`A020725(eq[4, A000089(n+1)])`
-/

namespace A224770.P4749613609057412326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224770.P4749613609057412326

noncomputable section

/-- A224770: Numbers that are the primitive sum of two squares in exactly two ways.

Offset 1, canonical program `A224770.P4749613609057412326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 615 terms. -/
def A224770 (n : ℕ) : ℤ :=
  A224770.P4749613609057412326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 615 terms. -/
def A224770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224854.P17096122939360505849

`∩[A201804(n+1), A201816(n+1)]`
-/

namespace A224854.P17096122939360505849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224854.P17096122939360505849

noncomputable section

/-- A224854: Numbers n such that 90*n + 11 and 90*n + 13 are twin prime.

Offset 1, canonical program `A224854.P17096122939360505849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A224854 (n : ℕ) : ℤ :=
  (A224854.P17096122939360505849.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A224854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225822.P16967575723394986569

`2*A131323(n+1)+1`
-/

namespace A225822.P16967575723394986569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131323 (n + 1) + 1

end

end A225822.P16967575723394986569

noncomputable section

/-- A225822: Lesser of adjacent odd numbers with different parity of binary weight and both isolated from odd numbers of same parity of binary weight.

Offset 1, canonical program `A225822.P16967575723394986569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131323, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225822 (n : ℕ) : ℤ :=
  A225822.P16967575723394986569.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131323, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225837.P15943743665974385746

`eq[A189640(n+1), A284948(n+1)]`
-/

namespace A225837.P15943743665974385746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225837.P15943743665974385746

noncomputable section

/-- A225837: Numbers of form 2^i*3^j*(6k+1), i, j, k >= 0.

Offset 1, canonical program `A225837.P15943743665974385746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5025 terms. -/
def A225837 (n : ℕ) : ℤ :=
  (A225837.P15943743665974385746.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5025 terms. -/
def A225837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225887.P18168249121695771555

`6*a(n-1)-A006318(n)` with `a(0)=1`
-/

namespace A225887.P18168249121695771555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - A006318 n

end

end A225887.P18168249121695771555

noncomputable section

/-- A225887: a(n) = A212205(2*n + 1).

Offset 0, canonical program `A225887.P18168249121695771555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A225887 (n : ℕ) : ℤ :=
  A225887.P18168249121695771555.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A225887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225948.P11567398781708977786

`(A225975(n)-A106609(n+4))*A106609(n+4)`
-/

namespace A225948.P11567398781708977786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A225975 n - A106609 (n + 4)) * A106609 (n + 4)

end

end A225948.P11567398781708977786

noncomputable section

/-- A225948: a(0) = -1; for n>0, a(n) = numerator(1/4 - 4/n^2).

Offset 0, canonical program `A225948.P11567398781708977786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A225948 (n : ℕ) : ℤ :=
  A225948.P11567398781708977786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A225948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226693.P1469923415629545988

`A007913(A079896(n+1))`
-/

namespace A226693.P1469923415629545988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A079896 (n + 1)).toNat

end

end A226693.P1469923415629545988

noncomputable section

/-- A226693: Squarefree parts of A079896(n), n>= 1.

Offset 1, canonical program `A226693.P1469923415629545988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226693 (n : ℕ) : ℤ :=
  A226693.P1469923415629545988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226934.P2791961928592230860

`eq[0, A054025(2*(n+1))]+1`
-/

namespace A226934.P2791961928592230860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054025 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A226934.P2791961928592230860

noncomputable section

/-- A226934: Numbers k such that tau(2k) | sigma(2k).

Offset 1, canonical program `A226934.P2791961928592230860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226934 (n : ℕ) : ℤ :=
  (A226934.P2791961928592230860.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227182.P3655183784156601540

`A006527(A227177(n))-A227179(n)`
-/

namespace A227182.P3655183784156601540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 (A227177 n).toNat - A227179 n

end

end A227182.P3655183784156601540

noncomputable section

/-- A227182: Simple self-inverse permutation of natural numbers: List each block of n^2 - n + 1 numbers from ((n-1)^3 + 2*(n-1))/3 + 1 to (n^3 + 2*n)/3 in reverse order.

Offset 0, canonical program `A227182.P3655183784156601540`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227177, A227179, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227182 (n : ℕ) : ℤ :=
  A227182.P3655183784156601540.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227177, A227179, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227182.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227625.P4004230417441754442

`A010051(n+1)*A257075(n)`
-/

namespace A227625.P4004230417441754442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A257075 n

end

end A227625.P4004230417441754442

noncomputable section

/-- A227625: Indicator sequence of primes p > 3: k = p mod 6, if k = 5 then a(n) = -1, if k = 1 then a(n) = 1 else a(n) = 0, a(2) = -1, a(3) = 1.

Offset 1, canonical program `A227625.P4004230417441754442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1900 terms. -/
def A227625 (n : ℕ) : ℤ :=
  A227625.P4004230417441754442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1900 terms. -/
def A227625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227868.P6045472964894764945

`∩[A063226(3*n+5), A002808(n+1)]`
-/

namespace A227868.P6045472964894764945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227868.P6045472964894764945

noncomputable section

/-- A227868: Composite numbers congruent to 7 or 23 (mod 30).

Offset 1, canonical program `A227868.P6045472964894764945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. -/
def A227868 (n : ℕ) : ℤ :=
  (A227868.P6045472964894764945.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. -/
def A227868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227869.P7864650989961761614

`A128471(comp[A158573(n+1)])`
-/

namespace A227869.P7864650989961761614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158573 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A227869.P7864650989961761614

noncomputable section

/-- A227869: Composite numbers congruent to 7 (mod 30).

Offset 1, canonical program `A227869.P7864650989961761614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6748 terms. -/
def A227869 (n : ℕ) : ℤ :=
  A227869.P7864650989961761614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6748 terms. -/
def A227869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228102.P7143956737170160369

`eq[1, ∑{e}[A063960(2*n+1), #]]`
-/

namespace A228102.P7143956737170160369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228102.P7143956737170160369

noncomputable section

/-- A228102: Numbers n such that sum of all primes <=n is prime.

Offset 1, canonical program `A228102.P7143956737170160369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A228102 (n : ℕ) : ℤ :=
  (A228102.P7143956737170160369.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A228102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228372.P12115013803354651000

`A006218(A002808(n+1))-2*A002808(n+1)+1`
-/

namespace A228372.P12115013803354651000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A002808 (n + 1)).toNat - 2 * A002808 (n + 1) + 1

end

end A228372.P12115013803354651000

noncomputable section

/-- A228372: Number of nontrivial divisors in the first n composites.

Offset 1, canonical program `A228372.P12115013803354651000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228372 (n : ℕ) : ℤ :=
  A228372.P12115013803354651000.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229064.P12986880071610748840

`A084400(eq[2, A084400(n+2)-A084400(n+1)]+1)`
-/

namespace A229064.P12986880071610748840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 2) - A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A229064.P12986880071610748840

noncomputable section

/-- A229064: Lesser of Fermi-Dirac twin primes: both a(n)(>=5) and a(n)+2 are in A050376.

Offset 1, canonical program `A229064.P12986880071610748840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1291 terms. -/
def A229064 (n : ℕ) : ℤ :=
  A229064.P12986880071610748840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1291 terms. -/
def A229064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229335.P12546027953543292786

`A000203(n+1)*(A100587(n+1)+1)/2`
-/

namespace A229335.P12546027953543292786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * (A100587 (n + 1) + 1) : ℚ) / 2

end

end A229335.P12546027953543292786

noncomputable section

/-- A229335: Sum of sums of elements of subsets of divisors of n.

Offset 1, canonical program `A229335.P12546027953543292786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229335 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A229335.P12546027953543292786.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229335.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230403.P10181876793047725075

`A055881(n+1)-1`
-/

namespace A230403.P10181876793047725075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (n + 1) - 1

end

end A230403.P10181876793047725075

noncomputable section

/-- A230403: a(n) = the largest k such that (k+1)! divides n; the number of trailing zeros in the factorial base representation of n (A007623(n)).

Offset 1, canonical program `A230403.P10181876793047725075`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230403 (n : ℕ) : ℤ :=
  A230403.P10181876793047725075.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230654.P9728224852520061212

`eq[4, A051950(n+2)]+1`
-/

namespace A230654.P9728224852520061212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230654.P9728224852520061212

noncomputable section

/-- A230654: Numbers n such that tau(n+1) - tau(n) = 4, where tau(n) = the number of divisors of n (A000005).

Offset 1, canonical program `A230654.P9728224852520061212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1883 terms. -/
def A230654 (n : ℕ) : ℤ :=
  (A230654.P9728224852520061212.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1883 terms. -/
def A230654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231167.P16208437102851873404

`A024816(n+1)%A028310(A049820(n+1))`
-/

namespace A231167.P16208437102851873404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024816 (n + 1)) (A028310 (A049820 (n + 1)).toNat)

end

end A231167.P16208437102851873404

noncomputable section

/-- A231167: a(1) = a(2) = 0, for n>=3: (sum of non-divisors of n) modulo (number of non-divisors of n).

Offset 1, canonical program `A231167.P16208437102851873404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231167 (n : ℕ) : ℤ :=
  A231167.P16208437102851873404.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231550.P13029068904856309270

`A229763(n)+2*A292944(n)`
-/

namespace A231550.P13029068904856309270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 n + 2 * A292944 n

end

end A231550.P13029068904856309270

noncomputable section

/-- A231550: Permutation of nonnegative integers: for each bit[i] in the binary representation, except the most and the least significant bits, set bit[i] = bit[i] XOR bit[i-1], where bit[i-1] is the less significant bit, XOR is the binary logical exclusive or operator.

Offset 0, canonical program `A231550.P13029068904856309270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A231550 (n : ℕ) : ℤ :=
  A231550.P13029068904856309270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A231550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231587.P4482613944097138198

`eq[1, A010051(A001065(∑{d}[n+1, #])+1)]+1`
-/

namespace A231587.P4482613944097138198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001065 (∑ d ∈ Nat.divisors (f3 n), d) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A231587.P4482613944097138198

noncomputable section

/-- A231587: Numbers k such that sigma(sigma(k)) - sigma(k) + 1 is prime.

Offset 1, canonical program `A231587.P4482613944097138198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. -/
def A231587 (n : ℕ) : ℤ :=
  (A231587.P4482613944097138198.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. -/
def A231587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231624.P3333891316420223626

`A005100(eq[A125238(n+2), A125238(n+1)]+1)`
-/

namespace A231624.P3333891316420223626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125238 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A231624.P3333891316420223626

noncomputable section

/-- A231624: Smallest sets of 3 consecutive deficient numbers in arithmetic progression. The initial deficient number is listed.

Offset 1, canonical program `A231624.P3333891316420223626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A231624 (n : ℕ) : ℤ :=
  A231624.P3333891316420223626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A231624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231877.P9922668353028729998

`lt[n*char[A231876(n+1)], n]`
-/

namespace A231877.P9922668353028729998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231876 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A231877.P9922668353028729998

noncomputable section

/-- A231877: Numbers k such that omega(k)^2 (cf. A001221) does not divide k.

Offset 1, canonical program `A231877.P9922668353028729998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1300 terms. -/
def A231877 (n : ℕ) : ℤ :=
  (A231877.P9922668353028729998.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1300 terms. -/
def A231877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232096.P3607466228667116580

`A055881(A000217(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A232096.P3607466228667116580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A000217 (n + 1)).toNat

end

end A232096.P3607466228667116580

noncomputable section

/-- A232096: a(n) = largest m such that m! divides 1+2+...+n; a(n) = A055881(A000217(n)).

Offset 1, canonical program `A232096.P3607466228667116580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A232096 (n : ℕ) : ℤ :=
  A232096.P3607466228667116580.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A232096.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A232741.P5104032373726736522

`record[(n+1)/A055881(xor(n+1, A055881(n+1))+1)]`
-/

namespace A232741.P5104032373726736522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055881 (Int.xor (n + 1 : ℤ) (A055881 (n + 1)) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232741.P5104032373726736522

noncomputable section

/-- A232741: Numbers n for which the largest m such that (m-1)! divides n is a prime.

Offset 1, canonical program `A232741.P5104032373726736522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8748 terms. -/
def A232741 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A232741.P5104032373726736522.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8748 terms. -/
def A232741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232744.P13120240317739843502

`record[and(1, A055881(n+1))*(n+1)]`
-/

namespace A232744.P13120240317739843502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055881 (n + 1)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232744.P13120240317739843502

noncomputable section

/-- A232744: Numbers k for which the largest m such that m! divides k is odd.

Offset 1, canonical program `A232744.P13120240317739843502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6372 terms. -/
def A232744 (n : ℕ) : ℤ :=
  A232744.P13120240317739843502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6372 terms. -/
def A232744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233285.P7127810014733158196

`A055881(A000045(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233285.P7127810014733158196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A000045 (n + 1)).toNat

end

end A233285.P7127810014733158196

noncomputable section

/-- A233285: a(n) = largest m such that m! divides n-th Fibonacci number; a(n) = A055881(A000045(n)).

Offset 1, canonical program `A233285.P7127810014733158196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233285 (n : ℕ) : ℤ :=
  A233285.P7127810014733158196.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233285.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A233388.P9376784371074079915

`4*A091785(n+1)-1`
-/

namespace A233388.P9376784371074079915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A091785 (n + 1) - 1

end

end A233388.P9376784371074079915

noncomputable section

/-- A233388: Odious numbers that are the sum of 2 consecutive odious numbers.

Offset 1, canonical program `A233388.P9376784371074079915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233388 (n : ℕ) : ℤ :=
  A233388.P9376784371074079915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234306.P8708475813081284006

`n+1-A066660(n+1)`
-/

namespace A234306.P8708475813081284006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A066660 (n + 1)

end

end A234306.P8708475813081284006

noncomputable section

/-- A234306: a(n) = n + 1 - d(2n), where d(n) is the number of divisors of n.

Offset 1, canonical program `A234306.P8708475813081284006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234306 (n : ℕ) : ℤ :=
  A234306.P8708475813081284006.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234306.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A234695.P11730189554864400723

`p?[A234851(n+1)]`
-/

namespace A234695.P11730189554864400723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234695.P11730189554864400723

noncomputable section

/-- A234695: Primes p with prime(p) - p + 1 also prime.

Offset 1, canonical program `A234695.P11730189554864400723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2160 terms. -/
def A234695 (n : ℕ) : ℤ :=
  A234695.P11730189554864400723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2160 terms. -/
def A234695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235050.P8647976439226390156

`∪[A000040(n+1), A281292(n+1)]`
-/

namespace A235050.P8647976439226390156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235050.P8647976439226390156

noncomputable section

/-- A235050: Squarefree numbers such that none of their prime factors share common 1-bits in the same bit-position of their binary representations.

Offset 1, canonical program `A235050.P8647976439226390156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235050 (n : ℕ) : ℤ :=
  (A235050.P8647976439226390156.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236187.P5518244365376147795

`Δ[A008365(n+2)]`
-/

namespace A236187.P5518244365376147795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236187.P5518244365376147795

noncomputable section

/-- A236187: Differences between terms of compacting Eratosthenes sieve for prime(6) = 13.

Offset 1, canonical program `A236187.P5518244365376147795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A236187 (n : ℕ) : ℤ :=
  A236187.P5518244365376147795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A236187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236288.P3577133205354347482

`A000203(n+1)^A049820(n+1)`
-/

namespace A236288.P3577133205354347482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) ^ (A049820 (n + 1) : ℤ)

end

end A236288.P3577133205354347482

noncomputable section

/-- A236288: a(n) = sigma(n)^n / sigma(n)^tau(n), where tau(n) = A000005(n) = the number of divisors of n and sigma(n) = A000203(n) = the sum of divisors of n.

Offset 1, canonical program `A236288.P3577133205354347482`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236288.P3577133205354347482.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236288.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236333.P4796533297437747585

`A080425(n)+A109595(n+1)/A008620(n)`
-/

namespace A236333.P4796533297437747585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080425 n : ℚ) + (A109595 (n + 1) : ℚ) / (A008620 n : ℚ)

end

end A236333.P4796533297437747585

noncomputable section

/-- A236333: The (n-2)-th (n>=3) triple of terms gives coefficients of double trinomial P_n(x) = ((n-2)^2*x^2 + n*x + 2)/2 (see comment).

Offset 3, canonical program `A236333.P4796533297437747585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236333 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236333.P4796533297437747585.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236346.P11164933767683975448

`abs(1-Δ[A057050(n+1)])+1`
-/

namespace A236346.P11164933767683975448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (n + 1) - f1 n)| + 1

end

end A236346.P11164933767683975448

noncomputable section

/-- A236346: Manhattan distances between n^2 and (n+1)^2 in a left-aligned triangle with next M natural numbers in row M: 1, 2 3, 4 5 6, 7 8 9 10, etc.

Offset 1, canonical program `A236346.P11164933767683975448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A236346 (n : ℕ) : ℤ :=
  A236346.P11164933767683975448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A236346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236562.P16099528287106471554

`comp[A045765(n+1)]`
-/

namespace A236562.P16099528287106471554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236562.P16099528287106471554

noncomputable section

/-- A236562: Numbers n such that A049820(x) = n has a solution.

Offset 1, canonical program `A236562.P16099528287106471554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236562 (n : ℕ) : ℤ :=
  (A236562.P16099528287106471554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236564.P10217388441294843712

`Δ[A238455(n)]-A238455(n)`
-/

namespace A236564.P10217388441294843712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238455 n

end

end A236564.P10217388441294843712

noncomputable section

/-- A236564: Difference between 2^(2n-1) and the nearest square.

Offset 1, canonical program `A236564.P10217388441294843712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A236564 (n : ℕ) : ℤ :=
  A236564.P10217388441294843712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A236564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236627.P10038142205825407156

`A160812(n+1)/2`
-/

namespace A236627.P10038142205825407156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160812 (n + 1) : ℚ) / 2

end

end A236627.P10038142205825407156

noncomputable section

/-- A236627: Number of positive integers <= sqrt(n) not dividing n.

Offset 1, canonical program `A236627.P10038142205825407156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236627 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236627.P10038142205825407156.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236632.P7240843620257617603

`A024916(n+1)-A006218(n+1)`
-/

namespace A236632.P7240843620257617603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A006218 (n + 1)

end

end A236632.P7240843620257617603

noncomputable section

/-- A236632: Sum of all divisors of all positive integers <= n minus the total number of divisors of all positive integers <= n.

Offset 1, canonical program `A236632.P7240843620257617603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236632 (n : ℕ) : ℤ :=
  A236632.P7240843620257617603.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236632.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A237447.P14909047409678941906

`A237448(A038722(n+1))`
-/

namespace A237447.P14909047409678941906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237448 (A038722 (n + 1)).toNat

end

end A237447.P14909047409678941906

noncomputable section

/-- A237447: Infinite square array: row 1 is the positive integers 1, 2, 3, ..., and on any subsequent row n, n is moved to the front: n, 1, ..., n-1, n+1, n+2, ...

Offset 1, canonical program `A237447.P14909047409678941906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237447 (n : ℕ) : ℤ :=
  A237447.P14909047409678941906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237452.P4723187971781084873

`floor((A064866(n+1)-1)/A074279(n+1))`
-/

namespace A237452.P4723187971781084873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064866 (n + 1) - 1 : ℚ) / (A074279 (n + 1) : ℚ)⌋

end

end A237452.P4723187971781084873

noncomputable section

/-- A237452: Zero-based row index to irregular tables organized as successively larger square matrices.

Offset 1, canonical program `A237452.P4723187971781084873`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064866, A074279, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A237452 (n : ℕ) : ℤ :=
  A237452.P4723187971781084873.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064866, A074279, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A237452.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239186.P14905263038245322427

`A239056(n+1)-A239059(n+1)`
-/

namespace A239186.P14905263038245322427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) - A239059 (n + 1)

end

end A239186.P14905263038245322427

noncomputable section

/-- A239186: Sum of the largest two parts in the partitions of 4n into 4 parts with smallest part equal to 1.

Offset 1, canonical program `A239186.P14905263038245322427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239186 (n : ℕ) : ℤ :=
  A239186.P14905263038245322427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239734.P8539231742677177354

`∩[A023232(n+1), A023235(n+1)]`
-/

namespace A239734.P8539231742677177354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239734.P8539231742677177354

noncomputable section

/-- A239734: Primes p such that 8p+9 and 9p+8 are both prime.

Offset 1, canonical program `A239734.P8539231742677177354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239734 (n : ℕ) : ℤ :=
  (A239734.P8539231742677177354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239751.P7598983440700543939

`lt[A000120(n), A055640(n)]`
-/

namespace A239751.P7598983440700543939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239751.P7598983440700543939

noncomputable section

/-- A239751: Numbers whose number of nonzero binary digits is less than their number of nonzero decimal digits.

Offset 1, canonical program `A239751.P7598983440700543939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A239751 (n : ℕ) : ℤ :=
  (A239751.P7598983440700543939.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A239751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240135.P474311073820611688

`A000079(n+1)*A002808(n+1)/8`
-/

namespace A240135.P474311073820611688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A002808 (n + 1) : ℚ) / 8

end

end A240135.P474311073820611688

noncomputable section

/-- A240135: a(n) = composite(n)*2^(n - 3).

Offset 1, canonical program `A240135.P474311073820611688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240135 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A240135.P474311073820611688.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240135.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A242254.P1110677211204880734

`eq[2, A242252(n+1)+2]+2`
-/

namespace A242254.P1110677211204880734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242252 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242254.P1110677211204880734

noncomputable section

/-- A242254: Numbers k such that the k-th prime is primes-greedy summable, as defined at A242252.

Offset 1, canonical program `A242254.P1110677211204880734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A242254 (n : ℕ) : ℤ :=
  (A242254.P1110677211204880734.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A242254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243101.P11998295883853733435

`n*A002002(n+1)-A026003(2*n)`
-/

namespace A243101.P11998295883853733435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002002 (n + 1) - A026003 (2 * n)

end

end A243101.P11998295883853733435

noncomputable section

/-- A243101: a(n) = (sum_{k=0}^{n-1}(4*k^3-1)*C(n-1,k)*C(n+k,k))/n^2, where C(m,k) denotes the binomial coefficient m!/(k!*(m-k)!).

Offset 1, canonical program `A243101.P11998295883853733435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A243101 (n : ℕ) : ℤ :=
  A243101.P11998295883853733435.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A243101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243175.P5938399267973393760

`∩[A003136(n+1), A242660(n+1)]`
-/

namespace A243175.P5938399267973393760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243175.P5938399267973393760

noncomputable section

/-- A243175: Numbers of the form x^2 + xy + 7y^2.

Offset 1, canonical program `A243175.P5938399267973393760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7722 terms. -/
def A243175 (n : ℕ) : ℤ :=
  (A243175.P5938399267973393760.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7722 terms. -/
def A243175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243515.P1271760465107560758

`A099265(n+1)+2`
-/

namespace A243515.P1271760465107560758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099265 (n + 1) + 2

end

end A243515.P1271760465107560758

noncomputable section

/-- A243515: Number of length n+2 0..6 arrays with no three elements in a row with pattern aba or abb (with a!=b) and new values 0..6 introduced in 0..6 order.

Offset 1, canonical program `A243515.P1271760465107560758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A243515 (n : ℕ) : ℤ :=
  A243515.P1271760465107560758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A243515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244049.P15221357512083652868

`A153485(n+1)-n`
-/

namespace A244049.P15221357512083652868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (n + 1) - (n : ℤ)

end

end A244049.P15221357512083652868

noncomputable section

/-- A244049: Sum of all proper divisors of all positive integers <= n.

Offset 1, canonical program `A244049.P15221357512083652868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244049 (n : ℕ) : ℤ :=
  A244049.P15221357512083652868.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244214.P1769933716108538170

`A099907(A002808(n+1))`
-/

namespace A244214.P1769933716108538170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099907 (A002808 (n + 1)).toNat

end

end A244214.P1769933716108538170

noncomputable section

/-- A244214: a(n) = binomial(2*c-1, c-1) (mod c^3), where c is the n-th composite.

Offset 1, canonical program `A244214.P1769933716108538170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A244214 (n : ℕ) : ℤ :=
  A244214.P1769933716108538170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A244214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244219.P3223793585254741010

`record[A110654(n+1)*A244221(A110654(n))]`
-/

namespace A244219.P3223793585254741010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) * A244221 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244219.P3223793585254741010

noncomputable section

/-- A244219: The starting points of runs of consecutive terms with the same parity in A014418 (n represented in Greedy Catalan Base).

Offset 0, canonical program `A244219.P3223793585254741010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4122 terms. -/
def A244219 (n : ℕ) : ℤ :=
  A244219.P3223793585254741010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4122 terms. -/
def A244219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244220.P6843507714044978338

`1-A244221(n)`
-/

namespace A244220.P6843507714044978338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A244221 n

end

end A244220.P6843507714044978338

noncomputable section

/-- A244220: Binary complement of Greedy Catalan Base reduced modulo 2: a(n) = 1 - (A014418(n) modulo 2).

Offset 0, canonical program `A244220.P6843507714044978338`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244220 (n : ℕ) : ℤ :=
  A244220.P6843507714044978338.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244220.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244317.P585579045267430053

`∑[char[A294790(n)]]`
-/

namespace A244317.P585579045267430053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294790 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244317.P585579045267430053

noncomputable section

/-- A244317: n occurs A014138(n) times.

Offset 0, canonical program `A244317.P585579045267430053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244317 (n : ℕ) : ℤ :=
  (A244317.P585579045267430053.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244320.P4637654026684033109

`n-A014420(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244320.P4637654026684033109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A014420 n

end

end A244320.P4637654026684033109

noncomputable section

/-- A244320: a(n) = n - A014420(n).

Offset 0, canonical program `A244320.P4637654026684033109`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244320 (n : ℕ) : ℤ :=
  A244320.P4637654026684033109.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244320.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244578.P4846969564591678736

`A153485(A000040(n+1))`
-/

namespace A244578.P4846969564591678736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (A000040 (n + 1)).toNat

end

end A244578.P4846969564591678736

noncomputable section

/-- A244578: Sum of all aliquot divisors of all positive integers <= prime(n).

Offset 1, canonical program `A244578.P4846969564591678736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244578 (n : ℕ) : ℤ :=
  A244578.P4846969564591678736.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244578.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244741.P4318009301390436834

`∪[A049509(n+1), A016817(n)]`
-/

namespace A244741.P4318009301390436834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244741.P4318009301390436834

noncomputable section

/-- A244741: Numbers k such that (prime(k) mod 5) == 2 (mod 3).

Offset 1, canonical program `A244741.P4318009301390436834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244741 (n : ℕ) : ℤ :=
  (A244741.P4318009301390436834.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244748.P4413186087165087777

`eq[1, A053000(A007954(n))]`
-/

namespace A244748.P4413186087165087777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244748.P4413186087165087777

noncomputable section

/-- A244748: Numbers k such that (product of digits of k)^2 + 1 is prime.

Offset 1, canonical program `A244748.P4413186087165087777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2021 terms. -/
def A244748 (n : ℕ) : ℤ :=
  (A244748.P4413186087165087777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2021 terms. -/
def A244748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244964.P3595985512889717253

`∑{d}[n+1, A080995(#)]`
-/

namespace A244964.P3595985512889717253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080995 d

end

end A244964.P3595985512889717253

noncomputable section

/-- A244964: Number of distinct generalized pentagonal numbers dividing n.

Offset 1, canonical program `A244964.P3595985512889717253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244964 (n : ℕ) : ℤ :=
  A244964.P3595985512889717253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245196.P10632712264817359951

`∑{e}[A090996(A322015(n)), #]`
-/

namespace A245196.P10632712264817359951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A322015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A245196.P10632712264817359951

noncomputable section

/-- A245196: Write n>=1 as either n=2^k-2^r with 0 <= r <= k-1, in which case a(2^k-2^r)=wt(k-r-1), or as n=2^k-2^r+j with 2 <= r <= k-1, 1 <= j < 2^r-1, in which case a(2^k-2^r+j)=a(j)*wt(k-r-1) (where wt(i) = A000120(i)).

Offset 1, canonical program `A245196.P10632712264817359951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245196 (n : ℕ) : ℤ :=
  (A245196.P10632712264817359951.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245196.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A245656.P15725278773398703278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245656 (n : ℕ) : ℤ :=
  A245656.P15725278773398703278.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245656.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245908.P15352707288532766868

`A082863(A000040(n+1))`
-/

namespace A245908.P15352707288532766868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (A000040 (n + 1)).toNat

end

end A245908.P15352707288532766868

noncomputable section

/-- A245908: The number of distinct prime factors of prime(n)^2-1.

Offset 1, canonical program `A245908.P15352707288532766868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082863, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245908 (n : ℕ) : ℤ :=
  A245908.P15352707288532766868.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082863, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245908.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246295.P13667216619548819936

`A246294(n+1)-1`
-/

namespace A246295.P13667216619548819936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246294 (n + 1) - 1

end

end A246295.P13667216619548819936

noncomputable section

/-- A246295: Numbers k such that sin(k) < sin(k+1) < sin(k+2) > sin(k+3).

Offset 1, canonical program `A246295.P13667216619548819936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246295 (n : ℕ) : ℤ :=
  A246295.P13667216619548819936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246298.P9002022701830639785

`A246297(n+1)-1`
-/

namespace A246298.P9002022701830639785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246297 (n + 1) - 1

end

end A246298.P9002022701830639785

noncomputable section

/-- A246298: Numbers k such that sin(k) > sin(k+1) > sin(k+2) < sin(k+3).

Offset 1, canonical program `A246298.P9002022701830639785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246298 (n : ℕ) : ℤ :=
  A246298.P9002022701830639785.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246411.P12957659941039480171

`∩[A246410(n+1)-1, A246413(n+1)]`
-/

namespace A246411.P12957659941039480171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246410 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246411.P12957659941039480171

noncomputable section

/-- A246411: Positive integers k satisfying csc(k) > csc(k+1) < csc(k+2).

Offset 1, canonical program `A246411.P12957659941039480171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A246411 (n : ℕ) : ℤ :=
  (A246411.P12957659941039480171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A246411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246412.P12923232252521658891

`∩[A246413(n+1)-1, A246413(n+1)]`
-/

namespace A246412.P12923232252521658891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246412.P12923232252521658891

noncomputable section

/-- A246412: Positive integers k satisfying csc(k) > csc(k+1) > csc(k+2) < csc(k+3).

Offset 1, canonical program `A246412.P12923232252521658891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. -/
def A246412 (n : ℕ) : ℤ :=
  (A246412.P12923232252521658891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. -/
def A246412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246659.P12015513086948377768

`A132885(A054925(n+2)-1)`
-/

namespace A246659.P12015513086948377768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132885 (A054925 (n + 2) - 1).toNat

end

end A246659.P12015513086948377768

noncomputable section

/-- A246659: a(n) = binomial(n-h,h)*hypergeometric([h-n/2,h-(n-1)/2],[1],4), h = floor(n/4).

Offset 0, canonical program `A246659.P12015513086948377768`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132885, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246659 (n : ℕ) : ℤ :=
  A246659.P12015513086948377768.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132885, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247146.P7652991668944919018

`A034729(n+1)-2^n`
-/

namespace A247146.P7652991668944919018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034729 (n + 1) - (2 ^ n : ℤ)

end

end A247146.P7652991668944919018

noncomputable section

/-- A247146: As a binary numeral, the bit 2^(m-1) of a(n) is 1 iff m is a proper divisor of n.

Offset 1, canonical program `A247146.P7652991668944919018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034729, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247146 (n : ℕ) : ℤ :=
  A247146.P7652991668944919018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034729, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247146.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247492.P9749959557379015816

`and(-1, A098599(A007401(n+1)))`
-/

namespace A247492.P9749959557379015816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A098599 (A007401 (n + 1)).toNat)

end

end A247492.P9749959557379015816

noncomputable section

/-- A247492: Triangle read by rows: T(n, k) = binomial(k-1, n-k)*(n+1)/(n+1-k), 0 <= k <= n.

Offset 0, canonical program `A247492.P9749959557379015816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A247492 (n : ℕ) : ℤ :=
  A247492.P9749959557379015816.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A247492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247513.P11269454306953394611

`6^A001221(n+1)*A005361(n+1)`
-/

namespace A247513.P11269454306953394611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A001221 (n + 1) : ℤ) * (A005361 (n + 1) : ℚ)

end

end A247513.P11269454306953394611

noncomputable section

/-- A247513: Number of elements in the set {(x,y,z): 1<=x,y,z<=n, gcd(x,y,z)=1, lcm(x,y,z)=n}.

Offset 1, canonical program `A247513.P11269454306953394611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247513 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A247513.P11269454306953394611.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247514.P7173536372623960646

`comp[A247515(n+1)-1]+1`
-/

namespace A247514.P7173536372623960646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247515 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247514.P7173536372623960646

noncomputable section

/-- A247514: Numbers k such that 2*floor(sqrt(prime(k))) = floor(2*sqrt(prime(k))).

Offset 1, canonical program `A247514.P7173536372623960646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247514 (n : ℕ) : ℤ :=
  (A247514.P7173536372623960646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247623.P11285414761676532068

`ceil(A110110(n)/2)`
-/

namespace A247623.P11285414761676532068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110110 n : ℚ) / 2⌉

end

end A247623.P11285414761676532068

noncomputable section

/-- A247623: Number of paths from (0,0) to the line x = n, each segment given by a vector (1,1), (1,-1), or (2,0), not crossing the x-axis, and including no horizontal segment on the x-axis.

Offset 0, canonical program `A247623.P11285414761676532068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A247623 (n : ℕ) : ℤ :=
  A247623.P11285414761676532068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A247623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247898.P765327756351924158

`Δ[A247678(n+1)]`
-/

namespace A247898.P765327756351924158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247898.P765327756351924158

noncomputable section

/-- A247898: First differences of A247678.

Offset 1, canonical program `A247898.P765327756351924158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247898 (n : ℕ) : ℤ :=
  A247898.P765327756351924158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248056.P11690070156917874997

`2*A091785(n+1)`
-/

namespace A248056.P11690070156917874997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091785 (n + 1)

end

end A248056.P11690070156917874997

noncomputable section

/-- A248056: Positions of 0,0 in the Thue-Morse sequence (A010060).

Offset 1, canonical program `A248056.P11690070156917874997`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248056 (n : ℕ) : ℤ :=
  A248056.P11690070156917874997.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248056.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249032.P14324740470958142197

`Δ[A075326(n)]`
-/

namespace A249032.P14324740470958142197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249032.P14324740470958142197

noncomputable section

/-- A249032: First differences of A075326.

Offset 0, canonical program `A249032.P14324740470958142197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249032 (n : ℕ) : ℤ :=
  A249032.P14324740470958142197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249758.P12334685138373324996

`A038207(n)+A112857(n)-A010054(n)`
-/

namespace A249758.P12334685138373324996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + (A112857 n - A010054 n)

end

end A249758.P12334685138373324996

noncomputable section

/-- A249758: Triangular array of coefficients of polynomials p(n,x) = (x + 2)*p(n-1,x) + x, p(0,x) = 1.

Offset 0, canonical program `A249758.P12334685138373324996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. -/
def A249758 (n : ℕ) : ℤ :=
  A249758.P12334685138373324996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. -/
def A249758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250428.P396647338487410522

`sqrt(A250427(n+1)*A250429(n+1))`
-/

namespace A250428.P396647338487410522
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250427 (n + 1) * A250429 (n + 1) : ℝ)

end

end A250428.P396647338487410522

noncomputable section

/-- A250428: Number of (n+1)X(4+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250428.P396647338487410522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250428 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A250428.P396647338487410522.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252596.P10033558872996091197

`A008578(A000720(a(n-1)+1)+a(n-1)%3+1)` with `a(0)=5`
-/

namespace A252596.P10033558872996091197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A008578 (A000720 (a (n - 1) + 1).toNat + Int.tmod (a (n - 1)) 3 + 1).toNat

end

end A252596.P10033558872996091197

noncomputable section

/-- A252596: Let a(n-1)=p and k=pi(p); then a(n)=prime(k+mod(p,3)).

Offset 1, canonical program `A252596.P10033558872996091197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6204 terms. -/
def A252596 (n : ℕ) : ℤ :=
  A252596.P10033558872996091197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6204 terms. -/
def A252596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253769.P2452333697715072660

`A006218(A000040(n+1))`
-/

namespace A253769.P2452333697715072660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A000040 (n + 1)).toNat

end

end A253769.P2452333697715072660

noncomputable section

/-- A253769: Sum of number of divisors of all positive integers <= prime(n).

Offset 1, canonical program `A253769.P2452333697715072660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253769 (n : ℕ) : ℤ :=
  A253769.P2452333697715072660.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253769.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254462.P9385117643881402940

`A000040(A076300(n+1))`
-/

namespace A254462.P9385117643881402940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A076300 (n + 1)).toNat

end

end A254462.P9385117643881402940

noncomputable section

/-- A254462: Primes prime(n) such that prime(n) + 5*n is also prime.

Offset 1, canonical program `A254462.P9385117643881402940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1144 terms. -/
def A254462 (n : ℕ) : ℤ :=
  A254462.P9385117643881402940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1144 terms. -/
def A254462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255564.P8935569486323325449

`p?[A010051(A014499(n+1))+A000040(n+1)]`
-/

namespace A255564.P8935569486323325449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A014499 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255564.P8935569486323325449

noncomputable section

/-- A255564: Primes having in binary representation a nonprime number of 1's.

Offset 1, canonical program `A255564.P8935569486323325449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A255564 (n : ℕ) : ℤ :=
  A255564.P8935569486323325449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A255564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255646.P5317724431047081380

`A046316(n+1)%10`
-/

namespace A255646.P5317724431047081380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046316 (n + 1)) 10

end

end A255646.P5317724431047081380

noncomputable section

/-- A255646: Odd triprimes modulo 10.

Offset 1, canonical program `A255646.P5317724431047081380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255646 (n : ℕ) : ℤ :=
  A255646.P5317724431047081380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255849.P18420982419730115799

`A080995(A080995(A180446(n))+n)`
-/

namespace A255849.P18420982419730115799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 (A080995 (A180446 n).toNat + (n : ℤ)).toNat

end

end A255849.P18420982419730115799

noncomputable section

/-- A255849: Characteristic function of pentagonal numbers.

Offset 0, canonical program `A255849.P18420982419730115799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255849 (n : ℕ) : ℤ :=
  A255849.P18420982419730115799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256041.P8102863058900449500

`A129684(n)*A329918(n)`
-/

namespace A256041.P8102863058900449500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129684 n * A329918 n

end

end A256041.P8102863058900449500

noncomputable section

/-- A256041: Triangle read by rows: number of idempotent basis elements of rank k in Brauer monoid B_n.

Offset 0, canonical program `A256041.P8102863058900449500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. -/
def A256041 (n : ℕ) : ℤ :=
  A256041.P8102863058900449500.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. -/
def A256041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256276.P17919701624986751523

`(n+1)%3*A002654(n+1)`
-/

namespace A256276.P17919701624986751523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 3 : ℕ) : ℤ) * A002654 (n + 1)

end

end A256276.P17919701624986751523

noncomputable section

/-- A256276: Expansion of q * phi(q) * chi(q^3) * psi(-q^9) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

Offset 1, canonical program `A256276.P17919701624986751523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256276 (n : ℕ) : ℤ :=
  A256276.P17919701624986751523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256435.P229463995676631497

`A001481(n+2)-A001481(n+1)`
-/

namespace A256435.P229463995676631497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 2) - A001481 (n + 1)

end

end A256435.P229463995676631497

noncomputable section

/-- A256435: First differences of sums of two squares.

Offset 1, canonical program `A256435.P229463995676631497`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256435 (n : ℕ) : ℤ :=
  A256435.P229463995676631497.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256525.P14526080912117306426

`A001401(3*n)`
-/

namespace A256525.P14526080912117306426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (3 * n)

end

end A256525.P14526080912117306426

noncomputable section

/-- A256525: Number of partitions of 3n into at most 5 parts.

Offset 0, canonical program `A256525.P14526080912117306426`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256525 (n : ℕ) : ℤ :=
  A256525.P14526080912117306426.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256525.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256539.P11843571355159278284

`A001401(4*n)`
-/

namespace A256539.P11843571355159278284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (4 * n)

end

end A256539.P11843571355159278284

noncomputable section

/-- A256539: Number of partitions of 4n into at most 5 parts.

Offset 0, canonical program `A256539.P11843571355159278284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256539 (n : ℕ) : ℤ :=
  A256539.P11843571355159278284.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256539.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256690.P103638891413910646

`∏{e}[n+1, A004130(#)]`
-/

namespace A256690.P103638891413910646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A004130 (Nat.factorization (f1 n) p)

end

end A256690.P103638891413910646

noncomputable section

/-- A256690: From fourth root of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose fourth power is zeta function; sequence gives numerator of b(n).

Offset 1, canonical program `A256690.P103638891413910646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256690 (n : ℕ) : ℤ :=
  A256690.P103638891413910646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256967.P15746179834374025697

`A130235(n)+1-n`
-/

namespace A256967.P15746179834374025697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130235 n + (1 - (n : ℤ))

end

end A256967.P15746179834374025697

noncomputable section

/-- A256967: a(n) = A256966(n) + 1.

Offset 1, canonical program `A256967.P15746179834374025697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256967 (n : ℕ) : ℤ :=
  A256967.P15746179834374025697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257212.P17809962343028456933

`floor(A257213(Δ[n²])/2)`
-/

namespace A257212.P17809962343028456933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A257213 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌋

end

end A257212.P17809962343028456933

noncomputable section

/-- A257212: Least d>0 such that floor(n/d) - floor(n/(d+1)) <= 1.

Offset 0, canonical program `A257212.P17809962343028456933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A257212 (n : ℕ) : ℤ :=
  A257212.P17809962343028456933.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A257212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257231.P13727271294226121657

`((n+1)*(n+1))%A000040(∑[A010051(n+1)]+1)`
-/

namespace A257231.P13727271294226121657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) * (n + 1) : ℤ) (A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat)

end

end A257231.P13727271294226121657

noncomputable section

/-- A257231: a(n) = n^2 mod p where p is the least prime greater than n.

Offset 1, canonical program `A257231.P13727271294226121657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257231 (n : ℕ) : ℤ :=
  A257231.P13727271294226121657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257232.P2067052085947097727

`row(n)+1-col(n)-A010051(col(n)+1)`
-/

namespace A257232.P2067052085947097727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) - A010051 (SequenceMachineLib.triCol n + 1)

end

end A257232.P2067052085947097727

noncomputable section

/-- A257232: Triangle T(n, k) with the natural numbers in columns with nonprime k and the nonnegative numbers in columns with prime k, for 1 <= k <= n.

Offset 1, canonical program `A257232.P2067052085947097727`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257232 (n : ℕ) : ℤ :=
  A257232.P2067052085947097727.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257232.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257346.P9480988822245406268

`lt[A035162(n+1), 1]+1`
-/

namespace A257346.P9480988822245406268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035162 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A257346.P9480988822245406268

noncomputable section

/-- A257346: Numbers not of the form x^2+xy+2y^2.

Offset 1, canonical program `A257346.P9480988822245406268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A257346 (n : ℕ) : ℤ :=
  (A257346.P9480988822245406268.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A257346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257499.P1186898740780545041

`2*A258415(n+1)-1`
-/

namespace A257499.P1186898740780545041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258415 (n + 1) - 1

end

end A257499.P1186898740780545041

noncomputable section

/-- A257499: Array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = (1 + 2^n*(6*k-3+2*(-1)^n))/3, n,k >= 1.

Offset 1, canonical program `A257499.P1186898740780545041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257499 (n : ℕ) : ℤ :=
  A257499.P1186898740780545041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258599.P9587233461388836766

`A348018(A000040(n+1))`
-/

namespace A258599.P9587233461388836766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 (A000040 (n + 1)).toNat

end

end A258599.P9587233461388836766

noncomputable section

/-- A258599: a(n) is the index m such that A001694(m) = prime(n)^2.

Offset 1, canonical program `A258599.P9587233461388836766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258599 (n : ℕ) : ℤ :=
  A258599.P9587233461388836766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258746.P7650068295521346496

`A054429(A165199(n+1))`
-/

namespace A258746.P7650068295521346496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A165199 (n + 1)).toNat

end

end A258746.P7650068295521346496

noncomputable section

/-- A258746: Permutation of the positive integers: this permutation transforms the enumeration system of positive irreducible fractions A007305/A047679 (Stern-Brocot) into the enumeration system A162909/A162910 (Bird), and vice versa.

Offset 1, canonical program `A258746.P7650068295521346496`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258746 (n : ℕ) : ℤ :=
  A258746.P7650068295521346496.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258976.P4357151660865668430

`eq[1, A053000(A000203(n+1))]+1`
-/

namespace A258976.P4357151660865668430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258976.P4357151660865668430

noncomputable section

/-- A258976: Numbers n such that 1 + sigma(n)^2 is prime.

Offset 1, canonical program `A258976.P4357151660865668430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A258976 (n : ℕ) : ℤ :=
  (A258976.P4357151660865668430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A258976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259029.P359648338578640876

`∑[A259024(n+1)]`
-/

namespace A259029.P359648338578640876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259029.P359648338578640876

noncomputable section

/-- A259029: Partial sums of A259024.

Offset 1, canonical program `A259029.P359648338578640876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259029 (n : ℕ) : ℤ :=
  A259029.P359648338578640876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259309.P893002542035354465

`eq[1, A193929(∑{d}[n, #])]`
-/

namespace A259309.P893002542035354465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259309.P893002542035354465

noncomputable section

/-- A259309: Numbers k such that 1 + sigma(k)^4 is prime.

Offset 1, canonical program `A259309.P893002542035354465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A259309 (n : ℕ) : ℤ :=
  (A259309.P893002542035354465.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A259309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259977.P15727269731360921676

`A070824(A005381(n+1))`
-/

namespace A259977.P15727269731360921676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A005381 (n + 1)).toNat

end

end A259977.P15727269731360921676

noncomputable section

/-- A259977: Number of proper divisors of A005381(n).

Offset 1, canonical program `A259977.P15727269731360921676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005381, A070824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A259977 (n : ℕ) : ℤ :=
  A259977.P15727269731360921676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005381, A070824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A259977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260187.P12900667191599328450

`(n+1)%A260188(n+1)`
-/

namespace A260187.P12900667191599328450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A260188 (n + 1))

end

end A260187.P12900667191599328450

noncomputable section

/-- A260187: a(n) = n modulo the greatest primorial <= n.

Offset 1, canonical program `A260187.P12900667191599328450`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260187 (n : ℕ) : ℤ :=
  A260187.P12900667191599328450.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260187.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261189.P8766923628387180142

`∩[A039116(n+1), A052413(n+1)]`
-/

namespace A261189.P8766923628387180142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261189.P8766923628387180142

noncomputable section

/-- A261189: Integers such that no subsequence of decimal representation is divisible by 5.

Offset 1, canonical program `A261189.P8766923628387180142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A261189 (n : ℕ) : ℤ :=
  (A261189.P8766923628387180142.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A261189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262190.P7057828386404779220

`A055640(∑{digits}[n, 4^#]%4+10*n)`
-/

namespace A262190.P7057828386404779220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 4 ^ x).sum % 4 + 10 * n)

end

end A262190.P7057828386404779220

noncomputable section

/-- A262190: Number of distinct palindromes contained as substrings in the decimal representation of n.

Offset 0, canonical program `A262190.P7057828386404779220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A262190 (n : ℕ) : ℤ :=
  A262190.P7057828386404779220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A262190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262209.P6934688457999335665

`∑{d}[n+1, A002654(#)]`
-/

namespace A262209.P6934688457999335665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d

end

end A262209.P6934688457999335665

noncomputable section

/-- A262209: Inverse Möbius transform of A002654.

Offset 1, canonical program `A262209.P6934688457999335665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262209 (n : ℕ) : ℤ :=
  A262209.P6934688457999335665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262676.P18432955920466000923

`1-A000035(n)+a(A049820(n))` with `a(0)=0, a(1)=0, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262676.P18432955920466000923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  1 - A000035 n + a (A049820 n).toNat

end

end A262676.P18432955920466000923

noncomputable section

/-- A262676: Number of nonzero even numbers encountered when iterating A049820 starting from n: a(0) = 0 and for n >= 1, a(n) = (1-A000035(n)) + a(A049820(n)).

Offset 0, canonical program `A262676.P18432955920466000923`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262676 (n : ℕ) : ℤ :=
  A262676.P18432955920466000923.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262676.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262677.P4700777990299745989

`A000035(n)+a(A049820(n))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262677.P4700777990299745989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000035 n + a (A049820 n).toNat

end

end A262677.P4700777990299745989

noncomputable section

/-- A262677: Number of odd numbers encountered when iterating A049820 starting from n: a(0) = 0 and for n >= 1, a(n) = A000035(n) + a(A049820(n)).

Offset 0, canonical program `A262677.P4700777990299745989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262677 (n : ℕ) : ℤ :=
  A262677.P4700777990299745989.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262680.P1054294860154401112

`A010052(n)+a(A049820(n))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262680.P1054294860154401112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A010052 n + a (A049820 n).toNat

end

end A262680.P1054294860154401112

noncomputable section

/-- A262680: Number of squares encountered before zero is reached when iterating A049820 starting from n: a(0) = 0 and for n >= 1, a(n) = A010052(n) + a(A049820(n)).

Offset 0, canonical program `A262680.P1054294860154401112`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262680 (n : ℕ) : ℤ :=
  A262680.P1054294860154401112.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262780.P16622817894387421388

`(1-and(2, n))*A033762(n)`
-/

namespace A262780.P16622817894387421388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A033762 n

end

end A262780.P16622817894387421388

noncomputable section

/-- A262780: Expansion of phi(-x^6) * psi(x^4) + x * phi(-x^2) * psi(x^12) in powers of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A262780.P16622817894387421388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262780 (n : ℕ) : ℤ :=
  A262780.P16622817894387421388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262902.P11731694572782474747

`A049820(A045765(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262902.P11731694572782474747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A045765 (n + 1)).toNat

end

end A262902.P11731694572782474747

noncomputable section

/-- A262902: a(n) = A049820(A045765(n)); parent-nodes of the leaves of the tree generated by edge-relation A049820(child) = parent.

Offset 1, canonical program `A262902.P11731694572782474747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045765, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262902 (n : ℕ) : ℤ :=
  A262902.P11731694572782474747.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045765, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A263737.P10222005666591300491

`filter[A022544(n+1), A152822(#)]`
-/

namespace A263737.P10222005666591300491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A263737.P10222005666591300491

noncomputable section

/-- A263737: Nonnegative integers that are the difference of two squares but not the sum of two squares.

Offset 1, canonical program `A263737.P10222005666591300491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A263737 (n : ℕ) : ℤ :=
  A263737.P10222005666591300491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A263737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265409.P1403475869823103822

`A265410(n+2)-1`
-/

namespace A265409.P1403475869823103822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265410 (n + 2) - 1

end

end A265409.P1403475869823103822

noncomputable section

/-- A265409: a(n) = index to the nearest inner neighbor in Ulam-style square-spirals using zero-based indexing.

Offset 1, canonical program `A265409.P1403475869823103822`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265409 (n : ℕ) : ℤ :=
  A265409.P1403475869823103822.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266216.P13454128615488846391

`A266155(A113638(n))`
-/

namespace A266216.P13454128615488846391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266155 (A113638 n).toNat

end

end A266216.P13454128615488846391

noncomputable section

/-- A266216: Triangle read by rows giving successive states of cellular automaton generated by "Rule 7" initiated with a single ON (black) cell.

Offset 0, canonical program `A266216.P13454128615488846391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266216 (n : ℕ) : ℤ :=
  A266216.P13454128615488846391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266282.P9763437976714295326

`A266978(n)*A267704(n)`
-/

namespace A266282.P9763437976714295326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266978 n * A267704 n

end

end A266282.P9763437976714295326

noncomputable section

/-- A266282: Triangle read by rows giving successive states of cellular automaton generated by "Rule 13" initiated with a single ON (black) cell.

Offset 0, canonical program `A266282.P9763437976714295326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266282 (n : ℕ) : ℤ :=
  A266282.P9763437976714295326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266284.P1267948026619733313

`A266980(n)-Δ[A266980(A052928(n))]`
-/

namespace A266284.P1267948026619733313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266980 (A052928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266980 n - (f1 (n + 1) - f1 n)

end

end A266284.P1267948026619733313

noncomputable section

/-- A266284: Decimal representation of the n-th iteration of the "Rule 13" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266284.P1267948026619733313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266284 (n : ℕ) : ℤ :=
  A266284.P1267948026619733313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266502.P4655632228616341608

`and(A009191(n+1), A118175(n))`
-/

namespace A266502.P4655632228616341608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009191 (n + 1)) (A118175 n)

end

end A266502.P4655632228616341608

noncomputable section

/-- A266502: Triangle read by rows giving successive states of cellular automaton generated by "Rule 28" initiated with a single ON (black) cell.

Offset 0, canonical program `A266502.P4655632228616341608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266502 (n : ℕ) : ℤ :=
  A266502.P4655632228616341608.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266516.P4933571818406255111

`or(A051049(n), A266176(n))`
-/

namespace A266516.P4933571818406255111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A266176 n)

end

end A266516.P4933571818406255111

noncomputable section

/-- A266516: Decimal representation of the n-th iteration of the "Rule 29" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266516.P4933571818406255111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266516 (n : ℕ) : ℤ :=
  A266516.P4933571818406255111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266840.P13252579903726433232

`A267053(n)*A267704(n)`
-/

namespace A266840.P13252579903726433232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267053 n * A267704 n

end

end A266840.P13252579903726433232

noncomputable section

/-- A266840: Triangle read by rows giving successive states of cellular automaton generated by "Rule 69" initiated with a single ON (black) cell.

Offset 0, canonical program `A266840.P13252579903726433232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266840 (n : ℕ) : ℤ :=
  A266840.P13252579903726433232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267576.P1331191262355786054

`A267605((2*n)%(n+2))`
-/

namespace A267576.P1331191262355786054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267605 (2 * n % (n + 2))

end

end A267576.P1331191262355786054

noncomputable section

/-- A267576: Triangle read by rows giving successive states of cellular automaton generated by "Rule 167" initiated with a single ON (black) cell.

Offset 0, canonical program `A267576.P1331191262355786054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267576 (n : ℕ) : ℤ :=
  A267576.P1331191262355786054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268235.P3437335353854557803

`∑[A034729(n+1)]`
-/

namespace A268235.P3437335353854557803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268235.P3437335353854557803

noncomputable section

/-- A268235: a(n) = Sum_{k=1..n} floor(n/k)*2^(k-1).

Offset 1, canonical program `A268235.P3437335353854557803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A268235 (n : ℕ) : ℤ :=
  A268235.P3437335353854557803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A268235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268443.P9208057385295223950

`(A005705(n)-A268444(n))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268443.P9208057385295223950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005705 n - A268444 n : ℚ) / 4

end

end A268443.P9208057385295223950

noncomputable section

/-- A268443: a(n) = (A005705(n) - A268444(n))/4.

Offset 0, canonical program `A268443.P9208057385295223950`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268443 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268443.P9208057385295223950.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268443.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269345.P4206844201345878076

`A061673(n+1)-1`
-/

namespace A269345.P4206844201345878076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1) - 1

end

end A269345.P4206844201345878076

noncomputable section

/-- A269345: Smaller of two consecutive odd numbers that are composites.

Offset 1, canonical program `A269345.P4206844201345878076`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269345 (n : ℕ) : ℤ :=
  A269345.P4206844201345878076.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269346.P749959525114442858

`A016755(lt[2, A121842(2*n+1)])`
-/

namespace A269346.P749959525114442858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A269346.P749959525114442858

noncomputable section

/-- A269346: Perfect cubes that are not the difference of two primes.

Offset 1, canonical program `A269346.P749959525114442858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4480 terms. -/
def A269346 (n : ℕ) : ℤ :=
  A269346.P749959525114442858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4480 terms. -/
def A269346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269362.P8803330186499929129

`A269849(n+7)-6`
-/

namespace A269362.P8803330186499929129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269849 (n + 7) - 6

end

end A269362.P8803330186499929129

noncomputable section

/-- A269362: Least monotonic left inverse of A269389.

Offset 1, canonical program `A269362.P8803330186499929129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269362 (n : ℕ) : ℤ :=
  A269362.P8803330186499929129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269389.P385461570029580666

`A270189(n+7)-6`
-/

namespace A269389.P385461570029580666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (n + 7) - 6

end

end A269389.P385461570029580666

noncomputable section

/-- A269389: Numbers n for which prime(n+7)-prime(n+6) is not a multiple of three.

Offset 1, canonical program `A269389.P385461570029580666`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270189, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269389 (n : ℕ) : ℤ :=
  A269389.P385461570029580666.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270189, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269389.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270050.P15374850051776029815

`2*A003136(n+1)`
-/

namespace A270050.P15374850051776029815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003136 (n + 1)

end

end A270050.P15374850051776029815

noncomputable section

/-- A270050: Numbers of the form 2 * (x^2 + xy + y^2).

Offset 1, canonical program `A270050.P15374850051776029815`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270050 (n : ℕ) : ℤ :=
  A270050.P15374850051776029815.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270543.P5734163756768148192

`A226355(n)-A270544(n)`
-/

namespace A270543.P5734163756768148192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226355 n - A270544 n

end

end A270543.P5734163756768148192

noncomputable section

/-- A270543: Number of ordered pairs (i,j) of integers with |i|, |j| <= n, |i * j| <= n, and i even.

Offset 0, canonical program `A270543.P5734163756768148192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A226355, A270544, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270543 (n : ℕ) : ℤ :=
  A270543.P5734163756768148192.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A226355, A270544, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270543.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270672.P7077653201386938758

`3*A003136(n+1)`
-/

namespace A270672.P7077653201386938758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003136 (n + 1)

end

end A270672.P7077653201386938758

noncomputable section

/-- A270672: Löschian numbers (A003136) that are multiples of 3.

Offset 1, canonical program `A270672.P7077653201386938758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270672 (n : ℕ) : ℤ :=
  A270672.P7077653201386938758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271185.P10888630706129519928

`A000578(A003136(n+2)-1)+1`
-/

namespace A271185.P10888630706129519928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A003136 (n + 2) - 1).toNat + 1

end

end A271185.P10888630706129519928

noncomputable section

/-- A271185: Löschian numbers (A003136) of the form k^3+1.

Offset 1, canonical program `A271185.P10888630706129519928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A271185 (n : ℕ) : ℤ :=
  A271185.P10888630706129519928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A271185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271342.P3433703997216414430

`A024916(n+1)-A078471(n+1)`
-/

namespace A271342.P3433703997216414430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A078471 (n + 1)

end

end A271342.P3433703997216414430

noncomputable section

/-- A271342: Sum of all even divisors of all positive integers <= n.

Offset 1, canonical program `A271342.P3433703997216414430`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271342 (n : ℕ) : ℤ :=
  A271342.P3433703997216414430.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272400.P14985379741189153101

`A008578(row(n)-col(n)+1)*A000203(col(n)+1)`
-/

namespace A272400.P14985379741189153101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A000203 (SequenceMachineLib.triCol n + 1)

end

end A272400.P14985379741189153101

noncomputable section

/-- A272400: Square array read by antidiagonals upwards in which T(n,k) is the product of the n-th noncomposite number and the sum of the divisors of k, n>=1, k>=1.

Offset 1, canonical program `A272400.P14985379741189153101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272400 (n : ℕ) : ℤ :=
  A272400.P14985379741189153101.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272400.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272441.P11204430094904168973

`filter[A380788(n+1), A010051(#)]`
-/

namespace A272441.P11204430094904168973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A272441.P11204430094904168973

noncomputable section

/-- A272441: Primes with a prime number of binary digits.

Offset 1, canonical program `A272441.P11204430094904168973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1052 terms. -/
def A272441 (n : ℕ) : ℤ :=
  A272441.P11204430094904168973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1052 terms. -/
def A272441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272799.P16823547657693806826

`(A069977(n+1)+1)/2`
-/

namespace A272799.P16823547657693806826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069977 (n + 1) + 1 : ℚ) / 2

end

end A272799.P16823547657693806826

noncomputable section

/-- A272799: Numbers k such that 2*k - 1 and 2*k + 1 are squarefree.

Offset 1, canonical program `A272799.P16823547657693806826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272799 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A272799.P16823547657693806826.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272799.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274224.P8691790841403696657

`lcm(A273972(A052928(n)), A274473(n))`
-/

namespace A274224.P8691790841403696657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A273972 (A052928 n).toNat) (A274473 n)

end

end A274224.P8691790841403696657

noncomputable section

/-- A274224: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A274224.P8691790841403696657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A274224 (n : ℕ) : ℤ :=
  (A274224.P8691790841403696657.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A274224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274322.P9926579910520313793

`A001401(n²)`
-/

namespace A274322.P9926579910520313793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (n ^ 2)

end

end A274322.P9926579910520313793

noncomputable section

/-- A274322: Number of partitions of n^2 into at most five parts.

Offset 0, canonical program `A274322.P9926579910520313793`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274322 (n : ℕ) : ℤ :=
  A274322.P9926579910520313793.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274322.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274849.P9410595466255153933

`∩[A005101(n+1)-1, A160007(n+1)]`
-/

namespace A274849.P9410595466255153933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274849.P9410595466255153933

noncomputable section

/-- A274849: Isolated deficient numbers.

Offset 1, canonical program `A274849.P9410595466255153933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 822 terms. -/
def A274849 (n : ℕ) : ℤ :=
  (A274849.P9410595466255153933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 822 terms. -/
def A274849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275392.P15222088404269922783

`A000073(A278045(n+1)+3)`
-/

namespace A275392.P15222088404269922783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A278045 (n + 1) + 3).toNat

end

end A275392.P15222088404269922783

noncomputable section

/-- A275392: Smallest term in the tribonacci Zeckendorf representation of n.

Offset 1, canonical program `A275392.P15222088404269922783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A275392 (n : ℕ) : ℤ :=
  A275392.P15222088404269922783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A275392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275770.P3960562547820392168

`∩[A003627(n+1), A068497(n+1)]`
-/

namespace A275770.P3960562547820392168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P3960562547820392168

noncomputable section

/-- A275770: Primes p == 5 (mod 6) that are not Sophie Germain primes.

Offset 1, canonical program `A275770.P3960562547820392168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5012 terms. -/
def A275770 (n : ℕ) : ℤ :=
  (A275770.P3960562547820392168.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5012 terms. -/
def A275770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275991.P2384493440369064135

`A000040(A002808(n+1))-A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275991.P2384493440369064135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002808 (n + 1)).toNat - A000040 (n + 1)

end

end A275991.P2384493440369064135

noncomputable section

/-- A275991: a(n) = prime(composite(n)) - prime(n).

Offset 1, canonical program `A275991.P2384493440369064135`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275991 (n : ℕ) : ℤ :=
  A275991.P2384493440369064135.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276542.P6729285358371022252

`eq[A063440(n+1), A063440(n+2)]+1`
-/

namespace A276542.P6729285358371022252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276542.P6729285358371022252

noncomputable section

/-- A276542: Numbers k such that the k-th and (k+1)st triangular numbers have the same number of divisors.

Offset 1, canonical program `A276542.P6729285358371022252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276542 (n : ℕ) : ℤ :=
  (A276542.P6729285358371022252.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276577.P15427546300831290763

`A255415(n+1)%11`
-/

namespace A276577.P15427546300831290763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255415 (n + 1)) 11

end

end A276577.P15427546300831290763

noncomputable section

/-- A276577: Row 5 of A276580: a(n) = A255415(n) modulo 11.

Offset 1, canonical program `A276577.P15427546300831290763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276577 (n : ℕ) : ℤ :=
  A276577.P15427546300831290763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276936.P4504177896743748025

`eq[char[A325130(n+1)], A000007(n)]`
-/

namespace A276936.P4504177896743748025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276936.P4504177896743748025

noncomputable section

/-- A276936: Numbers m with at least one distinct prime factor prime(k) such that prime(k)^k divides, but prime(k)^(k+1) does not divide m.

Offset 1, canonical program `A276936.P4504177896743748025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3103 terms. -/
def A276936 (n : ℕ) : ℤ :=
  (A276936.P4504177896743748025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3103 terms. -/
def A276936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277166.P3337470438737064914

`record[gcd(n, A114338(n))]`
-/

namespace A277166.P3337470438737064914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A114338 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277166.P3337470438737064914

noncomputable section

/-- A277166: Numbers m such that m divides the number of divisors of m!!.

Offset 1, canonical program `A277166.P3337470438737064914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A277166 (n : ℕ) : ℤ :=
  (A277166.P3337470438737064914.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A277166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277327.P2410345354115847540

`A277314(or(1, n))-∏{e}[and(n+1, -n), #]`
-/

namespace A277327.P2410345354115847540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277314 (Nat.lor 1 n) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A277327.P2410345354115847540

noncomputable section

/-- A277327: Number of distinct primes dividing gcd(A260443(n), A260443(n+1)): a(n) = A001221(A277198(n)).

Offset 0, canonical program `A277327.P2410345354115847540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277327 (n : ℕ) : ℤ :=
  A277327.P2410345354115847540.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277368.P2770458880963617441

`eq[0, A160550(n+1)]+1`
-/

namespace A277368.P2770458880963617441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277368.P2770458880963617441

noncomputable section

/-- A277368: Numbers such that the number of their divisors divide the sum of their aliquot parts.

Offset 1, canonical program `A277368.P2770458880963617441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A277368 (n : ℕ) : ℤ :=
  (A277368.P2770458880963617441.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A277368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277965.P4665117588498832647

`A007090(A337250(n+1))`
-/

namespace A277965.P4665117588498832647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A337250 (n + 1)).toNat

end

end A277965.P4665117588498832647

noncomputable section

/-- A277965: Numbers whose largest decimal digit is 3.

Offset 1, canonical program `A277965.P4665117588498832647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8057 terms. -/
def A277965 (n : ℕ) : ℤ :=
  A277965.P4665117588498832647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8057 terms. -/
def A277965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278354.P2699865306502681676

`A265359(A080037(n)-1)-A265359(n+1)`
-/

namespace A278354.P2699865306502681676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (A080037 n - 1).toNat - A265359 (n + 1)

end

end A278354.P2699865306502681676

noncomputable section

/-- A278354: Number of neighbors of each new term in a square spiral.

Offset 1, canonical program `A278354.P2699865306502681676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9802 terms. -/
def A278354 (n : ℕ) : ℤ :=
  A278354.P2699865306502681676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9802 terms. -/
def A278354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278545.P6824174565856992994

`A318460(a(1-A103451(n))+1)` with `a(0)=3`
-/

namespace A278545.P6824174565856992994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A318460 (a (1 - A103451 n).toNat + 1).toNat

end

end A278545.P6824174565856992994

noncomputable section

/-- A278545: Number of neighbors of the n-th term in a full square array read by antidiagonals.

Offset 1, canonical program `A278545.P6824174565856992994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278545 (n : ℕ) : ℤ :=
  A278545.P6824174565856992994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278908.P3432667754633221191

`∏{e}[n+1, A034444(#)]`
-/

namespace A278908.P3432667754633221191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A034444 (Nat.factorization (f1 n) p)

end

end A278908.P3432667754633221191

noncomputable section

/-- A278908: Multiplicative with a(p^e) = 2^omega(e), where omega = A001221.

Offset 1, canonical program `A278908.P3432667754633221191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278908 (n : ℕ) : ℤ :=
  A278908.P3432667754633221191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278997.P18380770767987263801

`A189716(n+1)-1`
-/

namespace A278997.P18380770767987263801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1) - 1

end

end A278997.P18380770767987263801

noncomputable section

/-- A278997: Numbers of the form (3h+2)*3^(2k)-1 or (3h+1)*3^(2k+1)-1 for h,k in N.

Offset 1, canonical program `A278997.P18380770767987263801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278997 (n : ℕ) : ℤ :=
  A278997.P18380770767987263801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279436.P15978742674708459391

`A062298(n+1)-A033273(n+1)`
-/

namespace A279436.P15978742674708459391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A033273 (n + 1)

end

end A279436.P15978742674708459391

noncomputable section

/-- A279436: Number of nonprimes less than or equal to n that do not divide n.

Offset 1, canonical program `A279436.P15978742674708459391`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279436 (n : ℕ) : ℤ :=
  A279436.P15978742674708459391.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279436.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279455.P2237740548424145724

`lt[(n+1)%A033273(n+1), 1]+1`
-/

namespace A279455.P2237740548424145724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A033273 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A279455.P2237740548424145724

noncomputable section

/-- A279455: Numbers n such that the number of nonprime divisors of n divides n.

Offset 1, canonical program `A279455.P2237740548424145724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279455 (n : ℕ) : ℤ :=
  (A279455.P2237740548424145724.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279456.P8910636171519638710

`∩[A028260(n+1), A030230(n+1)]`
-/

namespace A279456.P8910636171519638710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279456.P8910636171519638710

noncomputable section

/-- A279456: Numbers k such that number of distinct primes dividing k is odd and number of prime divisors (counted with multiplicity) of k is even.

Offset 1, canonical program `A279456.P8910636171519638710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2645 terms. -/
def A279456 (n : ℕ) : ℤ :=
  (A279456.P8910636171519638710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2645 terms. -/
def A279456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280046.P8165045859776700570

`and(A003188(n), A057215(A004526(3*(n+1))))`
-/

namespace A280046.P8165045859776700570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003188 n) (A057215 (A004526 (3 * (n + 1))).toNat)

end

end A280046.P8165045859776700570

noncomputable section

/-- A280046: Image of A053838 under the morphism 0 -> 0000, 1 -> 0100, 2 -> 0110.

Offset 0, canonical program `A280046.P8165045859776700570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A280046 (n : ℕ) : ℤ :=
  A280046.P8165045859776700570.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A280046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280266.P6389486118769418393

`p?[A008578(n+1)*A013632(A048448(n))]`
-/

namespace A280266.P6389486118769418393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A013632 (A048448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280266.P6389486118769418393

noncomputable section

/-- A280266: Primes such that the previous prime plus the next prime plus 1 is also prime.

Offset 1, canonical program `A280266.P6389486118769418393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A280266 (n : ℕ) : ℤ :=
  A280266.P6389486118769418393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A280266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280420.P7252291216696291508

`A007955(A000142(n))`
-/

namespace A280420.P7252291216696291508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A000142 n).toNat

end

end A280420.P7252291216696291508

noncomputable section

/-- A280420: Product of divisors of n!.

Offset 0, canonical program `A280420.P7252291216696291508`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280420 (n : ℕ) : ℤ :=
  A280420.P7252291216696291508.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280420.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280581.P8181820732496802656

`A007955(A000203(n+1))`
-/

namespace A280581.P8181820732496802656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A000203 (n + 1)).toNat

end

end A280581.P8181820732496802656

noncomputable section

/-- A280581: a(n) = the product of divisors of sum of divisors of n.

Offset 1, canonical program `A280581.P8181820732496802656`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280581 (n : ℕ) : ℤ :=
  A280581.P8181820732496802656.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280583.P392735101268352223

`A007955(A000005(n+1))`
-/

namespace A280583.P392735101268352223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A000005 (n + 1)).toNat

end

end A280583.P392735101268352223

noncomputable section

/-- A280583: a(n) = product of divisors of the number of divisors of n.

Offset 1, canonical program `A280583.P392735101268352223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280583 (n : ℕ) : ℤ :=
  A280583.P392735101268352223.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280684.P8623937446844403101

`A000005(A007955(n+1))`
-/

namespace A280684.P8623937446844403101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007955 (n + 1)).toNat

end

end A280684.P8623937446844403101

noncomputable section

/-- A280684: a(n) = number of divisors of the product of the divisors of n.

Offset 1, canonical program `A280684.P8623937446844403101`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280684 (n : ℕ) : ℤ :=
  A280684.P8623937446844403101.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280684.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280685.P17876969319558057215

`A000203(A007955(n+1))`
-/

namespace A280685.P17876969319558057215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007955 (n + 1)).toNat

end

end A280685.P17876969319558057215

noncomputable section

/-- A280685: a(n) = sum of the divisors of the product of the divisors of n.

Offset 1, canonical program `A280685.P17876969319558057215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280685 (n : ℕ) : ℤ :=
  A280685.P17876969319558057215.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280870.P3114633600401885937

`lcm(A048448(n+2), A048448(n+3))/A048448(n+3)`
-/

namespace A280870.P3114633600401885937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A048448 (n + 2)) (A048448 (n + 3)) : ℚ) / (A048448 (n + 3) : ℚ)

end

end A280870.P3114633600401885937

noncomputable section

/-- A280870: Numerator of the mediant of prime(n) / prime(n+1) and prime(n+2) / prime(n+3).

Offset 1, canonical program `A280870.P3114633600401885937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280870 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A280870.P3114633600401885937.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280871.P12402160092927728937

`lcm(A048448(n+2), A048448(n+3))/A048448(n+2)`
-/

namespace A280871.P12402160092927728937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A048448 (n + 2)) (A048448 (n + 3)) : ℚ) / (A048448 (n + 2) : ℚ)

end

end A280871.P12402160092927728937

noncomputable section

/-- A280871: Denominator of the mediant of prime(n) / prime(n+1) and prime(n+2) / prime(n+3).

Offset 1, canonical program `A280871.P12402160092927728937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280871 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A280871.P12402160092927728937.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280871.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A281499.P7725258825879446995

`A036044(A003188(n))`
-/

namespace A281499.P7725258825879446995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A003188 n).toNat

end

end A281499.P7725258825879446995

noncomputable section

/-- A281499: Write n in binary reflected Gray code, interchange the 1's and 0's, reverse the code and convert it back to decimal.

Offset 0, canonical program `A281499.P7725258825879446995`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281499 (n : ℕ) : ℤ :=
  A281499.P7725258825879446995.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281499.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281842.P12528366148186742293

`xor(A077896(A053438(n)), A289768(2*n))`
-/

namespace A281842.P12528366148186742293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A053438 n).toNat) (A289768 (2 * n))

end

end A281842.P12528366148186742293

noncomputable section

/-- A281842: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 401", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A281842.P12528366148186742293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A281842 (n : ℕ) : ℤ :=
  A281842.P12528366148186742293.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A281842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282239.P9293021840617921034

`A214678(A000045(n+1))`
-/

namespace A282239.P9293021840617921034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (A000045 (n + 1)).toNat

end

end A282239.P9293021840617921034

noncomputable section

/-- A282239: a(n) = Fibonacci(n) represented in bijective base-8 numeration.

Offset 1, canonical program `A282239.P9293021840617921034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214678, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282239 (n : ℕ) : ℤ :=
  A282239.P9293021840617921034.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214678, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282462.P16013334496872017195

`(n+1)*(A103164(n)-n)+n`
-/

namespace A282462.P16013334496872017195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A103164 n - (n : ℤ)) + (n : ℤ)

end

end A282462.P16013334496872017195

noncomputable section

/-- A282462: Integers but with the primes cubed.

Offset 0, canonical program `A282462.P16013334496872017195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282462 (n : ℕ) : ℤ :=
  A282462.P16013334496872017195.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282671.P11944958329678511137

`2*A002808(n+1)`
-/

namespace A282671.P11944958329678511137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002808 (n + 1)

end

end A282671.P11944958329678511137

noncomputable section

/-- A282671: Twice composite numbers.

Offset 1, canonical program `A282671.P11944958329678511137`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282671 (n : ℕ) : ℤ :=
  A282671.P11944958329678511137.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282801.P14195813214451919216

`gcd(A282412(n), A282797(n))`
-/

namespace A282801.P14195813214451919216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A282412 n) (A282797 n)

end

end A282801.P14195813214451919216

noncomputable section

/-- A282801: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 507", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282801.P14195813214451919216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282801 (n : ℕ) : ℤ :=
  (A282801.P14195813214451919216.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282849.P7416668363150530004

`∑{d}[n+1, A010051((n+1)/#+#)]`
-/

namespace A282849.P7416668363150530004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ))).toNat

end

end A282849.P7416668363150530004

noncomputable section

/-- A282849: Number of divisors k of n such that (n + k^2)/k is a prime.

Offset 1, canonical program `A282849.P7416668363150530004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282849 (n : ℕ) : ℤ :=
  A282849.P7416668363150530004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283325.P1796176472703323700

`Δ[record[(n+1)*A283683(n+1)]]-1`
-/

namespace A283325.P1796176472703323700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A283683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A283325.P1796176472703323700

noncomputable section

/-- A283325: Lengths of runs of successive zeros in A283683.

Offset 1, canonical program `A283325.P1796176472703323700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8721 terms. -/
def A283325 (n : ℕ) : ℤ :=
  A283325.P1796176472703323700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8721 terms. -/
def A283325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284150.P13402515358706383174

`A284097(n+1)+A284103(n+1)`
-/

namespace A284150.P13402515358706383174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (n + 1) + A284103 (n + 1)

end

end A284150.P13402515358706383174

noncomputable section

/-- A284150: Sum_{d|n, d==1 or 4 mod 5} d.

Offset 1, canonical program `A284150.P13402515358706383174`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, A284103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284150 (n : ℕ) : ℤ :=
  A284150.P13402515358706383174.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, A284103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284167.P732557117571730859

`∑{d}[n+1, sqrt(A035116(n+1+#))]`
-/

namespace A284167.P732557117571730859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A035116 (n + 1 + d) : ℝ)

end

end A284167.P732557117571730859

noncomputable section

/-- A284167: a(n) = Sum_{i=1..A000005(n)} d(n+k(i)), where d(t) is the number of divisors of t and k(i) is the i-th divisor of n.

Offset 1, canonical program `A284167.P732557117571730859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A284167 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A284167.P732557117571730859.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A284167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284369.P9335494032599712872

`char[A284371(n+1)-1]`
-/

namespace A284369.P9335494032599712872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284371 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284369.P9335494032599712872

noncomputable section

/-- A284369: Fixed point of the morphism 0->1, 1->1001.

Offset 1, canonical program `A284369.P9335494032599712872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284369 (n : ℕ) : ℤ :=
  (A284369.P9335494032599712872.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284391.P1470686768297422428

`(4%A080426(n+1))^n`
-/

namespace A284391.P1470686768297422428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A080426 (n + 1)) ^ n

end

end A284391.P1470686768297422428

noncomputable section

/-- A284391: 1-limiting word of the morphism 0 -> 1, 1 -> 001.

Offset 1, canonical program `A284391.P1470686768297422428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284391 (n : ℕ) : ℤ :=
  A284391.P1470686768297422428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284878.P13204157183764191036

`char[A284880(n+1)-1]`
-/

namespace A284878.P13204157183764191036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284878.P13204157183764191036

noncomputable section

/-- A284878: Fixed point of the morphism 0 -> 01, 1 -> 0110.

Offset 1, canonical program `A284878.P13204157183764191036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284878 (n : ℕ) : ℤ :=
  (A284878.P13204157183764191036.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285309.P12080858862407877190

`A000203(n+1)-A035316(n+1)`
-/

namespace A285309.P12080858862407877190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A035316 (n + 1)

end

end A285309.P12080858862407877190

noncomputable section

/-- A285309: Sum of nonsquare divisors of n.

Offset 1, canonical program `A285309.P12080858862407877190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285309 (n : ℕ) : ℤ :=
  A285309.P12080858862407877190.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285309.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285437.P16402339741766038757

`A000034(n)*A288808(A052928(n))`
-/

namespace A285437.P16402339741766038757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A288808 (A052928 n).toNat

end

end A285437.P16402339741766038757

noncomputable section

/-- A285437: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285437.P16402339741766038757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 393 terms. -/
def A285437 (n : ℕ) : ℤ :=
  A285437.P16402339741766038757.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 393 terms. -/
def A285437.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A285769.P12128075102545262245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285769 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285769.P12128075102545262245.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285769.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285961.P11025727463194114248

`A091785(n+1)+1+n`
-/

namespace A285961.P11025727463194114248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091785 (n + 1) + 1 + (n : ℤ)

end

end A285961.P11025727463194114248

noncomputable section

/-- A285961: Positions of 0 in A285960; complement of A285962.

Offset 1, canonical program `A285961.P11025727463194114248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285961 (n : ℕ) : ℤ :=
  A285961.P11025727463194114248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285968.P7645059340258916678

`∑[A143331(n+1)+1]`
-/

namespace A285968.P7645059340258916678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143331 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285968.P7645059340258916678

noncomputable section

/-- A285968: Positions of 1 in A285966; complement of A285967.

Offset 1, canonical program `A285968.P7645059340258916678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285968 (n : ℕ) : ℤ :=
  A285968.P7645059340258916678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285970.P17998108344174351003

`∑[3-A143331(n+1)]-1`
-/

namespace A285970.P17998108344174351003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A143331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A285970.P17998108344174351003

noncomputable section

/-- A285970: Positions of 0 in A285969; complement of A285971.

Offset 1, canonical program `A285970.P17998108344174351003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285970 (n : ℕ) : ℤ :=
  A285970.P17998108344174351003.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285972.P9978593090534713538

`A010060(∑[A143331(n+1)]-A143331(n+1))`
-/

namespace A285972.P9978593090534713538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (∑ j ∈ Finset.range (n + 1), f1 j - A143331 (n + 1)).toNat

end

end A285972.P9978593090534713538

noncomputable section

/-- A285972: {10->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285972.P9978593090534713538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285972 (n : ℕ) : ℤ :=
  A285972.P9978593090534713538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286002.P1824755549209206382

`n+1+A049820(n+1)`
-/

namespace A286002.P1824755549209206382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A049820 (n + 1)

end

end A286002.P1824755549209206382

noncomputable section

/-- A286002: a(n) = 2n - d(n), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A286002.P1824755549209206382`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286002 (n : ℕ) : ℤ :=
  A286002.P1824755549209206382.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286002.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286053.P9692658622334694339

`lt[A286052(n+1), 1]+1`
-/

namespace A286053.P9692658622334694339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286052 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A286053.P9692658622334694339

noncomputable section

/-- A286053: Positions of 0 in A286052; complement of A286054.

Offset 1, canonical program `A286053.P9692658622334694339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A286053 (n : ℕ) : ℤ :=
  (A286053.P9692658622334694339.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A286053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286055.P8159239610517546816

`1-A286052(xor(1, n)+1)`
-/

namespace A286055.P8159239610517546816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286052 (Nat.xor 1 n + 1)

end

end A286055.P8159239610517546816

noncomputable section

/-- A286055: {010->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A286055.P8159239610517546816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286055 (n : ℕ) : ℤ :=
  A286055.P8159239610517546816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286529.P6466603757288355970

`A000005(A062249(n+1))`
-/

namespace A286529.P6466603757288355970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A062249 (n + 1)).toNat

end

end A286529.P6466603757288355970

noncomputable section

/-- A286529: a(n) = d(n+d(n)), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A286529.P6466603757288355970`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286529 (n : ℕ) : ℤ :=
  A286529.P6466603757288355970.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286591.P10026777462163410462

`1/2*(2+(A009191(n+1)+A009194(n+1))²-A009191(n+1)-3*A009194(n+1))`
-/

namespace A286591.P10026777462163410462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A009191 (n + 1) + A009194 (n + 1)) ^ 2 - A009191 (n + 1) - 3 * A009194 (n + 1) : ℚ)

end

end A286591.P10026777462163410462

noncomputable section

/-- A286591: Compound filter: a(n) = P(A009191(n), A009194(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286591.P10026777462163410462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286591 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286591.P10026777462163410462.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286726.P13971804869111894166

`1-A286685(n+1)`
-/

namespace A286726.P13971804869111894166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286685 (n + 1)

end

end A286726.P13971804869111894166

noncomputable section

/-- A286726: {0->10, 1->01}-transform of the Pell word, A171588.

Offset 1, canonical program `A286726.P13971804869111894166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286726 (n : ℕ) : ℤ :=
  A286726.P13971804869111894166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286752.P17365637770486763028

`A307294(n)%2`
-/

namespace A286752.P17365637770486763028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307294 n) 2

end

end A286752.P17365637770486763028

noncomputable section

/-- A286752: {010010->null}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A286752.P17365637770486763028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286752 (n : ℕ) : ℤ :=
  A286752.P17365637770486763028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286809.P10950988701796327335

`A324400(2*n+3)`
-/

namespace A286809.P10950988701796327335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324400 (2 * n + 3)

end

end A286809.P10950988701796327335

noncomputable section

/-- A286809: Positions of 1 in A286807; complement of A286808.

Offset 1, canonical program `A286809.P10950988701796327335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286809 (n : ℕ) : ℤ :=
  A286809.P10950988701796327335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286937.P8216881898967728310

`1-A286804(n+1)`
-/

namespace A286937.P8216881898967728310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286804 (n + 1)

end

end A286937.P8216881898967728310

noncomputable section

/-- A286937: {111->null}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286937.P8216881898967728310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286937 (n : ℕ) : ℤ :=
  A286937.P8216881898967728310.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286937.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286991.P960293502275245523

`A187970(n+1)+1+n`
-/

namespace A286991.P960293502275245523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187970 (n + 1) + 1 + (n : ℤ)

end

end A286991.P960293502275245523

noncomputable section

/-- A286991: Positions of 0 in A286990; complement of A286992.

Offset 1, canonical program `A286991.P960293502275245523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286991 (n : ℕ) : ℤ :=
  A286991.P960293502275245523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287074.P10152371220635534099

`eq[1, A287072(n+1)]+1`
-/

namespace A287074.P10152371220635534099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287072 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287074.P10152371220635534099

noncomputable section

/-- A287074: Positions of 1 in A287072.

Offset 1, canonical program `A287074.P10152371220635534099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4301 terms. -/
def A287074 (n : ℕ) : ℤ :=
  (A287074.P10152371220635534099.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4301 terms. -/
def A287074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287725.P381442669331044004

`A287722(n+1)+A221151(n)`
-/

namespace A287725.P381442669331044004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287722 (n + 1) + A221151 n

end

end A287725.P381442669331044004

noncomputable section

/-- A287725: {0->1, 1->011}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287725.P381442669331044004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287725 (n : ℕ) : ℤ :=
  A287725.P381442669331044004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287727.P18038201456973574914

`A383422(n)+A287770(n+1)`
-/

namespace A287727.P18038201456973574914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383422 n + A287770 (n + 1)

end

end A287727.P18038201456973574914

noncomputable section

/-- A287727: Positions of 1 in A287725; complement of A287726.

Offset 1, canonical program `A287727.P18038201456973574914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287727 (n : ℕ) : ℤ :=
  A287727.P18038201456973574914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287773.P9347372102348700689

`1-A287795(n+1)`
-/

namespace A287773.P9347372102348700689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A287795 (n + 1)

end

end A287773.P9347372102348700689

noncomputable section

/-- A287773: {0->010, 1->101}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287773.P9347372102348700689`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287773 (n : ℕ) : ℤ :=
  A287773.P9347372102348700689.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288041.P16531561564463658720

`eq[2, A000005(A034964(n+1))]+1`
-/

namespace A288041.P16531561564463658720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A034964 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288041.P16531561564463658720

noncomputable section

/-- A288041: Numbers k such that prime(k) + prime(k+1) + ... + prime(k+4) is prime.

Offset 1, canonical program `A288041.P16531561564463658720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A288041 (n : ℕ) : ℤ :=
  (A288041.P16531561564463658720.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A288041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288129.P13028226010156660586

`xor(A077896(A053438(n)), A289768(n))`
-/

namespace A288129.P13028226010156660586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A053438 n).toNat) (A289768 n)

end

end A288129.P13028226010156660586

noncomputable section

/-- A288129: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 425", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288129.P13028226010156660586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A288129 (n : ℕ) : ℤ :=
  A288129.P13028226010156660586.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A288129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288130.P13868285853343528695

`xor(A077896(A053438(n)), A289769(n))`
-/

namespace A288130.P13868285853343528695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A053438 n).toNat) (A289769 n)

end

end A288130.P13868285853343528695

noncomputable section

/-- A288130: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 425", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288130.P13868285853343528695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A288130 (n : ℕ) : ℤ :=
  A288130.P13868285853343528695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A288130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288168.P15066457782976008848

`eq[0, A288167(n+1)]+1`
-/

namespace A288168.P15066457782976008848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288168.P15066457782976008848

noncomputable section

/-- A288168: Positions of 0 in A288167; complement of A288169.

Offset 1, canonical program `A288168.P15066457782976008848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8332 terms. -/
def A288168 (n : ℕ) : ℤ :=
  (A288168.P15066457782976008848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8332 terms. -/
def A288168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288469.P18109802138600122928

`n+1+A010051(n+1)*(a(A000720(n+1)-1)-(n+1))` with `a(0)=1`
-/

namespace A288469.P18109802138600122928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) + A010051 (n + 1) * (a (A000720 (n + 1) - 1).toNat - (n + 1 : ℤ))

end

end A288469.P18109802138600122928

noncomputable section

/-- A288469: a(n) = n if n is a nonprime, otherwise take the prime index of n and repeat until you get a nonprime which is then a(n).

Offset 1, canonical program `A288469.P18109802138600122928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A288469 (n : ℕ) : ℤ :=
  A288469.P18109802138600122928.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A288469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288661.P15032499298438258468

`A282415(A022998(n)%(n+2))`
-/

namespace A288661.P15032499298438258468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 (Int.tmod (A022998 n) (n + 2 : ℤ)).toNat

end

end A288661.P15032499298438258468

noncomputable section

/-- A288661: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 493", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288661.P15032499298438258468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A288661 (n : ℕ) : ℤ :=
  A288661.P15032499298438258468.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A288661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288662.P17418465952420220201

`A000042(n+1)-A282415(n)%A000042(n+1)`
-/

namespace A288662.P17418465952420220201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A282415 n) (A000042 (n + 1))

end

end A288662.P17418465952420220201

noncomputable section

/-- A288662: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 493", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288662.P17418465952420220201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A288662 (n : ℕ) : ℤ :=
  A288662.P17418465952420220201.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A288662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288694.P16125803741522306044

`1-char[A288695(n+1)-1]`
-/

namespace A288694.P16125803741522306044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288695 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288694.P16125803741522306044

noncomputable section

/-- A288694: Fixed point of the mapping 00->0110, 10->100, starting with 00.

Offset 1, canonical program `A288694.P16125803741522306044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288694 (n : ℕ) : ℤ :=
  A288694.P16125803741522306044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289619.P12021313668545143991

`eq[2, A010873(A135323(n+1)/(n+1))]+1`
-/

namespace A289619.P12021313668545143991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (SequenceMachineLib.roundAway ((A135323 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289619.P12021313668545143991

noncomputable section

/-- A289619: Positions of ones in A289618.

Offset 1, canonical program `A289619.P12021313668545143991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4940 terms. -/
def A289619 (n : ℕ) : ℤ :=
  (A289619.P12021313668545143991.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4940 terms. -/
def A289619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290599.P8822875163250112356

`A016035(A002808(n+1))`
-/

namespace A290599.P8822875163250112356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (A002808 (n + 1)).toNat

end

end A290599.P8822875163250112356

noncomputable section

/-- A290599: Number of numbers from 1 to A002808(n) - 1 that are non-coprime to A002808(n).

Offset 1, canonical program `A290599.P8822875163250112356`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A016035, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290599 (n : ℕ) : ℤ :=
  A290599.P8822875163250112356.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A016035, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290599.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A290813.P8899743792180073667

`or(A266719(n), A283352(n))`
-/

namespace A290813.P8899743792180073667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266719 n) (A283352 n)

end

end A290813.P8899743792180073667

noncomputable section

/-- A290813: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 961", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290813.P8899743792180073667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290813 (n : ℕ) : ℤ :=
  A290813.P8899743792180073667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290934.P7844650450766636919

`∑{digits}[A254958(n+1), #²]`
-/

namespace A290934.P7844650450766636919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254958 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A290934.P7844650450766636919

noncomputable section

/-- A290934: a(n) equals the sum of the squares of the digits of A254958(n).

Offset 1, canonical program `A290934.P7844650450766636919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A290934 (n : ℕ) : ℤ :=
  (A290934.P7844650450766636919.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A290934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291626.P17454017761634681857

`lt[1, A053667(n)*A086009(n)+1]`
-/

namespace A291626.P17454017761634681857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n * A086009 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A291626.P17454017761634681857

noncomputable section

/-- A291626: Numbers k such that 1 is the smallest decimal digit of k^2.

Offset 1, canonical program `A291626.P17454017761634681857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2974 terms. -/
def A291626 (n : ℕ) : ℤ :=
  (A291626.P17454017761634681857.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2974 terms. -/
def A291626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292264.P10434189468318484409

`n-A292944(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292264.P10434189468318484409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292944 n

end

end A292264.P10434189468318484409

noncomputable section

/-- A292264: a(n) = n - A292944(n).

Offset 0, canonical program `A292264.P10434189468318484409`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292264 (n : ℕ) : ℤ :=
  A292264.P10434189468318484409.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292596.P449040721367529095

`A010051(n+1)+2*a(floor((n+1)/2)-1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292596.P449040721367529095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 1, 2] fun n a =>
  A010051 (n + 1) + 2 * a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat

end

end A292596.P449040721367529095

noncomputable section

/-- A292596: a(1) = a(2) = 0; for n > 2, a(n) = A010051(n) + 2*a(floor(n/2)).

Offset 1, canonical program `A292596.P449040721367529095`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292596 (n : ℕ) : ℤ :=
  A292596.P449040721367529095.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292596.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292597.P12063042605645149982

`A000035(n+1)*(1-A010051(n+1))+2*a(floor((n+1)/2)-1)` with `a(0)=1`
-/

namespace A292597.P12063042605645149982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000035 (n + 1) * (1 - A010051 (n + 1)) + 2 * a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat

end

end A292597.P12063042605645149982

noncomputable section

/-- A292597: a(1) = 1; for n > 1, a(n) = c(n) + 2*a(floor(n/2)), where c(n) is the characteristic function of odd composites, A071904.

Offset 1, canonical program `A292597.P12063042605645149982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292597 (n : ℕ) : ℤ :=
  A292597.P12063042605645149982.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292597.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292598.P10684525461602173111

`A010051(n+1)+a(floor((n+1)/2)-1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=1, a(6)=2`
-/

namespace A292598.P10684525461602173111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 1, 1, 2] fun n a =>
  A010051 (n + 1) + a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat

end

end A292598.P10684525461602173111

noncomputable section

/-- A292598: a(n) is the number of odd primes in the sequence [n, floor(n/2), floor(n/4), ..., 1].

Offset 1, canonical program `A292598.P10684525461602173111`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292598 (n : ℕ) : ℤ :=
  A292598.P10684525461602173111.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292598.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292599.P8177924625487192254

`A010051(n+1)+2*a(floor((n+1)/2)-1)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292599.P8177924625487192254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010051 (n + 1) + 2 * a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat

end

end A292599.P8177924625487192254

noncomputable section

/-- A292599: a(1) = 0; for n > 1, a(n) = A010051(n) + 2*a(floor(n/2)).

Offset 1, canonical program `A292599.P8177924625487192254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292599 (n : ℕ) : ℤ :=
  A292599.P8177924625487192254.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292599.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293235.P11112024856890805067

`A035316(n+1)-A010052(n+1)*(n+1)`
-/

namespace A293235.P11112024856890805067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) - A010052 (n + 1) * (n + 1 : ℤ)

end

end A293235.P11112024856890805067

noncomputable section

/-- A293235: a(n) is the sum of proper divisors of n that are square.

Offset 1, canonical program `A293235.P11112024856890805067`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A035316, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293235 (n : ℕ) : ℤ :=
  A293235.P11112024856890805067.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A035316, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293235.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293449.P1988941039110302622

`∏{e}[n+1, A010051(#)]`
-/

namespace A293449.P1988941039110302622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A010051 (Nat.factorization (f1 n) p)

end

end A293449.P1988941039110302622

noncomputable section

/-- A293449: Characteristic function for A056166, numbers that have no nonprime exponents present in their prime factorization n = p_1^e_1 * ... * p_k^e_k.

Offset 1, canonical program `A293449.P1988941039110302622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293449 (n : ℕ) : ℤ :=
  A293449.P1988941039110302622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293513.P2913360707613170259

`A091954(n+1)-A293451(n+1)`
-/

namespace A293513.P2913360707613170259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) - A293451 (n + 1)

end

end A293513.P2913360707613170259

noncomputable section

/-- A293513: Number of proper divisors of n of the form 4k+3.

Offset 1, canonical program `A293513.P2913360707613170259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293513 (n : ℕ) : ℤ :=
  A293513.P2913360707613170259.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293600.P7342064870478371486

`A063007(n)/A027555(n)`
-/

namespace A293600.P7342064870478371486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063007 n : ℚ) / (A027555 n : ℚ)

end

end A293600.P7342064870478371486

noncomputable section

/-- A293600: G.f. A(x,y) = Sum_{-oo..+oo} (x - y^n)^(n+1), as a flattened rectangular array of coefficients T(n,k) of x^n * y^(k*(n+k-1)) in A(x,y) for n>=1.

Offset 1, canonical program `A293600.P7342064870478371486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9136 terms. -/
def A293600 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A293600.P7342064870478371486.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9136 terms. -/
def A293600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294016.P4065653788084831294

`A024916(n+1)-A004125(n+1)`
-/

namespace A294016.P4065653788084831294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A004125 (n + 1)

end

end A294016.P4065653788084831294

noncomputable section

/-- A294016: a(n) = sum of all divisors of all positive integers <= n, minus the sum of remainders of n mod k, for k = 1, 2, 3, ..., n.

Offset 1, canonical program `A294016.P4065653788084831294`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294016 (n : ℕ) : ℤ :=
  A294016.P4065653788084831294.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294016.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294146.P8791464845272006236

`A294263(n+1)+n`
-/

namespace A294146.P8791464845272006236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294263 (n + 1) + (n : ℤ)

end

end A294146.P8791464845272006236

noncomputable section

/-- A294146: Sum of the larger parts of the partitions of n into two parts with smaller part squarefree.

Offset 1, canonical program `A294146.P8791464845272006236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294146 (n : ℕ) : ℤ :=
  A294146.P8791464845272006236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294194.P9935065760248985394

`A063959(n+1)-A063959(n)`
-/

namespace A294194.P9935065760248985394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063959 (n + 1) - A063959 n

end

end A294194.P9935065760248985394

noncomputable section

/-- A294194: a(n) is the sum of primes between n!+1 and (n+1)!.

Offset 0, canonical program `A294194.P9935065760248985394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294194 (n : ℕ) : ℤ :=
  A294194.P9935065760248985394.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294487.P4199886076242480061

`A063955(n+1)-∑{p}[n+1, C(#, n)]`
-/

namespace A294487.P4199886076242480061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ)

end

end A294487.P4199886076242480061

noncomputable section

/-- A294487: Sum of the lengths of the distinct rectangles with prime length and integer width such that L + W = n, W < L.

Offset 1, canonical program `A294487.P4199886076242480061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294487 (n : ℕ) : ℤ :=
  A294487.P4199886076242480061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295235.P4423342545334960815

`eq[A030101(n), A348363(n)]`
-/

namespace A295235.P4423342545334960815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295235.P4423342545334960815

noncomputable section

/-- A295235: Numbers k such that the positions of the ones in the binary representation of k are in arithmetic progression.

Offset 1, canonical program `A295235.P4423342545334960815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A295235 (n : ℕ) : ℤ :=
  (A295235.P4423342545334960815.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A295235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295286.P12563632415591055737

`∑[A001057(n)²]-A295320(n+1)`
-/

namespace A295286.P12563632415591055737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295320 (n + 1)

end

end A295286.P12563632415591055737

noncomputable section

/-- A295286: Sum of the products of the smaller and larger parts of the partitions of n into two parts with the smaller part odd.

Offset 1, canonical program `A295286.P12563632415591055737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295286 (n : ℕ) : ℤ :=
  A295286.P12563632415591055737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295292.P4490344972093491667

`∑[A001057(n)²]-A295317(n+1)`
-/

namespace A295292.P4490344972093491667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295317 (n + 1)

end

end A295292.P4490344972093491667

noncomputable section

/-- A295292: Sum of the products of the smaller and larger parts of the partitions of n into two parts with the larger part odd.

Offset 1, canonical program `A295292.P4490344972093491667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295292 (n : ℕ) : ℤ :=
  A295292.P4490344972093491667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295293.P9244574736305665220

`∑[A110660(n)]-A295318(n+1)`
-/

namespace A295293.P9244574736305665220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295318 (n + 1)

end

end A295293.P9244574736305665220

noncomputable section

/-- A295293: Sum of the products of the smaller and larger parts of the partitions of n into two parts with the larger part even.

Offset 1, canonical program `A295293.P9244574736305665220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295293 (n : ℕ) : ℤ :=
  A295293.P9244574736305665220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295306.P345186050737543050

`round(tanh(A295305(n+1)))`
-/

namespace A295306.P345186050737543050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (A295305 (n + 1) : ℝ))

end

end A295306.P345186050737543050

noncomputable section

/-- A295306: a(n) = +1 if tau(sigma(n)) > tau(n), -1 if n < tau(sigma(n)) < tau(n), and 0 if tau(sigma(n)) = tau(n), where tau = A000005 and sigma = A000203.

Offset 1, canonical program `A295306.P345186050737543050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295306 (n : ℕ) : ℤ :=
  A295306.P345186050737543050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295316.P1217032388411146580

`A005361(n+1)%2`
-/

namespace A295316.P1217032388411146580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005361 (n + 1)) 2

end

end A295316.P1217032388411146580

noncomputable section

/-- A295316: a(n) = 1 if there are no even exponents in the prime factorization of n, 0 otherwise.

Offset 1, canonical program `A295316.P1217032388411146580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295316 (n : ℕ) : ℤ :=
  A295316.P1217032388411146580.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295316.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295405.P18073579498097549873

`A010051((n+1)²+1)`
-/

namespace A295405.P18073579498097549873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ((n + 1) ^ 2 + 1)

end

end A295405.P18073579498097549873

noncomputable section

/-- A295405: a(n) = 1 if n^2+1 is prime, 0 otherwise.

Offset 1, canonical program `A295405.P18073579498097549873`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295405 (n : ℕ) : ℤ :=
  A295405.P18073579498097549873.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295819.P15157228234053089622

`A000089(A048298(8*(n+1))+n)`
-/

namespace A295819.P15157228234053089622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A048298 (8 * (n + 1)) + (n : ℤ)).toNat

end

end A295819.P15157228234053089622

noncomputable section

/-- A295819: Number of nonnegative solutions to (x,y) = 1 and x^2 + y^2 = n.

Offset 0, canonical program `A295819.P15157228234053089622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A295819 (n : ℕ) : ℤ :=
  A295819.P15157228234053089622.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A295819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295934.P14483957444416556349

`A394266(n+1)+A373565(n)`
-/

namespace A295934.P14483957444416556349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394266 (n + 1) + A373565 n

end

end A295934.P14483957444416556349

noncomputable section

/-- A295934: Number of (not necessarily maximal) cliques in the n-odd graph.

Offset 1, canonical program `A295934.P14483957444416556349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A295934 (n : ℕ) : ℤ :=
  A295934.P14483957444416556349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A295934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296028.P12946976151068972865

`A010051(floor((3*(n+1)-1)/2))`
-/

namespace A296028.P12946976151068972865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ⌊((3 * (n + 1) : ℤ) - 1 : ℚ) / 2⌋.toNat

end

end A296028.P12946976151068972865

noncomputable section

/-- A296028: Characteristic function of primes in the nonmultiples of 3.

Offset 1, canonical program `A296028.P12946976151068972865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296028 (n : ℕ) : ℤ :=
  A296028.P12946976151068972865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296082.P6565057320872565321

`∑{e}[A100577(n+1), #/A296081(n+1)]`
-/

namespace A296082.P6565057320872565321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100577 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) / (A296081 (n + 1) : ℚ)

end

end A296082.P6565057320872565321

noncomputable section

/-- A296082: a(1) = 0; for n > 1, a(n) = A032741(n) / gcd(A039653(n),A032741(n)).

Offset 1, canonical program `A296082.P6565057320872565321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A296082 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A296082.P6565057320872565321.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A296082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296211.P11261666539531221570

`A010051(A048050(n+1)+1+n)`
-/

namespace A296211.P11261666539531221570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A048050 (n + 1) + 1 + (n : ℤ)).toNat

end

end A296211.P11261666539531221570

noncomputable section

/-- A296211: a(n) = 1 if sigma(n)-1 is a prime, 0 otherwise.

Offset 1, canonical program `A296211.P11261666539531221570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296211 (n : ℕ) : ℤ :=
  A296211.P11261666539531221570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296212.P15502952494172924929

`A010051(A088580(n+1))`
-/

namespace A296212.P15502952494172924929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A088580 (n + 1)).toNat

end

end A296212.P15502952494172924929

noncomputable section

/-- A296212: a(n) = 1 if sigma(n) + 1 is prime, 0 otherwise.

Offset 1, canonical program `A296212.P15502952494172924929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296212 (n : ℕ) : ℤ :=
  A296212.P15502952494172924929.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296212.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A296966.P18250778610313653592`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296966 (n : ℕ) : ℤ :=
  A296966.P18250778610313653592.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296966.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A297401.P14594620375848981182

`record[A105570(A030626(n+1))]`
-/

namespace A297401.P14594620375848981182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A030626 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297401.P14594620375848981182

noncomputable section

/-- A297401: Non-sphenic numbers with exactly 8 divisors.

Offset 1, canonical program `A297401.P14594620375848981182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1142 terms. -/
def A297401 (n : ℕ) : ℤ :=
  A297401.P14594620375848981182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1142 terms. -/
def A297401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298366.P16780955431485269286

`A061673(n+1)+4`
-/

namespace A298366.P16780955431485269286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1) + 4

end

end A298366.P16780955431485269286

noncomputable section

/-- A298366: Even numbers n such that n-5 and n-3 are both composite.

Offset 1, canonical program `A298366.P16780955431485269286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298366 (n : ℕ) : ℤ :=
  A298366.P16780955431485269286.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A298863.P4980415507089431462

`eq[char[A298864(n+1)], A000007(n)]`
-/

namespace A298863.P4980415507089431462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298864 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298863.P4980415507089431462

noncomputable section

/-- A298863: Ranks of primes p when all primes p and products 3*p are jointly ranked.

Offset 1, canonical program `A298863.P4980415507089431462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7275 terms. -/
def A298863 (n : ℕ) : ℤ :=
  (A298863.P4980415507089431462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7275 terms. -/
def A298863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298946.P13261524551093357640

`A099908(A002808(n+1))`
-/

namespace A298946.P13261524551093357640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099908 (A002808 (n + 1)).toNat

end

end A298946.P13261524551093357640

noncomputable section

/-- A298946: a(n) = binomial(2*c-1, c-1) (mod c^4), where c is the n-th composite number.

Offset 1, canonical program `A298946.P13261524551093357640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A298946 (n : ℕ) : ℤ :=
  A298946.P13261524551093357640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A298946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299251.P8330585234016012379

`(A006218(A002620(n+2))-A000217(n+1))/2`
-/

namespace A299251.P8330585234016012379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006218 (A002620 (n + 2)).toNat - A000217 (n + 1) : ℚ) / 2

end

end A299251.P8330585234016012379

noncomputable section

/-- A299251: a(n) = ((Sum_{k=1..floor((n+1)^2/4)} d(k)) - T(n)) / 2, where d(n) = number of divisors of n (A000005) and T(n) = the n-th triangular number (A000217).

Offset 1, canonical program `A299251.P8330585234016012379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299251 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A299251.P8330585234016012379.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A300473.P3318194151720719150

`eq[1, A010051(n*(n+21)+1)]`
-/

namespace A300473.P3318194151720719150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n * (n + 21) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300473.P3318194151720719150

noncomputable section

/-- A300473: Numbers k with the property that k^2 + 21k + 1 is prime.

Offset 1, canonical program `A300473.P3318194151720719150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A300473 (n : ℕ) : ℤ :=
  (A300473.P3318194151720719150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A300473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200091.P16058359386735906279

`A122197(n+1)!*A134991(A056536(n+1))`
-/

namespace A200091.P16058359386735906279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A122197 (n + 1)).toNat : ℤ) * A134991 (A056536 (n + 1)).toNat

end

end A200091.P16058359386735906279

noncomputable section

/-- A200091: The number of ways of putting n labeled items into k labeled boxes so that each box receives at least 2 objects.

Offset 2, canonical program `A200091.P16058359386735906279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A200091 (n : ℕ) : ℤ :=
  A200091.P16058359386735906279.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A200091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201783.P15874828586244477610

`∩[A030433(n+1), A134538(n+1)]`
-/

namespace A201783.P15874828586244477610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201783.P15874828586244477610

noncomputable section

/-- A201783: Primes of the form 5n^2 - 1.

Offset 1, canonical program `A201783.P15874828586244477610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A201783 (n : ℕ) : ℤ :=
  (A201783.P15874828586244477610.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A201783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202097.P9792887605728792110

`sqrt(A202096(n+1)*A202098(n+1))`
-/

namespace A202097.P9792887605728792110
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202096 (n + 1) * A202098 (n + 1) : ℝ)

end

end A202097.P9792887605728792110

noncomputable section

/-- A202097: Number of (n+2) X 7 binary arrays avoiding patterns 001 and 011 in rows and columns.

Offset 1, canonical program `A202097.P9792887605728792110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202097 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A202097.P9792887605728792110.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207616.P15871925610082526903

`A210039(n+1)+A034839(n)-A034867(n)`
-/

namespace A207616.P15871925610082526903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210039 (n + 1) + (A034839 n - A034867 n)

end

end A207616.P15871925610082526903

noncomputable section

/-- A207616: Triangle of coefficients of polynomials u(n,x) jointly generated with A207617; see the Formula section.

Offset 1, canonical program `A207616.P15871925610082526903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207616 (n : ℕ) : ℤ :=
  A207616.P15871925610082526903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207946.P1343383528588518597

`A207249(n+1)/A206981(n+1)*A207250(n+1)`
-/

namespace A207946.P1343383528588518597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207249 (n + 1) : ℚ) / (A206981 (n + 1) : ℚ) * (A207250 (n + 1) : ℚ)

end

end A207946.P1343383528588518597

noncomputable section

/-- A207946: Number of nX5 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

Offset 1, canonical program `A207946.P1343383528588518597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A207946 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207946.P1343383528588518597.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A207946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208115.P15927855600313523114

`sqrt(A208114(n+1)*A208116(n+1))`
-/

namespace A208115.P15927855600313523114
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A208114 (n + 1) * A208116 (n + 1) : ℝ)

end

end A208115.P15927855600313523114

noncomputable section

/-- A208115: Number of n X 5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

Offset 1, canonical program `A208115.P15927855600313523114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208115 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208115.P15927855600313523114.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209144.P4568866588798003918

`A209149(A056536(n+1))`
-/

namespace A209144.P4568866588798003918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209149 (A056536 (n + 1)).toNat

end

end A209144.P4568866588798003918

noncomputable section

/-- A209144: Triangle of coefficients of polynomials v(n,x) jointly generated with A209143; see the Formula section.

Offset 1, canonical program `A209144.P4568866588798003918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A209144 (n : ℕ) : ℤ :=
  A209144.P4568866588798003918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A209144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215103.P15709415160951109386

`∪[A100202(n+1), A215168(n+1)]`
-/

namespace A215103.P15709415160951109386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P15709415160951109386

noncomputable section

/-- A215103: Primes congruent to {2, 3, 5} mod 13.

Offset 1, canonical program `A215103.P15709415160951109386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215103 (n : ℕ) : ℤ :=
  (A215103.P15709415160951109386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215135.P664234046293665165

`∪[A100202(n+1), A215391(n+1)]`
-/

namespace A215135.P664234046293665165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215135.P664234046293665165

noncomputable section

/-- A215135: Primes congruent to {1, 2, 3} mod 13.

Offset 1, canonical program `A215135.P664234046293665165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215135 (n : ℕ) : ℤ :=
  (A215135.P664234046293665165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215319.P9914766944936450930

`∪[A215131(n+1), A215391(n+1)]`
-/

namespace A215319.P9914766944936450930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215319.P9914766944936450930

noncomputable section

/-- A215319: Primes congruent to {1, 2, 3, 5, 6} mod 13.

Offset 1, canonical program `A215319.P9914766944936450930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215319 (n : ℕ) : ℤ :=
  (A215319.P9914766944936450930.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228359.P12401264959366660209

`eq[0, A055671(A061601(n))]+1`
-/

namespace A228359.P12401264959366660209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A228359.P12401264959366660209

noncomputable section

/-- A228359: Numbers m whose 10's complement is not prime, i.e., 10^k-m, where k is the number of digits of m, is not prime.

Offset 1, canonical program `A228359.P12401264959366660209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228359 (n : ℕ) : ℤ :=
  (A228359.P12401264959366660209.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229143.P13243434220709827465

`∑{d}[n+1, A117188(#-1)*A259024((n+1)/#)]`
-/

namespace A229143.P13243434220709827465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117188 (d - 1) * A259024 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A229143.P13243434220709827465

noncomputable section

/-- A229143: Expansion of (b(q^3) - b(q)) / 3 in powers of q where b() is a cubic AGM theta function.

Offset 1, canonical program `A229143.P13243434220709827465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229143 (n : ℕ) : ℤ :=
  A229143.P13243434220709827465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233348.P14961469874671804838

`ceil(A289413(n+2)/3)`
-/

namespace A233348.P14961469874671804838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289413 (n + 2) : ℚ) / 3⌉

end

end A233348.P14961469874671804838

noncomputable section

/-- A233348: Numbers n such that 3*n+2 and 3*n-2 are both prime for n multiple of 5 (A008587).

Offset 1, canonical program `A233348.P14961469874671804838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A233348 (n : ℕ) : ℤ :=
  A233348.P14961469874671804838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A233348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235394.P10443878114079601900

`p?[A004682(n+1)]`
-/

namespace A235394.P10443878114079601900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235394.P10443878114079601900

noncomputable section

/-- A235394: Primes whose decimal representation is a valid number in base 8 and interpreted as such is again a prime.

Offset 1, canonical program `A235394.P10443878114079601900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1791 terms. -/
def A235394 (n : ℕ) : ℤ :=
  A235394.P10443878114079601900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1791 terms. -/
def A235394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235395.P5398117862764279832

`p?[A004683(n+1)]`
-/

namespace A235395.P5398117862764279832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235395.P5398117862764279832

noncomputable section

/-- A235395: Primes whose decimal representation is a valid number in base 9 and interpreted as such is again a prime.

Offset 1, canonical program `A235395.P5398117862764279832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 778 terms. -/
def A235395 (n : ℕ) : ℤ :=
  A235395.P5398117862764279832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 778 terms. -/
def A235395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237353.P6068301606430795874

`A164560(n+1)%A287841(n+1)`
-/

namespace A237353.P6068301606430795874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164560 (n + 1)) (A287841 (n + 1))

end

end A237353.P6068301606430795874

noncomputable section

/-- A237353: For n=g+h, a(n) is the minimum value of omega(g)+omega(h).

Offset 2, canonical program `A237353.P6068301606430795874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A237353 (n : ℕ) : ℤ :=
  A237353.P6068301606430795874.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A237353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237989.P12319660110514710715

`∩[A377994(n+1), A016825(n)]`
-/

namespace A237989.P12319660110514710715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237989.P12319660110514710715

noncomputable section

/-- A237989: Numbers m such that the numbers of primes, even positive integers and odd positive integers less than or equal to m are all odd.

Offset 1, canonical program `A237989.P12319660110514710715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A237989 (n : ℕ) : ℤ :=
  (A237989.P12319660110514710715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A237989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243128.P17897595652621250645

`filter[A389634(n+1), A323239(#)]`
-/

namespace A243128.P17897595652621250645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A243128.P17897595652621250645

noncomputable section

/-- A243128: Squarefree numbers k such that 4k <= sum of squarefree divisors of 4k.

Offset 1, canonical program `A243128.P17897595652621250645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1603 terms. -/
def A243128 (n : ℕ) : ℤ :=
  A243128.P17897595652621250645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1603 terms. -/
def A243128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245963.P17810080779370420082

`A030528(A056536(n+2))`
-/

namespace A245963.P17810080779370420082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (A056536 (n + 2)).toNat

end

end A245963.P17810080779370420082

noncomputable section

/-- A245963: Triangle read by rows: T(n,k) is the number of maximal hypercubes Q(p) in the Fibonacci cube Gamma(n) (i.e., Q(p) is an induced subgraph of Gamma(n) that is not a subgraph of a subgraph of Gamma(n) that is isomorphic to the hypercube Q(p+1)).

Offset 0, canonical program `A245963.P17810080779370420082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A245963 (n : ℕ) : ℤ :=
  A245963.P17810080779370420082.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A245963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255805.P14998431550882228973

`lt[0, A309959(n)]`
-/

namespace A255805.P14998431550882228973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A255805.P14998431550882228973

noncomputable section

/-- A255805: Numbers with no zeros in base-8 representation.

Offset 1, canonical program `A255805.P14998431550882228973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A255805 (n : ℕ) : ℤ :=
  (A255805.P14998431550882228973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A255805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256944.P11403239477205446670

`A257282(n+1)²`
-/

namespace A256944.P11403239477205446670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 1) ^ 2

end

end A256944.P11403239477205446670

noncomputable section

/-- A256944: Squares which are not the sums of two consecutive nonsquares.

Offset 1, canonical program `A256944.P11403239477205446670`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257282, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256944 (n : ℕ) : ℤ :=
  A256944.P11403239477205446670.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257282, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257501.P11950046540205641213

`A008315(A025581(n)+A108872(n+1)²)`
-/

namespace A257501.P11950046540205641213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (A025581 n + A108872 (n + 1) ^ 2).toNat

end

end A257501.P11950046540205641213

noncomputable section

/-- A257501: Triangle, read by rows, T(n,k) = 2*k*C(2*(n+k),n-k)/(n+k).

Offset 1, canonical program `A257501.P11950046540205641213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A257501 (n : ℕ) : ℤ :=
  A257501.P11950046540205641213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A257501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257772.P5607000634846873249

`eq[0, A063524(A350090(n))]`
-/

namespace A257772.P5607000634846873249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A350090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257772.P5607000634846873249

noncomputable section

/-- A257772: Numbers n>=0 such that (n+1)^3 - n^3 = 3*n^2+3*n+1 is not prime.

Offset 1, canonical program `A257772.P5607000634846873249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8036 terms. -/
def A257772 (n : ℕ) : ℤ :=
  (A257772.P5607000634846873249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8036 terms. -/
def A257772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258410.P8287264255903413337

`A031448(n+2)-1`
-/

namespace A258410.P8287264255903413337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031448 (n + 2) - 1

end

end A258410.P8287264255903413337

noncomputable section

/-- A258410: Nonnegative integers with an equal number of occurrences of all digits in bijective base-2 numeration.

Offset 1, canonical program `A258410.P8287264255903413337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A258410 (n : ℕ) : ℤ :=
  A258410.P8287264255903413337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A258410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258775.P1042665196751657827

`eq[1, A289356(A000203(n+1))]+1`
-/

namespace A258775.P1042665196751657827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258775.P1042665196751657827

noncomputable section

/-- A258775: Numbers n such that 1 + sigma(n)+ sigma(n)^2 is prime.

Offset 1, canonical program `A258775.P1042665196751657827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 712 terms. -/
def A258775 (n : ℕ) : ℤ :=
  (A258775.P1042665196751657827.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 712 terms. -/
def A258775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259022.P10610587729386923475

`A259024(2*n+1)`
-/

namespace A259022.P10610587729386923475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259024 (2 * n + 1)

end

end A259022.P10610587729386923475

noncomputable section

/-- A259022: Period 9 sequence [ 1, -1, -1, 1, 0, -1, 1, 1, -1, ...].

Offset 0, canonical program `A259022.P10610587729386923475`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259024, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259022 (n : ℕ) : ℤ :=
  A259022.P10610587729386923475.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259024, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259185.P964314148643136700

`eq[1, A289356(A039653(n))]`
-/

namespace A259185.P964314148643136700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259185.P964314148643136700

noncomputable section

/-- A259185: Numbers n such that 1 - sigma(n) + sigma(n)^2 is prime.

Offset 1, canonical program `A259185.P964314148643136700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A259185 (n : ℕ) : ℤ :=
  (A259185.P964314148643136700.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A259185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259775.P2988660272303760513

`A029644(A184676(n+2))`
-/

namespace A259775.P2988660272303760513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 (A184676 (n + 2)).toNat

end

end A259775.P2988660272303760513

noncomputable section

/-- A259775: Stepped path in P(k,n) array of k-th partial sums of squares (A000290).

Offset 1, canonical program `A259775.P2988660272303760513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A259775 (n : ℕ) : ℤ :=
  A259775.P2988660272303760513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A259775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262683.P9302618000557413525

`1-A262684(n+1)`
-/

namespace A262683.P9302618000557413525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A262684 (n + 1)

end

end A262683.P9302618000557413525

noncomputable section

/-- A262683: Characteristic function for A182859.

Offset 1, canonical program `A262683.P9302618000557413525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262683 (n : ℕ) : ℤ :=
  A262683.P9302618000557413525.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263084.P13363642153998921950

`A263086(n+1)-A263085(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263084.P13363642153998921950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263086 (n + 1) - A263085 (n + 1)

end

end A263084.P13363642153998921950

noncomputable section

/-- A263084: a(n) = A263086(n) - A263085(n).

Offset 1, canonical program `A263084.P13363642153998921950`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263084 (n : ℕ) : ℤ :=
  A263084.P13363642153998921950.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263084.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A264387.P2910925617492252044

`(A039956(n+1)-2)/4`
-/

namespace A264387.P2910925617492252044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039956 (n + 1) - 2 : ℚ) / 4

end

end A264387.P2910925617492252044

noncomputable section

/-- A264387: 2*(1+2*a(n)) is the n-th even squarefree number A039956(n), n >= 1.

Offset 1, canonical program `A264387.P2910925617492252044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264387 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A264387.P2910925617492252044.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265721.P16975176845016475372

`and(A266176(n), A266668(n))`
-/

namespace A265721.P16975176845016475372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266176 n) (A266668 n)

end

end A265721.P16975176845016475372

noncomputable section

/-- A265721: Decimal representation of the n-th iteration of the "Rule 1" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A265721.P16975176845016475372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A265721 (n : ℕ) : ℤ :=
  A265721.P16975176845016475372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A265721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271859.P17621566559710261846

`∑[and(2, -A312927(n+1))]-n`
-/

namespace A271859.P17621566559710261846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-A312927 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A271859.P17621566559710261846

noncomputable section

/-- A271859: Six steps forward, five steps back.

Offset 0, canonical program `A271859.P17621566559710261846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A271859 (n : ℕ) : ℤ :=
  A271859.P17621566559710261846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A271859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273324.P15973917214182213865

`A000196(1+A278491(n+1))`
-/

namespace A273324.P15973917214182213865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (1 + A278491 (n + 1)).toNat

end

end A273324.P15973917214182213865

noncomputable section

/-- A273324: Integers m such that m^2 + 3 is the sum of 4 but no fewer nonzero squares.

Offset 1, canonical program `A273324.P15973917214182213865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273324 (n : ℕ) : ℤ :=
  A273324.P15973917214182213865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277934.P4622125546588062441

`and(A281217(n), A282388(n))`
-/

namespace A277934.P4622125546588062441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281217 n) (A282388 n)

end

end A277934.P4622125546588062441

noncomputable section

/-- A277934: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 6", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277934.P4622125546588062441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A277934 (n : ℕ) : ℤ :=
  A277934.P4622125546588062441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A277934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279877.P16277548362096035639

`A279879(n)+A282415(n)-A282417(n)`
-/

namespace A279877.P16277548362096035639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279879 n + (A282415 n - A282417 n)

end

end A279877.P16277548362096035639

noncomputable section

/-- A279877: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 213", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A279877.P16277548362096035639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A279877 (n : ℕ) : ℤ :=
  A279877.P16277548362096035639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A279877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284236.P9099022732925578286

`lcm(A284235(n), A287742(A266722(n)))`
-/

namespace A284236.P9099022732925578286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A284235 n) (A287742 (A266722 n).toNat)

end

end A284236.P9099022732925578286

noncomputable section

/-- A284236: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A284236.P9099022732925578286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A284236 (n : ℕ) : ℤ :=
  (A284236.P9099022732925578286.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A284236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284789.P6683369917162461841

`char[A284791(n+1)-1]`
-/

namespace A284789.P6683369917162461841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284791 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284789.P6683369917162461841

noncomputable section

/-- A284789: {1001->0}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A284789.P6683369917162461841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284789 (n : ℕ) : ℤ :=
  (A284789.P6683369917162461841.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285963.P5606189406368919503

`char[A285965(n+1)-1]`
-/

namespace A285963.P5606189406368919503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285965 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285963.P5606189406368919503

noncomputable section

/-- A285963: {11->0}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285963.P5606189406368919503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285963 (n : ℕ) : ℤ :=
  (A285963.P5606189406368919503.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285964.P643415714002808842

`comp[A285965(n+1)-1]+1`
-/

namespace A285964.P643415714002808842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285965 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285964.P643415714002808842

noncomputable section

/-- A285964: Positions of 0 in A285963; complement of A285965.

Offset 1, canonical program `A285964.P643415714002808842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285964 (n : ℕ) : ℤ :=
  (A285964.P643415714002808842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286628.P18256267008233098291

`val(A337360(n+1), A070824(n+1)+2)`
-/

namespace A286628.P18256267008233098291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A337360 (n + 1)).toNat (A070824 (n + 1) + 2).toNat

end

end A286628.P18256267008233098291

noncomputable section

/-- A286628: a(n) = exponent of the highest power of A000005(n) (number of divisors of n) dividing A000203(n) (sum of divisors of n), a(1) = 1.

Offset 1, canonical program `A286628.P18256267008233098291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286628 (n : ℕ) : ℤ :=
  (A286628.P18256267008233098291.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289839.P232396368753379632

`∩[A007641(n+1), A127576(n+1)]`
-/

namespace A289839.P232396368753379632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289839.P232396368753379632

noncomputable section

/-- A289839: Primes of the form 8*n^2+8*n+31.

Offset 1, canonical program `A289839.P232396368753379632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A289839 (n : ℕ) : ℤ :=
  (A289839.P232396368753379632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A289839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298637.P8725967472440177117

`(A082375(n)+1)*A008315(n)`
-/

namespace A298637.P8725967472440177117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082375 n + 1) * A008315 n

end

end A298637.P8725967472440177117

noncomputable section

/-- A298637: Triangular array of a Catalan number variety: T(n,k) is the number of words consisting of n parentheses containing k well-balanced pairs.

Offset 0, canonical program `A298637.P8725967472440177117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298637 (n : ℕ) : ℤ :=
  A298637.P8725967472440177117.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298668.P7922596898981763490

`A142071(A056536(n+2)-A057427(n))`
-/

namespace A298668.P7922596898981763490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142071 (A056536 (n + 2) - A057427 n).toNat

end

end A298668.P7922596898981763490

noncomputable section

/-- A298668: Number T(n,k) of set partitions of [n] into k blocks such that the absolute difference between least elements of consecutive blocks is always > 1; triangle T(n,k), n>=0, 0<=k<=ceiling(n/2), read by rows.

Offset 0, canonical program `A298668.P7922596898981763490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. -/
def A298668 (n : ℕ) : ℤ :=
  A298668.P7922596898981763490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. -/
def A298668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287194.P11056681714251016849

`xor(A000035(n), A290192(n*A000035(n)))`
-/

namespace A287194.P11056681714251016849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A290192 ((n : ℤ) * A000035 n).toNat)

end

end A287194.P11056681714251016849

noncomputable section

/-- A287194: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A287194.P11056681714251016849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A287194 (n : ℕ) : ℤ :=
  A287194.P11056681714251016849.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A287194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194196.P7947729533032304729

`∩[A006532(n+1), A164722(n+1)]`
-/

namespace A194196.P7947729533032304729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194196.P7947729533032304729

noncomputable section

/-- A194196: Numbers k such that the sum of the divisors of k and the sum of the distinct prime divisors of k are both a square.

Offset 1, canonical program `A194196.P7947729533032304729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A194196 (n : ℕ) : ℤ :=
  (A194196.P7947729533032304729.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A194196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194579.P6279070803059388328

`eq[1, A010051(A023890(n+1))]+1`
-/

namespace A194579.P6279070803059388328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A023890 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A194579.P6279070803059388328

noncomputable section

/-- A194579: Numbers whose sum of the their nonprime divisors is prime.

Offset 1, canonical program `A194579.P6279070803059388328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. -/
def A194579 (n : ℕ) : ℤ :=
  (A194579.P6279070803059388328.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. -/
def A194579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198192.P297267374256015153

`n*A000120(n)-A073642(n)`
-/

namespace A198192.P297267374256015153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000120 n - A073642 n

end

end A198192.P297267374256015153

noncomputable section

/-- A198192: Replace 2^k in the binary representation of n with n-k (i.e. if n = 2^a + 2^b + 2^c + ... then a(n) = (n-a) + (n-b) + (n-c) + ...).

Offset 0, canonical program `A198192.P297267374256015153`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A198192 (n : ℕ) : ℤ :=
  A198192.P297267374256015153.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A198192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A198772.P17358713934612375480

`eq[1, A088534(n)]`
-/

namespace A198772.P17358713934612375480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198772.P17358713934612375480

noncomputable section

/-- A198772: Numbers having exactly one representation by the quadratic form x^2 + xy + y^2 with 0 <= x <= y.

Offset 1, canonical program `A198772.P17358713934612375480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1602 terms. -/
def A198772 (n : ℕ) : ℤ :=
  (A198772.P17358713934612375480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1602 terms. -/
def A198772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198773.P9580269409749445234

`eq[2, A088534(n)]`
-/

namespace A198773.P9580269409749445234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198773.P9580269409749445234

noncomputable section

/-- A198773: Numbers having exactly two representations by the quadratic form x^2+xy+y^2 with 0<=x<=y.

Offset 1, canonical program `A198773.P9580269409749445234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A198773 (n : ℕ) : ℤ :=
  (A198773.P9580269409749445234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A198773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217575.P8898210276207211588

`A063657(n+1)-1`
-/

namespace A217575.P8898210276207211588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1) - 1

end

end A217575.P8898210276207211588

noncomputable section

/-- A217575: Numbers n such that floor(sqrt(n)) = floor(n/floor(sqrt(n)))-1.

Offset 1, canonical program `A217575.P8898210276207211588`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063657, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217575 (n : ℕ) : ℤ :=
  A217575.P8898210276207211588.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063657, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219637.P9877023548532234555

`A003622(n+1)-A143299(n+1)`
-/

namespace A219637.P9877023548532234555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) - A143299 (n + 1)

end

end A219637.P9877023548532234555

noncomputable section

/-- A219637: Numbers that occur twice in A219641.

Offset 1, canonical program `A219637.P9877023548532234555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219637 (n : ℕ) : ℤ :=
  A219637.P9877023548532234555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220116.P3171378606926799839

`eq[A063787(n+1), A143299(n+1)]`
-/

namespace A220116.P3171378606926799839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A220116.P3171378606926799839

noncomputable section

/-- A220116: Numbers k such that the number of 1's in binary expansion of k equals the number of terms in Zeckendorf representation of k.

Offset 1, canonical program `A220116.P3171378606926799839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1689 terms. -/
def A220116 (n : ℕ) : ℤ :=
  (A220116.P3171378606926799839.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1689 terms. -/
def A220116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227428.P16365958953958314226

`A006047(n)-A206424(n)`
-/

namespace A227428.P16365958953958314226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n - A206424 n

end

end A227428.P16365958953958314226

noncomputable section

/-- A227428: Number of twos in row n of triangle A083093.

Offset 0, canonical program `A227428.P16365958953958314226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A206424, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227428 (n : ℕ) : ℤ :=
  A227428.P16365958953958314226.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A206424, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227696.P2497490565356281867

`(-1)^n*A033687(n)`
-/

namespace A227696.P2497490565356281867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A033687 n

end

end A227696.P2497490565356281867

noncomputable section

/-- A227696: Expansion of f(x^3)^3 / f(x) in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A227696.P2497490565356281867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227696 (n : ℕ) : ℤ :=
  A227696.P2497490565356281867.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227696.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230877.P5743359450081405431

`A000120(n)*A070939(n)-A073642(n)`
-/

namespace A230877.P5743359450081405431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A070939 n - A073642 n

end

end A230877.P5743359450081405431

noncomputable section

/-- A230877: If n = Sum_{i=0..m} c(i)*2^i, c(i) = 0 or 1, then a(n) = Sum_{i=0..m} (m+1-i)*c(i).

Offset 0, canonical program `A230877.P5743359450081405431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A230877 (n : ℕ) : ℤ :=
  A230877.P5743359450081405431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A230877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231086.P15220536245985747541

`A005101(eq[2, A125115(n+1)]+1)`
-/

namespace A231086.P15220536245985747541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A231086.P15220536245985747541

noncomputable section

/-- A231086: Initial members of abundant twins, i.e., values of k such that (k, k+2) are both abundant numbers.

Offset 1, canonical program `A231086.P15220536245985747541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A231086 (n : ℕ) : ℤ :=
  A231086.P15220536245985747541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A231086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233931.P3085312143408834757

`A011371(n)-A233905(n)`
-/

namespace A233931.P3085312143408834757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - A233905 n

end

end A233931.P3085312143408834757

noncomputable section

/-- A233931: a(2n) = a(n) + n, a(2n+1) = a(n), with a(0)=0.

Offset 0, canonical program `A233931.P3085312143408834757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233931 (n : ℕ) : ℤ :=
  A233931.P3085312143408834757.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240471.P16559691401638773445

`(A038040(n+1)-A106315(n+1))/A000203(n+1)`
-/

namespace A240471.P16559691401638773445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) - A106315 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A240471.P16559691401638773445

noncomputable section

/-- A240471: Integer part of (n * A000005(n) / A000203(n)).

Offset 1, canonical program `A240471.P16559691401638773445`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106315, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240471 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A240471.P16559691401638773445.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106315, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248057.P14508397276911672393

`A157971(n+1)+1`
-/

namespace A248057.P14508397276911672393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157971 (n + 1) + 1

end

end A248057.P14508397276911672393

noncomputable section

/-- A248057: Positions of 1,1 in the Thue-Morse sequence (A010060).

Offset 1, canonical program `A248057.P14508397276911672393`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248057 (n : ℕ) : ℤ :=
  A248057.P14508397276911672393.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A250477.P16411795154775873264

`A120941(n+1)+3`
-/

namespace A250477.P16411795154775873264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120941 (n + 1) + 3

end

end A250477.P16411795154775873264

noncomputable section

/-- A250477: Number of times prime(n) (the n-th prime) occurs as the least prime factor among numbers 1 .. (prime(n)^2 * prime(n+1)): a(n) = A078898(A251720(n)).

Offset 1, canonical program `A250477.P16411795154775873264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2390 terms. -/
def A250477 (n : ℕ) : ℤ :=
  A250477.P16411795154775873264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2390 terms. -/
def A250477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252477.P7231859735119608919

`A079636(n+1)-1`
-/

namespace A252477.P7231859735119608919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079636 (n + 1) - 1

end

end A252477.P7231859735119608919

noncomputable section

/-- A252477: Integer part of 1/(sqrt(prime(n+1))-sqrt(prime(n))).

Offset 1, canonical program `A252477.P7231859735119608919`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079636, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252477 (n : ℕ) : ℤ :=
  A252477.P7231859735119608919.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079636, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252477.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260299.P3373541649294797026

`A000720(A260298(n+1))`
-/

namespace A260299.P3373541649294797026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A260298 (n + 1)).toNat

end

end A260299.P3373541649294797026

noncomputable section

/-- A260299: Numbers k such that hyperfactorial(prime(k)-1) == 1 (mod prime(k)).

Offset 1, canonical program `A260299.P3373541649294797026`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260299 (n : ℕ) : ℤ :=
  A260299.P3373541649294797026.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262871.P5571121125344339502

`∑[C(A038387(n+1)+1, n)%(n+1)]`
-/

namespace A262871.P5571121125344339502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A038387 (n + 1) + 1).toNat n % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262871.P5571121125344339502

noncomputable section

/-- A262871: Sum of the squarefree numbers appearing among the smaller parts of the partitions of n into two parts.

Offset 1, canonical program `A262871.P5571121125344339502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262871 (n : ℕ) : ℤ :=
  (A262871.P5571121125344339502.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266399.P1095466878509301204

`A188163(A088359(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266399.P1095466878509301204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (A088359 (n + 1)).toNat

end

end A266399.P1095466878509301204

noncomputable section

/-- A266399: a(n) = A188163(A088359(n)); positions where A004001 obtains unique values.

Offset 1, canonical program `A266399.P1095466878509301204`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088359, A188163, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266399 (n : ℕ) : ℤ :=
  A266399.P1095466878509301204.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088359, A188163, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266399.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270190.P5937021515272501996

`A269399(n+1)+6`
-/

namespace A270190.P5937021515272501996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269399 (n + 1) + 6

end

end A270190.P5937021515272501996

noncomputable section

/-- A270190: Numbers n for which prime(n+1)-prime(n) is a multiple of three.

Offset 1, canonical program `A270190.P5937021515272501996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269399, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270190 (n : ℕ) : ℤ :=
  A270190.P5937021515272501996.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269399, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270190.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274437.P16973748106690964927

`lt[A005090(n+1), A005088(n+1)]+1`
-/

namespace A274437.P16973748106690964927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A274437.P16973748106690964927

noncomputable section

/-- A274437: Numbers having more distinct prime factors of form 3*k+1 than of the form 3*k+2.

Offset 1, canonical program `A274437.P16973748106690964927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2085 terms. -/
def A274437 (n : ℕ) : ℤ :=
  (A274437.P16973748106690964927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2085 terms. -/
def A274437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283981.P14600652629483997425

`A029931(n)-A280700(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283981.P14600652629483997425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A280700 n

end

end A283981.P14600652629483997425

noncomputable section

/-- A283981: a(n) = A029931(n) - A280700(n).

Offset 0, canonical program `A283981.P14600652629483997425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283981 (n : ℕ) : ℤ :=
  A283981.P14600652629483997425.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283981.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284118.P3814757859129945566

`A048250(n+1)-A008472(n+1)`
-/

namespace A284118.P3814757859129945566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A008472 (n + 1)

end

end A284118.P3814757859129945566

noncomputable section

/-- A284118: Sum of nonprime squarefree divisors of n.

Offset 1, canonical program `A284118.P3814757859129945566`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284118 (n : ℕ) : ℤ :=
  A284118.P3814757859129945566.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284118.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288625.P5745602300368746224

`2*n+3-A143299(n+1)`
-/

namespace A288625.P5745602300368746224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A143299 (n + 1)

end

end A288625.P5745602300368746224

noncomputable section

/-- A288625: Positions of 0 in A288375; complement of A283794.

Offset 1, canonical program `A288625.P5745602300368746224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288625 (n : ℕ) : ℤ :=
  A288625.P5745602300368746224.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292257.P4438175682071365739

`A192895(n+1)+A000120(n+1)`
-/

namespace A292257.P4438175682071365739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (n + 1) + A000120 (n + 1)

end

end A292257.P4438175682071365739

noncomputable section

/-- A292257: a(n) is the total number of 1's in binary expansion of all proper divisors of n.

Offset 1, canonical program `A292257.P4438175682071365739`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292257 (n : ℕ) : ℤ :=
  A292257.P4438175682071365739.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293359.P17443390046892914447

`∑[A293361(A057428(n)+n)]`
-/

namespace A293359.P17443390046892914447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293361 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293359.P17443390046892914447

noncomputable section

/-- A293359: Greatest integer k such that k/2^n < e^2.

Offset 0, canonical program `A293359.P17443390046892914447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A293359 (n : ℕ) : ℤ :=
  A293359.P17443390046892914447.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A293359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293901.P14790839592899706069

`A050449(n+1)%(n+1)`
-/

namespace A293901.P14790839592899706069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050449 (n + 1)) (n + 1 : ℤ)

end

end A293901.P14790839592899706069

noncomputable section

/-- A293901: Sum of proper divisors of n of the form 4k+1.

Offset 1, canonical program `A293901.P14790839592899706069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293901 (n : ℕ) : ℤ :=
  A293901.P14790839592899706069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294023.P12009949958102323992

`(n+1)*A056172(n+1)-2*A063960(n+1)`
-/

namespace A294023.P12009949958102323992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056172 (n + 1) - 2 * A063960 (n + 1)

end

end A294023.P12009949958102323992

noncomputable section

/-- A294023: Sum of the differences of the larger and smaller parts in the partitions of n into two parts with the smaller part prime.

Offset 1, canonical program `A294023.P12009949958102323992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056172, A063960, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294023 (n : ℕ) : ℤ :=
  A294023.P12009949958102323992.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056172, A063960, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294023.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294602.P13576382201682243121

`A056171(n+1)-A010051(n+1)`
-/

namespace A294602.P13576382201682243121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (n + 1) - A010051 (n + 1)

end

end A294602.P13576382201682243121

noncomputable section

/-- A294602: a(n) = pi(n-1) - pi(floor(n/2)), where pi is A000720.

Offset 1, canonical program `A294602.P13576382201682243121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A056171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294602 (n : ℕ) : ℤ :=
  A294602.P13576382201682243121.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A056171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294602.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A299150.P3795475608102794918

`A046644(n+1)/A006519(n+1)`
-/

namespace A299150.P3795475608102794918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A299150.P3795475608102794918

noncomputable section

/-- A299150: Denominators of the positive solution to n = Sum_{d|n} a(d) * a(n/d).

Offset 1, canonical program `A299150.P3795475608102794918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299150 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A299150.P3795475608102794918.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A197125.P18255023952800122517

`∩[A028839(n+1), A175396(n+1)]`
-/

namespace A197125.P18255023952800122517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197125.P18255023952800122517

noncomputable section

/-- A197125: Numbers such that sum of digits and sum of the square of digits are both a square.

Offset 1, canonical program `A197125.P18255023952800122517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A197125 (n : ℕ) : ℤ :=
  (A197125.P18255023952800122517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A197125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206023.P1386977352654447418

`∩[A015919(n+1)+2, A015919(n+1)]`
-/

namespace A206023.P1386977352654447418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206023.P1386977352654447418

noncomputable section

/-- A206023: 2^n == 3n+2 (mod n^2-2n).

Offset 1, canonical program `A206023.P1386977352654447418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A206023 (n : ℕ) : ℤ :=
  (A206023.P1386977352654447418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A206023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206626.P17427154198684155407

`A206329(n+1)-A206462(n+1)`
-/

namespace A206626.P17427154198684155407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206329 (n + 1) - A206462 (n + 1)

end

end A206626.P17427154198684155407

noncomputable section

/-- A206626: Primes p such that p + previousprime(p) is a squarefree number.

Offset 1, canonical program `A206626.P17427154198684155407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206329, A206462, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A206626 (n : ℕ) : ℤ :=
  A206626.P17427154198684155407.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206329, A206462, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A206626.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206778.P8563083119957903362

`filter[A162306(n+1), A008966(#)]`
-/

namespace A206778.P8563083119957903362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A206778.P8563083119957903362

noncomputable section

/-- A206778: Irregular triangle in which n-th row lists squarefree divisors (A005117) of n.

Offset 1, canonical program `A206778.P8563083119957903362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4987 terms. -/
def A206778 (n : ℕ) : ℤ :=
  A206778.P8563083119957903362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4987 terms. -/
def A206778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211484.P16708190854633799120

`∩[A030231(n+1), A366762(n+1)]`
-/

namespace A211484.P16708190854633799120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211484.P16708190854633799120

noncomputable section

/-- A211484: Numbers for which the canonical prime factorization contains only an even number of exponents, all of which are congruent to 1 modulo 3.

Offset 1, canonical program `A211484.P16708190854633799120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. -/
def A211484 (n : ℕ) : ℤ :=
  (A211484.P16708190854633799120.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. -/
def A211484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224915.P15850589756246024201

`(A001196(n)-n)/2`
-/

namespace A224915.P15850589756246024201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001196 n - (n : ℤ) : ℚ) / 2

end

end A224915.P15850589756246024201

noncomputable section

/-- A224915: a(n) = Sum_{k=0..n} n XOR k where XOR is the bitwise logical exclusive-or operator.

Offset 0, canonical program `A224915.P15850589756246024201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224915 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A224915.P15850589756246024201.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224924.P9265397642440561853

`∑[6*A213673(n)+n]`
-/

namespace A224924.P9265397642440561853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A213673 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224924.P9265397642440561853

noncomputable section

/-- A224924: Sum_{i=0..n} Sum_{j=0..n} (i AND j), where AND is the binary logical AND operator.

Offset 0, canonical program `A224924.P9265397642440561853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A224924 (n : ℕ) : ℤ :=
  A224924.P9265397642440561853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A224924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227095.P16618635948200259415

`eq[9, A173528(n+1)]`
-/

namespace A227095.P16618635948200259415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227095.P16618635948200259415

noncomputable section

/-- A227095: Numbers whose base-8 sum of digits is 8.

Offset 1, canonical program `A227095.P16618635948200259415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A227095 (n : ℕ) : ℤ :=
  (A227095.P16618635948200259415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A227095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229527.P13631613153917723795

`A062028(a(n-1))+1` with `a(0)=1`
-/

namespace A229527.P13631613153917723795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062028 (a (n - 1)).toNat + 1

end

end A229527.P13631613153917723795

noncomputable section

/-- A229527: Start with 1, skip (sum of digits of n) numbers, accept next number.

Offset 1, canonical program `A229527.P13631613153917723795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A229527 (n : ℕ) : ℤ :=
  A229527.P13631613153917723795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A229527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231682.P14854101076037231145

`∑[(A173528(n+1)-1)^3]`
-/

namespace A231682.P14854101076037231145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173528 (n + 1) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231682.P14854101076037231145

noncomputable section

/-- A231682: a(n) = Sum_{i=0..n} digsum_8(i)^3, where digsum_8(i) = A053829(i).

Offset 0, canonical program `A231682.P14854101076037231145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231682 (n : ℕ) : ℤ :=
  A231682.P14854101076037231145.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232709.P8146322751901021874

`eq[A010879(A007954(n)), A053837(n)]`
-/

namespace A232709.P8146322751901021874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232709.P8146322751901021874

noncomputable section

/-- A232709: Nonnegative integers such that the sum of digits mod 10 equals the product of digits mod 10.

Offset 1, canonical program `A232709.P8146322751901021874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. -/
def A232709 (n : ℕ) : ℤ :=
  (A232709.P8146322751901021874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. -/
def A232709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235227.P8259672704330077809

`∩[A028838(n+1), A017245(n)]`
-/

namespace A235227.P8259672704330077809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P8259672704330077809

noncomputable section

/-- A235227: Numbers whose sum of digits is 16.

Offset 1, canonical program `A235227.P8259672704330077809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3675 terms. -/
def A235227 (n : ℕ) : ℤ :=
  (A235227.P8259672704330077809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3675 terms. -/
def A235227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242677.P4071707202624245255

`eq[A105700(n)², A077809(A257088(n))]`
-/

namespace A242677.P4071707202624245255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077809 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242677.P4071707202624245255

noncomputable section

/-- A242677: Semiprimes whose binary representation, read in decimal, is also semiprime.

Offset 1, canonical program `A242677.P4071707202624245255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A242677 (n : ℕ) : ℤ :=
  (A242677.P4071707202624245255.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A242677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243586.P11937443837050676484

`p?[n*A010051(A007953(n)+3)]`
-/

namespace A243586.P11937443837050676484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (A007953 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243586.P11937443837050676484

noncomputable section

/-- A243586: Primes p such that sum of digits + 3 is prime.

Offset 1, canonical program `A243586.P11937443837050676484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A243586 (n : ℕ) : ℤ :=
  A243586.P11937443837050676484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A243586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243617.P13077696560610616016

`∩[A052382(n+1), A243615(n+1)]`
-/

namespace A243617.P13077696560610616016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243617.P13077696560610616016

noncomputable section

/-- A243617: Numbers whose sum of digits equals the number of bits in its binary expansion. No zeros allowed in the digital expansion.

Offset 1, canonical program `A243617.P13077696560610616016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A243617 (n : ℕ) : ℤ :=
  (A243617.P13077696560610616016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A243617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243619.P16873152795867746307

`p?[A243615(n+1)]`
-/

namespace A243619.P16873152795867746307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243619.P16873152795867746307

noncomputable section

/-- A243619: Prime numbers n whose digital sum equals the number of bits in its binary expansion.

Offset 1, canonical program `A243619.P16873152795867746307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A243619 (n : ℕ) : ℤ :=
  A243619.P16873152795867746307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A243619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243621.P1145434379709672563

`∩[A010784(n+1), A243615(n+1)]`
-/

namespace A243621.P1145434379709672563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243621.P1145434379709672563

noncomputable section

/-- A243621: Numbers whose digital sum equals the number of bits in its binary expansion. Repeated digits in decimal expansion are not allowed.

Offset 1, canonical program `A243621.P1145434379709672563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A243621 (n : ℕ) : ℤ :=
  (A243621.P1145434379709672563.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A243621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249043.P15231578259827823311

`A062028(a(n-1))` with `a(0)=42`
-/

namespace A249043.P15231578259827823311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [42] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A249043.P15231578259827823311

noncomputable section

/-- A249043: a(1) = 42; a(n+1) = a(n) + sum of decimal digits of a(n).

Offset 1, canonical program `A249043.P15231578259827823311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 582 terms. -/
def A249043 (n : ℕ) : ℤ :=
  A249043.P15231578259827823311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 582 terms. -/
def A249043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249121.P5600374421228380133

`n-A061762(n)`
-/

namespace A249121.P5600374421228380133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A061762 n

end

end A249121.P5600374421228380133

noncomputable section

/-- A249121: a(n) = n - (sum of digits of n) - (product of digits of n).

Offset 0, canonical program `A249121.P5600374421228380133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249121 (n : ℕ) : ℤ :=
  A249121.P5600374421228380133.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249121.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256293.P2541555998451652213

`A004488(A171960(n))`
-/

namespace A256293.P2541555998451652213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A171960 n).toNat

end

end A256293.P2541555998451652213

noncomputable section

/-- A256293: Apply the transformation 0 -> 1 -> 2 -> 0 to the digits of n written in base 3, then convert back to base 10.

Offset 0, canonical program `A256293.P2541555998451652213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256293 (n : ℕ) : ℤ :=
  A256293.P2541555998451652213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257569.P5073290177656356380

`A056792(A054238(n))`
-/

namespace A257569.P5073290177656356380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (A054238 n).toNat

end

end A257569.P5073290177656356380

noncomputable section

/-- A257569: Triangular array read by rows: T(h,k) = number of steps from (h,k) to (0,0), where one step is (x,y) -> (x-1, y) if x is odd or (x,y) -> (y, x/2) if x is even.

Offset 1, canonical program `A257569.P5073290177656356380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A257569 (n : ℕ) : ℤ :=
  A257569.P5073290177656356380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A257569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258938.P11786850421693522442

`lt[n², n*A139374(n)]`
-/

namespace A258938.P11786850421693522442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A139374 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258938.P11786850421693522442

noncomputable section

/-- A258938: Index of the Lucas numbers in A258740.

Offset 1, canonical program `A258938.P11786850421693522442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A258938 (n : ℕ) : ℤ :=
  (A258938.P11786850421693522442.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A258938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260455.P9893475964516076535

`1-A260456(n+1)`
-/

namespace A260455.P9893475964516076535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A260456 (n + 1)

end

end A260455.P9893475964516076535

noncomputable section

/-- A260455: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = 0 and midword sequence (1,null,1,null,1,null,...); see Comments.

Offset 1, canonical program `A260455.P9893475964516076535`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260455 (n : ℕ) : ℤ :=
  A260455.P9893475964516076535.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273159.P2710656007498216518

`eq[0, A118881(n)%7]`
-/

namespace A273159.P2710656007498216518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118881 n) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273159.P2710656007498216518

noncomputable section

/-- A273159: Numbers whose digit sum is divisible by 7.

Offset 1, canonical program `A273159.P2710656007498216518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1422 terms. -/
def A273159 (n : ℕ) : ℤ :=
  (A273159.P2710656007498216518.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1422 terms. -/
def A273159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276112.P8212586368584105175

`A071562(n+2)-1`
-/

namespace A276112.P8212586368584105175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 2) - 1

end

end A276112.P8212586368584105175

noncomputable section

/-- A276112: Numbers with precipice 1: descending by the main diagonal of the pyramid described in A245092, the height difference between the level a(n) (starting from the top) and the level of the next terrace is equal to 1.

Offset 1, canonical program `A276112.P8212586368584105175`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276112 (n : ℕ) : ℤ :=
  A276112.P8212586368584105175.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276112.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278042.P17948730681649741485

`∑{digits}[A278038(n), 1-#]`
-/

namespace A278042.P17948730681649741485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A278042.P17948730681649741485

noncomputable section

/-- A278042: Number of 0's in tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A278042.P17948730681649741485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278042 (n : ℕ) : ℤ :=
  A278042.P17948730681649741485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279458.P16976233013369130140

`∩[A028260(n+1), A030231(n+1)]`
-/

namespace A279458.P16976233013369130140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279458.P16976233013369130140

noncomputable section

/-- A279458: Numbers k such that number of distinct primes dividing k is even and number of prime divisors (counted with multiplicity) of k is even.

Offset 1, canonical program `A279458.P16976233013369130140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7333 terms. -/
def A279458 (n : ℕ) : ℤ :=
  (A279458.P16976233013369130140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7333 terms. -/
def A279458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280223.P8560381770176027686

`A071562(A348110(n+1)+1)-(n+1)`
-/

namespace A280223.P8560381770176027686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (A348110 (n + 1) + 1).toNat - (n + 1 : ℤ)

end

end A280223.P8560381770176027686

noncomputable section

/-- A280223: Distance of n to the next number with middle divisors.

Offset 1, canonical program `A280223.P8560381770176027686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280223 (n : ℕ) : ℤ :=
  A280223.P8560381770176027686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289813.P9011554254818249259

`A289814(A004488(n))`
-/

namespace A289813.P9011554254818249259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A004488 n).toNat

end

end A289813.P9011554254818249259

noncomputable section

/-- A289813: A binary encoding of the ones in ternary representation of n (see Comments for precise definition).

Offset 0, canonical program `A289813.P9011554254818249259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004488, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289813 (n : ℕ) : ℤ :=
  A289813.P9011554254818249259.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004488, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289813.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291641.P4805494574019733392

`eq[2, A333206(n)]`
-/

namespace A291641.P4805494574019733392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291641.P4805494574019733392

noncomputable section

/-- A291641: Numbers k such that 2 is the smallest decimal digit of k^3.

Offset 1, canonical program `A291641.P4805494574019733392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A291641 (n : ℕ) : ℤ :=
  (A291641.P4805494574019733392.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A291641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291642.P13038753502478863596

`eq[3, A333206(n)]`
-/

namespace A291642.P13038753502478863596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291642.P13038753502478863596

noncomputable section

/-- A291642: Numbers k such that 3 is the smallest decimal digit of k^3.

Offset 1, canonical program `A291642.P13038753502478863596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A291642 (n : ℕ) : ℤ :=
  (A291642.P13038753502478863596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A291642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293227.P10221016559153575789

`A034444(n+1)-A008966(n+1)`
-/

namespace A293227.P10221016559153575789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A008966 (n + 1)

end

end A293227.P10221016559153575789

noncomputable section

/-- A293227: a(n) is the number of proper divisors of n that are squarefree.

Offset 1, canonical program `A293227.P10221016559153575789`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293227 (n : ℕ) : ℤ :=
  A293227.P10221016559153575789.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293228.P12584576629834751598

`A048250(n+1)-A008966(n+1)*(n+1)`
-/

namespace A293228.P12584576629834751598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A008966 (n + 1) * (n + 1 : ℤ)

end

end A293228.P12584576629834751598

noncomputable section

/-- A293228: a(n) is the sum of proper divisors of n that are squarefree.

Offset 1, canonical program `A293228.P12584576629834751598`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293228 (n : ℕ) : ℤ :=
  A293228.P12584576629834751598.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293428.P2335168149116602808

`a(n-1)+A008966(4*n+1)-A107078(4*n+3)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293428.P2335168149116602808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A008966 (4 * n + 1) - A107078 (4 * n + 3))

end

end A293428.P2335168149116602808

noncomputable section

/-- A293428: a(0) = 1; and for n > 0, a(n) = a(n-1) + (A008966(4n+1) - A107078(4n+3)).

Offset 0, canonical program `A293428.P2335168149116602808`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A107078, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293428 (n : ℕ) : ℤ :=
  A293428.P2335168149116602808.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A107078, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294887.P440205835715067692

`A001065(n+1)-A294886(n+1)`
-/

namespace A294887.P440205835715067692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A294886 (n + 1)

end

end A294887.P440205835715067692

noncomputable section

/-- A294887: Sum of nondeficient proper divisors of n.

Offset 1, canonical program `A294887.P440205835715067692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294887 (n : ℕ) : ℤ :=
  A294887.P440205835715067692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294889.P8457081136466232752

`A187795(n+1)-A294937(n+1)*(n+1)`
-/

namespace A294889.P8457081136466232752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (n + 1) - A294937 (n + 1) * (n + 1 : ℤ)

end

end A294889.P8457081136466232752

noncomputable section

/-- A294889: Sum of abundant proper divisors of n.

Offset 1, canonical program `A294889.P8457081136466232752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187795, A294937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294889 (n : ℕ) : ℤ :=
  A294889.P8457081136466232752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187795, A294937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294889.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294890.P16317714658456508675

`∑{d}[n+1, A245552(A080224(#)²)]`
-/

namespace A294890.P16317714658456508675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245552 (A080224 d ^ 2).toNat

end

end A294890.P16317714658456508675

noncomputable section

/-- A294890: Number of divisors of n that are primitively abundant (A091191).

Offset 1, canonical program `A294890.P16317714658456508675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294890 (n : ℕ) : ℤ :=
  A294890.P16317714658456508675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294929.P2023919567513394110

`A080224(n+1)-A294937(n+1)`
-/

namespace A294929.P2023919567513394110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1) - A294937 (n + 1)

end

end A294929.P2023919567513394110

noncomputable section

/-- A294929: Number of proper divisors of n that are abundant (A005101).

Offset 1, canonical program `A294929.P2023919567513394110`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A294937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294929 (n : ℕ) : ℤ :=
  A294929.P2023919567513394110.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A294937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294930.P12845745568245124402

`A245552(A080224(n+1)²)`
-/

namespace A294930.P12845745568245124402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245552 (A080224 (n + 1) ^ 2).toNat

end

end A294930.P12845745568245124402

noncomputable section

/-- A294930: Characteristic function for A091191, primitive abundant numbers: abundant numbers (A005101) having no abundant proper divisor.

Offset 1, canonical program `A294930.P12845745568245124402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294930 (n : ℕ) : ℤ :=
  A294930.P12845745568245124402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297114.P2765220314566008295

`A297111(n+1)-(n+1)`
-/

namespace A297114.P2765220314566008295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (n + 1) - (n + 1 : ℤ)

end

end A297114.P2765220314566008295

noncomputable section

/-- A297114: Möbius transform of A294898, where A294898 is deficiency minus binary weight.

Offset 1, canonical program `A297114.P2765220314566008295`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297111, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297114 (n : ℕ) : ℤ :=
  A297114.P2765220314566008295.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297111, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297114.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A198471.P1128838665379452486

`lt[n+1, A294886(n+1)]+1`
-/

namespace A198471.P1128838665379452486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A198471.P1128838665379452486

noncomputable section

/-- A198471: Abundant numbers that are smaller than the sum of their deficient divisors.

Offset 1, canonical program `A198471.P1128838665379452486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A198471 (n : ℕ) : ℤ :=
  (A198471.P1128838665379452486.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A198471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199339.P3756374579669110308

`∑[A033999(A007605(n+1))]`
-/

namespace A199339.P3756374579669110308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A007605 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199339.P3756374579669110308

noncomputable section

/-- A199339: a(n) = number of primes with an even digit sum among the first n primes minus the number with an odd digit sum.

Offset 1, canonical program `A199339.P3756374579669110308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199339 (n : ℕ) : ℤ :=
  A199339.P3756374579669110308.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200259.P8572923408309876952

`lt[0, val(A007605(n+1), 2)]+1`
-/

namespace A200259.P8572923408309876952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007605 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A200259.P8572923408309876952

noncomputable section

/-- A200259: Numbers k such that k-th prime has an even digit sum.

Offset 1, canonical program `A200259.P8572923408309876952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4925 terms. -/
def A200259 (n : ℕ) : ℤ :=
  (A200259.P8572923408309876952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4925 terms. -/
def A200259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200261.P2236305596718294823

`A059841(A007605(n+1))`
-/

namespace A200261.P2236305596718294823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A007605 (n + 1)).toNat

end

end A200261.P2236305596718294823

noncomputable section

/-- A200261: a(n) = 1 iff n-th prime has an even digit sum.

Offset 1, canonical program `A200261.P2236305596718294823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200261 (n : ℕ) : ℤ :=
  A200261.P2236305596718294823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202089.P7430434944876183357

`eq[A004159(n+1), A004159(n)]`
-/

namespace A202089.P7430434944876183357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202089.P7430434944876183357

noncomputable section

/-- A202089: Numbers n such that n^2 and (n+1)^2 have same digit sum.

Offset 1, canonical program `A202089.P7430434944876183357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A202089 (n : ℕ) : ℤ :=
  (A202089.P7430434944876183357.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A202089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216676.P8042148901367579546

`dr(A388539(n+1))`
-/

namespace A216676.P8042148901367579546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A388539 (n + 1))

end

end A216676.P8042148901367579546

noncomputable section

/-- A216676: Digital roots of squares of Fibonacci numbers.

Offset 1, canonical program `A216676.P8042148901367579546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216676 (n : ℕ) : ℤ :=
  (A216676.P8042148901367579546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216699.P2293991450571384298

`dr(A004090(n)²*A004090(n))`
-/

namespace A216699.P2293991450571384298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004090 n ^ 2 * A004090 n)

end

end A216699.P2293991450571384298

noncomputable section

/-- A216699: Digital root of cubes of Fibonacci numbers.

Offset 0, canonical program `A216699.P2293991450571384298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216699 (n : ℕ) : ℤ :=
  (A216699.P2293991450571384298.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216754.P14933782455688842539

`dr(A388539(n)²)`
-/

namespace A216754.P14933782455688842539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A388539 n ^ 2)

end

end A216754.P14933782455688842539

noncomputable section

/-- A216754: Digital root of fourth power of Fibonacci numbers.

Offset 0, canonical program `A216754.P14933782455688842539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216754 (n : ℕ) : ℤ :=
  (A216754.P14933782455688842539.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216997.P2574361776485171840

`∩[8*n, A273188(n+2)]`
-/

namespace A216997.P2574361776485171840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216997.P2574361776485171840

noncomputable section

/-- A216997: Multiples of 8 that have a digit sum which is a multiple of 8.

Offset 1, canonical program `A216997.P2574361776485171840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A216997 (n : ℕ) : ℤ :=
  (A216997.P2574361776485171840.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A216997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224977.P2433633673610591437

`A000290(n)-A004159(n)`
-/

namespace A224977.P2433633673610591437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - A004159 n

end

end A224977.P2433633673610591437

noncomputable section

/-- A224977: n^2 minus sum of digits of n^2.

Offset 0, canonical program `A224977.P2433633673610591437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224977 (n : ℕ) : ℤ :=
  A224977.P2433633673610591437.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229058.P11987760245482579737

`p?[eq[25, A004159(n)]]`
-/

namespace A229058.P11987760245482579737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A229058.P11987760245482579737

noncomputable section

/-- A229058: Primes p where the digital sum of p^2 is equal to 25.

Offset 1, canonical program `A229058.P11987760245482579737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A229058 (n : ℕ) : ℤ :=
  (A229058.P11987760245482579737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A229058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235151.P14554492218157200321

`∩[A268620(n+1), A017197(n)]`
-/

namespace A235151.P14554492218157200321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235151.P14554492218157200321

noncomputable section

/-- A235151: Numbers whose sum of digits is 12.

Offset 1, canonical program `A235151.P14554492218157200321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1265 terms. -/
def A235151 (n : ℕ) : ℤ :=
  (A235151.P14554492218157200321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1265 terms. -/
def A235151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239878.P11535011503669925246

`eq[A004159(n+1)-A004159(n), 1]`
-/

namespace A239878.P11535011503669925246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (n + 1) - A004159 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A239878.P11535011503669925246

noncomputable section

/-- A239878: Numbers k with digit_sum(k*k) + 1 = digit_sum((k+1)*(k+1)).

Offset 1, canonical program `A239878.P11535011503669925246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 425 terms. -/
def A239878 (n : ℕ) : ℤ :=
  (A239878.P11535011503669925246.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 425 terms. -/
def A239878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239937.P16644113360716350106

`lt[Δ[A004159(n)], 0]`
-/

namespace A239937.P16644113360716350106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A239937.P16644113360716350106

noncomputable section

/-- A239937: Numbers k such that digsum(k^2) > digsum((k+1)^2).

Offset 1, canonical program `A239937.P16644113360716350106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4651 terms. -/
def A239937 (n : ℕ) : ℤ :=
  (A239937.P16644113360716350106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4651 terms. -/
def A239937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240752.P1774461778050441165

`A004159(n+1)-A004159(n)`
-/

namespace A240752.P1774461778050441165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (n + 1) - A004159 n

end

end A240752.P1774461778050441165

noncomputable section

/-- A240752: First differences of digit sums of squares, cf. A004159.

Offset 1, canonical program `A240752.P1774461778050441165`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240752 (n : ℕ) : ℤ :=
  A240752.P1774461778050441165.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240752.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A241418.P4866723597683486828

`Δ[A053838(A128173(n))]`
-/

namespace A241418.P4866723597683486828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (A128173 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241418.P4866723597683486828

noncomputable section

/-- A241418: First differences of Arshon's sequence, cf. A099054.

Offset 0, canonical program `A241418.P4866723597683486828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A241418 (n : ℕ) : ℤ :=
  A241418.P4866723597683486828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A241418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255005.P10936210896201179594

`A007605(n+1)+A053666(n+1)`
-/

namespace A255005.P10936210896201179594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1) + A053666 (n + 1)

end

end A255005.P10936210896201179594

noncomputable section

/-- A255005: a(n) = the digit sum of prime(n) + the digit product of prime(n).

Offset 1, canonical program `A255005.P10936210896201179594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A053666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255005 (n : ℕ) : ℤ :=
  A255005.P10936210896201179594.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A053666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255005.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259728.P15786736245011630451

`eq[∑{digits}[n, #], A004092(2*n)]`
-/

namespace A259728.P15786736245011630451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A259728.P15786736245011630451

noncomputable section

/-- A259728: Sum of digits of a(n) equals the sum of digits of 4*a(n).

Offset 1, canonical program `A259728.P15786736245011630451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 899 terms. -/
def A259728 (n : ℕ) : ℤ :=
  (A259728.P15786736245011630451.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 899 terms. -/
def A259728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261456.P17740723349919891104

`p?[A005408(n)*A043545(A004092(n))]`
-/

namespace A261456.P17740723349919891104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A043545 (A004092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261456.P17740723349919891104

noncomputable section

/-- A261456: Prime numbers whose sum of digits is not a power of 2.

Offset 1, canonical program `A261456.P17740723349919891104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1995 terms. -/
def A261456 (n : ℕ) : ℤ :=
  A261456.P17740723349919891104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1995 terms. -/
def A261456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267430.P7614672471199093547

`eq[0, A105700(A004159(n)²)]²`
-/

namespace A267430.P7614672471199093547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A004159 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A267430.P7614672471199093547

noncomputable section

/-- A267430: Squares whose digit sum is not a prime.

Offset 1, canonical program `A267430.P7614672471199093547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7395 terms. -/
def A267430 (n : ℕ) : ℤ :=
  (A267430.P7614672471199093547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7395 terms. -/
def A267430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268135.P792278026408180777

`eq[0, A007953(n+1)%A004159(n+1)]+1`
-/

namespace A268135.P792278026408180777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (n + 1)) (A004159 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268135.P792278026408180777

noncomputable section

/-- A268135: Numbers n such that the digit sum of n^2 is a divisor of the digit sum of n.

Offset 1, canonical program `A268135.P792278026408180777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A268135 (n : ℕ) : ℤ :=
  (A268135.P792278026408180777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A268135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279768.P17710633787375653040

`eq[16, A004092(A008574(n))]`
-/

namespace A279768.P17710633787375653040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279768.P17710633787375653040

noncomputable section

/-- A279768: Numbers n such that the sum of digits of 8n equals 16.

Offset 1, canonical program `A279768.P17710633787375653040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A279768 (n : ℕ) : ℤ :=
  (A279768.P17710633787375653040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A279768.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A280185.P338572658367298625

`n-A004090(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280185.P338572658367298625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004090 n

end

end A280185.P338572658367298625

noncomputable section

/-- A280185: a(n) = n - A004090(n), where A004090 is the sum of digits of the Fibonacci numbers A000045.

Offset 0, canonical program `A280185.P338572658367298625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280185 (n : ℕ) : ℤ :=
  A280185.P338572658367298625.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280185.provenance : SequenceMachineLib.Provenance := .conditional

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

