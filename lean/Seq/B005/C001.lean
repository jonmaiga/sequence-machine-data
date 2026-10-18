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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A209281.P8916768534846602315

`(A029837(n+1)+A124754(n))/2`
-/

namespace A209281.P8916768534846602315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029837 (n + 1) + A124754 n : ℚ) / 2

end

end A209281.P8916768534846602315

noncomputable section

/-- A209281: Start with first run [0,1] then, for n >= 2, the n-th run has length 2^n and is the concatenation of [a(1),a(2),...,a(2^n/2)] and [n-a(1),n-a(2),...,n-a(2^n/2)].

Offset 1, canonical program `A209281.P8916768534846602315`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A209281 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A209281.P8916768534846602315.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A209281.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227183.P15762183493579328757

`A161511(A003188(n))`
-/

namespace A227183.P15762183493579328757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A003188 n).toNat

end

end A227183.P15762183493579328757

noncomputable section

/-- A227183: a(n) is the sum of parts of the unique unordered partition encoded in the run lengths of the binary expansion of n; row sums of A227739 for n >= 1.

Offset 0, canonical program `A227183.P15762183493579328757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227183 (n : ℕ) : ℤ :=
  A227183.P15762183493579328757.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227183.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131436.P15112547624394738453

`2*A059268(n)-A059268(n+1)`
-/

namespace A131436.P15112547624394738453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059268 n - A059268 (n + 1)

end

end A131436.P15112547624394738453

noncomputable section

/-- A131436: Triangle read by rows, (n-1) zeros followed by 2^n - 1.

Offset 1, canonical program `A131436.P15112547624394738453`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131436 (n : ℕ) : ℤ :=
  A131436.P15112547624394738453.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131436.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A239904.P1769615034918524656

`n-A000120(n)+A014081(n)`
-/

namespace A239904.P1769615034918524656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000120 n + A014081 n

end

end A239904.P1769615034918524656

noncomputable section

/-- A239904: a(n) = n - wt(n) + (number of times 11 appears in binary expansion of n).

Offset 0, canonical program `A239904.P1769615034918524656`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239904 (n : ℕ) : ℤ :=
  A239904.P1769615034918524656.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239904.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245195.P9526382328095845425

`2^A014081(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245195.P9526382328095845425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A014081 n : ℤ)

end

end A245195.P9526382328095845425

noncomputable section

/-- A245195: a(n) = 2^A014081(n).

Offset 0, canonical program `A245195.P9526382328095845425`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245195 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A245195.P9526382328095845425.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245195.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245235.P8719259522222867100

`2^n/A059268(n)`
-/

namespace A245235.P8719259522222867100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / (A059268 n : ℚ)

end

end A245235.P8719259522222867100

noncomputable section

/-- A245235: Repeat 2^(n*(n+1)/2) n+1 times.

Offset 0, canonical program `A245235.P8719259522222867100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245235 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A245235.P8719259522222867100.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245235.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255061.P11875405185225927149

`A255072(A000918(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255061.P11875405185225927149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A000918 (n + 1)).toNat

end

end A255061.P11875405185225927149

noncomputable section

/-- A255061: Number of steps to reach 0 when starting from (2^n)-2 and iterating the map x -> x - (number of runs in binary representation of x): a(n) = A255072(A000918(n)).

Offset 1, canonical program `A255061.P11875405185225927149`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255061 (n : ℕ) : ℤ :=
  A255061.P11875405185225927149.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255061.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255062.P10358150081938219572

`A255072(A000225(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255062.P10358150081938219572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A000225 n).toNat

end

end A255062.P10358150081938219572

noncomputable section

/-- A255062: Number of steps to reach 0 when starting from (2^n)-1 and iterating the map x -> x - (number of runs in binary representation of x): a(n) = A255072(A000225(n)).

Offset 0, canonical program `A255062.P10358150081938219572`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255062 (n : ℕ) : ℤ :=
  A255062.P10358150081938219572.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255062.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259445.P16044234078598449350

`(n+1)/A160467(n+1)`
-/

namespace A259445.P16044234078598449350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A160467 (n + 1) : ℚ)

end

end A259445.P16044234078598449350

noncomputable section

/-- A259445: Multiplicative with a(n) = n if n is odd and a(2^s)=2.

Offset 1, canonical program `A259445.P16044234078598449350`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259445 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A259445.P16044234078598449350.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128474.P6134518486314641698

`A007814(n+3)+A011371(n)`
-/

namespace A128474.P6134518486314641698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 3) + A011371 n

end

end A128474.P6134518486314641698

noncomputable section

/-- A128474: Largest number k such that 2^k divides n*(n-3)!.

Offset 3, canonical program `A128474.P6134518486314641698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128474 (n : ℕ) : ℤ :=
  A128474.P6134518486314641698.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129628.P17919949017180811330

`A115364(n+1)*A001227(n+1)`
-/

namespace A129628.P17919949017180811330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115364 (n + 1) * A001227 (n + 1)

end

end A129628.P17919949017180811330

noncomputable section

/-- A129628: Inverse Moebius transform of A001511.

Offset 1, canonical program `A129628.P17919949017180811330`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129628 (n : ℕ) : ℤ :=
  A129628.P17919949017180811330.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132741.P5410821295142061741

`2^A007814(n+1)*5^A112765(n+1)`
-/

namespace A132741.P5410821295142061741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * (5 : ℚ) ^ (A112765 (n + 1) : ℤ)

end

end A132741.P5410821295142061741

noncomputable section

/-- A132741: Largest divisor of n having the form 2^i*5^j.

Offset 1, canonical program `A132741.P5410821295142061741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132741 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132741.P5410821295142061741.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132741.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135560.P7118035102855316106

`A007814(n+1)+A036987(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135560.P7118035102855316106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A036987 n + 1

end

end A135560.P7118035102855316106

noncomputable section

/-- A135560: a(n) = A007814(n) + A036987(n-1) + 1.

Offset 1, canonical program `A135560.P7118035102855316106`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135560 (n : ℕ) : ℤ :=
  A135560.P7118035102855316106.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138342.P15743762624797914969

`A059482(A007814(n+1))`
-/

namespace A138342.P15743762624797914969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 (A007814 (n + 1)).toNat

end

end A138342.P15743762624797914969

noncomputable section

/-- A138342: First differences of A007088.

Offset 1, canonical program `A138342.P15743762624797914969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138342 (n : ℕ) : ℤ :=
  A138342.P15743762624797914969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A169611.P2401651306699804100

`A007814(n+1)+A007949(n+1)`
-/

namespace A169611.P2401651306699804100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007949 (n + 1)

end

end A169611.P2401651306699804100

noncomputable section

/-- A169611: Number of prime divisors of n that are not greater than 3, counted with multiplicity.

Offset 1, canonical program `A169611.P2401651306699804100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A169611 (n : ℕ) : ℤ :=
  A169611.P2401651306699804100.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A169611.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173732.P4570033635680783597

`(A016957(n)/2^A007814(A016957(n))-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173732.P4570033635680783597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016957 n : ℚ) / (2 : ℚ) ^ (A007814 (A016957 n).toNat : ℤ) - 1) / 2

end

end A173732.P4570033635680783597

noncomputable section

/-- A173732: a(n) = (A016957(n)/2^A007814(A016957(n)) - 1)/2, with A016957(n) = 6*n+4 and A007814(n) the 2-adic valuation of n.

Offset 0, canonical program `A173732.P4570033635680783597`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173732 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A173732.P4570033635680783597.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173732.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A200748.P9894556090439625934

`A051683(n+1)-1`
-/

namespace A200748.P9894556090439625934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 (n + 1) - 1

end

end A200748.P9894556090439625934

noncomputable section

/-- A200748: Smallest number requiring n terms to be expressed as a sum of factorials.

Offset 0, canonical program `A200748.P9894556090439625934`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A200748 (n : ℕ) : ℤ :=
  A200748.P9894556090439625934.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A200748.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A234957.P3331265301523506354

`4^A004526(A007814(n+1))`
-/

namespace A234957.P3331265301523506354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A004526 (A007814 (n + 1)).toNat : ℤ)

end

end A234957.P3331265301523506354

noncomputable section

/-- A234957: Highest power of 4 dividing n.

Offset 1, canonical program `A234957.P3331265301523506354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234957 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A234957.P3331265301523506354.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234957.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A235127.P8905150617845479155

`A004526(A007814(n+1))`
-/

namespace A235127.P8905150617845479155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007814 (n + 1)).toNat

end

end A235127.P8905150617845479155

noncomputable section

/-- A235127: Greatest k such that 4^k divides n.

Offset 1, canonical program `A235127.P8905150617845479155`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235127 (n : ℕ) : ℤ :=
  A235127.P8905150617845479155.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235127.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236313.P12527248593713284961

`A007051(A007814(n+1))`
-/

namespace A236313.P12527248593713284961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (A007814 (n + 1)).toNat

end

end A236313.P12527248593713284961

noncomputable section

/-- A236313: Recurrence: a(2n) = 3a(n)-1, a(2n+1) = 1.

Offset 1, canonical program `A236313.P12527248593713284961`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236313 (n : ℕ) : ℤ :=
  A236313.P12527248593713284961.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244413.P15140388949722106205

`floor(A007814(n+1)/3)`
-/

namespace A244413.P15140388949722106205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007814 (n + 1) : ℚ) / 3⌋

end

end A244413.P15140388949722106205

noncomputable section

/-- A244413: Exponent of highest power of 8 dividing n.

Offset 1, canonical program `A244413.P15140388949722106205`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244413 (n : ℕ) : ℤ :=
  A244413.P15140388949722106205.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244413.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A248174.P9188236423284516112

`A007814(A000073(n+2))`
-/

namespace A248174.P9188236423284516112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000073 (n + 2)).toNat

end

end A248174.P9188236423284516112

noncomputable section

/-- A248174: 2-adic order of the tribonacci sequence.

Offset 1, canonical program `A248174.P9188236423284516112`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248174 (n : ℕ) : ℤ :=
  A248174.P9188236423284516112.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248174.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271519.P6089523118577748839

`A025480(n)+A007814(n+1)`
-/

namespace A271519.P6089523118577748839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + A007814 (n + 1)

end

end A271519.P6089523118577748839

noncomputable section

/-- A271519: Let n = (2*i + 1)*2^j; then a(n) = i + j.

Offset 1, canonical program `A271519.P6089523118577748839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271519 (n : ℕ) : ℤ :=
  A271519.P6089523118577748839.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271519.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A275019.P166952479479628715

`A007814(n+1)+A007814(n+2)+A007814(n+3)-1`
-/

namespace A275019.P166952479479628715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (n + 2) + A007814 (n + 3) - 1

end

end A275019.P166952479479628715

noncomputable section

/-- A275019: 2-adic valuation of tetrahedral numbers C(n+2,3) = n(n+1)(n+2)/6 = A000292(n).

Offset 1, canonical program `A275019.P166952479479628715`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275019 (n : ℕ) : ℤ :=
  A275019.P166952479479628715.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275019.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285717.P2148644564262029949

`A007814(n+1)+A159918(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285717.P2148644564262029949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A159918 (n + 1)

end

end A285717.P2148644564262029949

noncomputable section

/-- A285717: a(n) = A007814(n) + A159918(n) = A007814(n) + A000120(n^2).

Offset 1, canonical program `A285717.P2148644564262029949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285717 (n : ℕ) : ℤ :=
  A285717.P2148644564262029949.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285717.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128064.P17736054850047196674

`A002260(n+1)*A167374(n)`
-/

namespace A128064.P17736054850047196674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A167374 n

end

end A128064.P17736054850047196674

noncomputable section

/-- A128064: Triangle T with T(n,n)=n, T(n,n-1)=-(n-1) and otherwise T(n,k)=0; 0

Offset 1, canonical program `A128064.P17736054850047196674`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128064 (n : ℕ) : ℤ :=
  A128064.P17736054850047196674.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128064.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119703.P9452330850278476009

`n*A119702(n)`
-/

namespace A119703.P9452330850278476009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A119702 n

end

end A119703.P9452330850278476009

noncomputable section

/-- A119703: a(n) = n^3*binomial(2*n, n)*Fibonacci(n).

Offset 0, canonical program `A119703.P9452330850278476009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A119703 (n : ℕ) : ℤ :=
  A119703.P9452330850278476009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A119703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122525.P3049472410063395283

`A058127(n+1)*A094587(n)`
-/

namespace A122525.P3049472410063395283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058127 (n + 1) * A094587 n

end

end A122525.P3049472410063395283

noncomputable section

/-- A122525: Triangle read by rows: G(s, rho) = ((s-1)!/s)*Sum_{i=0..s-1} ((s-i)/i!)*(s*rho)^i.

Offset 1, canonical program `A122525.P3049472410063395283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1747 terms. -/
def A122525 (n : ℕ) : ℤ :=
  A122525.P3049472410063395283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1747 terms. -/
def A122525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122698.P18060644383630824103

`A000108(A014081(n))*A036987(n)`
-/

namespace A122698.P18060644383630824103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A014081 n).toNat * A036987 n

end

end A122698.P18060644383630824103

noncomputable section

/-- A122698: a(1)=a(2)=1 then a(n) = Sum_{d|n, 1

Offset 1, canonical program `A122698.P18060644383630824103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122698 (n : ℕ) : ℤ :=
  A122698.P18060644383630824103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122759.P12807643020116895536

`A254006(A211197(n+1)-1)`
-/

namespace A122759.P12807643020116895536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (A211197 (n + 1) - 1).toNat

end

end A122759.P12807643020116895536

noncomputable section

/-- A122759: Triangle T(n,m) read by rows: 3^n if m is odd, 0 if m is even.

Offset 1, canonical program `A122759.P12807643020116895536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122759 (n : ℕ) : ℤ :=
  A122759.P12807643020116895536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122761.P412540581536329218

`A182522(A211197(n+1))`
-/

namespace A122761.P412540581536329218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A211197 (n + 1)).toNat

end

end A122761.P412540581536329218

noncomputable section

/-- A122761: Triangular read by rows: T(n, k) = 3^k * (1 + (n mod 2)).

Offset 0, canonical program `A122761.P412540581536329218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122761 (n : ℕ) : ℤ :=
  A122761.P412540581536329218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123275.P16288348436701202687

`A002260(n+1)/gcd(A002260(n+1), A009999(n))`
-/

namespace A123275.P16288348436701202687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (Int.gcd (A002260 (n + 1)) (A009999 n) : ℚ)

end

end A123275.P16288348436701202687

noncomputable section

/-- A123275: Square array A(n,m) = largest divisor of m which is coprime to n, read by upwards antidiagonals.

Offset 1, canonical program `A123275.P16288348436701202687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A123275 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123275.P16288348436701202687.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A123275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123477.P8743366837065388473

`A035263(n+1)*A112848(n+1)`
-/

namespace A123477.P8743366837065388473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A112848 (n + 1)

end

end A123477.P8743366837065388473

noncomputable section

/-- A123477: Expansion of (1 - b(q)) / 3 in powers of q where b(q) is a cubic AGM theta function.

Offset 1, canonical program `A123477.P8743366837065388473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1082 terms. -/
def A123477 (n : ℕ) : ℤ :=
  A123477.P8743366837065388473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1082 terms. -/
def A123477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123970.P17743339321085014327

`A076756(A061579(n))`
-/

namespace A123970.P17743339321085014327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 (A061579 n).toNat

end

end A123970.P17743339321085014327

noncomputable section

/-- A123970: Triangle read by rows: T(0,0)=1; T(n,k) is the coefficient of x^(n-k) in the monic characteristic polynomial of the n X n matrix (min(i,j)) (i,j=1,2,...,n) (0 <= k <= n, n >= 1).

Offset 0, canonical program `A123970.P17743339321085014327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123970 (n : ℕ) : ℤ :=
  A123970.P17743339321085014327.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124585.P9964939614639913661

`A000040(lt[10, A054541(n+1)])`
-/

namespace A124585.P9964939614639913661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124585.P9964939614639913661

noncomputable section

/-- A124585: Primes p such that q-p >= 12, where q is the next prime after p.

Offset 1, canonical program `A124585.P9964939614639913661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1600 terms. -/
def A124585 (n : ℕ) : ℤ :=
  A124585.P9964939614639913661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1600 terms. -/
def A124585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125266.P13168429370287137297

`A054541(n+1)+C(2, n+2)`
-/

namespace A125266.P13168429370287137297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A125266.P13168429370287137297

noncomputable section

/-- A125266: Number of repetitions in A007918.

Offset 1, canonical program `A125266.P13168429370287137297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125266 (n : ℕ) : ℤ :=
  A125266.P13168429370287137297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126064.P1560116210223187894

`A059268(n)*A094587(n)`
-/

namespace A126064.P1560116210223187894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A094587 n

end

end A126064.P1560116210223187894

noncomputable section

/-- A126064: Triangle read by rows, obtained by multiplying columns of triangle in A094587 by 1,2,4,8,16,... respectively.

Offset 0, canonical program `A126064.P1560116210223187894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A126064 (n : ℕ) : ℤ :=
  A126064.P1560116210223187894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A126064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126096.P4702891818207861137

`p?[A102655(n+1)]`
-/

namespace A126096.P4702891818207861137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126096.P4702891818207861137

noncomputable section

/-- A126096: Primes that are the arithmetic mean of four successive primes.

Offset 1, canonical program `A126096.P4702891818207861137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A126096 (n : ℕ) : ℤ :=
  A126096.P4702891818207861137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A126096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127439.P6533677718592646859

`A054541(A002260(n+1))`
-/

namespace A127439.P6533677718592646859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A002260 (n + 1)).toNat

end

end A127439.P6533677718592646859

noncomputable section

/-- A127439: Triangle read by rows, in which row n consists of first n terms of A054541.

Offset 1, canonical program `A127439.P6533677718592646859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127439 (n : ℕ) : ℤ :=
  A127439.P6533677718592646859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127738.P16094205199050842462

`A025581(n)+A003991(n+1)`
-/

namespace A127738.P16094205199050842462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A003991 (n + 1)

end

end A127738.P16094205199050842462

noncomputable section

/-- A127738: Triangle read by rows: the matrix product A004736 * A127701 of two triangular matrices.

Offset 1, canonical program `A127738.P16094205199050842462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127738 (n : ℕ) : ℤ :=
  A127738.P16094205199050842462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127948.P17381383893780416800

`1-A114327(n)`
-/

namespace A127948.P17381383893780416800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A114327 n

end

end A127948.P17381383893780416800

noncomputable section

/-- A127948: Triangle, A004736 * A127899.

Offset 0, canonical program `A127948.P17381383893780416800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127948 (n : ℕ) : ℤ :=
  A127948.P17381383893780416800.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128078.P385746566403988126

`A127733(n+1)-A048151(n+1)`
-/

namespace A128078.P385746566403988126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127733 (n + 1) - A048151 (n + 1)

end

end A128078.P385746566403988126

noncomputable section

/-- A128078: A002260 * A128064.

Offset 1, canonical program `A128078.P385746566403988126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128078 (n : ℕ) : ℤ :=
  A128078.P385746566403988126.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128139.P7396789911746890066

`∑[A114327(abs(1-n))]`
-/

namespace A128139.P7396789911746890066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128139.P7396789911746890066

noncomputable section

/-- A128139: Triangle read by rows: matrix product A004736 * A128132.

Offset 0, canonical program `A128139.P7396789911746890066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128139 (n : ℕ) : ℤ :=
  A128139.P7396789911746890066.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128221.P5768733803824572043

`A028310(A128179(n+1))`
-/

namespace A128221.P5768733803824572043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A128179 (n + 1)).toNat

end

end A128221.P5768733803824572043

noncomputable section

/-- A128221: A128174 * A127701.

Offset 1, canonical program `A128221.P5768733803824572043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128221 (n : ℕ) : ℤ :=
  A128221.P5768733803824572043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128222.P7013101155895065222

`A003056(n)*A128174(n+1)+1`
-/

namespace A128222.P7013101155895065222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A128174 (n + 1) + 1

end

end A128222.P7013101155895065222

noncomputable section

/-- A128222: A127701 * A128174.

Offset 1, canonical program `A128222.P7013101155895065222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128222 (n : ℕ) : ℤ :=
  A128222.P7013101155895065222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128442.P9107916068546693453

`A172471(A055461(n+1)*A059268(n))`
-/

namespace A128442.P9107916068546693453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A055461 (n + 1) * A059268 n).toNat

end

end A128442.P9107916068546693453

noncomputable section

/-- A128442: Array T by antidiagonals: T(n,k)=Floor(k*2^(n/2)).

Offset 1, canonical program `A128442.P9107916068546693453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A128442 (n : ℕ) : ℤ :=
  A128442.P9107916068546693453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A128442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128541.P11291704375790424598

`A058071(n)*A097806(n)`
-/

namespace A128541.P11291704375790424598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n * A097806 n

end

end A128541.P11291704375790424598

noncomputable section

/-- A128541: Triangle, A097806 * A127647, read by rows.

Offset 0, canonical program `A128541.P11291704375790424598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128541 (n : ℕ) : ℤ :=
  A128541.P11291704375790424598.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128618.P684338942941651446

`A000045(A128179(n+1))`
-/

namespace A128618.P684338942941651446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A128179 (n + 1)).toNat

end

end A128618.P684338942941651446

noncomputable section

/-- A128618: Triangle read by rows: A128174 * A127647 as infinite lower triangular matrices.

Offset 1, canonical program `A128618.P684338942941651446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128618 (n : ℕ) : ℤ :=
  A128618.P684338942941651446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128621.P10653779951619394494

`∑[A010054(n)]*A128174(n+1)`
-/

namespace A128621.P10653779951619394494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A128174 (n + 1)

end

end A128621.P10653779951619394494

noncomputable section

/-- A128621: A127648 * A128174 as an infinite lower triangular matrix.

Offset 1, canonical program `A128621.P10653779951619394494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128621 (n : ℕ) : ℤ :=
  A128621.P10653779951619394494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128622.P9167240911132179240

`A128174(n+1)+A003056(n)`
-/

namespace A128622.P9167240911132179240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) + A003056 n

end

end A128622.P9167240911132179240

noncomputable section

/-- A128622: Triangle T(n, k) = A128064(unsigned) * A128174, read by rows.

Offset 1, canonical program `A128622.P9167240911132179240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A128622 (n : ℕ) : ℤ :=
  A128622.P9167240911132179240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A128622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128975.P3355518548198694362

`A079318(∑[n]%(n+1))-1`
-/

namespace A128975.P3355518548198694362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079318 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) - 1

end

end A128975.P3355518548198694362

noncomputable section

/-- A128975: a(n) = the number of unordered triples of integers (a,b,c) with a+b+c=n, whose bitwise XOR is zero. Equivalently, the number of three-heap nim games with n stones which are in a losing position for the first player.

Offset 1, canonical program `A128975.P3355518548198694362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128975 (n : ℕ) : ℤ :=
  A128975.P3355518548198694362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129369.P6100866944885135129

`A000984(n)-A126869(xor(1, n))`
-/

namespace A129369.P6100866944885135129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A126869 (Nat.xor 1 n)

end

end A129369.P6100866944885135129

noncomputable section

/-- A129369: Expansion of 1/sqrt(1-4*x) - x/sqrt(1-4*x^2).

Offset 0, canonical program `A129369.P6100866944885135129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A129369 (n : ℕ) : ℤ :=
  A129369.P6100866944885135129.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A129369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129765.P12083585102544052263

`2-A097806(n)`
-/

namespace A129765.P12083585102544052263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A097806 n

end

end A129765.P12083585102544052263

noncomputable section

/-- A129765: Triangle, (1, 1, 2, 2, 2, ...) in every column.

Offset 1, canonical program `A129765.P12083585102544052263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129765 (n : ℕ) : ℤ :=
  A129765.P12083585102544052263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129996.P8436117696571961404

`A129110(n+1)-A129110(n)`
-/

namespace A129996.P8436117696571961404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129110 (n + 1) - A129110 n

end

end A129996.P8436117696571961404

noncomputable section

/-- A129996: a(n) = (-1)^[(n+1)/2] A000108([n/2]+1).

Offset 0, canonical program `A129996.P8436117696571961404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129110, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129996 (n : ℕ) : ℤ :=
  A129996.P8436117696571961404.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129110, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129996.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130125.P17852879652556337111

`A131577(A128179(n+1))`
-/

namespace A130125.P17852879652556337111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A128179 (n + 1)).toNat

end

end A130125.P17852879652556337111

noncomputable section

/-- A130125: Triangle defined by A128174 * A130123, read by rows.

Offset 0, canonical program `A130125.P17852879652556337111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130125 (n : ℕ) : ℤ :=
  A130125.P17852879652556337111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130127.P7684455108122293938

`A059268(n)*A115514(n+1)`
-/

namespace A130127.P7684455108122293938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A115514 (n + 1)

end

end A130127.P7684455108122293938

noncomputable section

/-- A130127: Triangle defined by A000012 * A130125, read by rows.

Offset 1, canonical program `A130127.P7684455108122293938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130127 (n : ℕ) : ℤ :=
  A130127.P7684455108122293938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130128.P12382566472116718112

`A004736(n+1)*A059268(n)`
-/

namespace A130128.P12382566472116718112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A059268 n

end

end A130128.P12382566472116718112

noncomputable section

/-- A130128: Triangle read by rows: T(n,k) = (n - k + 1)*2^(k-1).

Offset 1, canonical program `A130128.P12382566472116718112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130128 (n : ℕ) : ℤ :=
  A130128.P12382566472116718112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130266.P16039714885760427885

`gcd(A100345(n)%A131507(n), C(4, n))`
-/

namespace A130266.P16039714885760427885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A100345 n) (A131507 n)) (Nat.choose 4 n : ℤ)

end

end A130266.P16039714885760427885

noncomputable section

/-- A130266: A051340 * A128174.

Offset 0, canonical program `A130266.P16039714885760427885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130266 (n : ℕ) : ℤ :=
  (A130266.P16039714885760427885.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130324.P11583610858760618975

`(A140513(n)-A059268(n))*A059268(n)`
-/

namespace A130324.P11583610858760618975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140513 n - A059268 n) * A059268 n

end

end A130324.P11583610858760618975

noncomputable section

/-- A130324: A059268^2.

Offset 0, canonical program `A130324.P11583610858760618975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130324 (n : ℕ) : ℤ :=
  A130324.P11583610858760618975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130328.P3058334534294594902

`A140513(n)-A059268(n)`
-/

namespace A130328.P3058334534294594902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n - A059268 n

end

end A130328.P3058334534294594902

noncomputable section

/-- A130328: Triangle of differences between powers of 2, read by rows.

Offset 0, canonical program `A130328.P3058334534294594902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130328 (n : ℕ) : ℤ :=
  A130328.P3058334534294594902.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130459.P11704629280460871813

`2*A130453(n+1)-A059268(n)`
-/

namespace A130459.P11704629280460871813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130453 (n + 1) - A059268 n

end

end A130459.P11704629280460871813

noncomputable section

/-- A130459: A059268 * A097806.

Offset 1, canonical program `A130459.P11704629280460871813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130459 (n : ℕ) : ℤ :=
  A130459.P11704629280460871813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130654.P16019514325048993052

`A007814(A092505(n+1))`
-/

namespace A130654.P16019514325048993052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A092505 (n + 1)).toNat

end

end A130654.P16019514325048993052

noncomputable section

/-- A130654: Exponent m such that 2^m = A092505(n) = A002430(n) / A046990(n).

Offset 1, canonical program `A130654.P16019514325048993052`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092505, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130654 (n : ℕ) : ℤ :=
  A130654.P16019514325048993052.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092505, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130654.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131047.P13377953033205828520

`A074909(n)*A128174(n+1)`
-/

namespace A131047.P13377953033205828520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A128174 (n + 1)

end

end A131047.P13377953033205828520

noncomputable section

/-- A131047: Triangle read by rows: (1/2) * (A007318 - A007318^(-1)) as infinite lower triangular matrices.

Offset 1, canonical program `A131047.P13377953033205828520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131047 (n : ℕ) : ℤ :=
  A131047.P13377953033205828520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131094.P16883013186837200310

`A126646(A123578(n))+floor(A059268(n)/2)+1`
-/

namespace A131094.P16883013186837200310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A123578 n).toNat + ⌊(A059268 n : ℚ) / 2⌋ + 1

end

end A131094.P16883013186837200310

noncomputable section

/-- A131094: Triangle where n-th row contains the smallest n positive integers (listed in order) with exactly n nonleading 0's in their binary representations.

Offset 1, canonical program `A131094.P16883013186837200310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A131094 (n : ℕ) : ℤ :=
  A131094.P16883013186837200310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A131094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131225.P10415687489738555081

`A133256(A211197(n+1))`
-/

namespace A131225.P10415687489738555081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A211197 (n + 1)).toNat

end

end A131225.P10415687489738555081

noncomputable section

/-- A131225: Triangle read by rows: T(n,k) = 2*k - (1 + (-1)^(n-k))/2, for 1 <= k <= n, n >= 1.

Offset 1, canonical program `A131225.P10415687489738555081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131225 (n : ℕ) : ℤ :=
  A131225.P10415687489738555081.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131411.P4113717599898364620

`A104763(n+1)+A131410(n+1)-1`
-/

namespace A131411.P4113717599898364620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + (A131410 (n + 1) - 1)

end

end A131411.P4113717599898364620

noncomputable section

/-- A131411: Triangle read by rows: T(n,k) = Fibonacci(n) + Fibonacci(k) - 1.

Offset 1, canonical program `A131411.P4113717599898364620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131411 (n : ℕ) : ℤ :=
  A131411.P4113717599898364620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131816.P3689264983321174764

`A059268(n)+A130321(n)-1`
-/

namespace A131816.P3689264983321174764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + (A130321 n - 1)

end

end A131816.P3689264983321174764

noncomputable section

/-- A131816: Triangle read by rows: A130321 + A059268 - A000012 as infinite lower triangular matrices, where A130321 = (1; 2,1; 4,2,1; ...), A059268 = (1; 1,2; 1,2,4; ...) and A000012 = (1; 1,1; 1,1,1; ...).

Offset 0, canonical program `A131816.P3689264983321174764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131816 (n : ℕ) : ℤ :=
  A131816.P3689264983321174764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131889.P15177915861031452150

`A000244(A343754(n))`
-/

namespace A131889.P15177915861031452150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A343754 n).toNat

end

end A131889.P15177915861031452150

noncomputable section

/-- A131889: a(n) is the number of shapes of balanced trees with constant branching factor 3 and n nodes. The node is balanced if the size, measured in nodes, of each pair of its children differ by at most one node.

Offset 0, canonical program `A131889.P15177915861031452150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A131889 (n : ℕ) : ℤ :=
  A131889.P15177915861031452150.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A131889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131923.P17720918590992570165

`∑[A080233(n)]`
-/

namespace A131923.P17720918590992570165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131923.P17720918590992570165

noncomputable section

/-- A131923: Triangle read by rows: T(n,k) = binomial(n,k) + n.

Offset 0, canonical program `A131923.P17720918590992570165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131923 (n : ℕ) : ℤ :=
  A131923.P17720918590992570165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132013.P17343233529562696122

`A077028(n)*A167374(n)`
-/

namespace A132013.P17343233529562696122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n * A167374 n

end

end A132013.P17343233529562696122

noncomputable section

/-- A132013: T(n,j) for an iterated mixed order Laguerre transform. Coefficients of the normalized generalized Laguerre polynomials (-1)^n*n!*L(n,1-n,x).

Offset 0, canonical program `A132013.P17343233529562696122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132013 (n : ℕ) : ℤ :=
  A132013.P17343233529562696122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132062.P6944061714416031410

`A001147(A025581(n))*A121314(n)`
-/

namespace A132062.P6944061714416031410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A025581 n).toNat * A121314 n

end

end A132062.P6944061714416031410

noncomputable section

/-- A132062: Sheffer triangle (1,1-sqrt(1-2*x)). Extended Bessel triangle A001497.

Offset 0, canonical program `A132062.P6944061714416031410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A132062 (n : ℕ) : ℤ :=
  A132062.P6944061714416031410.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A132062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132159.P9455926495452514256

`A121757(A061579(n))`
-/

namespace A132159.P9455926495452514256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121757 (A061579 n).toNat

end

end A132159.P9455926495452514256

noncomputable section

/-- A132159: Lower triangular matrix T(n,j) for double application of an iterated mixed order Laguerre transform inverse to A132014. Coefficients of Laguerre polynomials (-1)^n * n! * L(n,-2-n,x).

Offset 0, canonical program `A132159.P9455926495452514256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A132159 (n : ℕ) : ℤ :=
  A132159.P9455926495452514256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A132159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132440.P17079068129318921596

`1-Δ[A094727(n+2)]`
-/

namespace A132440.P17079068129318921596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A132440.P17079068129318921596

noncomputable section

/-- A132440: Infinitesimal Pascal matrix: generator (lower triangular matrix representation) of the Pascal matrix, the classical operator xDx, iterated Laguerre transforms, associated matrices of the list partition transform and general Euler transformation for sequences.

Offset 0, canonical program `A132440.P17079068129318921596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132440 (n : ℕ) : ℤ :=
  A132440.P17079068129318921596.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132774.P14409811669311265366

`∑[A097806(n)]*A097806(n)`
-/

namespace A132774.P14409811669311265366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A097806 n

end

end A132774.P14409811669311265366

noncomputable section

/-- A132774: A natural number operator.

Offset 1, canonical program `A132774.P14409811669311265366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132774 (n : ℕ) : ℤ :=
  A132774.P14409811669311265366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132921.P3146315177172260146

`A104763(n+1)+A003056(n)`
-/

namespace A132921.P3146315177172260146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + A003056 n

end

end A132921.P3146315177172260146

noncomputable section

/-- A132921: Triangle read by rows: T(n,k) = n + Fibonacci(k) - 1, 1 <= k <= n.

Offset 1, canonical program `A132921.P3146315177172260146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132921 (n : ℕ) : ℤ :=
  A132921.P3146315177172260146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132923.P17938700751564380223

`A104763(n+1)+A025581(n)`
-/

namespace A132923.P17938700751564380223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + A025581 n

end

end A132923.P17938700751564380223

noncomputable section

/-- A132923: Triangle read by rows: T(n, k) = Fibonacci(k) + n - k.

Offset 1, canonical program `A132923.P17938700751564380223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132923 (n : ℕ) : ℤ :=
  A132923.P17938700751564380223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133083.P3500506741540918001

`A059268(n+1)%3`
-/

namespace A133083.P3500506741540918001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059268 (n + 1)) 3

end

end A133083.P3500506741540918001

noncomputable section

/-- A133083: A000012 * A133080.

Offset 1, canonical program `A133083.P3500506741540918001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133083 (n : ℕ) : ℤ :=
  A133083.P3500506741540918001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133566.P8117964737144085914

`A097806(n)*A106344(n)`
-/

namespace A133566.P8117964737144085914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A106344 n

end

end A133566.P8117964737144085914

noncomputable section

/-- A133566: Triangle read by rows: (1,1,1,...) on the main diagonal and (0,1,0,1,...) on the subdiagonal.

Offset 1, canonical program `A133566.P8117964737144085914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133566 (n : ℕ) : ℤ :=
  A133566.P8117964737144085914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133821.P6099152858526993787

`A133819(n+1)²`
-/

namespace A133821.P6099152858526993787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1) ^ 2

end

end A133821.P6099152858526993787

noncomputable section

/-- A133821: Triangle whose rows are sequences of increasing fourth powers: 1; 1,16; 1,16,81; ... .

Offset 1, canonical program `A133821.P6099152858526993787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133821 (n : ℕ) : ℤ :=
  A133821.P6099152858526993787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134082.P10521144562507745432

`A078812(n)*A097806(n)`
-/

namespace A134082.P10521144562507745432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n * A097806 n

end

end A134082.P10521144562507745432

noncomputable section

/-- A134082: Triangle read by rows, (n-1) zeros followed by (2n, 1).

Offset 0, canonical program `A134082.P10521144562507745432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134082 (n : ℕ) : ℤ :=
  A134082.P10521144562507745432.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134234.P7144028086611869884

`A004277(A094727(n+1)%A131507(n))`
-/

namespace A134234.P7144028086611869884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.tmod (A094727 (n + 1)) (A131507 n)).toNat

end

end A134234.P7144028086611869884

noncomputable section

/-- A134234: Triangle read by rows, n-th row = n terms of 2n, 2n+2, 2n+4, ..., 1; with a(1) = 1.

Offset 1, canonical program `A134234.P7144028086611869884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134234 (n : ℕ) : ℤ :=
  A134234.P7144028086611869884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134235.P14170243155562586124

`∑[char[∑[n]]]+2*A048151(n+1)`
-/

namespace A134235.P14170243155562586124
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A048151 (n + 1)

end

end A134235.P14170243155562586124

noncomputable section

/-- A134235: Triangle read by rows: a(1) = 1; then n-th row = n terms of (n+2), (n+4), (n+6), ..., n.

Offset 1, canonical program `A134235.P14170243155562586124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134235 (n : ℕ) : ℤ :=
  A134235.P14170243155562586124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134237.P3810954821933463137

`A131421(n+2)-(A002260(n+1)+1)`
-/

namespace A134237.P3810954821933463137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131421 (n + 2) - (A002260 (n + 1) + 1)

end

end A134237.P3810954821933463137

noncomputable section

/-- A134237: Triangle read by rows, a(1) = 1, n-th row n terms of: (2n-1, 2n, 2n+1, ..., followed by n).

Offset 1, canonical program `A134237.P3810954821933463137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134237 (n : ℕ) : ℤ :=
  A134237.P3810954821933463137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134394.P12565304534102440412

`A101321(n)+A025581(n)`
-/

namespace A134394.P12565304534102440412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101321 n + A025581 n

end

end A134394.P12565304534102440412

noncomputable section

/-- A134394: Triangle T(n,k) = Sum_{j=k..n} A077028(j,k), read by rows.

Offset 1, canonical program `A134394.P12565304534102440412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134394 (n : ℕ) : ℤ :=
  A134394.P12565304534102440412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134464.P6205349550978109766

`A112367(n)+A094727(n+1)`
-/

namespace A134464.P6205349550978109766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A094727 (n + 1)

end

end A134464.P6205349550978109766

noncomputable section

/-- A134464: (A127648 * A000012 + A000012 * A127773) - A000012.

Offset 1, canonical program `A134464.P6205349550978109766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134464 (n : ℕ) : ℤ :=
  A134464.P6205349550978109766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134482.P15143362080738563576

`A134403(n)+1`
-/

namespace A134482.P15143362080738563576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134403 n + 1

end

end A134482.P15143362080738563576

noncomputable section

/-- A134482: Triangle read by rows: row n consists of n followed by the numbers n through 2n-2.

Offset 1, canonical program `A134482.P15143362080738563576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134482 (n : ℕ) : ℤ :=
  A134482.P15143362080738563576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134566.P16325399016545697471

`A000045(A085058(record[A048724(n)+1]))`
-/

namespace A134566.P16325399016545697471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A085058 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A134566.P16325399016545697471

noncomputable section

/-- A134566: a(n) = least m such that {-m*tau} > {n*tau}, where { } denotes fractional part and tau = (1 + sqrt(5))/2.

Offset 1, canonical program `A134566.P16325399016545697471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A134566 (n : ℕ) : ℤ :=
  A134566.P16325399016545697471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A134566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134574.P11181354774624553739

`A004736(n+1)*A051128(A038722(n+1))`
-/

namespace A134574.P11181354774624553739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A051128 (A038722 (n + 1)).toNat

end

end A134574.P11181354774624553739

noncomputable section

/-- A134574: Array, a(n,k) = total size of all n-length words on a k-letter alphabet, read by antidiagonals.

Offset 1, canonical program `A134574.P11181354774624553739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4483 terms. -/
def A134574 (n : ℕ) : ℤ :=
  A134574.P11181354774624553739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4483 terms. -/
def A134574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134771.P17660794014841576438

`abs(3-4*A126869(n))`
-/

namespace A134771.P17660794014841576438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - 4 * A126869 n|

end

end A134771.P17660794014841576438

noncomputable section

/-- A134771: A134770 interleaved with threes.

Offset 0, canonical program `A134771.P17660794014841576438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A134771 (n : ℕ) : ℤ :=
  A134771.P17660794014841576438.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A134771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134868.P8808739083334448030

`A048151(A010054(n)+n)+1`
-/

namespace A134868.P8808739083334448030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (A010054 n + (n : ℤ)).toNat + 1

end

end A134868.P8808739083334448030

noncomputable section

/-- A134868: A103451 * A002260.

Offset 1, canonical program `A134868.P8808739083334448030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134868 (n : ℕ) : ℤ :=
  A134868.P8808739083334448030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135293.P11902622684303207903

`abs(Δ[A055235(abs(1-n))])`
-/

namespace A135293.P11902622684303207903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A135293.P11902622684303207903

noncomputable section

/-- A135293: Differences between successive numbers whose sum of digits in base 3 is 2.

Offset 0, canonical program `A135293.P11902622684303207903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135293 (n : ℕ) : ℤ :=
  A135293.P11902622684303207903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135966.P10430547944224165443

`A000045(A077028(n))`
-/

namespace A135966.P10430547944224165443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A077028 n).toNat

end

end A135966.P10430547944224165443

noncomputable section

/-- A135966: Triangle, read by rows, where T(n,k) = fibonacci(k(n-k) + 1) for n>=k>=0.

Offset 0, canonical program `A135966.P10430547944224165443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A135966 (n : ℕ) : ℤ :=
  A135966.P10430547944224165443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A135966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136318.P1305045410731253751

`A098354(n+1)+A059268(n)`
-/

namespace A136318.P1305045410731253751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098354 (n + 1) + A059268 n

end

end A136318.P1305045410731253751

noncomputable section

/-- A136318: Integers whose binary representation contains exactly two 1s, the 1s not being adjacent.

Offset 1, canonical program `A136318.P1305045410731253751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136318 (n : ℕ) : ℤ :=
  A136318.P1305045410731253751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136501.P17890335393918635826

`C(A059268(n), A025581(n))`
-/

namespace A136501.P17890335393918635826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059268 n).toNat (A025581 n).toNat

end

end A136501.P17890335393918635826

noncomputable section

/-- A136501: Triangle, read by rows, where T(n,k) = C(2^k,n-k) for n>=k>=0.

Offset 0, canonical program `A136501.P17890335393918635826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A136501 (n : ℕ) : ℤ :=
  (A136501.P17890335393918635826.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A136501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137153.P4047191576535174282

`C(A059268(n)+A025581(n+1), A025581(n))`
-/

namespace A137153.P4047191576535174282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059268 n + A025581 (n + 1)).toNat (A025581 n).toNat

end

end A137153.P4047191576535174282

noncomputable section

/-- A137153: Triangle, read by rows, where T(n,k) = C(2^k + n-k-1, n-k).

Offset 0, canonical program `A137153.P4047191576535174282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A137153 (n : ℕ) : ℤ :=
  (A137153.P4047191576535174282.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A137153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138438.P2811468712399639268

`A138437(n+1)/2`
-/

namespace A138438.P2811468712399639268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138437 (n + 1) : ℚ) / 2

end

end A138438.P2811468712399639268

noncomputable section

/-- A138438: a(n) = ((n-th prime)^5-(n-th prime)^3)/24.

Offset 1, canonical program `A138438.P2811468712399639268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138437, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138438 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138438.P2811468712399639268.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138437, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138450.P12019756699312526863

`A138447(n+1)-A122220(n+1)`
-/

namespace A138450.P12019756699312526863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138447 (n + 1) - A122220 (n + 1)

end

end A138450.P12019756699312526863

noncomputable section

/-- A138450: a(n) = ((n-th prime)^6-(n-th prime)^2)/30.

Offset 1, canonical program `A138450.P12019756699312526863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138450 (n : ℕ) : ℤ :=
  A138450.P12019756699312526863.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138454.P7090914024500942586

`A138442(n+1)-A138419(n+1)`
-/

namespace A138454.P7090914024500942586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138442 (n + 1) - A138419 (n + 1)

end

end A138454.P7090914024500942586

noncomputable section

/-- A138454: a(n) = ((n-th prime)^6-(n-th prime)^4)/3.

Offset 1, canonical program `A138454.P7090914024500942586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138454 (n : ℕ) : ℤ :=
  A138454.P7090914024500942586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138455.P8102202229354700522

`A138443(n+1)-A138420(n+1)`
-/

namespace A138455.P8102202229354700522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138443 (n + 1) - A138420 (n + 1)

end

end A138455.P8102202229354700522

noncomputable section

/-- A138455: a(n) = ((n-th prime)^6-(n-th prime)^4)/4.

Offset 1, canonical program `A138455.P8102202229354700522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138455 (n : ℕ) : ℤ :=
  A138455.P8102202229354700522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138456.P16217539803196154374

`A138445(n+1)-A138421(n+1)`
-/

namespace A138456.P16217539803196154374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138445 (n + 1) - A138421 (n + 1)

end

end A138456.P16217539803196154374

noncomputable section

/-- A138456: a(n) = ((n-th prime)^6-(n-th prime)^4)/6.

Offset 1, canonical program `A138456.P16217539803196154374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138456 (n : ℕ) : ℤ :=
  A138456.P16217539803196154374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138457.P7138522454749224645

`A000040(n+1)*A138436(n+1)`
-/

namespace A138457.P7138522454749224645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138436 (n + 1)

end

end A138457.P7138522454749224645

noncomputable section

/-- A138457: a(n) = ((n-th prime)^6-(n-th prime)^4)/8.

Offset 1, canonical program `A138457.P7138522454749224645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138457 (n : ℕ) : ℤ :=
  A138457.P7138522454749224645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138830.P7169071661950621730

`A132999(2*(n+1))`
-/

namespace A138830.P7169071661950621730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (2 * (n + 1))

end

end A138830.P7169071661950621730

noncomputable section

/-- A138830: Bisection of imperfect numbers A132999.

Offset 1, canonical program `A138830.P7169071661950621730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A138830 (n : ℕ) : ℤ :=
  A138830.P7169071661950621730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A138830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139477.P7115954098944831996

`floor(log2(A126869(n)+A001542(n)+1))`
-/

namespace A139477.P7115954098944831996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A126869 n + A001542 n + 1).toNat

end

end A139477.P7115954098944831996

noncomputable section

/-- A139477: Number of binary digits in A001109(n).

Offset 0, canonical program `A139477.P7115954098944831996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A139477 (n : ℕ) : ℤ :=
  (A139477.P7115954098944831996.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A139477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139600.P3248004968588172204

`A057145(n+2)-A077028(n)`
-/

namespace A139600.P3248004968588172204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) - A077028 n

end

end A139600.P3248004968588172204

noncomputable section

/-- A139600: Square array T(n,k) = n*(k-1)*k/2+k, of nonnegative numbers together with polygonal numbers, read by antidiagonals upwards.

Offset 0, canonical program `A139600.P3248004968588172204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139600 (n : ℕ) : ℤ :=
  A139600.P3248004968588172204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140531.P3500918698213880928

`floor(A059268(n)/2)`
-/

namespace A140531.P3500918698213880928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059268 n : ℚ) / 2⌋

end

end A140531.P3500918698213880928

noncomputable section

/-- A140531: Concatenate subsequences 0, 1, 2, 4, ..., 2^k.

Offset 0, canonical program `A140531.P3500918698213880928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140531 (n : ℕ) : ℤ :=
  A140531.P3500918698213880928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140757.P932709549133875573

`∑[A140756(n+1)]`
-/

namespace A140757.P932709549133875573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140757.P932709549133875573

noncomputable section

/-- A140757: Cumulative sums of A140756.

Offset 1, canonical program `A140757.P932709549133875573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140757 (n : ℕ) : ℤ :=
  A140757.P932709549133875573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141431.P15337335039295603868

`(A131413(n)+2)*A002262(n)`
-/

namespace A141431.P15337335039295603868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131413 n + 2) * A002262 n

end

end A141431.P15337335039295603868

noncomputable section

/-- A141431: Triangle T(n,k) = (k-1)*(3*n-k+1), read by rows.

Offset 1, canonical program `A141431.P15337335039295603868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141431 (n : ℕ) : ℤ :=
  A141431.P15337335039295603868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141432.P9450738093109342442

`A114327(n)+∑[A114327(n)]-2`
-/

namespace A141432.P9450738093109342442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n + (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A141432.P9450738093109342442

noncomputable section

/-- A141432: Triangle T(n,k) = (k+1)*(n-k-1) read by rows.

Offset 1, canonical program `A141432.P9450738093109342442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141432 (n : ℕ) : ℤ :=
  A141432.P9450738093109342442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141434.P4998564812598306764

`A002262(n)*A131413(n)`
-/

namespace A141434.P4998564812598306764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A131413 n

end

end A141434.P4998564812598306764

noncomputable section

/-- A141434: Triangle T(n, k) = (k-1)*(3*n-k-1), read by rows.

Offset 1, canonical program `A141434.P4998564812598306764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141434 (n : ℕ) : ℤ :=
  A141434.P4998564812598306764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141561.P7283071268337444597

`p?[∑[7-A054541(n+1)]]`
-/

namespace A141561.P7283071268337444597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P7283071268337444597

noncomputable section

/-- A141561: Primes of the form 7*k - prime(k) (terms can be repeated).

Offset 1, canonical program `A141561.P7283071268337444597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A141561 (n : ℕ) : ℤ :=
  A141561.P7283071268337444597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A141561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141612.P959685703486808005

`A014081(A073122(n+1)-A033999(n))`
-/

namespace A141612.P959685703486808005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A073122 (n + 1) - A033999 n).toNat

end

end A141612.P959685703486808005

noncomputable section

/-- A141612: Write down 0,1,2,3,...n each in binary. Total up the number of 1's in each bit-position (total number of 1's in 1's position, total number of 1's in 2's position, total number of 1's in 4's position, etc.). a(n) = the number of such totals that each do not equal any other such total.

Offset 0, canonical program `A141612.P959685703486808005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A141612 (n : ℕ) : ℤ :=
  A141612.P959685703486808005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A141612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141687.P87017313414526891

`(A116366(n+1)/2)%2`
-/

namespace A141687.P87017313414526891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A116366 (n + 1) : ℚ) / 2)) 2

end

end A141687.P87017313414526891

noncomputable section

/-- A141687: Triangle read by rows: t(n,m) = 1 - ((prime(n) - prime(m))/2 mod 2).

Offset 1, canonical program `A141687.P87017313414526891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A141687 (n : ℕ) : ℤ :=
  A141687.P87017313414526891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A141687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142405.P7484043141253208572

`∩[A134517(n+1), A141194(n+1)]`
-/

namespace A142405.P7484043141253208572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P7484043141253208572

noncomputable section

/-- A142405: Primes congruent to 23 mod 48.

Offset 1, canonical program `A142405.P7484043141253208572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A142405 (n : ℕ) : ℤ :=
  (A142405.P7484043141253208572.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A142405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143183.P12493937209500251940

`abs(A055461(n+1)-A133819(n+1))+1`
-/

namespace A143183.P12493937209500251940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055461 (n + 1) - A133819 (n + 1)| + 1

end

end A143183.P12493937209500251940

noncomputable section

/-- A143183: Triangle T(n,k) = 1 + (2+n)*abs(n-2*k), read by rows, for 0 <= k <= n.

Offset 0, canonical program `A143183.P12493937209500251940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143183 (n : ℕ) : ℤ :=
  A143183.P12493937209500251940.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143211.P2366822607170228707

`A104763(n+1)*A131410(n+1)`
-/

namespace A143211.P2366822607170228707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) * A131410 (n + 1)

end

end A143211.P2366822607170228707

noncomputable section

/-- A143211: Triangle read by rows, T(n,k) = Fibonacci(n)*Fibonacci(k).

Offset 1, canonical program `A143211.P2366822607170228707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143211 (n : ℕ) : ℤ :=
  A143211.P2366822607170228707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143219.P5950329359830316773

`(n+1-A049780(n))*∑[A010054(n)]`
-/

namespace A143219.P5950329359830316773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A049780 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143219.P5950329359830316773

noncomputable section

/-- A143219: Triangle read by rows, A127648 * A000012 * A127773, 1 <= k <= n.

Offset 1, canonical program `A143219.P5950329359830316773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143219 (n : ℕ) : ℤ :=
  A143219.P5950329359830316773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143310.P10710681991950682703

`A002260(n+1)*A128489(n+1)`
-/

namespace A143310.P10710681991950682703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A128489 (n + 1)

end

end A143310.P10710681991950682703

noncomputable section

/-- A143310: Triangle read by rows, A000012 * A127446, 1 <= k <= n.

Offset 1, canonical program `A143310.P10710681991950682703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143310 (n : ℕ) : ℤ :=
  A143310.P10710681991950682703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143376.P216290818035908107

`A135278(n)*A137688(n)`
-/

namespace A143376.P216290818035908107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A137688 n

end

end A143376.P216290818035908107

noncomputable section

/-- A143376: Triangle read by rows: T(n,k) is the number of unordered pairs of vertices at distance k in the cube Q_n of dimension n (1 <= k <= n).

Offset 1, canonical program `A143376.P216290818035908107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143376 (n : ℕ) : ℤ :=
  A143376.P216290818035908107.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143425.P2017308752457203601

`and(A046143(n+1), A059268(n))`
-/

namespace A143425.P2017308752457203601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046143 (n + 1)) (A059268 n)

end

end A143425.P2017308752457203601

noncomputable section

/-- A143425: Triangle read by rows A051731 * A130123, 1<=k<=n.

Offset 1, canonical program `A143425.P2017308752457203601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143425 (n : ℕ) : ℤ :=
  A143425.P2017308752457203601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143446.P7297161826852171778

`A059268(n)*A134541(n+1)`
-/

namespace A143446.P7297161826852171778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A134541 (n + 1)

end

end A143446.P7297161826852171778

noncomputable section

/-- A143446: Triangle read by rows: A000012 * A143424.

Offset 1, canonical program `A143446.P7297161826852171778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143446 (n : ℕ) : ℤ :=
  A143446.P7297161826852171778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143497.P17063427898058652900

`A094587(n)*A104713(n+3)`
-/

namespace A143497.P17063427898058652900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A104713 (n + 3)

end

end A143497.P17063427898058652900

noncomputable section

/-- A143497: Triangle of unsigned 2-Lah numbers.

Offset 2, canonical program `A143497.P17063427898058652900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A143497 (n : ℕ) : ℤ :=
  A143497.P17063427898058652900.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A143497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143786.P9341438817367999759

`dr(∏{e}[A114327(n), #+1])`
-/

namespace A143786.P9341438817367999759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ)

end

end A143786.P9341438817367999759

noncomputable section

/-- A143786: Number of arithmetic progressions from m to n; a rectangular array, m>=0, n>=0, by antidiagonals.

Offset 1, canonical program `A143786.P9341438817367999759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A143786 (n : ℕ) : ℤ :=
  (A143786.P9341438817367999759.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A143786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143956.P16519828096933120938

`A131413(n)-A134403(n)`
-/

namespace A143956.P16519828096933120938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131413 n - A134403 n

end

end A143956.P16519828096933120938

noncomputable section

/-- A143956: Triangle read by rows, A000012 * A136521 * A000012; 1<=k<=n.

Offset 1, canonical program `A143956.P16519828096933120938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143956 (n : ℕ) : ℤ :=
  A143956.P16519828096933120938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143997.P1090156401817259901

`A057353(A003991(n+1)+1)`
-/

namespace A143997.P1090156401817259901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A003991 (n + 1) + 1).toNat

end

end A143997.P1090156401817259901

noncomputable section

/-- A143997: Rectangular array by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares for which (x,y) is congruent mod 4 to one of the following: (1,4), (2,2), (3,3), (4,1); then R(m,n) is the number of UNmarked squares in the rectangle [0,m]x[0,n].

Offset 1, canonical program `A143997.P1090156401817259901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A143997 (n : ℕ) : ℤ :=
  A143997.P1090156401817259901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A143997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143998.P2440036411916309485

`floor(3*A003991(n+1)/4)`
-/

namespace A143998.P2440036411916309485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A003991 (n + 1) : ℚ) / 4)⌋

end

end A143998.P2440036411916309485

noncomputable section

/-- A143998: Rectangular array by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares for which (x,y) is congruent mod 4 to one of the following: (1,1), (2,3), (3,2), (4,0); then R(m,n) is the number of marked squares in the rectangle [0,m]x[0,n].

Offset 1, canonical program `A143998.P2440036411916309485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A143998 (n : ℕ) : ℤ :=
  A143998.P2440036411916309485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A143998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144330.P3619810151422796478

`A144328(n+1)+A049780(n)`
-/

namespace A144330.P3619810151422796478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) + A049780 n

end

end A144330.P3619810151422796478

noncomputable section

/-- A144330: Triangle read by rows, A144328 * A000012 as infinite lower triangular matrices.

Offset 0, canonical program `A144330.P3619810151422796478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144330 (n : ℕ) : ℤ :=
  A144330.P3619810151422796478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144337.P16245323222226020514

`A004273(A144328(n+1))*A004736(n+1)`
-/

namespace A144337.P16245323222226020514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A144328 (n + 1)).toNat * A004736 (n + 1)

end

end A144337.P16245323222226020514

noncomputable section

/-- A144337: Triangle read by rows, A000012 * (2*A144328 - A000012).

Offset 1, canonical program `A144337.P16245323222226020514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144337 (n : ℕ) : ℤ :=
  A144337.P16245323222226020514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144484.P18161828126570306983

`C(A134483(A038722(n+1)), A131507(n))`
-/

namespace A144484.P18161828126570306983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134483 (A038722 (n + 1)).toNat).toNat (A131507 n).toNat

end

end A144484.P18161828126570306983

noncomputable section

/-- A144484: Triangle read by rows: T(n, k) = binomial(3*n+1-k, n-k) for n, k >= 0.

Offset 0, canonical program `A144484.P18161828126570306983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. -/
def A144484 (n : ℕ) : ℤ :=
  (A144484.P18161828126570306983.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. -/
def A144484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145378.P6152489767625416770

`∑{d}[n+1, A113184(#)]`
-/

namespace A145378.P6152489767625416770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113184 d

end

end A145378.P6152489767625416770

noncomputable section

/-- A145378: a(n) = Sum_{d|n} sigma(d) - 2*Sum_{2c|n} sigma(c) + 4*Sum_{4b|n} sigma(b).

Offset 1, canonical program `A145378.P6152489767625416770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145378 (n : ℕ) : ℤ :=
  A145378.P6152489767625416770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145379.P6530098402621285829

`A077049(A005843(A004736(n+1))+n)`
-/

namespace A145379.P6530098402621285829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077049 (A005843 (A004736 (n + 1)).toNat + (n : ℤ)).toNat

end

end A145379.P6530098402621285829

noncomputable section

/-- A145379: Square array read by antidiagonals upwards: T(n,k) = 1 if n divides k, T(n,k) = 0 otherwise, n >= 1, k >= 2.

Offset 1, canonical program `A145379.P6530098402621285829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145379 (n : ℕ) : ℤ :=
  A145379.P6530098402621285829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151774.P15402501950599071548

`C(C(2, A088512(n)), 2)`
-/

namespace A151774.P15402501950599071548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A088512 n).toNat) 2

end

end A151774.P15402501950599071548

noncomputable section

/-- A151774: Characteristic function of numbers with binary weight 2 (A018900).

Offset 0, canonical program `A151774.P15402501950599071548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151774 (n : ℕ) : ℤ :=
  (A151774.P15402501950599071548.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151890.P12585172383525440924

`floor(A143218(n+1)/2)`
-/

namespace A151890.P12585172383525440924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143218 (n + 1) : ℚ) / 2⌋

end

end A151890.P12585172383525440924

noncomputable section

/-- A151890: Triangle read by rows: T(l,c) = 2*l*c + l + c (0 <= c <= l).

Offset 0, canonical program `A151890.P12585172383525440924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151890 (n : ℕ) : ℤ :=
  A151890.P12585172383525440924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152203.P706124118902158050

`A099375(n)*A104763(n+1)`
-/

namespace A152203.P706124118902158050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n * A104763 (n + 1)

end

end A152203.P706124118902158050

noncomputable section

/-- A152203: Triangle T(n,k) = (2n+1-2k)*fibonacci(k), read by rows.

Offset 1, canonical program `A152203.P706124118902158050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152203 (n : ℕ) : ℤ :=
  A152203.P706124118902158050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152656.P12665630540216407348

`lcm(A009998(n), A119502(n))/A009998(n)`
-/

namespace A152656.P12665630540216407348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A009998 n) (A119502 n) : ℚ) / (A009998 n : ℚ)

end

end A152656.P12665630540216407348

noncomputable section

/-- A152656: Triangle read by rows: denominators of polynomials from A000142: P(0,x) = 1, P(n,x) = 1/n! + x*Sum_{i=0..n-1} P(n-i-1)/i!. Numerators are A152650.

Offset 0, canonical program `A152656.P12665630540216407348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1606 terms. -/
def A152656 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152656.P12665630540216407348.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1606 terms. -/
def A152656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152818.P12812321603079016799

`A008279(n)*A009998(n)`
-/

namespace A152818.P12812321603079016799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A009998 n

end

end A152818.P12812321603079016799

noncomputable section

/-- A152818: Array read by antidiagonals: A(n,k) = (k+1)^n*(n+k)!/n!.

Offset 0, canonical program `A152818.P12812321603079016799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. -/
def A152818 (n : ℕ) : ℤ :=
  A152818.P12812321603079016799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. -/
def A152818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152984.P1224505352498316332

`abs(A152864(n+1))`
-/

namespace A152984.P1224505352498316332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152864 (n + 1)|

end

end A152984.P1224505352498316332

noncomputable section

/-- A152984: Absolute values of A152864.

Offset 1, canonical program `A152984.P1224505352498316332`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152984 (n : ℕ) : ℤ :=
  A152984.P1224505352498316332.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153279.P12459744595363898917

`lcm(3, A036561(n))/3`
-/

namespace A153279.P12459744595363898917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A036561 n) : ℚ) / 3

end

end A153279.P12459744595363898917

noncomputable section

/-- A153279: Eigentriangle by rows, T(n,k) = A000079(n-k) * (diagonalized matrix of (1,1,3,9,27,81,...)).

Offset 0, canonical program `A153279.P12459744595363898917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153279 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A153279.P12459744595363898917.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153281.P9058196011063740068

`A104763(n+1)*A130321(n)`
-/

namespace A153281.P9058196011063740068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) * A130321 n

end

end A153281.P9058196011063740068

noncomputable section

/-- A153281: Triangle read by rows, A130321 * A127647. Also, number of subsets of [n+2] with consecutive integers that start at k.

Offset 0, canonical program `A153281.P9058196011063740068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153281 (n : ℕ) : ℤ :=
  A153281.P9058196011063740068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153861.P2940504812879242112

`A135278(n)-A073424(n)`
-/

namespace A153861.P2940504812879242112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A073424 n

end

end A153861.P2940504812879242112

noncomputable section

/-- A153861: Triangle read by rows, binomial transform of triangle A153860.

Offset 0, canonical program `A153861.P2940504812879242112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153861 (n : ℕ) : ℤ :=
  A153861.P2940504812879242112.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155118.P18324433763876345140

`round(A036561(n)/3)`
-/

namespace A155118.P18324433763876345140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036561 n : ℚ) / 3)

end

end A155118.P18324433763876345140

noncomputable section

/-- A155118: Array T(n,k) read by antidiagonals: the k-th term of the n-th iterated differences of A140429.

Offset 0, canonical program `A155118.P18324433763876345140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155118 (n : ℕ) : ℤ :=
  A155118.P18324433763876345140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155162.P4392720739016387663

`A094587(n)+A008279(n)`
-/

namespace A155162.P4392720739016387663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n + A008279 n

end

end A155162.P4392720739016387663

noncomputable section

/-- A155162: Triangle T(n,k) = binomial(n, k)*(k! + (n-k)!), read by rows.

Offset 0, canonical program `A155162.P4392720739016387663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A155162 (n : ℕ) : ℤ :=
  A155162.P4392720739016387663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A155162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156354.P7788694135632265055

`A055652(A028310(n))`
-/

namespace A156354.P7788694135632265055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A028310 n).toNat

end

end A156354.P7788694135632265055

noncomputable section

/-- A156354: Triangle T(n, k) = k^(n-k) + (n-k)^k with T(0, 0) = 1, read by rows.

Offset 0, canonical program `A156354.P7788694135632265055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4773 terms. -/
def A156354 (n : ℕ) : ℤ :=
  A156354.P7788694135632265055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4773 terms. -/
def A156354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156581.P6595588303505645397

`A001026(A077028(n)-1)`
-/

namespace A156581.P6595588303505645397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 (A077028 n - 1).toNat

end

end A156581.P6595588303505645397

noncomputable section

/-- A156581: Triangle T(n, k, m) = (m+2)^(k*(n-k)) with m = 15, read by rows.

Offset 0, canonical program `A156581.P6595588303505645397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A156581 (n : ℕ) : ℤ :=
  A156581.P6595588303505645397.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A156581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156732.P9251445521118076223

`Δ[A074909(n)]*A114327(n)`
-/

namespace A156732.P9251445521118076223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A114327 n

end

end A156732.P9251445521118076223

noncomputable section

/-- A156732: Triangle T(n, k) = ((n-2*k)^2/(n-k+1))*binomial(n+1, k+1), read by rows.

Offset 0, canonical program `A156732.P9251445521118076223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A156732 (n : ℕ) : ℤ :=
  A156732.P9251445521118076223.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A156732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156992.P10404684266011643544

`A094587(n)*A094587(A099375(n)+n)`
-/

namespace A156992.P10404684266011643544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A094587 (A099375 n + (n : ℤ)).toNat

end

end A156992.P10404684266011643544

noncomputable section

/-- A156992: Triangle T(n,k) = n!*binomial(n-1, k-1) for 1 <= k <= n, read by rows.

Offset 1, canonical program `A156992.P10404684266011643544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1853 terms. -/
def A156992 (n : ℕ) : ℤ :=
  A156992.P10404684266011643544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1853 terms. -/
def A156992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157502.P11939738735497661628

`A211197(n+1)+A093995(n+1)`
-/

namespace A157502.P11939738735497661628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211197 (n + 1) + A093995 (n + 1)

end

end A157502.P11939738735497661628

noncomputable section

/-- A157502: Even numbers without the squares.

Offset 1, canonical program `A157502.P11939738735497661628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157502 (n : ℕ) : ℤ :=
  A157502.P11939738735497661628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157974.P8815639970148914134

`p?[floor(A134517(n+1)/12)]`
-/

namespace A157974.P8815639970148914134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134517 (n + 1) : ℚ) / 12⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157974.P8815639970148914134

noncomputable section

/-- A157974: Primes p such that 12*p + 11 is also prime.

Offset 1, canonical program `A157974.P8815639970148914134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1910 terms. -/
def A157974 (n : ℕ) : ℤ :=
  A157974.P8815639970148914134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1910 terms. -/
def A157974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159623.P17951004885206147475

`gcd(A008279(n), A094587(n))`
-/

namespace A159623.P17951004885206147475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008279 n) (A094587 n)

end

end A159623.P17951004885206147475

noncomputable section

/-- A159623: Triangle read by rows: T(n, k) = n!*q^k/(n-k)! if floor(n/2) > k-1 otherwise n!*q^(n-k)/k!, with q = 1.

Offset 0, canonical program `A159623.P17951004885206147475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A159623 (n : ℕ) : ℤ :=
  (A159623.P17951004885206147475.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A159623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159637.P12559117183087142693

`A101080(n)%2`
-/

namespace A159637.P12559117183087142693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101080 n) 2

end

end A159637.P12559117183087142693

noncomputable section

/-- A159637: Start with [0], repeatedly apply the map 0 -> [01/10], 1 -> [10/01].

Offset 0, canonical program `A159637.P12559117183087142693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159637 (n : ℕ) : ℤ :=
  A159637.P12559117183087142693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160742.P554087851942868596

`A151566(n)*2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160742.P554087851942868596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 n * 2

end

end A160742.P554087851942868596

noncomputable section

/-- A160742: a(n) = A151566(n)*2.

Offset 0, canonical program `A160742.P554087851942868596`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160742 (n : ℕ) : ℤ :=
  A160742.P554087851942868596.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160742.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160744.P10798283293530994526

`A151566(n)*3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160744.P10798283293530994526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 n * 3

end

end A160744.P10798283293530994526

noncomputable section

/-- A160744: a(n) = A151566(n)*3.

Offset 0, canonical program `A160744.P10798283293530994526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160744 (n : ℕ) : ℤ :=
  A160744.P10798283293530994526.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160744.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160746.P2805536965338767188

`A151566(n)*4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160746.P2805536965338767188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 n * 4

end

end A160746.P2805536965338767188

noncomputable section

/-- A160746: a(n) = A151566(n)*4.

Offset 0, canonical program `A160746.P2805536965338767188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160746 (n : ℕ) : ℤ :=
  A160746.P2805536965338767188.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160838.P6006200299465319187

`A160836(n)+A160837(n)-A160817(n)`
-/

namespace A160838.P6006200299465319187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160836 n + (A160837 n - A160817 n)

end

end A160838.P6006200299465319187

noncomputable section

/-- A160838: G.f.: (1+38*x+263*x^2+484*x^3+263*x^4+38*x^5+x^6)/(1-x)^7.

Offset 0, canonical program `A160838.P6006200299465319187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160838 (n : ℕ) : ℤ :=
  A160838.P6006200299465319187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161155.P953879474877932114

`∩[A161153(n+1), A161154(n+1)]`
-/

namespace A161155.P953879474877932114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161155.P953879474877932114

noncomputable section

/-- A161155: Positive integers n such that {the number of (non-leading) 0's in the binary representation of n} is coprime to n, {the number of 1's in the binary representation of n} is coprime to n and {the number of digits in the binary representation of n} is coprime to n.

Offset 1, canonical program `A161155.P953879474877932114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A161155 (n : ℕ) : ℤ :=
  (A161155.P953879474877932114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A161155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161666.P4806280190446995968

`round(A060329(n+1)/4)-2`
-/

namespace A161666.P4806280190446995968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A060329 (n + 1) : ℚ) / 4) - 2

end

end A161666.P4806280190446995968

noncomputable section

/-- A161666: Smallest of 4 consecutive composite numbers which sum up to prime.

Offset 1, canonical program `A161666.P4806280190446995968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161666 (n : ℕ) : ℤ :=
  A161666.P4806280190446995968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162419.P3264768451038245981

`∑{d}[n+1, #]*A113184(n+1)`
-/

namespace A162419.P3264768451038245981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A113184 (n + 1)

end

end A162419.P3264768451038245981

noncomputable section

/-- A162419: a(n) = sigma(n)*|A002129(n)| where sigma(n) = A000203(n).

Offset 1, canonical program `A162419.P3264768451038245981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162419 (n : ℕ) : ℤ :=
  A162419.P3264768451038245981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162439.P3597326897349511420

`A160467(n+1)+a(A140106(n+1))` with `a(0)=1`
-/

namespace A162439.P3597326897349511420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160467 (n + 1) + a (A140106 (n + 1)).toNat

end

end A162439.P3597326897349511420

noncomputable section

/-- A162439: Write down the binary representation of n. Partition the string which is this binary representation by placing a '+' just left of every 1. Add the resulting base 2 numbers. a(n) = decimal equivalent of this sum.

Offset 1, canonical program `A162439.P3597326897349511420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162439 (n : ℕ) : ℤ :=
  A162439.P3597326897349511420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162565.P9584183037973617797

`p?[A006093(n+1)+A058263(n+1)+1]`
-/

namespace A162565.P9584183037973617797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A058263 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162565.P9584183037973617797

noncomputable section

/-- A162565: Those primes p such that (p-q) divides (p-1), where q is the greatest prime < p.

Offset 1, canonical program `A162565.P9584183037973617797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162565 (n : ℕ) : ℤ :=
  A162565.P9584183037973617797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162608.P7353512471309454721

`A051683(A083920(n)+1)`
-/

namespace A162608.P7353512471309454721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 (A083920 n + 1).toNat

end

end A162608.P7353512471309454721

noncomputable section

/-- A162608: Triangle read by rows in which row n lists n+1 terms, starting with n!, such that the difference between successive terms is also equal to n!.

Offset 0, canonical program `A162608.P7353512471309454721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2473 terms. -/
def A162608 (n : ℕ) : ℤ :=
  A162608.P7353512471309454721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2473 terms. -/
def A162608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162613.P4468718630332530059

`A162612(n+1)-(A061579(n)+n)`
-/

namespace A162613.P4468718630332530059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162612 (n + 1) - (A061579 n + (n : ℤ))

end

end A162613.P4468718630332530059

noncomputable section

/-- A162613: Triangle read by rows in which row n lists n terms, starting with n, with gaps = n^2-1 between successive terms.

Offset 1, canonical program `A162613.P4468718630332530059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162613 (n : ℕ) : ℤ :=
  A162613.P4468718630332530059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163000.P3772778499121085452

`A004526(A001316(n)*A087116(n))`
-/

namespace A163000.P3772778499121085452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001316 n * A087116 n).toNat

end

end A163000.P3772778499121085452

noncomputable section

/-- A163000: Count of integers x in [0,n] satisfying A000120(x) + A000120(n-x) = A000120(n) + 1.

Offset 0, canonical program `A163000.P3772778499121085452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163000 (n : ℕ) : ℤ :=
  A163000.P3772778499121085452.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164306.P6745105614264887961

`A051173(n+1)/∑[char[∑[n]]]`
-/

namespace A164306.P6745105614264887961
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A164306.P6745105614264887961

noncomputable section

/-- A164306: Triangle read by rows: T(n, k) = k / gcd(k, n), 1 <= k <= n.

Offset 1, canonical program `A164306.P6745105614264887961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164306 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A164306.P6745105614264887961.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164925.P8432119740919332270

`A109466(A061579(n-A003056(n)))`
-/

namespace A164925.P8432119740919332270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 (A061579 ((n : ℤ) - A003056 n).toNat).toNat

end

end A164925.P8432119740919332270

noncomputable section

/-- A164925: Array, binomial(j-i,j), read by rising antidiagonals.

Offset 0, canonical program `A164925.P8432119740919332270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164925 (n : ℕ) : ℤ :=
  A164925.P8432119740919332270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165253.P10016462814353863925

`A121314(A061579(n))`
-/

namespace A165253.P10016462814353863925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121314 (A061579 n).toNat

end

end A165253.P10016462814353863925

noncomputable section

/-- A165253: Triangle T(n,k), read by rows given by [1,0,1,0,0,0,0,0,0,...] DELTA [0,1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A165253.P10016462814353863925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165253 (n : ℕ) : ℤ :=
  A165253.P10016462814353863925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165317.P13194388540254621520

`A005811(n+1)-A033264(A003188(n+1))`
-/

namespace A165317.P13194388540254621520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1) - A033264 (A003188 (n + 1)).toNat

end

end A165317.P13194388540254621520

noncomputable section

/-- A165317: a(n) = the number of digits in the binary representation of n that each do not precede or follow a similarly valued digit.

Offset 1, canonical program `A165317.P13194388540254621520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A165317 (n : ℕ) : ℤ :=
  A165317.P13194388540254621520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A165317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165686.P1058354228064450562

`A165684(n+1)-A152467(A004275(n))`
-/

namespace A165686.P1058354228064450562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165684 (n + 1) - A152467 (A004275 n).toNat

end

end A165686.P1058354228064450562

noncomputable section

/-- A165686: Dimension of the space of Siegel cusp forms of genus 2 and weight 2k which are not Saito-Kurokawa lifts of forms of genus 1.

Offset 1, canonical program `A165686.P1058354228064450562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A165686 (n : ℕ) : ℤ :=
  A165686.P1058354228064450562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A165686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166454.P7038531745255804387

`floor((A135278(n)+A074909(n))/2)`
-/

namespace A166454.P7038531745255804387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135278 n + A074909 n : ℚ) / 2⌋

end

end A166454.P7038531745255804387

noncomputable section

/-- A166454: Triangle read by rows: T(n, k) = (1/2)*(A007318(n,k) - A047999(n,k)).

Offset 2, canonical program `A166454.P7038531745255804387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166454 (n : ℕ) : ℤ :=
  A166454.P7038531745255804387.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166555.P10193030869591466307

`A047999(n)*A059268(n)`
-/

namespace A166555.P10193030869591466307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n * A059268 n

end

end A166555.P10193030869591466307

noncomputable section

/-- A166555: Triangle read by rows, T(n, k) = 2^k * A047999(n, k).

Offset 0, canonical program `A166555.P10193030869591466307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166555 (n : ℕ) : ℤ :=
  A166555.P10193030869591466307.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166597.P14552351031517696526

`A054541(A095117(n)+1-n)`
-/

namespace A166597.P14552351031517696526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A095117 n + (1 - (n : ℤ))).toNat

end

end A166597.P14552351031517696526

noncomputable section

/-- A166597: Let p = largest prime <= n, with p(0)=p(1)=0, and let q = smallest prime > n; then a(n) = q-p.

Offset 0, canonical program `A166597.P14552351031517696526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166597 (n : ℕ) : ℤ :=
  A166597.P14552351031517696526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167230.P8002516608932621908

`5%(A093658(n+1)+1)`
-/

namespace A167230.P8002516608932621908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A093658 (n + 1) + 1)

end

end A167230.P8002516608932621908

noncomputable section

/-- A167230: The matrix exponential of Sierpiński's triangle (A047999) scaled by exp(-1).

Offset 0, canonical program `A167230.P8002516608932621908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A167230 (n : ℕ) : ℤ :=
  A167230.P8002516608932621908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A167230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167274.P14910815328084261160

`A101000(A166453(n))`
-/

namespace A167274.P14910815328084261160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101000 (A166453 n).toNat

end

end A167274.P14910815328084261160

noncomputable section

/-- A167274: Triangle read by rows, = 2*A047999 - A047999^(-1); = twice Sierpinski's gasket minus the inverse of Sierpinski's gasket.

Offset 0, canonical program `A167274.P14910815328084261160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167274 (n : ℕ) : ℤ :=
  A167274.P14910815328084261160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167684.P2154934591697718303

`A097806(n)+A046698(n)*A097806(n+1)`
-/

namespace A167684.P2154934591697718303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n + A046698 n * A097806 (n + 1)

end

end A167684.P2154934591697718303

noncomputable section

/-- A167684: Triangle read by rows given by [2,-1,1,-2,0,0,0,0,0,0,0,...] DELTA [1,0,1,-1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A167684.P2154934591697718303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167684 (n : ℕ) : ℤ :=
  A167684.P2154934591697718303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167770.P15250803839821873356

`A065091(n+1)-A113396(n+1)`
-/

namespace A167770.P15250803839821873356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A113396 (n + 1)

end

end A167770.P15250803839821873356

noncomputable section

/-- A167770: a(n) = prime(n)^2 modulo prime(n+1).

Offset 1, canonical program `A167770.P15250803839821873356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167770 (n : ℕ) : ℤ :=
  A167770.P15250803839821873356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169603.P12042940519301463722

`A134483(n+1)²-A131507(n)²`
-/

namespace A169603.P12042940519301463722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134483 (n + 1) ^ 2 - A131507 n ^ 2

end

end A169603.P12042940519301463722

noncomputable section

/-- A169603: Triangle T(n,k) = k*(4*n+k+2), read by rows.

Offset 0, canonical program `A169603.P12042940519301463722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169603 (n : ℕ) : ℤ :=
  A169603.P12042940519301463722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171232.P120387607848267038

`A004277(A003988(n+1)*A077049(n+1))-A077049(n+1)`
-/

namespace A171232.P120387607848267038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A003988 (n + 1) * A077049 (n + 1)).toNat - A077049 (n + 1)

end

end A171232.P120387607848267038

noncomputable section

/-- A171232: Array read by antidiagonals, T(n,k) = 2*(n/k) - 1, if n mod k = 0; otherwise, T(n,k) = 1.

Offset 1, canonical program `A171232.P120387607848267038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171232 (n : ℕ) : ℤ :=
  A171232.P120387607848267038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171379.P2646374990893908520

`C(C(A094727(n+1), A003056(n)), 2)`
-/

namespace A171379.P2646374990893908520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A094727 (n + 1)).toNat (A003056 n).toNat) 2

end

end A171379.P2646374990893908520

noncomputable section

/-- A171379: Triangle, read by rows, T(n, k) = A059481(n,k)*(A059481(n,k) - 1)/2.

Offset 1, canonical program `A171379.P2646374990893908520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3739 terms. -/
def A171379 (n : ℕ) : ℤ :=
  (A171379.P2646374990893908520.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3739 terms. -/
def A171379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171615.P18201071314134150364

`comp[A171614(n+1)]`
-/

namespace A171615.P18201071314134150364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171615.P18201071314134150364

noncomputable section

/-- A171615: Numbers n with property that (n^2 + sum of the digits of n^2) is odd.

Offset 1, canonical program `A171615.P18201071314134150364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171615 (n : ℕ) : ℤ :=
  (A171615.P18201071314134150364.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171942.P6035493743432870795

`(A057168(abs(1-n)+1)+1)%(n+1)`
-/

namespace A171942.P6035493743432870795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057168 (|1 - (n : ℤ)| + 1).toNat + 1) (n + 1 : ℤ)

end

end A171942.P6035493743432870795

noncomputable section

/-- A171942: Forward van Eck transform of A000120.

Offset 1, canonical program `A171942.P6035493743432870795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171942 (n : ℕ) : ℤ :=
  A171942.P6035493743432870795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172065.P14685096181985572914

`Δ[A172064(n)]-A172062(n+1)`
-/

namespace A172065.P14685096181985572914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A172062 (n + 1)

end

end A172065.P14685096181985572914

noncomputable section

/-- A172065: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=8.

Offset 0, canonical program `A172065.P14685096181985572914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A172065 (n : ℕ) : ℤ :=
  A172065.P14685096181985572914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A172065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173539.P9511536219603571915

`(1-A077049(n+1))*A002260(n+1)`
-/

namespace A173539.P9511536219603571915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A077049 (n + 1)) * A002260 (n + 1)

end

end A173539.P9511536219603571915

noncomputable section

/-- A173539: Square array read by antidiagonals: T(n,k)=0 if k is a divisor of n, otherwise T(n,k)=k.

Offset 1, canonical program `A173539.P9511536219603571915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A173539 (n : ℕ) : ℤ :=
  A173539.P9511536219603571915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A173539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173655.P6709299333076339341

`A005145(n+1)%A037126(n+1)`
-/

namespace A173655.P6709299333076339341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005145 (n + 1)) (A037126 (n + 1))

end

end A173655.P6709299333076339341

noncomputable section

/-- A173655: Triangle read by rows: T(n,k) = prime(n) mod prime(k), 0 < k <= n.

Offset 1, canonical program `A173655.P6709299333076339341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A173655 (n : ℕ) : ℤ :=
  A173655.P6709299333076339341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A173655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173706.P12511956019214368513

`(A037126(n+1)-1)*A005145(A014132(n+1))`
-/

namespace A173706.P12511956019214368513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037126 (n + 1) - 1) * A005145 (A014132 (n + 1)).toNat

end

end A173706.P12511956019214368513

noncomputable section

/-- A173706: Triangle read by rows, of p*(q-1) for primes p, q with p>q.

Offset 1, canonical program `A173706.P12511956019214368513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173706 (n : ℕ) : ℤ :=
  A173706.P12511956019214368513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173786.P17698000632262255612

`A048645(n+2)`
-/

namespace A173786.P17698000632262255612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 2)

end

end A173786.P17698000632262255612

noncomputable section

/-- A173786: Triangle read by rows: T(n,k) = 2^n + 2^k, 0 <= k <= n.

Offset 0, canonical program `A173786.P17698000632262255612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173786 (n : ℕ) : ℤ :=
  A173786.P17698000632262255612.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173786.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173787.P2304199394440662291

`A137688(n)-A059268(n)`
-/

namespace A173787.P2304199394440662291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n - A059268 n

end

end A173787.P2304199394440662291

noncomputable section

/-- A173787: Triangle read by rows: T(n,k) = 2^n - 2^k, 0 <= k <= n.

Offset 0, canonical program `A173787.P2304199394440662291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173787 (n : ℕ) : ℤ :=
  A173787.P2304199394440662291.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174097.P12628069750197507222

`A240400(A030528(n+1)+A169803(n)%A000930(n)+1)`
-/

namespace A174097.P12628069750197507222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240400 (A030528 (n + 1) + Int.tmod (A169803 n) (A000930 n) + 1).toNat

end

end A174097.P12628069750197507222

noncomputable section

/-- A174097: Triangle T(n,k,q) = Sum_{j=0..10} q^j * floor(A174093(n,k)/2^j) with q=3, read by rows.

Offset 0, canonical program `A174097.P12628069750197507222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A174097 (n : ℕ) : ℤ :=
  A174097.P12628069750197507222.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A174097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174273.P15299041796638196004

`∑{d}[n+1, A035263(#)]`
-/

namespace A174273.P15299041796638196004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d

end

end A174273.P15299041796638196004

noncomputable section

/-- A174273: Inverse Moebius transform of A035263.

Offset 1, canonical program `A174273.P15299041796638196004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174273 (n : ℕ) : ℤ :=
  A174273.P15299041796638196004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174428.P14297892623469867627

`∑{d}[A123578(n), #]%A140756(n+1)`
-/

namespace A174428.P14297892623469867627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A140756 (n + 1))

end

end A174428.P14297892623469867627

noncomputable section

/-- A174428: Triangle read by rows: R(n,k) = sigma(n) mod k, where sigma(.) is the sum of divisors.

Offset 1, canonical program `A174428.P14297892623469867627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174428 (n : ℕ) : ℤ :=
  A174428.P14297892623469867627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174947.P3946399957543125814

`(A005145(n+1)+1)%A037126(n+1)`
-/

namespace A174947.P3946399957543125814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005145 (n + 1) + 1) (A037126 (n + 1))

end

end A174947.P3946399957543125814

noncomputable section

/-- A174947: Triangle read by rows: T(n,k) = (prime(n)+1) mod prime(k).

Offset 1, canonical program `A174947.P3946399957543125814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A174947 (n : ℕ) : ℤ :=
  A174947.P3946399957543125814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A174947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175059.P4518377172309833936

`A025480(eq[A007814(n+1), A087116(n)])`
-/

namespace A175059.P4518377172309833936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175059.P4518377172309833936

noncomputable section

/-- A175059: a(n) = decimal equivalent of {A144795(n) written in binary, and each run of 1's reduced in length by one digit}.

Offset 1, canonical program `A175059.P4518377172309833936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. -/
def A175059 (n : ℕ) : ℤ :=
  A175059.P4518377172309833936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. -/
def A175059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175381.P9481108831751205089

`record[A059268(n)*A113980(A004736(n+1))]`
-/

namespace A175381.P9481108831751205089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A113980 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175381.P9481108831751205089

noncomputable section

/-- A175381: A positive integer k is included if all positive integers that, when written in binary, occur as substrings in binary k divide k.

Offset 1, canonical program `A175381.P9481108831751205089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. -/
def A175381 (n : ℕ) : ℤ :=
  A175381.P9481108831751205089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. -/
def A175381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175623.P17158264777956238439

`(A037126(n+1)^A003056(n))%∑[A010054(n)]`
-/

namespace A175623.P17158264777956238439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A037126 (n + 1) : ℚ) ^ (A003056 n : ℤ))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175623.P17158264777956238439

noncomputable section

/-- A175623: Triangle read by rows: T(n,k) = prime(k)^(n-1) mod n, 1<=k<=n.

Offset 1, canonical program `A175623.P17158264777956238439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175623 (n : ℕ) : ℤ :=
  A175623.P17158264777956238439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175840.P14554144298249850676

`A036561(A061579(n))`
-/

namespace A175840.P14554144298249850676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A061579 n).toNat

end

end A175840.P14554144298249850676

noncomputable section

/-- A175840: Mirror image of Nicomachus' table: T(n,k) = 3^(n-k)*2^k for n>=0 and 0<=k<=n.

Offset 0, canonical program `A175840.P14554144298249850676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175840 (n : ℕ) : ℤ :=
  A175840.P14554144298249850676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176259.P12714678586709053484

`A104762(n+1)+A104763(n+1)-A131410(n+1)`
-/

namespace A176259.P12714678586709053484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104762 (n + 1) + (A104763 (n + 1) - A131410 (n + 1))

end

end A176259.P12714678586709053484

noncomputable section

/-- A176259: Triangle, T(n, k) = Fibonacci(k+1) + Fibonacci(n-k+1) - Fibonacci(n+1), read by rows.

Offset 0, canonical program `A176259.P12714678586709053484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176259 (n : ℕ) : ℤ :=
  A176259.P12714678586709053484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176270.P12132002411983152534

`2-A077028(n)`
-/

namespace A176270.P12132002411983152534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A077028 n

end

end A176270.P12132002411983152534

noncomputable section

/-- A176270: Triangle T(n,m) = 1 + m*(m-n) read by rows, 0 <= m <= n.

Offset 0, canonical program `A176270.P12132002411983152534`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176270 (n : ℕ) : ℤ :=
  A176270.P12132002411983152534.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176270.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176282.P9389801225300793779

`A068606(n)+1`
-/

namespace A176282.P9389801225300793779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068606 n + 1

end

end A176282.P9389801225300793779

noncomputable section

/-- A176282: Triangle T(n,k) = 1 + A000330(n) - A000330(k) - A000330(n-k), read by rows.

Offset 0, canonical program `A176282.P9389801225300793779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176282 (n : ℕ) : ℤ :=
  A176282.P9389801225300793779.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176627.P2547540132416364305

`A162466(A130154(n+1))`
-/

namespace A176627.P2547540132416364305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162466 (A130154 (n + 1)).toNat

end

end A176627.P2547540132416364305

noncomputable section

/-- A176627: Triangle T(n, k) = 12^(k*(n-k)), read by rows.

Offset 0, canonical program `A176627.P2547540132416364305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A176627 (n : ℕ) : ℤ :=
  A176627.P2547540132416364305.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A176627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176631.P214181763268040811

`A009966(A077028(n)-1)`
-/

namespace A176631.P214181763268040811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009966 (A077028 n - 1).toNat

end

end A176631.P214181763268040811

noncomputable section

/-- A176631: Triangle T(n, k) = 22^(k*(n-k)), read by rows.

Offset 0, canonical program `A176631.P214181763268040811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A176631 (n : ℕ) : ℤ :=
  A176631.P214181763268040811.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A176631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176639.P9327034718319805899

`A118180(n)*A118190(n)`
-/

namespace A176639.P9327034718319805899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118180 n * A118190 n

end

end A176639.P9327034718319805899

noncomputable section

/-- A176639: Triangle T(n, k) = 15^(k*(n-k)), read by rows.

Offset 0, canonical program `A176639.P9327034718319805899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A176639 (n : ℕ) : ℤ :=
  A176639.P9327034718319805899.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A176639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177852.P6076088614486311757

`A000040(n+1)-A177687(n+1)`
-/

namespace A177852.P6076088614486311757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A177687 (n + 1)

end

end A177852.P6076088614486311757

noncomputable section

/-- A177852: prime(n)-A177687(n).

Offset 1, canonical program `A177852.P6076088614486311757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A177687, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A177852 (n : ℕ) : ℤ :=
  A177852.P6076088614486311757.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A177687, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A177852.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178300.P17814830624515287913

`A046899(comp[∑[n-1]])`
-/

namespace A178300.P17814830624515287913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A178300.P17814830624515287913

noncomputable section

/-- A178300: Triangle T(n, k) = binomial(n+k-1, n) read by rows, 1 <= k <= n.

Offset 1, canonical program `A178300.P17814830624515287913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178300 (n : ℕ) : ℤ :=
  A178300.P17814830624515287913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178474.P4753274214124290616

`∏{p}[A166453(n), #]`
-/

namespace A178474.P4753274214124290616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A178474.P4753274214124290616

noncomputable section

/-- A178474: Triangle T(n,m) read by rows: the denominator of the coefficient [x^m] of the inverse Euler polynomial E^{-1}(n,x), 0<=m<=n.

Offset 0, canonical program `A178474.P4753274214124290616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A178474 (n : ℕ) : ℤ :=
  (A178474.P4753274214124290616.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A178474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178952.P16316959360273851306

`A003991(n+1)-∏{e}[A036561(n), A117571(#)]`
-/

namespace A178952.P16316959360273851306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A117571 (Nat.factorization (f1 n).natAbs p)

end

end A178952.P16316959360273851306

noncomputable section

/-- A178952: T(n,k)=Log base 2 of the number of nXk binary arrays with no element equal to the modulo 2 sum of its king-move neighbors.

Offset 1, canonical program `A178952.P16316959360273851306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A178952 (n : ℕ) : ℤ :=
  A178952.P16316959360273851306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A178952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179397.P13247336107451013883

`A084856(n+1)%A000040(n+1)`
-/

namespace A179397.P13247336107451013883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084856 (n + 1)) (A000040 (n + 1))

end

end A179397.P13247336107451013883

noncomputable section

/-- A179397: a(n) = prime(n)^2 mod prime(n-2).

Offset 3, canonical program `A179397.P13247336107451013883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179397 (n : ℕ) : ℤ :=
  A179397.P13247336107451013883.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180969.P1907241806408354921

`floor(A003986(n)/A059268(n))`
-/

namespace A180969.P1907241806408354921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003986 n : ℚ) / (A059268 n : ℚ)⌋

end

end A180969.P1907241806408354921

noncomputable section

/-- A180969: Array read by antidiagonals: a(k,n) = natural numbers each repeated 2^k times.

Offset 0, canonical program `A180969.P1907241806408354921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180969 (n : ℕ) : ℤ :=
  A180969.P1907241806408354921.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181172.P15475216583000469532

`p?[A023705(n+1)]`
-/

namespace A181172.P15475216583000469532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181172.P15475216583000469532

noncomputable section

/-- A181172: Primes whose base 4 representation does not contain a 0.

Offset 1, canonical program `A181172.P15475216583000469532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1344 terms. -/
def A181172 (n : ℕ) : ℤ :=
  A181172.P15475216583000469532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1344 terms. -/
def A181172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181741.P184464557172504553

`∩[A081118(n+1), A100724(n+1)]`
-/

namespace A181741.P184464557172504553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181741.P184464557172504553

noncomputable section

/-- A181741: Primes of the form 2^t-2^k-1, k>=1.

Offset 1, canonical program `A181741.P184464557172504553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. -/
def A181741 (n : ℕ) : ℤ :=
  (A181741.P184464557172504553.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. -/
def A181741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182187.P12216310265339320362

`xor(n, A151787(xor(n, n+2)))`
-/

namespace A182187.P12216310265339320362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A151787 (Nat.xor n (n + 2)))

end

end A182187.P12216310265339320362

noncomputable section

/-- A182187: a(n) is the least m >= n such that the Hamming distance D(n,m) = 2.

Offset 0, canonical program `A182187.P12216310265339320362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A182187 (n : ℕ) : ℤ :=
  A182187.P12216310265339320362.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A182187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182830.P11971300846047299382

`A182828(n+1)+A140303(n)`
-/

namespace A182830.P11971300846047299382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182828 (n + 1) + A140303 n

end

end A182830.P11971300846047299382

noncomputable section

/-- A182830: Array of the numbers (3*i+2)*3^j, i>=0, j>=0, read by antidiagonals.

Offset 1, canonical program `A182830.P11971300846047299382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182830 (n : ℕ) : ℤ :=
  A182830.P11971300846047299382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182986.P2625431067462217415

`A054541(n)+a(n-1)` with `a(0)=0`
-/

namespace A182986.P2625431067462217415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A054541 n + a (n - 1)

end

end A182986.P2625431067462217415

noncomputable section

/-- A182986: Zero together with the prime numbers (A000040).

Offset 1, canonical program `A182986.P2625431067462217415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182986 (n : ℕ) : ℤ :=
  A182986.P2625431067462217415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184035.P7211642228587388134

`A184034(n+1)+78`
-/

namespace A184035.P7211642228587388134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184034 (n + 1) + 78

end

end A184035.P7211642228587388134

noncomputable section

/-- A184035: 1/16 the number of (n+1) X 6 0..3 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184035.P7211642228587388134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184035 (n : ℕ) : ℤ :=
  A184035.P7211642228587388134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184487.P9769132787964689709

`A184486(n+1)+4*n+5`
-/

namespace A184487.P9769132787964689709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184486 (n + 1) + (4 * n + 5 : ℤ)

end

end A184487.P9769132787964689709

noncomputable section

/-- A184487: Upper s-Wythoff sequence, where s(n)=4n+1. Complement of A184486.

Offset 1, canonical program `A184487.P9769132787964689709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184487 (n : ℕ) : ℤ :=
  A184487.P9769132787964689709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185333.P14986518920725297879

`A082392(n)+A016116(n)`
-/

namespace A185333.P14986518920725297879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082392 n + A016116 n

end

end A185333.P14986518920725297879

noncomputable section

/-- A185333: Number of binary necklaces of n beads for which a cut exists producing a palindrome.

Offset 1, canonical program `A185333.P14986518920725297879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A185333 (n : ℕ) : ℤ :=
  A185333.P14986518920725297879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A185333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185738.P5339397896700539405

`A004736(n+1)+2*(A059268(n)-1)`
-/

namespace A185738.P5339397896700539405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + 2 * (A059268 n - 1)

end

end A185738.P5339397896700539405

noncomputable section

/-- A185738: Rectangular array T(n,k) = 2^n + k - 2, by antidiagonals.

Offset 1, canonical program `A185738.P5339397896700539405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185738 (n : ℕ) : ℤ :=
  A185738.P5339397896700539405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185784.P9635845519308953103

`A098358(n)*A133196(n+1)/3`
-/

namespace A185784.P9635845519308953103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098358 n * A133196 (n + 1) : ℚ) / 3

end

end A185784.P9635845519308953103

noncomputable section

/-- A185784: Accumulation array of A107985, by antidiagonals.

Offset 1, canonical program `A185784.P9635845519308953103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A185784 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A185784.P9635845519308953103.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A185784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185877.P3178648728310049988

`2*A049780(n)+1`
-/

namespace A185877.P3178648728310049988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049780 n + 1

end

end A185877.P3178648728310049988

noncomputable section

/-- A185877: Array T given by T(n,k) = k^2 +(2*n-3)*k -2*n +3, by antidiagonals.

Offset 1, canonical program `A185877.P3178648728310049988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185877 (n : ℕ) : ℤ :=
  A185877.P3178648728310049988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185905.P11562554649795205989

`∏{e}[A036561(n), C(#+4, 4)]`
-/

namespace A185905.P11562554649795205989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose (Nat.factorization (f1 n).natAbs p + 4) 4

end

end A185905.P11562554649795205989

noncomputable section

/-- A185905: Rectangular array binomial(k+3,4)*binomial(n+3,4), by antidiagonals.

Offset 1, canonical program `A185905.P11562554649795205989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A185905 (n : ℕ) : ℤ :=
  (A185905.P11562554649795205989.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A185905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185908.P15290961818141262910

`A002260(n+1)+val(A036561(n), 6)`
-/

namespace A185908.P15290961818141262910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (SequenceMachineLib.valuation (A036561 n).toNat 6 : ℤ)

end

end A185908.P15290961818141262910

noncomputable section

/-- A185908: Array: T(n,k) = n-1 + min{n,k}, by antidiagonals.

Offset 1, canonical program `A185908.P15290961818141262910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185908 (n : ℕ) : ℤ :=
  A185908.P15290961818141262910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185910.P2173537638597524682

`A133819(n+1)+A025581(n)`
-/

namespace A185910.P2173537638597524682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1) + A025581 n

end

end A185910.P2173537638597524682

noncomputable section

/-- A185910: Array: T(n,k) = n^2 + k - 1, by antidiagonals.

Offset 1, canonical program `A185910.P2173537638597524682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185910 (n : ℕ) : ℤ :=
  A185910.P2173537638597524682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187977.P12461082133786506641

`∪[A187973(n+1)-2, A187973(n+1)]`
-/

namespace A187977.P12461082133786506641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187973 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187977.P12461082133786506641

noncomputable section

/-- A187977: Positions of 0 in A187976; complement of A187978.

Offset 1, canonical program `A187977.P12461082133786506641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187977 (n : ℕ) : ℤ :=
  (A187977.P12461082133786506641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188078.P9875306825100740370

`filter[n+1, A188076(#)]`
-/

namespace A188078.P9875306825100740370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188076 (f1 j) = 1) n)

end

end A188078.P9875306825100740370

noncomputable section

/-- A188078: Positions of 1 in A188076; complement of A188077.

Offset 1, canonical program `A188078.P9875306825100740370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6602 terms. -/
def A188078 (n : ℕ) : ℤ :=
  (A188078.P9875306825100740370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6602 terms. -/
def A188078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188079.P8949217459454897257

`A188076(n+1-A188068(n+1))`
-/

namespace A188079.P8949217459454897257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 ((n + 1 : ℤ) - A188068 (n + 1)).toNat

end

end A188079.P8949217459454897257

noncomputable section

/-- A188079: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(3), k=6, [ ]=floor.

Offset 1, canonical program `A188079.P8949217459454897257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188079 (n : ℕ) : ℤ :=
  A188079.P8949217459454897257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188559.P6003239586972994998

`A188558(n+1)+A008861(n)`
-/

namespace A188559.P6003239586972994998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 1) + A008861 n

end

end A188559.P6003239586972994998

noncomputable section

/-- A188559: Number of 8 X n binary arrays without the pattern 0 1 diagonally, vertically, antidiagonally or horizontally.

Offset 1, canonical program `A188559.P6003239586972994998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188559 (n : ℕ) : ℤ :=
  A188559.P6003239586972994998.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189012.P6369404251198477735

`eq[0, A189011(n+1)]+1`
-/

namespace A189012.P6369404251198477735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189012.P6369404251198477735

noncomputable section

/-- A189012: Positions of 0 in A189011; complement of A189013.

Offset 1, canonical program `A189012.P6369404251198477735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189012 (n : ℕ) : ℤ :=
  (A189012.P6369404251198477735.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190425.P1676898405664856003

`C(2*n, n)*A046899(A007590(n))`
-/

namespace A190425.P1676898405664856003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A046899 (A007590 n).toNat

end

end A190425.P1676898405664856003

noncomputable section

/-- A190425: Number of one-sided prudent walks from (0,0) to (n,n), with floor(n/2)+n east steps, floor(n/2) west steps and n north steps.

Offset 0, canonical program `A190425.P1676898405664856003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A190425 (n : ℕ) : ℤ :=
  A190425.P1676898405664856003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A190425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191391.P4772639634849094179

`A001405(n+1)+A191389(n)-A001405(n)`
-/

namespace A191391.P4772639634849094179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A191389 n - A001405 n)

end

end A191391.P4772639634849094179

noncomputable section

/-- A191391: Number of horizontal segments in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0)-steps at positive heights; a horizontal segment is a maximal sequence of consecutive (1,0)-steps).

Offset 0, canonical program `A191391.P4772639634849094179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A191391 (n : ℕ) : ℤ :=
  A191391.P4772639634849094179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A191391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191904.P13641530380614696573

`1-A002260(n+1)*A077049(n+1)`
-/

namespace A191904.P13641530380614696573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002260 (n + 1) * A077049 (n + 1)

end

end A191904.P13641530380614696573

noncomputable section

/-- A191904: Square array read by antidiagonals up: T(n,k) = 1-k if k divides n, else 1.

Offset 1, canonical program `A191904.P13641530380614696573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191904 (n : ℕ) : ℤ :=
  A191904.P13641530380614696573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192396.P15425189205422478363

`floor(A009998(n)/2)`
-/

namespace A192396.P15425189205422478363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A009998 n : ℚ) / 2⌋

end

end A192396.P15425189205422478363

noncomputable section

/-- A192396: Square array T(n, k) = floor(((k+1)^n - (1+(-1)^k)/2)/2) read by antidiagonals.

Offset 0, canonical program `A192396.P15425189205422478363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A192396 (n : ℕ) : ℤ :=
  A192396.P15425189205422478363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A192396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193818.P1362525847201267007

`A130321(n)*A193815(n)`
-/

namespace A193818.P1362525847201267007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A193815 n

end

end A193818.P1362525847201267007

noncomputable section

/-- A193818: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x) = x^n + x^(n-1) + ... + x+1 and q(n,x)=(2x+1)^n.

Offset 0, canonical program `A193818.P1362525847201267007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193818 (n : ℕ) : ℤ :=
  A193818.P1362525847201267007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193862.P608042678390646429

`A059268(n)*A135278(n)`
-/

namespace A193862.P608042678390646429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A135278 n

end

end A193862.P608042678390646429

noncomputable section

/-- A193862: Mirror of the triangle A115068.

Offset 0, canonical program `A193862.P608042678390646429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193862 (n : ℕ) : ℤ :=
  A193862.P608042678390646429.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193922.P17539686961463381595

`A108035(n+1)-A104763(n+1)%A108035(n+1)`
-/

namespace A193922.P17539686961463381595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108035 (n + 1) - Int.tmod (A104763 (n + 1)) (A108035 (n + 1))

end

end A193922.P17539686961463381595

noncomputable section

/-- A193922: Mirror of the triangle A193921.

Offset 0, canonical program `A193922.P17539686961463381595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193922 (n : ℕ) : ℤ :=
  A193922.P17539686961463381595.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193974.P14269232743332111222

`A131783(n+1)+1`
-/

namespace A193974.P14269232743332111222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131783 (n + 1) + 1

end

end A193974.P14269232743332111222

noncomputable section

/-- A193974: Mirror of the triangle A193973.

Offset 0, canonical program `A193974.P14269232743332111222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193974 (n : ℕ) : ℤ :=
  A193974.P14269232743332111222.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194884.P9953674383290406264

`A007814(A129760(eq[4, A000120(n)]))`
-/

namespace A194884.P9953674383290406264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A129760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A194884.P9953674383290406264

noncomputable section

/-- A194884: Write n = C(i,4)+C(j,3)+C(k,2)+C(l,1) with i>j>k>l>=0; sequence gives k values.

Offset 0, canonical program `A194884.P9953674383290406264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A194884 (n : ℕ) : ℤ :=
  A194884.P9953674383290406264.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A194884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196347.P13658448710711999796

`A008279(n)*A094587(n)`
-/

namespace A196347.P13658448710711999796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A094587 n

end

end A196347.P13658448710711999796

noncomputable section

/-- A196347: Triangle T(n, k) read by rows, T(n, k) = n!*binomial(n, k).

Offset 0, canonical program `A196347.P13658448710711999796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1913 terms. -/
def A196347 (n : ℕ) : ℤ :=
  A196347.P13658448710711999796.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1913 terms. -/
def A196347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198321.P15651192103710140511

`A193815(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A198321.P15651192103710140511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193815 (n - 1) - a (n - 1)

end

end A198321.P15651192103710140511

noncomputable section

/-- A198321: Triangle read by rows: T(n, k) = binomial(n, k-1) for 1 <= k <= n, and T(n, 0) = 0^n.

Offset 0, canonical program `A198321.P15651192103710140511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A198321 (n : ℕ) : ℤ :=
  A198321.P15651192103710140511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A198321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199512.P3979213051773754842

`A327035(A131432(n))`
-/

namespace A199512.P3979213051773754842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (A131432 n).toNat

end

end A199512.P3979213051773754842

noncomputable section

/-- A199512: Triangle T(n,k) = Fibonacci(n+k+1), related to A000045 (Fibonacci numbers).

Offset 0, canonical program `A199512.P3979213051773754842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199512 (n : ℕ) : ℤ :=
  A199512.P3979213051773754842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199512.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A200264.P706216200826901243

`∑[A200263(n+1)]`
-/

namespace A200264.P706216200826901243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200264.P706216200826901243

noncomputable section

/-- A200264: Partial sums of A200263.

Offset 1, canonical program `A200264.P706216200826901243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200264 (n : ℕ) : ℤ :=
  A200264.P706216200826901243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202069.P6160588622101873828

`A126869(A008619(n+1))+A126869(A008619(n)+1)`
-/

namespace A202069.P6160588622101873828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A008619 (n + 1)).toNat + A126869 (A008619 n + 1).toNat

end

end A202069.P6160588622101873828

noncomputable section

/-- A202069: Number of arrays of n+2 integers in -1..1 with sum zero and the sum of every adjacent pair being odd.

Offset 1, canonical program `A202069.P6160588622101873828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A202069 (n : ℕ) : ℤ :=
  A202069.P6160588622101873828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A202069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202149.P16063485969264472822

`(2*A059268(n))%A003057(n+2)`
-/

namespace A202149.P16063485969264472822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A059268 n) (A003057 (n + 2))

end

end A202149.P16063485969264472822

noncomputable section

/-- A202149: Triangle read by rows: T(n, k) = mod(2^k, n), where 1 <= k < n.

Offset 2, canonical program `A202149.P16063485969264472822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A202149 (n : ℕ) : ℤ :=
  A202149.P16063485969264472822.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A202149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202736.P17174659494218386331

`2^(n+1)-A126869(n+1)`
-/

namespace A202736.P17174659494218386331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A126869 (n + 1)

end

end A202736.P17174659494218386331

noncomputable section

/-- A202736: Number of n X 2 0..1 arrays with row sums equal and column sums unequal to adjacent columns.

Offset 1, canonical program `A202736.P17174659494218386331`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126869, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202736 (n : ℕ) : ℤ :=
  A202736.P17174659494218386331.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126869, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202736.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A204118.P4756302848917804723

`gcd(A037126(n+1), A068344(n))`
-/

namespace A204118.P4756302848917804723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037126 (n + 1)) (A068344 n)

end

end A204118.P4756302848917804723

noncomputable section

/-- A204118: Symmetric matrix based on f(i,j) = gcd(prime(i), prime(j)), by antidiagonals.

Offset 1, canonical program `A204118.P4756302848917804723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204118 (n : ℕ) : ℤ :=
  (A204118.P4756302848917804723.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204120.P14860807296414860623

`gcd(A065091(A123229(n+1)), A114327(n))`
-/

namespace A204120.P14860807296414860623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065091 (A123229 (n + 1)).toNat) (A114327 n)

end

end A204120.P14860807296414860623

noncomputable section

/-- A204120: Symmetric matrix based on f(i,j) = gcd(prime(i+1),prime(j+1)), by antidiagonals.

Offset 1, canonical program `A204120.P14860807296414860623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204120 (n : ℕ) : ℤ :=
  (A204120.P14860807296414860623.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204120.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A204127.P2405799435137849911

`gcd(A068344(n), A193588(n))`
-/

namespace A204127.P2405799435137849911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068344 n) (A193588 n)

end

end A204127.P2405799435137849911

noncomputable section

/-- A204127: Symmetric matrix based on f(i,j)=(F(i+1) if i=j and 1 otherwise), where F=A000045 (Fibonacci numbers), by antidiagonals.

Offset 1, canonical program `A204127.P2405799435137849911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204127 (n : ℕ) : ℤ :=
  (A204127.P2405799435137849911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204133.P15490279526159944465

`A059268(n*A003982(n))`
-/

namespace A204133.P15490279526159944465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 ((n : ℤ) * A003982 n).toNat

end

end A204133.P15490279526159944465

noncomputable section

/-- A204133: Symmetric matrix based on f(i,j)=(2^(i-1) if i=j and 1 otherwise), by antidiagonals.

Offset 1, canonical program `A204133.P15490279526159944465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204133 (n : ℕ) : ℤ :=
  A204133.P15490279526159944465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204242.P6714751862581985513

`A000225(A204179(n+1))`
-/

namespace A204242.P6714751862581985513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A204179 (n + 1)).toNat

end

end A204242.P6714751862581985513

noncomputable section

/-- A204242: Infinite symmetric matrix given by f(i,1)=1, f(1,j)=1, f(i,i)=2^i-1 and f(i,j)=0 otherwise, read by antidiagonals.

Offset 1, canonical program `A204242.P6714751862581985513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204242 (n : ℕ) : ℤ :=
  A204242.P6714751862581985513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204244.P1349484768882354249

`A204179(n+1)!*A204177(n+1)`
-/

namespace A204244.P1349484768882354249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A204179 (n + 1)).toNat : ℤ) * A204177 (n + 1)

end

end A204244.P1349484768882354249

noncomputable section

/-- A204244: Symmetric matrix given by f(i,1)=1, f(1,j)=1, f(i,i)=i! and f(i,j)=0 otherwise.

Offset 1, canonical program `A204244.P1349484768882354249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9660 terms. -/
def A204244 (n : ℕ) : ℤ :=
  A204244.P1349484768882354249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9660 terms. -/
def A204244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204250.P17821355249436488297

`A173395(n+1)-3`
-/

namespace A204250.P17821355249436488297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173395 (n + 1) - 3

end

end A204250.P17821355249436488297

noncomputable section

/-- A204250: Symmetric matrix read by antidiagonals given by T(i,j)=i*j+i+j-2.

Offset 1, canonical program `A204250.P17821355249436488297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204250 (n : ℕ) : ℤ :=
  A204250.P17821355249436488297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204257.P1593210157951859049

`(4*(3*n-A114327(n)))%3+1`
-/

namespace A204257.P1593210157951859049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * ((3 * n : ℤ) - A114327 n)) 3 + 1

end

end A204257.P1593210157951859049

noncomputable section

/-- A204257: Matrix given by f(i,j)=1+[(i+2j) mod 3], by antidiagonals.

Offset 1, canonical program `A204257.P1593210157951859049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204257 (n : ℕ) : ℤ :=
  A204257.P1593210157951859049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204425.P489075890536107836

`C(2, A204423(n+1)²)`
-/

namespace A204425.P489075890536107836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A204423 (n + 1) ^ 2).toNat

end

end A204425.P489075890536107836

noncomputable section

/-- A204425: Infinite matrix: f(i,j)=(2i+j+1 mod 3), by antidiagonals.

Offset 1, canonical program `A204425.P489075890536107836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204425 (n : ℕ) : ℤ :=
  (A204425.P489075890536107836.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204431.P11334915160070456647

`2-A204267(n+1)`
-/

namespace A204431.P11334915160070456647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A204267 (n + 1)

end

end A204431.P11334915160070456647

noncomputable section

/-- A204431: Symmetric matrix: f(i,j)=(2*(i+j)+1 mod 3), by antidiagonals.

Offset 1, canonical program `A204431.P11334915160070456647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204431 (n : ℕ) : ℤ :=
  A204431.P11334915160070456647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204890.P9731393522808832182

`A065091(A002024(n+1))-A037126(n+1)`
-/

namespace A204890.P9731393522808832182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A002024 (n + 1)).toNat - A037126 (n + 1)

end

end A204890.P9731393522808832182

noncomputable section

/-- A204890: Ordered differences of primes.

Offset 1, canonical program `A204890.P9731393522808832182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204890 (n : ℕ) : ℤ :=
  A204890.P9731393522808832182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204914.P5175333267193367443

`A065091(A002024(n+1))²-A037126(n+1)²`
-/

namespace A204914.P5175333267193367443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A002024 (n + 1)).toNat ^ 2 - A037126 (n + 1) ^ 2

end

end A204914.P5175333267193367443

noncomputable section

/-- A204914: Ordered differences of squared primes.

Offset 1, canonical program `A204914.P5175333267193367443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204914 (n : ℕ) : ℤ :=
  A204914.P5175333267193367443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204914.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A205838.P10030448835299135618

`A002260(A205556(n+1))`
-/

namespace A205838.P10030448835299135618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205556 (n + 1)).toNat

end

end A205838.P10030448835299135618

noncomputable section

/-- A205838: The least number j such that 2 divides s(k)-s(j), where k(n)=A205720(n).

Offset 1, canonical program `A205838.P10030448835299135618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6275 terms. -/
def A205838 (n : ℕ) : ℤ :=
  A205838.P10030448835299135618.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6275 terms. -/
def A205838.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A207039.P8427512328363717654

`p?[n*A178226(n)]`
-/

namespace A207039.P8427512328363717654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A178226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207039.P8427512328363717654

noncomputable section

/-- A207039: Primes whose binary expansion is not palindromic.

Offset 1, canonical program `A207039.P8427512328363717654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6489 terms. -/
def A207039 (n : ℕ) : ℤ :=
  A207039.P8427512328363717654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6489 terms. -/
def A207039.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A207676.P1860184903875247083

`A207328(2*∑[and(n, -n)²]+n)/2`
-/

namespace A207676.P1860184903875247083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207328 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat : ℚ) / 2

end

end A207676.P1860184903875247083

noncomputable section

/-- A207676: Nonlinearities of 3-variable Boolean functions ordered lexicographically.

Offset 0, canonical program `A207676.P1860184903875247083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A207676 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207676.P1860184903875247083.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A207676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209304.P6160491928506155217

`A131413(n)+A114327(n)`
-/

namespace A209304.P6160491928506155217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131413 n + A114327 n

end

end A209304.P6160491928506155217

noncomputable section

/-- A209304: Table T(n,k)=n+4*k-4 n, k > 0, read by antidiagonals.

Offset 1, canonical program `A209304.P6160491928506155217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209304 (n : ℕ) : ℤ :=
  A209304.P6160491928506155217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209309.P9333809845315119633

`lt[A185027(n+1), A185027(A185027(n+1))]+1`
-/

namespace A209309.P9333809845315119633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185027 (A185027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A209309.P9333809845315119633

noncomputable section

/-- A209309: Numbers whose sum of triangular divisors is also triangular and greater than 1.

Offset 1, canonical program `A209309.P9333809845315119633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 591 terms. -/
def A209309 (n : ℕ) : ℤ :=
  (A209309.P9333809845315119633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 591 terms. -/
def A209309.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A210535.P1061241870078406260

`A004736(A185180(n+1))`
-/

namespace A210535.P1061241870078406260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A185180 (n + 1)).toNat

end

end A210535.P1061241870078406260

noncomputable section

/-- A210535: Second inverse function (numbers of columns) for pairing function A209293.

Offset 1, canonical program `A210535.P1061241870078406260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A210535 (n : ℕ) : ℤ :=
  A210535.P1061241870078406260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A210535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210874.P5919570536090111252

`A141169(n)+A004736(n+1)*A193588(n)`
-/

namespace A210874.P5919570536090111252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A004736 (n + 1) * A193588 n

end

end A210874.P5919570536090111252

noncomputable section

/-- A210874: Triangular array U(n,k) of coefficients of polynomials defined in Comments.

Offset 1, canonical program `A210874.P5919570536090111252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210874 (n : ℕ) : ℤ :=
  A210874.P5919570536090111252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213061.P16782414876567708964

`A121314(n)%2`
-/

namespace A213061.P16782414876567708964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121314 n) 2

end

end A213061.P16782414876567708964

noncomputable section

/-- A213061: Triangle of Stirling numbers of second kind (A048993) read mod 2.

Offset 0, canonical program `A213061.P16782414876567708964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213061 (n : ℕ) : ℤ :=
  A213061.P16782414876567708964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213500.P10415559373979276509

`A104633(n+1)+A000292(A025581(n))`
-/

namespace A213500.P10415559373979276509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) + A000292 (A025581 n).toNat

end

end A213500.P10415559373979276509

noncomputable section

/-- A213500: Rectangular array T(n,k): (row n) = b**c, where b(h) = h, c(h) = h + n - 1, n >= 1, h >= 1, and ** = convolution.

Offset 1, canonical program `A213500.P10415559373979276509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213500 (n : ℕ) : ℤ :=
  A213500.P10415559373979276509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213579.P12720852438304577649

`A104798(n+2)+A001924(A025581(n))`
-/

namespace A213579.P12720852438304577649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104798 (n + 2) + A001924 (A025581 n).toNat

end

end A213579.P12720852438304577649

noncomputable section

/-- A213579: Rectangular array: (row n) = b**c, where b(h) = F(h), c(h) = n-1+h, where F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213579.P12720852438304577649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213579 (n : ℕ) : ℤ :=
  A213579.P12720852438304577649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214991.P16550276971825713449

`n+1+A214990(n+1)`
-/

namespace A214991.P16550276971825713449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A214990 (n + 1)

end

end A214991.P16550276971825713449

noncomputable section

/-- A214991: Second nearest integer to n*(1+golden ratio).

Offset 1, canonical program `A214991.P16550276971825713449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214990, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214991 (n : ℕ) : ℤ :=
  A214991.P16550276971825713449.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214990, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A215618.P12036033928180081081

`∩[A061910(n+1), A067251(n+1)]`
-/

namespace A215618.P12036033928180081081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215618.P12036033928180081081

noncomputable section

/-- A215618: Sum of digits of n^2 is a square.

Offset 1, canonical program `A215618.P12036033928180081081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2215 terms. -/
def A215618 (n : ℕ) : ℤ :=
  (A215618.P12036033928180081081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2215 terms. -/
def A215618.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A216195.P5070679371522791591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216195 (n : ℕ) : ℤ :=
  A216195.P5070679371522791591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216195.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216782.P2156386028592827543

`lt[A001511(n+1), A286357(n+1)]+1`
-/

namespace A216782.P2156386028592827543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A216782.P2156386028592827543

noncomputable section

/-- A216782: Numbers such that numerator(sigma(n)/n) is even and denominator(sigma(n)/n) is odd.

Offset 1, canonical program `A216782.P2156386028592827543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. -/
def A216782 (n : ℕ) : ℤ :=
  (A216782.P2156386028592827543.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. -/
def A216782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218890.P1523300545513830515

`A038722(n+1)-A114327(n*A204269(n+1))`
-/

namespace A218890.P1523300545513830515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) - A114327 ((n : ℤ) * A204269 (n + 1)).toNat

end

end A218890.P1523300545513830515

noncomputable section

/-- A218890: T(n,k) = ((n + k - 1)*(n + k - 2) - (-1 + (-1)^floor((n + k)/2))*n + (1 +(-1)^floor((n + k)/2))*k)/2; n , k > 0, read by antidiagonals.

Offset 1, canonical program `A218890.P1523300545513830515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A218890 (n : ℕ) : ℤ :=
  A218890.P1523300545513830515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A218890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220417.P2922590385222912093

`A051128(n+1)-A051128(A038722(n+1))`
-/

namespace A220417.P2922590385222912093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A051128 (A038722 (n + 1)).toNat

end

end A220417.P2922590385222912093

noncomputable section

/-- A220417: Table T(n,k) = k^n - n^k, n, k > 0, read by descending antidiagonals.

Offset 1, canonical program `A220417.P2922590385222912093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2926 terms. -/
def A220417 (n : ℕ) : ℤ :=
  A220417.P2922590385222912093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2926 terms. -/
def A220417.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A221217.P9319195554370161815

`A211394(n+1)+A114327(n)`
-/

namespace A221217.P9319195554370161815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (n + 1) + A114327 n

end

end A221217.P9319195554370161815

noncomputable section

/-- A221217: T(n,k) = ((n+k)^2-2*n+3-(n+k-1)*(1+2*(-1)^(n+k)))/2; n , k > 0, read by antidiagonals.

Offset 1, canonical program `A221217.P9319195554370161815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221217 (n : ℕ) : ℤ :=
  A221217.P9319195554370161815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224339.P7859266464313089744

`A113184((n+1)²)`
-/

namespace A224339.P7859266464313089744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 ((n + 1) ^ 2)

end

end A224339.P7859266464313089744

noncomputable section

/-- A224339: Absolute difference between sum of odd divisors of n^2 and sum of even divisors of n^2.

Offset 1, canonical program `A224339.P7859266464313089744`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113184, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224339 (n : ℕ) : ℤ :=
  A224339.P7859266464313089744.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113184, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224339.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226793.P4329612245993834048

`A055235(comp[A185869(n+1)])/2`
-/

namespace A226793.P4329612245993834048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185869 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055235 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2

end

end A226793.P4329612245993834048

noncomputable section

/-- A226793: Numbers of the form (3^j + 9^k)/2, for j and k >= 0.

Offset 1, canonical program `A226793.P4329612245993834048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7515 terms. -/
def A226793 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A226793.P4329612245993834048.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7515 terms. -/
def A226793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227359.P5996464961392060094

`A055938(record[A234017(A010061(n+3))])`
-/

namespace A227359.P5996464961392060094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234017 (A010061 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227359.P5996464961392060094

noncomputable section

/-- A227359: Natural numbers that are not of the form (k +- sum of binary digits of k) for any k.

Offset 1, canonical program `A227359.P5996464961392060094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A227359 (n : ℕ) : ℤ :=
  A227359.P5996464961392060094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A227359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227733.P5960596068960565775

`A062731(n+1)²-A000203(n+1)²`
-/

namespace A227733.P5960596068960565775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (n + 1) ^ 2 - A000203 (n + 1) ^ 2

end

end A227733.P5960596068960565775

noncomputable section

/-- A227733: a(n) = sigma(2*n)^2 - sigma(n)^2.

Offset 1, canonical program `A227733.P5960596068960565775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227733 (n : ℕ) : ℤ :=
  A227733.P5960596068960565775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227741.P7881585298706157334

`A173318(A227737(n+1))-A227740(n+1)`
-/

namespace A227741.P7881585298706157334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173318 (A227737 (n + 1)).toNat - A227740 (n + 1)

end

end A227741.P7881585298706157334

noncomputable section

/-- A227741: Simple self-inverse permutation of natural numbers: List each block of A005811(n) numbers from A173318(n-1)+1 to A173318(n) in reverse order.

Offset 1, canonical program `A227741.P7881585298706157334`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, A227737, A227740, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227741 (n : ℕ) : ℤ :=
  A227741.P7881585298706157334.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, A227737, A227740, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227741.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227833.P120039270851023164

`A127427(n)-(A343754(n)+n)`
-/

namespace A227833.P120039270851023164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127427 n - (A343754 n + (n : ℤ))

end

end A227833.P120039270851023164

noncomputable section

/-- A227833: 3-adic valuation of A005130(n).

Offset 0, canonical program `A227833.P120039270851023164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227833 (n : ℕ) : ℤ :=
  A227833.P120039270851023164.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229032.P11564253743554821141

`A059268(n)²*A202064(n)`
-/

namespace A229032.P11564253743554821141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A202064 n

end

end A229032.P11564253743554821141

noncomputable section

/-- A229032: Triangle T(n,k), 0 <= k <= n, read by rows, defined by T(n,k) = 4^k * C(n+1,2*k+1).

Offset 0, canonical program `A229032.P11564253743554821141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229032 (n : ℕ) : ℤ :=
  A229032.P11564253743554821141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229738.P13946067505961379834

`A138418(n+1)+A030078(n+1)`
-/

namespace A229738.P13946067505961379834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138418 (n + 1) + A030078 (n + 1)

end

end A229738.P13946067505961379834

noncomputable section

/-- A229738: a(n) = p^2*(p^2+2*p-1)/2, where p = prime(n).

Offset 1, canonical program `A229738.P13946067505961379834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229738 (n : ℕ) : ℤ :=
  A229738.P13946067505961379834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229738.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A230287.P5806098726498376882

`Δ[A230286(n+1)]`
-/

namespace A230287.P5806098726498376882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230287.P5806098726498376882

noncomputable section

/-- A230287: First differences of A016052/3 (= A230286).

Offset 1, canonical program `A230287.P5806098726498376882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A230287 (n : ℕ) : ℤ :=
  A230287.P5806098726498376882.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A230287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230445.P3640126987684722903

`A036561(n)-1`
-/

namespace A230445.P3640126987684722903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n - 1

end

end A230445.P3640126987684722903

noncomputable section

/-- A230445: Triangle read by rows: T(n,m) = 3^m*2^(n-m)-1, the number of neighbors in an n-dimensional cubic array.

Offset 0, canonical program `A230445.P3640126987684722903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230445 (n : ℕ) : ℤ :=
  A230445.P3640126987684722903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230847.P8149811337675200087

`1+A054541(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A230847.P8149811337675200087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A054541 (n + 1)

end

end A230847.P8149811337675200087

noncomputable section

/-- A230847: a(n) = 1 + A054541(n).

Offset 1, canonical program `A230847.P8149811337675200087`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054541, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230847 (n : ℕ) : ℤ :=
  A230847.P8149811337675200087.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054541, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230850.P10627389898103224064

`A054541(gcd(n, ∑[xor(1, n+1)])+1)`
-/

namespace A230850.P10627389898103224064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A230850.P10627389898103224064

noncomputable section

/-- A230850: A054541 and A000012 interleaved.

Offset 1, canonical program `A230850.P10627389898103224064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230850 (n : ℕ) : ℤ :=
  A230850.P10627389898103224064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231642.P15730025807161680186

`A135278(n)%A002024(n+1)`
-/

namespace A231642.P15730025807161680186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135278 n) (A002024 (n + 1))

end

end A231642.P15730025807161680186

noncomputable section

/-- A231642: Triangle read by rows, t(n,k) = binomial(n,k) mod n, k <= n.

Offset 1, canonical program `A231642.P15730025807161680186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231642 (n : ℕ) : ℤ :=
  A231642.P15730025807161680186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232089.P2135721934487074394

`ceil(A059268(n)/2)`
-/

namespace A232089.P2135721934487074394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059268 n : ℚ) / 2⌉

end

end A232089.P2135721934487074394

noncomputable section

/-- A232089: Table read by rows, which consist of 1 followed by 2^k, 0 <= k < n ; n = 0,1,2,3,...

Offset 0, canonical program `A232089.P2135721934487074394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232089 (n : ℕ) : ℤ :=
  A232089.P2135721934487074394.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232535.P13150084583524894552

`A091044(n+1)+∑[A091042(n)-A091044(n+1)]`
-/

namespace A232535.P13150084583524894552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 n - A091044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091044 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232535.P13150084583524894552

noncomputable section

/-- A232535: Triangle T(n,k), 0 <= k <= n, read by rows defined by: T(n,k) = (binomial(2*n,2*k) + binomial(2*n+1,2*k))/2.

Offset 0, canonical program `A232535.P13150084583524894552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232535 (n : ℕ) : ℤ :=
  A232535.P13150084583524894552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233657.P8828505400267143915

`A006631(n+1)-(A230547(n)+A006630(n+1))`
-/

namespace A233657.P8828505400267143915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006631 (n + 1) - (A230547 n + A006630 (n + 1))

end

end A233657.P8828505400267143915

noncomputable section

/-- A233657: a(n) = 10 * binomial(3*n+10,n)/(3*n+10).

Offset 0, canonical program `A233657.P8828505400267143915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A233657 (n : ℕ) : ℤ :=
  A233657.P8828505400267143915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A233657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233757.P10164974297477766212

`(A140513(n)-1)*A059268(n)`
-/

namespace A233757.P10164974297477766212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140513 n - 1) * A059268 n

end

end A233757.P10164974297477766212

noncomputable section

/-- A233757: Triangle read by rows: T(n,k) = (2^n-1)*2^(k-1), for n >= 1 and 1<=k<=n.

Offset 1, canonical program `A233757.P10164974297477766212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233757 (n : ℕ) : ℤ :=
  A233757.P10164974297477766212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234037.P1447996896822888856

`eq[A228039(n), A254651(2*n)]`
-/

namespace A234037.P1447996896822888856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234037.P1447996896822888856

noncomputable section

/-- A234037: The union of odious numbers with evil squares and evil numbers with odious squares.

Offset 1, canonical program `A234037.P1447996896822888856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234037 (n : ℕ) : ℤ :=
  (A234037.P1447996896822888856.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234357.P1545735927363493511

`A051128(n+1)*A193588(n)`
-/

namespace A234357.P1545735927363493511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) * A193588 n

end

end A234357.P1545735927363493511

noncomputable section

/-- A234357: Array A(n,k) by ascending antidiagonals: A(n,k) = n^k * Fibonacci(k + 1) for n, k >= 1.

Offset 1, canonical program `A234357.P1545735927363493511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3718 terms. -/
def A234357 (n : ℕ) : ℤ :=
  A234357.P1545735927363493511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3718 terms. -/
def A234357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235331.P5537662126552978437

`sqrt(A235001(n+1))`
-/

namespace A235331.P5537662126552978437
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A235001 (n + 1) : ℝ)

end

end A235331.P5537662126552978437

noncomputable section

/-- A235331: Numbers with odious squares.

Offset 1, canonical program `A235331.P5537662126552978437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A235001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235331 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A235331.P5537662126552978437.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A235001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A235706.P10237978910986662273

`A094587(n)*A122431(n)`
-/

namespace A235706.P10237978910986662273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A122431 n

end

end A235706.P10237978910986662273

noncomputable section

/-- A235706: (I + A132440)^3: Coefficients for normalized generalized Laguerre polynomials n!*Lag(n, 3-n, -x).

Offset 0, canonical program `A235706.P10237978910986662273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A235706 (n : ℕ) : ℤ :=
  A235706.P10237978910986662273.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A235706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236538.P2402533533735596663

`A130124(n+1)+A001787(A003056(n))`
-/

namespace A236538.P2402533533735596663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130124 (n + 1) + A001787 (A003056 n).toNat

end

end A236538.P2402533533735596663

noncomputable section

/-- A236538: Triangle read by rows: T(n,k) = (n+1)*2^(n-2)+(k-1)*2^(n-1) for 1 <= k <= n.

Offset 1, canonical program `A236538.P2402533533735596663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236538 (n : ℕ) : ℤ :=
  A236538.P2402533533735596663.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236965.P8850457398995555532

`gcd(A130290(n+1), A138436(n+1))`
-/

namespace A236965.P8850457398995555532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130290 (n + 1)) (A138436 (n + 1))

end

end A236965.P8850457398995555532

noncomputable section

/-- A236965: Number of nonzero quartic residues modulo the n-th prime.

Offset 1, canonical program `A236965.P8850457398995555532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236965 (n : ℕ) : ℤ :=
  (A236965.P8850457398995555532.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237621.P1007943516580458413

`A109466(A028310(n))+A109466(A083920(n))`
-/

namespace A237621.P1007943516580458413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 (A028310 n).toNat + A109466 (A083920 n).toNat

end

end A237621.P1007943516580458413

noncomputable section

/-- A237621: Riordan array (1+x, x*(1-x)); inverse of Riordan array A237619.

Offset 0, canonical program `A237621.P1007943516580458413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237621 (n : ℕ) : ℤ :=
  A237621.P1007943516580458413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237881.P9527050307391810079

`A007814(A001043(n+1))`
-/

namespace A237881.P9527050307391810079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A001043 (n + 1)).toNat

end

end A237881.P9527050307391810079

noncomputable section

/-- A237881: a(n) = 2-adic valuation of prime(n)+prime(n+1).

Offset 1, canonical program `A237881.P9527050307391810079`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A237881 (n : ℕ) : ℤ :=
  A237881.P9527050307391810079.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A237881.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A238801.P9168742769461867770

`abs(A095704(n+1))`
-/

namespace A238801.P9168742769461867770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A095704 (n + 1)|

end

end A238801.P9168742769461867770

noncomputable section

/-- A238801: Triangle T(n,k), read by rows, given by T(n,k) = C(n+1, k+1)*(1-(k mod 2)).

Offset 0, canonical program `A238801.P9168742769461867770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238801 (n : ℕ) : ℤ :=
  A238801.P9168742769461867770.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239708.P6167177588203903518

`∩[A099628(n+1), A100724(n+1)]+1`
-/

namespace A239708.P6167177588203903518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A239708.P6167177588203903518

noncomputable section

/-- A239708: Numbers of the form m = 2^i + 2^j, where i > j >= 0, such that m - 1 is prime.

Offset 1, canonical program `A239708.P6167177588203903518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A239708 (n : ℕ) : ℤ :=
  (A239708.P6167177588203903518.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A239708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241151.P10347220583869706345

`∑[A097806(n)]`
-/

namespace A241151.P10347220583869706345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241151.P10347220583869706345

noncomputable section

/-- A241151: Number of distinct degrees in the partition graph G(n) defined at A241150.

Offset 2, canonical program `A241151.P10347220583869706345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241151 (n : ℕ) : ℤ :=
  A241151.P10347220583869706345.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241747.P2346565615404663618

`4*(A143218(n+1)+A094727(n+1))+1`
-/

namespace A241747.P2346565615404663618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A143218 (n + 1) + A094727 (n + 1)) + 1

end

end A241747.P2346565615404663618

noncomputable section

/-- A241747: Triangle read by rows: T(n,k) = (4*n+3)*(4*k+3).

Offset 0, canonical program `A241747.P2346565615404663618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241747 (n : ℕ) : ℤ :=
  A241747.P2346565615404663618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242287.P1452863974751054915

`A000217(A242286(n+1))`
-/

namespace A242287.P1452863974751054915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A242286 (n + 1)).toNat

end

end A242287.P1452863974751054915

noncomputable section

/-- A242287: Greedy-summable triangular numbers.

Offset 1, canonical program `A242287.P1452863974751054915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A242287 (n : ℕ) : ℤ :=
  A242287.P1452863974751054915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A242287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244509.P5969179364345339535

`2*A230325(n+1)`
-/

namespace A244509.P5969179364345339535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230325 (n + 1)

end

end A244509.P5969179364345339535

noncomputable section

/-- A244509: Order of GL_2(p), the general linear group over F_p, where p runs through the primes.

Offset 1, canonical program `A244509.P5969179364345339535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244509 (n : ℕ) : ℤ :=
  A244509.P5969179364345339535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244911.P2421789843677533910

`A057145(n+2)-A002262(n)`
-/

namespace A244911.P2421789843677533910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) - A002262 n

end

end A244911.P2421789843677533910

noncomputable section

/-- A244911: Table read by antidiagonals: T(n,k) = n*k + T(n-1,k) for n >=1, T(0,k) = 1.

Offset 0, canonical program `A244911.P2421789843677533910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244911 (n : ℕ) : ℤ :=
  A244911.P2421789843677533910.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245071.P969471397612048913

`∑[12-A054541(n+1)]`
-/

namespace A245071.P969471397612048913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 - A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245071.P969471397612048913

noncomputable section

/-- A245071: a(n) = 12n - prime(n).

Offset 1, canonical program `A245071.P969471397612048913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245071 (n : ℕ) : ℤ :=
  A245071.P969471397612048913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245194.P7929249344662917846

`Δ[A014081(abs(1-n))]`
-/

namespace A245194.P7929249344662917846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245194.P7929249344662917846

noncomputable section

/-- A245194: G.f.: Sum_{k>=0} t^3/((1+t)*(1+t^2)), where t=x^(2^k).

Offset 0, canonical program `A245194.P7929249344662917846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245194 (n : ℕ) : ℤ :=
  A245194.P7929249344662917846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245300.P14319373933891156578

`floor(A214661(n+1)/2)`
-/

namespace A245300.P14319373933891156578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A214661 (n + 1) : ℚ) / 2⌋

end

end A245300.P14319373933891156578

noncomputable section

/-- A245300: Triangle T(n,k) = (n+k)*(n+k+1)/2 + k, 0 <= k <= n, read by rows.

Offset 0, canonical program `A245300.P14319373933891156578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245300 (n : ℕ) : ℤ :=
  A245300.P14319373933891156578.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247936.P14440307049488458075

`A036561(A056942(n+1)%(n+1))`
-/

namespace A247936.P14440307049488458075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (Int.tmod (A056942 (n + 1)) (n + 1 : ℤ)).toNat

end

end A247936.P14440307049488458075

noncomputable section

/-- A247936: Riordan array ((1-2x)/(1-3x), 2x).

Offset 0, canonical program `A247936.P14440307049488458075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247936 (n : ℕ) : ℤ :=
  A247936.P14440307049488458075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249344.P15222801440580805703

`val(A004736(n+1), A037126(n+1))`
-/

namespace A249344.P15222801440580805703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004736 (n + 1)).toNat (A037126 (n + 1)).toNat

end

end A249344.P15222801440580805703

noncomputable section

/-- A249344: A(n,k) = exponent of the largest power of n-th prime which divides k, square array read by antidiagonals.

Offset 1, canonical program `A249344.P15222801440580805703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249344 (n : ℕ) : ℤ :=
  (A249344.P15222801440580805703.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249344.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A251750.P1137512469229179182

`A251749(n+1)-A104144(n)`
-/

namespace A251750.P1137512469229179182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251749 (n + 1) - A104144 n

end

end A251750.P1137512469229179182

noncomputable section

/-- A251750: 9-step Fibonacci sequence starting with 0,0,0,1,0,0,0,0,0.

Offset 0, canonical program `A251750.P1137512469229179182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251750 (n : ℕ) : ℤ :=
  A251750.P1137512469229179182.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253169.P3897809180562102722

`A063656(∑[n]*A010054(n+1)+n+1)`
-/

namespace A253169.P3897809180562102722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A010054 (n + 1) + (n + 1 : ℤ)).toNat

end

end A253169.P3897809180562102722

noncomputable section

/-- A253169: Smallest m such that A256188(m) = n.

Offset 1, canonical program `A253169.P3897809180562102722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A253169 (n : ℕ) : ℤ :=
  A253169.P3897809180562102722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A253169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253607.P6258215896697988721

`Δ[A253580(n)]`
-/

namespace A253607.P6258215896697988721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253607.P6258215896697988721

noncomputable section

/-- A253607: First differences of A253580, when the tree is seen as flattened list.

Offset 0, canonical program `A253607.P6258215896697988721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253607 (n : ℕ) : ℤ :=
  A253607.P6258215896697988721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254027.P726365621105400960

`A140303(n)-A059268(n)`
-/

namespace A254027.P726365621105400960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n - A059268 n

end

end A254027.P726365621105400960

noncomputable section

/-- A254027: Table T(n,k) = 3^n - 2^k read by antidiagonals.

Offset 0, canonical program `A254027.P726365621105400960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A254027 (n : ℕ) : ℤ :=
  A254027.P726365621105400960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A254027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255616.P5041881220753698554

`floor(sqrt(A009999(n)))`
-/

namespace A255616.P5041881220753698554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A009999 n)

end

end A255616.P5041881220753698554

noncomputable section

/-- A255616: Table read by antidiagonals, T(n,k) = floor(sqrt(k^n)), n >= 0, k >=1.

Offset 0, canonical program `A255616.P5041881220753698554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A255616 (n : ℕ) : ℤ :=
  A255616.P5041881220753698554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A255616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255645.P7683674713413729439

`∑[A134660(n)]`
-/

namespace A255645.P7683674713413729439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255645.P7683674713413729439

noncomputable section

/-- A255645: Partial sums of A134660.

Offset 0, canonical program `A255645.P7683674713413729439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255645 (n : ℕ) : ℤ :=
  A255645.P7683674713413729439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256095.P12103393017234258254

`gcd(A049780(n), A057944(n))`
-/

namespace A256095.P12103393017234258254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049780 n) (A057944 n)

end

end A256095.P12103393017234258254

noncomputable section

/-- A256095: Triangle of greatest common divisors of two triangular numbers (A000217).

Offset 0, canonical program `A256095.P12103393017234258254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256095 (n : ℕ) : ℤ :=
  (A256095.P12103393017234258254.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256309.P8235850906625870393

`A091773(n)-A000601(n)`
-/

namespace A256309.P8235850906625870393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091773 n - A000601 n

end

end A256309.P8235850906625870393

noncomputable section

/-- A256309: Number of partitions of 2n into exactly 5 parts.

Offset 0, canonical program `A256309.P8235850906625870393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256309 (n : ℕ) : ℤ :=
  A256309.P8235850906625870393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256497.P9840506865510281733

`A133820(n+1)+A000578(A003057(n+2))`
-/

namespace A256497.P9840506865510281733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133820 (n + 1) + A000578 (A003057 (n + 2)).toNat

end

end A256497.P9840506865510281733

noncomputable section

/-- A256497: Triangle read by rows, sums of 2 distinct nonzero cubes: T(n,k) = (n+1)^3+k^3, 1 <= k <= n.

Offset 1, canonical program `A256497.P9840506865510281733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256497 (n : ℕ) : ℤ :=
  A256497.P9840506865510281733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256992.P2364808251290263884

`A213714(n+1)+A234017(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256992.P2364808251290263884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (n + 1) + A234017 (n + 1)

end

end A256992.P2364808251290263884

noncomputable section

/-- A256992: Position of n in either of the complementary sequences, A005187 or A055938: a(n) = A213714(n) + A234017(n).

Offset 1, canonical program `A256992.P2364808251290263884`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256992 (n : ℕ) : ℤ :=
  A256992.P2364808251290263884.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257126.P1146843161386362051

`A055938(n+1)-A005187(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257126.P1146843161386362051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1) - A005187 (n + 1)

end

end A257126.P1146843161386362051

noncomputable section

/-- A257126: a(n) = A055938(n) - A005187(n).

Offset 1, canonical program `A257126.P1146843161386362051`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055938, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257126 (n : ℕ) : ℤ :=
  A257126.P1146843161386362051.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055938, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257126.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257507.P15201907181584584602

`A011371(A055938(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257507.P15201907181584584602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A055938 (n + 1)).toNat

end

end A257507.P15201907181584584602

noncomputable section

/-- A257507: Row 2 of A257264: a(n) = A011371(A055938(n)).

Offset 1, canonical program `A257507.P15201907181584584602`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055938, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257507 (n : ℕ) : ℤ :=
  A257507.P15201907181584584602.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055938, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257507.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257804.P12788468420975431066

`comp[A257803(n+1)]`
-/

namespace A257804.P12788468420975431066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257804.P12788468420975431066

noncomputable section

/-- A257804: Positions of even numbers in A233271, the infinite trunk of inverted binary beanstalk.

Offset 0, canonical program `A257804.P12788468420975431066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8434 terms. -/
def A257804 (n : ℕ) : ℤ :=
  (A257804.P12788468420975431066.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8434 terms. -/
def A257804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258025.P5324371803043111026

`lt[1, Δ[A054541(n+1)²]]`
-/

namespace A258025.P5324371803043111026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258025.P5324371803043111026

noncomputable section

/-- A258025: Numbers k such that prime(k+2) - 2*prime(k+1) + prime(k) > 0.

Offset 1, canonical program `A258025.P5324371803043111026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258025 (n : ℕ) : ℤ :=
  (A258025.P5324371803043111026.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258144.P1022446271885043442

`A026741(n)*A106181(n)+1`
-/

namespace A258144.P1022446271885043442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A106181 n + 1

end

end A258144.P1022446271885043442

noncomputable section

/-- A258144: Alternating row sums of A257241, Stifel's version of the arithmetical triangle.

Offset 1, canonical program `A258144.P1022446271885043442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A258144 (n : ℕ) : ℤ :=
  A258144.P1022446271885043442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A258144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258800.P2209109295431500077

`record[A104144(A005599(n))]`
-/

namespace A258800.P2209109295431500077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (A005599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258800.P2209109295431500077

noncomputable section

/-- A258800: The number of zeroless decimal numbers whose digital sum is n.

Offset 0, canonical program `A258800.P2209109295431500077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A258800 (n : ℕ) : ℤ :=
  A258800.P2209109295431500077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A258800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258993.P5933175710610269850

`C(A094727(n+1), A004736(n+1))`
-/

namespace A258993.P5933175710610269850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094727 (n + 1)).toNat (A004736 (n + 1)).toNat

end

end A258993.P5933175710610269850

noncomputable section

/-- A258993: Triangle read by rows: T(n,k) = binomial(n+k,n-k), k = 0..n-1.

Offset 1, canonical program `A258993.P5933175710610269850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258993 (n : ℕ) : ℤ :=
  (A258993.P5933175710610269850.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260109.P720565460012442485

`A124815(2*n+1)`
-/

namespace A260109.P720565460012442485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124815 (2 * n + 1)

end

end A260109.P720565460012442485

noncomputable section

/-- A260109: Expansion of f(x^3) * f(-x^3)^2 * psi(x)^2 / psi(-x) in powers of x where psi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A260109.P720565460012442485`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260109 (n : ℕ) : ℤ :=
  A260109.P720565460012442485.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260109.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260114.P13465454968350675607

`A124815(6*n+1)`
-/

namespace A260114.P13465454968350675607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124815 (6 * n + 1)

end

end A260114.P13465454968350675607

noncomputable section

/-- A260114: Expansion of f(x)^4 * phi(-x^3) / phi(-x) in powers of x where phi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A260114.P13465454968350675607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260114 (n : ℕ) : ℤ :=
  A260114.P13465454968350675607.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260114.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265113.P13699448009274336171

`p?[A077436(n+1)]`
-/

namespace A265113.P13699448009274336171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265113.P13699448009274336171

noncomputable section

/-- A265113: Primes p such that p and p^2 have the same number of 1's in their binary representations.

Offset 1, canonical program `A265113.P13699448009274336171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A265113 (n : ℕ) : ℤ :=
  A265113.P13699448009274336171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A265113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265129.P1641231358581526435

`abs(A114327(n)+2*(n+1))`
-/

namespace A265129.P1641231358581526435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114327 n + (2 * (n + 1) : ℤ)|

end

end A265129.P1641231358581526435

noncomputable section

/-- A265129: Triangle read by rows, formed as the sum of the two versions of the natural numbers filling an equilateral triangle.

Offset 1, canonical program `A265129.P1641231358581526435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265129 (n : ℕ) : ℤ :=
  A265129.P1641231358581526435.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265612.P15247188045133269342

`A003409(n+1)-A061557(n+1)`
-/

namespace A265612.P15247188045133269342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003409 (n + 1) - A061557 (n + 1)

end

end A265612.P15247188045133269342

noncomputable section

/-- A265612: a(n) = CatalanNumber(n+1)*n*(1+3*n)/(6+2*n).

Offset 0, canonical program `A265612.P15247188045133269342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A265612 (n : ℕ) : ℤ :=
  A265612.P15247188045133269342.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A265612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265848.P6844072925367765983

`A107430(A185180(n+1)-1)`
-/

namespace A265848.P6844072925367765983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 (A185180 (n + 1) - 1).toNat

end

end A265848.P6844072925367765983

noncomputable section

/-- A265848: Pascal's triangle, right and left halves interchanged.

Offset 0, canonical program `A265848.P6844072925367765983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A265848 (n : ℕ) : ℤ :=
  A265848.P6844072925367765983.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A265848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266001.P9707974125563261164

`∩[A023705(n+1), A032924(n+1)]`
-/

namespace A266001.P9707974125563261164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266001.P9707974125563261164

noncomputable section

/-- A266001: Numbers with no 0's in their base 3 and base 4 expansions.

Offset 1, canonical program `A266001.P9707974125563261164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A266001 (n : ℕ) : ℤ :=
  (A266001.P9707974125563261164.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A266001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266384.P18258297534978275243

`∑[A071043(n)]`
-/

namespace A266384.P18258297534978275243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266384.P18258297534978275243

noncomputable section

/-- A266384: Total number of OFF (white) cells after n iterations of the "Rule 22" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266384.P18258297534978275243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266384 (n : ℕ) : ℤ :=
  A266384.P18258297534978275243.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266384.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A266978.P11450421611937941305

`A376583(A037458(n+1))`
-/

namespace A266978.P11450421611937941305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376583 (A037458 (n + 1)).toNat

end

end A266978.P11450421611937941305

noncomputable section

/-- A266978: Triangle read by rows giving successive states of cellular automaton generated by "Rule 79" initiated with a single ON (black) cell.

Offset 0, canonical program `A266978.P11450421611937941305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266978 (n : ℕ) : ℤ :=
  A266978.P11450421611937941305.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267368.P9350065740926405642

`∑[A071051(n)]`
-/

namespace A267368.P9350065740926405642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267368.P9350065740926405642

noncomputable section

/-- A267368: Total number of ON (black) cells after n iterations of the "Rule 126" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267368.P9350065740926405642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267368 (n : ℕ) : ℤ :=
  A267368.P9350065740926405642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267445.P11359933755806335792

`A004277(n)+1-A071051(n)`
-/

namespace A267445.P11359933755806335792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (1 - A071051 n)

end

end A267445.P11359933755806335792

noncomputable section

/-- A267445: Number of ON (black) cells in the n-th iteration of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267445.P11359933755806335792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267445 (n : ℕ) : ℤ :=
  A267445.P11359933755806335792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267583.P8325400885467834765

`∑[A267582(n)]`
-/

namespace A267583.P8325400885467834765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267583.P8325400885467834765

noncomputable section

/-- A267583: Total number of ON (black) cells after n iterations of the "Rule 167" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267583.P8325400885467834765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267583 (n : ℕ) : ℤ :=
  A267583.P8325400885467834765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267849.P9616404114859344746

`(1-A049780(n)+n)*A008279(n)`
-/

namespace A267849.P9616404114859344746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A049780 n + (n : ℤ)) * A008279 n

end

end A267849.P9616404114859344746

noncomputable section

/-- A267849: Triangular array: T(n,k) is the 2-row creation rook number to place k rooks on a 3 x n board.

Offset 0, canonical program `A267849.P9616404114859344746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A267849 (n : ℕ) : ℤ :=
  A267849.P9616404114859344746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A267849.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A268221.P1002273436628734708

`A000292(A003057(n+2))*A181511(n+1)`
-/

namespace A268221.P1002273436628734708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A003057 (n + 2)).toNat * A181511 (n + 1)

end

end A268221.P1002273436628734708

noncomputable section

/-- A268221: Triangle read by rows: T(n,k) (n>=4, k=3..n-1) is the number of topologies t on n points having exactly k open sets such that t contains exactly one open set of size m for each m in {0,3,4,5,...,s,n} where s is the size of the largest proper open set in t.

Offset 4, canonical program `A268221.P1002273436628734708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A268221 (n : ℕ) : ℤ :=
  A268221.P1002273436628734708.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A268221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268415.P13580893866302977043

`A043726(n+1)/2`
-/

namespace A268415.P13580893866302977043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043726 (n + 1) : ℚ) / 2

end

end A268415.P13580893866302977043

noncomputable section

/-- A268415: Balanced odious numbers: numbers with an odd number of runs of 1's in their binary expansion.

Offset 1, canonical program `A268415.P13580893866302977043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268415 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268415.P13580893866302977043.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268415.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A270438.P3486021905368719773

`A011782(A014081(n))*A277561(n)`
-/

namespace A270438.P3486021905368719773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A014081 n).toNat * A277561 n

end

end A270438.P3486021905368719773

noncomputable section

/-- A270438: a(n) is the number of entries == 1 mod 4 in row n of Pascal's triangle.

Offset 0, canonical program `A270438.P3486021905368719773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270438 (n : ℕ) : ℤ :=
  A270438.P3486021905368719773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271668.P273675855261280975

`A094728(n+1)-A049780(n)`
-/

namespace A271668.P273675855261280975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (n + 1) - A049780 n

end

end A271668.P273675855261280975

noncomputable section

/-- A271668: Triangle read by rows. The first column is A000217(n+1). From the second row we apply - A002262(n) for the following terms of the row.

Offset 0, canonical program `A271668.P273675855261280975`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049780, A094728, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A271668 (n : ℕ) : ℤ :=
  A271668.P273675855261280975.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049780, A094728, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A271668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A271710.P8123047399099080066

`xor(A059268(n), A130321(n))`
-/

namespace A271710.P8123047399099080066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059268 n) (A130321 n)

end

end A271710.P8123047399099080066

noncomputable section

/-- A271710: Table T(n,k) = 2^n XOR 2^k read by antidiagonals, where XOR is the binary exclusive or operator.

Offset 0, canonical program `A271710.P8123047399099080066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271710 (n : ℕ) : ℤ :=
  A271710.P8123047399099080066.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271787.P16430295729200728671

`comp[n-A229062(n)]`
-/

namespace A271787.P16430295729200728671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A229062 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A271787.P16430295729200728671

noncomputable section

/-- A271787: Integers k that are the sum of two nonzero squares while k*(k+1) is not.

Offset 1, canonical program `A271787.P16430295729200728671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271787 (n : ℕ) : ℤ :=
  (A271787.P16430295729200728671.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272214.P17777000404027784812

`A104887(n+1)*A245093(n+1)`
-/

namespace A272214.P17777000404027784812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (n + 1) * A245093 (n + 1)

end

end A272214.P17777000404027784812

noncomputable section

/-- A272214: Square array read by antidiagonals upwards in which T(n,k) is the product of the n-th prime and the sum of the divisors of k, n >= 1, k >= 1.

Offset 1, canonical program `A272214.P17777000404027784812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. -/
def A272214 (n : ℕ) : ℤ :=
  A272214.P17777000404027784812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. -/
def A272214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272514.P2917555472459059865

`A258143(n+3)-A001405(n+3)`
-/

namespace A272514.P2917555472459059865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258143 (n + 3) - A001405 (n + 3)

end

end A272514.P2917555472459059865

noncomputable section

/-- A272514: Number of set partitions of [n] into two blocks with distinct sizes.

Offset 3, canonical program `A272514.P2917555472459059865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A272514 (n : ℕ) : ℤ :=
  A272514.P2917555472459059865.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A272514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273562.P16263863284680203859

`∑[A273561(n)]`
-/

namespace A273562.P16263863284680203859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273562.P16263863284680203859

noncomputable section

/-- A273562: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273562.P16263863284680203859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3378 terms. -/
def A273562 (n : ℕ) : ℤ :=
  A273562.P16263863284680203859.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3378 terms. -/
def A273562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273563.P9685023777793405849

`Δ[A273561(n)]`
-/

namespace A273563.P9685023777793405849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273563.P9685023777793405849

noncomputable section

/-- A273563: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273563.P9685023777793405849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3395 terms. -/
def A273563 (n : ℕ) : ℤ :=
  A273563.P9685023777793405849.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3395 terms. -/
def A273563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274824.P3690629462728526552

`A004736(n+1)*A245093(n+1)`
-/

namespace A274824.P3690629462728526552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A245093 (n + 1)

end

end A274824.P3690629462728526552

noncomputable section

/-- A274824: Triangle read by rows: T(n,k) = (n-k+1)*sigma(k), n>=1, 1<=k<=n.

Offset 1, canonical program `A274824.P3690629462728526552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274824 (n : ℕ) : ℤ :=
  A274824.P3690629462728526552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274824.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A275697.P6247169262184432070

`p?[p?[2*n+1]-A058263(n+1)]`
-/

namespace A275697.P6247169262184432070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - A058263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275697.P6247169262184432070

noncomputable section

/-- A275697: Primes p such that gcd(p-1, q-1) = q - p, where q is the next prime after p.

Offset 1, canonical program `A275697.P6247169262184432070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3977 terms. -/
def A275697 (n : ℕ) : ℤ :=
  A275697.P6247169262184432070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3977 terms. -/
def A275697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276390.P11821832504603089140

`A276391(A006257(n)+1)`
-/

namespace A276390.P11821832504603089140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A006257 n + 1).toNat

end

end A276390.P11821832504603089140

noncomputable section

/-- A276390: Bisection of A115716.

Offset 0, canonical program `A276390.P11821832504603089140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276390 (n : ℕ) : ℤ :=
  A276390.P11821832504603089140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277178.P15202113963426692843

`∑[record[A274707(n+1)]]`
-/

namespace A277178.P15202113963426692843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P15202113963426692843

noncomputable section

/-- A277178: a(n) = Sum_{k=0..n} k*binomial(2*k,k)/2.

Offset 0, canonical program `A277178.P15202113963426692843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A277178 (n : ℕ) : ℤ :=
  A277178.P15202113963426692843.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A277178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279340.P3137699239334451419

`A055938(n+2)-A055938(n+1)`
-/

namespace A279340.P3137699239334451419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 2) - A055938 (n + 1)

end

end A279340.P3137699239334451419

noncomputable section

/-- A279340: First differences of A055938.

Offset 1, canonical program `A279340.P3137699239334451419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055938, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279340 (n : ℕ) : ℤ :=
  A279340.P3137699239334451419.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055938, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279353.P12583084604223118015

`xor(A055938(n+1), A055938(n+2))`
-/

namespace A279353.P12583084604223118015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055938 (n + 1)) (A055938 (n + 2))

end

end A279353.P12583084604223118015

noncomputable section

/-- A279353: a(n) = A055938(n+1) XOR A055938(n).

Offset 1, canonical program `A279353.P12583084604223118015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A279353 (n : ℕ) : ℤ :=
  A279353.P12583084604223118015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A279353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280073.P7299106028929026118

`A025581(lt[n, A051173(n+1)])`
-/

namespace A280073.P7299106028929026118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A280073.P7299106028929026118

noncomputable section

/-- A280073: Numerator of Farey fractions sorted according to increasing k, with k = numerator + denominator. Fractions with same k are sorted in order of increasing denominator.

Offset 1, canonical program `A280073.P7299106028929026118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A280073 (n : ℕ) : ℤ :=
  A280073.P7299106028929026118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A280073.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A280737.P4532675294742488203`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280737 (n : ℕ) : ℤ :=
  A280737.P4532675294742488203.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280737.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281379.P7269018797134553829

`lt[A178226(A003188(n)), 1]`
-/

namespace A281379.P7269018797134553829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A003188 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A281379.P7269018797134553829

noncomputable section

/-- A281379: Numbers which are palindromic in their binary reflected Gray code representation.

Offset 1, canonical program `A281379.P7269018797134553829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A281379 (n : ℕ) : ℤ :=
  (A281379.P7269018797134553829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A281379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281385.P9241428565788523415

`A100345(n)-A143844(n)`
-/

namespace A281385.P9241428565788523415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n - A143844 n

end

end A281385.P9241428565788523415

noncomputable section

/-- A281385: Triangular array T(n, k) = n^2 + n*k - k^2.

Offset 0, canonical program `A281385.P9241428565788523415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281385 (n : ℕ) : ℤ :=
  A281385.P9241428565788523415.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281902.P11836732846535714631

`eq[1, char[A049780(n)+n]]`
-/

namespace A281902.P11836732846535714631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 n + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281902.P11836732846535714631

noncomputable section

/-- A281902: Numbers n which have the form n = k^2 - k + (i^2-i)/2 + 2*k*i, k>=1, i>=0.

Offset 1, canonical program `A281902.P11836732846535714631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4121 terms. -/
def A281902 (n : ℕ) : ℤ :=
  (A281902.P11836732846535714631.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4121 terms. -/
def A281902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281944.P7909452327264810087

`A037960(A002260(n+1))*A135278(n)`
-/

namespace A281944.P7909452327264810087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037960 (A002260 (n + 1)).toNat * A135278 n

end

end A281944.P7909452327264810087

noncomputable section

/-- A281944: Triangle read by rows: T(n,k) (n>=1, 3<=k<=n+2) is the number of k-sequences of balls colored with n colors such that exactly two balls are of a color seen previously in the sequence.

Offset 1, canonical program `A281944.P7909452327264810087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. -/
def A281944 (n : ℕ) : ℤ :=
  A281944.P7909452327264810087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. -/
def A281944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284031.P9234368606975242882

`A283909(n+1)/2`
-/

namespace A284031.P9234368606975242882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283909 (n + 1) : ℚ) / 2

end

end A284031.P9234368606975242882

noncomputable section

/-- A284031: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A284031.P9234368606975242882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A284031 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A284031.P9234368606975242882.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A284031.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A284131.P15303166683764381892

`A284115(A185871(n+1))`
-/

namespace A284131.P15303166683764381892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284115 (A185871 (n + 1)).toNat

end

end A284131.P15303166683764381892

noncomputable section

/-- A284131: Hosoya triangle of Morgan Voyce type, read by rows.

Offset 1, canonical program `A284131.P15303166683764381892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A284131 (n : ℕ) : ℤ :=
  A284131.P15303166683764381892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A284131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285898.P6248290526350817964

`val(A077320(A049777(n+1)), A077320(n+1))`
-/

namespace A285898.P6248290526350817964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077320 (A049777 (n + 1)).toNat).toNat (A077320 (n + 1)).toNat

end

end A285898.P6248290526350817964

noncomputable section

/-- A285898: Triangle read by row: T(n,k) = number of partitions of n into exactly k consecutive parts (1 <= k <= n).

Offset 1, canonical program `A285898.P6248290526350817964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A285898 (n : ℕ) : ℤ :=
  (A285898.P6248290526350817964.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A285898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285952.P3731534810684257932

`record[(n+1)*A254377(n)]%2`
-/

namespace A285952.P3731534810684257932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A254377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A285952.P3731534810684257932

noncomputable section

/-- A285952: {0->1, 1->10}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285952.P3731534810684257932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285952 (n : ℕ) : ℤ :=
  A285952.P3731534810684257932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285952.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A286992.P3935319046932940823

`A286803(n+1)+A159684(n)`
-/

namespace A286992.P3935319046932940823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286803 (n + 1) + A159684 n

end

end A286992.P3935319046932940823

noncomputable section

/-- A286992: Positions of 1 in A286990; complement of A286991.

Offset 1, canonical program `A286992.P3935319046932940823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286992 (n : ℕ) : ℤ :=
  A286992.P3935319046932940823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287326.P2171539883149157368

`3-2*A176625(n)`
-/

namespace A287326.P2171539883149157368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A176625 n

end

end A287326.P2171539883149157368

noncomputable section

/-- A287326: Triangle read by rows: T(n, k) = 6*k*(n-k) + 1; n >= 0, 0 <= k <= n.

Offset 0, canonical program `A287326.P2171539883149157368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287326 (n : ℕ) : ℤ :=
  A287326.P2171539883149157368.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287618.P888519761362367504

`A110654(A002024(n+1))+A110654(A048151(n+1))`
-/

namespace A287618.P888519761362367504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002024 (n + 1)).toNat + A110654 (A048151 (n + 1)).toNat

end

end A287618.P888519761362367504

noncomputable section

/-- A287618: Triangle read by rows: T(j,k) is the number of distinct edge segments in a j X k rectangular grid.

Offset 1, canonical program `A287618.P888519761362367504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287618 (n : ℕ) : ℤ :=
  A287618.P888519761362367504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287618.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A288349.P2654528822955700226

`∑[A059268(n)]`
-/

namespace A288349.P2654528822955700226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P2654528822955700226

noncomputable section

/-- A288349: Partial sums of A059268.

Offset 1, canonical program `A288349.P2654528822955700226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288349 (n : ℕ) : ℤ :=
  A288349.P2654528822955700226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120278.P15344238521992007135

`∑[A054114(n)]+1`
-/

namespace A120278.P15344238521992007135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A120278.P15344238521992007135

noncomputable section

/-- A120278: a(n) = Sum_{m=1..n} Sum_{k=1..m} C(2*k,k), where C(2*k,k) = (2*k)!/(k!)^2 = A000984(k).

Offset 1, canonical program `A120278.P15344238521992007135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A120278 (n : ℕ) : ℤ :=
  A120278.P15344238521992007135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A120278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120387.P9382839840075496527

`ceil((n+1)/2)*A289207(A110560(n))`
-/

namespace A120387.P9382839840075496527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2⌉ * A289207 (A110560 n).toNat

end

end A120387.P9382839840075496527

noncomputable section

/-- A120387: c(n) mod b(n) where c(n) = (n-1)! and b(n) = Sum_{i=1..n} i.

Offset 1, canonical program `A120387.P9382839840075496527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120387 (n : ℕ) : ℤ :=
  A120387.P9382839840075496527.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121444.P10718778416213000801

`A052343(3*n+1)`
-/

namespace A121444.P10718778416213000801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (3 * n + 1)

end

end A121444.P10718778416213000801

noncomputable section

/-- A121444: Expansion of f(x^3, x^9) * f(x, x^2) in powers of x where f(, ) is Ramanujan's general theta functions.

Offset 0, canonical program `A121444.P10718778416213000801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052343, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121444 (n : ℕ) : ℤ :=
  A121444.P10718778416213000801.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052343, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122497.P1099217958447741762

`A059448(n+1)+1`
-/

namespace A122497.P1099217958447741762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059448 (n + 1) + 1

end

end A122497.P1099217958447741762

noncomputable section

/-- A122497: Let f(S) denote the interchange of 1's and 2's in S. Let S_0 = 1, S_{N+1} = f(S_N).S_N, where the dot indicates concatenation. Sequence gives S_0.S_1.S_2.S_3....

Offset 1, canonical program `A122497.P1099217958447741762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122497 (n : ℕ) : ℤ :=
  A122497.P1099217958447741762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122497.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122507.P15819417335415522876

`A049691(1-C(∑[char[∑[n]]], 2)+n)-2`
-/

namespace A122507.P15819417335415522876
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat - 2

end

end A122507.P15819417335415522876

noncomputable section

/-- A122507: Triangle in which row n contains the first n terms of A018805.

Offset 1, canonical program `A122507.P15819417335415522876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122507 (n : ℕ) : ℤ :=
  A122507.P15819417335415522876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123316.P12471927346864757691

`A098361(n)*A124932(n+1)`
-/

namespace A123316.P12471927346864757691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A124932 (n + 1)

end

end A123316.P12471927346864757691

noncomputable section

/-- A123316: Triangle read by rows: T(n,k)=(k+1)*n!/2 (1<=k<=n).

Offset 1, canonical program `A123316.P12471927346864757691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A123316 (n : ℕ) : ℤ :=
  A123316.P12471927346864757691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A123316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124927.P15291283991733962265

`A325191(n)+A080233(n)`
-/

namespace A124927.P15291283991733962265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325191 n + A080233 n

end

end A124927.P15291283991733962265

noncomputable section

/-- A124927: Triangle read by rows: T(n,0)=1, T(n,k)=2*binomial(n,k) if k>0 (0<=k<=n).

Offset 0, canonical program `A124927.P15291283991733962265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124927 (n : ℕ) : ℤ :=
  A124927.P15291283991733962265.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124931.P11932261198096333976

`A135278(n)*A158405(n+1)`
-/

namespace A124931.P11932261198096333976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A158405 (n + 1)

end

end A124931.P11932261198096333976

noncomputable section

/-- A124931: Triangle read by rows: T(n,k) = (2*k-1)*binomial(n,k) (1 <= k <= n).

Offset 1, canonical program `A124931.P11932261198096333976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124931 (n : ℕ) : ℤ :=
  A124931.P11932261198096333976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125030.P7178529687584953587

`A123391(n+1)+A125029(n+1)-A101436(n+1)`
-/

namespace A125030.P7178529687584953587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123391 (n + 1) + (A125029 (n + 1) - A101436 (n + 1))

end

end A125030.P7178529687584953587

noncomputable section

/-- A125030: a(n) = sum of exponents in the prime factorization of n that are noncomposite.

Offset 1, canonical program `A125030.P7178529687584953587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125030 (n : ℕ) : ℤ :=
  A125030.P7178529687584953587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125111.P6188776523873180640

`A022544(n+1)^3`
-/

namespace A125111.P6188776523873180640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1) ^ 3

end

end A125111.P6188776523873180640

noncomputable section

/-- A125111: Cubes which do not have a partition as the sum of 2 squares.

Offset 1, canonical program `A125111.P6188776523873180640`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125111 (n : ℕ) : ℤ :=
  A125111.P6188776523873180640.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125111.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127040.P3986112712711005447

`A065942(n+2)-A081204(n+1)`
-/

namespace A127040.P3986112712711005447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 (n + 2) - A081204 (n + 1)

end

end A127040.P3986112712711005447

noncomputable section

/-- A127040: a(n) = binomial(floor((3n+4)/2),floor(n/2)).

Offset 0, canonical program `A127040.P3986112712711005447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A127040 (n : ℕ) : ℤ :=
  A127040.P3986112712711005447.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A127040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127333.P6306977747944234696

`A034964(n+2)+A000040(n+1)`
-/

namespace A127333.P6306977747944234696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 2) + A000040 (n + 1)

end

end A127333.P6306977747944234696

noncomputable section

/-- A127333: Numbers that are the sum of 6 consecutive primes.

Offset 1, canonical program `A127333.P6306977747944234696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127333 (n : ℕ) : ℤ :=
  A127333.P6306977747944234696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127345.P18035437064499472931

`A357679(n+2)+A090076(n+1)`
-/

namespace A127345.P18035437064499472931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357679 (n + 2) + A090076 (n + 1)

end

end A127345.P18035437064499472931

noncomputable section

/-- A127345: a(n) = pq + pr + qr with p = prime(n), q = prime(n+1), and r = prime(n+2).

Offset 1, canonical program `A127345.P18035437064499472931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127345 (n : ℕ) : ℤ :=
  A127345.P18035437064499472931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127536.P3976489637807869491

`A262394(n+1)+A262394(n+1)-A006013(n+1)`
-/

namespace A127536.P3976489637807869491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262394 (n + 1) + (A262394 (n + 1) - A006013 (n + 1))

end

end A127536.P3976489637807869491

noncomputable section

/-- A127536: Sum of jump-lengths of all even trees with 2n edges.

Offset 1, canonical program `A127536.P3976489637807869491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A127536 (n : ℕ) : ℤ :=
  A127536.P3976489637807869491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A127536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127952.P12742971010225177770

`A003506(n)-a(n-1)` with `a(0)=1`
-/

namespace A127952.P12742971010225177770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003506 n - a (n - 1)

end

end A127952.P12742971010225177770

noncomputable section

/-- A127952: Triangle read by rows, T(n,k) = (n+1)*binomial(n-1,k-1).

Offset 0, canonical program `A127952.P12742971010225177770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127952 (n : ℕ) : ℤ :=
  A127952.P12742971010225177770.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128059.P6275643782124807022

`A110560(A325168(n+1))`
-/

namespace A128059.P6275643782124807022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (A325168 (n + 1)).toNat

end

end A128059.P6275643782124807022

noncomputable section

/-- A128059: a(n) = numerator((2*n-1)^2/(2*(2*n)!)).

Offset 0, canonical program `A128059.P6275643782124807022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A128059 (n : ℕ) : ℤ :=
  A128059.P6275643782124807022.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A128059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129265.P10106076537262202523

`val(or(A002024(n+1), A139547(n)), 2)+1`
-/

namespace A129265.P10106076537262202523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lor (A002024 (n + 1)) (A139547 n)).toNat 2 + 1

end

end A129265.P10106076537262202523

noncomputable section

/-- A129265: Triangle read by rows: T(n,k) is the number of power of two divisors of n that are less than or equal to n/k.

Offset 1, canonical program `A129265.P10106076537262202523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A129265 (n : ℕ) : ℤ :=
  (A129265.P10106076537262202523.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A129265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129447.P14635424549236213191

`A033999(n)*A125079(n)`
-/

namespace A129447.P14635424549236213191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A125079 n

end

end A129447.P14635424549236213191

noncomputable section

/-- A129447: Expansion of psi(q) * psi(q^3) * phi(q^3) / phi(q) in powers of q where psi(), phi() are Ramanujan theta functions.

Offset 0, canonical program `A129447.P14635424549236213191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129447 (n : ℕ) : ℤ :=
  A129447.P14635424549236213191.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129633.P6237499131116269407

`A000040(A058049(n+1))`
-/

namespace A129633.P6237499131116269407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A058049 (n + 1)).toNat

end

end A129633.P6237499131116269407

noncomputable section

/-- A129633: The sum of the decimal digits of all primes up to and including the primes listed equals a prime.

Offset 1, canonical program `A129633.P6237499131116269407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A129633 (n : ℕ) : ℤ :=
  A129633.P6237499131116269407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A129633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129782.P7810012710438629702

`A096479(n+1)+2`
-/

namespace A129782.P7810012710438629702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096479 (n + 1) + 2

end

end A129782.P7810012710438629702

noncomputable section

/-- A129782: The upper twin prime whose lower member has a prime index.

Offset 1, canonical program `A129782.P7810012710438629702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129782 (n : ℕ) : ℤ :=
  A129782.P7810012710438629702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129910.P2665300731369713795

`floor(A107309(n)/3)`
-/

namespace A129910.P2665300731369713795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A107309 n : ℚ) / 3⌋

end

end A129910.P2665300731369713795

noncomputable section

/-- A129910: Quotient of the decimal representation of concatenated twin primes in reverse divided by 3.

Offset 1, canonical program `A129910.P2665300731369713795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129910 (n : ℕ) : ℤ :=
  A129910.P2665300731369713795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130107.P1988406999421660602

`∑{d}[n+1, A007428(#)*A060648((n+1)/#)]`
-/

namespace A130107.P1988406999421660602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A060648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130107.P1988406999421660602

noncomputable section

/-- A130107: Möbius transform of A063659.

Offset 1, canonical program `A130107.P1988406999421660602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130107 (n : ℕ) : ℤ :=
  A130107.P1988406999421660602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130201.P3817983863840821354

`2*A130202(n+1)`
-/

namespace A130201.P3817983863840821354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130202 (n + 1)

end

end A130201.P3817983863840821354

noncomputable section

/-- A130201: Odious oblong (promic) numbers.

Offset 1, canonical program `A130201.P3817983863840821354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130201 (n : ℕ) : ℤ :=
  A130201.P3817983863840821354.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130201.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130297.P826751733099478638

`A135223(n+1)+A114327(n)`
-/

namespace A130297.P826751733099478638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1) + A114327 n

end

end A130297.P826751733099478638

noncomputable section

/-- A130297: A130296^2.

Offset 1, canonical program `A130297.P826751733099478638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130297 (n : ℕ) : ℤ :=
  A130297.P826751733099478638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130973.P2346010488408842124

`A048614(lt[1, A048614(n+1)+1]+1)`
-/

namespace A130973.P2346010488408842124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A130973.P2346010488408842124

noncomputable section

/-- A130973: Number of primes between successive pairs of twin primes, for a(n) > 0.

Offset 1, canonical program `A130973.P2346010488408842124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8924 terms. -/
def A130973 (n : ℕ) : ℤ :=
  A130973.P2346010488408842124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8924 terms. -/
def A130973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131922.P15853728421612671045

`A094727(A193592(n)+n)`
-/

namespace A131922.P15853728421612671045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A193592 n + (n : ℤ)).toNat

end

end A131922.P15853728421612671045

noncomputable section

/-- A131922: Triangle read by rows: 2*A002024 - A130296 as infinite lower triangular matrices.

Offset 0, canonical program `A131922.P15853728421612671045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131922 (n : ℕ) : ℤ :=
  A131922.P15853728421612671045.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131963.P6830822417454376484

`A260942(3*n+1)`
-/

namespace A131963.P6830822417454376484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260942 (3 * n + 1)

end

end A131963.P6830822417454376484

noncomputable section

/-- A131963: Expansion of f(x, x^2) * f(x^4, x^12) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A131963.P6830822417454376484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A131963 (n : ℕ) : ℤ :=
  A131963.P6830822417454376484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A131963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132352.P352406761875659028

`∑[A132351(n+1)]`
-/

namespace A132352.P352406761875659028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132352.P352406761875659028

noncomputable section

/-- A132352: Partial sums of A132351.

Offset 1, canonical program `A132352.P352406761875659028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132352 (n : ℕ) : ℤ :=
  A132352.P352406761875659028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132751.P15149145036717789500

`2*A003506(n+1)-1`
-/

namespace A132751.P15149145036717789500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003506 (n + 1) - 1

end

end A132751.P15149145036717789500

noncomputable section

/-- A132751: Triangle T(n, k) = 2/Beta(n-k+1, k) - 1, read by rows.

Offset 1, canonical program `A132751.P15149145036717789500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132751 (n : ℕ) : ℤ :=
  A132751.P15149145036717789500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133524.P7363267579138448459

`A133529(n+1)+A001248(n+4)`
-/

namespace A133524.P7363267579138448459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133529 (n + 1) + A001248 (n + 4)

end

end A133524.P7363267579138448459

noncomputable section

/-- A133524: Sum of squares of four consecutive primes.

Offset 1, canonical program `A133524.P7363267579138448459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A133529, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133524 (n : ℕ) : ℤ :=
  A133524.P7363267579138448459.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A133529, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133524.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135023.P1620752606866019315

`A028334(A100637(2*n+1))`
-/

namespace A135023.P1620752606866019315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (A100637 (2 * n + 1)).toNat

end

end A135023.P1620752606866019315

noncomputable section

/-- A135023: (NextPrime[6*n] - PreviousPrime[6*n])/2.

Offset 1, canonical program `A135023.P1620752606866019315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A135023 (n : ℕ) : ℤ :=
  A135023.P1620752606866019315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A135023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135151.P16759562844649267622

`A135152(n+1)-A114327(n)`
-/

namespace A135151.P16759562844649267622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135152 (n + 1) - A114327 n

end

end A135151.P16759562844649267622

noncomputable section

/-- A135151: A002260 + A128174 - I, I = Identity matrix.

Offset 1, canonical program `A135151.P16759562844649267622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135151 (n : ℕ) : ℤ :=
  A135151.P16759562844649267622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136204.P7520579038168361829

`p?[ceil(A074822(n+1)/3)]`
-/

namespace A136204.P7520579038168361829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074822 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136204.P7520579038168361829

noncomputable section

/-- A136204: Primes p such that 3p-2 and 3p+2 are primes (see A125272) and its decimal representation ends in 7.

Offset 1, canonical program `A136204.P7520579038168361829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1222 terms. -/
def A136204 (n : ℕ) : ℤ :=
  A136204.P7520579038168361829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1222 terms. -/
def A136204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136462.P13145340659209256192

`C(A296612(A061579(n)), A002262(n))`
-/

namespace A136462.P13145340659209256192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A296612 (A061579 n).toNat).toNat (A002262 n).toNat

end

end A136462.P13145340659209256192

noncomputable section

/-- A136462: Square table, read by antidiagonals, where T(n,k) = C((n+1)*2^(k-1), k) for n>=0, k>=0.

Offset 0, canonical program `A136462.P13145340659209256192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A136462 (n : ℕ) : ℤ :=
  (A136462.P13145340659209256192.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A136462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137337.P17172158922409945195

`A003506(n+1)*A122803(A051162(n))`
-/

namespace A137337.P17172158922409945195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) * A122803 (A051162 n).toNat

end

end A137337.P17172158922409945195

noncomputable section

/-- A137337: T(i,j) = (-1)^(i+j)*(i+1)*binomial(i,j)*2^(i-j)*4^j.

Offset 0, canonical program `A137337.P17172158922409945195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8085 terms. -/
def A137337 (n : ℕ) : ℤ :=
  A137337.P17172158922409945195.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8085 terms. -/
def A137337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138746.P8217027100382283565

`-A138745(n+1)`
-/

namespace A138746.P8217027100382283565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A138745 (n + 1)

end

end A138746.P8217027100382283565

noncomputable section

/-- A138746: Expansion of 1 - eta(q) * eta(q^3) * eta(q^4)^3 / (eta(q^2)^2 * eta(q^12)) in powers of q.

Offset 1, canonical program `A138746.P8217027100382283565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138745, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138746 (n : ℕ) : ℤ :=
  A138746.P8217027100382283565.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138745, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138948.P4888699677792137686

`val(A002808(A002024(n+1)), A037126(n+1))`
-/

namespace A138948.P4888699677792137686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002808 (A002024 (n + 1)).toNat).toNat (A037126 (n + 1)).toNat

end

end A138948.P4888699677792137686

noncomputable section

/-- A138948: Triangle T[i,j] = exponent of prime A000040(j) in factorization of composite A002808(i).

Offset 1, canonical program `A138948.P4888699677792137686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138948 (n : ℕ) : ℤ :=
  (A138948.P4888699677792137686.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138966.P5913427070522576114

`n+1+A113646(n+2)`
-/

namespace A138966.P5913427070522576114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A113646 (n + 2)

end

end A138966.P5913427070522576114

noncomputable section

/-- A138966: a(n) = n + (smallest composite > n).

Offset 1, canonical program `A138966.P5913427070522576114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113646, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138966 (n : ℕ) : ℤ :=
  A138966.P5913427070522576114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113646, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139104.P15577029041380592062

`A118255(A000040(n+1))`
-/

namespace A139104.P15577029041380592062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (A000040 (n + 1)).toNat

end

end A139104.P15577029041380592062

noncomputable section

/-- A139104: Numbers whose binary representation shows the distribution of prime numbers up to the n-th prime, using "0" for primes and "1" for nonprime numbers.

Offset 1, canonical program `A139104.P15577029041380592062`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A118255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A139104 (n : ℕ) : ℤ :=
  A139104.P15577029041380592062.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A118255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A139104.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139312.P310610346778643042

`floor(A065091(n+1)²/A090076(n+1))`
-/

namespace A139312.P310610346778643042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065091 (n + 1) ^ 2 : ℚ) / (A090076 (n + 1) : ℚ)⌋

end

end A139312.P310610346778643042

noncomputable section

/-- A139312: Characteristic function of the good primes (version 1).

Offset 2, canonical program `A139312.P310610346778643042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139312 (n : ℕ) : ℤ :=
  A139312.P310610346778643042.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139313.P11049644309343226709

`A000040(1+A064149(n+1))`
-/

namespace A139313.P11049644309343226709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + A064149 (n + 1)).toNat

end

end A139313.P11049644309343226709

noncomputable section

/-- A139313: Primes prime(k) such that -prime(k-1) + 3*prime(k) - 3*prime(k+1) + prime(k+2) = 0.

Offset 1, canonical program `A139313.P11049644309343226709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A064149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A139313 (n : ℕ) : ℤ :=
  A139313.P11049644309343226709.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A064149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A139313.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139991.P14427523625073511135

`∩[A107148(n+1), A139850(n+1)]`
-/

namespace A139991.P14427523625073511135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P14427523625073511135

noncomputable section

/-- A139991: Primes of the form 15x^2+56y^2.

Offset 1, canonical program `A139991.P14427523625073511135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A139991 (n : ℕ) : ℤ :=
  (A139991.P14427523625073511135.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A139991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140612.P4476291011363944334

`eq[1, A229062(A229062(n)+n)]`
-/

namespace A140612.P4476291011363944334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (A229062 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140612.P4476291011363944334

noncomputable section

/-- A140612: Integers k such that both k and k+1 are the sum of 2 squares.

Offset 1, canonical program `A140612.P4476291011363944334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2741 terms. -/
def A140612 (n : ℕ) : ℤ :=
  (A140612.P4476291011363944334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2741 terms. -/
def A140612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140705.P9027791330258946632

`A061202(A010766(n+1))`
-/

namespace A140705.P9027791330258946632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061202 (A010766 (n + 1)).toNat

end

end A140705.P9027791330258946632

noncomputable section

/-- A140705: A000012 * A051731^4.

Offset 1, canonical program `A140705.P9027791330258946632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140705 (n : ℕ) : ℤ :=
  A140705.P9027791330258946632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140822.P16643342834966947300

`C(A003056(n), A281726(n+1)-1)`
-/

namespace A140822.P16643342834966947300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A281726 (n + 1) - 1).toNat

end

end A140822.P16643342834966947300

noncomputable section

/-- A140822: Triangle T(n,m) = binomial(n,gcd(n,m)) read by rows, 0<=m<=n.

Offset 0, canonical program `A140822.P16643342834966947300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140822 (n : ℕ) : ℤ :=
  (A140822.P16643342834966947300.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141026.P13833280663866125837

`∩[A015915(n+1), A332674(n+1)]`
-/

namespace A141026.P13833280663866125837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P13833280663866125837

noncomputable section

/-- A141026: Numbers k such that (k,k+8) forms a pair of consecutive primes ending respectively in 1 and 9.

Offset 1, canonical program `A141026.P13833280663866125837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141026 (n : ℕ) : ℤ :=
  (A141026.P13833280663866125837.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141640.P11678069343335363324

`eq[A000007(n), A107279(A007953(n))]`
-/

namespace A141640.P11678069343335363324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141640.P11678069343335363324

noncomputable section

/-- A141640: Additive nonprimes: odd sum of digits is a nonprime.

Offset 1, canonical program `A141640.P11678069343335363324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141640 (n : ℕ) : ℤ :=
  (A141640.P11678069343335363324.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143064.P13024267726719583527

`-A290739(n)`
-/

namespace A143064.P13024267726719583527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A290739 n

end

end A143064.P13024267726719583527

noncomputable section

/-- A143064: Expansion of a Ramanujan false theta series variation of A089801 in powers of x.

Offset 0, canonical program `A143064.P13024267726719583527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A143064 (n : ℕ) : ℤ :=
  A143064.P13024267726719583527.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A143064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143237.P17615845201018552635

`A245092(A131507(n))*A245093(n+1)`
-/

namespace A143237.P17615845201018552635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A131507 n).toNat * A245093 (n + 1)

end

end A143237.P17615845201018552635

noncomputable section

/-- A143237: Triangle read by rows, T(n, k) = A000203(n)*A000203(k), for n >= 1, 1 <= k <= n.

Offset 1, canonical program `A143237.P17615845201018552635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143237 (n : ℕ) : ℤ :=
  A143237.P17615845201018552635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143519.P9324658286783399182

`∑{d}[n+1, A007428(#)*A062799((n+1)/#)]`
-/

namespace A143519.P9324658286783399182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A062799 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143519.P9324658286783399182

noncomputable section

/-- A143519: Moebius transform of A010051, the characteristic function of the primes: a(n) = Sum_{d|n} mu(n/d)*A010051(d); A054525 * A010051.

Offset 1, canonical program `A143519.P9324658286783399182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143519 (n : ℕ) : ℤ :=
  A143519.P9324658286783399182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143541.P8324065334006021306

`A143536(n+1)*A143538(n+1)`
-/

namespace A143541.P8324065334006021306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (n + 1) * A143538 (n + 1)

end

end A143541.P8324065334006021306

noncomputable section

/-- A143541: Triangle read by rows, T(n,k) = 1 if both n and k are prime, 0 otherwise; 1 <= k <= n.

Offset 1, canonical program `A143541.P8324065334006021306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143541 (n : ℕ) : ℤ :=
  A143541.P8324065334006021306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143581.P12384463592517670465

`A055786(n)+A000007(n)`
-/

namespace A143581.P12384463592517670465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055786 n + A000007 n

end

end A143581.P12384463592517670465

noncomputable section

/-- A143581: Numerators of coefficient of x^(n+1/2) in the series expansion of the haversine.

Offset 1, canonical program `A143581.P12384463592517670465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A143581 (n : ℕ) : ℤ :=
  A143581.P12384463592517670465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A143581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143905.P4327067562106861004

`3*A048702(eq[A000120(n), A023416(n)])`
-/

namespace A143905.P4327067562106861004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048702 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A143905.P4327067562106861004

noncomputable section

/-- A143905: Positive integers n that are palindromic in base 2 and whose binary representation has the same number of 0's as 1's.

Offset 1, canonical program `A143905.P4327067562106861004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1047 terms. -/
def A143905 (n : ℕ) : ℤ :=
  A143905.P4327067562106861004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1047 terms. -/
def A143905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144078.P3429487061898362831

`2*A037888(n+1)`
-/

namespace A144078.P3429487061898362831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037888 (n + 1)

end

end A144078.P3429487061898362831

noncomputable section

/-- A144078: a(n) = the number of digits in the binary representation of n that differ from the corresponding digit in the binary reversal of n. (I.e., a(n) = number of 1's in n XOR A030101(n).)

Offset 1, canonical program `A144078.P3429487061898362831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A144078 (n : ℕ) : ℤ :=
  A144078.P3429487061898362831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A144078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144384.P4609313334345118213

`∏{d}[A051777(n+1), A001221(#)-1]`
-/

namespace A144384.P4609313334345118213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (A001221 d - 1)

end

end A144384.P4609313334345118213

noncomputable section

/-- A144384: T(1,k) = 1 and T(n,k) = [t^k] (1 - t)/(1 - t^n) for n >= 2, square array read by ascending antidiagonals (n >= 1, k >= 0).

Offset 1, canonical program `A144384.P4609313334345118213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A144384 (n : ℕ) : ℤ :=
  A144384.P4609313334345118213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A144384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144477.P14831174345250397113

`A037888(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A144477.P14831174345250397113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A144477.P14831174345250397113

noncomputable section

/-- A144477: a(n) = minimal number of 0's that must be changed to 1's in the binary expansion of the n-th prime in order to make it into a palindrome.

Offset 1, canonical program `A144477.P14831174345250397113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A144477 (n : ℕ) : ℤ :=
  A144477.P14831174345250397113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A144477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145479.P5146856284210812585

`p?[A053177(n+1)-32]`
-/

namespace A145479.P5146856284210812585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145479.P5146856284210812585

noncomputable section

/-- A145479: Primes p such that (31+p)/2 is prime.

Offset 1, canonical program `A145479.P5146856284210812585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1407 terms. -/
def A145479 (n : ℕ) : ℤ :=
  A145479.P5146856284210812585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1407 terms. -/
def A145479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152086.P7459043147608244788

`A102699(n+2)/2`
-/

namespace A152086.P7459043147608244788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102699 (n + 2) : ℚ) / 2

end

end A152086.P7459043147608244788

noncomputable section

/-- A152086: a(n) = Sum_{k=1..n-1} k*A110971(n,k).

Offset 2, canonical program `A152086.P7459043147608244788`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102699, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152086 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152086.P7459043147608244788.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102699, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152086.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152117.P16867731651987369157

`A097240(n+1)+A001223(n+1)`
-/

namespace A152117.P16867731651987369157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097240 (n + 1) + A001223 (n + 1)

end

end A152117.P16867731651987369157

noncomputable section

/-- A152117: a(n) = n*(n-th prime) + (n+1)*((n+1)-th prime).

Offset 1, canonical program `A152117.P16867731651987369157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152117 (n : ℕ) : ℤ :=
  A152117.P16867731651987369157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152537.P6416251787973897900

`a(n-1)+a(n-1)-A257628(n)` with `a(0)=1`
-/

namespace A152537.P6416251787973897900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A257628 n)

end

end A152537.P6416251787973897900

noncomputable section

/-- A152537: Convolution sequence: this sequence convolved with A000041 gives powers of 2, (A000079).

Offset 0, canonical program `A152537.P6416251787973897900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A152537 (n : ℕ) : ℤ :=
  A152537.P6416251787973897900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A152537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153047.P13374081325406904535

`A153045(n+1)+2`
-/

namespace A153047.P13374081325406904535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153045 (n + 1) + 2

end

end A153047.P13374081325406904535

noncomputable section

/-- A153047: Numbers n such that 2*n-15 is not a prime.

Offset 1, canonical program `A153047.P13374081325406904535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153047 (n : ℕ) : ℤ :=
  A153047.P13374081325406904535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156229.P14210188501640213565

`∑[A052343(n)]`
-/

namespace A156229.P14210188501640213565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156229.P14210188501640213565

noncomputable section

/-- A156229: Partial sums of A052343.

Offset 0, canonical program `A156229.P14210188501640213565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156229 (n : ℕ) : ℤ :=
  A156229.P14210188501640213565.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156709.P4924943972656695821

`∑[A156706(n+1)]`
-/

namespace A156709.P4924943972656695821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156709.P4924943972656695821

noncomputable section

/-- A156709: For all numbers k(n) congruent to -1 or +1 (mod 6) starting with k(n) = {5,7,11,13,...}, a(k(n)) is incremented by the congruence (mod 6) if k(n) is prime and by 0 if k(n) is composite.

Offset 1, canonical program `A156709.P4924943972656695821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156709 (n : ℕ) : ℤ :=
  A156709.P4924943972656695821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156906.P6062132238121179330

`A090192(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A156906.P6062132238121179330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090192 (n - 1) - a (n - 1)

end

end A156906.P6062132238121179330

noncomputable section

/-- A156906: Transform of Fibonacci(n+1) with Hankel transform (-1)^binomial(n+1,2) * Fibonacci(n+1).

Offset 0, canonical program `A156906.P6062132238121179330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A156906 (n : ℕ) : ℤ :=
  A156906.P6062132238121179330.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A156906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157632.P11981151673008096527

`A103452(n)²+A176284(n)-1`
-/

namespace A157632.P11981151673008096527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n ^ 2 + (A176284 n - 1)

end

end A157632.P11981151673008096527

noncomputable section

/-- A157632: Triangle T(n,m) read by rows: 1 in column m=0 and on the diagonal, else 3*n*m*(n-m).

Offset 0, canonical program `A157632.P11981151673008096527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A157632 (n : ℕ) : ℤ :=
  A157632.P11981151673008096527.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A157632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158328.P9213306656047142761

`p?[A106712(n+1)-2]`
-/

namespace A158328.P9213306656047142761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106712 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158328.P9213306656047142761

noncomputable section

/-- A158328: Lessers p1 of twin primes with prime sums of digits of p1 and p2.

Offset 1, canonical program `A158328.P9213306656047142761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1494 terms. -/
def A158328 (n : ℕ) : ℤ :=
  A158328.P9213306656047142761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1494 terms. -/
def A158328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160815.P12678141719750607569

`A160788(n)+A160836(n)-A160817(n)`
-/

namespace A160815.P12678141719750607569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160788 n + (A160836 n - A160817 n)

end

end A160815.P12678141719750607569

noncomputable section

/-- A160815: Expansion of (1+62*x+562*x^2+1023*x^3+458*x^4+49*x^5+x^6)/(1-x)^7.

Offset 0, canonical program `A160815.P12678141719750607569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160815 (n : ℕ) : ℤ :=
  A160815.P12678141719750607569.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161601.P12806282394382421226

`2*lt[n+1, A145342(n+1)]+1`
-/

namespace A161601.P12806282394382421226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A161601.P12806282394382421226

noncomputable section

/-- A161601: Positive integers k that are less than the value of the reversal of k's representation in binary.

Offset 1, canonical program `A161601.P12806282394382421226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5563 terms. -/
def A161601 (n : ℕ) : ℤ :=
  (A161601.P12806282394382421226.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5563 terms. -/
def A161601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161603.P6263326332748998363

`2*lt[A145342(n+1), n+1]+1`
-/

namespace A161603.P6263326332748998363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A161603.P6263326332748998363

noncomputable section

/-- A161603: Odd terms of sequence A161602.

Offset 1, canonical program `A161603.P6263326332748998363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4155 terms. -/
def A161603 (n : ℕ) : ℤ :=
  (A161603.P6263326332748998363.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4155 terms. -/
def A161603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161604.P17933307297421401023

`A057890(n+2)`
-/

namespace A161604.P17933307297421401023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 2)

end

end A161604.P17933307297421401023

noncomputable section

/-- A161604: A positive integer k is included if the value of (the reversal of k's representation in binary) divides k.

Offset 1, canonical program `A161604.P17933307297421401023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A161604 (n : ℕ) : ℤ :=
  A161604.P17933307297421401023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A161604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161627.P6343698203348993305

`eq[1, A316826(floor(n/4)+1)]`
-/

namespace A161627.P6343698203348993305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (⌊(n : ℚ) / 4⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161627.P6343698203348993305

noncomputable section

/-- A161627: Positions n such that A010060(n)=A010060(n+4).

Offset 1, canonical program `A161627.P6343698203348993305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161627 (n : ℕ) : ℤ :=
  (A161627.P6343698203348993305.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161757.P7674081169120475587

`A001248(n+1)-A161753(n+1)`
-/

namespace A161757.P7674081169120475587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A161753 (n + 1)

end

end A161757.P7674081169120475587

noncomputable section

/-- A161757: a(n) = (prime(n))^2 - (nonprime(n))^2.

Offset 1, canonical program `A161757.P7674081169120475587`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A161753, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161757 (n : ℕ) : ℤ :=
  A161757.P7674081169120475587.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A161753, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161757.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161996.P3418427153135750794

`A000045(Δ[A100637(2*n)])`
-/

namespace A161996.P3418427153135750794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A161996.P3418427153135750794

noncomputable section

/-- A161996: A (negated) characteristic function of twin composite odd numbers.

Offset 1, canonical program `A161996.P3418427153135750794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161996 (n : ℕ) : ℤ :=
  A161996.P3418427153135750794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162341.P7364615635833394252

`A115061(A233583(n+1))-A165326(n)`
-/

namespace A162341.P7364615635833394252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (A233583 (n + 1)).toNat - A165326 n

end

end A162341.P7364615635833394252

noncomputable section

/-- A162341: a(n) = number of grid points P(x,y) that are covered by a polyedge as the graph of the "mountain path" function for prime numbers, where x=n and y=0..oo.

Offset 0, canonical program `A162341.P7364615635833394252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A162341 (n : ℕ) : ℤ :=
  A162341.P7364615635833394252.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A162341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162738.P6289440250695548267

`A064799(n+1)-A065859(n+1)`
-/

namespace A162738.P6289440250695548267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1) - A065859 (n + 1)

end

end A162738.P6289440250695548267

noncomputable section

/-- A162738: a(n) is the smallest positive multiple of {the n-th composite} that is greater than the n-th prime.

Offset 1, canonical program `A162738.P6289440250695548267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162738 (n : ℕ) : ℤ :=
  A162738.P6289440250695548267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162944.P8521714573655966395

`A162943(A010766(n+1))`
-/

namespace A162944.P8521714573655966395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 (A010766 (n + 1)).toNat

end

end A162944.P8521714573655966395

noncomputable section

/-- A162944: A162943(A010766).

Offset 1, canonical program `A162944.P8521714573655966395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162944 (n : ℕ) : ℤ :=
  A162944.P8521714573655966395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163387.P15529446580264566935

`p?[A153877(n+1)+5]`
-/

namespace A163387.P15529446580264566935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153877 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163387.P15529446580264566935

noncomputable section

/-- A163387: Primes p such that 5(p-5)-1 and 5(p-5)+1 are twin primes.

Offset 1, canonical program `A163387.P15529446580264566935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. -/
def A163387 (n : ℕ) : ℤ :=
  A163387.P15529446580264566935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. -/
def A163387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163511.P5635496813650871695

`A253563(A145342(n+1)-1)`
-/

namespace A163511.P5635496813650871695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (A145342 (n + 1) - 1).toNat

end

end A163511.P5635496813650871695

noncomputable section

/-- A163511: a(0)=1. a(n) = p(A000120(n)) * Product_{m=1..A000120(n)} p(m)^A163510(n,m), where p(m) is the m-th prime.

Offset 0, canonical program `A163511.P5635496813650871695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A163511 (n : ℕ) : ℤ :=
  A163511.P5635496813650871695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A163511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163602.P924882261121524970

`A161753(n+2)-A161753(n+1)`
-/

namespace A163602.P924882261121524970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161753 (n + 2) - A161753 (n + 1)

end

end A163602.P924882261121524970

noncomputable section

/-- A163602: First differences of A161753.

Offset 1, canonical program `A163602.P924882261121524970`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163602 (n : ℕ) : ℤ :=
  A163602.P924882261121524970.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163602.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163765.P10197405487920566241

`round(A225034(n+1)-acot(n))`
-/

namespace A163765.P10197405487920566241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A225034 (n + 1) : ℝ) - SequenceMachineLib.acot (n : ℝ))

end

end A163765.P10197405487920566241

noncomputable section

/-- A163765: Inverse binomial transform of A048775 (assuming offset zero in both sequences).

Offset 1, canonical program `A163765.P10197405487920566241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A163765 (n : ℕ) : ℤ :=
  A163765.P10197405487920566241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A163765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164961.P13861491251235141139

`A069466(n)*A098361(n)`
-/

namespace A164961.P13861491251235141139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069466 n * A098361 n

end

end A164961.P13861491251235141139

noncomputable section

/-- A164961: Triangle read by rows: T[n,m] = quadruple factorials A001813(n) * binomials A007318(n,m).

Offset 0, canonical program `A164961.P13861491251235141139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1189 terms. -/
def A164961 (n : ℕ) : ℤ :=
  A164961.P13861491251235141139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1189 terms. -/
def A164961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167761.P392541116027137625

`sqrt(A167657(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167761.P392541116027137625
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167657 (n + 1) : ℝ)

end

end A167761.P392541116027137625

noncomputable section

/-- A167761: a(n) = sqrt(A167657(n)).

Offset 1, canonical program `A167761.P392541116027137625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167657, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167761 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A167761.P392541116027137625.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167657, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167761.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168058.P10626882976958940193

`xor(1, 1-A168055(n))`
-/

namespace A168058.P10626882976958940193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A168055 n)

end

end A168058.P10626882976958940193

noncomputable section

/-- A168058: Expansion of x + sqrt(1-2x-3x^2).

Offset 0, canonical program `A168058.P10626882976958940193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A168058 (n : ℕ) : ℤ :=
  A168058.P10626882976958940193.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A168058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171527.P2890916841386247195

`A071224(n+1)/(n+1)`
-/

namespace A171527.P2890916841386247195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071224 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A171527.P2890916841386247195

noncomputable section

/-- A171527: Numerator of (n-th composite/n).

Offset 1, canonical program `A171527.P2890916841386247195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171527 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A171527.P2890916841386247195.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171528.P4705350279154627572

`A071224(n+1)%A072668(n+1)`
-/

namespace A171528.P4705350279154627572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071224 (n + 1)) (A072668 (n + 1))

end

end A171528.P4705350279154627572

noncomputable section

/-- A171528: Denominator of (n-th composite/n).

Offset 1, canonical program `A171528.P4705350279154627572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171528 (n : ℕ) : ℤ :=
  A171528.P4705350279154627572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173530.P16325262512397487259

`∑[A173531(n)]`
-/

namespace A173530.P16325262512397487259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173530.P16325262512397487259

noncomputable section

/-- A173530: Number of ON cells after n generations of three-dimensional cellular automaton related to Sierpinski's triangle and the toothpick sequences (See Comments for definition).

Offset 0, canonical program `A173530.P16325262512397487259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173530 (n : ℕ) : ℤ :=
  A173530.P16325262512397487259.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173828.P5328705190027313365

`∩[A135932(n+1), A173827(n+1)]`
-/

namespace A173828.P5328705190027313365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173828.P5328705190027313365

noncomputable section

/-- A173828: Primes p such that p-+(floor(Sqrt(p)))^2 are primes.

Offset 1, canonical program `A173828.P5328705190027313365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 985 terms. -/
def A173828 (n : ℕ) : ℤ :=
  (A173828.P5328705190027313365.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 985 terms. -/
def A173828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174440.P16633761848471278973

`∑[A022544(n+1)]`
-/

namespace A174440.P16633761848471278973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P16633761848471278973

noncomputable section

/-- A174440: Partial sums of A022544.

Offset 1, canonical program `A174440.P16633761848471278973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174440 (n : ℕ) : ℤ :=
  A174440.P16633761848471278973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175297.P4708182559347836426

`and(n+1, A165789(n+1))`
-/

namespace A175297.P4708182559347836426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A165789 (n + 1))

end

end A175297.P4708182559347836426

noncomputable section

/-- A175297: Convert n to binary. AND each respective digit of binary n and binary A030101(n), where A030101(n) is the reversal of the order of the digits in the binary representation of n (given in decimal). a(n) is the decimal value of the result.

Offset 1, canonical program `A175297.P4708182559347836426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175297 (n : ℕ) : ℤ :=
  A175297.P4708182559347836426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176070.P10273054342056655056

`(A070689(n+2)+1)*(A070689(n+2)²+1)`
-/

namespace A176070.P10273054342056655056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070689 (n + 2) + 1) * (A070689 (n + 2) ^ 2 + 1)

end

end A176070.P10273054342056655056

noncomputable section

/-- A176070: Numbers of the form k^3+k^2+k+1 that are the product of two distinct primes.

Offset 1, canonical program `A176070.P10273054342056655056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176070 (n : ℕ) : ℤ :=
  A176070.P10273054342056655056.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176070.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176181.P2660284483944872761

`A065091(lt[A063086(n+1), A058263(n+1)])`
-/

namespace A176181.P2660284483944872761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176181.P2660284483944872761

noncomputable section

/-- A176181: Primes p(n) such that gcd(p(n)-1, p(n+1)-1) > gcd(p(n)+1, p(n+1)+1).

Offset 1, canonical program `A176181.P2660284483944872761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176181 (n : ℕ) : ℤ :=
  A176181.P2660284483944872761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176346.P2858540763397008978

`A048158(n+1)+A051777(n+1)+1`
-/

namespace A176346.P2858540763397008978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + (A051777 (n + 1) + 1)

end

end A176346.P2858540763397008978

noncomputable section

/-- A176346: A dual remainder symmetrical triangle sequence T(n, m) = 1 + 2*(n+1) - (m+1)*floor((n+1)/(m+1)) - (n-m+1)*floor((n+1)/( n-m+1)), read by rows.

Offset 0, canonical program `A176346.P2858540763397008978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176346 (n : ℕ) : ℤ :=
  A176346.P2858540763397008978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177895.P16336607388393552249

`A059995(n)+A010879(A056142(n))`
-/

namespace A177895.P16336607388393552249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n + A010879 (A056142 n).toNat

end

end A177895.P16336607388393552249

noncomputable section

/-- A177895: Trace of the square matrix whose rows are the cyclic permutations of the digits of n.

Offset 0, canonical program `A177895.P16336607388393552249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A177895 (n : ℕ) : ℤ :=
  A177895.P16336607388393552249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A177895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177970.P282440303243635367

`A003506(A185868(n+1))-A279891(n)`
-/

namespace A177970.P282440303243635367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (A185868 (n + 1)).toNat - A279891 n

end

end A177970.P282440303243635367

noncomputable section

/-- A177970: Array T(n,m) = A177944(2*n,2*m) read by antidiagonals.

Offset 0, canonical program `A177970.P282440303243635367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A177970 (n : ℕ) : ℤ :=
  A177970.P282440303243635367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A177970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177991.P11359817822590575411

`A115514(n+1)/A177994(n)`
-/

namespace A177991.P11359817822590575411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115514 (n + 1) : ℚ) / (A177994 n : ℚ)

end

end A177991.P11359817822590575411

noncomputable section

/-- A177991: Triangle read by rows, A070909 * A177990.

Offset 0, canonical program `A177991.P11359817822590575411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A177991.P11359817822590575411.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178416.P16741439439157742518

`∩[A007520(n+1), A164570(n+1)]`
-/

namespace A178416.P16741439439157742518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178416.P16741439439157742518

noncomputable section

/-- A178416: Primes p such that q*p +- (p mod q) are primes, for q=8.

Offset 1, canonical program `A178416.P16741439439157742518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A178416 (n : ℕ) : ℤ :=
  (A178416.P16741439439157742518.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A178416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178881.P12593610918979970090

`(A018806(n+1)-(n+1)*(n+2)/2)/2`
-/

namespace A178881.P12593610918979970090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A018806 (n + 1) : ℚ) - (n + 1 : ℚ) * ((n + 2 : ℚ) / 2)) / 2

end

end A178881.P12593610918979970090

noncomputable section

/-- A178881: Sum of all pairs of greatest common divisors for (i,j) where 1 <= i < j <= n.

Offset 1, canonical program `A178881.P12593610918979970090`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178881 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178881.P12593610918979970090.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178881.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178931.P14801876109230170094

`filter[n+1, A117943(#)]`
-/

namespace A178931.P14801876109230170094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A117943 (f1 j) = 1) n)

end

end A178931.P14801876109230170094

noncomputable section

/-- A178931: This sequence S is generated by the following rules: 2 is in S, and if n is in S, then floor[(3n-1)/2] and 3n are in S.

Offset 1, canonical program `A178931.P14801876109230170094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3083 terms. -/
def A178931 (n : ℕ) : ℤ :=
  (A178931.P14801876109230170094.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3083 terms. -/
def A178931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179242.P5915181070434955761

`A193588(n)+A020695(A123578(n+1))`
-/

namespace A179242.P5915181070434955761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n + A020695 (A123578 (n + 1)).toNat

end

end A179242.P5915181070434955761

noncomputable section

/-- A179242: Numbers that have two terms in their Zeckendorf representation.

Offset 1, canonical program `A179242.P5915181070434955761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A179242 (n : ℕ) : ℤ :=
  A179242.P5915181070434955761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A179242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179816.P3227526000180199930

`Δ[A034387(A313251(2*n))]`
-/

namespace A179816.P3227526000180199930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A313251 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179816.P3227526000180199930

noncomputable section

/-- A179816: Sum of the prime numbers that are between 10*n and 10*(n+1).

Offset 0, canonical program `A179816.P3227526000180199930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179816 (n : ℕ) : ℤ :=
  A179816.P3227526000180199930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181766.P14155498567321335118

`lt[A156706(n+2), 1]`
-/

namespace A181766.P14155498567321335118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A181766.P14155498567321335118

noncomputable section

/-- A181766: Numbers k such that 3*k + 7 is not prime.

Offset 1, canonical program `A181766.P14155498567321335118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181766 (n : ℕ) : ℤ :=
  (A181766.P14155498567321335118.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183096.P3962787682876171308

`A000005(n+1)-A091050(n+1)`
-/

namespace A183096.P3962787682876171308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A091050 (n + 1)

end

end A183096.P3962787682876171308

noncomputable section

/-- A183096: a(n) = number of divisors of n that are not perfect powers.

Offset 1, canonical program `A183096.P3962787682876171308`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A091050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183096 (n : ℕ) : ℤ :=
  A183096.P3962787682876171308.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A091050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183096.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183101.P16697134400805324664

`A000203(n+1)-A091051(n+1)`
-/

namespace A183101.P16697134400805324664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A091051 (n + 1)

end

end A183101.P16697134400805324664

noncomputable section

/-- A183101: a(n) = sum of divisors of n that are not perfect powers.

Offset 1, canonical program `A183101.P16697134400805324664`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183101 (n : ℕ) : ℤ :=
  A183101.P16697134400805324664.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183213.P6188625481745286852

`eq[0, A117943(n+1)]+1`
-/

namespace A183213.P6188625481745286852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183213.P6188625481745286852

noncomputable section

/-- A183213: Ordering of the numbers in the set S generated by these rules: 1 is in S, and if n is in S, then floor[(3n-1)/2] and 3n are in S.

Offset 1, canonical program `A183213.P6188625481745286852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6917 terms. -/
def A183213 (n : ℕ) : ℤ :=
  (A183213.P6188625481745286852.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6917 terms. -/
def A183213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184429.P5122746667245986841

`A135665(A315303(n)+1)+1+n`
-/

namespace A184429.P5122746667245986841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A315303 n + 1).toNat + 1 + (n : ℤ)

end

end A184429.P5122746667245986841

noncomputable section

/-- A184429: Lower s-Wythoff sequence of A184429 (quarter-squares). Complement of A184430.

Offset 1, canonical program `A184429.P5122746667245986841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A184429 (n : ℕ) : ℤ :=
  A184429.P5122746667245986841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A184429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185587.P7291945286253065846

`2*A348647(n)-1`
-/

namespace A185587.P7291945286253065846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348647 n - 1

end

end A185587.P7291945286253065846

noncomputable section

/-- A185587: Irregular triangle read by rows: row n gives a list of the lengths of the free spaces at the n-th stage in a Rule 18 cellular automaton.

Offset 1, canonical program `A185587.P7291945286253065846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6305 terms. -/
def A185587 (n : ℕ) : ℤ :=
  A185587.P7291945286253065846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6305 terms. -/
def A185587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185979.P4021787341801991134

`lt[2, A053603(n)]`
-/

namespace A185979.P4021787341801991134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A185979.P4021787341801991134

noncomputable section

/-- A185979: Numbers which are the sum of two positive triangular numbers in more than one way.

Offset 1, canonical program `A185979.P4021787341801991134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185979 (n : ℕ) : ℤ :=
  (A185979.P4021787341801991134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186742.P13904402004995400067

`ceil(A257628(n+1)/2)`
-/

namespace A186742.P13904402004995400067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A257628 (n + 1) : ℚ) / 2⌉

end

end A186742.P13904402004995400067

noncomputable section

/-- A186742: Expansion of f(x, x^11) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A186742.P13904402004995400067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186742 (n : ℕ) : ℤ :=
  A186742.P13904402004995400067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187783.P697227911959604546

`A155794(n)/A225816(n)`
-/

namespace A187783.P697227911959604546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155794 n : ℚ) / (A225816 n : ℚ)

end

end A187783.P697227911959604546

noncomputable section

/-- A187783: De Bruijn's triangle, T(m,n) = (m*n)!/(n!^m) read by downward antidiagonals.

Offset 0, canonical program `A187783.P697227911959604546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A187783 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A187783.P697227911959604546.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A187783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188320.P11160732355693375776

`∪[A188323(n+1)-1, A188323(n+1)]`
-/

namespace A188320.P11160732355693375776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188323 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188320.P11160732355693375776

noncomputable section

/-- A188320: Positions of 1 in A188318; complement of A188319.

Offset 1, canonical program `A188320.P11160732355693375776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188320 (n : ℕ) : ℤ :=
  (A188320.P11160732355693375776.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188321.P12163037436350599352

`char[A188323(n+1)-1]`
-/

namespace A188321.P12163037436350599352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188323 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188321.P12163037436350599352

noncomputable section

/-- A188321: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=5, [ ]=floor.

Offset 1, canonical program `A188321.P12163037436350599352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188321 (n : ℕ) : ℤ :=
  (A188321.P12163037436350599352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188341.P18373764740800123077

`∪[A044966(n+1), floor(A044966(n+2)/3)]`
-/

namespace A188341.P18373764740800123077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A044966 (n + 2) : ℚ) / 3⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188341.P18373764740800123077

noncomputable section

/-- A188341: Numbers having no 0's and not more than one 1 in their representation in base 3.

Offset 1, canonical program `A188341.P18373764740800123077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A188341 (n : ℕ) : ℤ :=
  (A188341.P18373764740800123077.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A188341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188398.P6758079681677817296

`char[A188265(n+1)-1]`
-/

namespace A188398.P6758079681677817296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188265 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188398.P6758079681677817296

noncomputable section

/-- A188398: a(n) = [n*r+k*r] - [n*r] - [k*r], where r=1/sqrt(2), k=5, [ ]=floor.

Offset 1, canonical program `A188398.P6758079681677817296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188398 (n : ℕ) : ℤ :=
  (A188398.P6758079681677817296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189242.P4695683032726661990

`comp[A139531(n+1)]`
-/

namespace A189242.P4695683032726661990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A189242.P4695683032726661990

noncomputable section

/-- A189242: Numbers n such that 24*n+17 is not prime.

Offset 1, canonical program `A189242.P4695683032726661990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189242 (n : ℕ) : ℤ :=
  (A189242.P4695683032726661990.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189659.P14804931919716832985

`eq[2, A122864(A006047(n))]+1`
-/

namespace A189659.P14804931919716832985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122864 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189659.P14804931919716832985

noncomputable section

/-- A189659: Positions of 1 in A064990; complement of A189658.

Offset 1, canonical program `A189659.P14804931919716832985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A189659 (n : ℕ) : ℤ :=
  (A189659.P14804931919716832985.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A189659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189911.P12915414119225182304

`A056040(n)+A212303(n)`
-/

namespace A189911.P12915414119225182304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n + A212303 n

end

end A189911.P12915414119225182304

noncomputable section

/-- A189911: Row sums of the extended Catalan triangle A189231.

Offset 0, canonical program `A189911.P12915414119225182304`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189911 (n : ℕ) : ℤ :=
  A189911.P12915414119225182304.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189911.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190088.P10356372276694908

`C(A131894(n), 2*A002262(n))`
-/

namespace A190088.P10356372276694908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131894 n).toNat (2 * A002262 n).toNat

end

end A190088.P10356372276694908

noncomputable section

/-- A190088: Triangle of binomial coefficients binomial(3*n-k+1,3*n-3*k+1).

Offset 0, canonical program `A190088.P10356372276694908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6509 terms. -/
def A190088 (n : ℕ) : ℤ :=
  (A190088.P10356372276694908.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6509 terms. -/
def A190088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190152.P9394055725372174339

`C(A131894(n)-1, A005843(A002262(n)))`
-/

namespace A190152.P9394055725372174339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131894 n - 1).toNat (A005843 (A002262 n).toNat).toNat

end

end A190152.P9394055725372174339

noncomputable section

/-- A190152: Triangle of binomial coefficients binomial(3*n-k,3*n-3*k).

Offset 0, canonical program `A190152.P9394055725372174339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6622 terms. -/
def A190152 (n : ℕ) : ℤ :=
  (A190152.P9394055725372174339.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6622 terms. -/
def A190152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190715.P18007975720597003767

`A003512(A190703(n+1))+1`
-/

namespace A190715.P18007975720597003767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (A190703 (n + 1)).toNat + 1

end

end A190715.P18007975720597003767

noncomputable section

/-- A190715: Positions of 4 in A190710.

Offset 1, canonical program `A190715.P18007975720597003767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1831 terms. -/
def A190715 (n : ℕ) : ℤ :=
  A190715.P18007975720597003767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1831 terms. -/
def A190715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191452.P5218394825556345450

`A042968(A002260(n+1))*A262616(n)`
-/

namespace A191452.P5218394825556345450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (A002260 (n + 1)).toNat * A262616 n

end

end A191452.P5218394825556345450

noncomputable section

/-- A191452: Dispersion of (4,8,12,16,...), by antidiagonals.

Offset 1, canonical program `A191452.P5218394825556345450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A191452 (n : ℕ) : ℤ :=
  A191452.P5218394825556345450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A191452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191750.P1006708974149694787

`∑{d}[n+1, A130054(#)*A176345((n+1)/#)]`
-/

namespace A191750.P1006708974149694787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A176345 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191750.P1006708974149694787

noncomputable section

/-- A191750: Dirichlet convolution of A000012 with A007947.

Offset 1, canonical program `A191750.P1006708974149694787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191750 (n : ℕ) : ℤ :=
  A191750.P1006708974149694787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192146.P11104704368216114941

`2*A192255(n+1)-A192245(n+1)`
-/

namespace A192146.P11104704368216114941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192255 (n + 1) - A192245 (n + 1)

end

end A192146.P11104704368216114941

noncomputable section

/-- A192146: 1-sequence of reduction of pentagonal numbers sequence by x^2 -> x+1.

Offset 1, canonical program `A192146.P11104704368216114941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. -/
def A192146 (n : ℕ) : ℤ :=
  A192146.P11104704368216114941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. -/
def A192146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193635.P3511119153798219056

`C(A131894(n)-1, A002262(n))`
-/

namespace A193635.P3511119153798219056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131894 n - 1).toNat (A002262 n).toNat

end

end A193635.P3511119153798219056

noncomputable section

/-- A193635: Triangle: T(n,k)=C(3n-k,k), 0<=k<=n.

Offset 0, canonical program `A193635.P3511119153798219056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9452 terms. -/
def A193635 (n : ℕ) : ℤ :=
  (A193635.P3511119153798219056.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9452 terms. -/
def A193635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195063.P6179075839367825980

`2*lt[A175918(2*n), A175298(2*n)]`
-/

namespace A195063.P6179075839367825980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175918 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195063.P6179075839367825980

noncomputable section

/-- A195063: Numbers n such that BCR(n) is less than n, where BCR = binary-complement-and-reverse = A036044.

Offset 1, canonical program `A195063.P6179075839367825980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A195063 (n : ℕ) : ℤ :=
  (A195063.P6179075839367825980.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A195063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196527.P9836277949146458407

`gcd(∑[A000040(n+1)], A072476(n+1))`
-/

namespace A196527.P9836277949146458407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A072476 (n + 1))

end

end A196527.P9836277949146458407

noncomputable section

/-- A196527: Greatest common divisor of sums of first n prime numbers and first n composite numbers.

Offset 1, canonical program `A196527.P9836277949146458407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196527 (n : ℕ) : ℤ :=
  (A196527.P9836277949146458407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196527.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A199595.P3367410599700455446

`A199593(n+1)-8`
-/

namespace A199595.P3367410599700455446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199593 (n + 1) - 8

end

end A199595.P3367410599700455446

noncomputable section

/-- A199595: Numbers n such that 3n+6, 3n+7 and 3n+8 are all composite.

Offset 1, canonical program `A199595.P3367410599700455446`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199593, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A199595 (n : ℕ) : ℤ :=
  A199595.P3367410599700455446.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199593, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A199595.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A199673.P7091103310266914328

`A009998(n)*A068424(n+1)`
-/

namespace A199673.P7091103310266914328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n * A068424 (n + 1)

end

end A199673.P7091103310266914328

noncomputable section

/-- A199673: Number of ways to form k labeled groups, each with a distinct leader, using n people. Triangle T(n,k) = n!*k^(n-k)/(n-k)! for 1 <= k <= n.

Offset 1, canonical program `A199673.P7091103310266914328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1984 terms. -/
def A199673 (n : ℕ) : ℤ :=
  A199673.P7091103310266914328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1984 terms. -/
def A199673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199881.P10637622868417059747

`A284938(n+1)+A026729(A083920(n))`
-/

namespace A199881.P10637622868417059747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (n + 1) + A026729 (A083920 n).toNat

end

end A199881.P10637622868417059747

noncomputable section

/-- A199881: Triangle T(n,k), read by rows, given by (1,-1,0,0,0,0,0,0,0,0,0,...) DELTA (1,0,-1,1,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A199881.P10637622868417059747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199881 (n : ℕ) : ℤ :=
  A199881.P10637622868417059747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202238.P14298677801126806738

`A182936(n+1)%2`
-/

namespace A202238.P14298677801126806738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182936 (n + 1)) 2

end

end A202238.P14298677801126806738

noncomputable section

/-- A202238: Characteristic function of positive integers not prime and not a power of 2.

Offset 1, canonical program `A202238.P14298677801126806738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202238 (n : ℕ) : ℤ :=
  A202238.P14298677801126806738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204898.P8437523405994696174

`2*A205558(n+1)`
-/

namespace A204898.P8437523405994696174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205558 (n + 1)

end

end A204898.P8437523405994696174

noncomputable section

/-- A204898: Ordered differences of odd primes.

Offset 1, canonical program `A204898.P8437523405994696174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204898 (n : ℕ) : ℤ :=
  A204898.P8437523405994696174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208509.P2453513182842311180

`2*A034867(n)-A034839(n)`
-/

namespace A208509.P2453513182842311180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034867 n - A034839 n

end

end A208509.P2453513182842311180

noncomputable section

/-- A208509: Triangle of coefficients of polynomials v(n,x) jointly generated with A208508; see the Formula section.

Offset 1, canonical program `A208509.P2453513182842311180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208509 (n : ℕ) : ℤ :=
  A208509.P2453513182842311180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208887.P1192936168084603761

`A090192(A004524(n))+2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A208887.P1192936168084603761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A090192 (A004524 n).toNat + 2 * a (n - 2)

end

end A208887.P1192936168084603761

noncomputable section

/-- A208887: G.f. satisfies: A(x) = 1 + x*A(x)*A(-x) + x^2*(A(x) + A(-x)).

Offset 0, canonical program `A208887.P1192936168084603761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A208887 (n : ℕ) : ℤ :=
  A208887.P1192936168084603761.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A208887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208955.P8307013105643369365

`(-1)^n*A121363(n)`
-/

namespace A208955.P8307013105643369365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A121363 n

end

end A208955.P8307013105643369365

noncomputable section

/-- A208955: Expansion of phi(x) * phi(x^9) / chi(x^3)^2 in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A208955.P8307013105643369365`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121363, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208955 (n : ℕ) : ℤ :=
  A208955.P8307013105643369365.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121363, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209295.P12511635555149130807

`∑{d}[n, A029935(#)]+n`
-/

namespace A209295.P12511635555149130807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d + (n : ℤ)

end

end A209295.P12511635555149130807

noncomputable section

/-- A209295: Antidiagonal sums of the gcd(.,.) array A109004.

Offset 0, canonical program `A209295.P12511635555149130807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209295 (n : ℕ) : ℤ :=
  A209295.P12511635555149130807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209982.P8895213020285602242

`4*(A057428(n)+2*A171503(n))`
-/

namespace A209982.P8895213020285602242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A057428 n + 2 * A171503 n)

end

end A209982.P8895213020285602242

noncomputable section

/-- A209982: Number of 2 X 2 matrices having all elements in {-n,...,n} and determinant 1.

Offset 0, canonical program `A209982.P8895213020285602242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A209982 (n : ℕ) : ℤ :=
  A209982.P8895213020285602242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A209982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209983.P18438858037986034788

`2*(A057428(n)+2*A171503(n))`
-/

namespace A209983.P18438858037986034788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057428 n + 2 * A171503 n)

end

end A209983.P18438858037986034788

noncomputable section

/-- A209983: (A209982)/2.

Offset 0, canonical program `A209983.P18438858037986034788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A209983 (n : ℕ) : ℤ :=
  A209983.P18438858037986034788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A209983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210000.P5435968868787770991

`2*A171503(n)`
-/

namespace A210000.P5435968868787770991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171503 n

end

end A210000.P5435968868787770991

noncomputable section

/-- A210000: Number of unimodular 2 X 2 matrices having all terms in {0,1,...,n}.

Offset 0, canonical program `A210000.P5435968868787770991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210000 (n : ℕ) : ℤ :=
  A210000.P5435968868787770991.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210000.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A210040.P8255258809295094256

`A034867(Δ[A055087(n)]+n)`
-/

namespace A210040.P8255258809295094256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A210040.P8255258809295094256

noncomputable section

/-- A210040: Array of coefficients of polynomials v(n,x) jointly generated with A210039; see the Formula section.

Offset 1, canonical program `A210040.P8255258809295094256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210040 (n : ℕ) : ℤ :=
  A210040.P8255258809295094256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210477.P14670432192590346148

`A031924(n+1)*(A031924(n+1)+6)`
-/

namespace A210477.P14670432192590346148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1) * (A031924 (n + 1) + 6)

end

end A210477.P14670432192590346148

noncomputable section

/-- A210477: Product of adjacent primes with a gap of 6.

Offset 1, canonical program `A210477.P14670432192590346148`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031924, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210477 (n : ℕ) : ℤ :=
  A210477.P14670432192590346148.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031924, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210477.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A210939.P14413920442416085938

`∪[A136798(n+1), A165972(n+1)]`
-/

namespace A210939.P14413920442416085938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210939.P14413920442416085938

noncomputable section

/-- A210939: Nonprime nearest-neighbors of the primes.

Offset 1, canonical program `A210939.P14413920442416085938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210939 (n : ℕ) : ℤ :=
  (A210939.P14413920442416085938.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210940.P13267635171587036371

`∪[A000040(n+1), A045718(n)]`
-/

namespace A210940.P13267635171587036371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210940.P13267635171587036371

noncomputable section

/-- A210940: The prime numbers and their nonprime nearest-neighbors.

Offset 1, canonical program `A210940.P13267635171587036371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210940 (n : ℕ) : ℤ :=
  (A210940.P13267635171587036371.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211056.P4517017241335993892

`2*(∑[A005898(n)]-A018806(n+1))`
-/

namespace A211056.P4517017241335993892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A018806 (n + 1))

end

end A211056.P4517017241335993892

noncomputable section

/-- A211056: Number of 2 X 2 nonsingular matrices having all terms in {1,...,n}.

Offset 1, canonical program `A211056.P4517017241335993892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A211056 (n : ℕ) : ℤ :=
  A211056.P4517017241335993892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A211056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211058.P5210931366542978941

`A018806(n+1)+C((n+1)², 2)`
-/

namespace A211058.P5210931366542978941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018806 (n + 1) + (Nat.choose ((n + 1) ^ 2) 2 : ℤ)

end

end A211058.P5210931366542978941

noncomputable section

/-- A211058: Number of 2 X 2 matrices having all terms in {1,...,n} and nonnegative determinant.

Offset 1, canonical program `A211058.P5210931366542978941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A211058 (n : ℕ) : ℤ :=
  A211058.P5210931366542978941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A211058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211066.P8286299359558462828

`A018806(n+1)+A083374(n+1)-A211068(n+1)`
-/

namespace A211066.P8286299359558462828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018806 (n + 1) + (A083374 (n + 1) - A211068 (n + 1))

end

end A211066.P8286299359558462828

noncomputable section

/-- A211066: Number of 2 X 2 matrices having all terms in {1,...,n} and nonnegative even determinant.

Offset 1, canonical program `A211066.P8286299359558462828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211066 (n : ℕ) : ℤ :=
  A211066.P8286299359558462828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215310.P9578832618416328593

`∪[A141851(n+1), A215306(n+1)]`
-/

namespace A215310.P9578832618416328593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215310.P9578832618416328593

noncomputable section

/-- A215310: Primes congruent to {1, 2, 3, 4, 5} mod 11.

Offset 1, canonical program `A215310.P9578832618416328593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215310 (n : ℕ) : ℤ :=
  (A215310.P9578832618416328593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215318.P14457324379204297815

`∪[A141853(n+1), A215306(n+1)]`
-/

namespace A215318.P14457324379204297815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215318.P14457324379204297815

noncomputable section

/-- A215318: Primes congruent to {1, 2, 3, 5, 6} mod 11.

Offset 1, canonical program `A215318.P14457324379204297815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215318 (n : ℕ) : ℤ :=
  (A215318.P14457324379204297815.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215322.P6777414993162117689

`∪[A141853(n+1), A215302(n+1)]`
-/

namespace A215322.P6777414993162117689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215322.P6777414993162117689

noncomputable section

/-- A215322: Primes congruent to {1, 2, 3, 4, 6} mod 11.

Offset 1, canonical program `A215322.P6777414993162117689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215322 (n : ℕ) : ℤ :=
  (A215322.P6777414993162117689.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216255.P3667165044918371564

`A003506(n+1)*A003992(n)`
-/

namespace A216255.P3667165044918371564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) * A003992 n

end

end A216255.P3667165044918371564

noncomputable section

/-- A216255: Triangle read by rows: T(n,k) is the number of labeled rooted trees of height at most 2 that have exactly k nodes at a distance 2 from the root; n>=1, 0<=k<=n-1.

Offset 1, canonical program `A216255.P3667165044918371564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3374 terms. -/
def A216255 (n : ℕ) : ℤ :=
  A216255.P3667165044918371564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3374 terms. -/
def A216255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217213.P12089861951504689576

`2*A002740(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A217213.P12089861951504689576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002740 n

end

end A217213.P12089861951504689576

noncomputable section

/-- A217213: 2*A002740(n).

Offset 0, canonical program `A217213.P12089861951504689576`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217213 (n : ℕ) : ℤ :=
  A217213.P12089861951504689576.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217213.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217862.P18069005239171520066

`∩[A073102(n+1), A139665(n+1)]`
-/

namespace A217862.P18069005239171520066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P18069005239171520066

noncomputable section

/-- A217862: Primes p of the form p = 1 + 840*k for some k.

Offset 1, canonical program `A217862.P18069005239171520066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. -/
def A217862 (n : ℕ) : ℤ :=
  (A217862.P18069005239171520066.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. -/
def A217862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219244.P3664238137770529904

`A152467(A217659(n+1)-A185934(n+1))`
-/

namespace A219244.P3664238137770529904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A217659 (n + 1) - A185934 (n + 1)).toNat

end

end A219244.P3664238137770529904

noncomputable section

/-- A219244: Differences of two consecutive primes which both equal 1 modulo 3, divided by 6.

Offset 1, canonical program `A219244.P3664238137770529904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A219244 (n : ℕ) : ℤ :=
  A219244.P3664238137770529904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A219244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219954.P4772442507018159107

`A160727(n)+a(n-1)` with `a(0)=0`
-/

namespace A219954.P4772442507018159107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160727 n + a (n - 1)

end

end A219954.P4772442507018159107

noncomputable section

/-- A219954: (A160414(n)-1)/4, n >= 1.

Offset 1, canonical program `A219954.P4772442507018159107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219954 (n : ℕ) : ℤ :=
  A219954.P4772442507018159107.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224859.P2414491205030028482

`∩[A201734(n+1), A201818(n+1)]`
-/

namespace A224859.P2414491205030028482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224859.P2414491205030028482

noncomputable section

/-- A224859: Numbers n such that 90*n + 47 and 90*n + 49 are twin primes.

Offset 1, canonical program `A224859.P2414491205030028482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2565 terms. -/
def A224859 (n : ℕ) : ℤ :=
  (A224859.P2414491205030028482.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2565 terms. -/
def A224859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224865.P6084895308211863179

`∩[A202116(n+1), A224889(n+1)]`
-/

namespace A224865.P6084895308211863179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224865.P6084895308211863179

noncomputable section

/-- A224865: Numbers n such that 90*n + 89 and 90*n + 91 are twin primes.

Offset 1, canonical program `A224865.P6084895308211863179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2571 terms. -/
def A224865 (n : ℕ) : ℤ :=
  (A224865.P6084895308211863179.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2571 terms. -/
def A224865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224928.P3645223925701785720

`A052343(2^n)`
-/

namespace A224928.P3645223925701785720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (2 ^ n)

end

end A224928.P3645223925701785720

noncomputable section

/-- A224928: Numbers of pairs {x, y} such that x <= y and triangular(x) + triangular(y) = 2^n.

Offset 0, canonical program `A224928.P3645223925701785720`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052343, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224928 (n : ℕ) : ℤ :=
  A224928.P3645223925701785720.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052343, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225531.P17187753474832379472

`floor(A049632(n)/2)+1`
-/

namespace A225531.P17187753474832379472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049632 n : ℚ) / 2⌋ + 1

end

end A225531.P17187753474832379472

noncomputable section

/-- A225531: Number of ordered pairs (i, j) with i, j >= 0, i + j <= n and gcd(i, j) <= 1.

Offset 0, canonical program `A225531.P17187753474832379472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A225531 (n : ℕ) : ℤ :=
  A225531.P17187753474832379472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A225531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226192.P10528376356951425839

`(-1)^n*A113407(n)`
-/

namespace A226192.P10528376356951425839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113407 n

end

end A226192.P10528376356951425839

noncomputable section

/-- A226192: Expansion of phi(x^2) * psi(-x) in powers of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A226192.P10528376356951425839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226192 (n : ℕ) : ℤ :=
  A226192.P10528376356951425839.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A231507.P7530821481580684819

`record[A113646(2*n+1)-n]`
-/

namespace A231507.P7530821481580684819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113646 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231507.P7530821481580684819

noncomputable section

/-- A231507: a(n) is smallest number greater than a(n-1) such that a(n)+a(n-1) is composite.

Offset 1, canonical program `A231507.P7530821481580684819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A231507 (n : ℕ) : ℤ :=
  A231507.P7530821481580684819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A231507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233314.P11642887588606614742

`p?[A005843(A191558(n+2))-A191558(n+8)]`
-/

namespace A233314.P11642887588606614742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A191558 (n + 2)).toNat - A191558 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A233314.P11642887588606614742

noncomputable section

/-- A233314: Primes p such that p+6 and p+12 are composite.

Offset 1, canonical program `A233314.P11642887588606614742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 532 terms. -/
def A233314 (n : ℕ) : ℤ :=
  A233314.P11642887588606614742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 532 terms. -/
def A233314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234575.P18192962525391776132

`A048158(n+1)+A010766(n+1)`
-/

namespace A234575.P18192962525391776132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + A010766 (n + 1)

end

end A234575.P18192962525391776132

noncomputable section

/-- A234575: Triangle T(n, k) read by rows: T(n, k) = floor(n/k) + n mod k.

Offset 1, canonical program `A234575.P18192962525391776132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234575 (n : ℕ) : ℤ :=
  A234575.P18192962525391776132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234575.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A237500.P16062265895415662057

`∑[2*A011946(n+1)]`
-/

namespace A237500.P16062265895415662057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237500.P16062265895415662057

noncomputable section

/-- A237500: Number of binary strings of length 2n which contain the ones' complement of each of their two halves.

Offset 1, canonical program `A237500.P16062265895415662057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A237500 (n : ℕ) : ℤ :=
  A237500.P16062265895415662057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A237500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237627.P1222492661179274990

`(A070689(n+1)+1)*(A070689(n+1)²+1)`
-/

namespace A237627.P1222492661179274990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070689 (n + 1) + 1) * (A070689 (n + 1) ^ 2 + 1)

end

end A237627.P1222492661179274990

noncomputable section

/-- A237627: Semiprimes of the form n^3 + n^2 + n + 1.

Offset 1, canonical program `A237627.P1222492661179274990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237627 (n : ℕ) : ℤ :=
  A237627.P1222492661179274990.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237811.P5036255404154694542

`p?[A088764(n+1)-2]`
-/

namespace A237811.P5036255404154694542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088764 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237811.P5036255404154694542

noncomputable section

/-- A237811: Primes p such that 2*p+1 and 2*p+9 are also prime.

Offset 1, canonical program `A237811.P5036255404154694542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 897 terms. -/
def A237811 (n : ℕ) : ℤ :=
  A237811.P5036255404154694542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 897 terms. -/
def A237811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238951.P14408596811991432527

`floor(A062799(n+1)/2)`
-/

namespace A238951.P14408596811991432527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062799 (n + 1) : ℚ) / 2⌋

end

end A238951.P14408596811991432527

noncomputable section

/-- A238951: Number of arcs from odd to even level vertices in divisor lattice D(n).

Offset 1, canonical program `A238951.P14408596811991432527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238951 (n : ℕ) : ℤ :=
  A238951.P14408596811991432527.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238951.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239462.P1481297013341155621

`A239459(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A239462.P1481297013341155621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239459 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A239462.P1481297013341155621

noncomputable section

/-- A239462: A239459(n) / n.

Offset 1, canonical program `A239462.P1481297013341155621`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239462 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A239462.P1481297013341155621.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A241084.P18000526313484503449

`∑[A240711(n+1)-A135036(n+1)]`
-/

namespace A241084.P18000526313484503449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240711 (n + 1) - A135036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241084.P18000526313484503449

noncomputable section

/-- A241084: Sum of the second largest parts of the partitions of 4n into 4 parts.

Offset 1, canonical program `A241084.P18000526313484503449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241084 (n : ℕ) : ℤ :=
  A241084.P18000526313484503449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242255.P8978324754123545430

`A000040(A242254(n+1))`
-/

namespace A242255.P8978324754123545430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A242254 (n + 1)).toNat

end

end A242255.P8978324754123545430

noncomputable section

/-- A242255: Primes-greedy summable primes, as defined at A242252.

Offset 1, canonical program `A242255.P8978324754123545430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A242255 (n : ℕ) : ℤ :=
  A242255.P8978324754123545430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A242255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242398.P7293458686205379350

`∑[A048614(n+1)]`
-/

namespace A242398.P7293458686205379350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242398.P7293458686205379350

noncomputable section

/-- A242398: Partial sums of the number of primes separating successive pairs of twin primes.

Offset 1, canonical program `A242398.P7293458686205379350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242398 (n : ℕ) : ℤ :=
  A242398.P7293458686205379350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242768.P9991712360003241980

`A242767(A082462(n+1)+2)`
-/

namespace A242768.P9991712360003241980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (A082462 (n + 1) + 2).toNat

end

end A242768.P9991712360003241980

noncomputable section

/-- A242768: Indices of twin primes in {A242758(n)-3}.

Offset 2, canonical program `A242768.P9991712360003241980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A242768 (n : ℕ) : ℤ :=
  A242768.P9991712360003241980.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A242768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242913.P1693692054052103084

`eq[1, A048614(n+1)]+2`
-/

namespace A242913.P1693692054052103084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242913.P1693692054052103084

noncomputable section

/-- A242913: Positions of smaller of twin primes in A001359 with index 3.

Offset 1, canonical program `A242913.P1693692054052103084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 987 terms. -/
def A242913 (n : ℕ) : ℤ :=
  (A242913.P1693692054052103084.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 987 terms. -/
def A242913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242917.P14744434532373284957

`eq[2, A048614(n+1)]+2`
-/

namespace A242917.P14744434532373284957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242917.P14744434532373284957

noncomputable section

/-- A242917: Positions of smaller of twin primes in A001359 with index 4.

Offset 1, canonical program `A242917.P14744434532373284957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 937 terms. -/
def A242917 (n : ℕ) : ℤ :=
  (A242917.P14744434532373284957.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 937 terms. -/
def A242917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242918.P2919703663841079381

`eq[3, A048614(n+1)]+2`
-/

namespace A242918.P2919703663841079381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242918.P2919703663841079381

noncomputable section

/-- A242918: Positions of smaller of twin primes in A001359 with index 5.

Offset 1, canonical program `A242918.P2919703663841079381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A242918 (n : ℕ) : ℤ :=
  (A242918.P2919703663841079381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A242918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242919.P10807504010628949303

`eq[4, A048614(n+1)]+2`
-/

namespace A242919.P10807504010628949303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242919.P10807504010628949303

noncomputable section

/-- A242919: Positions of smaller of twin primes in A001359 with index 6.

Offset 1, canonical program `A242919.P10807504010628949303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. -/
def A242919 (n : ℕ) : ℤ :=
  (A242919.P10807504010628949303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. -/
def A242919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243887.P5598863365777822828

`A216244(n+2)-1`
-/

namespace A243887.P5598863365777822828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216244 (n + 2) - 1

end

end A243887.P5598863365777822828

noncomputable section

/-- A243887: (p^2 - 3)/2 for odd primes p.

Offset 1, canonical program `A243887.P5598863365777822828`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A216244, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243887 (n : ℕ) : ℤ :=
  A243887.P5598863365777822828.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A216244, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244217.P14050716131319478096

`A072795(n+1)-A082852(n+1)`
-/

namespace A244217.P14050716131319478096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072795 (n + 1) - A082852 (n + 1)

end

end A244217.P14050716131319478096

noncomputable section

/-- A244217: Numbers k less than twice the largest Catalan number that is less than or equal to k.

Offset 1, canonical program `A244217.P14050716131319478096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6918 terms. -/
def A244217 (n : ℕ) : ℤ :=
  A244217.P14050716131319478096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6918 terms. -/
def A244217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244225.P2560900493130344478

`n-A244229(n)`
-/

namespace A244225.P2560900493130344478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A244229 n

end

end A244225.P2560900493130344478

noncomputable section

/-- A244225: a(n) = Number of nonnegative integers 0 <= k <= n, which have an odd representation in Greedy Catalan Base (A014418).

Offset 0, canonical program `A244225.P2560900493130344478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244225 (n : ℕ) : ℤ :=
  A244225.P2560900493130344478.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244225.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244416.P2063470347313486069

`6^A244417(n+1)`
-/

namespace A244416.P2063470347313486069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A244417 (n + 1) : ℤ)

end

end A244416.P2063470347313486069

noncomputable section

/-- A244416: 6-adic value of 1/n for n >= 1.

Offset 1, canonical program `A244416.P2063470347313486069`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244417, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244416 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A244416.P2063470347313486069.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244417, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244416.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244637.P8806266305917714625

`p?[A048261(n+1)]`
-/

namespace A244637.P8806266305917714625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244637.P8806266305917714625

noncomputable section

/-- A244637: Primes that are the sum of the squares of distinct primes.

Offset 1, canonical program `A244637.P8806266305917714625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A244637 (n : ℕ) : ℤ :=
  A244637.P8806266305917714625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A244637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245243.P2455969783537208925

`C(A335821(n), A004247(n))`
-/

namespace A245243.P2455969783537208925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A335821 n).toNat (A004247 n).toNat

end

end A245243.P2455969783537208925

noncomputable section

/-- A245243: Triangle, read by rows, defined by T(n,k) = C(n^2 - k^2, n*k - k^2), for k=0..n, n>=0.

Offset 0, canonical program `A245243.P2455969783537208925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A245243 (n : ℕ) : ℤ :=
  (A245243.P2455969783537208925.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A245243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246331.P1220208335490983304

`A151920(4*n)`
-/

namespace A246331.P1220208335490983304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151920 (4 * n)

end

end A246331.P1220208335490983304

noncomputable section

/-- A246331: Total number of ON cells at stage 2n of two-dimensional 5-neighbor outer totalistic cellular automaton defined by "Rule 465".

Offset 0, canonical program `A246331.P1220208335490983304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1932 terms. -/
def A246331 (n : ℕ) : ℤ :=
  A246331.P1220208335490983304.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1932 terms. -/
def A246331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246862.P11634344800982131065

`A113407(2*n)`
-/

namespace A246862.P11634344800982131065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113407 (2 * n)

end

end A246862.P11634344800982131065

noncomputable section

/-- A246862: Expansion of phi(x) * f(x^3, x^5) in powers of x where phi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A246862.P11634344800982131065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246862 (n : ℕ) : ℤ :=
  A246862.P11634344800982131065.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246862.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246863.P8534454379903877911

`A113407(2*n+1)`
-/

namespace A246863.P8534454379903877911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113407 (2 * n + 1)

end

end A246863.P8534454379903877911

noncomputable section

/-- A246863: Expansion of phi(x) * f(x^1, x^7) in powers of x where phi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A246863.P8534454379903877911`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246863 (n : ℕ) : ℤ :=
  A246863.P8534454379903877911.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246863.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246923.P3595915854699969932

`A084771(n)²`
-/

namespace A246923.P3595915854699969932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084771 n ^ 2

end

end A246923.P3595915854699969932

noncomputable section

/-- A246923: Expansion of g.f.: 1 / AGM(1-9*x, sqrt((1-x)*(1-81*x))).

Offset 0, canonical program `A246923.P3595915854699969932`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084771, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246923 (n : ℕ) : ℤ :=
  A246923.P3595915854699969932.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084771, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246923.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249304.P12237902609778404011

`A267582(n)-A001316(n)`
-/

namespace A249304.P12237902609778404011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267582 n - A001316 n

end

end A249304.P12237902609778404011

noncomputable section

/-- A249304: Number of zeros in row n of triangle A249133.

Offset 0, canonical program `A249304.P12237902609778404011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249304 (n : ℕ) : ℤ :=
  A249304.P12237902609778404011.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250438.P5885803713848844498

`A250437(n+1)²/A250427(n+1)`
-/

namespace A250438.P5885803713848844498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250437 (n + 1) ^ 2 : ℚ) / (A250427 (n + 1) : ℚ)

end

end A250438.P5885803713848844498

noncomputable section

/-- A250438: Number of (n+1)X(3+1) 0..2 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250438.P5885803713848844498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250438 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A250438.P5885803713848844498.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250439.P10183614491863266248

`A250430(n+1)/A250426(n+1)*A250437(n+1)`
-/

namespace A250439.P10183614491863266248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250430 (n + 1) : ℚ) / (A250426 (n + 1) : ℚ) * (A250437 (n + 1) : ℚ)

end

end A250439.P10183614491863266248

noncomputable section

/-- A250439: Number of (n+1)X(4+1) 0..2 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250439.P10183614491863266248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250439 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A250439.P10183614491863266248.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254981.P1738555244851722157

`∑{d}[n+1, A254926(#)]`
-/

namespace A254981.P1738555244851722157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254926 d

end

end A254981.P1738555244851722157

noncomputable section

/-- A254981: a(n) is the sum of the divisors d of n such that n/d is cubefree.

Offset 1, canonical program `A254981.P1738555244851722157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254981 (n : ℕ) : ℤ :=
  A254981.P1738555244851722157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256785.P5991345614237837728

`eq[2, A107279(A244040(2*n))]`
-/

namespace A256785.P5991345614237837728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A244040 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256785.P5991345614237837728

noncomputable section

/-- A256785: Numbers n such that digitsum(n) is a whole number when n is represented in the fractional base 1.5 = 3/2.

Offset 1, canonical program `A256785.P5991345614237837728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256785 (n : ℕ) : ℤ :=
  (A256785.P5991345614237837728.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257403.P16021545718010594509

`A000089(A065331(n+1))*A035172(n+1)`
-/

namespace A257403.P16021545718010594509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A065331 (n + 1)).toNat * A035172 (n + 1)

end

end A257403.P16021545718010594509

noncomputable section

/-- A257403: Multiplicative with a(2) = 1, a(2^e) = 0 if e>1, a(3^e) = 0^e, a(p^e) = e+1 if p == 1, 3 (mod 8), a(p^e) = (1 + (-1)^e) / 2 if p == 5, 7 (mod 8).

Offset 1, canonical program `A257403.P16021545718010594509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257403 (n : ℕ) : ℤ :=
  A257403.P16021545718010594509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258030.P11599333897736329211

`A000040(A258027(n+1))`
-/

namespace A258030.P11599333897736329211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A258027 (n + 1)).toNat

end

end A258030.P11599333897736329211

noncomputable section

/-- A258030: Numbers prime(k) such that D(prime(k), 3) > 0, where D( * , 3) = 3rd difference.

Offset 1, canonical program `A258030.P11599333897736329211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258030 (n : ℕ) : ℤ :=
  A258030.P11599333897736329211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258031.P14878230134695789763

`A000040(A258028(n+1))`
-/

namespace A258031.P14878230134695789763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A258028 (n + 1)).toNat

end

end A258031.P14878230134695789763

noncomputable section

/-- A258031: Numbers prime(k) such that D(prime(k), 3) < 0, where D( * , 3) = 3rd difference.

Offset 1, canonical program `A258031.P14878230134695789763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258031 (n : ℕ) : ℤ :=
  A258031.P14878230134695789763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258432.P15631992266083377163

`comp[A257762(n+1)]+1`
-/

namespace A258432.P15631992266083377163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A258432.P15631992266083377163

noncomputable section

/-- A258432: Smallest number m such that A062234(m) = A062234(m-1+k) for k = 1..A258383(n).

Offset 1, canonical program `A258432.P15631992266083377163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258432 (n : ℕ) : ℤ :=
  (A258432.P15631992266083377163.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258867.P13721071682918196558

`eq[0, A113407(n)]`
-/

namespace A258867.P13721071682918196558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113407 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P13721071682918196558

noncomputable section

/-- A258867: Positions n where A185653(n) = 0.

Offset 1, canonical program `A258867.P13721071682918196558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2580 terms. -/
def A258867 (n : ℕ) : ℤ :=
  (A258867.P13721071682918196558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2580 terms. -/
def A258867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260640.P3177031407237678079

`record[n+1-A120624(n+1)*A260636(n+1)]`
-/

namespace A260640.P3177031407237678079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A120624 (n + 1) * A260636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260640.P3177031407237678079

noncomputable section

/-- A260640: Numbers n such that binomial(3*n,n) == 0 (mod n).

Offset 1, canonical program `A260640.P3177031407237678079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1183 terms. -/
def A260640 (n : ℕ) : ℤ :=
  A260640.P3177031407237678079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1183 terms. -/
def A260640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260941.P3409295880907561442

`A112606(n)*A131713(n)`
-/

namespace A260941.P3409295880907561442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112606 n * A131713 n

end

end A260941.P3409295880907561442

noncomputable section

/-- A260941: Expansion of phi(-x) * phi(x^6) / chi(-x^3) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A260941.P3409295880907561442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260941 (n : ℕ) : ℤ :=
  A260941.P3409295880907561442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261022.P16725820296647045174

`2*∩[A001043(n+1), A072568(n+1)]`
-/

namespace A261022.P16725820296647045174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261022.P16725820296647045174

noncomputable section

/-- A261022: Numbers that are the sum of 2 successive primes and also twice the sum of 2 lesser successive primes.

Offset 1, canonical program `A261022.P16725820296647045174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1143 terms. -/
def A261022 (n : ℕ) : ℤ :=
  (A261022.P16725820296647045174.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1143 terms. -/
def A261022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261225.P9013570553216359185

`n-A055401(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261225.P9013570553216359185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055401 n

end

end A261225.P9013570553216359185

noncomputable section

/-- A261225: n minus the number of positive cubes needed to sum to n using the greedy algorithm: a(n) = n - A055401(n).

Offset 0, canonical program `A261225.P9013570553216359185`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261225 (n : ℕ) : ℤ :=
  A261225.P9013570553216359185.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261225.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261871.P2363050559107076458

`∩[A005818(n+1), A382875(n+1)]`
-/

namespace A261871.P2363050559107076458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261871.P2363050559107076458

noncomputable section

/-- A261871: Numbers of the form (2*j-1)*(2^k-1); j>=1, k>=2.

Offset 1, canonical program `A261871.P2363050559107076458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4518 terms. -/
def A261871 (n : ℕ) : ℤ :=
  (A261871.P2363050559107076458.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4518 terms. -/
def A261871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262520.P5646456857022786100

`A262519(n)-A262518(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262520.P5646456857022786100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262519 n - A262518 n

end

end A262520.P5646456857022786100

noncomputable section

/-- A262520: a(n) = A262519(n) - A262518(n).

Offset 0, canonical program `A262520.P5646456857022786100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262518, A262519, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A262520 (n : ℕ) : ℤ :=
  A262520.P5646456857022786100.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262518, A262519, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A262520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262521.P6675054301120771592

`lt[A262519(n), A262518(n)]`
-/

namespace A262521.P6675054301120771592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262519 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262518 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A262521.P6675054301120771592

noncomputable section

/-- A262521: Numbers where A262520 takes a negative value; numbers n for which A155043(2n) > A155043(2n + 1).

Offset 1, canonical program `A262521.P6675054301120771592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A262521 (n : ℕ) : ℤ :=
  (A262521.P6675054301120771592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A262521.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A264619.P7879630429741435189

`xor(A062383(n), A264618(n))`
-/

namespace A264619.P7879630429741435189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A062383 n) (A264618 n)

end

end A264619.P7879630429741435189

noncomputable section

/-- A264619: a(0) = 1; for n>0, working in binary, write n followed by 1 then n-reversed (including leading zeros); show result in base 10.

Offset 0, canonical program `A264619.P7879630429741435189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264619 (n : ℕ) : ℤ :=
  A264619.P7879630429741435189.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265027.P2893098001650246285

`A265026(n+2)/6`
-/

namespace A265027.P2893098001650246285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265026 (n + 2) : ℚ) / 6

end

end A265027.P2893098001650246285

noncomputable section

/-- A265027: First differences of A048701 divided by 6.

Offset 2, canonical program `A265027.P2893098001650246285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265027 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A265027.P2893098001650246285.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265027.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265028.P3632854501498841608

`Δ[A264618(n)]`
-/

namespace A265028.P3632854501498841608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265028.P3632854501498841608

noncomputable section

/-- A265028: First differences of A264618.

Offset 1, canonical program `A265028.P3632854501498841608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265028 (n : ℕ) : ℤ :=
  A265028.P3632854501498841608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265754.P15446739987536861634

`A265332(n+2)-A036987(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265754.P15446739987536861634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (n + 2) - A036987 (n + 1)

end

end A265754.P15446739987536861634

noncomputable section

/-- A265754: Reduced frequency counts for A004001: a(n) = A265332(n+1) - A036987(n).

Offset 1, canonical program `A265754.P15446739987536861634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265332, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265754 (n : ℕ) : ℤ :=
  A265754.P15446739987536861634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265332, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265906.P889638552289074279

`A153880(A265905(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265906.P889638552289074279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A265905 (n + 1)).toNat

end

end A265906.P889638552289074279

noncomputable section

/-- A265906: a(n) = A153880(A265905(n)); also the first differences of A265905.

Offset 1, canonical program `A265906.P889638552289074279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, A265905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265906 (n : ℕ) : ℤ :=
  A265906.P889638552289074279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, A265905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266620.P16243253378753888357

`A066169(n+1)+1-A294619(n)`
-/

namespace A266620.P16243253378753888357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (n + 1) + (1 - A294619 n)

end

end A266620.P16243253378753888357

noncomputable section

/-- A266620: a(n) = least non-divisor of n!.

Offset 1, canonical program `A266620.P16243253378753888357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266620 (n : ℕ) : ℤ :=
  A266620.P16243253378753888357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266974.P14409623839037846258

`or(A266298(n), A266843(n))`
-/

namespace A266974.P14409623839037846258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266298 n) (A266843 n)

end

end A266974.P14409623839037846258

noncomputable section

/-- A266974: Triangle read by rows giving successive states of cellular automaton generated by "Rule 78" initiated with a single ON (black) cell.

Offset 0, canonical program `A266974.P14409623839037846258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266974 (n : ℕ) : ℤ :=
  A266974.P14409623839037846258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267001.P6280962808153602373

`A266848(2*n-A053187(n))`
-/

namespace A267001.P6280962808153602373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266848 ((2 * n : ℤ) - A053187 n).toNat

end

end A267001.P6280962808153602373

noncomputable section

/-- A267001: Triangle read by rows giving successive states of cellular automaton generated by "Rule 83" initiated with a single ON (black) cell.

Offset 0, canonical program `A267001.P6280962808153602373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267001 (n : ℕ) : ℤ :=
  A267001.P6280962808153602373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268353.P10442916145150323975

`A007814(A080076(n+1)-1)`
-/

namespace A268353.P10442916145150323975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A080076 (n + 1) - 1).toNat

end

end A268353.P10442916145150323975

noncomputable section

/-- A268353: a(n) is the exponent of 2 corresponding to the n-th Proth prime.

Offset 1, canonical program `A268353.P10442916145150323975`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268353 (n : ℕ) : ℤ :=
  A268353.P10442916145150323975.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268353.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270003.P10437175995415337876

`A143545(n+1)%2+2`
-/

namespace A270003.P10437175995415337876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143545 (n + 1)) 2 + 2

end

end A270003.P10437175995415337876

noncomputable section

/-- A270003: Least prime p such that n = p + q - r for some primes q and r with q > p.

Offset 1, canonical program `A270003.P10437175995415337876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270003 (n : ℕ) : ℤ :=
  A270003.P10437175995415337876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270198.P16908644068517070452

`A054429(A055938(A054429(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A270198.P16908644068517070452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A055938 (A054429 (n + 1)).toNat).toNat

end

end A270198.P16908644068517070452

noncomputable section

/-- A270198: a(n) = A054429(A055938(A054429(n))).

Offset 1, canonical program `A270198.P16908644068517070452`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A055938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270198 (n : ℕ) : ℤ :=
  A270198.P16908644068517070452.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A055938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270198.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272078.P17155082553689015027

`eq[4, A261609(n+1)]+1`
-/

namespace A272078.P17155082553689015027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272078.P17155082553689015027

noncomputable section

/-- A272078: Numbers k such that k^2 + 1 is product of 3 distinct primes.

Offset 1, canonical program `A272078.P17155082553689015027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A272078 (n : ℕ) : ℤ :=
  (A272078.P17155082553689015027.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A272078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276789.P3535134119243695297

`A003145(n+2)-A003145(n+1)`
-/

namespace A276789.P3535134119243695297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 2) - A003145 (n + 1)

end

end A276789.P3535134119243695297

noncomputable section

/-- A276789: First differences of A003145.

Offset 1, canonical program `A276789.P3535134119243695297`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276789 (n : ℕ) : ℤ :=
  A276789.P3535134119243695297.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276789.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276932.P111272194335471514

`A153880(A273670(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276932.P111272194335471514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A273670 n).toNat

end

end A276932.P111272194335471514

noncomputable section

/-- A276932: Row 2 of A276953: a(n) = A153880(A273670(n)).

Offset 0, canonical program `A276932.P111272194335471514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, A273670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276932 (n : ℕ) : ℤ :=
  A276932.P111272194335471514.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, A273670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276933.P13598886561639021604

`A153880(A153880(A273670(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276933.P13598886561639021604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A153880 (A273670 n).toNat).toNat

end

end A276933.P13598886561639021604

noncomputable section

/-- A276933: Row 3 of A276953: a(n) = A153880(A153880(A273670(n))).

Offset 0, canonical program `A276933.P13598886561639021604`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, A273670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276933 (n : ℕ) : ℤ :=
  A276933.P13598886561639021604.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, A273670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276948.P2344237958782666120

`A273670(n+1)-A273670(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276948.P2344237958782666120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 (n + 1) - A273670 n

end

end A276948.P2344237958782666120

noncomputable section

/-- A276948: First differences of A273670: a(n) = A273670(n) - A273670(n-1).

Offset 1, canonical program `A276948.P2344237958782666120`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A273670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276948 (n : ℕ) : ℤ :=
  A276948.P2344237958782666120.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A273670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276950.P3224110198419510546

`char[A273670(n)]`
-/

namespace A276950.P3224110198419510546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A276950.P3224110198419510546

noncomputable section

/-- A276950: Characteristic function for A273670: 1 if there is at least one maximal digit present in the factorial representation of n (A007623), otherwise 0.

Offset 0, canonical program `A276950.P3224110198419510546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A276950 (n : ℕ) : ℤ :=
  (A276950.P3224110198419510546.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A276950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277910.P10787059213023238981

`1+A277909(n+1)`
-/

namespace A277910.P10787059213023238981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A277909 (n + 1)

end

end A277910.P10787059213023238981

noncomputable section

/-- A277910: Numbers n for which A277911(n) = n-1.

Offset 1, canonical program `A277910.P10787059213023238981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277910 (n : ℕ) : ℤ :=
  A277910.P10787059213023238981.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277910.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278040.P10650196326427599491

`A003145(n+1)-1`
-/

namespace A278040.P10650196326427599491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1) - 1

end

end A278040.P10650196326427599491

noncomputable section

/-- A278040: The tribonacci representation of a(n) is obtained by appending 0,1 to the tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A278040.P10650196326427599491`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278040 (n : ℕ) : ℤ :=
  A278040.P10650196326427599491.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278083.P13856348263400599348

`A060968(Δ[n²])`
-/

namespace A278083.P13856348263400599348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278083.P13856348263400599348

noncomputable section

/-- A278083: a(n) is 1/6 of the number of primitive integral quadruples with sum = 2*m and sum of squares = 2*m^2, where m = 2*n-1.

Offset 1, canonical program `A278083.P13856348263400599348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A278083 (n : ℕ) : ℤ :=
  A278083.P13856348263400599348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A278083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280114.P2386266783669017223

`∑[A175317(n+1)]`
-/

namespace A280114.P2386266783669017223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280114.P2386266783669017223

noncomputable section

/-- A280114: Partial sums of A175317 (Sum_{d|n} pod(d)).

Offset 1, canonical program `A280114.P2386266783669017223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A280114 (n : ℕ) : ℤ :=
  A280114.P2386266783669017223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A280114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280509.P5809525915846432635

`A051064(A246200(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280509.P5809525915846432635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A246200 (n + 1)).toNat

end

end A280509.P5809525915846432635

noncomputable section

/-- A280509: a(n) = A051064(A246200(n)); 3-adic valuation of A057889(3*n).

Offset 1, canonical program `A280509.P5809525915846432635`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280509 (n : ℕ) : ℤ :=
  A280509.P5809525915846432635.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280509.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A283908.P12039075813356450362

`A290418(n-(1-n)%(n+1))`
-/

namespace A283908.P12039075813356450362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290418 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A283908.P12039075813356450362

noncomputable section

/-- A283908: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A283908.P12039075813356450362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A283908 (n : ℕ) : ℤ :=
  A283908.P12039075813356450362.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A283908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284120.P6392286246842557568

`A258746(A117120(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284120.P6392286246842557568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258746 (A117120 (n + 1)).toNat

end

end A284120.P6392286246842557568

noncomputable section

/-- A284120: Permutation of the positive integers: a(n) = A258746(A117120(n)) = A117120(A258746(n)).

Offset 1, canonical program `A284120.P6392286246842557568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117120, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284120 (n : ℕ) : ℤ :=
  A284120.P6392286246842557568.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117120, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284120.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284885.P16570972123802318958

`A284883(n+1)/2`
-/

namespace A284885.P16570972123802318958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284883 (n + 1) : ℚ) / 2

end

end A284885.P16570972123802318958

noncomputable section

/-- A284885: (A284883)/2.

Offset 1, canonical program `A284885.P16570972123802318958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A284885.P16570972123802318958.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285351.P12400024193662104622

`2*(n+1)+1-A285346(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285351.P12400024193662104622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + (1 - A285346 (n + 1))

end

end A285351.P12400024193662104622

noncomputable section

/-- A285351: a(n) = 2n + 1 - A285346(n).

Offset 1, canonical program `A285351.P12400024193662104622`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285351 (n : ℕ) : ℤ :=
  A285351.P12400024193662104622.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285351.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286048.P9111352750848664703

`A004767(n)-A286047(n+1)`
-/

namespace A286048.P9111352750848664703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A286047 (n + 1)

end

end A286048.P9111352750848664703

noncomputable section

/-- A286048: Positions of 1 in A286046; complement of A286047.

Offset 1, canonical program `A286048.P9111352750848664703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286048 (n : ℕ) : ℤ :=
  A286048.P9111352750848664703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286049.P11350509932985132439

`char[A286051(n+1)-1]`
-/

namespace A286049.P11350509932985132439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286051 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286049.P11350509932985132439

noncomputable section

/-- A286049: {110->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A286049.P11350509932985132439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286049 (n : ℕ) : ℤ :=
  (A286049.P11350509932985132439.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286066.P5999862173123358208

`A284934(A143331(n+1)+n)-A143331(n+1)`
-/

namespace A286066.P5999862173123358208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284934 (A143331 (n + 1) + (n : ℤ)).toNat - A143331 (n + 1)

end

end A286066.P5999862173123358208

noncomputable section

/-- A286066: Positions of 1 in A286064; complement of A286065.

Offset 1, canonical program `A286066.P5999862173123358208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286066 (n : ℕ) : ℤ :=
  A286066.P5999862173123358208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286801.P2102935286096413746

`char[A286803(n+1)-1]`
-/

namespace A286801.P2102935286096413746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286803 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286801.P2102935286096413746

noncomputable section

/-- A286801: {0->110, 1->010}-transform of the Pell word, A171588.

Offset 1, canonical program `A286801.P2102935286096413746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286801 (n : ℕ) : ℤ :=
  (A286801.P2102935286096413746.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287028.P2613971056566659341

`1-A286990(n+1)`
-/

namespace A287028.P2613971056566659341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286990 (n + 1)

end

end A287028.P2613971056566659341

noncomputable section

/-- A287028: {0->101, 1->010}-transform of the Sturmian word A080764.

Offset 1, canonical program `A287028.P2613971056566659341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287028 (n : ℕ) : ℤ :=
  A287028.P2613971056566659341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287553.P11148344650868308369

`-xor(2, -A287555(n+1))`
-/

namespace A287553.P11148344650868308369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (-A287555 (n + 1))

end

end A287553.P11148344650868308369

noncomputable section

/-- A287553: Positions of 1 in A053839.

Offset 1, canonical program `A287553.P11148344650868308369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287553 (n : ℕ) : ℤ :=
  A287553.P11148344650868308369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288022.P13806557595186574534

`∩[A030432(n+1), A031924(n+1)]`
-/

namespace A288022.P13806557595186574534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P13806557595186574534

noncomputable section

/-- A288022: Prime p1 of consecutive primes p1, p2, where p2 - p1 = 6, and p1, p2 are in different decades.

Offset 1, canonical program `A288022.P13806557595186574534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2124 terms. -/
def A288022 (n : ℕ) : ℤ :=
  (A288022.P13806557595186574534.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2124 terms. -/
def A288022.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A120427.P17896066987903461565

`4*A020888(n+1)`
-/

namespace A120427.P17896066987903461565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020888 (n + 1)

end

end A120427.P17896066987903461565

noncomputable section

/-- A120427: For each y >= 1 there are only finitely many values of x >= 1 such that x-y and x+y are both squares; list all such pairs (x,y) with gcd(x,y) = 1 ordered by values of y; sequence gives y values.

Offset 1, canonical program `A120427.P17896066987903461565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120427 (n : ℕ) : ℤ :=
  A120427.P17896066987903461565.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120427.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120890.P8934076253784631552

`∑[2*char[∑[A024361(2*n+1)]]]+1`
-/

namespace A120890.P8934076253784631552
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A120890.P8934076253784631552

noncomputable section

/-- A120890: Ordered odd leg of primitive Pythagorean triangles.

Offset 1, canonical program `A120890.P8934076253784631552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120890 (n : ℕ) : ℤ :=
  (A120890.P8934076253784631552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120891.P14989150919995251867

`A024361(Δ[n²])`
-/

namespace A120891.P14989150919995251867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A120891.P14989150919995251867

noncomputable section

/-- A120891: Number of primitive Pythagorean triangles with odd leg 2n-1.

Offset 1, canonical program `A120891.P14989150919995251867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120891 (n : ℕ) : ℤ :=
  A120891.P14989150919995251867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121443.P2966999353151604800

`A038500(n+1)*A186099(n+1)`
-/

namespace A121443.P2966999353151604800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1) * A186099 (n + 1)

end

end A121443.P2966999353151604800

noncomputable section

/-- A121443: Sum of divisors d of n which are odd and n/d is not divisible by 3.

Offset 1, canonical program `A121443.P2966999353151604800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121443 (n : ℕ) : ℤ :=
  A121443.P2966999353151604800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121495.P8991942477691651037

`A120944(eq[1, A120944(n+2)-A120944(n+1)]+1)`
-/

namespace A121495.P8991942477691651037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 2) - A120944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121495.P8991942477691651037

noncomputable section

/-- A121495: Numbers k such that k and k+1 are composite and squarefree.

Offset 1, canonical program `A121495.P8991942477691651037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4813 terms. -/
def A121495 (n : ℕ) : ℤ :=
  A121495.P8991942477691651037.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4813 terms. -/
def A121495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121762.P7258193871153872247

`p?[A107472(n+1)-2]`
-/

namespace A121762.P7258193871153872247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107472 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121762.P7258193871153872247

noncomputable section

/-- A121762: Single (or isolated or non-twin) primes of form 6n-1.

Offset 1, canonical program `A121762.P7258193871153872247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A121762 (n : ℕ) : ℤ :=
  A121762.P7258193871153872247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A121762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121764.P18179720075456038304

`p?[A107472(n+1)+2]`
-/

namespace A121764.P18179720075456038304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107472 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121764.P18179720075456038304

noncomputable section

/-- A121764: Single (or isolated or non-twin) primes of form 6n + 1.

Offset 1, canonical program `A121764.P18179720075456038304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A121764 (n : ℕ) : ℤ :=
  A121764.P18179720075456038304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A121764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122190.P11139761942879363601

`A053694(4*n)`
-/

namespace A122190.P11139761942879363601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053694 (4 * n)

end

end A122190.P11139761942879363601

noncomputable section

/-- A122190: Expansion of q^(-1/4) * eta(q^2) * eta(q^5)^3 / (eta(q) * eta(q^10)) in powers of q.

Offset 0, canonical program `A122190.P11139761942879363601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053694, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122190 (n : ℕ) : ℤ :=
  A122190.P11139761942879363601.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053694, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122190.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124233.P15256239777678709145

`abs(A111949(A004277(n)-n))`
-/

namespace A124233.P15256239777678709145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111949 (A004277 n - (n : ℤ)).toNat|

end

end A124233.P15256239777678709145

noncomputable section

/-- A124233: Expansion of psi(q) * phi(-q^10) * chi(-q^5) / chi(-q^2) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A124233.P15256239777678709145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124233 (n : ℕ) : ℤ :=
  A124233.P15256239777678709145.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125071.P2644380535759538615

`∑{e}[n+1, A191558(#)]`
-/

namespace A125071.P2644380535759538615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A191558 (Nat.factorization (f1 n) p)

end

end A125071.P2644380535759538615

noncomputable section

/-- A125071: a(n) = sum of the exponents in the prime factorization of n which are not primes.

Offset 1, canonical program `A125071.P2644380535759538615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125071 (n : ℕ) : ℤ :=
  A125071.P2644380535759538615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125217.P12158118302977097912

`eq[1, A125203(n+1)]+1`
-/

namespace A125217.P12158118302977097912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125217.P12158118302977097912

noncomputable section

/-- A125217: Numbers that can be written uniquely as 4*x*y-x-y with 1<=x<=y.

Offset 1, canonical program `A125217.P12158118302977097912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2774 terms. -/
def A125217 (n : ℕ) : ℤ :=
  (A125217.P12158118302977097912.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2774 terms. -/
def A125217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125218.P3417562193377331111

`lt[1, A125203(n+1)]+1`
-/

namespace A125218.P3417562193377331111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A125218.P3417562193377331111

noncomputable section

/-- A125218: Numbers having at least two representations as 4*x*y-x-y with 1<=x<=y.

Offset 1, canonical program `A125218.P3417562193377331111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3223 terms. -/
def A125218 (n : ℕ) : ℤ :=
  (A125218.P3417562193377331111.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3223 terms. -/
def A125218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125493.P739186552021714544

`record[A191558(A005100(n+4))]`
-/

namespace A125493.P739186552021714544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A005100 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125493.P739186552021714544

noncomputable section

/-- A125493: Composite deficient numbers.

Offset 1, canonical program `A125493.P739186552021714544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A125493 (n : ℕ) : ℤ :=
  A125493.P739186552021714544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A125493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126079.P2882352660744408413

`(A002421(n)+A002420(n))/2`
-/

namespace A126079.P2882352660744408413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002421 n + A002420 n : ℚ) / 2

end

end A126079.P2882352660744408413

noncomputable section

/-- A126079: G.f.: (1-2*x)*sqrt(1-4*x).

Offset 0, canonical program `A126079.P2882352660744408413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A126079 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126079.P2882352660744408413.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A126079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126849.P3318481749340531518

`A366990(n+1)+A057428(n)`
-/

namespace A126849.P3318481749340531518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366990 (n + 1) + A057428 n

end

end A126849.P3318481749340531518

noncomputable section

/-- A126849: Sum over the divisors d of n constrained to cases where all exponents of the prime factorization of d are prime.

Offset 1, canonical program `A126849.P3318481749340531518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126849 (n : ℕ) : ℤ :=
  A126849.P3318481749340531518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129391.P2458449094293201536

`A111949(2*n+1)`
-/

namespace A129391.P2458449094293201536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (2 * n + 1)

end

end A129391.P2458449094293201536

noncomputable section

/-- A129391: Expansion of phi(-x) * phi(x^5) / (chi(-x^2) * chi(-x^10)) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A129391.P2458449094293201536`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129391 (n : ℕ) : ℤ :=
  A129391.P2458449094293201536.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129391.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130217.P16012042862340202128

`A003617(A000032(n))`
-/

namespace A130217.P16012042862340202128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A000032 n).toNat

end

end A130217.P16012042862340202128

noncomputable section

/-- A130217: Smallest prime with number of digits equal to n-th Lucas number A000032(n).

Offset 0, canonical program `A130217.P16012042862340202128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130217 (n : ℕ) : ℤ :=
  A130217.P16012042862340202128.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130217.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130319.P11129835434070302658

`record[A191558(A080513(n))+A004524(n)]`
-/

namespace A130319.P11129835434070302658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A080513 n).toNat + A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130319.P11129835434070302658

noncomputable section

/-- A130319: Numbers k for which k!!/S(k) is an integer, where S(k) is the sum of all odd numbers less than or equal to k, if k is odd, or the sum of all even numbers less than or equal to k, if k is even.

Offset 0, canonical program `A130319.P11129835434070302658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6164 terms. -/
def A130319 (n : ℕ) : ℤ :=
  A130319.P11129835434070302658.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6164 terms. -/
def A130319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131695.P15556977045309994606

`A098726(n+1)-2`
-/

namespace A131695.P15556977045309994606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098726 (n + 1) - 2

end

end A131695.P15556977045309994606

noncomputable section

/-- A131695: a(n) = 0 iff 2*prime(n+1) = prime(n) + prime(n+2), otherwise a(n) = 1.

Offset 1, canonical program `A131695.P15556977045309994606`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098726, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131695 (n : ℕ) : ℤ :=
  A131695.P15556977045309994606.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098726, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131695.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133539.P3067376241285040569

`A133525(n+1)+A030078(n+5)`
-/

namespace A133539.P3067376241285040569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133525 (n + 1) + A030078 (n + 5)

end

end A133539.P3067376241285040569

noncomputable section

/-- A133539: Sum of third powers of five consecutive primes.

Offset 1, canonical program `A133539.P3067376241285040569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, A133525, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133539 (n : ℕ) : ℤ :=
  A133539.P3067376241285040569.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, A133525, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133539.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133540.P13751763277394668418

`A133526(n+1)+A030514(n+5)`
-/

namespace A133540.P13751763277394668418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133526 (n + 1) + A030514 (n + 5)

end

end A133540.P13751763277394668418

noncomputable section

/-- A133540: Sum of fourth powers of five consecutive primes.

Offset 1, canonical program `A133540.P13751763277394668418`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030514, A133526, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133540 (n : ℕ) : ℤ :=
  A133540.P13751763277394668418.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030514, A133526, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133540.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133541.P18226434130076836402

`A133527(n+1)+A050997(n+5)`
-/

namespace A133541.P18226434130076836402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133527 (n + 1) + A050997 (n + 5)

end

end A133541.P18226434130076836402

noncomputable section

/-- A133541: Sum of fifth powers of five consecutive primes.

Offset 1, canonical program `A133541.P18226434130076836402`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050997, A133527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133541 (n : ℕ) : ℤ :=
  A133541.P18226434130076836402.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050997, A133527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133541.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133542.P11638819903937518053

`A133528(n+1)+A030516(n+5)`
-/

namespace A133542.P11638819903937518053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133528 (n + 1) + A030516 (n + 5)

end

end A133542.P11638819903937518053

noncomputable section

/-- A133542: Sum of sixth powers of five consecutive primes.

Offset 1, canonical program `A133542.P11638819903937518053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030516, A133528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133542 (n : ℕ) : ℤ :=
  A133542.P11638819903937518053.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030516, A133528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133542.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133639.P11234321483746663322

`∑{d}[n+1, A326415(#)*A365210((n+1)/#)]`
-/

namespace A133639.P11234321483746663322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326415 d * A365210 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133639.P11234321483746663322

noncomputable section

/-- A133639: Mobius transform of b(n) where b(8n + 1) = A080995(n).

Offset 1, canonical program `A133639.P11234321483746663322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133639 (n : ℕ) : ℤ :=
  A133639.P11234321483746663322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137720.P10853198425669921635

`A002420(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A137720.P10853198425669921635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002420 n + 3 * a (n - 1)

end

end A137720.P10853198425669921635

noncomputable section

/-- A137720: Expansion of sqrt(1-4*x)/(1-3*x).

Offset 0, canonical program `A137720.P10853198425669921635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A137720 (n : ℕ) : ℤ :=
  A137720.P10853198425669921635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A137720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138026.P17911807186670300887

`lt[2, A121561(n+1)]+1`
-/

namespace A138026.P17911807186670300887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A138026.P17911807186670300887

noncomputable section

/-- A138026: Numbers k where A121561(k) = 3.

Offset 1, canonical program `A138026.P17911807186670300887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7517 terms. -/
def A138026 (n : ℕ) : ℤ :=
  (A138026.P17911807186670300887.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7517 terms. -/
def A138026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138685.P1363574256665463268

`3*A059324(n+1)-2`
-/

namespace A138685.P1363574256665463268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059324 (n + 1) - 2

end

end A138685.P1363574256665463268

noncomputable section

/-- A138685: Numbers k such that there is no prime of the form 2k + p^2 for any prime p.

Offset 1, canonical program `A138685.P1363574256665463268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138685 (n : ℕ) : ℤ :=
  A138685.P1363574256665463268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139354.P2060834989768873161

`∑[∑{e}[xor(n, -n), 2-#]]-A139355(n)`
-/

namespace A139354.P2060834989768873161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139355 n

end

end A139354.P2060834989768873161

noncomputable section

/-- A139354: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives min{e(n), o(n)}.

Offset 0, canonical program `A139354.P2060834989768873161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139354 (n : ℕ) : ℤ :=
  A139354.P2060834989768873161.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139495.P6736765847276065234

`∩[A033205(n+1), A106881(n+1)]`
-/

namespace A139495.P6736765847276065234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P6736765847276065234

noncomputable section

/-- A139495: Primes of the form x^2 + 12x*y + y^2 for x and y nonnegative.

Offset 1, canonical program `A139495.P6736765847276065234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4956 terms. -/
def A139495 (n : ℕ) : ℤ :=
  (A139495.P6736765847276065234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4956 terms. -/
def A139495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139503.P5463424210265189612

`∩[A033212(n+1), A106881(n+1)]`
-/

namespace A139503.P5463424210265189612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P5463424210265189612

noncomputable section

/-- A139503: Primes of the form x^2 + 23x*y + y^2 for x and y nonnegative.

Offset 1, canonical program `A139503.P5463424210265189612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4958 terms. -/
def A139503 (n : ℕ) : ℤ :=
  (A139503.P5463424210265189612.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4958 terms. -/
def A139503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139651.P8932239673314536185

`∪[A139665(n+1), A139985(n+1)]`
-/

namespace A139651.P8932239673314536185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P8932239673314536185

noncomputable section

/-- A139651: Primes of the form x^2 + 210*y^2.

Offset 1, canonical program `A139651.P8932239673314536185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139651 (n : ℕ) : ℤ :=
  (A139651.P8932239673314536185.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139853.P13344040396729092965

`∪[A139875(n+1), A140617(n+1)]`
-/

namespace A139853.P13344040396729092965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P13344040396729092965

noncomputable section

/-- A139853: Primes of the form 11x^2+6xy+11y^2.

Offset 1, canonical program `A139853.P13344040396729092965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139853 (n : ℕ) : ℤ :=
  (A139853.P13344040396729092965.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139891.P13905630513339276774

`∪[A139987(n+1), A139996(n+1)]`
-/

namespace A139891.P13905630513339276774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139891.P13905630513339276774

noncomputable section

/-- A139891: Primes of the form 7x^2+30y^2.

Offset 1, canonical program `A139891.P13905630513339276774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139891 (n : ℕ) : ℤ :=
  (A139891.P13905630513339276774.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139912.P2269059861818370027

`∩[A038917(n+1), A102273(n+1)]`
-/

namespace A139912.P2269059861818370027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P2269059861818370027

noncomputable section

/-- A139912: Primes of the form 14x^2+14xy+23y^2.

Offset 1, canonical program `A139912.P2269059861818370027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. -/
def A139912 (n : ℕ) : ℤ :=
  (A139912.P2269059861818370027.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. -/
def A139912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139933.P14771844273237704820

`∪[A140004(n+1), A140013(n+1)]`
-/

namespace A139933.P14771844273237704820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139933.P14771844273237704820

noncomputable section

/-- A139933: Primes of the form 11x^2+30y^2.

Offset 1, canonical program `A139933.P14771844273237704820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139933 (n : ℕ) : ℤ :=
  (A139933.P14771844273237704820.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140015.P16441771883213652872

`∩[A038917(n+1), A139845(n+1)]`
-/

namespace A140015.P16441771883213652872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140015.P16441771883213652872

noncomputable section

/-- A140015: Primes of the form 3x^2+455y^2.

Offset 1, canonical program `A140015.P16441771883213652872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 619 terms. -/
def A140015 (n : ℕ) : ℤ :=
  (A140015.P16441771883213652872.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 619 terms. -/
def A140015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140221.P18236953394721170131

`record[A059247(n+1)]`
-/

namespace A140221.P18236953394721170131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140221.P18236953394721170131

noncomputable section

/-- A140221: A number n is included if n is coprime to Sum_{k=1..n} d(k), where d(k) is the number of divisors of k.

Offset 1, canonical program `A140221.P18236953394721170131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6168 terms. -/
def A140221 (n : ℕ) : ℤ :=
  A140221.P18236953394721170131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6168 terms. -/
def A140221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140630.P13312013450007682947

`∩[A139987(n+1), A140028(n+1)]`
-/

namespace A140630.P13312013450007682947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P13312013450007682947

noncomputable section

/-- A140630: Primes of the form 88x^2+32xy+127y^2.

Offset 1, canonical program `A140630.P13312013450007682947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A140630 (n : ℕ) : ℤ :=
  (A140630.P13312013450007682947.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A140630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140853.P323441421693498327

`A055003(n+1)-1`
-/

namespace A140853.P323441421693498327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (n + 1) - 1

end

end A140853.P323441421693498327

noncomputable section

/-- A140853: a(n) = prime(prime(n) - 1) - 1, where prime(n) is the n-th prime.

Offset 1, canonical program `A140853.P323441421693498327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140853 (n : ℕ) : ℤ :=
  A140853.P323441421693498327.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140853.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140900.P9807194820524683252

`eq[0, A159780(n)]`
-/

namespace A140900.P9807194820524683252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140900.P9807194820524683252

noncomputable section

/-- A140900: A nonnegative integer n is included if the binary representation of n and the digit-reversal (with leading 0's) of the binary representation of n do not have any 1's in the same position.

Offset 1, canonical program `A140900.P9807194820524683252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140900 (n : ℕ) : ℤ :=
  (A140900.P9807194820524683252.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141427.P2309035805229970157

`A067775(n+1)-1`
-/

namespace A141427.P2309035805229970157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067775 (n + 1) - 1

end

end A141427.P2309035805229970157

noncomputable section

/-- A141427: a(n) = phi(A067775(n)).

Offset 1, canonical program `A141427.P2309035805229970157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141427 (n : ℕ) : ℤ :=
  A141427.P2309035805229970157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142413.P5132067326325250209

`∩[A127576(n+1), A134517(n+1)]`
-/

namespace A142413.P5132067326325250209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P5132067326325250209

noncomputable section

/-- A142413: Primes congruent to 47 mod 48.

Offset 1, canonical program `A142413.P5132067326325250209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A142413 (n : ℕ) : ℤ :=
  (A142413.P5132067326325250209.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A142413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143323.P3371947964759797463

`(-1)^n*A111949(n+1)`
-/

namespace A143323.P3371947964759797463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A111949 (n + 1)

end

end A143323.P3371947964759797463

noncomputable section

/-- A143323: Expansion of eta(q^2)^4 * eta(q^5) * eta(q^20)^2 / ( eta(q) * eta(q^4)^2 * eta(q^10)^2 ) in powers of q.

Offset 1, canonical program `A143323.P3371947964759797463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143323 (n : ℕ) : ℤ :=
  A143323.P3371947964759797463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143444.P8311283723443882101

`A030013(n+1)-round(1/∏{e}[n+1, -#²])`
-/

namespace A143444.P8311283723443882101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (n + 1) - SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ))

end

end A143444.P8311283723443882101

noncomputable section

/-- A143444: A054525 * the primes prefaced by 0.

Offset 1, canonical program `A143444.P8311283723443882101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143444 (n : ℕ) : ℤ :=
  A143444.P8311283723443882101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A146969.P259206880826924078

`A000463(A039634(n+1))+A000038(n)`
-/

namespace A146969.P259206880826924078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A039634 (n + 1)).toNat + A000038 n

end

end A146969.P259206880826924078

noncomputable section

/-- A146969: a(1)=3, a(2)=1, a(n) = (n+1)/2 if n is an odd prime, and a(n) = a(floor(n/2)) otherwise.

Offset 1, canonical program `A146969.P259206880826924078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A146969 (n : ℕ) : ℤ :=
  A146969.P259206880826924078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A146969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147562.P880216132473412622

`A323650(2*n)/3`
-/

namespace A147562.P880216132473412622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323650 (2 * n) : ℚ) / 3

end

end A147562.P880216132473412622

noncomputable section

/-- A147562: Number of "ON" cells at n-th stage in the "Ulam-Warburton" two-dimensional cellular automaton.

Offset 0, canonical program `A147562.P880216132473412622`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323650, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147562 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A147562.P880216132473412622.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323650, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153083.P10624664622328952784

`A396571(n+1)-A153045(n+1)`
-/

namespace A153083.P10624664622328952784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396571 (n + 1) - A153045 (n + 1)

end

end A153083.P10624664622328952784

noncomputable section

/-- A153083: Numbers such that 2*n + 11 is not prime.

Offset 1, canonical program `A153083.P10624664622328952784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153083 (n : ℕ) : ℤ :=
  A153083.P10624664622328952784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153245.P2590353044541573662

`A059324(n+1)+2`
-/

namespace A153245.P2590353044541573662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059324 (n + 1) + 2

end

end A153245.P2590353044541573662

noncomputable section

/-- A153245: Numbers n>1 such that 6*n-7 is not prime.

Offset 1, canonical program `A153245.P2590353044541573662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153245 (n : ℕ) : ℤ :=
  A153245.P2590353044541573662.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154778.P14853017560092768042

`lt[1, A111949(n+1)]+1`
-/

namespace A154778.P14853017560092768042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A154778.P14853017560092768042

noncomputable section

/-- A154778: Numbers of the form a^2 + 5b^2 with positive integers a,b.

Offset 1, canonical program `A154778.P14853017560092768042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1905 terms. -/
def A154778 (n : ℕ) : ℤ :=
  (A154778.P14853017560092768042.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1905 terms. -/
def A154778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155939.P15331834315915861086

`eq[0, A096500(A269044(n))]`
-/

namespace A155939.P15331834315915861086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096500 (A269044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155939.P15331834315915861086

noncomputable section

/-- A155939: Numbers k such that 13*k + 8 is not a prime.

Offset 1, canonical program `A155939.P15331834315915861086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155939 (n : ℕ) : ℤ :=
  (A155939.P15331834315915861086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156683.P11389173112947492787

`lt[1, A024361(n+1)]+1`
-/

namespace A156683.P11389173112947492787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A156683.P11389173112947492787

noncomputable section

/-- A156683: Integers that can occur as either leg in more than one primitive Pythagorean triple.

Offset 1, canonical program `A156683.P11389173112947492787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156683 (n : ℕ) : ℤ :=
  (A156683.P11389173112947492787.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157018.P3626897528591336089

`A122197(n+1)!*A100861(A049068(n+1))`
-/

namespace A157018.P3626897528591336089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A122197 (n + 1)).toNat : ℤ) * A100861 (A049068 (n + 1)).toNat

end

end A157018.P3626897528591336089

noncomputable section

/-- A157018: Triangle T(n,k) read by rows: number of k-lists (ordered k-sets) of disjoint 2-subsets of an n-set, n>1, 0

Offset 2, canonical program `A157018.P3626897528591336089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1479 terms. -/
def A157018 (n : ℕ) : ℤ :=
  A157018.P3626897528591336089.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1479 terms. -/
def A157018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157196.P8047915011435990987

`A006466(ceil(5*n/3))`
-/

namespace A157196.P8047915011435990987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 ⌈5 * ((n : ℚ) / 3)⌉.toNat

end

end A157196.P8047915011435990987

noncomputable section

/-- A157196: a(n) = (1/2)*(sum of elements of n-th run) using 1 and 2 starting with 1,1.

Offset 1, canonical program `A157196.P8047915011435990987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157196 (n : ℕ) : ℤ :=
  A157196.P8047915011435990987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157996.P15374079906564399415

`∪[A049593(n+1), A067833(n+1)]`
-/

namespace A157996.P15374079906564399415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157996.P15374079906564399415

noncomputable section

/-- A157996: Primes which are sum of 1 and two nonconsecutive primes p1 and p2, p2 - p1 > 2.

Offset 1, canonical program `A157996.P15374079906564399415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157996 (n : ℕ) : ℤ :=
  (A157996.P15374079906564399415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159477.P17083165607606757020

`A308052(a(n-1)+n+1)` with `a(0)=1`
-/

namespace A159477.P17083165607606757020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A308052 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A159477.P17083165607606757020

noncomputable section

/-- A159477: a(n) = smallest prime >= n, if 1 is counted as a prime.

Offset 1, canonical program `A159477.P17083165607606757020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A159477 (n : ℕ) : ℤ :=
  A159477.P17083165607606757020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A159477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161840.P9787077699229106813

`2*A072670(n)`
-/

namespace A161840.P9787077699229106813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072670 n

end

end A161840.P9787077699229106813

noncomputable section

/-- A161840: Number of noncentral divisors of n.

Offset 1, canonical program `A161840.P9787077699229106813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161840 (n : ℕ) : ℤ :=
  A161840.P9787077699229106813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161945.P6716022411705922474

`A099019(n+1)-2`
-/

namespace A161945.P6716022411705922474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099019 (n + 1) - 2

end

end A161945.P6716022411705922474

noncomputable section

/-- A161945: Numbers k such that the three consecutive odd numbers {k,k+2,k+4} are all composite.

Offset 1, canonical program `A161945.P6716022411705922474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099019, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161945 (n : ℕ) : ℤ :=
  A161945.P6716022411705922474.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099019, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161945.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162237.P16848246924117746447

`p?[2*A241266(n+1)-1]`
-/

namespace A162237.P16848246924117746447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241266 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162237.P16848246924117746447

noncomputable section

/-- A162237: Primes p such that p^2+3*p+1 is not prime.

Offset 1, canonical program `A162237.P16848246924117746447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162237 (n : ℕ) : ℤ :=
  A162237.P16848246924117746447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162338.P8262832868775111247

`A023208(n%a(n-1))` with `a(0)=2`
-/

namespace A162338.P8262832868775111247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A023208 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A162338.P8262832868775111247

noncomputable section

/-- A162338: Primes q such that q = floor(p/3) for some prime p.

Offset 1, canonical program `A162338.P8262832868775111247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162338 (n : ℕ) : ℤ :=
  A162338.P8262832868775111247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164292.P14089630238313038939

`A353464(A169609(n)+n)`
-/

namespace A164292.P14089630238313038939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A169609 n + (n : ℤ)).toNat

end

end A164292.P14089630238313038939

noncomputable section

/-- A164292: Binary sequence identifying the twin primes (characteristic function of twin primes: 1 if n is a twin prime else 0).

Offset 1, canonical program `A164292.P14089630238313038939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164292 (n : ℕ) : ℤ :=
  A164292.P14089630238313038939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164383.P6548176081872317167

`A067775(n+1)+4`
-/

namespace A164383.P6548176081872317167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067775 (n + 1) + 4

end

end A164383.P6548176081872317167

noncomputable section

/-- A164383: Composite numbers of the form 4 + some prime.

Offset 1, canonical program `A164383.P6548176081872317167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164383 (n : ℕ) : ℤ :=
  A164383.P6548176081872317167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165298.P10480189404675036484

`eq[7*n, A210882(7*n+1)]`
-/

namespace A165298.P10480189404675036484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (7 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165298.P10480189404675036484

noncomputable section

/-- A165298: Numbers k with property that 14*k is a sum of two consecutive primes.

Offset 1, canonical program `A165298.P10480189404675036484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A165298 (n : ℕ) : ℤ :=
  (A165298.P10480189404675036484.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A165298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166252.P7121988466875725616

`∩[A164368(n+1), A151800(A164368(n+1))]`
-/

namespace A166252.P7121988466875725616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A164368 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166252.P7121988466875725616

noncomputable section

/-- A166252: Primes which are not the smallest or largest prime in an interval of the form (2*prime(k),2*prime(k+1)).

Offset 1, canonical program `A166252.P7121988466875725616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166252 (n : ℕ) : ℤ :=
  (A166252.P7121988466875725616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166562.P5178159988493624345

`A297109(or(1, A255769(n+1)))`
-/

namespace A166562.P5178159988493624345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (Int.lor 1 (A255769 (n + 1))).toNat

end

end A166562.P5178159988493624345

noncomputable section

/-- A166562: Numbers k such that prime(k) - k - 1 is prime.

Offset 1, canonical program `A166562.P5178159988493624345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A166562 (n : ℕ) : ℤ :=
  A166562.P5178159988493624345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A166562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174051.P16173755171828309437

`filter[A008784(n+1), A066247(#)]`
-/

namespace A174051.P16173755171828309437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A174051.P16173755171828309437

noncomputable section

/-- A174051: Composite numbers of the form x^2+y^2, gcd(x,y) = 1.

Offset 1, canonical program `A174051.P16173755171828309437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6476 terms. -/
def A174051 (n : ℕ) : ℤ :=
  A174051.P16173755171828309437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6476 terms. -/
def A174051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174405.P5773883220253665986

`∑[A057660(n+1)]`
-/

namespace A174405.P5773883220253665986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174405.P5773883220253665986

noncomputable section

/-- A174405: Partial sums of Sum_{k=1..n} n/gcd(n,k), or partial sums of Sum_{d|n} d*phi(d) (see A057660).

Offset 1, canonical program `A174405.P5773883220253665986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174405 (n : ℕ) : ℤ :=
  A174405.P5773883220253665986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174932.P9080548440124926555

`(n+1)*A322671(n+1)`
-/

namespace A174932.P9080548440124926555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A322671 (n + 1)

end

end A174932.P9080548440124926555

noncomputable section

/-- A174932: a(n) = Sum_{d|n} A007955(d) * A000027(n/d) = Sum_{d|n} A007955(d) * (n/d), where A007955(m) = product of divisors of m.

Offset 1, canonical program `A174932.P9080548440124926555`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174932 (n : ℕ) : ℤ :=
  A174932.P9080548440124926555.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175075.P750954924832815924

`eq[A121559(n+1), A181569(n+1)]+2`
-/

namespace A175075.P750954924832815924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A175075.P750954924832815924

noncomputable section

/-- A175075: Primes q with result 2 under iterations of {r mod (max prime p < r)} starting at r = q.

Offset 1, canonical program `A175075.P750954924832815924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A175075 (n : ℕ) : ℤ :=
  (A175075.P750954924832815924.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A175075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175153.P2056557595373446709

`eq[1, A353464(A190991(n))]`
-/

namespace A175153.P2056557595373446709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A190991 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175153.P2056557595373446709

noncomputable section

/-- A175153: Numbers k such that 13*k-1, 13*k+1 are twin primes.

Offset 1, canonical program `A175153.P2056557595373446709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A175153 (n : ℕ) : ℤ :=
  (A175153.P2056557595373446709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A175153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176479.P3498820277277105498

`A001850(n)-A047781(n)`
-/

namespace A176479.P3498820277277105498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n - A047781 n

end

end A176479.P3498820277277105498

noncomputable section

/-- A176479: a(n) = (n+1)*A001003(n).

Offset 0, canonical program `A176479.P3498820277277105498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A176479 (n : ℕ) : ℤ :=
  A176479.P3498820277277105498.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A176479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176620.P11195601066460878631

`p?[A227921(n+1)]`
-/

namespace A176620.P11195601066460878631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176620.P11195601066460878631

noncomputable section

/-- A176620: Primes p for which the factorization of p! over distinct terms of A050376 does not contain 2.

Offset 1, canonical program `A176620.P11195601066460878631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6258 terms. -/
def A176620 (n : ℕ) : ℤ :=
  A176620.P11195601066460878631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6258 terms. -/
def A176620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177492.P17512611008382585647

`A120944(n+1)²`
-/

namespace A177492.P17512611008382585647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1) ^ 2

end

end A177492.P17512611008382585647

noncomputable section

/-- A177492: Products of squares of 2 or more distinct primes.

Offset 1, canonical program `A177492.P17512611008382585647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177492 (n : ℕ) : ℤ :=
  A177492.P17512611008382585647.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177492.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177493.P9951410185934880408

`A120944(n+1)^3`
-/

namespace A177493.P9951410185934880408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1) ^ 3

end

end A177493.P9951410185934880408

noncomputable section

/-- A177493: Products of cubes of 2 or more distinct primes.

Offset 1, canonical program `A177493.P9951410185934880408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177493 (n : ℕ) : ℤ :=
  A177493.P9951410185934880408.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177493.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179067.P13388217006194654114

`Δ[comp[A242881(n+1)-1]]`
-/

namespace A179067.P13388217006194654114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242881 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A179067.P13388217006194654114

noncomputable section

/-- A179067: Orders of consecutive clusters of twin primes.

Offset 1, canonical program `A179067.P13388217006194654114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A179067 (n : ℕ) : ℤ :=
  A179067.P13388217006194654114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A179067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179746.P1162274242722090488

`A085987(n+1)²`
-/

namespace A179746.P1162274242722090488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1) ^ 2

end

end A179746.P1162274242722090488

noncomputable section

/-- A179746: Numbers of the form p^4*q^2*r^2 where p, q, and r are distinct primes.

Offset 1, canonical program `A179746.P1162274242722090488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179746 (n : ℕ) : ℤ :=
  A179746.P1162274242722090488.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180266.P9271125515567740913

`(A115140(n)-A002420(n))*A160457(n)`
-/

namespace A180266.P9271125515567740913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A115140 n - A002420 n) * A160457 n

end

end A180266.P9271125515567740913

noncomputable section

/-- A180266: a(0) = 0; a(n) = C(2*n-2,n-1)*(n^2-2*n+2)/n for n >= 1.

Offset 0, canonical program `A180266.P9271125515567740913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A180266 (n : ℕ) : ℤ :=
  A180266.P9271125515567740913.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A180266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182158.P9573976614242427067

`∑{d}[n+1, A120630(#)*A186099((n+1)/#)]`
-/

namespace A182158.P9573976614242427067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120630 d * A186099 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A182158.P9573976614242427067

noncomputable section

/-- A182158: Number of solutions to x^2 + x + y + y^2 == 1 mod n.

Offset 1, canonical program `A182158.P9573976614242427067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182158 (n : ℕ) : ℤ :=
  A182158.P9573976614242427067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184247.P435976798172402380

`A000040(eq[1, A272863(n+1)]+2)`
-/

namespace A184247.P435976798172402380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A184247.P435976798172402380

noncomputable section

/-- A184247: Primes, q, such that for three consecutive primes, p, q & r, with p

Offset 1, canonical program `A184247.P435976798172402380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A184247 (n : ℕ) : ℤ :=
  A184247.P435976798172402380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A184247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188029.P9852327037226438625

`∪[A188025(n+1)+2, A188025(n+1)]`
-/

namespace A188029.P9852327037226438625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188025 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188029.P9852327037226438625

noncomputable section

/-- A188029: Positions of 1 in A188027; complement of A188028.

Offset 1, canonical program `A188029.P9852327037226438625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188029 (n : ℕ) : ℤ :=
  (A188029.P9852327037226438625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189675.P6081265892549474111

`A171567(n)*A193588(n)`
-/

namespace A189675.P6081265892549474111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171567 n * A193588 n

end

end A189675.P6081265892549474111

noncomputable section

/-- A189675: Composition of Catalan and Fibonacci numbers.

Offset 1, canonical program `A189675.P6081265892549474111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189675 (n : ℕ) : ℤ :=
  A189675.P6081265892549474111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189982.P2942469841084438276

`filter[A137487(n+1), A212793(#)]`
-/

namespace A189982.P2942469841084438276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A189982.P2942469841084438276

noncomputable section

/-- A189982: Numbers with prime signature (2,1,1,1), i.e., factorization p*q*r*s^2 with distinct primes p, q, r, s.

Offset 1, canonical program `A189982.P2942469841084438276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4473 terms. -/
def A189982 (n : ℕ) : ℤ :=
  A189982.P2942469841084438276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4473 terms. -/
def A189982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190377.P148042484633320409

`A046386(n+1)²`
-/

namespace A190377.P148042484633320409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1) ^ 2

end

end A190377.P148042484633320409

noncomputable section

/-- A190377: Numbers with prime factorization p^2*q^2*r^2*s^2 where p, q, r, and s are distinct primes.

Offset 1, canonical program `A190377.P148042484633320409`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190377 (n : ℕ) : ℤ :=
  A190377.P148042484633320409.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190377.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190432.P422911984236821990

`A190435(n+1)+A140398(n+1)`
-/

namespace A190432.P422911984236821990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190435 (n + 1) + A140398 (n + 1)

end

end A190432.P422911984236821990

noncomputable section

/-- A190432: Positions of 0 in A190431.

Offset 1, canonical program `A190432.P422911984236821990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190432 (n : ℕ) : ℤ :=
  A190432.P422911984236821990.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190469.P12605959260952500718

`A189975(n+1)²`
-/

namespace A190469.P12605959260952500718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189975 (n + 1) ^ 2

end

end A190469.P12605959260952500718

noncomputable section

/-- A190469: Numbers with prime factorization p^2*q^2*r^6 where p, q, and r are distinct primes.

Offset 1, canonical program `A190469.P12605959260952500718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190469 (n : ℕ) : ℤ :=
  A190469.P12605959260952500718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190471.P1363995098306444959

`A179643(n+1)²`
-/

namespace A190471.P1363995098306444959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179643 (n + 1) ^ 2

end

end A190471.P1363995098306444959

noncomputable section

/-- A190471: Numbers with prime factorization p^2*q^4*r^4 where p, q, and r are distinct primes.

Offset 1, canonical program `A190471.P1363995098306444959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190471 (n : ℕ) : ℤ :=
  A190471.P1363995098306444959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194598.P14763622104787464947

`p?[A085118(A298861(n+1))]`
-/

namespace A194598.P14763622104787464947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (A298861 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194598.P14763622104787464947

noncomputable section

/-- A194598: Union of A080359 and A164294.

Offset 1, canonical program `A194598.P14763622104787464947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A194598 (n : ℕ) : ℤ :=
  A194598.P14763622104787464947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A194598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196127.P5359934558696042021

`∪[A006093(n+1), A195896(n+1)]`
-/

namespace A196127.P5359934558696042021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196127.P5359934558696042021

noncomputable section

/-- A196127: Union of p-1, 2p-1 and 3p-1 where p is a prime (without repetition).

Offset 1, canonical program `A196127.P5359934558696042021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196127 (n : ℕ) : ℤ :=
  (A196127.P5359934558696042021.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205533.P3095447443842354911

`p?[gcd(A205302(n+1), A205511(n+2))]`
-/

namespace A205533.P3095447443842354911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A205302 (n + 1)) (A205511 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A205533.P3095447443842354911

noncomputable section

/-- A205533: Intersection of A205302 and A205511.

Offset 1, canonical program `A205533.P3095447443842354911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1361 terms. -/
def A205533 (n : ℕ) : ℤ :=
  (A205533.P3095447443842354911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1361 terms. -/
def A205533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205987.P4258495938364008722

`A281451(n+1)%2`
-/

namespace A205987.P4258495938364008722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281451 (n + 1)) 2

end

end A205987.P4258495938364008722

noncomputable section

/-- A205987: G.f.: Sum_{n=-oo..oo} q^(9n^2+8n).

Offset 0, canonical program `A205987.P4258495938364008722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205987 (n : ℕ) : ℤ :=
  A205987.P4258495938364008722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205987.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A210360.P3038244278204255362

`p?[A067775(n+1)-2]`
-/

namespace A210360.P3038244278204255362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067775 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210360.P3038244278204255362

noncomputable section

/-- A210360: Prime numbers p such that x^2 + x + p produces primes for x = 0..1 but not x = 2.

Offset 1, canonical program `A210360.P3038244278204255362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1140 terms. -/
def A210360 (n : ℕ) : ℤ :=
  A210360.P3038244278204255362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1140 terms. -/
def A210360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210499.P12495086160779493150

`p?[gcd(4*n+1, A284059(2*n+1))]`
-/

namespace A210499.P12495086160779493150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * n + 1 : ℤ) (A284059 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A210499.P12495086160779493150

noncomputable section

/-- A210499: Primes p of the form 1 mod 4 such that p+1 has a prime factor of the form 1 mod 4.

Offset 1, canonical program `A210499.P12495086160779493150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 736 terms. -/
def A210499 (n : ℕ) : ℤ :=
  (A210499.P12495086160779493150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 736 terms. -/
def A210499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212372.P8397880777953028730

`∩[A009996(n+1), A210441(n+1)]`
-/

namespace A212372.P8397880777953028730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212372.P8397880777953028730

noncomputable section

/-- A212372: Nonprime numbers with distinct digits in descending order.

Offset 1, canonical program `A212372.P8397880777953028730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A212372 (n : ℕ) : ℤ :=
  (A212372.P8397880777953028730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A212372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214195.P1409231567041737422

`eq[(n+1)^3, A290480(n+1)]+1`
-/

namespace A214195.P1409231567041737422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214195.P1409231567041737422

noncomputable section

/-- A214195: Numbers with the number of distinct prime factors a multiple of 3.

Offset 1, canonical program `A214195.P1409231567041737422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214195 (n : ℕ) : ℤ :=
  (A214195.P1409231567041737422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215311.P4563377163036817401

`∪[A093191(n+1), A215307(n+1)]`
-/

namespace A215311.P4563377163036817401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215311.P4563377163036817401

noncomputable section

/-- A215311: Primes congruent to {1, 2, 3, 4, 5} mod 13.

Offset 1, canonical program `A215311.P4563377163036817401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215311 (n : ℕ) : ℤ :=
  (A215311.P4563377163036817401.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215323.P18145602717105351483

`∪[A093350(n+1), A215303(n+1)]`
-/

namespace A215323.P18145602717105351483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215323.P18145602717105351483

noncomputable section

/-- A215323: Primes congruent to {1, 2, 3, 4, 6} mod 13.

Offset 1, canonical program `A215323.P18145602717105351483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215323 (n : ℕ) : ℤ :=
  (A215323.P18145602717105351483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224450.P3123032026514639829

`filter[A008784(n+2), A354924(#)]`
-/

namespace A224450.P3123032026514639829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A224450.P3123032026514639829

noncomputable section

/-- A224450: Numbers that are the primitive sum of two nonzero squares in exactly one way.

Offset 1, canonical program `A224450.P3123032026514639829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5204 terms. -/
def A224450 (n : ℕ) : ℤ :=
  A224450.P3123032026514639829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5204 terms. -/
def A224450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227031.P3728284765124950011

`p?[A062301(n+1)+p?[2*n+1]]`
-/

namespace A227031.P3728284765124950011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 1) + (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227031.P3728284765124950011

noncomputable section

/-- A227031: Odd primes such that the previous prime is not the larger part of a twin prime pair.

Offset 1, canonical program `A227031.P3728284765124950011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8730 terms. -/
def A227031 (n : ℕ) : ℤ :=
  A227031.P3728284765124950011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8730 terms. -/
def A227031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227279.P490244624679557073

`∩[A072502(n+1), A359580(n+1)]`
-/

namespace A227279.P490244624679557073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227279.P490244624679557073

noncomputable section

/-- A227279: Squares of odd primes and twice squares of odd primes.

Offset 1, canonical program `A227279.P490244624679557073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. -/
def A227279 (n : ℕ) : ℤ :=
  (A227279.P490244624679557073.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. -/
def A227279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228198.P4684972850257953238

`p?[A006093(n+1)+A005171(A034964(n+1))]`
-/

namespace A228198.P4684972850257953238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A005171 (A034964 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228198.P4684972850257953238

noncomputable section

/-- A228198: Smallest of five consecutive primes whose sum is not a prime.

Offset 1, canonical program `A228198.P4684972850257953238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1126 terms. -/
def A228198 (n : ℕ) : ℤ :=
  A228198.P4684972850257953238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1126 terms. -/
def A228198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229296.P15325507195948055695

`2*A086933(n+1)`
-/

namespace A229296.P15325507195948055695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086933 (n + 1)

end

end A229296.P15325507195948055695

noncomputable section

/-- A229296: Number of solutions to x^2 + y^2 == n (mod 2*n) for x,y in [0, 2*n).

Offset 1, canonical program `A229296.P15325507195948055695`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229296 (n : ℕ) : ℤ :=
  A229296.P15325507195948055695.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229937.P7651752296760210712

`∪[A125495(n+1), A014769(n)]`
-/

namespace A229937.P7651752296760210712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229937.P7651752296760210712

noncomputable section

/-- A229937: Nonprime odious numbers.

Offset 1, canonical program `A229937.P7651752296760210712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229937 (n : ℕ) : ℤ :=
  (A229937.P7651752296760210712.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230779.P6211119904163911017

`filter[A143575(n+2), A353814(#)]`
-/

namespace A230779.P6211119904163911017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A230779.P6211119904163911017

noncomputable section

/-- A230779: Numbers which are uniquely decomposable into a sum of two squares, the unique decomposition being with two distinct nonzero squares.

Offset 1, canonical program `A230779.P6211119904163911017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9862 terms. -/
def A230779 (n : ℕ) : ℤ :=
  A230779.P6211119904163911017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9862 terms. -/
def A230779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233667.P10919499485514884474

`A233658(n+1)-A006633(n+1)`
-/

namespace A233667.P10919499485514884474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233658 (n + 1) - A006633 (n + 1)

end

end A233667.P10919499485514884474

noncomputable section

/-- A233667: a(n) = 5*binomial(4*n+10,n)/(2*n+5).

Offset 0, canonical program `A233667.P10919499485514884474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A233667 (n : ℕ) : ℤ :=
  A233667.P10919499485514884474.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A233667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236464.P18246363835184401011

`∩[A096478(n+1), A257762(n+1)]`
-/

namespace A236464.P18246363835184401011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236464.P18246363835184401011

noncomputable section

/-- A236464: Primes p with prime(p) + 2 and prime(p) + 6 both prime.

Offset 1, canonical program `A236464.P18246363835184401011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A236464 (n : ℕ) : ℤ :=
  (A236464.P18246363835184401011.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A236464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237349.P13854550475832125326

`∑[A211776(n+1)]`
-/

namespace A237349.P13854550475832125326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237349.P13854550475832125326

noncomputable section

/-- A237349: a(n) = Sum_{i=1..n} ( Product_{k|i} d(k) ), where d(n) = A000005(n).

Offset 1, canonical program `A237349.P13854550475832125326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237349 (n : ℕ) : ℤ :=
  A237349.P13854550475832125326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239464.P9977699933994257397

`A239461(n+1)/(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A239464.P9977699933994257397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239461 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A239464.P9977699933994257397

noncomputable section

/-- A239464: A239461(n) / n^2.

Offset 1, canonical program `A239464.P9977699933994257397`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239461, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239464 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A239464.P9977699933994257397.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239461, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239464.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239527.P16129171376705683773

`∩[A025303(n+1), A001844(n)]`
-/

namespace A239527.P16129171376705683773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239527.P16129171376705683773

noncomputable section

/-- A239527: Numbers k^2 + (k+1)^2 that can be expressed as a sum of two squares in exactly one other way.

Offset 1, canonical program `A239527.P16129171376705683773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A239527 (n : ℕ) : ℤ :=
  (A239527.P16129171376705683773.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A239527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242136.P1263783666612363736

`2*A000260(n+1)-A197271(n+1)`
-/

namespace A242136.P1263783666612363736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000260 (n + 1) - A197271 (n + 1)

end

end A242136.P1263783666612363736

noncomputable section

/-- A242136: Number of strong triangulations of a fixed square with n interior vertices.

Offset 0, canonical program `A242136.P1263783666612363736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A242136 (n : ℕ) : ℤ :=
  A242136.P1263783666612363736.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A242136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242734.P15280531202859122219

`A242738(n+1)-A002379(n+1)`
-/

namespace A242734.P15280531202859122219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242738 (n + 1) - A002379 (n + 1)

end

end A242734.P15280531202859122219

noncomputable section

/-- A242734: a(n) = (smallest prime > (3/2)^n) - floor((3/2)^n).

Offset 1, canonical program `A242734.P15280531202859122219`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A242738, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242734 (n : ℕ) : ℤ :=
  A242734.P15280531202859122219.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A242738, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242734.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247419.P14392471895866897531

`A003256(∑[char[2*n]])-char[2*n]`
-/

namespace A247419.P14392471895866897531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003256 (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A247419.P14392471895866897531

noncomputable section

/-- A247419: a(2n) = A003256(n); a(2n-1) = A003256(n) - 1.

Offset 1, canonical program `A247419.P14392471895866897531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247419 (n : ℕ) : ℤ :=
  A247419.P14392471895866897531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247419.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A248023.P4567360771586854250

`filter[A001105(n+1), A355816(#)]`
-/

namespace A248023.P4567360771586854250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P4567360771586854250

noncomputable section

/-- A248023: Even numbers which are neither primes nor perfect powers and are coprime to the sum of their divisors.

Offset 1, canonical program `A248023.P4567360771586854250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A248023 (n : ℕ) : ℤ :=
  A248023.P4567360771586854250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A248023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248793.P15653904006312426899

`A000203(A248792(n+1))-1`
-/

namespace A248793.P15653904006312426899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A248792 (n + 1)).toNat - 1

end

end A248793.P15653904006312426899

noncomputable section

/-- A248793: Sigma(n) - 1 for n such that sigma(n) - 1 is prime.

Offset 1, canonical program `A248793.P15653904006312426899`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248792, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248793 (n : ℕ) : ℤ :=
  A248793.P15653904006312426899.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248792, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248793.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249153.P3299475538474447466

`A249152(2*n)`
-/

namespace A249153.P3299475538474447466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249152 (2 * n)

end

end A249153.P3299475538474447466

noncomputable section

/-- A249153: Exponent of 2 in the hyperfactorial of 2n: a(n) = A007814(A002109(2n)).

Offset 0, canonical program `A249153.P3299475538474447466`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249152, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249153 (n : ℕ) : ℤ :=
  A249153.P3299475538474447466.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249152, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249153.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255602.P3848670249569834518

`filter[A014567(n+1), A323239(#)]`
-/

namespace A255602.P3848670249569834518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A255602.P3848670249569834518

noncomputable section

/-- A255602: Numbers k which are odd and squarefree and have the property that k is either a prime number or for every prime p dividing k, p+1 is not divisible by any of the other prime factors of k.

Offset 1, canonical program `A255602.P3848670249569834518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8671 terms. -/
def A255602 (n : ℕ) : ℤ :=
  A255602.P3848670249569834518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8671 terms. -/
def A255602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256314.P13032159642975064989

`A256525(n)-A256524(n)`
-/

namespace A256314.P13032159642975064989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256525 n - A256524 n

end

end A256314.P13032159642975064989

noncomputable section

/-- A256314: Number of partitions of 3n into exactly 5 parts.

Offset 0, canonical program `A256314.P13032159642975064989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256314 (n : ℕ) : ℤ :=
  A256314.P13032159642975064989.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256316.P772244914337165841

`A256539(n)-A238340(n+1)`
-/

namespace A256316.P772244914337165841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256539 n - A238340 (n + 1)

end

end A256316.P772244914337165841

noncomputable section

/-- A256316: Number of partitions of 4n into exactly 5 parts.

Offset 0, canonical program `A256316.P772244914337165841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256316 (n : ℕ) : ℤ :=
  A256316.P772244914337165841.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256316.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A258430.P13140593724657171995

`A088580(A065512(n+1))`
-/

namespace A258430.P13140593724657171995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (A065512 (n + 1)).toNat

end

end A258430.P13140593724657171995

noncomputable section

/-- A258430: Primes in A088580.

Offset 1, canonical program `A258430.P13140593724657171995`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258430 (n : ℕ) : ℤ :=
  A258430.P13140593724657171995.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258430.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259408.P373491290013901960

`A014688(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A259408.P373491290013901960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A014688 (a (n - 1)).toNat

end

end A259408.P373491290013901960

noncomputable section

/-- A259408: a(1) = 1 thereafter a(n) = Sum_{m=1..n-1} prime(a(m)).

Offset 1, canonical program `A259408.P373491290013901960`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014688, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259408 (n : ℕ) : ℤ :=
  A259408.P373491290013901960.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014688, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259408.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259877.P11459375870867924158

`A100861(A217571(n+1))`
-/

namespace A259877.P11459375870867924158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100861 (A217571 (n + 1)).toNat

end

end A259877.P11459375870867924158

noncomputable section

/-- A259877: If n is even then a(n) = n!/( 2^(n/2)*(n/2)! ), otherwise a(n) = n!/( 3*2^((n-1)/2)*((n-3)/2)! ).

Offset 2, canonical program `A259877.P11459375870867924158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A259877 (n : ℕ) : ℤ :=
  A259877.P11459375870867924158.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A259877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260872.P7246468917083718781

`∩[A008784(n+1)-1, A039955(n+1)]`
-/

namespace A260872.P7246468917083718781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260872.P7246468917083718781

noncomputable section

/-- A260872: Squarefree numbers k such that k+1 has no primes of the form 4*m-1 and at most one 2 in its prime factorization.

Offset 1, canonical program `A260872.P7246468917083718781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1897 terms. -/
def A260872 (n : ℕ) : ℤ :=
  (A260872.P7246468917083718781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1897 terms. -/
def A260872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261080.P12360840611075533640

`A205302(n+1)*A205511(n+1)`
-/

namespace A261080.P12360840611075533640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205302 (n + 1) * A205511 (n + 1)

end

end A261080.P12360840611075533640

noncomputable section

/-- A261080: Semiprimes p*q for which p and q are successive primes and their binary representations differ from each other in one bit position only.

Offset 1, canonical program `A261080.P12360840611075533640`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205302, A205511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261080 (n : ℕ) : ℤ :=
  A261080.P12360840611075533640.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205302, A205511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261080.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261196.P10747703722125685864

`A002420(n)*2^n*(-1)^(n*(n+1)/2)`
-/

namespace A261196.P10747703722125685864
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002420 n * (2 ^ n : ℤ) : ℝ) * (-1 : ℝ) ^ ((n : ℚ) * ((n + 1 : ℚ) / 2) : ℝ)

end

end A261196.P10747703722125685864

noncomputable section

/-- A261196: Expansion of sqrt(8*x + sqrt(1 + 64*x^2)).

Offset 0, canonical program `A261196.P10747703722125685864`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261196 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A261196.P10747703722125685864.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262868.P4949295510980563824

`A110654(n)-∑[A000035(n-A007431(n))]`
-/

namespace A262868.P4949295510980563824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) - A007431 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262868.P4949295510980563824

noncomputable section

/-- A262868: Number of squarefree numbers appearing among the larger parts of the partitions of n into two parts.

Offset 1, canonical program `A262868.P4949295510980563824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262868 (n : ℕ) : ℤ :=
  A262868.P4949295510980563824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264722.P4164535810312065658

`eq[n%A119257(n+1), A119257(A119257(n+1)+1)]`
-/

namespace A264722.P4164535810312065658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A119257 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (A119257 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A264722.P4164535810312065658

noncomputable section

/-- A264722: Composite numbers that are less than the average of their closest flanking primes.

Offset 1, canonical program `A264722.P4164535810312065658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7737 terms. -/
def A264722 (n : ℕ) : ℤ :=
  (A264722.P4164535810312065658.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7737 terms. -/
def A264722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264752.P16503107213581928400

`Δ[A106543(n+1)]`
-/

namespace A264752.P16503107213581928400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264752.P16503107213581928400

noncomputable section

/-- A264752: First differences of A106543.

Offset 1, canonical program `A264752.P16503107213581928400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A264752 (n : ℕ) : ℤ :=
  A264752.P16503107213581928400.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A264752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265281.P1605826112881666306

`A269161(a(n-1))` with `a(0)=1`
-/

namespace A265281.P1605826112881666306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269161 (a (n - 1)).toNat

end

end A265281.P1605826112881666306

noncomputable section

/-- A265281: Decimal representation of the n-th iteration of the "Rule 86" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A265281.P1605826112881666306`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269161, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265281 (n : ℕ) : ℤ :=
  A265281.P1605826112881666306.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269161, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266174.P16187119275492808258

`A266848(n)*A267704(n)`
-/

namespace A266174.P16187119275492808258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266848 n * A267704 n

end

end A266174.P16187119275492808258

noncomputable section

/-- A266174: Triangle read by rows giving successive states of cellular automaton generated by "Rule 5" initiated with a single ON (black) cell.

Offset 0, canonical program `A266174.P16187119275492808258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266174 (n : ℕ) : ℤ :=
  A266174.P16187119275492808258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266514.P224851295556962655

`A266848(A020703(n+1)-1)`
-/

namespace A266514.P224851295556962655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266848 (A020703 (n + 1) - 1).toNat

end

end A266514.P224851295556962655

noncomputable section

/-- A266514: Triangle read by rows giving successive states of cellular automaton generated by "Rule 29" initiated with a single ON (black) cell.

Offset 0, canonical program `A266514.P224851295556962655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266514 (n : ℕ) : ℤ :=
  A266514.P224851295556962655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266605.P12090074785028019429

`A266848(1-A053188(n)+n)`
-/

namespace A266605.P12090074785028019429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266848 (1 - A053188 n + (n : ℤ)).toNat

end

end A266605.P12090074785028019429

noncomputable section

/-- A266605: Triangle read by rows giving successive states of cellular automaton generated by "Rule 39" initiated with a single ON (black) cell.

Offset 0, canonical program `A266605.P12090074785028019429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266605 (n : ℕ) : ℤ :=
  A266605.P12090074785028019429.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267137.P18034840649141291006

`lt[0, A005882(n)]`
-/

namespace A267137.P18034840649141291006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267137.P18034840649141291006

noncomputable section

/-- A267137: Numbers of the form x^2 + x + x*y + y + y^2 where x and y are integers.

Offset 1, canonical program `A267137.P18034840649141291006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4135 terms. -/
def A267137 (n : ℕ) : ℤ :=
  (A267137.P18034840649141291006.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4135 terms. -/
def A267137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267525.P14697647178311935944

`A267676(A020703(n+1)-1)`
-/

namespace A267525.P14697647178311935944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267676 (A020703 (n + 1) - 1).toNat

end

end A267525.P14697647178311935944

noncomputable section

/-- A267525: Triangle read by rows giving successive states of cellular automaton generated by "Rule 141" initiated with a single ON (black) cell.

Offset 0, canonical program `A267525.P14697647178311935944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267525 (n : ℕ) : ℤ :=
  A267525.P14697647178311935944.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272006.P12335751938190877041

`A003617(n+1)-A062397(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A272006.P12335751938190877041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1) - A062397 n

end

end A272006.P12335751938190877041

noncomputable section

/-- A272006: a(n) = A003617(n) - A062397(n-1).

Offset 1, canonical program `A272006.P12335751938190877041`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272006 (n : ℕ) : ℤ :=
  A272006.P12335751938190877041.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272006.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272533.P7437355540614725294

`lt[1, A333748(n+1)]+1`
-/

namespace A272533.P7437355540614725294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333748 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A272533.P7437355540614725294

noncomputable section

/-- A272533: Numbers n such that A072499(n)!=A072504(n).

Offset 1, canonical program `A272533.P7437355540614725294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5600 terms. -/
def A272533 (n : ℕ) : ℤ :=
  (A272533.P7437355540614725294.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5600 terms. -/
def A272533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273663.P4019550503399085777

`∑[char[A273670(n+1)-1]]`
-/

namespace A273663.P4019550503399085777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273663.P4019550503399085777

noncomputable section

/-- A273663: Least monotonic left inverse for A273670: a(1) = 0; for n > 1, a(n) = A257680(A225901(n)) + a(n-1).

Offset 1, canonical program `A273663.P4019550503399085777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273663 (n : ℕ) : ℤ :=
  (A273663.P4019550503399085777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274923.P17560489070939647201

`-A268038(n+1)`
-/

namespace A274923.P17560489070939647201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A268038 (n + 1)

end

end A274923.P17560489070939647201

noncomputable section

/-- A274923: List of y-coordinates of point moving in counterclockwise square spiral.

Offset 1, canonical program `A274923.P17560489070939647201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274923 (n : ℕ) : ℤ :=
  A274923.P17560489070939647201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275990.P7805585595172944327

`A055003(n+1)-A000040(n+1)`
-/

namespace A275990.P7805585595172944327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (n + 1) - A000040 (n + 1)

end

end A275990.P7805585595172944327

noncomputable section

/-- A275990: a(n) = prime(prime(n)-1) - prime(n).

Offset 1, canonical program `A275990.P7805585595172944327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A055003, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275990 (n : ℕ) : ℤ :=
  A275990.P7805585595172944327.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A055003, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276050.P4598829443769848170

`filter[A274849(n+1), A005171(#)]`
-/

namespace A276050.P4598829443769848170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A276050.P4598829443769848170

noncomputable section

/-- A276050: Isolated deficient numbers that are composite.

Offset 1, canonical program `A276050.P4598829443769848170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A276050 (n : ℕ) : ℤ :=
  A276050.P4598829443769848170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A276050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278138.P16735703307475398826

`∩[A023208(n+1)-2, A023208(n+1)]`
-/

namespace A278138.P16735703307475398826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278138.P16735703307475398826

noncomputable section

/-- A278138: Primes p such that p+2, 3*p+2 and 3*p+8 are also primes.

Offset 1, canonical program `A278138.P16735703307475398826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A278138 (n : ℕ) : ℤ :=
  (A278138.P16735703307475398826.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A278138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279847.P3049102735898826477

`A064602(n+1)-A000330(n+1)`
-/

namespace A279847.P3049102735898826477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064602 (n + 1) - A000330 (n + 1)

end

end A279847.P3049102735898826477

noncomputable section

/-- A279847: a(n) = Sum_{k=1..n} k^2*(floor(n/k) - 1).

Offset 1, canonical program `A279847.P3049102735898826477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279847 (n : ℕ) : ℤ :=
  A279847.P3049102735898826477.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284152.P5316867727396450920

`A284280(n+1)+A284281(n+1)`
-/

namespace A284152.P5316867727396450920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284280 (n + 1) + A284281 (n + 1)

end

end A284152.P5316867727396450920

noncomputable section

/-- A284152: a(n) = Sum_{d|n, d == 2 or 3 mod 5} d.

Offset 1, canonical program `A284152.P5316867727396450920`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284152 (n : ℕ) : ℤ :=
  A284152.P5316867727396450920.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284152.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284565.P9570140672652545483

`A000360(2*n)`
-/

namespace A284565.P9570140672652545483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (2 * n)

end

end A284565.P9570140672652545483

noncomputable section

/-- A284565: Bisection of A000360.

Offset 0, canonical program `A284565.P9570140672652545483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000360, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284565 (n : ℕ) : ℤ :=
  A284565.P9570140672652545483.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000360, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284565.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284775.P8645433344841049155

`A189665(n+1)-A284818(n+1)`
-/

namespace A284775.P8645433344841049155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (n + 1) - A284818 (n + 1)

end

end A284775.P8645433344841049155

noncomputable section

/-- A284775: Fixed point of the morphism 0 -> 01, 1 -> 0011.

Offset 1, canonical program `A284775.P8645433344841049155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284775 (n : ℕ) : ℤ :=
  A284775.P8645433344841049155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284776.P12625188356120516945

`char[A284818(n+1)-1]+n+n`
-/

namespace A284776.P12625188356120516945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n + n

end

end A284776.P12625188356120516945

noncomputable section

/-- A284776: Positions of 0 in A284775; complement of A284777.

Offset 1, canonical program `A284776.P12625188356120516945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284776 (n : ℕ) : ℤ :=
  (A284776.P12625188356120516945.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284792.P14898968063971139874

`char[A284934(n+1)-1]`
-/

namespace A284792.P14898968063971139874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284934 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284792.P14898968063971139874

noncomputable section

/-- A284792: {1001->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A284792.P14898968063971139874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284792 (n : ℕ) : ℤ :=
  (A284792.P14898968063971139874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284796.P6823867283287536618

`A189665(n+1)+A284818(n+1)-1`
-/

namespace A284796.P6823867283287536618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (n + 1) + (A284818 (n + 1) - 1)

end

end A284796.P6823867283287536618

noncomputable section

/-- A284796: Positions of 1's in A284793.

Offset 1, canonical program `A284796.P6823867283287536618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284796 (n : ℕ) : ℤ :=
  A284796.P6823867283287536618.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285096.P16169422435609313154

`∩[A061385(n+1), A069709(n+1)]`
-/

namespace A285096.P16169422435609313154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P16169422435609313154

noncomputable section

/-- A285096: Primes with integer arithmetic mean of digits = 2 in base 10.

Offset 1, canonical program `A285096.P16169422435609313154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A285096 (n : ℕ) : ℤ :=
  (A285096.P16169422435609313154.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A285096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285225.P10692360427278529095

`p?[A061387(n+1)]`
-/

namespace A285225.P10692360427278529095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285225.P10692360427278529095

noncomputable section

/-- A285225: Primes with integer arithmetic mean of digits = 4 in base 10.

Offset 1, canonical program `A285225.P10692360427278529095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A285225 (n : ℕ) : ℤ :=
  A285225.P10692360427278529095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A285225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285226.P16444782336951835408

`p?[A061388(n+1)]`
-/

namespace A285226.P16444782336951835408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285226.P16444782336951835408

noncomputable section

/-- A285226: Primes with integer arithmetic mean of digits = 5 in base 10.

Offset 1, canonical program `A285226.P16444782336951835408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 840 terms. -/
def A285226 (n : ℕ) : ℤ :=
  A285226.P16444782336951835408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 840 terms. -/
def A285226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285227.P10686455318228212917

`∩[A061424(n+1), A069709(n+1)]`
-/

namespace A285227.P10686455318228212917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285227.P10686455318228212917

noncomputable section

/-- A285227: Primes with integer arithmetic mean of digits = 7 in base 10.

Offset 1, canonical program `A285227.P10686455318228212917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A285227 (n : ℕ) : ℤ :=
  (A285227.P10686455318228212917.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A285227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285973.P13794099816013091422

`A285959(n+1)-A143331(n+1)`
-/

namespace A285973.P13794099816013091422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285959 (n + 1) - A143331 (n + 1)

end

end A285973.P13794099816013091422

noncomputable section

/-- A285973: Positions of 0 in A285972; complement of A285974.

Offset 1, canonical program `A285973.P13794099816013091422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285973 (n : ℕ) : ℤ :=
  A285973.P13794099816013091422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286683.P11327338289831238682

`eq[A007814(n+1), A318874(n+1)]+1`
-/

namespace A286683.P11327338289831238682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A286683.P11327338289831238682

noncomputable section

/-- A286683: Even numbers k such that the number of odd divisors of k is equal to the 2-adic valuation of k.

Offset 1, canonical program `A286683.P11327338289831238682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A286683 (n : ℕ) : ℤ :=
  (A286683.P11327338289831238682.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A286683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286802.P10299753471683796401

`A286922(n+1)+A286693(n+1)`
-/

namespace A286802.P10299753471683796401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286922 (n + 1) + A286693 (n + 1)

end

end A286802.P10299753471683796401

noncomputable section

/-- A286802: Positions of 0 in A286801; complement of A286803.

Offset 1, canonical program `A286802.P10299753471683796401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286802 (n : ℕ) : ℤ :=
  A286802.P10299753471683796401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287075.P10517102401792539073

`A287073(A287074(n+1)-n)-2`
-/

namespace A287075.P10517102401792539073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287073 (A287074 (n + 1) - (n : ℤ)).toNat - 2

end

end A287075.P10517102401792539073

noncomputable section

/-- A287075: Positions of 2 in A287072.

Offset 1, canonical program `A287075.P10517102401792539073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7548 terms. -/
def A287075 (n : ℕ) : ℤ :=
  A287075.P10517102401792539073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7548 terms. -/
def A287075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287638.P4499298965654757907

`p?[A287117(n+3)]`
-/

namespace A287638.P4499298965654757907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287117 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287638.P4499298965654757907

noncomputable section

/-- A287638: Odd primes with no other odd primes as prefixes in binary.

Offset 1, canonical program `A287638.P4499298965654757907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A287638 (n : ℕ) : ℤ :=
  A287638.P4499298965654757907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A287638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122854.P10160800689135839717

`abs(A138502(n))`
-/

namespace A122854.P10160800689135839717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138502 n|

end

end A122854.P10160800689135839717

noncomputable section

/-- A122854: Expansion of phi(q)^2*psi(q)^4 in powers of q where phi(),psi() are Ramanujan theta functions.

Offset 0, canonical program `A122854.P10160800689135839717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122854 (n : ℕ) : ℤ :=
  A122854.P10160800689135839717.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133636.P3030038643792088709

`∩[A053795(n+1), A074232(n+1)]`
-/

namespace A133636.P3030038643792088709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133636.P3030038643792088709

noncomputable section

/-- A133636: Nonprime numbers k such that binomial(k+p,k) mod k = 1, where p=6.

Offset 1, canonical program `A133636.P3030038643792088709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133636 (n : ℕ) : ℤ :=
  (A133636.P3030038643792088709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133760.P9145176976057239686

`A139140(n+1)-2`
-/

namespace A133760.P9145176976057239686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139140 (n + 1) - 2

end

end A133760.P9145176976057239686

noncomputable section

/-- A133760: Sum of the number of divisors of the numbers between prime(n) and prime(n+1).

Offset 1, canonical program `A133760.P9145176976057239686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133760 (n : ℕ) : ℤ :=
  A133760.P9145176976057239686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138060.P12656689642850593216

`A138297(n+5)`
-/

namespace A138060.P12656689642850593216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138297 (n + 5)

end

end A138060.P12656689642850593216

noncomputable section

/-- A138060: Triangle read by rows: row 1 = {1}; for n>1, row n is obtained from row n-1 by applying the morphism 1->1,2; 2->3; 3->4; 4->1.

Offset 1, canonical program `A138060.P12656689642850593216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A138060 (n : ℕ) : ℤ :=
  A138060.P12656689642850593216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A138060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139889.P4754066223454395904

`∪[A139986(n+1), A139992(n+1)]`
-/

namespace A139889.P4754066223454395904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139889.P4754066223454395904

noncomputable section

/-- A139889: Primes of the form 5x^2+42y^2.

Offset 1, canonical program `A139889.P4754066223454395904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139889 (n : ℕ) : ℤ :=
  (A139889.P4754066223454395904.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140009.P3846978172525219397

`∩[A139898(n+1), A140615(n+1)]`
-/

namespace A140009.P3846978172525219397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P3846978172525219397

noncomputable section

/-- A140009: Primes of the form 24x^2+24xy+61y^2.

Offset 1, canonical program `A140009.P3846978172525219397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A140009 (n : ℕ) : ℤ :=
  (A140009.P3846978172525219397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A140009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140036.P16395373774773885940

`∩[A139851(n+1), A140615(n+1)]`
-/

namespace A140036.P16395373774773885940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P16395373774773885940

noncomputable section

/-- A140036: Primes of the form 21x^2+88y^2.

Offset 1, canonical program `A140036.P16395373774773885940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2537 terms. -/
def A140036 (n : ℕ) : ℤ :=
  (A140036.P16395373774773885940.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2537 terms. -/
def A140036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143157.P1478917444832126743

`A000217(n)+A249152(n)`
-/

namespace A143157.P1478917444832126743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A249152 n

end

end A143157.P1478917444832126743

noncomputable section

/-- A143157: Partial sums of A091512.

Offset 0, canonical program `A143157.P1478917444832126743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249152, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143157 (n : ℕ) : ℤ :=
  A143157.P1478917444832126743.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249152, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143157.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153088.P14487494430752831304

`A153343(n+1)+1`
-/

namespace A153088.P14487494430752831304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153343 (n + 1) + 1

end

end A153088.P14487494430752831304

noncomputable section

/-- A153088: Numbers k such that 5*k - 1 is not prime.

Offset 1, canonical program `A153088.P14487494430752831304`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153343, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153088 (n : ℕ) : ℤ :=
  A153088.P14487494430752831304.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153343, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157639.P9681935996061290247

`A084558(A171526(n+1))`
-/

namespace A157639.P9681935996061290247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A171526 (n + 1)).toNat

end

end A157639.P9681935996061290247

noncomputable section

/-- A157639: Least number of points in a square n X n lattice from which all other points of the square are visible.

Offset 1, canonical program `A157639.P9681935996061290247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A157639 (n : ℕ) : ℤ :=
  A157639.P9681935996061290247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A157639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158294.P15557251001047675323

`A158299(A020486(n+1))`
-/

namespace A158294.P15557251001047675323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158299 (A020486 (n + 1)).toNat

end

end A158294.P15557251001047675323

noncomputable section

/-- A158294: Averages of squares of divisors of numbers in A020486 (i.e., numbers m with property that average of squares of divisors is an integer: sigma_0(m) divides sigma_2(m)).

Offset 1, canonical program `A158294.P15557251001047675323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5955 terms. -/
def A158294 (n : ℕ) : ℤ :=
  A158294.P15557251001047675323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5955 terms. -/
def A158294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166565.P9364426524282824447

`∩[A066725(n+1), A166566(n+1)]`
-/

namespace A166565.P9364426524282824447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P9364426524282824447

noncomputable section

/-- A166565: Primes p such that product of digits +- 1 is prime.

Offset 1, canonical program `A166565.P9364426524282824447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3325 terms. -/
def A166565 (n : ℕ) : ℤ :=
  (A166565.P9364426524282824447.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3325 terms. -/
def A166565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167119.P7078491149774125345

`∪[A140373(n+1), A215155(n+1)]`
-/

namespace A167119.P7078491149774125345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167119.P7078491149774125345

noncomputable section

/-- A167119: Primes congruent to 2, 3, 5, 7 or 11 (mod 13).

Offset 1, canonical program `A167119.P7078491149774125345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167119 (n : ℕ) : ℤ :=
  (A167119.P7078491149774125345.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187976.P9167118269187722493

`char[A187978(n+1)-1]`
-/

namespace A187976.P9167118269187722493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187978 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A187976.P9167118269187722493

noncomputable section

/-- A187976: a(n) = [nr+kr]-[nr]-[kr], where r=sqrt(2), k=6, [ ]=floor.

Offset 1, canonical program `A187976.P9167118269187722493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187976 (n : ℕ) : ℤ :=
  (A187976.P9167118269187722493.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188032.P4612642274168787894

`ceil(ϕ²*A188015(n+1))`
-/

namespace A188032.P4612642274168787894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ 2 * (A188015 (n + 1) : ℝ)⌉

end

end A188032.P4612642274168787894

noncomputable section

/-- A188032: Positions of 0 in A188031; complement of A188033.

Offset 1, canonical program `A188032.P4612642274168787894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188032 (n : ℕ) : ℤ :=
  A188032.P4612642274168787894.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188437.P11220334441447564748

`A005206(A188015(n+1))`
-/

namespace A188437.P11220334441447564748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A188015 (n + 1)).toNat

end

end A188437.P11220334441447564748

noncomputable section

/-- A188437: Positions of 0 in A188436; complement of A188438.

Offset 1, canonical program `A188437.P11220334441447564748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188437 (n : ℕ) : ℤ :=
  A188437.P11220334441447564748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199206.P10239576524448886382

`(1+A034939(n)²)/5^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199206.P10239576524448886382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A034939 n ^ 2 : ℚ) / (5 ^ n : ℚ)

end

end A199206.P10239576524448886382

noncomputable section

/-- A199206: a(n) = (1+(A034939(n))^2)/5^n.

Offset 0, canonical program `A199206.P10239576524448886382`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A199206 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A199206.P10239576524448886382.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A199206.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A199989.P7343172023949467702

`∩[A028846(n+1), A081989(n+1)]`
-/

namespace A199989.P7343172023949467702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199989.P7343172023949467702

noncomputable section

/-- A199989: Numbers with digital product = 8.

Offset 1, canonical program `A199989.P7343172023949467702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A199989 (n : ℕ) : ℤ :=
  (A199989.P7343172023949467702.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A199989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220662.P9996294767845325282

`1-(n+1)%A084558(n+1)+n`
-/

namespace A220662.P9996294767845325282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (n + 1 : ℤ) (A084558 (n + 1)) + (n : ℤ)

end

end A220662.P9996294767845325282

noncomputable section

/-- A220662: Irregular table: row n (n>=1) consists of A084556(n) copies of A130664(n).

Offset 1, canonical program `A220662.P9996294767845325282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5914 terms. -/
def A220662 (n : ℕ) : ℤ :=
  A220662.P9996294767845325282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5914 terms. -/
def A220662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226084.P639156218572003738

`(A189835(n+1)-A346759(n+1))/2`
-/

namespace A226084.P639156218572003738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189835 (n + 1) - A346759 (n + 1) : ℚ) / 2

end

end A226084.P639156218572003738

noncomputable section

/-- A226084: Number of partitions of n with Cookie Monster number 2.

Offset 1, canonical program `A226084.P639156218572003738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226084 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A226084.P639156218572003738.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229297.P6774960960477572265

`A037213(A235872(n+1))`
-/

namespace A229297.P6774960960477572265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A235872 (n + 1)).toNat

end

end A229297.P6774960960477572265

noncomputable section

/-- A229297: Number of solutions to x^2 == n (mod 2*n) for 0 <= x < 2*n.

Offset 1, canonical program `A229297.P6774960960477572265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229297 (n : ℕ) : ℤ :=
  A229297.P6774960960477572265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230290.P15432606155864082037

`∑[A230476(3*(n+1))-A230476(3*n+2)]`
-/

namespace A230290.P15432606155864082037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230476 (3 * (n + 1)) - A230476 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230290.P15432606155864082037

noncomputable section

/-- A230290: a(n) = Sum_{i=1..n} d(24*i+1) - Sum_{i=1..n} d(6*i+1), where d(n) = A000005(n).

Offset 1, canonical program `A230290.P15432606155864082037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A230290 (n : ℕ) : ℤ :=
  A230290.P15432606155864082037.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A230290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246838.P16287006032575698677

`A262726(n)/A057079(n)`
-/

namespace A246838.P16287006032575698677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262726 n : ℚ) / (A057079 n : ℚ)

end

end A246838.P16287006032575698677

noncomputable section

/-- A246838: Expansion of f(-x^2) * f(-x^12)^2 / f(x^1, x^5) in powers of x where f() is Ramanujan theta function.

Offset 0, canonical program `A246838.P16287006032575698677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246838 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A246838.P16287006032575698677.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256387.P2495670137866599394

`A100319(n+1)-3`
-/

namespace A256387.P2495670137866599394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100319 (n + 1) - 3

end

end A256387.P2495670137866599394

noncomputable section

/-- A256387: Numbers n such that no prime can be the arithmetic mean of 2 semiprimes whose difference is 2*n.

Offset 1, canonical program `A256387.P2495670137866599394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256387 (n : ℕ) : ℤ :=
  A256387.P2495670137866599394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265333.P11142459361382241526

`A084558(n)-A084558(A004526(n))`
-/

namespace A265333.P11142459361382241526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n - A084558 (A004526 n).toNat

end

end A265333.P11142459361382241526

noncomputable section

/-- A265333: Characteristic function for A265334: a(n) = 1 if n >= k! but < 2*k! for some k, 0 otherwise.

Offset 0, canonical program `A265333.P11142459361382241526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265333 (n : ℕ) : ℤ :=
  A265333.P11142459361382241526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265893.P4567769337452854523

`A084558(n)-A230403(A028310(n))`
-/

namespace A265893.P4567769337452854523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n - A230403 (A028310 n).toNat

end

end A265893.P4567769337452854523

noncomputable section

/-- A265893: a(n) = A084558(n) - A230403(n); the length of factorial base representation of n without its trailing zeros.

Offset 0, canonical program `A265893.P4567769337452854523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265893 (n : ℕ) : ℤ :=
  A265893.P4567769337452854523.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269594.P601689813181141290

`(A269590(n)²+4)/5^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269594.P601689813181141290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269590 n ^ 2 + 4 : ℚ) / (5 ^ n : ℚ)

end

end A269594.P601689813181141290

noncomputable section

/-- A269594: a(n) = (A269590(n)^2 + 4)/5^n, n >= 0.

Offset 0, canonical program `A269594.P601689813181141290`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269594 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A269594.P601689813181141290.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269594.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282238.P12994779080358154349

`A214677(A000045(n+1))`
-/

namespace A282238.P12994779080358154349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (A000045 (n + 1)).toNat

end

end A282238.P12994779080358154349

noncomputable section

/-- A282238: a(n) = Fibonacci(n) represented in bijective base-7 numeration.

Offset 1, canonical program `A282238.P12994779080358154349`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282238 (n : ℕ) : ℤ :=
  A282238.P12994779080358154349.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284324.P5958562104063105870

`∩[A028846(n+1), A062372(n+1)]`
-/

namespace A284324.P5958562104063105870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284324.P5958562104063105870

noncomputable section

/-- A284324: Numbers k such that product of digits of k is a power of 8.

Offset 1, canonical program `A284324.P5958562104063105870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1013 terms. -/
def A284324 (n : ℕ) : ℤ :=
  (A284324.P5958562104063105870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1013 terms. -/
def A284324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120311.P5390284773366377724

`∩[A080148(n+1), A120309(n+1)]`
-/

namespace A120311.P5390284773366377724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120311.P5390284773366377724

noncomputable section

/-- A120311: Numbers k such that pi(k) == 0 (mod 4), where pi() = A000720, and such that prime(k) == 3 (mod 4).

Offset 1, canonical program `A120311.P5390284773366377724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A120311 (n : ℕ) : ℤ :=
  (A120311.P5390284773366377724.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A120311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125131.P2814879206416894113

`∏{d}[n+1, 1-A120007(#)]`
-/

namespace A125131.P2814879206416894113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (1 - A120007 d)

end

end A125131.P2814879206416894113

noncomputable section

/-- A125131: Product 1-p, where p ranges over the prime factors of n with multiplicity.

Offset 1, canonical program `A125131.P2814879206416894113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125131 (n : ℕ) : ℤ :=
  A125131.P2814879206416894113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126867.P8640075110133158416

`2*A000040(∑[A105149(n+1)])`
-/

namespace A126867.P8640075110133158416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126867.P8640075110133158416

noncomputable section

/-- A126867: Largest even semiprime <= n^2.

Offset 2, canonical program `A126867.P8640075110133158416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A126867 (n : ℕ) : ℤ :=
  A126867.P8640075110133158416.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A126867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127435.P10299367039698529313

`A070689(n+1)+1`
-/

namespace A127435.P10299367039698529313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1) + 1

end

end A127435.P10299367039698529313

noncomputable section

/-- A127435: Primes p such that (p-1)^2 + 1 is prime.

Offset 1, canonical program `A127435.P10299367039698529313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127435 (n : ℕ) : ℤ :=
  A127435.P10299367039698529313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130200.P5098395854931110605

`A130199(n+1)/2`
-/

namespace A130200.P5098395854931110605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130199 (n + 1) : ℚ) / 2

end

end A130200.P5098395854931110605

noncomputable section

/-- A130200: Evil triangular numbers.

Offset 1, canonical program `A130200.P5098395854931110605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130199, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130200 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A130200.P5098395854931110605.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130199, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130200.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130800.P624148309857847893

`floor(A104163(n+1)/3)`
-/

namespace A130800.P624148309857847893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104163 (n + 1) : ℚ) / 3⌋

end

end A130800.P624148309857847893

noncomputable section

/-- A130800: Numbers k such that both 2k+1 and 3k+1 are primes.

Offset 1, canonical program `A130800.P624148309857847893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130800 (n : ℕ) : ℤ :=
  A130800.P624148309857847893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131271.P16044540476189074573

`A066194(A049773(n+1))`
-/

namespace A131271.P16044540476189074573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (A049773 (n + 1)).toNat

end

end A131271.P16044540476189074573

noncomputable section

/-- A131271: Triangular array T(n,k), n>=0, k=1..2^n, read by rows in bracketed pairs such that highest ranked element is bracketed with lowest ranked.

Offset 0, canonical program `A131271.P16044540476189074573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A131271 (n : ℕ) : ℤ :=
  A131271.P16044540476189074573.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A131271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131961.P4236361226721680594

`A123484(24*n+1)`
-/

namespace A131961.P4236361226721680594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123484 (24 * n + 1)

end

end A131961.P4236361226721680594

noncomputable section

/-- A131961: Expansion of f(x, x^2) * f(x^2, x^2) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A131961.P4236361226721680594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131961 (n : ℕ) : ℤ :=
  A131961.P4236361226721680594.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131961.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134013.P3057946440017959852

`(-1)^n*A112301(n+1)`
-/

namespace A134013.P3057946440017959852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112301 (n + 1)

end

end A134013.P3057946440017959852

noncomputable section

/-- A134013: Expansion of q * phi(q) * psi(q^8) in powers of q where phi(), psi() are Ramanujan theta functions.

Offset 1, canonical program `A134013.P3057946440017959852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134013 (n : ℕ) : ℤ :=
  A134013.P3057946440017959852.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136207.P3473183565243102023

`∪[A023201(n+1), A046117(n+1)]`
-/

namespace A136207.P3473183565243102023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136207.P3473183565243102023

noncomputable section

/-- A136207: Primes p such that p-6 or p+6 is prime.

Offset 1, canonical program `A136207.P3473183565243102023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136207 (n : ℕ) : ℤ :=
  (A136207.P3473183565243102023.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137921.P4123784932500151371

`A000005(n+1)-A129308(n+1)`
-/

namespace A137921.P4123784932500151371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A129308 (n + 1)

end

end A137921.P4123784932500151371

noncomputable section

/-- A137921: Number of divisors d of n such that d+1 is not a divisor of n.

Offset 1, canonical program `A137921.P4123784932500151371`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A129308, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A137921 (n : ℕ) : ℤ :=
  A137921.P4123784932500151371.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A129308, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A137921.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138971.P14613520405082129352

`A080148(n+1)-1`
-/

namespace A138971.P14613520405082129352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080148 (n + 1) - 1

end

end A138971.P14613520405082129352

noncomputable section

/-- A138971: Positions of the primes congruent to 3 mod 4 when all primes except 2 are listed in order.

Offset 1, canonical program `A138971.P14613520405082129352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138971 (n : ℕ) : ℤ :=
  A138971.P14613520405082129352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139708.P11046973668171261944

`A057889(A059893(n+1))`
-/

namespace A139708.P11046973668171261944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A059893 (n + 1)).toNat

end

end A139708.P11046973668171261944

noncomputable section

/-- A139708: Take n in binary. Rotate the binary digits to the left until a 1 once again appears as the leftmost digit. Convert back into decimal for a(n).

Offset 1, canonical program `A139708.P11046973668171261944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139708 (n : ℕ) : ℤ :=
  A139708.P11046973668171261944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140255.P14497844489668583855

`∑{d}[n+1, A028310(A120007(#))]`
-/

namespace A140255.P14497844489668583855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A028310 (A120007 d).toNat

end

end A140255.P14497844489668583855

noncomputable section

/-- A140255: Inverse Mobius transform of A014963.

Offset 1, canonical program `A140255.P14497844489668583855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140255 (n : ℕ) : ℤ :=
  A140255.P14497844489668583855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142348.P7541731852378196357

`p?[A141468(n+1)+p?[xor(1, n)+1]]`
-/

namespace A142348.P7541731852378196357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142348.P7541731852378196357

noncomputable section

/-- A142348: Primes of the form (p(n)+r(n)), where p(n)=n-th prime and r(n)=n-th nonprime.

Offset 1, canonical program `A142348.P7541731852378196357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A142348 (n : ℕ) : ℤ :=
  A142348.P7541731852378196357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A142348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144551.P9471989750803673522

`A141468(n+1)*A141468(n+2)/2`
-/

namespace A144551.P9471989750803673522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141468 (n + 1) * A141468 (n + 2) : ℚ) / 2

end

end A144551.P9471989750803673522

noncomputable section

/-- A144551: a(n) = nonprime(n)*nonprime(n+1)/2, where nonprime(n) = A141468(n).

Offset 1, canonical program `A144551.P9471989750803673522`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144551 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144551.P9471989750803673522.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144570.P11118034758568014224

`A141468(A000040(n+1))`
-/

namespace A144570.P11118034758568014224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A000040 (n + 1)).toNat

end

end A144570.P11118034758568014224

noncomputable section

/-- A144570: Nonprime(prime(n)).

Offset 1, canonical program `A144570.P11118034758568014224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A144570 (n : ℕ) : ℤ :=
  A144570.P11118034758568014224.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A144570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144573.P389422865237897508

`A007918(A141468(A000040(n+1)))`
-/

namespace A144573.P389422865237897508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A141468 (A000040 (n + 1)).toNat).toNat

end

end A144573.P389422865237897508

noncomputable section

/-- A144573: Smallest prime greater than nonprime(prime(n)).

Offset 1, canonical program `A144573.P389422865237897508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007918, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A144573 (n : ℕ) : ℤ :=
  A144573.P389422865237897508.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007918, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A144573.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145391.P5707543150065796905

`(A000203(n+1)+A145390(n+1))/2`
-/

namespace A145391.P5707543150065796905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + A145390 (n + 1) : ℚ) / 2

end

end A145391.P5707543150065796905

noncomputable section

/-- A145391: Number of inequivalent sublattices of index n in centered rectangular lattice.

Offset 1, canonical program `A145391.P5707543150065796905`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145390, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145391 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145391.P5707543150065796905.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145390, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145391.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145393.P14008747392456650763

`(A000203(n+1)+A002654(n+1)+A069735(n+1)+A145390(n+1))/4`
-/

namespace A145393.P14008747392456650763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + A002654 (n + 1) + A069735 (n + 1) + A145390 (n + 1) : ℚ) / 4

end

end A145393.P14008747392456650763

noncomputable section

/-- A145393: Number of inequivalent sublattices of index n in square lattice, where two sublattices are considered equivalent if one can be rotated or reflected to give the other, with that rotation or reflection preserving the parent square lattice.

Offset 1, canonical program `A145393.P14008747392456650763`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, A069735, A145390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A145393 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145393.P14008747392456650763.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, A069735, A145390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A145393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153049.P7296181475207406392

`A153044(n+1)+2`
-/

namespace A153049.P7296181475207406392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153044 (n + 1) + 2

end

end A153049.P7296181475207406392

noncomputable section

/-- A153049: Numbers n such that 2*n - 13 is not a prime.

Offset 1, canonical program `A153049.P7296181475207406392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153049 (n : ℕ) : ℤ :=
  A153049.P7296181475207406392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153769.P8015632483883398881

`record[A025480(A004525(A153044(n+1)))]`
-/

namespace A153769.P8015632483883398881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A004525 (A153044 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153769.P8015632483883398881

noncomputable section

/-- A153769: Numbers n such that 8n-9 is not prime.

Offset 1, canonical program `A153769.P8015632483883398881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A153769 (n : ℕ) : ℤ :=
  A153769.P8015632483883398881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A153769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155054.P1451719256099670011

`p?[A000720(A154386(n+1))]`
-/

namespace A155054.P1451719256099670011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A154386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155054.P1451719256099670011

noncomputable section

/-- A155054: Primes p such that (number of prime digits of prime(p)) < (number of nonprime digits of prime(p)).

Offset 1, canonical program `A155054.P1451719256099670011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 708 terms. -/
def A155054 (n : ℕ) : ℤ :=
  A155054.P1451719256099670011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 708 terms. -/
def A155054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155723.P13840957345735942896

`A153053(n+1)-1`
-/

namespace A155723.P13840957345735942896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 1) - 1

end

end A155723.P13840957345735942896

noncomputable section

/-- A155723: Numbers k such that 2*k + 9 is not prime.

Offset 1, canonical program `A155723.P13840957345735942896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155723 (n : ℕ) : ℤ :=
  A155723.P13840957345735942896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157780.P17497891769004072797

`A059222(n+1)*A141459(n)`
-/

namespace A157780.P17497891769004072797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059222 (n + 1) * A141459 n

end

end A157780.P17497891769004072797

noncomputable section

/-- A157780: Denominator of Bernoulli(n, 1/2).

Offset 0, canonical program `A157780.P17497891769004072797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A157780 (n : ℕ) : ℤ :=
  A157780.P17497891769004072797.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A157780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157782.P4780299263270215936

`A141459(n)*A213173(n)`
-/

namespace A157782.P4780299263270215936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n * A213173 n

end

end A157782.P4780299263270215936

noncomputable section

/-- A157782: Denominator of Bernoulli(n, -1/2).

Offset 0, canonical program `A157782.P4780299263270215936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A157782 (n : ℕ) : ℤ :=
  A157782.P4780299263270215936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A157782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157818.P6307452564829515013

`4^n*A141459(n)`
-/

namespace A157818.P6307452564829515013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A141459 n

end

end A157818.P6307452564829515013

noncomputable section

/-- A157818: Denominator of Bernoulli(n, 1/4).

Offset 0, canonical program `A157818.P6307452564829515013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A157818 (n : ℕ) : ℤ :=
  A157818.P6307452564829515013.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A157818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160255.P16099810821214577880

`(A000578(n+1)-(n+1)*A018804(n+1))/2`
-/

namespace A160255.P16099810821214577880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (n + 1) - (n + 1 : ℤ) * A018804 (n + 1) : ℚ) / 2

end

end A160255.P16099810821214577880

noncomputable section

/-- A160255: The sum of all the entries in an n X n Cayley table for multiplication in Z_n.

Offset 1, canonical program `A160255.P16099810821214577880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160255 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160255.P16099810821214577880.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161671.P6686431630733255058

`A000040(n+1)-A141468(n+1)`
-/

namespace A161671.P6686431630733255058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A141468 (n + 1)

end

end A161671.P6686431630733255058

noncomputable section

/-- A161671: a(n) = prime(n) - A141468(n).

Offset 1, canonical program `A161671.P6686431630733255058`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161671 (n : ℕ) : ℤ :=
  A161671.P6686431630733255058.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161811.P1074302778511072887

`A141468(n+3)-A141468(n+1)`
-/

namespace A161811.P1074302778511072887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) - A141468 (n + 1)

end

end A161811.P1074302778511072887

noncomputable section

/-- A161811: Difference between nonprime(n+2) and nonprime(n).

Offset 1, canonical program `A161811.P1074302778511072887`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161811 (n : ℕ) : ℤ :=
  A161811.P1074302778511072887.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161811.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161843.P14238606548560197180

`A002808(n+1)+A141468(n+1)`
-/

namespace A161843.P14238606548560197180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + A141468 (n + 1)

end

end A161843.P14238606548560197180

noncomputable section

/-- A161843: a(n) = n-th composite plus n-th nonprime.

Offset 1, canonical program `A161843.P14238606548560197180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161843 (n : ℕ) : ℤ :=
  A161843.P14238606548560197180.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161844.P543762527301748495

`A002808(n+1)*A141468(n+1)`
-/

namespace A161844.P543762527301748495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) * A141468 (n + 1)

end

end A161844.P543762527301748495

noncomputable section

/-- A161844: Product of the n-th composite by the n-th nonprime.

Offset 1, canonical program `A161844.P543762527301748495`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161844 (n : ℕ) : ℤ :=
  A161844.P543762527301748495.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161844.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161845.P15767429707514864025

`A002808(n+1)^A141468(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161845.P15767429707514864025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) ^ (A141468 (n + 1) : ℤ)

end

end A161845.P15767429707514864025

noncomputable section

/-- A161845: a(n) = A002808(n)^A141468(n).

Offset 1, canonical program `A161845.P15767429707514864025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161845 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161845.P15767429707514864025.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161845.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161964.P4214855072703663802

`A000040(n+1)^A141468(n+1)`
-/

namespace A161964.P4214855072703663802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A141468 (n + 1) : ℤ)

end

end A161964.P4214855072703663802

noncomputable section

/-- A161964: Prime(n) raised to the nonprime(n)-th power.

Offset 1, canonical program `A161964.P4214855072703663802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161964 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161964.P4214855072703663802.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161964.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162888.P12511542881006591627

`A064455(A141468(n+1)+1)`
-/

namespace A162888.P12511542881006591627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (A141468 (n + 1) + 1).toNat

end

end A162888.P12511542881006591627

noncomputable section

/-- A162888: An alternating sum of the first n nonprimes.

Offset 1, canonical program `A162888.P12511542881006591627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162888 (n : ℕ) : ℤ :=
  A162888.P12511542881006591627.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162888.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162909.P4760727200634389971

`A002487(A059893(A258746(n+1)))`
-/

namespace A162909.P4760727200634389971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A059893 (A258746 (n + 1)).toNat).toNat

end

end A162909.P4760727200634389971

noncomputable section

/-- A162909: Numerators of Bird tree fractions.

Offset 1, canonical program `A162909.P4760727200634389971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A059893, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162909 (n : ℕ) : ℤ :=
  A162909.P4760727200634389971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A059893, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162909.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162910.P10176663424386777526

`A002487(1+A059893(A258746(n+1)))`
-/

namespace A162910.P10176663424386777526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A059893 (A258746 (n + 1)).toNat).toNat

end

end A162910.P10176663424386777526

noncomputable section

/-- A162910: Denominators of Bird tree fractions.

Offset 1, canonical program `A162910.P10176663424386777526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A059893, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162910 (n : ℕ) : ℤ :=
  A162910.P10176663424386777526.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A059893, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162910.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163121.P3309701501368410349

`A030078(n+1)-A141468(n+1)^3`
-/

namespace A163121.P3309701501368410349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - A141468 (n + 1) ^ 3

end

end A163121.P3309701501368410349

noncomputable section

/-- A163121: (prime(n))^3-(nonprime(n))^3 .

Offset 1, canonical program `A163121.P3309701501368410349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163121 (n : ℕ) : ℤ :=
  A163121.P3309701501368410349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163296.P4397503686848733258

`abs(A130472(A141468(n+1)))`
-/

namespace A163296.P4397503686848733258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130472 (A141468 (n + 1)).toNat|

end

end A163296.P4397503686848733258

noncomputable section

/-- A163296: Absolute value of the Sum_{x=0..A141468(n)} x*(-1)^x.

Offset 1, canonical program `A163296.P4397503686848733258`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163296 (n : ℕ) : ℤ :=
  A163296.P4397503686848733258.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163400.P14572793811619071824

`A070939(A141468(n+1))`
-/

namespace A163400.P14572793811619071824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A141468 (n + 1)).toNat

end

end A163400.P14572793811619071824

noncomputable section

/-- A163400: Number of bits in binary expansion of n-th nonprime.

Offset 1, canonical program `A163400.P14572793811619071824`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163400 (n : ℕ) : ℤ :=
  A163400.P14572793811619071824.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163400.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163751.P842914624202263356

`A163300(n+1)-A141468(n+1)`
-/

namespace A163751.P842914624202263356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1) - A141468 (n + 1)

end

end A163751.P842914624202263356

noncomputable section

/-- A163751: a(n) = n-th even nonprime minus n-th nonprime.

Offset 1, canonical program `A163751.P842914624202263356`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163751 (n : ℕ) : ℤ :=
  A163751.P842914624202263356.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163751.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163975.P2243205309422245739

`A141468(n+1)-(-1)^A141468(n+1)`
-/

namespace A163975.P2243205309422245739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141468 (n + 1) : ℚ) - (-1 : ℚ) ^ (A141468 (n + 1) : ℤ)

end

end A163975.P2243205309422245739

noncomputable section

/-- A163975: n-th nonprime - (-1)^(n-th nonprime).

Offset 1, canonical program `A163975.P2243205309422245739`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163975 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163975.P2243205309422245739.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163975.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163976.P5511687890835414188

`A000040(n+1)-(-1)^A141468(n+1)`
-/

namespace A163976.P5511687890835414188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) - (-1 : ℚ) ^ (A141468 (n + 1) : ℤ)

end

end A163976.P5511687890835414188

noncomputable section

/-- A163976: prime(n) -(-1)^(n-th nonprime).

Offset 1, canonical program `A163976.P5511687890835414188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163976 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163976.P5511687890835414188.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164029.P8853241427937616947

`A141468(n+1)+(-1)^A141468(n+1)`
-/

namespace A164029.P8853241427937616947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141468 (n + 1) : ℚ) + (-1 : ℚ) ^ (A141468 (n + 1) : ℤ)

end

end A164029.P8853241427937616947

noncomputable section

/-- A164029: a(n) = nonprime(n) + (-1)^(nonprime(n)).

Offset 1, canonical program `A164029.P8853241427937616947`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164029 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A164029.P8853241427937616947.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166037.P12323289688813525032

`A141468(n+1)+A141468(n+2)`
-/

namespace A166037.P12323289688813525032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + A141468 (n + 2)

end

end A166037.P12323289688813525032

noncomputable section

/-- A166037: Numbers that are the sum of 2 successive nonprimes A141468.

Offset 1, canonical program `A166037.P12323289688813525032`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166037 (n : ℕ) : ℤ :=
  A166037.P12323289688813525032.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166037.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166653.P16103000005196691296

`∏{d}[n+1, A004273(A004273(A120007(#))+1)]`
-/

namespace A166653.P16103000005196691296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A004273 (A004273 (A120007 d).toNat + 1).toNat

end

end A166653.P16103000005196691296

noncomputable section

/-- A166653: Totally multiplicative sequence with a(p) = 4p-1 for prime p.

Offset 1, canonical program `A166653.P16103000005196691296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A166653 (n : ℕ) : ℤ :=
  A166653.P16103000005196691296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A166653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166661.P3421275520976742187

`∏{d}[n+1, 3*A120007(#)+1]`
-/

namespace A166661.P3421275520976742187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (3 * A120007 d + 1)

end

end A166661.P3421275520976742187

noncomputable section

/-- A166661: Totally multiplicative sequence with a(p) = 3p+1 for prime p.

Offset 1, canonical program `A166661.P3421275520976742187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166661 (n : ℕ) : ℤ :=
  A166661.P3421275520976742187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166662.P6981319434609647440

`∏{d}[n+1, 4*A120007(#)+1]`
-/

namespace A166662.P6981319434609647440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (4 * A120007 d + 1)

end

end A166662.P6981319434609647440

noncomputable section

/-- A166662: Totally multiplicative sequence with a(p) = 4p+1 for prime p.

Offset 1, canonical program `A166662.P6981319434609647440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166662 (n : ℕ) : ℤ :=
  A166662.P6981319434609647440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166666.P16984493858278454942

`∏{d}[n+1, A017077(A120007(#))]`
-/

namespace A166666.P16984493858278454942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A017077 (A120007 d).toNat

end

end A166666.P16984493858278454942

noncomputable section

/-- A166666: Totally multiplicative sequence with a(p) = 8p+1 for prime p.

Offset 1, canonical program `A166666.P16984493858278454942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166666 (n : ℕ) : ℤ :=
  A166666.P16984493858278454942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167462.P18008838724901642984

`p?[A153238(n+1)+4]`
-/

namespace A167462.P18008838724901642984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167462.P18008838724901642984

noncomputable section

/-- A167462: Primes p such that 2*p-5 is composite.

Offset 1, canonical program `A167462.P18008838724901642984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167462 (n : ℕ) : ℤ :=
  A167462.P18008838724901642984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170816.P3100006871981450052

`A140475(n+1)-A141468(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A170816.P3100006871981450052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1) - A141468 (n + 1)

end

end A170816.P3100006871981450052

noncomputable section

/-- A170816: a(n)=A140475(n)-A141468(n).

Offset 1, canonical program `A170816.P3100006871981450052`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140475, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A170816 (n : ℕ) : ℤ :=
  A170816.P3100006871981450052.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140475, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A170816.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172071.P10522151630773515166

`A046117(n-gcd(n, a(n-1))+1)` with `a(0)=2`
-/

namespace A172071.P10522151630773515166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A046117 ((n : ℤ) - (Int.gcd (n : ℤ) (a (n - 1)) : ℤ) + 1).toNat

end

end A172071.P10522151630773515166

noncomputable section

/-- A172071: Primes p such that either p - 5/2 -+ 7/2 is prime.

Offset 1, canonical program `A172071.P10522151630773515166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172071 (n : ℕ) : ℤ :=
  A172071.P10522151630773515166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172087.P4108028179192671906

`A141459(and(n, -2))`
-/

namespace A172087.P4108028179192671906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 (Int.land (n : ℤ) (-2)).toNat

end

end A172087.P4108028179192671906

noncomputable section

/-- A172087: A001897 with terms repeated.

Offset 0, canonical program `A172087.P4108028179192671906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1316 terms. -/
def A172087 (n : ℕ) : ℤ :=
  A172087.P4108028179192671906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1316 terms. -/
def A172087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172256.P3636128237648149891

`∩[A153043(n+1), A163769(n+1)]`
-/

namespace A172256.P3636128237648149891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172256.P3636128237648149891

noncomputable section

/-- A172256: Primes p such that 2*p+-3 are both nonprimes.

Offset 1, canonical program `A172256.P3636128237648149891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 738 terms. -/
def A172256 (n : ℕ) : ℤ :=
  (A172256.P3636128237648149891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 738 terms. -/
def A172256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172988.P6987108321131650744

`A046117(n%a(n-1))` with `a(0)=5`
-/

namespace A172988.P6987108321131650744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A046117 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A172988.P6987108321131650744

noncomputable section

/-- A172988: Primes p such that either p-3 or p-6 is prime.

Offset 1, canonical program `A172988.P6987108321131650744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172988 (n : ℕ) : ℤ :=
  A172988.P6987108321131650744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173073.P16730298799530633578

`A141468(n+1)-n`
-/

namespace A173073.P16730298799530633578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) - (n : ℤ)

end

end A173073.P16730298799530633578

noncomputable section

/-- A173073: (n-th nonnegative nonprime) minus (n-1).

Offset 1, canonical program `A173073.P16730298799530633578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173073 (n : ℕ) : ℤ :=
  A173073.P16730298799530633578.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173073.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173444.P1593078176672879792

`A000720(A070689(n+2)-1)+1`
-/

namespace A173444.P1593078176672879792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A070689 (n + 2) - 1).toNat + 1

end

end A173444.P1593078176672879792

noncomputable section

/-- A173444: Either (n-th prime-1)^2-+1, but not both, is prime.

Offset 1, canonical program `A173444.P1593078176672879792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1049 terms. -/
def A173444 (n : ℕ) : ℤ :=
  A173444.P1593078176672879792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1049 terms. -/
def A173444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174275.P653358463232501852

`A120007(n+1)%2`
-/

namespace A174275.P653358463232501852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120007 (n + 1)) 2

end

end A174275.P653358463232501852

noncomputable section

/-- A174275: a(n) = 2^(n-1) mod M(n) where M(n) = A014963(n) is the exponential of the Mangoldt function.

Offset 1, canonical program `A174275.P653358463232501852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174275 (n : ℕ) : ℤ :=
  A174275.P653358463232501852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174282.P4386332101295534443

`A120007(n+1)²%3`
-/

namespace A174282.P4386332101295534443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120007 (n + 1) ^ 2) 3

end

end A174282.P4386332101295534443

noncomputable section

/-- A174282: a(n) = 3^n mod M(n) where M(n) = A014963(n) is the exponential of the Mangoldt function.

Offset 1, canonical program `A174282.P4386332101295534443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174282 (n : ℕ) : ℤ :=
  A174282.P4386332101295534443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176100.P16175186196650254316

`2*A141468(n+1)`
-/

namespace A176100.P16175186196650254316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141468 (n + 1)

end

end A176100.P16175186196650254316

noncomputable section

/-- A176100: Even numbers that are not semiprimes, or, twice the nonprimes.

Offset 1, canonical program `A176100.P16175186196650254316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176100 (n : ℕ) : ℤ :=
  A176100.P16175186196650254316.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176393.P4613748579070152281

`2*A141468(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176393.P4613748579070152281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141468 (n + 1) + 1

end

end A176393.P4613748579070152281

noncomputable section

/-- A176393: a(n) = A176100(n) + 1 = 2*A141468(n) + 1.

Offset 1, canonical program `A176393.P4613748579070152281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176393 (n : ℕ) : ℤ :=
  A176393.P4613748579070152281.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176525.P2039042550219139335

`eq[2, A064547(n+1)]+1`
-/

namespace A176525.P2039042550219139335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176525.P2039042550219139335

noncomputable section

/-- A176525: Fermi-Dirac semiprimes: products of two distinct terms of A050376.

Offset 1, canonical program `A176525.P2039042550219139335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176525 (n : ℕ) : ℤ :=
  (A176525.P2039042550219139335.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178902.P11492977343960863518

`(-1)^n*A080332(n)`
-/

namespace A178902.P11492977343960863518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A080332 n

end

end A178902.P11492977343960863518

noncomputable section

/-- A178902: Expansion of q^(-1/24) * eta(q^2)^13 / (eta(q)^5 * eta(q^4)^5) in powers of q.

Offset 0, canonical program `A178902.P11492977343960863518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080332, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178902 (n : ℕ) : ℤ :=
  A178902.P11492977343960863518.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080332, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179896.P6951967980762549515

`A045943(A141468(n+2)-1)`
-/

namespace A179896.P6951967980762549515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (A141468 (n + 2) - 1).toNat

end

end A179896.P6951967980762549515

noncomputable section

/-- A179896: Sum of the numbers between k := n-th nonprime and 2k (like a jump in a Sieve of Eratosthenes).

Offset 1, canonical program `A179896.P6951967980762549515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179896 (n : ℕ) : ℤ :=
  A179896.P6951967980762549515.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179896.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180963.P13220022959502926567

`3*A036556(n+1)`
-/

namespace A180963.P13220022959502926567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A036556 (n + 1)

end

end A180963.P13220022959502926567

noncomputable section

/-- A180963: Numbers divisible by 3 with an odd number of 1s in their base 2 representation.

Offset 1, canonical program `A180963.P13220022959502926567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180963 (n : ℕ) : ℤ :=
  A180963.P13220022959502926567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180963.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181331.P9429198291935471883

`1/2*A181294(n)`
-/

namespace A181331.P9429198291935471883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A181294 n : ℚ)

end

end A181331.P9429198291935471883

noncomputable section

/-- A181331: Number of 0's in the top rows of all 2-compositions of n.

Offset 0, canonical program `A181331.P9429198291935471883`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181294, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181331 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A181331.P9429198291935471883.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181294, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A195155.P6480177575131545009

`1+A129308(n+1)`
-/

namespace A195155.P6480177575131545009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A129308 (n + 1)

end

end A195155.P6480177575131545009

noncomputable section

/-- A195155: Number of divisors d of n such that d-1 also divides n or d-1 = 0.

Offset 1, canonical program `A195155.P6480177575131545009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195155 (n : ℕ) : ℤ :=
  A195155.P6480177575131545009.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195155.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206959.P14736947184472277648

`(-1)^n*A206958(n)`
-/

namespace A206959.P14736947184472277648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A206958 n

end

end A206959.P14736947184472277648

noncomputable section

/-- A206959: Expansion of f(-x^5, x^7) + x * f(x, -x^11) in powers of x where f() is Ramanujan's two-variable theta function.

Offset 0, canonical program `A206959.P14736947184472277648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206959 (n : ℕ) : ℤ :=
  A206959.P14736947184472277648.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A207735.P10639915020263439183

`A033999(n)*A113681(n)`
-/

namespace A207735.P10639915020263439183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A113681 n

end

end A207735.P10639915020263439183

noncomputable section

/-- A207735: Expansion of f(-x^2, x^3)^2 / f(x, -x^2) in powers of x where f() is Ramanujan's two-variable theta function.

Offset 0, canonical program `A207735.P10639915020263439183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207735 (n : ℕ) : ℤ :=
  A207735.P10639915020263439183.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209978.P9884269907601599260

`floor(A171503(n)/2-n)`
-/

namespace A209978.P9884269907601599260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171503 n : ℚ) / 2 - (n : ℚ)⌋

end

end A209978.P9884269907601599260

noncomputable section

/-- A209978: a(n) = A196227(n)/2.

Offset 0, canonical program `A209978.P9884269907601599260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A209978 (n : ℕ) : ℤ :=
  A209978.P9884269907601599260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A209978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221282.P15751226315535615797

`A221281(eq[1, A221281(n+2)-A221281(n+1)]+1)`
-/

namespace A221282.P15751226315535615797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221281 (n + 2) - A221281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A221282.P15751226315535615797

noncomputable section

/-- A221282: Numbers n such that lambda(n) = lambda(n+1) = lambda(n+2) = lambda(n+3), where lambda(n) = A008836(n) is the Liouville function.

Offset 1, canonical program `A221282.P15751226315535615797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5083 terms. -/
def A221282 (n : ℕ) : ℤ :=
  A221282.P15751226315535615797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5083 terms. -/
def A221282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224787.P11375264175183954260

`∑{d}[n+1, A120007((n+1)/#)^3]`
-/

namespace A224787.P11375264175183954260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120007 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 3

end

end A224787.P11375264175183954260

noncomputable section

/-- A224787: Sum of cubes of prime factors of n (counted with multiplicity).

Offset 1, canonical program `A224787.P11375264175183954260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224787 (n : ℕ) : ℤ :=
  A224787.P11375264175183954260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230117.P7534826294184350368

`∩[A163769(n+1), A215751(n+1)]`
-/

namespace A230117.P7534826294184350368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P7534826294184350368

noncomputable section

/-- A230117: Primes p such that 2*p+1 is prime and 2*p+3 is not prime.

Offset 1, canonical program `A230117.P7534826294184350368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1235 terms. -/
def A230117 (n : ℕ) : ℤ :=
  (A230117.P7534826294184350368.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1235 terms. -/
def A230117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231089.P5698171417465960839

`∩[A231088(n+1)-2, A231088(n+1)]`
-/

namespace A231089.P5698171417465960839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231088 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231089.P5698171417465960839

noncomputable section

/-- A231089: Initial members of abundant quadruplets, i.e., values of k such that (k, k+2, k+4, k+6) are all abundant numbers.

Offset 1, canonical program `A231089.P5698171417465960839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1095 terms. -/
def A231089 (n : ℕ) : ℤ :=
  (A231089.P5698171417465960839.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1095 terms. -/
def A231089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234307.P17695317593474618557

`(A018804(2*(n+1))-(n+1))/2`
-/

namespace A234307.P17695317593474618557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (2 * (n + 1)) - (n + 1 : ℤ) : ℚ) / 2

end

end A234307.P17695317593474618557

noncomputable section

/-- A234307: a(n) = Sum_{i=1..n} gcd(2*n-i, i).

Offset 1, canonical program `A234307.P17695317593474618557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234307 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A234307.P17695317593474618557.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234307.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240356.P203130154037057721

`A121373(A001462(n+1)*A062028(3*n))`
-/

namespace A240356.P203130154037057721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A001462 (n + 1) * A062028 (3 * n)).toNat

end

end A240356.P203130154037057721

noncomputable section

/-- A240356: Inverse of 73rd cyclotomic polynomial.

Offset 0, canonical program `A240356.P203130154037057721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A240356 (n : ℕ) : ℤ :=
  A240356.P203130154037057721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A240356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242190.P12255216913166492648

`A091633(eq[3, dr(3*A091633(n+1))]+1)`
-/

namespace A242190.P12255216913166492648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * A091633 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A242190.P12255216913166492648

noncomputable section

/-- A242190: Primes congruent to 1 (mod 3) which only have the odd digits {1, 3, 7, 9}.

Offset 1, canonical program `A242190.P12255216913166492648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4884 terms. -/
def A242190 (n : ℕ) : ℤ :=
  A242190.P12255216913166492648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4884 terms. -/
def A242190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249948.P1807570156630475926

`Δ[A249942(n)/a(A000038(n))]` with `a(0)=1`
-/

namespace A249948.P1807570156630475926
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A249942 n : ℚ) / f1 (A000038 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249948.P1807570156630475926

noncomputable section

/-- A249948: Gaps between single 1's in the Kolakoski sequence A000002.

Offset 1, canonical program `A249948.P1807570156630475926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249948 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A249948.P1807570156630475926.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257687.P7012285749589745258

`n%A084558(n)!`
-/

namespace A257687.P7012285749589745258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.factorial (A084558 n).toNat

end

end A257687.P7012285749589745258

noncomputable section

/-- A257687: Discard the most significant digit from factorial base representation of n, then convert back to decimal: a(n) = n - A257686(n).

Offset 0, canonical program `A257687.P7012285749589745258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257687 (n : ℕ) : ℤ :=
  (A257687.P7012285749589745258.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258996.P1766384816688748904

`A059893(A258746(A059893(n+1)))`
-/

namespace A258996.P1766384816688748904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A258746 (A059893 (n + 1)).toNat).toNat

end

end A258996.P1766384816688748904

noncomputable section

/-- A258996: Permutation of the positive integers: this permutation transforms the enumeration system of positive irreducible fractions A002487/A002487' (Calkin-Wilf) into the enumeration system A162911/A162912 (Drib), and vice versa.

Offset 1, canonical program `A258996.P1766384816688748904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A258996 (n : ℕ) : ℤ :=
  A258996.P1766384816688748904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A258996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262275.P4673791647840445127

`A006450(A121543(n+1))`
-/

namespace A262275.P4673791647840445127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A121543 (n + 1)).toNat

end

end A262275.P4673791647840445127

noncomputable section

/-- A262275: Prime numbers with an even number of steps in their prime index chain.

Offset 1, canonical program `A262275.P4673791647840445127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262275 (n : ℕ) : ℤ :=
  A262275.P4673791647840445127.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265743.P10780089586930708631

`a(A215020(n+1))+1` with `a(0)=0`
-/

namespace A265743.P10780089586930708631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A215020 (n + 1)).toNat + 1

end

end A265743.P10780089586930708631

noncomputable section

/-- A265743: a(n) = number of terms of A005187 needed to sum to n using the greedy algorithm.

Offset 0, canonical program `A265743.P10780089586930708631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A265743 (n : ℕ) : ℤ :=
  (A265743.P10780089586930708631.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A265743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271211.P10364572807976757557

`eq[4, A072680(n+2)]+2`
-/

namespace A271211.P10364572807976757557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A271211.P10364572807976757557

noncomputable section

/-- A271211: Composite integers sandwiched between primes p, q with q-p = 4.

Offset 1, canonical program `A271211.P10364572807976757557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A271211 (n : ℕ) : ℤ :=
  (A271211.P10364572807976757557.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A271211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283978.P12954739794367481226

`A002487(n)-A283976(n)`
-/

namespace A283978.P12954739794367481226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n - A283976 n

end

end A283978.P12954739794367481226

noncomputable section

/-- A283978: a(2n) = 0, a(2n+1) = A002487(n) AND A002487(n+1), where AND is bitwise-and (A004198).

Offset 0, canonical program `A283978.P12954739794367481226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A283976, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283978 (n : ℕ) : ℤ :=
  A283978.P12954739794367481226.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A283976, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283986.P7450117296325847881

`A283976(2*(n+1)-1)`
-/

namespace A283986.P7450117296325847881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * (n + 1) - 1)

end

end A283986.P7450117296325847881

noncomputable section

/-- A283986: a(n) = A002487(n-1) OR A002487(n), where OR is bitwise-or (A003986).

Offset 1, canonical program `A283986.P7450117296325847881`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283986 (n : ℕ) : ℤ :=
  A283986.P7450117296325847881.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283986.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286608.P6471949318429911751

`lt[A087207(n+1), n+1]+1`
-/

namespace A286608.P6471949318429911751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A286608.P6471949318429911751

noncomputable section

/-- A286608: Numbers k for which the binary representation of the primes that divide k (A087207) is less than k.

Offset 1, canonical program `A286608.P6471949318429911751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 652 terms. -/
def A286608 (n : ℕ) : ℤ :=
  (A286608.P6471949318429911751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 652 terms. -/
def A286608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287170.P3735047358035407124

`A069010(A087207(n+1))`
-/

namespace A287170.P3735047358035407124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A087207 (n + 1)).toNat

end

end A287170.P3735047358035407124

noncomputable section

/-- A287170: a(n) = number of runs of consecutive prime numbers among the prime divisors of n.

Offset 1, canonical program `A287170.P3735047358035407124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287170 (n : ℕ) : ℤ :=
  A287170.P3735047358035407124.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A287374.P14008916992974002894

`n+1+char[A269161(n)]+n`
-/

namespace A287374.P14008916992974002894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269161 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A287374.P14008916992974002894

noncomputable section

/-- A287374: Positions of 1 in A101666.

Offset 1, canonical program `A287374.P14008916992974002894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287374 (n : ℕ) : ℤ :=
  (A287374.P14008916992974002894.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288566.P93477700096519531

`∑[A087207(n+1)]`
-/

namespace A288566.P93477700096519531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288566.P93477700096519531

noncomputable section

/-- A288566: Partial sums of A087207.

Offset 1, canonical program `A288566.P93477700096519531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A288566 (n : ℕ) : ℤ :=
  A288566.P93477700096519531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A288566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119480.P557192141545520741

`eq[2, A086668(2*(n+1))]+1`
-/

namespace A119480.P557192141545520741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086668 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119480.P557192141545520741

noncomputable section

/-- A119480: Numbers k such that the Bernoulli number B_{4k} has denominator 30.

Offset 1, canonical program `A119480.P557192141545520741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4475 terms. -/
def A119480 (n : ℕ) : ℤ :=
  (A119480.P557192141545520741.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4475 terms. -/
def A119480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121361.P14605367141512656592

`floor(A097195(record[xor(1, n)])/2)`
-/

namespace A121361.P14605367141512656592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097195 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 2⌋

end

end A121361.P14605367141512656592

noncomputable section

/-- A121361: Expansion of f(x^1, x^5) * psi(x^2) in powers of x where psi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A121361.P14605367141512656592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A121361 (n : ℕ) : ℤ :=
  A121361.P14605367141512656592.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A121361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121519.P18252372970156583767

`record[A008330(n+1)]`
-/

namespace A121519.P18252372970156583767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P18252372970156583767

noncomputable section

/-- A121519: Number of primitive roots of prime A103203(n).

Offset 1, canonical program `A121519.P18252372970156583767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1392 terms. -/
def A121519 (n : ℕ) : ℤ :=
  A121519.P18252372970156583767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1392 terms. -/
def A121519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125096.P3255662404427325146

`Δ[A098180(n)]*A002325(n+1)`
-/

namespace A125096.P3255662404427325146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002325 (n + 1)

end

end A125096.P3255662404427325146

noncomputable section

/-- A125096: Expansion of -1 + (phi(q) * phi(q^2) + phi(-q^2) * phi(q^4)) / 2 in powers of q.

Offset 1, canonical program `A125096.P3255662404427325146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125096 (n : ℕ) : ℤ :=
  A125096.P3255662404427325146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129134.P13727256071399545709

`A002325(n+1)*(-1)^floor(n/2)`
-/

namespace A129134.P13727256071399545709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002325 (n + 1) : ℚ) * (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A129134.P13727256071399545709

noncomputable section

/-- A129134: Expansion of (1 - phi(-q) * phi(-q^2)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A129134.P13727256071399545709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129134 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A129134.P13727256071399545709.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130446.P13627366910175115370

`A111123(C(floor((n+1)/2), 64))+n`
-/

namespace A130446.P13627366910175115370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111123 (Nat.choose ⌊(n + 1 : ℚ) / 2⌋.toNat 64) + (n : ℤ)

end

end A130446.P13627366910175115370

noncomputable section

/-- A130446: Integers in [1, 425] expressible as a difference of the terms of the unique optimal Golomb ruler of order 24. See A130444.

Offset 1, canonical program `A130446.P13627366910175115370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A130446 (n : ℕ) : ℤ :=
  A130446.P13627366910175115370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A130446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132895.P15394333494377494833

`2*A112886(n+1)`
-/

namespace A132895.P15394333494377494833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112886 (n + 1)

end

end A132895.P15394333494377494833

noncomputable section

/-- A132895: Even numbers for which all divisors, with the exception of 1 and 2, are isolated. A positive divisor, k, of n is isolated if neither (k-1) nor (k+1) divides n.

Offset 1, canonical program `A132895.P15394333494377494833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112886, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132895 (n : ℕ) : ℤ :=
  A132895.P15394333494377494833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112886, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132895.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133693.P6160581750214965149

`(-1)^n*A002325(n+1)`
-/

namespace A133693.P6160581750214965149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002325 (n + 1)

end

end A133693.P6160581750214965149

noncomputable section

/-- A133693: Expansion of (1 - phi(-q) * phi(q^2)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A133693.P6160581750214965149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133693 (n : ℕ) : ℤ :=
  A133693.P6160581750214965149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134024.P16444693290474803119

`A134022(n)+A065363(n)`
-/

namespace A134024.P16444693290474803119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n + A065363 n

end

end A134024.P16444693290474803119

noncomputable section

/-- A134024: Number of positive trits in balanced ternary representation of n.

Offset 0, canonical program `A134024.P16444693290474803119`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134024 (n : ℕ) : ℤ :=
  A134024.P16444693290474803119.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140263.P6663385585559439803

`A142150(n)+A117967(A110654(n))`
-/

namespace A140263.P6663385585559439803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A117967 (A110654 n).toNat

end

end A140263.P6663385585559439803

noncomputable section

/-- A140263: Permutation of nonnegative integers obtained by interleaving A117967 and A117968.

Offset 0, canonical program `A140263.P6663385585559439803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. -/
def A140263 (n : ℕ) : ℤ :=
  A140263.P6663385585559439803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. -/
def A140263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147693.P9391154294968701023

`A249728(n+2)%A000040(A249727(n+2))`
-/

namespace A147693.P9391154294968701023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249728 (n + 2)) (A000040 (A249727 (n + 2)).toNat)

end

end A147693.P9391154294968701023

noncomputable section

/-- A147693: Irregular triangle read by rows: T(n, k) = n mod prime(k), n >= 2, 1 <= k <= PrimePi(n), where PrimePi(n) = A000720(n).

Offset 2, canonical program `A147693.P9391154294968701023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147693 (n : ℕ) : ℤ :=
  A147693.P9391154294968701023.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153011.P18266022580685187752

`A152770(n+1)-A051953(n+1)+1`
-/

namespace A153011.P18266022580685187752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) - A051953 (n + 1) + 1

end

end A153011.P18266022580685187752

noncomputable section

/-- A153011: Sum of proper divisors, minus the number of proper divisors, minus cototient of n, plus 1.

Offset 1, canonical program `A153011.P18266022580685187752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A152770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A153011 (n : ℕ) : ℤ :=
  A153011.P18266022580685187752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A152770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A153011.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153039.P14190860570720615012

`A053726(n+1)+3`
-/

namespace A153039.P14190860570720615012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) + 3

end

end A153039.P14190860570720615012

noncomputable section

/-- A153039: Numbers k such that 2*k-7 is composite.

Offset 1, canonical program `A153039.P14190860570720615012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153039 (n : ℕ) : ℤ :=
  A153039.P14190860570720615012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153040.P8115147575926402282

`A053726(n+1)+2`
-/

namespace A153040.P8115147575926402282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) + 2

end

end A153040.P8115147575926402282

noncomputable section

/-- A153040: Numbers n>3 such that 2*n-5 is not a prime.

Offset 1, canonical program `A153040.P8115147575926402282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153040 (n : ℕ) : ℤ :=
  A153040.P8115147575926402282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153327.P5821613529871534125

`comp[A127590(n+1)]`
-/

namespace A153327.P5821613529871534125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153327.P5821613529871534125

noncomputable section

/-- A153327: Numbers k such that 16*k+5 is not prime.

Offset 1, canonical program `A153327.P5821613529871534125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153327 (n : ℕ) : ℤ :=
  (A153327.P5821613529871534125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153464.P11627895847707691394

`A153085(n+1)-1`
-/

namespace A153464.P11627895847707691394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153085 (n + 1) - 1

end

end A153464.P11627895847707691394

noncomputable section

/-- A153464: Numbers k such that 4*k+9 is not prime.

Offset 1, canonical program `A153464.P11627895847707691394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153464 (n : ℕ) : ℤ :=
  A153464.P11627895847707691394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156875.P9874642270312529186

`∑[A156659(n+1)]`
-/

namespace A156875.P9874642270312529186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156875.P9874642270312529186

noncomputable section

/-- A156875: Number of safe primes <= n.

Offset 1, canonical program `A156875.P9874642270312529186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156875 (n : ℕ) : ℤ :=
  A156875.P9874642270312529186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156876.P3614611450342626584

`∑[or(A156659(n+1), A156660(n+1))]`
-/

namespace A156876.P3614611450342626584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A156659 (n + 1)) (A156660 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156876.P3614611450342626584

noncomputable section

/-- A156876: Number of primes <= n that are safe primes or Sophie Germain primes.

Offset 1, canonical program `A156876.P3614611450342626584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156876 (n : ℕ) : ℤ :=
  A156876.P3614611450342626584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160598.P7188298955133884230

`lcm(n+1, A051953(n+2))/(n+1)`
-/

namespace A160598.P7188298955133884230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A051953 (n + 2)) : ℚ) / (n + 1 : ℚ)

end

end A160598.P7188298955133884230

noncomputable section

/-- A160598: Numerator of coresilience C(n) = (n - phi(n))/(n-1).

Offset 2, canonical program `A160598.P7188298955133884230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160598 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160598.P7188298955133884230.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161897.P16359747201491512776

`2*A161896(n+1)+1`
-/

namespace A161897.P16359747201491512776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161896 (n + 1) + 1

end

end A161897.P16359747201491512776

noncomputable section

/-- A161897: Prime numbers p for which k = (3^p - 3 * 3^((p + 1) / 2) - 6p + 6) / (3p^2 - 3p) is an integer.

Offset 1, canonical program `A161897.P16359747201491512776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161897 (n : ℕ) : ℤ :=
  A161897.P16359747201491512776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162592.P15902241657585501438

`∩[A009003(n+1), A022544(n+1)]`
-/

namespace A162592.P15902241657585501438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162592.P15902241657585501438

noncomputable section

/-- A162592: Hypotenuse numbers A009003 which cannot be represented as sum of 2 distinct nonzero squares.

Offset 1, canonical program `A162592.P15902241657585501438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5340 terms. -/
def A162592 (n : ℕ) : ℤ :=
  (A162592.P15902241657585501438.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5340 terms. -/
def A162592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172458.P6857060045200463812

`record[A191558(A174047(n+1))]`
-/

namespace A172458.P6857060045200463812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A174047 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172458.P6857060045200463812

noncomputable section

/-- A172458: Nonprimes n such that exactly one of 2n-1 and 2n+1 is prime.

Offset 1, canonical program `A172458.P6857060045200463812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A172458 (n : ℕ) : ℤ :=
  A172458.P6857060045200463812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A172458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176587.P7526550337897203140

`eq[floor(1/(n+1)), char[A078174(n+1)]]`
-/

namespace A176587.P7526550337897203140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A176587.P7526550337897203140

noncomputable section

/-- A176587: Numbers such that arithmetic mean of distinct prime factors is not an integer.

Offset 1, canonical program `A176587.P7526550337897203140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4776 terms. -/
def A176587 (n : ℕ) : ℤ :=
  (A176587.P7526550337897203140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4776 terms. -/
def A176587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179667.P13137735960818223073

`∩[A082294(n+1), A137487(n+1)]`
-/

namespace A179667.P13137735960818223073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179667.P13137735960818223073

noncomputable section

/-- A179667: Products of the 5th power of a prime and 2 distinct primes (p^5*q*r).

Offset 1, canonical program `A179667.P13137735960818223073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1133 terms. -/
def A179667 (n : ℕ) : ℤ :=
  (A179667.P13137735960818223073.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1133 terms. -/
def A179667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182572.P9032645758922252144

`A065091(eq[5, A182535(n+1)])`
-/

namespace A182572.P9032645758922252144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182572.P9032645758922252144

noncomputable section

/-- A182572: Primes that have five terms in their Zeckendorf representation.

Offset 1, canonical program `A182572.P9032645758922252144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1519 terms. -/
def A182572 (n : ℕ) : ℤ :=
  A182572.P9032645758922252144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1519 terms. -/
def A182572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188470.P15419413521546564423

`A188467(A187950(n+1)+n)`
-/

namespace A188470.P15419413521546564423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188467 (A187950 (n + 1) + (n : ℤ)).toNat

end

end A188470.P15419413521546564423

noncomputable section

/-- A188470: a(n) = [5r]-[nr]-[5r-nr], where r=(1+sqrt(5))/2 and []=floor.

Offset 1, canonical program `A188470.P15419413521546564423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188470 (n : ℕ) : ℤ :=
  A188470.P15419413521546564423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199718.P15975727589693316819

`∩[A024898(n+2), A046954(n+2)+1]`
-/

namespace A199718.P15975727589693316819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046954 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199718.P15975727589693316819

noncomputable section

/-- A199718: Numbers k such that 6*k-5 is composite, but 6*k-1 is prime.

Offset 1, canonical program `A199718.P15975727589693316819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3083 terms. -/
def A199718 (n : ℕ) : ℤ :=
  (A199718.P15975727589693316819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3083 terms. -/
def A199718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209187.P1822992089248699320

`A000203(n+1)-A051953(n+1)`
-/

namespace A209187.P1822992089248699320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A051953 (n + 1)

end

end A209187.P1822992089248699320

noncomputable section

/-- A209187: Sum of divisors of n minus cototient of n.

Offset 1, canonical program `A209187.P1822992089248699320`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209187 (n : ℕ) : ℤ :=
  A209187.P1822992089248699320.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209187.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219428.P10048868048684072397

`A051953(n+1)-1`
-/

namespace A219428.P10048868048684072397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - 1

end

end A219428.P10048868048684072397

noncomputable section

/-- A219428: a(n) = n - 1 - phi(n).

Offset 1, canonical program `A219428.P10048868048684072397`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219428 (n : ℕ) : ℤ :=
  A219428.P10048868048684072397.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219642.P8698780994322484832

`1+a(A219641(n))` with `a(0)=0`
-/

namespace A219642.P8698780994322484832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A219641 n).toNat

end

end A219642.P8698780994322484832

noncomputable section

/-- A219642: Number of steps to reach 0 starting with n and using the iterated process: x -> x - (number of 1's in Zeckendorf expansion of x).

Offset 0, canonical program `A219642.P8698780994322484832`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219642 (n : ℕ) : ℤ :=
  (A219642.P8698780994322484832.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225771.P7079842939819002602

`eq[A000005(n+1), A002325(n+1)]+1`
-/

namespace A225771.P7079842939819002602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A225771.P7079842939819002602

noncomputable section

/-- A225771: Numbers that are positive integer divisors of 1 + 2*x^2 where x is a positive integer.

Offset 1, canonical program `A225771.P7079842939819002602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A225771 (n : ℕ) : ℤ :=
  (A225771.P7079842939819002602.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A225771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226590.P8032106787844506352

`A182627(n+1)-A093653(n+1)`
-/

namespace A226590.P8032106787844506352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182627 (n + 1) - A093653 (n + 1)

end

end A226590.P8032106787844506352

noncomputable section

/-- A226590: Total number of 0's in binary expansion of all divisors of n.

Offset 1, canonical program `A226590.P8032106787844506352`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093653, A182627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A226590 (n : ℕ) : ℤ :=
  A226590.P8032106787844506352.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093653, A182627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A226590.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226983.P11734956806688182577

`A004526(n+2)-A035250(n+1)`
-/

namespace A226983.P11734956806688182577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 2) - A035250 (n + 1)

end

end A226983.P11734956806688182577

noncomputable section

/-- A226983: a(n) = ceiling(n/2) - pi(2n) + pi(n-1).

Offset 1, canonical program `A226983.P11734956806688182577`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226983 (n : ℕ) : ℤ :=
  A226983.P11734956806688182577.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226983.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228349.P17029725680639391758

`A000989(eq[A058281(n), A134022(n)])`
-/

namespace A228349.P17029725680639391758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228349.P17029725680639391758

noncomputable section

/-- A228349: Triangle read by rows: T(j,k) is the k-th part in nondecreasing order of the j-th region of the set of compositions (ordered partitions) of n in colexicographic order, if 1<=j<=2^(n-1) and 1<=k<=A006519(j).

Offset 1, canonical program `A228349.P17029725680639391758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A228349 (n : ℕ) : ℤ :=
  A228349.P17029725680639391758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A228349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228441.P14298159713898062808

`A305152(n+1)-A348952(n+1)`
-/

namespace A228441.P14298159713898062808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305152 (n + 1) - A348952 (n + 1)

end

end A228441.P14298159713898062808

noncomputable section

/-- A228441: Expansion of Sum_{k>0} -(-x)^k / (1 + x^k).

Offset 1, canonical program `A228441.P14298159713898062808`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305152, A348952, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A228441 (n : ℕ) : ℤ :=
  A228441.P14298159713898062808.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305152, A348952, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A228441.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A237709.P12108732798945934664

`a(A081129(n+1))*A275120(n)` with `a(0)=1, a(1)=2`
-/

namespace A237709.P12108732798945934664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A081129 (n + 1)).toNat * A275120 n

end

end A237709.P12108732798945934664

noncomputable section

/-- A237709: Number of occurrences of n-th prime power in A188666.

Offset 1, canonical program `A237709.P12108732798945934664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A237709 (n : ℕ) : ℤ :=
  A237709.P12108732798945934664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A237709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244553.P6482115881436918326

`A134015(2*(n+1))+A002325(n+1)`
-/

namespace A244553.P6482115881436918326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134015 (2 * (n + 1)) + A002325 (n + 1)

end

end A244553.P6482115881436918326

noncomputable section

/-- A244553: Expansion of phi(q^2) * (phi(q) - phi(q^2)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A244553.P6482115881436918326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A244553 (n : ℕ) : ℤ :=
  A244553.P6482115881436918326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A244553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245325.P16913474214626989000

`A002487(1+A059893(A154435(n+1)))`
-/

namespace A245325.P16913474214626989000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A059893 (A154435 (n + 1)).toNat).toNat

end

end A245325.P16913474214626989000

noncomputable section

/-- A245325: Numerators of an enumeration system of the reduced nonnegative rational numbers.

Offset 1, canonical program `A245325.P16913474214626989000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A059893, A154435, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245325 (n : ℕ) : ℤ :=
  A245325.P16913474214626989000.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A059893, A154435, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245325.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245326.P3477940018113176802

`A002487(A059893(A154435(n+1)))`
-/

namespace A245326.P3477940018113176802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A059893 (A154435 (n + 1)).toNat).toNat

end

end A245326.P3477940018113176802

noncomputable section

/-- A245326: Denominators of an enumeration system of the reduced nonnegative rational numbers.

Offset 1, canonical program `A245326.P3477940018113176802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A059893, A154435, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245326 (n : ℕ) : ℤ :=
  A245326.P3477940018113176802.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A059893, A154435, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246159.P1140588628071788846

`A010059(n)*A006068(A245710(n))`
-/

namespace A246159.P1140588628071788846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n * A006068 (A245710 n).toNat

end

end A246159.P1140588628071788846

noncomputable section

/-- A246159: Inverse function to the injection A048724.

Offset 0, canonical program `A246159.P1140588628071788846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246159 (n : ℕ) : ℤ :=
  A246159.P1140588628071788846.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246159.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A250094.P12324605883810777152

`eq[0, A348510(n+1)]+1`
-/

namespace A250094.P12324605883810777152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A250094.P12324605883810777152

noncomputable section

/-- A250094: Positive integers k such that the numerator of the harmonic mean of the divisors of k is equal to k.

Offset 1, canonical program `A250094.P12324605883810777152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8109 terms. -/
def A250094 (n : ℕ) : ℤ :=
  (A250094.P12324605883810777152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8109 terms. -/
def A250094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255745.P6930733683946069684

`A007088(A151787(n+1))`
-/

namespace A255745.P6930733683946069684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A151787 (n + 1)).toNat

end

end A255745.P6930733683946069684

noncomputable section

/-- A255745: a(1) = 1; for n > 1, a(n) = 11*10^{A000120(n-1)-1}.

Offset 1, canonical program `A255745.P6930733683946069684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A151787, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255745 (n : ℕ) : ℤ :=
  A255745.P6930733683946069684.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A151787, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255745.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A264721.P17314925042243665480

`A053726(n+1)+A005097(A053726(n+1)-(n+1))`
-/

namespace A264721.P17314925042243665480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) + A005097 (A053726 (n + 1) - (n + 1 : ℤ)).toNat

end

end A264721.P17314925042243665480

noncomputable section

/-- A264721: Composite numbers that are greater than the average of their closest flanking primes.

Offset 1, canonical program `A264721.P17314925042243665480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264721 (n : ℕ) : ℤ :=
  A264721.P17314925042243665480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265510.P3655784241704673795

`A007088(A265509(n))`
-/

namespace A265510.P3655784241704673795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A265509 n).toNat

end

end A265510.P3655784241704673795

noncomputable section

/-- A265510: a(n) = largest base-2 palindrome m <= 2n+1 such that every base-2 digit of m is <= the corresponding digit of 2n+1; m is written in base 2.

Offset 0, canonical program `A265510.P3655784241704673795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A265510 (n : ℕ) : ℤ :=
  A265510.P3655784241704673795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A265510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267357.P14963580651497646829

`A269174(a(n-1))` with `a(0)=1`
-/

namespace A267357.P14963580651497646829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269174 (a (n - 1)).toNat

end

end A267357.P14963580651497646829

noncomputable section

/-- A267357: Decimal representation of the n-th iteration of the "Rule 124" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267357.P14963580651497646829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267357 (n : ℕ) : ℤ :=
  A267357.P14963580651497646829.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267357.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268715.P16379897427228210898

`A003188(A268714(n))`
-/

namespace A268715.P16379897427228210898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A268714 n).toNat

end

end A268715.P16379897427228210898

noncomputable section

/-- A268715: Square array A(i,j) = A003188(A006068(i) + A006068(j)), read by antidiagonals as A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

Offset 0, canonical program `A268715.P16379897427228210898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268715 (n : ℕ) : ℤ :=
  A268715.P16379897427228210898.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268725.P2305431121267613913

`A003188(A268724(n+1))`
-/

namespace A268725.P2305431121267613913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A268724 (n + 1)).toNat

end

end A268725.P2305431121267613913

noncomputable section

/-- A268725: Square array A(i,j) = A003188(A006068(i) * A006068(j)), read by antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

Offset 1, canonical program `A268725.P2305431121267613913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268725 (n : ℕ) : ℤ :=
  A268725.P2305431121267613913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268726.P17814660548721949411

`A007814(1+A006068(n))`
-/

namespace A268726.P17814660548721949411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A006068 n).toNat

end

end A268726.P17814660548721949411

noncomputable section

/-- A268726: Index of the toggled bit between n and A268717(n+1): a(n) = A000523(A003987(n, A268717(1+n))).

Offset 0, canonical program `A268726.P17814660548721949411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268726 (n : ℕ) : ℤ :=
  A268726.P17814660548721949411.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268726.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273165.P13852452285329225728

`A000005(A091236(n+1))/2`
-/

namespace A273165.P13852452285329225728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A091236 (n + 1)).toNat : ℚ) / 2

end

end A273165.P13852452285329225728

noncomputable section

/-- A273165: One half the number of divisors of nonprime numbers that are 3 (mod 4).

Offset 1, canonical program `A273165.P13852452285329225728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A091236, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273165 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A273165.P13852452285329225728.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A091236, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275534.P744122955191144669

`A278114(n+1)-A267098(A278114(n+1))`
-/

namespace A275534.P744122955191144669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (n + 1) - A267098 (A278114 (n + 1)).toNat

end

end A275534.P744122955191144669

noncomputable section

/-- A275534: Number of primes of the form x^2 + y^2 less than or equal to 2*n^2.

Offset 1, canonical program `A275534.P744122955191144669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 640 terms. -/
def A275534 (n : ℕ) : ℤ :=
  A275534.P744122955191144669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 640 terms. -/
def A275534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276379.P10581108024537777216

`A007088(A087207(n+1))`
-/

namespace A276379.P10581108024537777216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A087207 (n + 1)).toNat

end

end A276379.P10581108024537777216

noncomputable section

/-- A276379: Write a "1" for each distinct prime divisor p of n in the (pi(p) - 1)-th place, ignoring multiplicity.

Offset 1, canonical program `A276379.P10581108024537777216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A087207, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276379 (n : ℕ) : ℤ :=
  A276379.P10581108024537777216.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A087207, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276379.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278350.P8625627632809308465

`A051953(A000045(n+1))`
-/

namespace A278350.P8625627632809308465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000045 (n + 1)).toNat

end

end A278350.P8625627632809308465

noncomputable section

/-- A278350: Cototient of Fibonacci(n).

Offset 1, canonical program `A278350.P8625627632809308465`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278350 (n : ℕ) : ℤ :=
  A278350.P8625627632809308465.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278350.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281589.P10233469596152794852

`(n+1)%2+A119608(n+2)%(n+1)`
-/

namespace A281589.P10233469596152794852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) + Int.tmod (A119608 (n + 2)) (n + 1 : ℤ)

end

end A281589.P10233469596152794852

noncomputable section

/-- A281589: Triangular array T(n,k), n > 0 and k = 1..2^(n-1), read by rows, in which row n corresponds to the permutation of [1..2^(n-1)] resulting from folding a horizontal strip of paper, with 2^(n-1) square cells numbered from 1 to 2^(n-1), n-1 times.

Offset 1, canonical program `A281589.P10233469596152794852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281589 (n : ℕ) : ℤ :=
  A281589.P10233469596152794852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287107.P12993006803381746333

`A287073(n+1)+A156077(A013947(n+1))`
-/

namespace A287107.P12993006803381746333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287073 (n + 1) + A156077 (A013947 (n + 1)).toNat

end

end A287107.P12993006803381746333

noncomputable section

/-- A287107: Positions of 2 in A287104.

Offset 1, canonical program `A287107.P12993006803381746333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A287107 (n : ℕ) : ℤ :=
  A287107.P12993006803381746333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A287107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288575.P17818525623741595510

`∑[A213911(n)+A007895(n)]`
-/

namespace A288575.P17818525623741595510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n + A007895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P17818525623741595510

noncomputable section

/-- A288575: Partial sums of A104324.

Offset 0, canonical program `A288575.P17818525623741595510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288575 (n : ℕ) : ℤ :=
  A288575.P17818525623741595510.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288600.P16115501771230486977

`A288375(2-(2-n)%(n+1))`
-/

namespace A288600.P16115501771230486977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (2 - Int.tmod (2 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A288600.P16115501771230486977

noncomputable section

/-- A288600: Fixed point of the mapping 00->0101, 10->1001, starting with 00.

Offset 1, canonical program `A288600.P16115501771230486977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288600 (n : ℕ) : ℤ :=
  A288600.P16115501771230486977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119847.P2369807592707394206

`∪[A119899(n+1), A120944(n+1)]`
-/

namespace A119847.P2369807592707394206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119847.P2369807592707394206

noncomputable section

/-- A119847: Positions where A119842 is zero.

Offset 1, canonical program `A119847.P2369807592707394206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6677 terms. -/
def A119847 (n : ℕ) : ℤ :=
  (A119847.P2369807592707394206.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6677 terms. -/
def A119847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123476.P7575150719699719929

`A373319((n+1)!)`
-/

namespace A123476.P7575150719699719929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373319 (Nat.factorial (n + 1))

end

end A123476.P7575150719699719929

noncomputable section

/-- A123476: a(n) = (n!)^2/phi(n!), where phi is Euler's totient function.

Offset 1, canonical program `A123476.P7575150719699719929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373319, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123476 (n : ℕ) : ℤ :=
  A123476.P7575150719699719929.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373319, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123476.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140264.P15141776931122807942

`A140266(n+1)-1`
-/

namespace A140264.P15141776931122807942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140266 (n + 1) - 1

end

end A140264.P15141776931122807942

noncomputable section

/-- A140264: Inverse permutation to A140263.

Offset 0, canonical program `A140264.P15141776931122807942`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140266, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140264 (n : ℕ) : ℤ :=
  A140264.P15141776931122807942.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140266, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143906.P2069080798206098839

`A342036(eq[2, A099246(n)])`
-/

namespace A143906.P2069080798206098839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342036 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143906.P2069080798206098839

noncomputable section

/-- A143906: a(n) is A143905(n) written in binary.

Offset 1, canonical program `A143906.P2069080798206098839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1047 terms. -/
def A143906 (n : ℕ) : ℤ :=
  A143906.P2069080798206098839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1047 terms. -/
def A143906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145109.P3914885600064792657

`A053143(2*(n+1))`
-/

namespace A145109.P3914885600064792657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (2 * (n + 1))

end

end A145109.P3914885600064792657

noncomputable section

/-- A145109: a(n) = 2*n * core(2*n).

Offset 1, canonical program `A145109.P3914885600064792657`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145109 (n : ℕ) : ℤ :=
  A145109.P3914885600064792657.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145109.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145388.P5432194978496946212

`∑{d}[A003557(n+1), A078439((n+1)/#)]`
-/

namespace A145388.P5432194978496946212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A078439 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A145388.P5432194978496946212

noncomputable section

/-- A145388: Sum of (k,n)_* for k=1,2,...,n, where (k,n)_* is the greatest divisor of k which is a unitary divisor of n.

Offset 1, canonical program `A145388.P5432194978496946212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145388 (n : ℕ) : ℤ :=
  A145388.P5432194978496946212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159634.P11967709027105384687

`A000082(n+1)/A080512(n+1)`
-/

namespace A159634.P11967709027105384687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (A080512 (n + 1) : ℚ)

end

end A159634.P11967709027105384687

noncomputable section

/-- A159634: Coefficient for dimensions of spaces of modular & cusp forms of weight k/2, level 4*n and trivial character, where k>=5 is odd.

Offset 1, canonical program `A159634.P11967709027105384687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000082, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A159634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A159634.P11967709027105384687.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000082, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A159634.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174417.P8480129885250661453

`A007088(A174416(n+1))`
-/

namespace A174417.P8480129885250661453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A174416 (n + 1)).toNat

end

end A174417.P8480129885250661453

noncomputable section

/-- A174417: Nonprimes that contain digits 0 and 1 only.

Offset 1, canonical program `A174417.P8480129885250661453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174417 (n : ℕ) : ℤ :=
  A174417.P8480129885250661453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179694.P2135230186693000708

`A054753(n+1)^3`
-/

namespace A179694.P2135230186693000708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1) ^ 3

end

end A179694.P2135230186693000708

noncomputable section

/-- A179694: Numbers of the form p^6*q^3 where p and q are distinct primes.

Offset 1, canonical program `A179694.P2135230186693000708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179694 (n : ℕ) : ℤ :=
  A179694.P2135230186693000708.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179694.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180200.P2958972076606443306

`xor(n, A292600(A003817(n)-n))`
-/

namespace A180200.P2958972076606443306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A292600 (A003817 n - (n : ℤ)).toNat)

end

end A180200.P2958972076606443306

noncomputable section

/-- A180200: a(0)=0, a(1)=1; for n > 1, a(n) = 2*m + 1 - (n mod 2 + m mod 2) mod 2, where m = a(floor(n/2)).

Offset 0, canonical program `A180200.P2958972076606443306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180200 (n : ℕ) : ℤ :=
  A180200.P2958972076606443306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188024.P14928406718776886035

`comp[A026351(n+1)*A188467(n+1)]`
-/

namespace A188024.P14928406718776886035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (n + 1) * A188467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188024.P14928406718776886035

noncomputable section

/-- A188024: Positions of 0 in A188020; complement of A188025.

Offset 1, canonical program `A188024.P14928406718776886035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188024 (n : ℕ) : ℤ :=
  (A188024.P14928406718776886035.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189988.P7148530891049410471

`A054753(n+1)²`
-/

namespace A189988.P7148530891049410471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1) ^ 2

end

end A189988.P7148530891049410471

noncomputable section

/-- A189988: Numbers with prime factorization p^2*q^4.

Offset 1, canonical program `A189988.P7148530891049410471`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189988 (n : ℕ) : ℤ :=
  A189988.P7148530891049410471.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A196096.P11601543418601441363

`A014081(A289813(n))`
-/

namespace A196096.P11601543418601441363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A289813 n).toNat

end

end A196096.P11601543418601441363

noncomputable section

/-- A196096: Occurrences of '11' in base 3 expansion of n.

Offset 0, canonical program `A196096.P11601543418601441363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A196096 (n : ℕ) : ℤ :=
  A196096.P11601543418601441363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A196096.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A197863.P618205374624486698`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055231, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A197863 (n : ℕ) : ℤ :=
  A197863.P618205374624486698.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055231, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A197863.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219639.P7622676545603227676

`A219641(A035336(n+1))`
-/

namespace A219639.P7622676545603227676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 (A035336 (n + 1)).toNat

end

end A219639.P7622676545603227676

noncomputable section

/-- A219639: Numbers that occur only once in A219641.

Offset 1, canonical program `A219639.P7622676545603227676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219639 (n : ℕ) : ℤ :=
  A219639.P7622676545603227676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219639.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219640.P16398760893083071170

`A219641(A022342(n+1))`
-/

namespace A219640.P16398760893083071170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 (A022342 (n + 1)).toNat

end

end A219640.P16398760893083071170

noncomputable section

/-- A219640: Numbers m for which there exists k such that m = k - (number of 1's in Zeckendorf expansion of k); distinct values in A219641.

Offset 0, canonical program `A219640.P16398760893083071170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219640 (n : ℕ) : ℤ :=
  A219640.P16398760893083071170.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219640.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A230843.P11108055546362958893

`∪[A054753(n+1), A166684(n+1)]`
-/

namespace A230843.P11108055546362958893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230843.P11108055546362958893

noncomputable section

/-- A230843: Cubefree numbers which in their canonical prime factorization have mutually distinct exponents.

Offset 1, canonical program `A230843.P11108055546362958893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230843 (n : ℕ) : ℤ :=
  (A230843.P11108055546362958893.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236365.P1225663629244033515

`∩[A065720(n+1), A065726(n+1)]`
-/

namespace A236365.P1225663629244033515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236365.P1225663629244033515

noncomputable section

/-- A236365: Primes whose binary and octal representation are also prime when read in decimal.

Offset 1, canonical program `A236365.P1225663629244033515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 744 terms. -/
def A236365 (n : ℕ) : ℤ :=
  (A236365.P1225663629244033515.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 744 terms. -/
def A236365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242219.P5269030228670689026

`lcm(2, A038388(n+1))+1+n`
-/

namespace A242219.P5269030228670689026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A038388 (n + 1)) + 1 + n

end

end A242219.P5269030228670689026

noncomputable section

/-- A242219: Smallest a(n) in Pythagorean triple (a, b, c) such that c(n) - b(n) = n.

Offset 1, canonical program `A242219.P5269030228670689026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242219 (n : ℕ) : ℤ :=
  (A242219.P5269030228670689026.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253315.P14136227825810400919

`A261283(floor(n/2))`
-/

namespace A253315.P14136227825810400919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261283 ⌊(n : ℚ) / 2⌋.toNat

end

end A253315.P14136227825810400919

noncomputable section

/-- A253315: a(n) = bitwise XOR of all the bit numbers for the bits that are set in n.

Offset 0, canonical program `A253315.P14136227825810400919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A253315 (n : ℕ) : ℤ :=
  A253315.P14136227825810400919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A253315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259936.P5139569933053793896

`A305150(∏{p}[n+1, #])`
-/

namespace A259936.P5139569933053793896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305150 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A259936.P5139569933053793896

noncomputable section

/-- A259936: Number of ways to express the integer n as a product of its unitary divisors (A034444).

Offset 1, canonical program `A259936.P5139569933053793896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259936 (n : ℕ) : ℤ :=
  A259936.P5139569933053793896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272334.P18035456064944277151

`gcd(A038388(n+1), A290683(n))`
-/

namespace A272334.P18035456064944277151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038388 (n + 1)) (A290683 n)

end

end A272334.P18035456064944277151

noncomputable section

/-- A272334: Square root of the largest square dividing 2^n - 1.

Offset 1, canonical program `A272334.P18035456064944277151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A272334 (n : ℕ) : ℤ :=
  (A272334.P18035456064944277151.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A272334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276305.P15088986145936003847

`p?[floor(A054753(n+1)/2)]`
-/

namespace A276305.P15088986145936003847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054753 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276305.P15088986145936003847

noncomputable section

/-- A276305: Primes p such that d(p*(2p+1)) = 12 where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A276305.P15088986145936003847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A276305 (n : ℕ) : ℤ :=
  A276305.P15088986145936003847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A276305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281316.P5684123240907500479

`(A057427(n)+1)*A292600(A143329(n+1))+1`
-/

namespace A281316.P5684123240907500479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A292600 (A143329 (n + 1)).toNat + 1

end

end A281316.P5684123240907500479

noncomputable section

/-- A281316: Prime number p such that the decimal representation of its binary reflected Gray code is also a prime.

Offset 1, canonical program `A281316.P5684123240907500479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A281316 (n : ℕ) : ℤ :=
  A281316.P5684123240907500479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A281316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283476.P12626958136040058516

`1+eq[1, A323511(n+1)]`
-/

namespace A283476.P12626958136040058516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283476.P12626958136040058516

noncomputable section

/-- A283476: Squarefree numbers n for which A079559(A048675(n)) = 1.

Offset 1, canonical program `A283476.P12626958136040058516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A283476 (n : ℕ) : ℤ :=
  (A283476.P12626958136040058516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A283476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285508.P10690134456776123429

`∪[A030078(n+1), A054753(n+1)]`
-/

namespace A285508.P10690134456776123429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285508.P10690134456776123429

noncomputable section

/-- A285508: Numbers with exactly three prime factors, not all distinct.

Offset 1, canonical program `A285508.P10690134456776123429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285508 (n : ℕ) : ℤ :=
  (A285508.P10690134456776123429.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286228.P2619244444952308733

`∪[A054753(n+1), A280076(n+1)]`
-/

namespace A286228.P2619244444952308733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286228.P2619244444952308733

noncomputable section

/-- A286228: Numbers n such that d(n) = 2^omega(n) + omega(n) where d = A000005 and omega = A001221.

Offset 1, canonical program `A286228.P2619244444952308733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286228 (n : ℕ) : ℤ :=
  (A286228.P2619244444952308733.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160696.P2688155709056415849

`A000188(A008864(n+1))`
-/

namespace A160696.P2688155709056415849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A008864 (n + 1)).toNat

end

end A160696.P2688155709056415849

noncomputable section

/-- A160696: Largest k such that k^2 divides prime(n)+1.

Offset 1, canonical program `A160696.P2688155709056415849`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160696 (n : ℕ) : ℤ :=
  A160696.P2688155709056415849.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160696.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162642.P6212984874729219521

`A001221(n+1)-A162641(n+1)`
-/

namespace A162642.P6212984874729219521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A162641 (n + 1)

end

end A162642.P6212984874729219521

noncomputable section

/-- A162642: Number of odd exponents in the canonical prime factorization of n.

Offset 1, canonical program `A162642.P6212984874729219521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A162641, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162642 (n : ℕ) : ℤ :=
  A162642.P6212984874729219521.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A162641, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174088.P3336557888488504044

`(A018804(n+1)+A000188(n+1))/2`
-/

namespace A174088.P3336557888488504044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) + A000188 (n + 1) : ℚ) / 2

end

end A174088.P3336557888488504044

noncomputable section

/-- A174088: Number of pairs (i,j) such that i*j == 0 (mod k), 0 <= i <= j < k.

Offset 1, canonical program `A174088.P3336557888488504044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A018804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A174088 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174088.P3336557888488504044.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A018804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A174088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179213.P7252465980634489640

`A066779(2*(n+1))-A262871(2*n+1)`
-/

namespace A179213.P7252465980634489640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066779 (2 * (n + 1)) - A262871 (2 * n + 1)

end

end A179213.P7252465980634489640

noncomputable section

/-- A179213: Sum of squarefree numbers between n and 2*n (inclusive).

Offset 1, canonical program `A179213.P7252465980634489640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A179213 (n : ℕ) : ℤ :=
  A179213.P7252465980634489640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A179213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225892.P12355316938491472002

`A071253(p?[A049533(n+1)])`
-/

namespace A225892.P12355316938491472002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071253 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A225892.P12355316938491472002

noncomputable section

/-- A225892: Numbers of the form p^2 * (p^2 + 1) where p is in A225856.

Offset 1, canonical program `A225892.P12355316938491472002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1066 terms. -/
def A225892 (n : ℕ) : ℤ :=
  A225892.P12355316938491472002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1066 terms. -/
def A225892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228057.P6773101563805670888

`∩[A053850(n+1), A228056(n+1)]`
-/

namespace A228057.P6773101563805670888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228057.P6773101563805670888

noncomputable section

/-- A228057: Odd numbers of the form p * m^2, where p is prime and m > 1.

Offset 1, canonical program `A228057.P6773101563805670888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3626 terms. -/
def A228057 (n : ℕ) : ℤ :=
  (A228057.P6773101563805670888.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3626 terms. -/
def A228057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233409.P9153402309979020244

`∩[A049533(n+1), A069977(n+1)+1]²`
-/

namespace A233409.P9153402309979020244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A233409.P9153402309979020244

noncomputable section

/-- A233409: Squares with squarefree neighbors.

Offset 1, canonical program `A233409.P9153402309979020244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3201 terms. -/
def A233409 (n : ℕ) : ℤ :=
  (A233409.P9153402309979020244.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3201 terms. -/
def A233409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254732.P8036064587861871874

`A019554(n+1)*(A000188(n+1)+1)`
-/

namespace A254732.P8036064587861871874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) * (A000188 (n + 1) + 1)

end

end A254732.P8036064587861871874

noncomputable section

/-- A254732: a(n) is the least k > n such that n divides k^2.

Offset 1, canonical program `A254732.P8036064587861871874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A019554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A254732 (n : ℕ) : ℤ :=
  A254732.P8036064587861871874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A019554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A254732.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259911.P9755070438546537918

`A259913(A003991(n+1))`
-/

namespace A259911.P9755070438546537918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259913 (A003991 (n + 1)).toNat

end

end A259911.P9755070438546537918

noncomputable section

/-- A259911: Triangular array; row k shows the discriminant of the field of the number having purely periodic continued fraction with period (j,k+1-j), for j=1..k.

Offset 1, canonical program `A259911.P9755070438546537918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A259911 (n : ℕ) : ℤ :=
  A259911.P9755070438546537918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A259911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272101.P1459219865942789853

`A000188(A069482(n+1))`
-/

namespace A272101.P1459219865942789853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A069482 (n + 1)).toNat

end

end A272101.P1459219865942789853

noncomputable section

/-- A272101: Square root of largest square dividing A069482(n).

Offset 1, canonical program `A272101.P1459219865942789853`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A069482, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A272101 (n : ℕ) : ℤ :=
  A272101.P1459219865942789853.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A069482, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A272101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286324.P10528776469317877690

`A000005(A350390(n+1))`
-/

namespace A286324.P10528776469317877690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A350390 (n + 1)).toNat

end

end A286324.P10528776469317877690

noncomputable section

/-- A286324: a(n) is the number of bi-unitary divisors of n.

Offset 1, canonical program `A286324.P10528776469317877690`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A350390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286324 (n : ℕ) : ℤ :=
  A286324.P10528776469317877690.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A350390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190121.P4530630871220587938

`∑[∑{d}[n+1, A300251(#)]]`
-/

namespace A190121.P4530630871220587938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A300251 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190121.P4530630871220587938

noncomputable section

/-- A190121: Partial sums of the arithmetic derivative function A003415.

Offset 1, canonical program `A190121.P4530630871220587938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190121 (n : ℕ) : ℤ :=
  A190121.P4530630871220587938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245839.P14228716003290856880

`∑{d}[3*n+5, A300251(#)]`
-/

namespace A245839.P14228716003290856880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d

end

end A245839.P14228716003290856880

noncomputable section

/-- A245839: Arithmetic derivative of (3*n + 2).

Offset 1, canonical program `A245839.P14228716003290856880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245839 (n : ℕ) : ℤ :=
  A245839.P14228716003290856880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245839.provenance : SequenceMachineLib.Provenance := .conjectured

