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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

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

/-! ## A119741.P4227817635269695965

`A003057(n+2)!/A004736(n+1)!`
-/

namespace A119741.P4227817635269695965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003057 (n + 2)).toNat : ℚ) / (Nat.factorial (A004736 (n + 1)).toNat : ℚ)

end

end A119741.P4227817635269695965

noncomputable section

/-- A119741: A008279, with the first and last of each row removed.

Offset 2, canonical program `A119741.P4227817635269695965`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119741 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119741.P4227817635269695965.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119741.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127739.P6291269565293973198

`A003057(n+2)*A002024(n+1)/2`
-/

namespace A127739.P6291269565293973198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) * A002024 (n + 1) : ℚ) / 2

end

end A127739.P6291269565293973198

noncomputable section

/-- A127739: Triangle read by rows, in which row n contains the triangular number T(n) = A000217(n) repeated n times; smallest triangular number greater than or equal to n.

Offset 1, canonical program `A127739.P6291269565293973198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127739 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127739.P6291269565293973198.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127739.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A221215.P8611431365744757998

`(A003057(n+2)²-2*A003057(n+2)+4-(A002260(n+1)+3*A004736(n+1)-2)*(-1)^A003056(n))/2`
-/

namespace A221215.P8611431365744757998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A003057 (n + 2) ^ 2 - 2 * A003057 (n + 2) : ℚ) + (4 - (A002260 (n + 1) + 3 * A004736 (n + 1) - 2 : ℚ) * (-1 : ℚ) ^ (A003056 n : ℤ))) / 2

end

end A221215.P8611431365744757998

noncomputable section

/-- A221215: T(n,k)= ((n+k)^2-2*(n+k)+4-(n+3*k-2)*(-1)^(n+k))/2; n , k > 0, read by antidiagonals.

Offset 1, canonical program `A221215.P8611431365744757998`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A221215 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A221215.P8611431365744757998.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A221215.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A221216.P11272535362071828525

`(A003057(n+2)²-2*A003057(n+2)+4-(3*A002260(n+1)+A004736(n+1)-2)*(-1)^A003056(n))/2`
-/

namespace A221216.P11272535362071828525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A003057 (n + 2) ^ 2 - 2 * A003057 (n + 2) : ℚ) + (4 - (3 * A002260 (n + 1) + A004736 (n + 1) - 2 : ℚ) * (-1 : ℚ) ^ (A003056 n : ℤ))) / 2

end

end A221216.P11272535362071828525

noncomputable section

/-- A221216: T(n,k) = ((n+k)^2-2*(n+k)+4-(3*n+k-2)*(-1)^(n+k))/2; n , k > 0, read by antidiagonals.

Offset 1, canonical program `A221216.P11272535362071828525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A221216 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A221216.P11272535362071828525.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A221216.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A116690.P7613515839642313942

`A008861(n)-1`
-/

namespace A116690.P7613515839642313942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n - 1

end

end A116690.P7613515839642313942

noncomputable section

/-- A116690: a(n) = C(n,8) + C(n,7) + C(n,6) + C(n,5) + C(n,4) + C(n,3) + C(n,2) + C(n,1).

Offset 0, canonical program `A116690.P7613515839642313942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116690 (n : ℕ) : ℤ :=
  A116690.P7613515839642313942.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117178.P12171852833970860923

`C(A002024(n+1), A026741(A108872(n+1)))`
-/

namespace A117178.P12171852833970860923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1)).toNat (A026741 (A108872 (n + 1)).toNat).toNat

end

end A117178.P12171852833970860923

noncomputable section

/-- A117178: Riordan array (c(x^2)/sqrt(1-4*x^2), x*c(x^2)), c(x) the g.f. of A000108.

Offset 0, canonical program `A117178.P12171852833970860923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117178 (n : ℕ) : ℤ :=
  (A117178.P12171852833970860923.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117438.P2411306178817957505

`A000302(A025581(n))*A076756(n)`
-/

namespace A117438.P2411306178817957505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A025581 n).toNat * A076756 n

end

end A117438.P2411306178817957505

noncomputable section

/-- A117438: Triangle T(n, k) = binomial(2*n-k, k)*(-4)^(n-k), read by rows.

Offset 0, canonical program `A117438.P2411306178817957505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117438 (n : ℕ) : ℤ :=
  A117438.P2411306178817957505.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117502.P15260034701529770298

`A104763(A007401(n+2))`
-/

namespace A117502.P15260034701529770298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (A007401 (n + 2)).toNat

end

end A117502.P15260034701529770298

noncomputable section

/-- A117502: Triangle, row sums = A001595.

Offset 1, canonical program `A117502.P15260034701529770298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A117502 (n : ℕ) : ℤ :=
  A117502.P15260034701529770298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A117502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117908.P10558036824550555127

`A051173(n+1)²%3`
-/

namespace A117908.P10558036824550555127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051173 (n + 1) ^ 2) 3

end

end A117908.P10558036824550555127

noncomputable section

/-- A117908: Chequered (or checkered) triangle for odd prime p=3.

Offset 0, canonical program `A117908.P10558036824550555127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117908 (n : ℕ) : ℤ :=
  A117908.P10558036824550555127.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118185.P5184141119626686801

`A117401(n)²`
-/

namespace A118185.P5184141119626686801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117401 n ^ 2

end

end A118185.P5184141119626686801

noncomputable section

/-- A118185: Triangle T(n,k) = 4^(k*(n-k)) for n>=k>=0, read by rows.

Offset 0, canonical program `A118185.P5184141119626686801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A118185 (n : ℕ) : ℤ :=
  A118185.P5184141119626686801.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A118185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118413.P8171649626606925658

`A059268(n)*A131507(n)`
-/

namespace A118413.P8171649626606925658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A131507 n

end

end A118413.P8171649626606925658

noncomputable section

/-- A118413: Triangle read by rows: T(n,k) = (2*n-1)*2^(k-1), 0

Offset 1, canonical program `A118413.P8171649626606925658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118413 (n : ℕ) : ℤ :=
  A118413.P8171649626606925658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118488.P13866739444762926570

`eq[1, A059268(A004159(n))]²`
-/

namespace A118488.P13866739444762926570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A118488.P13866739444762926570

noncomputable section

/-- A118488: Squares for which the sum of the digits is a triangular number.

Offset 1, canonical program `A118488.P13866739444762926570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2505 terms. -/
def A118488 (n : ℕ) : ℤ :=
  (A118488.P13866739444762926570.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2505 terms. -/
def A118488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118731.P12109727328513034929

`comp[A118730(n+1)]`
-/

namespace A118731.P12109727328513034929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118731.P12109727328513034929

noncomputable section

/-- A118731: Numbers k such that 2^k has odd digit sum.

Offset 1, canonical program `A118731.P12109727328513034929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118731 (n : ℕ) : ℤ :=
  (A118731.P12109727328513034929.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118734.P5567306300113816848

`∩[A118730(n+1), A118733(n+1)]`
-/

namespace A118734.P5567306300113816848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118734.P5567306300113816848

noncomputable section

/-- A118734: Numbers k such that 2^k and 3^k have even digit sum.

Offset 1, canonical program `A118734.P5567306300113816848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5026 terms. -/
def A118734 (n : ℕ) : ℤ :=
  (A118734.P5567306300113816848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5026 terms. -/
def A118734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118824.P16499052940195568067

`-A118821(n+1)`
-/

namespace A118824.P16499052940195568067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A118821 (n + 1)

end

end A118824.P16499052940195568067

noncomputable section

/-- A118824: 2-adic continued fraction of zero, where a(n) = -2 if n is odd, A006519(n/2) otherwise.

Offset 1, canonical program `A118824.P16499052940195568067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118824 (n : ℕ) : ℤ :=
  A118824.P16499052940195568067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118824.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130654.P128176340079540067

`A007814(2*A092505(n+1))-1`
-/

namespace A130654.P128176340079540067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A092505 (n + 1)).toNat - 1

end

end A130654.P128176340079540067

noncomputable section

/-- A130654: Exponent m such that 2^m = A092505(n) = A002430(n) / A046990(n).

Offset 1, canonical program `A130654.P128176340079540067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130654 (n : ℕ) : ℤ :=
  A130654.P128176340079540067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130654.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131422.P7219812161266444625

`A112367(n)+A007401(n+1)`
-/

namespace A131422.P7219812161266444625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A007401 (n + 1)

end

end A131422.P7219812161266444625

noncomputable section

/-- A131422: (A000012 * A127773) + (A127773 * A000012) - A000012.

Offset 1, canonical program `A131422.P7219812161266444625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131422 (n : ℕ) : ℤ :=
  A131422.P7219812161266444625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131422.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A132741.P5410821295142061741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112765, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132741 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132741.P5410821295142061741.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112765, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132741.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A133700.P16497783363964826140

`∑{d}[n+1, A035263(#)*A069733((n+1)/#)]`
-/

namespace A133700.P16497783363964826140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A069733 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133700.P16497783363964826140

noncomputable section

/-- A133700: A051731 * A001227; a(n) = Sum_{d|n} A001227(d).

Offset 1, canonical program `A133700.P16497783363964826140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133700 (n : ℕ) : ℤ :=
  A133700.P16497783363964826140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133700.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143418.P1053362496203516466

`C(C(A003057(n+2), A004736(n+1)), 2)`
-/

namespace A143418.P1053362496203516466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A003057 (n + 2)).toNat (A004736 (n + 1)).toNat) 2

end

end A143418.P1053362496203516466

noncomputable section

/-- A143418: Triangle read by rows. T(n,k) = binomial(n,k)*(binomial(n,k)-1)/2.

Offset 1, canonical program `A143418.P1053362496203516466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143418 (n : ℕ) : ℤ :=
  (A143418.P1053362496203516466.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143418.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144419.P7004838141369626204

`p?[Δ[A135267(n+1)]]`
-/

namespace A144419.P7004838141369626204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135267 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P7004838141369626204

noncomputable section

/-- A144419: Primes of the form prime(k) - 2*k (terms can be repeated).

Offset 1, canonical program `A144419.P7004838141369626204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. -/
def A144419 (n : ℕ) : ℤ :=
  A144419.P7004838141369626204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. -/
def A144419.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A152535.P5904882921283895664

`∑[n*A054541(n+1)]`
-/

namespace A152535.P5904882921283895664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152535.P5904882921283895664

noncomputable section

/-- A152535: a(n) = n*prime(n) - Sum_{i=1..n} prime(i).

Offset 1, canonical program `A152535.P5904882921283895664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152535 (n : ℕ) : ℤ :=
  A152535.P5904882921283895664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152535.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A157328.P4452604043700386186

`2^n*A064062(n)`
-/

namespace A157328.P4452604043700386186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A064062 n

end

end A157328.P4452604043700386186

noncomputable section

/-- A157328: Expansion of 1/(1-2x*c(4x)) with c(x) g.f. of Catalan numbers (A000108).

Offset 0, canonical program `A157328.P4452604043700386186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157328 (n : ℕ) : ℤ :=
  A157328.P4452604043700386186.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157328.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A162441.P848870344287505346

`(2*n+3)*A052468(n+1)`
-/

namespace A162441.P848870344287505346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A052468 (n + 1)

end

end A162441.P848870344287505346

noncomputable section

/-- A162441: Numerators of the column sums of the EG1 matrix coefficients.

Offset 2, canonical program `A162441.P848870344287505346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A162441 (n : ℕ) : ℤ :=
  A162441.P848870344287505346.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A162441.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A162995.P4985399532358805642

`A008279(A003057(n+2)²-(n+1))`
-/

namespace A162995.P4985399532358805642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A003057 (n + 2) ^ 2 - (n + 1 : ℤ)).toNat

end

end A162995.P4985399532358805642

noncomputable section

/-- A162995: A scaled version of triangle A162990.

Offset 1, canonical program `A162995.P4985399532358805642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A162995 (n : ℕ) : ℤ :=
  A162995.P4985399532358805642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A162995.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A173537.P11058262364353655326

`A048460(n+1)+a(n-1)` with `a(0)=2`
-/

namespace A173537.P11058262364353655326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A048460 (n + 1) + a (n - 1)

end

end A173537.P11058262364353655326

noncomputable section

/-- A173537: a(n) = A173522(n)/2.

Offset 2, canonical program `A173537.P11058262364353655326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173537 (n : ℕ) : ℤ :=
  A173537.P11058262364353655326.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173537.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A178792.P3240755536533390895

`1/3*(4*2^n*A000984(n)-A064062(n))`
-/

namespace A178792.P3240755536533390895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * ((4 * 2 ^ n : ℤ) * A000984 n - A064062 n : ℚ)

end

end A178792.P3240755536533390895

noncomputable section

/-- A178792: Dot product of the rows of triangle A046899 with vector (1,2,4,8,...) (= A000079).

Offset 0, canonical program `A178792.P3240755536533390895`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178792 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178792.P3240755536533390895.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178792.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A183225.P13096611461435880722

`A025581(n)+A003057(A050206(n+2))`
-/

namespace A183225.P13096611461435880722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A003057 (A050206 (n + 2)).toNat

end

end A183225.P13096611461435880722

noncomputable section

/-- A183225: Array: row r is the complement of the (r+2)-gonal numbers; by antidiagonals.

Offset 1, canonical program `A183225.P13096611461435880722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183225 (n : ℕ) : ℤ :=
  A183225.P13096611461435880722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183225.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A184425.P8595937253418571360

`A259361(A007401(2*(n+1)))+n`
-/

namespace A184425.P8595937253418571360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A007401 (2 * (n + 1))).toNat + (n : ℤ)

end

end A184425.P8595937253418571360

noncomputable section

/-- A184425: Lower s-Wythoff sequence, where s=A000217 (triangular numbers). Complement of A184426.

Offset 1, canonical program `A184425.P8595937253418571360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A184425 (n : ℕ) : ℤ :=
  A184425.P8595937253418571360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A184425.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A185180.P8964455806358880815

`A064789(A038722(n+1))`
-/

namespace A185180.P8964455806358880815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A038722 (n + 1)).toNat

end

end A185180.P8964455806358880815

noncomputable section

/-- A185180: Enumeration table T(n,k) by antidiagonals. The order of the list is symmetrical movement from center to edges diagonal.

Offset 1, canonical program `A185180.P8964455806358880815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A185180 (n : ℕ) : ℤ :=
  A185180.P8964455806358880815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A185180.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A185376.P13463443295583715218

`A082392(n)+2^n`
-/

namespace A185376.P13463443295583715218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082392 n + (2 ^ n : ℤ)

end

end A185376.P13463443295583715218

noncomputable section

/-- A185376: Number of binary necklaces of 2n beads for which a cut exists producing a palindrome.

Offset 1, canonical program `A185376.P13463443295583715218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A185376 (n : ℕ) : ℤ :=
  A185376.P13463443295583715218.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A185376.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A186346.P16311227159254934382

`A102515(n)+A007401(n+1)`
-/

namespace A186346.P16311227159254934382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102515 n + A007401 (n + 1)

end

end A186346.P16311227159254934382

noncomputable section

/-- A186346: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=8i and g(j)=j^2. Complement of A186347.

Offset 1, canonical program `A186346.P16311227159254934382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186346 (n : ℕ) : ℤ :=
  A186346.P16311227159254934382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186346.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188323.P13904417183950677068

`record[A087057(n+1)*A188044(A136119(n+1))]`
-/

namespace A188323.P13904417183950677068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1) * A188044 (A136119 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188323.P13904417183950677068

noncomputable section

/-- A188323: Positions of 1 in A188321; complement of A188322.

Offset 1, canonical program `A188323.P13904417183950677068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5355 terms. -/
def A188323 (n : ℕ) : ℤ :=
  A188323.P13904417183950677068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5355 terms. -/
def A188323.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190508.P2114487042302130325

`A000027(A189378(n+1)+A001950(n+1))`
-/

namespace A190508.P2114487042302130325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A189378 (n + 1) + A001950 (n + 1)).toNat

end

end A190508.P2114487042302130325

noncomputable section

/-- A190508: a(n) = n+[n*s/r]+[n*t/r]+[n*u/r]; r=golden ratio, s=r^2, t=r^3, u=r^4.

Offset 1, canonical program `A190508.P2114487042302130325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190508 (n : ℕ) : ℤ :=
  A190508.P2114487042302130325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190566.P4916505128148002889

`A003151(A190550(n+1))`
-/

namespace A190566.P4916505128148002889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A190550 (n + 1)).toNat

end

end A190566.P4916505128148002889

noncomputable section

/-- A190566: Positions of 4 in A190561.

Offset 1, canonical program `A190566.P4916505128148002889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1465 terms. -/
def A190566 (n : ℕ) : ℤ :=
  A190566.P4916505128148002889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1465 terms. -/
def A190566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190776.P13870307466262364096

`ceil(sqrt(2)*A190500(n+1))`
-/

namespace A190776.P13870307466262364096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 : ℝ) * (A190500 (n + 1) : ℝ)⌉

end

end A190776.P13870307466262364096

noncomputable section

/-- A190776: Positions of 0 in A190775.

Offset 1, canonical program `A190776.P13870307466262364096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190776 (n : ℕ) : ℤ :=
  A190776.P13870307466262364096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190776.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A191527.P18257187905751201443

`A191524(n)+A191309(n)`
-/

namespace A191527.P18257187905751201443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191524 n + A191309 n

end

end A191527.P18257187905751201443

noncomputable section

/-- A191527: Number of turns in all left factors of Dyck paths of length n.

Offset 0, canonical program `A191527.P18257187905751201443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A191527 (n : ℕ) : ℤ :=
  A191527.P18257187905751201443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A191527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191787.P17825478627761863050

`A191524(n)-A191386(n)`
-/

namespace A191787.P17825478627761863050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191524 n - A191386 n

end

end A191787.P17825478627761863050

noncomputable section

/-- A191787: Number of triple-rises in all length n left factors of Dyck paths (triple-rise = three consecutive (1,1)-steps).

Offset 0, canonical program `A191787.P17825478627761863050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191787 (n : ℕ) : ℤ :=
  A191787.P17825478627761863050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191787.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A193715.P12423076877082722815

`∑[A186219(n+1)-comp[A186222(n+1)]]`
-/

namespace A193715.P12423076877082722815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186222 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186219 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193715.P12423076877082722815

noncomputable section

/-- A193715: Positions of triangular numbers (A000217) in the union of squares and triangular numbers (A005214).

Offset 1, canonical program `A193715.P12423076877082722815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193715 (n : ℕ) : ℤ :=
  A193715.P12423076877082722815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193715.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A194149.P7917881621638136352

`∑[A182772(n+1)]`
-/

namespace A194149.P7917881621638136352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194149.P7917881621638136352

noncomputable section

/-- A194149: Sum_{floor(j*(5-sqrt(3))/2) : 1<=j<=n}; n-th partial sum of Beatty sequence for (5-sqrt(3))/2.

Offset 1, canonical program `A194149.P7917881621638136352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194149 (n : ℕ) : ℤ :=
  A194149.P7917881621638136352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194744.P9313095797038209416

`A194743(n+1)+1`
-/

namespace A194744.P9313095797038209416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194743 (n + 1) + 1

end

end A194744.P9313095797038209416

noncomputable section

/-- A194744: Number of k such that {-k*sqrt(5)} < {-n*sqrt(5)}, where { } = fractional part.

Offset 1, canonical program `A194744.P9313095797038209416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194744 (n : ℕ) : ℤ :=
  A194744.P9313095797038209416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194744.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A202736.P17174659494218386331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A202736 (n : ℕ) : ℤ :=
  A202736.P17174659494218386331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A202736.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A204443.P16622436690329894983

`1-A121262(A003057(n+2))`
-/

namespace A204443.P16622436690329894983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A121262 (A003057 (n + 2)).toNat

end

end A204443.P16622436690329894983

noncomputable section

/-- A204443: Symmetric matrix: f(i,j)=floor[(i+j+3)/4]-floor[(i+j)/4], by (constant) antidiagonals.

Offset 1, canonical program `A204443.P16622436690329894983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204443 (n : ℕ) : ℤ :=
  A204443.P16622436690329894983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204443.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A205112.P14616440800244289821

`A000032(A003057(n+2))-A104765(n+1)`
-/

namespace A205112.P14616440800244289821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A003057 (n + 2)).toNat - A104765 (n + 1)

end

end A205112.P14616440800244289821

noncomputable section

/-- A205112: Ordered differences of Lucas numbers.

Offset 1, canonical program `A205112.P14616440800244289821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205112 (n : ℕ) : ℤ :=
  A205112.P14616440800244289821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205144.P13187989175659215221

`A006094(A003057(n+2))-A006094(A002260(n+1))`
-/

namespace A205144.P13187989175659215221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A003057 (n + 2)).toNat - A006094 (A002260 (n + 1)).toNat

end

end A205144.P13187989175659215221

noncomputable section

/-- A205144: Ordered differences of distinct binary products of consecutive primes.

Offset 1, canonical program `A205144.P13187989175659215221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205144 (n : ℕ) : ℤ :=
  A205144.P13187989175659215221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205144.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A205558.P3325342254299425434

`A089253(A003057(n+2))-A089253(A002260(n+1))`
-/

namespace A205558.P3325342254299425434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (A003057 (n + 2)).toNat - A089253 (A002260 (n + 1)).toNat

end

end A205558.P3325342254299425434

noncomputable section

/-- A205558: (A204898)/2 = (prime(k)-prime(j))/2; A086802 without its zeros.

Offset 1, canonical program `A205558.P3325342254299425434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205558 (n : ℕ) : ℤ :=
  A205558.P3325342254299425434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205558.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A209281.P8916768534846602315`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209281 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A209281.P8916768534846602315.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209281.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A211603.P4525959663239701488

`A004736(n+1)!*A074909(A007401(n+1))`
-/

namespace A211603.P4525959663239701488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004736 (n + 1)).toNat : ℤ) * A074909 (A007401 (n + 1)).toNat

end

end A211603.P4525959663239701488

noncomputable section

/-- A211603: Triangular array read by rows: T(n,k) is the number of n-permutations that are pure cycles having exactly k fixed points; n>=2, 0<=k<=n-2.

Offset 2, canonical program `A211603.P4525959663239701488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A211603 (n : ℕ) : ℤ :=
  A211603.P4525959663239701488.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A211603.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A214991.P6371438862179888014

`A214990(n+1)+1+n`
-/

namespace A214991.P6371438862179888014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (n + 1) + 1 + (n : ℤ)

end

end A214991.P6371438862179888014

noncomputable section

/-- A214991: Second nearest integer to n*(1+golden ratio).

Offset 1, canonical program `A214991.P6371438862179888014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214991 (n : ℕ) : ℤ :=
  A214991.P6371438862179888014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214991.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A216195.P5070679371522791591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216195 (n : ℕ) : ℤ :=
  A216195.P5070679371522791591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216195.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A226194.P16380617872470380368

`(-1)^n*A053692(n)`
-/

namespace A226194.P16380617872470380368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A053692 n

end

end A226194.P16380617872470380368

noncomputable section

/-- A226194: Expansion of f(-x^1, -x^7) * f(-x^3, -x^5) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A226194.P16380617872470380368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226194 (n : ℕ) : ℤ :=
  A226194.P16380617872470380368.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226194.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A227742.P16732970729892409518

`A173318(2*n+1)-A033264(n)`
-/

namespace A227742.P16732970729892409518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173318 (2 * n + 1) - A033264 n

end

end A227742.P16732970729892409518

noncomputable section

/-- A227742: Fixed points of permutation A227741.

Offset 1, canonical program `A227742.P16732970729892409518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A227742 (n : ℕ) : ℤ :=
  A227742.P16732970729892409518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A227742.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A239443.P3035333711791582592

`(n+1)²*A239442(n+1)`
-/

namespace A239443.P3035333711791582592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A239442 (n + 1)

end

end A239443.P3035333711791582592

noncomputable section

/-- A239443: a(n) = phi(n^9), where phi = A000010.

Offset 1, canonical program `A239443.P3035333711791582592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239443 (n : ℕ) : ℤ :=
  A239443.P3035333711791582592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239443.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A253441.P13652333514978894263

`A253440(n+1)+2*A124512(A004139(n+1))`
-/

namespace A253441.P13652333514978894263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253440 (n + 1) + 2 * A124512 (A004139 (n + 1)).toNat

end

end A253441.P13652333514978894263

noncomputable section

/-- A253441: Number of (7+1) X (n+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

Offset 1, canonical program `A253441.P13652333514978894263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253441 (n : ℕ) : ℤ :=
  A253441.P13652333514978894263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253441.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A253972.P8307719435572186236

`A065091(lt[2, A237881(n+1)])`
-/

namespace A253972.P8307719435572186236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A253972.P8307719435572186236

noncomputable section

/-- A253972: Primes p such that p + nextprime(p) is divisible by 8.

Offset 1, canonical program `A253972.P8307719435572186236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A253972 (n : ℕ) : ℤ :=
  A253972.P8307719435572186236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A253972.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A256992.P13980922287724257721

`A234017(n+1)+A046699(n+2)*A079559(n+1)`
-/

namespace A256992.P13980922287724257721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234017 (n + 1) + A046699 (n + 2) * A079559 (n + 1)

end

end A256992.P13980922287724257721

noncomputable section

/-- A256992: Position of n in either of the complementary sequences, A005187 or A055938: a(n) = A213714(n) + A234017(n).

Offset 1, canonical program `A256992.P13980922287724257721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A256992 (n : ℕ) : ℤ :=
  A256992.P13980922287724257721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A256992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257126.P10227883745042734845

`A055938(n+1)-∑[val(n+1, 2)+1]`
-/

namespace A257126.P10227883745042734845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A257126.P10227883745042734845

noncomputable section

/-- A257126: a(n) = A055938(n) - A005187(n).

Offset 1, canonical program `A257126.P10227883745042734845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257126 (n : ℕ) : ℤ :=
  A257126.P10227883745042734845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257232.P16262734175053070523

`A003057(n+2)-A014683(A002260(n+1))`
-/

namespace A257232.P16262734175053070523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A014683 (A002260 (n + 1)).toNat

end

end A257232.P16262734175053070523

noncomputable section

/-- A257232: Triangle T(n, k) with the natural numbers in columns with nonprime k and the nonnegative numbers in columns with prime k, for 1 <= k <= n.

Offset 1, canonical program `A257232.P16262734175053070523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A257232 (n : ℕ) : ℤ :=
  A257232.P16262734175053070523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A257232.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A258832.P14663651183616388296

`(-1)^n*A121444(n)`
-/

namespace A258832.P14663651183616388296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A121444 n

end

end A258832.P14663651183616388296

noncomputable section

/-- A258832: Expansion of psi(-x^3) * f(-x, x^2) in powers of x where psi(), f(,) are Ramanujan theta functions.

Offset 0, canonical program `A258832.P14663651183616388296`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258832 (n : ℕ) : ℤ :=
  A258832.P14663651183616388296.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258877.P7623926527182171937

`A000040(A258876(n+1))`
-/

namespace A258877.P7623926527182171937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A258876 (n + 1)).toNat

end

end A258877.P7623926527182171937

noncomputable section

/-- A258877: Primes p=prime(m) such that both p and m have the same digital root.

Offset 1, canonical program `A258877.P7623926527182171937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1145 terms. -/
def A258877 (n : ℕ) : ℤ :=
  A258877.P7623926527182171937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1145 terms. -/
def A258877.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A260415.P18335187104503907792

`A121444(2*n)`
-/

namespace A260415.P18335187104503907792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 (2 * n)

end

end A260415.P18335187104503907792

noncomputable section

/-- A260415: Expansion of f(x, x^2) * f(x^4, x^8) in powers of x where f(,) is Ramanujan's general theta function.

Offset 0, canonical program `A260415.P18335187104503907792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A260415 (n : ℕ) : ℤ :=
  A260415.P18335187104503907792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A260415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260516.P12748464856549383251

`A121444(Δ[n²])`
-/

namespace A260516.P12748464856549383251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A260516.P12748464856549383251

noncomputable section

/-- A260516: Expansion of f(x, x^2) * f(x^2, x^10) in powers of x where f(,) is Ramanujan's general theta function.

Offset 0, canonical program `A260516.P12748464856549383251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260516 (n : ℕ) : ℤ :=
  A260516.P12748464856549383251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263832.P17990265328339962167

`(3*A263828(n+1))%A263827(n+1)`
-/

namespace A263832.P17990265328339962167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A263828 (n + 1)) (A263827 (n + 1))

end

end A263832.P17990265328339962167

noncomputable section

/-- A263832: The number c_{Cc,pi_1(B_2)}(n) of the second amphicosm n-coverings over the second amphicosm.

Offset 1, canonical program `A263832.P17990265328339962167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263832 (n : ℕ) : ℤ :=
  A263832.P17990265328339962167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263832.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A116618.P392978224677000414

`A000045(A116614(n+1))`
-/

namespace A116618.P392978224677000414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A116614 (n + 1)).toNat

end

end A116618.P392978224677000414

noncomputable section

/-- A116618: Values of Fibonacci(n) for n such that prime(2n) mod 12 = 1.

Offset 1, canonical program `A116618.P392978224677000414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A116618 (n : ℕ) : ℤ :=
  A116618.P392978224677000414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A116618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117304.P10783132350936566897

`∩[A019550(n+1), A019550(n+1)%A235497(n+1)]`
-/

namespace A117304.P10783132350936566897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019550 (n + 1)) (A235497 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117304.P10783132350936566897

noncomputable section

/-- A117304: Numbers with an even number of digits such that the second half is twice the first half.

Offset 1, canonical program `A117304.P10783132350936566897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4445 terms. -/
def A117304 (n : ℕ) : ℤ :=
  (A117304.P10783132350936566897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4445 terms. -/
def A117304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117396.P5688878678667839011

`gcd(Δ[A348482(n)], A103452(n))`
-/

namespace A117396.P5688878678667839011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A103452 n)

end

end A117396.P5688878678667839011

noncomputable section

/-- A117396: Triangle, read by rows, defined by: T(n,k) = (k+1)*T(n,k+1) - Sum_{j=1..n-k-1} T(j,0)*T(n,j+k+1) for n>k with T(n,n)=1 for n>=0.

Offset 0, canonical program `A117396.P5688878678667839011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117396 (n : ℕ) : ℤ :=
  (A117396.P5688878678667839011.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117501.P5866391480008375615

`A104763(n+1)+A025581(n)*A141169(n)`
-/

namespace A117501.P5866391480008375615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + A025581 n * A141169 n

end

end A117501.P5866391480008375615

noncomputable section

/-- A117501: Triangle generated from an array of generalized Fibonacci-like terms.

Offset 1, canonical program `A117501.P5866391480008375615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A117501 (n : ℕ) : ℤ :=
  A117501.P5866391480008375615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A117501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117725.P10630623760424057360

`∩[A028840(n+1), A028890(n+1)]`
-/

namespace A117725.P10630623760424057360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117725.P10630623760424057360

noncomputable section

/-- A117725: Zeroless numbers for which the sum of the digits and the product of the digits are both Fibonacci numbers.

Offset 1, canonical program `A117725.P10630623760424057360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A117725 (n : ℕ) : ℤ :=
  (A117725.P10630623760424057360.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A117725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118113.P10341986219208380266

`A022340(n)+1`
-/

namespace A118113.P10341986219208380266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 n + 1

end

end A118113.P10341986219208380266

noncomputable section

/-- A118113: Even Fibbinary numbers + 1; also 2*Fibbinary(n) + 1.

Offset 0, canonical program `A118113.P10341986219208380266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118113 (n : ℕ) : ℤ :=
  A118113.P10341986219208380266.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118113.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118749.P4005742103580817481

`A000040(A100637(n))`
-/

namespace A118749.P4005742103580817481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A100637 n).toNat

end

end A118749.P4005742103580817481

noncomputable section

/-- A118749: Largest prime <= 3*n.

Offset 1, canonical program `A118749.P4005742103580817481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118749 (n : ℕ) : ℤ :=
  A118749.P4005742103580817481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119012.P17349838365231914682

`A114515(n+1)-A114495(n+1)`
-/

namespace A119012.P17349838365231914682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114515 (n + 1) - A114495 (n + 1)

end

end A119012.P17349838365231914682

noncomputable section

/-- A119012: Number of valleys strictly above the x-axis in all hill-free Dyck paths of semilength n (a hill in a Dyck path is a peak at level 1).

Offset 1, canonical program `A119012.P17349838365231914682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A119012 (n : ℕ) : ℤ :=
  A119012.P17349838365231914682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A119012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119274.P7851153861640642019

`A104684(n)*A119502(n)`
-/

namespace A119274.P7851153861640642019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104684 n * A119502 n

end

end A119274.P7851153861640642019

noncomputable section

/-- A119274: Triangle of coefficients of numerators in Padé approximation to exp(x).

Offset 0, canonical program `A119274.P7851153861640642019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A119274 (n : ℕ) : ℤ :=
  A119274.P7851153861640642019.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A119274.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A122258.P2851884273537307678

`∑[A122257(n+1)]`
-/

namespace A122258.P2851884273537307678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122258.P2851884273537307678

noncomputable section

/-- A122258: Number of Pierpont primes <= n.

Offset 1, canonical program `A122258.P2851884273537307678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122258 (n : ℕ) : ℤ :=
  A122258.P2851884273537307678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122258.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A124478.P5037515413752499409

`ceil(A240568(n+1)/(n+1))`
-/

namespace A124478.P5037515413752499409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A240568 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A124478.P5037515413752499409

noncomputable section

/-- A124478: a(n) = prime(n) - floor((2/n)*Sum_{i=1..n} prime(i)).

Offset 1, canonical program `A124478.P5037515413752499409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124478 (n : ℕ) : ℤ :=
  A124478.P5037515413752499409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124478.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127693.P9222827015959222163

`A122190(n)%2`
-/

namespace A127693.P9222827015959222163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122190 n) 2

end

end A127693.P9222827015959222163

noncomputable section

/-- A127693: Expansion of psi(x^2) + x * psi(x^10) in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A127693.P9222827015959222163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127693 (n : ℕ) : ℤ :=
  A127693.P9222827015959222163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127693.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134080.P10459881647826391973

`A129303(2*n+1)`
-/

namespace A134080.P10459881647826391973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129303 (2 * n + 1)

end

end A134080.P10459881647826391973

noncomputable section

/-- A134080: Expansion of (f(-q^5)^5 / f(-q) + f(q^5)^5 / f(q)) / 2 in powers of q^2 where f() is a Ramanujan theta function.

Offset 0, canonical program `A134080.P10459881647826391973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134080 (n : ℕ) : ℤ :=
  A134080.P10459881647826391973.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134080.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A138330.P7940958561714153240

`A059648(n+1)+1`
-/

namespace A138330.P7940958561714153240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059648 (n + 1) + 1

end

end A138330.P7940958561714153240

noncomputable section

/-- A138330: Beatty discrepancy (defined in A138253) giving the closeness of the pair (A136497,A136498) to the Beatty pair (A001951,A001952).

Offset 1, canonical program `A138330.P7940958561714153240`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059648, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138330 (n : ℕ) : ℤ :=
  A138330.P7940958561714153240.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059648, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138557.P2808803708478524220

`(-1)^n*A129303(n+1)`
-/

namespace A138557.P2808803708478524220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A129303 (n + 1)

end

end A138557.P2808803708478524220

noncomputable section

/-- A138557: Expansion of eta(q)^2 * eta(q^4)^2 * eta(q^10)^7 / (eta(q^2)^3 * eta(q^5)^2 * eta(q^20)^2) in powers of q.

Offset 1, canonical program `A138557.P2808803708478524220`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138557 (n : ℕ) : ℤ :=
  A138557.P2808803708478524220.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138557.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138714.P17864452907051204205

`(A098363(∑[n+3])+1)%10`
-/

namespace A138714.P17864452907051204205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098363 (∑ j ∈ Finset.range (n + 1), f1 j) + 1) 10

end

end A138714.P17864452907051204205

noncomputable section

/-- A138714: Add 1, modulo 10, to the decimal expansion of e, A001113.

Offset 1, canonical program `A138714.P17864452907051204205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138714 (n : ℕ) : ℤ :=
  A138714.P17864452907051204205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138714.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A138746.P8217027100382283565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138746 (n : ℕ) : ℤ :=
  A138746.P8217027100382283565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138746.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A139313.P17807951572075830168

`A045319(A064149(n+1))`
-/

namespace A139313.P17807951572075830168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A064149 (n + 1)).toNat

end

end A139313.P17807951572075830168

noncomputable section

/-- A139313: Primes prime(k) such that -prime(k-1) + 3*prime(k) - 3*prime(k+1) + prime(k+2) = 0.

Offset 1, canonical program `A139313.P17807951572075830168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 722 terms. -/
def A139313 (n : ℕ) : ℤ :=
  A139313.P17807951572075830168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 722 terms. -/
def A139313.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140103.P6529635492083444814

`A003145(n+1)+1+n`
-/

namespace A140103.P6529635492083444814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1) + 1 + (n : ℤ)

end

end A140103.P6529635492083444814

noncomputable section

/-- A140103: Term-by-term sums of A140101 and A140100; also, equals the complement of A140102, which is the term-by-term differences of A140101 and A140100, where A140101 is the complement of A140100.

Offset 1, canonical program `A140103.P6529635492083444814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140103 (n : ℕ) : ℤ :=
  A140103.P6529635492083444814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140103.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A141136.P2567257724211778372

`A140853(A008578(n+1))`
-/

namespace A141136.P2567257724211778372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (A008578 (n + 1)).toNat

end

end A141136.P2567257724211778372

noncomputable section

/-- A141136: a(n) = prime(prime(A028815(n) - 1) - 1) - 1.

Offset 0, canonical program `A141136.P2567257724211778372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A141136 (n : ℕ) : ℤ :=
  A141136.P2567257724211778372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A141136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141208.P7923699408276574517

`A140853(p?[a(n-1)+2]-1)` with `a(0)=2, a(1)=1`
-/

namespace A141208.P7923699408276574517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A141208.P7923699408276574517

noncomputable section

/-- A141208: a(n) = prime(prime(prime(n) - 1) - 1) - 1, where prime(n) = n-th prime.

Offset 1, canonical program `A141208.P7923699408276574517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A141208 (n : ℕ) : ℤ :=
  A141208.P7923699408276574517.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A141208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141535.P15964127425389347798

`3*(A127922(n+2)-∑[∑[n+1]])`
-/

namespace A141535.P15964127425389347798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A127922 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A141535.P15964127425389347798

noncomputable section

/-- A141535: An eighth of the product of three integers surrounding the (n+1)-st prime, minus half of the product of the 3 numbers surrounding n+1.

Offset 1, canonical program `A141535.P15964127425389347798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141535 (n : ℕ) : ℤ :=
  A141535.P15964127425389347798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141535.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143756.P18241202892685653242

`A143758(A188376(n+2))+A143757(n+1)`
-/

namespace A143756.P18241202892685653242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143758 (A188376 (n + 2)).toNat + A143757 (n + 1)

end

end A143756.P18241202892685653242

noncomputable section

/-- A143756: Aliquot sequence starting at 81.

Offset 0, canonical program `A143756.P18241202892685653242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4141 terms. -/
def A143756 (n : ℕ) : ℤ :=
  A143756.P18241202892685653242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4141 terms. -/
def A143756.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A155974.P127828562690333382

`∑[A053872(n+1)]`
-/

namespace A155974.P127828562690333382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155974.P127828562690333382

noncomputable section

/-- A155974: Partial sums of A053872.

Offset 1, canonical program `A155974.P127828562690333382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155974 (n : ℕ) : ℤ :=
  A155974.P127828562690333382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156583.P9591001356614490137

`A119505(eq[2, gcd(2, A119505(n+1))]+1)`
-/

namespace A156583.P9591001356614490137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A119505 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119505 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A156583.P9591001356614490137

noncomputable section

/-- A156583: The subsequence of even digits in A119505.

Offset 1, canonical program `A156583.P9591001356614490137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1440 terms. -/
def A156583 (n : ℕ) : ℤ :=
  A156583.P9591001356614490137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1440 terms. -/
def A156583.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A156944.P9088602599021019118

`A095711(A098363(∑[n+3])+57)`
-/

namespace A156944.P9088602599021019118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095711 (A098363 (∑ j ∈ Finset.range (n + 1), f1 j) + 57).toNat

end

end A156944.P9088602599021019118

noncomputable section

/-- A156944: Let d(i) be the i-th digit of the decimal expansion of e = 2.71828182845..., so that d(1) = 2, d(2) = 7, d(3) = 1, etc. Then a(n) = d(10 - d(n)).

Offset 1, canonical program `A156944.P9088602599021019118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156944 (n : ℕ) : ℤ :=
  A156944.P9088602599021019118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157226.P2232521618856525876

`floor(A304182(n+1)/2)`
-/

namespace A157226.P2232521618856525876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A304182 (n + 1) : ℚ) / 2⌋

end

end A157226.P2232521618856525876

noncomputable section

/-- A157226: Number of primitive inequivalent sublattices of square lattice having mirrors parallel to the sides of the unit cell of the parent lattice of index n.

Offset 1, canonical program `A157226.P2232521618856525876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A157226 (n : ℕ) : ℤ :=
  A157226.P2232521618856525876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A157226.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A161515.P1171096934450615199

`A033999(n)*A035185(A017077(n))`
-/

namespace A161515.P1171096934450615199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A035185 (A017077 n).toNat

end

end A161515.P1171096934450615199

noncomputable section

/-- A161515: Expansion of q-series Sum_{n >= 0} (-1)^n*q^(n*(n + 1)/2)*(1 - q)*(1 - q^2)*...*(1 - q^n) / ((1 + q)*(1 + q^2)*(1 + q^3)*...*(1 + q^n)).

Offset 0, canonical program `A161515.P1171096934450615199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A161515 (n : ℕ) : ℤ :=
  A161515.P1171096934450615199.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A161515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161516.P1475536178005719579

`(-1)^n*A035185(abs(1-8*n))`
-/

namespace A161516.P1475536178005719579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A035185 |1 - (8 * n : ℤ)|.toNat

end

end A161516.P1475536178005719579

noncomputable section

/-- A161516: Expansion of 1 + 2*Sum_{n >= 1} (-q)^n*(1 + q^2)*(1 + q^4)*...*(1 + q^(2*k - 2))/ ((1 - q)*(1 - q^3)*...*(1 - q^(2*n - 1))).

Offset 0, canonical program `A161516.P1475536178005719579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A161516 (n : ℕ) : ℤ :=
  A161516.P1475536178005719579.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A161516.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A161868.P13367704596078585754

`∩[A049282(n+1), A063645(n+1)]`
-/

namespace A161868.P13367704596078585754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161868.P13367704596078585754

noncomputable section

/-- A161868: Primes p such that both p+2 and p-2 are products of 3 distinct primes.

Offset 1, canonical program `A161868.P13367704596078585754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1181 terms. -/
def A161868 (n : ℕ) : ℤ :=
  (A161868.P13367704596078585754.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1181 terms. -/
def A161868.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A163378.P1878852283185701666

`∑{d}[A163109(n+1), #]`
-/

namespace A163378.P1878852283185701666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163378.P1878852283185701666

noncomputable section

/-- A163378: a(n) = sigma(phi(tau(n))).

Offset 1, canonical program `A163378.P1878852283185701666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163378 (n : ℕ) : ℤ :=
  (A163378.P1878852283185701666.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163378.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A163871.P6376979073296319069

`A002808(n+1)+A062825(n+2)`
-/

namespace A163871.P6376979073296319069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + A062825 (n + 2)

end

end A163871.P6376979073296319069

noncomputable section

/-- A163871: The n-th composite plus the sum of its nontrivial divisors.

Offset 1, canonical program `A163871.P6376979073296319069`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A062825, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163871 (n : ℕ) : ℤ :=
  A163871.P6376979073296319069.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A062825, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163871.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A174941.P11439559617156554674

`∏{p}[n+1, -1%#]*A174940(∏{p}[n+1, #])`
-/

namespace A174941.P11439559617156554674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (-1) (p : ℤ)) * A174940 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A174941.P11439559617156554674

noncomputable section

/-- A174941: a(n) = Sum_{d|n} A007955(d) * A008683(d) = Sum_{d|n} A007955(d) * mu(d), where A007955(m) = product of divisors of m.

Offset 1, canonical program `A174941.P11439559617156554674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A174941 (n : ℕ) : ℤ :=
  A174941.P11439559617156554674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A174941.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A176841.P12208208766662245832

`a(n-A163109(n+1))+1` with `a(0)=0`
-/

namespace A176841.P12208208766662245832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A163109 (n + 1)).toNat + 1

end

end A176841.P12208208766662245832

noncomputable section

/-- A176841: a(n) is the number of iterations of f(n) = n-phi(tau(n)) needed to reach 1.

Offset 1, canonical program `A176841.P12208208766662245832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176841 (n : ℕ) : ℤ :=
  (A176841.P12208208766662245832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176841.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A182039.P2589778364492655354

`A060968(n+1)*A060594(n+1)`
-/

namespace A182039.P2589778364492655354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (n + 1) * A060594 (n + 1)

end

end A182039.P2589778364492655354

noncomputable section

/-- A182039: Order of the group O(2,Z_n); number of orthogonal 2 X 2 matrices over the ring Z/nZ.

Offset 1, canonical program `A182039.P2589778364492655354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, A060968, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182039 (n : ℕ) : ℤ :=
  A182039.P2589778364492655354.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, A060968, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182039.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A182855.P17254477135155792019

`∩[A059404(n+1), A182851(n+1)]`
-/

namespace A182855.P17254477135155792019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182855.P17254477135155792019

noncomputable section

/-- A182855: Numbers that require exactly five iterations to reach a fixed point under the x -> A181819(x) map.

Offset 1, canonical program `A182855.P17254477135155792019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2598 terms. -/
def A182855 (n : ℕ) : ℤ :=
  (A182855.P17254477135155792019.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2598 terms. -/
def A182855.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A184621.P1639829693954657197

`floor(A063957(2*(n+1))/2)`
-/

namespace A184621.P1639829693954657197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063957 (2 * (n + 1)) : ℚ) / 2⌋

end

end A184621.P1639829693954657197

noncomputable section

/-- A184621: a(n) = floor((n-h)*s+h), where s=2+sqrt(2) and h=1/4; complement of A184620.

Offset 1, canonical program `A184621.P1639829693954657197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184621 (n : ℕ) : ℤ :=
  A184621.P1639829693954657197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184869.P15509007701373363628

`A194920(p?[A063957(n+1)])`
-/

namespace A184869.P15509007701373363628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184869.P15509007701373363628

noncomputable section

/-- A184869: Numbers k such that floor[(k-1/2)*(2+2^(1/2))+1/2] is prime.

Offset 1, canonical program `A184869.P15509007701373363628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A184869 (n : ℕ) : ℤ :=
  A184869.P15509007701373363628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A184869.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A185978.P8182532355553636214

`filter[A051533(n+1), A123110(#)]`
-/

namespace A185978.P8182532355553636214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A185978.P8182532355553636214

noncomputable section

/-- A185978: Nontriangular numbers which are the sum of two (positive) triangular numbers.

Offset 1, canonical program `A185978.P8182532355553636214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A185978 (n : ℕ) : ℤ :=
  A185978.P8182532355553636214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A185978.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188092.P4661971966666543526

`filter[n+1, A188090(#)]`
-/

namespace A188092.P4661971966666543526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188090 (f1 j) = 1) n)

end

end A188092.P4661971966666543526

noncomputable section

/-- A188092: Positions of 1 in A188090; complement of A188091.

Offset 1, canonical program `A188092.P4661971966666543526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6603 terms. -/
def A188092 (n : ℕ) : ℤ :=
  (A188092.P4661971966666543526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6603 terms. -/
def A188092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188093.P14427247559921833927

`A188090(a(n-1)+n+1)` with `a(0)=1`
-/

namespace A188093.P14427247559921833927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188090 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A188093.P14427247559921833927

noncomputable section

/-- A188093: [nr+kr]-[nr]-[kr], where r=sqrt(3), k=6, [ ]=floor.

Offset 1, canonical program `A188093.P14427247559921833927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188093 (n : ℕ) : ℤ :=
  A188093.P14427247559921833927.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188093.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190056.P2200806919395298525

`A190006(2*(n+1))-(n+1)`
-/

namespace A190056.P2200806919395298525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190006 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A190056.P2200806919395298525

noncomputable section

/-- A190056: a(n) = n + [n*s/r] + [n*t/r]; r=1/2, s=sin(Pi/3), t=csc(Pi/3).

Offset 1, canonical program `A190056.P2200806919395298525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190056 (n : ℕ) : ℤ :=
  A190056.P2200806919395298525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190056.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190490.P4746224311155637002

`∩[A003151(n+1), A190247(n+1)]`
-/

namespace A190490.P4746224311155637002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190490.P4746224311155637002

noncomputable section

/-- A190490: Positions of 2 in A190487.

Offset 1, canonical program `A190490.P4746224311155637002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A190490 (n : ℕ) : ℤ :=
  (A190490.P4746224311155637002.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A190490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190556.P9122696133138380900

`A098021(A190545(n+1))`
-/

namespace A190556.P9122696133138380900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (A190545 (n + 1)).toNat

end

end A190556.P9122696133138380900

noncomputable section

/-- A190556: Positions of 0 in A190555.

Offset 1, canonical program `A190556.P9122696133138380900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190556 (n : ℕ) : ℤ :=
  A190556.P9122696133138380900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190562.P8810397577342035983

`1+eq[0, A190561(n+1)]`
-/

namespace A190562.P8810397577342035983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190562.P8810397577342035983

noncomputable section

/-- A190562: Positions of 0 in A190561.

Offset 1, canonical program `A190562.P8810397577342035983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1893 terms. -/
def A190562 (n : ℕ) : ℤ :=
  (A190562.P8810397577342035983.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1893 terms. -/
def A190562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190563.P9058313679088446124

`eq[1, A190561(n+1)]+1`
-/

namespace A190563.P9058313679088446124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190563.P9058313679088446124

noncomputable section

/-- A190563: Positions of 1 in A190561.

Offset 1, canonical program `A190563.P9058313679088446124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190563 (n : ℕ) : ℤ :=
  (A190563.P9058313679088446124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190564.P9395471730941467231

`eq[2, A190561(n+1)]+1`
-/

namespace A190564.P9395471730941467231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190564.P9395471730941467231

noncomputable section

/-- A190564: Positions of 2 in A190561.

Offset 1, canonical program `A190564.P9395471730941467231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190564 (n : ℕ) : ℤ :=
  (A190564.P9395471730941467231.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190565.P10573021868143649417

`eq[3, A190561(n+1)]+1`
-/

namespace A190565.P10573021868143649417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190565.P10573021868143649417

noncomputable section

/-- A190565: Positions of 3 in A190561.

Offset 1, canonical program `A190565.P10573021868143649417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190565 (n : ℕ) : ℤ :=
  (A190565.P10573021868143649417.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190700.P18144237897161414675

`eq[1, A190698(n+1)]+1`
-/

namespace A190700.P18144237897161414675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190700.P18144237897161414675

noncomputable section

/-- A190700: Positions of 1 in A190698.

Offset 1, canonical program `A190700.P18144237897161414675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A190700 (n : ℕ) : ℤ :=
  (A190700.P18144237897161414675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A190700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190701.P8397655334725418112

`eq[2, A190698(n+1)]+1`
-/

namespace A190701.P8397655334725418112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190701.P8397655334725418112

noncomputable section

/-- A190701: Positions of 2 in A190698.

Offset 1, canonical program `A190701.P8397655334725418112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190701 (n : ℕ) : ℤ :=
  (A190701.P8397655334725418112.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190702.P10150179771770399436

`eq[3, A190698(n+1)]+1`
-/

namespace A190702.P10150179771770399436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190702.P10150179771770399436

noncomputable section

/-- A190702: Positions of 3 in A190698.

Offset 1, canonical program `A190702.P10150179771770399436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190702 (n : ℕ) : ℤ :=
  (A190702.P10150179771770399436.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190703.P3098781758247083285

`eq[4, A190698(n+2)]+2`
-/

namespace A190703.P3098781758247083285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A190703.P3098781758247083285

noncomputable section

/-- A190703: Positions of 4 in A190698.

Offset 1, canonical program `A190703.P3098781758247083285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1831 terms. -/
def A190703 (n : ℕ) : ℤ :=
  (A190703.P3098781758247083285.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1831 terms. -/
def A190703.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A199596.P3097646989269055567

`floor(A072451(n+1)/A055034(n+1))`
-/

namespace A199596.P3097646989269055567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072451 (n + 1) : ℚ) / (A055034 (n + 1) : ℚ)⌋

end

end A199596.P3097646989269055567

noncomputable section

/-- A199596: a(n) = floor(phi(2*n+1)/phi(2*n+2)).

Offset 0, canonical program `A199596.P3097646989269055567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199596 (n : ℕ) : ℤ :=
  A199596.P3097646989269055567.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199596.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A206803.P2151029632934271645

`∑[2*A206802(n+2)]`
-/

namespace A206803.P2151029632934271645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206802 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206803.P2151029632934271645

noncomputable section

/-- A206803: Sum_{0

Offset 2, canonical program `A206803.P2151029632934271645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206803 (n : ℕ) : ℤ :=
  A206803.P2151029632934271645.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206804.P1242575260079652548

`∑[A206802(n+2)]`
-/

namespace A206804.P1242575260079652548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206802 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206804.P1242575260079652548

noncomputable section

/-- A206804: (1/2)*A206803.

Offset 2, canonical program `A206804.P1242575260079652548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206804 (n : ℕ) : ℤ :=
  A206804.P1242575260079652548.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206804.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A213540.P2078198846626860869

`2*A022341(n)+1`
-/

namespace A213540.P2078198846626860869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022341 n + 1

end

end A213540.P2078198846626860869

noncomputable section

/-- A213540: Numbers k such that k AND k*2 = 2, where AND is the bitwise AND operator.

Offset 1, canonical program `A213540.P2078198846626860869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213540 (n : ℕ) : ℤ :=
  A213540.P2078198846626860869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214681.P13397189043489326683

`A065330(n+1)*A234959(n+1)`
-/

namespace A214681.P13397189043489326683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1) * A234959 (n + 1)

end

end A214681.P13397189043489326683

noncomputable section

/-- A214681: a(n) is obtained from n by removing factors of 2 and 3 that do not contribute to a factor of 6.

Offset 1, canonical program `A214681.P13397189043489326683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214681 (n : ℕ) : ℤ :=
  A214681.P13397189043489326683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214681.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A215726.P9624273629466354318

`∩[A078779(n+1)-1, A078779(n+1)]`
-/

namespace A215726.P9624273629466354318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215726.P9624273629466354318

noncomputable section

/-- A215726: Numbers k such that the k-th triangular number is squarefree.

Offset 1, canonical program `A215726.P9624273629466354318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6828 terms. -/
def A215726 (n : ℕ) : ℤ :=
  (A215726.P9624273629466354318.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6828 terms. -/
def A215726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216098.P11989965352199446682

`p?[A073273(n+1)]`
-/

namespace A216098.P11989965352199446682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216098.P11989965352199446682

noncomputable section

/-- A216098: Primes that are equal to the floor of the geometric mean of the previous prime and the following prime.

Offset 1, canonical program `A216098.P11989965352199446682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1209 terms. -/
def A216098 (n : ℕ) : ℤ :=
  A216098.P11989965352199446682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1209 terms. -/
def A216098.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A225399.P2768579610231320138

`A076982(round(acot(n)+n))-2`
-/

namespace A225399.P2768579610231320138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076982 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 2

end

end A225399.P2768579610231320138

noncomputable section

/-- A225399: Number of nontrivial triangular numbers dividing triangular(n).

Offset 0, canonical program `A225399.P2768579610231320138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225399 (n : ℕ) : ℤ :=
  A225399.P2768579610231320138.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225399.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A225838.P9291105408956679938

`eq[2, A065330(n+1)%3]+1`
-/

namespace A225838.P9291105408956679938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065330 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225838.P9291105408956679938

noncomputable section

/-- A225838: Numbers of form 2^i*3^j*(6k+5), i, j, k >= 0.

Offset 1, canonical program `A225838.P9291105408956679938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. -/
def A225838 (n : ℕ) : ℤ :=
  (A225838.P9291105408956679938.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. -/
def A225838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225858.P8779142669579381779

`lt[1, A065330(n+1)%4]+1`
-/

namespace A225858.P8779142669579381779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065330 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A225858.P8779142669579381779

noncomputable section

/-- A225858: Numbers of the form 2^i*3^j*(12k+7) or 2^i*3^j*(12k+11), i, j, k >= 0.

Offset 1, canonical program `A225858.P8779142669579381779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4963 terms. -/
def A225858 (n : ℕ) : ℤ :=
  (A225858.P8779142669579381779.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4963 terms. -/
def A225858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226953.P559492349388349855

`eq[A163109(n+1)², A062821(n+1)]+1`
-/

namespace A226953.P559492349388349855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226953.P559492349388349855

noncomputable section

/-- A226953: Leap year numbers: numbers n such that tau(phi(n)) = phi(tau(n))^2, where tau(n) is the number of divisors of n and phi(n) the Euler totient function.

Offset 1, canonical program `A226953.P559492349388349855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A226953 (n : ℕ) : ℤ :=
  (A226953.P559492349388349855.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A226953.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A242082.P757020989962679087

`A159917(lt[2, (n-and(n, 3*n))/2])`
-/

namespace A242082.P757020989962679087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.land n (3 * n) : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159917 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A242082.P757020989962679087

noncomputable section

/-- A242082: Nim sequence of game on n counters whose legal moves are removing some number of counters in A027941.

Offset 0, canonical program `A242082.P757020989962679087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A242082 (n : ℕ) : ℤ :=
  A242082.P757020989962679087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A242082.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A245798.P156287280549702739

`2*A072451(n)/A055034(n+1)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A245798.P156287280549702739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * ((A072451 n : ℚ) / (A055034 (n + 1) : ℚ) * a (n - 1))

end

end A245798.P156287280549702739

noncomputable section

/-- A245798: Catalan number analogs for totienomial coefficients (A238453).

Offset 0, canonical program `A245798.P156287280549702739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A245798 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A245798.P156287280549702739.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A245798.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A252649.P11680988129779242489

`∑[A211487(n+1)]+1`
-/

namespace A252649.P11680988129779242489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A252649.P11680988129779242489

noncomputable section

/-- A252649: Number of positive integers that are less than or equal to n and have a primitive root.

Offset 1, canonical program `A252649.P11680988129779242489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A252649 (n : ℕ) : ℤ :=
  A252649.P11680988129779242489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A252649.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A257409.P13798852354601103833

`eq[A121262(n)+1, A220400(n)]`
-/

namespace A257409.P13798852354601103833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257409.P13798852354601103833

noncomputable section

/-- A257409: Values of n such that there are exactly 2 solutions to x^2 - y^2 = n, with x > y >= 0.

Offset 1, canonical program `A257409.P13798852354601103833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2966 terms. -/
def A257409 (n : ℕ) : ℤ :=
  (A257409.P13798852354601103833.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2966 terms. -/
def A257409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257410.P7877436251234973800

`eq[A121262(n)+2, A220400(n)]`
-/

namespace A257410.P7877436251234973800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257410.P7877436251234973800

noncomputable section

/-- A257410: Values of n such that there are exactly 3 solutions to x^2 - y^2 = n with x > y >= 0.

Offset 1, canonical program `A257410.P7877436251234973800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A257410 (n : ℕ) : ℤ :=
  (A257410.P7877436251234973800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A257410.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A259829.P7658678791874093177

`(1-and(2, n+1))*A035185(n+1)`
-/

namespace A259829.P7658678791874093177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 (n + 1) : ℤ)) * A035185 (n + 1)

end

end A259829.P7658678791874093177

noncomputable section

/-- A259829: a(n) = (-1)^floor(n/2) * A035185(n).

Offset 1, canonical program `A259829.P7658678791874093177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259829 (n : ℕ) : ℤ :=
  A259829.P7658678791874093177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259829.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 2, canonical program `A265027.P2893098001650246285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265027 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A265027.P2893098001650246285.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265027.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115878.P7524570473930013961

`A046079(gcd(n+1, lcm(2, ∑[n])))`
-/

namespace A115878.P7524570473930013961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (Nat.gcd (n + 1) (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A115878.P7524570473930013961

noncomputable section

/-- A115878: a(n) is the number of positive solutions of the Diophantine equation x^2 = y(y+n).

Offset 1, canonical program `A115878.P7524570473930013961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115878 (n : ℕ) : ℤ :=
  A115878.P7524570473930013961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115975.P17265388920896280111

`record[n/a(A318464(n))]` with `a(0)=1`
-/

namespace A115975.P17265388920896280111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A318464 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115975.P17265388920896280111

noncomputable section

/-- A115975: Numbers of the form p^k, where p is a prime and k is a Fibonacci number.

Offset 1, canonical program `A115975.P17265388920896280111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6617 terms. -/
def A115975 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115975.P17265388920896280111.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6617 terms. -/
def A115975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117096.P17502464881523089586

`eq[2, ceil(A060264(n)/A007918(n))]`
-/

namespace A117096.P17502464881523089586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060264 n : ℚ) / (A007918 n : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117096.P17502464881523089586

noncomputable section

/-- A117096: Numbers n such that nextprime(2*n)

Offset 1, canonical program `A117096.P17502464881523089586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6060 terms. -/
def A117096 (n : ℕ) : ℤ :=
  (A117096.P17502464881523089586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6060 terms. -/
def A117096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117108.P13738302972164645940

`∑{d}[n+1, A327274(#)*A366813((n+1)/#)]`
-/

namespace A117108.P13738302972164645940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327274 d * A366813 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117108.P13738302972164645940

noncomputable section

/-- A117108: Moebius transform of tetrahedral numbers.

Offset 1, canonical program `A117108.P13738302972164645940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117108 (n : ℕ) : ℤ :=
  A117108.P13738302972164645940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117499.P1282103353634337278

`A168141(2*(n+1))+A168141(A233583(n+2))`
-/

namespace A117499.P1282103353634337278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (2 * (n + 1)) + A168141 (A233583 (n + 2)).toNat

end

end A117499.P1282103353634337278

noncomputable section

/-- A117499: Number of subsets of {n-1, n, n+1} that sum up to a prime.

Offset 1, canonical program `A117499.P1282103353634337278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A117499 (n : ℕ) : ℤ :=
  A117499.P1282103353634337278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A117499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117677.P10653835365682684054

`2*A046079(2*(n+1))-A057427(n)`
-/

namespace A117677.P10653835365682684054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046079 (2 * (n + 1)) - A057427 n

end

end A117677.P10653835365682684054

noncomputable section

/-- A117677: a(n) = number of divisors of n^2 (excluding 1 and n^2).

Offset 1, canonical program `A117677.P10653835365682684054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117677 (n : ℕ) : ℤ :=
  A117677.P10653835365682684054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118093.P12063885949380815492

`A115194(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A118093.P12063885949380815492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115194 n + 8 * a (n - 1)

end

end A118093.P12063885949380815492

noncomputable section

/-- A118093: Numbers of rooted hypermaps on the torus with n darts (darts are semi-edges in the particular case of ordinary maps).

Offset 3, canonical program `A118093.P12063885949380815492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A118093 (n : ℕ) : ℤ :=
  A118093.P12063885949380815492.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A118093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118483.P12141014104972374228

`A115606(n)+1`
-/

namespace A118483.P12141014104972374228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115606 n + 1

end

end A118483.P12141014104972374228

noncomputable section

/-- A118483: Partial sums of primes that are not Chen primes (starting with 1).

Offset 0, canonical program `A118483.P12141014104972374228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118483 (n : ℕ) : ℤ :=
  A118483.P12141014104972374228.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118541.P11040726399635280767

`∏{d}[n, A007954(A014963(#))]`
-/

namespace A118541.P11040726399635280767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A007954 (A014963 d).toNat

end

end A118541.P11040726399635280767

noncomputable section

/-- A118541: Product of digits of prime factors of n, with multiplicity.

Offset 0, canonical program `A118541.P11040726399635280767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118541 (n : ℕ) : ℤ :=
  A118541.P11040726399635280767.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119301.P2252977505407981584

`C(A131894(n+1), A025581(n))`
-/

namespace A119301.P2252977505407981584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131894 (n + 1)).toNat (A025581 n).toNat

end

end A119301.P2252977505407981584

noncomputable section

/-- A119301: Triangle read by rows: T(n,k) = binomial(3*n-k,n-k).

Offset 0, canonical program `A119301.P2252977505407981584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. -/
def A119301 (n : ℕ) : ℤ :=
  (A119301.P2252977505407981584.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. -/
def A119301.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A124284.P6129315237893395240

`A000040(A014613(n+1))-A124283(n+1)`
-/

namespace A124284.P6129315237893395240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014613 (n + 1)).toNat - A124283 (n + 1)

end

end A124284.P6129315237893395240

noncomputable section

/-- A124284: Prime(4almostprime(n))-4almostprime(prime(n)). Commutator [A000040,A014613] at n.

Offset 1, canonical program `A124284.P6129315237893395240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124284 (n : ℕ) : ℤ :=
  A124284.P6129315237893395240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125079.P1710399594586959767

`A035154(2*n+1)`
-/

namespace A125079.P1710399594586959767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (2 * n + 1)

end

end A125079.P1710399594586959767

noncomputable section

/-- A125079: Excess of number of divisors of 2n+1 of form 12k+1, 12k+5 over those of form 12k+7, 12k+11.

Offset 0, canonical program `A125079.P1710399594586959767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125079 (n : ℕ) : ℤ :=
  A125079.P1710399594586959767.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125079.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126711.P3238805726536964657

`p?[A046317(n+1)+2]`
-/

namespace A126711.P3238805726536964657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046317 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126711.P3238805726536964657

noncomputable section

/-- A126711: Primes of the form p*q*r*s+2 with p,q,r,s odd primes.

Offset 1, canonical program `A126711.P3238805726536964657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2573 terms. -/
def A126711 (n : ℕ) : ℤ :=
  A126711.P3238805726536964657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2573 terms. -/
def A126711.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A126850.P4999085369403255151

`A107749(a(n-1))` with `a(0)=2`
-/

namespace A126850.P4999085369403255151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A107749 (a (n - 1)).toNat

end

end A126850.P4999085369403255151

noncomputable section

/-- A126850: a(n) = OrdinaryUnitarySigma(a(n-1)).

Offset 2, canonical program `A126850.P4999085369403255151`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107749, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126850 (n : ℕ) : ℤ :=
  A126850.P4999085369403255151.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107749, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129468.P11362039589036067826

`A034460(n+1)-(n+1)`
-/

namespace A129468.P11362039589036067826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) - (n + 1 : ℤ)

end

end A129468.P11362039589036067826

noncomputable section

/-- A129468: Unitary abundance of n.

Offset 1, canonical program `A129468.P11362039589036067826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129468 (n : ℕ) : ℤ :=
  A129468.P11362039589036067826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129487.P5016934466193962312

`lt[A034460(n+1), n+1]+1`
-/

namespace A129487.P5016934466193962312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A129487.P5016934466193962312

noncomputable section

/-- A129487: Unitary deficient numbers.

Offset 1, canonical program `A129487.P5016934466193962312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129487 (n : ℕ) : ℤ :=
  (A129487.P5016934466193962312.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130091.P10467782542687756208

`eq[1, A351564(n+1)]+1`
-/

namespace A130091.P10467782542687756208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351564 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A130091.P10467782542687756208

noncomputable section

/-- A130091: Numbers having in their canonical prime factorization mutually distinct exponents.

Offset 1, canonical program `A130091.P10467782542687756208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130091 (n : ℕ) : ℤ :=
  (A130091.P10467782542687756208.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130091.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131135.P10095143337116483754

`A000032(C(2, n+2))*A090634(A028310(n))`
-/

namespace A131135.P10095143337116483754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A090634 (A028310 n).toNat

end

end A131135.P10095143337116483754

noncomputable section

/-- A131135: Denominator of (ordinary) expansion of log((x/2-1)/(x-1)).

Offset 0, canonical program `A131135.P10095143337116483754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A131135 (n : ℕ) : ℤ :=
  A131135.P10095143337116483754.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A131135.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131850.P13687158872308473205

`∩[A014612(n+1), A125495(n+1)]`
-/

namespace A131850.P13687158872308473205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131850.P13687158872308473205

noncomputable section

/-- A131850: Odious 3-almost primes.

Offset 1, canonical program `A131850.P13687158872308473205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2931 terms. -/
def A131850 (n : ℕ) : ℤ :=
  (A131850.P13687158872308473205.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2931 terms. -/
def A131850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132004.P16065052976772229410

`(-1)^n*A035154(n+1)`
-/

namespace A132004.P16065052976772229410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A035154 (n + 1)

end

end A132004.P16065052976772229410

noncomputable section

/-- A132004: Expansion of (1 - phi(q^3) / phi(q) * phi(-q^2) * phi(-q^6)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A132004.P16065052976772229410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132004 (n : ℕ) : ℤ :=
  A132004.P16065052976772229410.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132004.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A133790.P1304857856387139894

`∏{p}[A014963(n+1), #*(n+1)]`
-/

namespace A133790.P1304857856387139894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p * (n + 1)

end

end A133790.P1304857856387139894

noncomputable section

/-- A133790: A014963*A100994.

Offset 1, canonical program `A133790.P1304857856387139894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133790 (n : ℕ) : ℤ :=
  (A133790.P1304857856387139894.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133790.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140235.P5857822171184418591

`∑[A100959(n+1)]`
-/

namespace A140235.P5857822171184418591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140235.P5857822171184418591

noncomputable section

/-- A140235: Partial sum of non-semiprimes A100959.

Offset 1, canonical program `A140235.P5857822171184418591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140235 (n : ℕ) : ℤ :=
  A140235.P5857822171184418591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140235.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140664.P14218141350369452955

`(A007423(n+1)-1)*A014963(n+1)`
-/

namespace A140664.P14218141350369452955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007423 (n + 1) - 1) * A014963 (n + 1)

end

end A140664.P14218141350369452955

noncomputable section

/-- A140664: a(n) = A014963(n)*mobius(n).

Offset 1, canonical program `A140664.P14218141350369452955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140664 (n : ℕ) : ℤ :=
  A140664.P14218141350369452955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140694.P13182129983530524897

`A014963(n+1)*A063659(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140694.P13182129983530524897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A063659 (n + 1)

end

end A140694.P13182129983530524897

noncomputable section

/-- A140694: a(n) = A014963(n) * A063659(n).

Offset 1, canonical program `A140694.P13182129983530524897`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A063659, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A140694 (n : ℕ) : ℤ :=
  A140694.P13182129983530524897.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A063659, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A140694.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A145109.P5344922340011316833

`lcm(2, A038388(n+1))²`
-/

namespace A145109.P5344922340011316833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A038388 (n + 1)) ^ 2

end

end A145109.P5344922340011316833

noncomputable section

/-- A145109: a(n) = 2*n * core(2*n).

Offset 1, canonical program `A145109.P5344922340011316833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145109 (n : ℕ) : ℤ :=
  (A145109.P5344922340011316833.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A146564.P5455940889942169782

`3*A046079(2*(n+1))+1`
-/

namespace A146564.P5455940889942169782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046079 (2 * (n + 1)) + 1

end

end A146564.P5455940889942169782

noncomputable section

/-- A146564: a(n) is the number of solutions of the equation k*n/(k-n) = c. k,c integers.

Offset 1, canonical program `A146564.P5455940889942169782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A146564 (n : ℕ) : ℤ :=
  A146564.P5455940889942169782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A146564.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A156243.P395087012412145335

`A054353(2*n+1)`
-/

namespace A156243.P395087012412145335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (2 * n + 1)

end

end A156243.P395087012412145335

noncomputable section

/-- A156243: Bisection of A054353.

Offset 1, canonical program `A156243.P395087012412145335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156243 (n : ℕ) : ℤ :=
  A156243.P395087012412145335.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156243.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156250.P8857404366207384535

`A054353(n+1)-n`
-/

namespace A156250.P8857404366207384535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) - (n : ℤ)

end

end A156250.P8857404366207384535

noncomputable section

/-- A156250: Least k such that A078649(k) >= A054353(n).

Offset 1, canonical program `A156250.P8857404366207384535`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156250 (n : ℕ) : ℤ :=
  A156250.P8857404366207384535.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156250.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156267.P5021662952650829531

`A054353(2*(n+1))-∑[A306323(n+1)]`
-/

namespace A156267.P5021662952650829531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156267.P5021662952650829531

noncomputable section

/-- A156267: a(n)=A054353(2*n)-A078649(n).

Offset 1, canonical program `A156267.P5021662952650829531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A156267 (n : ℕ) : ℤ :=
  A156267.P5021662952650829531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A156267.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A157483.P17221998707677221966

`record[A103391(A124941(n+1))]`
-/

namespace A157483.P17221998707677221966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A124941 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157483.P17221998707677221966

noncomputable section

/-- A157483: Numbers k such that k-1 and k+1 are divisible by exactly 3 primes, counted with multiplicity.

Offset 1, canonical program `A157483.P17221998707677221966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1678 terms. -/
def A157483 (n : ℕ) : ℤ :=
  A157483.P17221998707677221966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1678 terms. -/
def A157483.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A159353.P2127071173178032878

`ceil(A244149(n+1)/2)`
-/

namespace A159353.P2127071173178032878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A244149 (n + 1) : ℚ) / 2⌉

end

end A159353.P2127071173178032878

noncomputable section

/-- A159353: a(n) = the smallest positive integer such that a(n)*(2^n - 2) is a multiple of n.

Offset 1, canonical program `A159353.P2127071173178032878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159353 (n : ℕ) : ℤ :=
  A159353.P2127071173178032878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160145.P11156095965020808624

`A005408(n)-A160144(n)`
-/

namespace A160145.P11156095965020808624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A160144 n

end

end A160145.P11156095965020808624

noncomputable section

/-- A160145: a(n) = the odd number 2n+1 minus the numerator of (2n+1)/(2^(2n+1)-1).

Offset 0, canonical program `A160145.P11156095965020808624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160145 (n : ℕ) : ℤ :=
  A160145.P11156095965020808624.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160145.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A163372.P17685668751918627254

`A000203(∑{d}[A000203(n+1), A007431(#)])`
-/

namespace A163372.P17685668751918627254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d).toNat

end

end A163372.P17685668751918627254

noncomputable section

/-- A163372: a(n) = sigma(phi(sigma(n))).

Offset 1, canonical program `A163372.P17685668751918627254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5879 terms. -/
def A163372 (n : ℕ) : ℤ :=
  A163372.P17685668751918627254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5879 terms. -/
def A163372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163379.P15408117569321078889

`A010554(A325765(n)+1)`
-/

namespace A163379.P15408117569321078889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A325765 n + 1).toNat

end

end A163379.P15408117569321078889

noncomputable section

/-- A163379: a(n) = phi(phi(tau(n))).

Offset 1, canonical program `A163379.P15408117569321078889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163379 (n : ℕ) : ℤ :=
  A163379.P15408117569321078889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163379.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A166586.P14911084209555858703

`sqrt(∏{d}[n+1, (2-A014963(#))²])`
-/

namespace A166586.P14911084209555858703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ d ∈ Nat.divisors (f1 n), (2 - A014963 d) ^ 2 : ℤ) : ℝ)

end

end A166586.P14911084209555858703

noncomputable section

/-- A166586: Totally multiplicative sequence with a(p) = p - 2 for prime p.

Offset 1, canonical program `A166586.P14911084209555858703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166586 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166586.P14911084209555858703.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166589.P1055176826063543385

`∏{d}[n+1, A007432(A014963(#))]`
-/

namespace A166589.P1055176826063543385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A007432 (A014963 d).toNat

end

end A166589.P1055176826063543385

noncomputable section

/-- A166589: Totally multiplicative sequence with a(p) = p-3 for prime p.

Offset 1, canonical program `A166589.P1055176826063543385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166589 (n : ℕ) : ℤ :=
  A166589.P1055176826063543385.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166651.P5914257921824398036

`∏{d}[n+1, 2*A014963(#)-1]`
-/

namespace A166651.P5914257921824398036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (2 * A014963 d - 1)

end

end A166651.P5914257921824398036

noncomputable section

/-- A166651: Totally multiplicative sequence with a(p) = 2p-1 for prime p.

Offset 1, canonical program `A166651.P5914257921824398036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166651 (n : ℕ) : ℤ :=
  A166651.P5914257921824398036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166669.P4669415747542630696

`∏{d}[n+1, 3*A014963(#)-2]`
-/

namespace A166669.P4669415747542630696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (3 * A014963 d - 2)

end

end A166669.P4669415747542630696

noncomputable section

/-- A166669: Totally multiplicative sequence with a(p) = 3p-2 for prime p.

Offset 1, canonical program `A166669.P4669415747542630696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166669 (n : ℕ) : ℤ :=
  A166669.P4669415747542630696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167338.P17492942069736666981

`(n+1)*∏{d}[n+1, A000203(A014963(#))]`
-/

namespace A167338.P17492942069736666981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ d ∈ Nat.divisors (f1 n), A000203 (A014963 d).toNat)

end

end A167338.P17492942069736666981

noncomputable section

/-- A167338: Totally multiplicative sequence with a(p) = p*(p+1) = p^2+p for prime p.

Offset 1, canonical program `A167338.P17492942069736666981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167338 (n : ℕ) : ℤ :=
  A167338.P17492942069736666981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167346.P10741638315407292075

`∏{d}[n+1, A341772(A014963(#))]`
-/

namespace A167346.P10741638315407292075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A341772 (A014963 d).toNat

end

end A167346.P10741638315407292075

noncomputable section

/-- A167346: Totally multiplicative sequence with a(p) = (p-1)*(p+2) = p^2+p-2 for prime p.

Offset 1, canonical program `A167346.P10741638315407292075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167346 (n : ℕ) : ℤ :=
  A167346.P10741638315407292075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171567.P6146138832837628714

`A033184(n+1)*A097807(n)`
-/

namespace A171567.P6146138832837628714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (n + 1) * A097807 n

end

end A171567.P6146138832837628714

noncomputable section

/-- A171567: Riordan array (f(x), x*f(x)) where f(x) is the g.f. of A168491.

Offset 0, canonical program `A171567.P6146138832837628714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171567 (n : ℕ) : ℤ :=
  A171567.P6146138832837628714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173664.P13143587521739781158

`∩[A014091(n+1), A100959(n+1)]`
-/

namespace A173664.P13143587521739781158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173664.P13143587521739781158

noncomputable section

/-- A173664: Sums of 2 primes that are not product of 2 primes.

Offset 1, canonical program `A173664.P13143587521739781158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6913 terms. -/
def A173664 (n : ℕ) : ℤ :=
  (A173664.P13143587521739781158.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6913 terms. -/
def A173664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173672.P11116447172890435173

`∩[A030173(n+1), A100959(n+1)]`
-/

namespace A173672.P11116447172890435173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173672.P11116447172890435173

noncomputable section

/-- A173672: Positive differences between any two primes without the differences that are semiprimes.

Offset 1, canonical program `A173672.P11116447172890435173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6918 terms. -/
def A173672 (n : ℕ) : ℤ :=
  (A173672.P11116447172890435173.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6918 terms. -/
def A173672.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174936.P12299057279148383531

`∑{d}[n+1, A174940(#)*A175317((n+1)/#)]`
-/

namespace A174936.P12299057279148383531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174940 d * A175317 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174936.P12299057279148383531

noncomputable section

/-- A174936: a(n) = Sum_{d|n} A007955(d) * A007955(n/d), where A007955(m) = product of divisors of m.

Offset 1, canonical program `A174936.P12299057279148383531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A174936 (n : ℕ) : ℤ :=
  A174936.P12299057279148383531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A174936.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A175463.P6343770137382140270

`(A175461(n+1)-5)/8`
-/

namespace A175463.P6343770137382140270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175461 (n + 1) - 5 : ℚ) / 8

end

end A175463.P6343770137382140270

noncomputable section

/-- A175463: Numbers k such that 8*k + 5 is semiprime.

Offset 1, canonical program `A175463.P6343770137382140270`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175461, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175463 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A175463.P6343770137382140270.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175461, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175463.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175594.P11317406959744859583

`eq[0, A211487(C(2, n)+n)]`
-/

namespace A175594.P11317406959744859583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (Nat.choose 2 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175594.P11317406959744859583

noncomputable section

/-- A175594: Numbers having no primitive root.

Offset 1, canonical program `A175594.P11317406959744859583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175594 (n : ℕ) : ℤ :=
  (A175594.P11317406959744859583.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176363.P9230070974181017387

`A100959(A100959(n+1))`
-/

namespace A176363.P9230070974181017387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (A100959 (n + 1)).toNat

end

end A176363.P9230070974181017387

noncomputable section

/-- A176363: Non-semiprime numbers of order 2.

Offset 1, canonical program `A176363.P9230070974181017387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7375 terms. -/
def A176363 (n : ℕ) : ℤ :=
  A176363.P9230070974181017387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7375 terms. -/
def A176363.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A179877.P9000556435574099518

`(3*A179882(n+1)-1)/2`
-/

namespace A179877.P9000556435574099518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A179882 (n + 1) - 1 : ℚ) / 2

end

end A179877.P9000556435574099518

noncomputable section

/-- A179877: Numbers h such that h and h+1 have same contraharmonic mean of the numbers k < h such that gcd(k, h) = 1 and simultaneously this mean is an integer (see A179882).

Offset 1, canonical program `A179877.P9000556435574099518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179882, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179877 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A179877.P9000556435574099518.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179882, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179890.P13166276167187252580

`round(2*A179887(n+1)/3)`
-/

namespace A179890.P13166276167187252580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * A179887 (n + 1) : ℚ) / 3)

end

end A179890.P13166276167187252580

noncomputable section

/-- A179890: Values of antiharmonic mean B(q) of the numbers k < q such that gcd(k, q) = 1 is an integer for nonprimes q from A179887, where B(q) = A053818(q) / A023896(q) = A175505(q) / A175506(q).

Offset 1, canonical program `A179890.P13166276167187252580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179890 (n : ℕ) : ℤ :=
  A179890.P13166276167187252580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179890.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A181100.P15153595878229059817

`record[(n+1)%A014963(A028260(n+1)+1)]`
-/

namespace A181100.P15153595878229059817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014963 (A028260 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181100.P15153595878229059817

noncomputable section

/-- A181100: Numbers k such that A028260(k) + 1 is prime.

Offset 1, canonical program `A181100.P15153595878229059817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 605 terms. -/
def A181100 (n : ℕ) : ℤ :=
  A181100.P15153595878229059817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 605 terms. -/
def A181100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181796.P9748470667734305671

`∑{d}[n+1, A351564(#)]`
-/

namespace A181796.P9748470667734305671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351564 d

end

end A181796.P9748470667734305671

noncomputable section

/-- A181796: a(n) = number of divisors of n whose canonical prime factorizations contain no repeated positive exponents (cf. A130091).

Offset 1, canonical program `A181796.P9748470667734305671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181796 (n : ℕ) : ℤ :=
  A181796.P9748470667734305671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181796.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A183295.P13174156566864909733

`A183217(n+1)-1`
-/

namespace A183295.P13174156566864909733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183217 (n + 1) - 1

end

end A183295.P13174156566864909733

noncomputable section

/-- A183295: Complement of A115067.

Offset 1, canonical program `A183295.P13174156566864909733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183295 (n : ℕ) : ℤ :=
  A183295.P13174156566864909733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184007.P6942563530479342197

`floor(A184655(2*(n+1))/2)`
-/

namespace A184007.P6942563530479342197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184655 (2 * (n + 1)) : ℚ) / 2⌋

end

end A184007.P6942563530479342197

noncomputable section

/-- A184007: floor(n*s+h-h*s), where s=(3+sqrt(3))/2, h=-1/3. Complement of A184006.

Offset 1, canonical program `A184007.P6942563530479342197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184007 (n : ℕ) : ℤ :=
  A184007.P6942563530479342197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184007.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A184806.P15414560286594020557

`record[(n+2)%A014963(A108598(n+2))]`
-/

namespace A184806.P15414560286594020557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A014963 (A108598 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184806.P15414560286594020557

noncomputable section

/-- A184806: Numbers k such that floor(k*s) is prime, where s = (5 + sqrt(5))/4.

Offset 1, canonical program `A184806.P15414560286594020557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 678 terms. -/
def A184806 (n : ℕ) : ℤ :=
  A184806.P15414560286594020557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 678 terms. -/
def A184806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186344.P1154538610229371672

`comp[A186345(n+1)-1]+1`
-/

namespace A186344.P1154538610229371672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186345 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186344.P1154538610229371672

noncomputable section

/-- A186344: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the octagonal numbers. Complement of A186345.

Offset 1, canonical program `A186344.P1154538610229371672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186344 (n : ℕ) : ℤ :=
  (A186344.P1154538610229371672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186344.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189022.P14953887359045575583

`∑{d}[n+1, A307445(#)*A365348((n+1)/#)]`
-/

namespace A189022.P14953887359045575583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307445 d * A365348 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A189022.P14953887359045575583

noncomputable section

/-- A189022: Apostol's third-order Möbius function mu_3(n).

Offset 1, canonical program `A189022.P14953887359045575583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189022 (n : ℕ) : ℤ :=
  A189022.P14953887359045575583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189022.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A192066.P7006570664675293436

`A107749((n+1)/and(n+1, -(n+1)))`
-/

namespace A192066.P7006570664675293436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107749 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A192066.P7006570664675293436

noncomputable section

/-- A192066: Sum of the odd unitary divisors of n.

Offset 1, canonical program `A192066.P7006570664675293436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192066 (n : ℕ) : ℤ :=
  A192066.P7006570664675293436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193388.P4473864990657091494

`A062402(n+1)-A193454(n+1)`
-/

namespace A193388.P4473864990657091494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) - A193454 (n + 1)

end

end A193388.P4473864990657091494

noncomputable section

/-- A193388: Sum of even divisors of phi(n).

Offset 1, canonical program `A193388.P4473864990657091494`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, A193454, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193388 (n : ℕ) : ℤ :=
  A193388.P4473864990657091494.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, A193454, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193388.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A201058.P9984270356643551809

`A001700(n)/A333461(n+1)`
-/

namespace A201058.P9984270356643551809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001700 n : ℚ) / (A333461 (n + 1) : ℚ)

end

end A201058.P9984270356643551809

noncomputable section

/-- A201058: Numerator of binomial(2n,n)/(2n).

Offset 1, canonical program `A201058.P9984270356643551809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A201058 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A201058.P9984270356643551809.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A201058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201059.P10578964195091307277

`(n+1)/A333461(n+1)`
-/

namespace A201059.P10578964195091307277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A333461 (n + 1) : ℚ)

end

end A201059.P10578964195091307277

noncomputable section

/-- A201059: Denominator of binomial(2n,n)/(2n).

Offset 1, canonical program `A201059.P10578964195091307277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201059 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A201059.P10578964195091307277.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201156.P12740422447403239301

`a(n-1)*A014963(A057723(n+1))+1` with `a(0)=1`
-/

namespace A201156.P12740422447403239301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014963 (A057723 (n + 1)).toNat + 1

end

end A201156.P12740422447403239301

noncomputable section

/-- A201156: Row sums of triangle A201146.

Offset 1, canonical program `A201156.P12740422447403239301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A201156 (n : ℕ) : ℤ :=
  A201156.P12740422447403239301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A201156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204386.P12533597244492937321

`∑{d}[n+1, A133657(#)*A208895((n+1)/#)]`
-/

namespace A204386.P12533597244492937321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133657 d * A208895 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A204386.P12533597244492937321

noncomputable section

/-- A204386: Expansion of (theta_2(q)^8 + 4 * theta_2(q^2)^8) / 256 in powers of q^2.

Offset 1, canonical program `A204386.P12533597244492937321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204386 (n : ℕ) : ℤ :=
  A204386.P12533597244492937321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204386.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A211272.P4633808634347613999

`abs(Δ[A220400(2*n)])`
-/

namespace A211272.P4633808634347613999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A211272.P4633808634347613999

noncomputable section

/-- A211272: Number of integer pairs (x,y) such that 0

Offset 1, canonical program `A211272.P4633808634347613999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5555 terms. -/
def A211272 (n : ℕ) : ℤ :=
  A211272.P4633808634347613999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5555 terms. -/
def A211272.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A216654.P16517647315989909134

`Δ[A130084(n+1)-A014963(A263827(n+1))]`
-/

namespace A216654.P16517647315989909134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130084 (n + 1) - A014963 (A263827 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216654.P16517647315989909134

noncomputable section

/-- A216654: Number of n-digit 10th powers.

Offset 1, canonical program `A216654.P16517647315989909134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216654 (n : ℕ) : ℤ :=
  A216654.P16517647315989909134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219029.P2789950166791163468

`n-A010554(n+1)`
-/

namespace A219029.P2789950166791163468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A010554 (n + 1)

end

end A219029.P2789950166791163468

noncomputable section

/-- A219029: a(n) = n - 1 - phi(phi(n)).

Offset 1, canonical program `A219029.P2789950166791163468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219029 (n : ℕ) : ℤ :=
  A219029.P2789950166791163468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219029.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A221837.P10112316691659458481

`A046079(n+1)²`
-/

namespace A221837.P10112316691659458481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) ^ 2

end

end A221837.P10112316691659458481

noncomputable section

/-- A221837: Number of integer Heron triangles of height n such that the angles adjacent to the base are not right.

Offset 1, canonical program `A221837.P10112316691659458481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A221837 (n : ℕ) : ℤ :=
  A221837.P10112316691659458481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A221837.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A230115.P13912366860125270296

`∩[A074775(n+1), A162318(n+1)]`
-/

namespace A230115.P13912366860125270296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230115.P13912366860125270296

noncomputable section

/-- A230115: Numbers n such that tau(n+1) - tau(n) = 2; where tau(n) = the number of divisors of n (A000005).

Offset 1, canonical program `A230115.P13912366860125270296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1054 terms. -/
def A230115 (n : ℕ) : ℤ :=
  (A230115.P13912366860125270296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1054 terms. -/
def A230115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233561.P1574147990378069799

`filter[A053177(n+1), A340370(#)]`
-/

namespace A233561.P1574147990378069799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A233561.P1574147990378069799

noncomputable section

/-- A233561: Products p*q of distinct primes such that (p*q - 1)/2 is prime.

Offset 1, canonical program `A233561.P1574147990378069799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A233561 (n : ℕ) : ℤ :=
  A233561.P1574147990378069799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A233561.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A235991.P13557001372397782092

`lt[A359792(n+1), 0]+1`
-/

namespace A235991.P13557001372397782092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359792 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A235991.P13557001372397782092

noncomputable section

/-- A235991: Numbers with an odd arithmetic derivative, cf. A003415.

Offset 1, canonical program `A235991.P13557001372397782092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235991 (n : ℕ) : ℤ :=
  (A235991.P13557001372397782092.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235991.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A241534.P3870875932930930674

`∑{d}[n+1, A046079(#)]`
-/

namespace A241534.P3870875932930930674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046079 d

end

end A241534.P3870875932930930674

noncomputable section

/-- A241534: Number of integer arithmetic means of 2 distinct divisors of n.

Offset 1, canonical program `A241534.P3870875932930930674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241534 (n : ℕ) : ℤ :=
  A241534.P3870875932930930674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241534.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A253141.P10085401691948202842

`A014963(A100995(n+1)+1)`
-/

namespace A253141.P10085401691948202842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A100995 (n + 1) + 1).toNat

end

end A253141.P10085401691948202842

noncomputable section

/-- A253141: If n is a prime power, then a(n) = lambda(tau(n)) = A014963(A000005(n)); otherwise, a(n) = 1.

Offset 1, canonical program `A253141.P10085401691948202842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253141 (n : ℕ) : ℤ :=
  A253141.P10085401691948202842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253141.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A254948.P14189672227231438604

`∑[char[lt[A014963(n+2), 12]]]`
-/

namespace A254948.P14189672227231438604
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254948.P14189672227231438604

noncomputable section

/-- A254948: Number of length 1 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5, 7 or 11.

Offset 1, canonical program `A254948.P14189672227231438604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A254948 (n : ℕ) : ℤ :=
  (A254948.P14189672227231438604.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A254948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256152.P5956490634084316170

`filter[A063937(n+3), A354927(#)]`
-/

namespace A256152.P5956490634084316170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063937 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A256152.P5956490634084316170

noncomputable section

/-- A256152: Numbers k such that k is the product of two distinct primes and sigma(k) is a square number.

Offset 1, canonical program `A256152.P5956490634084316170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A256152 (n : ℕ) : ℤ :=
  A256152.P5956490634084316170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A256152.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A258746.P2299638018967577583

`xor(n+1, A292600(A092323(n+1)))`
-/

namespace A258746.P2299638018967577583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A292600 (A092323 (n + 1)).toNat)

end

end A258746.P2299638018967577583

noncomputable section

/-- A258746: Permutation of the positive integers: this permutation transforms the enumeration system of positive irreducible fractions A007305/A047679 (Stern-Brocot) into the enumeration system A162909/A162910 (Bird), and vice versa.

Offset 1, canonical program `A258746.P2299638018967577583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258746 (n : ℕ) : ℤ :=
  A258746.P2299638018967577583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258746.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A262401.P16396674940563330838

`∏{d}[n+1, A054055(A014963(#))]`
-/

namespace A262401.P16396674940563330838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A054055 (A014963 d).toNat

end

end A262401.P16396674940563330838

noncomputable section

/-- A262401: In prime factorization of n: replace each factor with its largest decimal digit.

Offset 1, canonical program `A262401.P16396674940563330838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262401 (n : ℕ) : ℤ :=
  A262401.P16396674940563330838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262717.P11064767684716280499

`A174687(n)%A264772(A000124(n))`
-/

namespace A262717.P11064767684716280499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174687 n) (A264772 (A000124 n).toNat)

end

end A262717.P11064767684716280499

noncomputable section

/-- A262717: a(n) = (n-1)*binomial(3*n-2,n)/(2*n-1) + (n+1)*binomial(3*n,n)/(2*n+1) - binomial(3*n-1,n).

Offset 0, canonical program `A262717.P11064767684716280499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A262717 (n : ℕ) : ℤ :=
  A262717.P11064767684716280499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A262717.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A116543.P12066350740739985589

`A213911(∑[A284749(n+2)]-1)`
-/

namespace A116543.P12066350740739985589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A116543.P12066350740739985589

noncomputable section

/-- A116543: Number of terms in greedy representation of n in terms of the Lucas numbers.

Offset 0, canonical program `A116543.P12066350740739985589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8542 terms. -/
def A116543 (n : ℕ) : ℤ :=
  A116543.P12066350740739985589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8542 terms. -/
def A116543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117815.P4799667150114690771

`filter[A118950(n+1), A005171(#)]`
-/

namespace A117815.P4799667150114690771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A117815.P4799667150114690771

noncomputable section

/-- A117815: Composite numbers at least one of whose decimal digits is prime.

Offset 1, canonical program `A117815.P4799667150114690771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8762 terms. -/
def A117815 (n : ℕ) : ℤ :=
  A117815.P4799667150114690771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8762 terms. -/
def A117815.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A175898.P12255312540225984827

`∪[A181342(n+1), A181343(n+1)]`
-/

namespace A175898.P12255312540225984827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175898.P12255312540225984827

noncomputable section

/-- A175898: Expansion of (1+3*x+9*x^2+9*x^3+9*x^4+3*x^5+x^6) /( (1+x)^2 * (1-x)^5 ).

Offset 0, canonical program `A175898.P12255312540225984827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175898 (n : ℕ) : ℤ :=
  (A175898.P12255312540225984827.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175898.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A211991.P11812287087173023464

`A344584(n+1)-A319683(n+1)`
-/

namespace A211991.P11812287087173023464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344584 (n + 1) - A319683 (n + 1)

end

end A211991.P11812287087173023464

noncomputable section

/-- A211991: Difference between the arithmetic derivative of n and the sum of proper divisors of n.

Offset 1, canonical program `A211991.P11812287087173023464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211991 (n : ℕ) : ℤ :=
  A211991.P11812287087173023464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211991.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A229153.P12908825937958678714

`∪[A119899(n+1), A285800(n+1)]`
-/

namespace A229153.P12908825937958678714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229153.P12908825937958678714

noncomputable section

/-- A229153: Numbers of the form c * m^2, where m > 0 and c is composite and squarefree.

Offset 1, canonical program `A229153.P12908825937958678714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229153 (n : ℕ) : ℤ :=
  (A229153.P12908825937958678714.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229153.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A245379.P6502977345616114839

`filter[A007774(n+1), A336040(#)]`
-/

namespace A245379.P6502977345616114839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A245379.P6502977345616114839

noncomputable section

/-- A245379: Refactorable numbers with exactly two distinct prime divisors.

Offset 1, canonical program `A245379.P6502977345616114839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 556 terms. -/
def A245379 (n : ℕ) : ℤ :=
  A245379.P6502977345616114839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 556 terms. -/
def A245379.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131343.P2090840239221504479

`A112310(A188015(n+1))-1`
-/

namespace A131343.P2090840239221504479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (A188015 (n + 1)).toNat - 1

end

end A131343.P2090840239221504479

noncomputable section

/-- A131343: Number of 1's in maximal Lucas representation (A130311) of n.

Offset 0, canonical program `A131343.P2090840239221504479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A131343 (n : ℕ) : ℤ :=
  A131343.P2090840239221504479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A131343.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A245838.P16336548416415351114

`∑{d}[3*n+4, A300251(#)]`
-/

namespace A245838.P16336548416415351114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d

end

end A245838.P16336548416415351114

noncomputable section

/-- A245838: Arithmetic derivative of (3*n + 1), n >= 1, (A016777)'.

Offset 1, canonical program `A245838.P16336548416415351114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245838 (n : ℕ) : ℤ :=
  A245838.P16336548416415351114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245838.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A120632.P7481929309965890366

`A065897(n+1)+1+n`
-/

namespace A120632.P7481929309965890366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1) + 1 + (n : ℤ)

end

end A120632.P7481929309965890366

noncomputable section

/-- A120632: Number of numbers >1 up to 2*prime(n) which are divisible by primes up to prime(n).

Offset 1, canonical program `A120632.P7481929309965890366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120632 (n : ℕ) : ℤ :=
  A120632.P7481929309965890366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123884.P10243261106257034172

`A093829(12*n+1)`
-/

namespace A123884.P10243261106257034172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (12 * n + 1)

end

end A123884.P10243261106257034172

noncomputable section

/-- A123884: Expansion of phi(x) * phi(-x^6) / chi(-x^2) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A123884.P10243261106257034172`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123884 (n : ℕ) : ℤ :=
  A123884.P10243261106257034172.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123884.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A152455.P5904217643679634782

`xor(A063524(n), A080737(n+1))`
-/

namespace A152455.P5904217643679634782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A080737 (n + 1))

end

end A152455.P5904217643679634782

noncomputable section

/-- A152455: a(n) = minimal integer m such that there exists an m X m integer matrix of order n.

Offset 1, canonical program `A152455.P5904217643679634782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152455 (n : ℕ) : ℤ :=
  A152455.P5904217643679634782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152455.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A158301.P14699896372540319621

`A158207(n)/A000034(A289207(n))`
-/

namespace A158301.P14699896372540319621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158207 n : ℚ) / (A000034 (A289207 n).toNat : ℚ)

end

end A158301.P14699896372540319621

noncomputable section

/-- A158301: Denominator of Bernoulli(n, -5/6).

Offset 0, canonical program `A158301.P14699896372540319621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A158301 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A158301.P14699896372540319621.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A158301.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A162630.P7067745107647930616

`2*A130517(n+1)`
-/

namespace A162630.P7067745107647930616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130517 (n + 1)

end

end A162630.P7067745107647930616

noncomputable section

/-- A162630: Triangle read by rows in which row n lists the number of states of the subshells of the n-th shell of the nuclear shell model ordered by energy level in increasing order.

Offset 1, canonical program `A162630.P7067745107647930616`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130517, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162630 (n : ℕ) : ℤ :=
  A162630.P7067745107647930616.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130517, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162630.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A162888.P12511542881006591627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064455, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162888 (n : ℕ) : ℤ :=
  A162888.P12511542881006591627.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064455, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162888.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A163468.P8406828026260451703

`2+A065897(n+1)`
-/

namespace A163468.P8406828026260451703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A065897 (n + 1)

end

end A163468.P8406828026260451703

noncomputable section

/-- A163468: Indices k such that half of the k-th nonprime nonnegative integer is prime.

Offset 1, canonical program `A163468.P8406828026260451703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163468 (n : ℕ) : ℤ :=
  A163468.P8406828026260451703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163468.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A169611.P2401651306699804100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169611 (n : ℕ) : ℤ :=
  A169611.P2401651306699804100.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169611.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A173743.P4929656854599200138

`eq[A034444(n+1), A163109(n+1)]+1`
-/

namespace A173743.P4929656854599200138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173743.P4929656854599200138

noncomputable section

/-- A173743: Numbers k such that phi(tau(k)) = tau(rad(k)).

Offset 1, canonical program `A173743.P4929656854599200138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A173743 (n : ℕ) : ℤ :=
  (A173743.P4929656854599200138.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A173743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173964.P6886595113697766438

`A056558(n)+A056559(n)+1`
-/

namespace A173964.P6886595113697766438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n + (A056559 n + 1)

end

end A173964.P6886595113697766438

noncomputable section

/-- A173964: Sequence derived from a memorization technique.

Offset 1, canonical program `A173964.P6886595113697766438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173964 (n : ℕ) : ℤ :=
  A173964.P6886595113697766438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173964.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A177997.P12061995829486224257

`p?[A065897(n+1)]`
-/

namespace A177997.P12061995829486224257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177997.P12061995829486224257

noncomputable section

/-- A177997: p and A002808(p)/2 are both prime.

Offset 1, canonical program `A177997.P12061995829486224257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A177997 (n : ℕ) : ℤ :=
  A177997.P12061995829486224257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A177997.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190302.P5371606837595398249

`(4*A187285(n+1))%A004767(n)`
-/

namespace A190302.P5371606837595398249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A187285 (n + 1)) (A004767 n)

end

end A190302.P5371606837595398249

noncomputable section

/-- A190302: Smallest number h such that the decimal expansion of n*h starts with 1.

Offset 1, canonical program `A190302.P5371606837595398249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190302 (n : ℕ) : ℤ :=
  A190302.P5371606837595398249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195064.P1281476350292998118

`∪[A035928(n+1), A195063(n+1)]`
-/

namespace A195064.P1281476350292998118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195064.P1281476350292998118

noncomputable section

/-- A195064: Numbers n such that BCR(n) is not greater than n, where BCR = binary-complement-and-reverse = A036044.

Offset 1, canonical program `A195064.P1281476350292998118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195064 (n : ℕ) : ℤ :=
  (A195064.P1281476350292998118.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195064.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A209355.P10385269046573957715

`char[A056560(n)+2*n+1]`
-/

namespace A209355.P10385269046573957715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056560 n + (2 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A209355.P10385269046573957715

noncomputable section

/-- A209355: Sequence with each term appearing in runs of every length infinitely often.

Offset 1, canonical program `A209355.P10385269046573957715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209355 (n : ℕ) : ℤ :=
  (A209355.P10385269046573957715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209355.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A218147.P2989802918495991465

`A079458(n+3)/4`
-/

namespace A218147.P2989802918495991465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (n + 3) : ℚ) / 4

end

end A218147.P2989802918495991465

noncomputable section

/-- A218147: Degree of minimal polynomial satisfied by exp(8*Pi*phi_2(1/n,1/n)), where phi_2 is defined in the Comments.

Offset 3, canonical program `A218147.P2989802918495991465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A218147 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A218147.P2989802918495991465.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A218147.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A224212.P18102868260642251365

`A000196(n)+A014200(n)+1`
-/

namespace A224212.P18102868260642251365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n + (A014200 n + 1)

end

end A224212.P18102868260642251365

noncomputable section

/-- A224212: Number of nonnegative solutions to x^2 + y^2 <= n.

Offset 0, canonical program `A224212.P18102868260642251365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224212 (n : ℕ) : ℤ :=
  A224212.P18102868260642251365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226944.P7176451047241022902

`record[A000977(n+1)%A069359(A000977(n+1))]`
-/

namespace A226944.P7176451047241022902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000977 (n + 1)) (A069359 (A000977 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226944.P7176451047241022902

noncomputable section

/-- A226944: Numbers k such that 1/k + Sum_{p|k} 1/p > 1.

Offset 1, canonical program `A226944.P7176451047241022902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 684 terms. -/
def A226944 (n : ℕ) : ℤ :=
  A226944.P7176451047241022902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 684 terms. -/
def A226944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237526.P3622557248388023722

`A014200(n)-floor(sqrt(n))`
-/

namespace A237526.P3622557248388023722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 n - (Nat.sqrt n : ℤ)

end

end A237526.P3622557248388023722

noncomputable section

/-- A237526: a(n) = number of unit squares in the first quadrant of a disk of radius sqrt(n) centered at the origin of a square lattice.

Offset 0, canonical program `A237526.P3622557248388023722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237526 (n : ℕ) : ℤ :=
  A237526.P3622557248388023722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239611.P7840883180630474585

`A079458(n+1)*A320111(n+1)*A000034(n)`
-/

namespace A239611.P7840883180630474585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079458 (n + 1) * A320111 (n + 1) * A000034 n

end

end A239611.P7840883180630474585

noncomputable section

/-- A239611: a(n) = Sum_{0 < x,y <= n and gcd(x^2 + y^2, n)=1} gcd(x^2 + y^2 - 1, n).

Offset 1, canonical program `A239611.P7840883180630474585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2101 terms. -/
def A239611 (n : ℕ) : ℤ :=
  A239611.P7840883180630474585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2101 terms. -/
def A239611.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A246514.P17080311736656765169

`A065897(n+1)-A014689(n+1)`
-/

namespace A246514.P17080311736656765169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1) - A014689 (n + 1)

end

end A246514.P17080311736656765169

noncomputable section

/-- A246514: Number of composite numbers between prime(n) and 2*prime(n) exclusive.

Offset 1, canonical program `A246514.P17080311736656765169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246514 (n : ℕ) : ℤ :=
  A246514.P17080311736656765169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246655.P17244467699733575268

`ceil(sqrt(A060615(n)))`
-/

namespace A246655.P17244467699733575268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A060615 n : ℝ)⌉

end

end A246655.P17244467699733575268

noncomputable section

/-- A246655: Prime powers: numbers of the form p^k where p is a prime and k >= 1.

Offset 1, canonical program `A246655.P17244467699733575268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246655 (n : ℕ) : ℤ :=
  A246655.P17244467699733575268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256465.P12543537309397973393

`A105673(n+1)+A057655(n)`
-/

namespace A256465.P12543537309397973393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1) + A057655 n

end

end A256465.P12543537309397973393

noncomputable section

/-- A256465: Number of points in a circle of squared radius n, points on the circle counted half.

Offset 1, canonical program `A256465.P12543537309397973393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256465 (n : ℕ) : ℤ :=
  A256465.P12543537309397973393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256465.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A257991.P9003885035180655311

`∑{d}[n+1, and(1, A000720(A014963(#)))]`
-/

namespace A257991.P9003885035180655311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A000720 (A014963 d).toNat)

end

end A257991.P9003885035180655311

noncomputable section

/-- A257991: Number of odd parts in the partition having Heinz number n.

Offset 1, canonical program `A257991.P9003885035180655311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257991 (n : ℕ) : ℤ :=
  A257991.P9003885035180655311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115769.P11448971923657511458

`A007088(A115768(n+1))`
-/

namespace A115769.P11448971923657511458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115768 (n + 1)).toNat

end

end A115769.P11448971923657511458

noncomputable section

/-- A115769: Sequence A115768 in binary.

Offset 1, canonical program `A115769.P11448971923657511458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A115769 (n : ℕ) : ℤ :=
  A115769.P11448971923657511458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A115769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116609.P6896333812402001239

`(13^A051953(n+1))%(n+1)`
-/

namespace A116609.P6896333812402001239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((13 : ℚ) ^ (A051953 (n + 1) : ℤ))) (n + 1 : ℤ)

end

end A116609.P6896333812402001239

noncomputable section

/-- A116609: a(n) = 13^n mod n.

Offset 1, canonical program `A116609.P6896333812402001239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A116609 (n : ℕ) : ℤ :=
  A116609.P6896333812402001239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A116609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117285.P12871270459971671114

`eq[1, A255849(A051953(n+1))]+1`
-/

namespace A117285.P12871270459971671114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255849 (A051953 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117285.P12871270459971671114

noncomputable section

/-- A117285: Numbers k for which the cototient k-phi(k) is a pentagonal number.

Offset 1, canonical program `A117285.P12871270459971671114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1350 terms. -/
def A117285 (n : ℕ) : ℤ :=
  (A117285.P12871270459971671114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1350 terms. -/
def A117285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117968.P13461600208668365295

`∑[Δ[A117967(n)]+1]`
-/

namespace A117968.P13461600208668365295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117968.P13461600208668365295

noncomputable section

/-- A117968: Negative part of inverse of A117966; write -n in balanced ternary and then replace (-1)'s with 2's.

Offset 1, canonical program `A117968.P13461600208668365295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A117968 (n : ℕ) : ℤ :=
  A117968.P13461600208668365295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A117968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120736.P12991699903577371064

`eq[A000005(n+1), A306671(n+1)]+1`
-/

namespace A120736.P12991699903577371064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A120736.P12991699903577371064

noncomputable section

/-- A120736: Numbers k such that every prime p that divides d(k) (A000005) also divides k.

Offset 1, canonical program `A120736.P12991699903577371064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5770 terms. -/
def A120736 (n : ℕ) : ℤ :=
  (A120736.P12991699903577371064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5770 terms. -/
def A120736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123323.P8887875192151149646

`A007438(n+1)-A346758(n+1)`
-/

namespace A123323.P8887875192151149646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (n + 1) - A346758 (n + 1)

end

end A123323.P8887875192151149646

noncomputable section

/-- A123323: Number of integer-sided triangles with maximum side n, with sides relatively prime.

Offset 1, canonical program `A123323.P8887875192151149646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123323 (n : ℕ) : ℤ :=
  A123323.P8887875192151149646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123390.P7142873009816602707

`∑[A079559(n)]/A182105(n+1)`
-/

namespace A123390.P7142873009816602707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A182105 (n + 1) : ℚ)

end

end A123390.P7142873009816602707

noncomputable section

/-- A123390: Triangle read by rows: n-th row starts with n and continues with half the previous value as long as that is even.

Offset 1, canonical program `A123390.P7142873009816602707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123390 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123390.P7142873009816602707.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129438.P16505802994344033545

`A125096(A028310(n))`
-/

namespace A129438.P16505802994344033545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (A028310 n).toNat

end

end A129438.P16505802994344033545

noncomputable section

/-- A129438: Expansion of (phi(q) * phi(q^2) + phi(-q^2) * phi(q^4)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 0, canonical program `A129438.P16505802994344033545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129438 (n : ℕ) : ℤ :=
  A129438.P16505802994344033545.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129438.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A129628.P17919949017180811330`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129628 (n : ℕ) : ℤ :=
  A129628.P17919949017180811330.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129628.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A130331.P10517954522986165607

`∏{e}[A123240(n+1), #+1]`
-/

namespace A130331.P10517954522986165607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123240 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A130331.P10517954522986165607

noncomputable section

/-- A130331: Number of divisors of A123240(n).

Offset 1, canonical program `A130331.P10517954522986165607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130331 (n : ℕ) : ℤ :=
  (A130331.P10517954522986165607.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139587.P10239951385813778366

`∩[A123240(n+1), comp[A000045(n)]]`
-/

namespace A139587.P10239951385813778366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123240 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A139587.P10239951385813778366

noncomputable section

/-- A139587: Non-Fibonacci numbers with non-Fibonacci number of divisors.

Offset 1, canonical program `A139587.P10239951385813778366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A139587 (n : ℕ) : ℤ :=
  (A139587.P10239951385813778366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A139587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139709.P10417153833088246719

`A007088(A139708(n+1))`
-/

namespace A139709.P10417153833088246719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A139708 (n + 1)).toNat

end

end A139709.P10417153833088246719

noncomputable section

/-- A139709: Take n in binary. Rotate the binary digits to the left until a 1 once again appears as the leftmost digit. a(n) is result written in binary.

Offset 1, canonical program `A139709.P10417153833088246719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139709 (n : ℕ) : ℤ :=
  A139709.P10417153833088246719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139791.P5658122934383190521

`ceil((A015919(n+3)-sqrt(2))/2)`
-/

namespace A139791.P5658122934383190521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A015919 (n + 3) : ℝ) - Real.sqrt (2 : ℝ)) / 2⌉

end

end A139791.P5658122934383190521

noncomputable section

/-- A139791: Numbers n for which 2n is a multiple of A002326(n), the multiplicative order of 2 mod 2n+1.

Offset 1, canonical program `A139791.P5658122934383190521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139791 (n : ℕ) : ℤ :=
  A139791.P5658122934383190521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139791.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140265.P2651797346376082820

`A117967(A110654(n))+A142150(n)+1`
-/

namespace A140265.P2651797346376082820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (A110654 n).toNat + (A142150 n + 1)

end

end A140265.P2651797346376082820

noncomputable section

/-- A140265: Permutation of natural numbers: a(n) = A140263(n-1)+1.

Offset 1, canonical program `A140265.P2651797346376082820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A140265 (n : ℕ) : ℤ :=
  A140265.P2651797346376082820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A140265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140807.P3846438794985278792

`floor(A175297(n+2)/(A175298(n+1)-2))`
-/

namespace A140807.P3846438794985278792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175297 (n + 2) : ℚ) / (A175298 (n + 1) - 2 : ℚ)⌋

end

end A140807.P3846438794985278792

noncomputable section

/-- A140807: a(n) is the largest integer such that n^k is palindromic in binary for all nonnegative integers k that are <= a(n).

Offset 2, canonical program `A140807.P3846438794985278792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A140807 (n : ℕ) : ℤ :=
  A140807.P3846438794985278792.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A140807.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A153154.P7572810253408837238

`A003188(A341916(A341916(n)))`
-/

namespace A153154.P7572810253408837238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A341916 (A341916 n).toNat).toNat

end

end A153154.P7572810253408837238

noncomputable section

/-- A153154: Permutation of natural numbers: A059893-conjugate of A006068.

Offset 0, canonical program `A153154.P7572810253408837238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153154 (n : ℕ) : ℤ :=
  A153154.P7572810253408837238.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157672.P8195558982266382159

`∑[floor(A038024(n+2)/2)]`
-/

namespace A157672.P8195558982266382159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038024 (n + 2) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157672.P8195558982266382159

noncomputable section

/-- A157672: Number of unordered factorizations of n! into two distinct proper factors.

Offset 2, canonical program `A157672.P8195558982266382159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A157672 (n : ℕ) : ℤ :=
  A157672.P8195558982266382159.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A157672.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A161167.P8417611068697688135

`A001615(n+1)*A065958(n+1)*A065960(n+1)*A351303(n+1)`
-/

namespace A161167.P8417611068697688135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A065958 (n + 1) * A065960 (n + 1) * A351303 (n + 1)

end

end A161167.P8417611068697688135

noncomputable section

/-- A161167: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 17.

Offset 1, canonical program `A161167.P8417611068697688135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161167 (n : ℕ) : ℤ :=
  A161167.P8417611068697688135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163409.P2175835081042334788

`A008475(A163408(n+1))`
-/

namespace A163409.P2175835081042334788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A163408 (n + 1)).toNat

end

end A163409.P2175835081042334788

noncomputable section

/-- A163409: Subsequence of composite terms of A008475.

Offset 1, canonical program `A163409.P2175835081042334788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163409 (n : ℕ) : ℤ :=
  A163409.P2175835081042334788.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163838.P7117750658777831456

`A002808(n+1)*A144925(n+1)`
-/

namespace A163838.P7117750658777831456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) * A144925 (n + 1)

end

end A163838.P7117750658777831456

noncomputable section

/-- A163838: a(n) = (n-th composite) * (number of nontrivial divisors of n-th composite).

Offset 1, canonical program `A163838.P7117750658777831456`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A144925, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163838 (n : ℕ) : ℤ :=
  A163838.P7117750658777831456.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A144925, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165318.P3843113614457274030

`p?[A014963(2*A000005(n+1))+n]`
-/

namespace A165318.P3843113614457274030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A000005 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165318.P3843113614457274030

noncomputable section

/-- A165318: Primes p where the number of divisors of p-1 is a power of 2.

Offset 1, canonical program `A165318.P3843113614457274030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4833 terms. -/
def A165318 (n : ℕ) : ℤ :=
  A165318.P3843113614457274030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4833 terms. -/
def A165318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171665.P4832445183620559262

`∩[A005237(n+1), A357077(n+1)]`
-/

namespace A171665.P4832445183620559262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171665.P4832445183620559262

noncomputable section

/-- A171665: Numbers n such that n and n+1 have same number of divisors, and that number of divisors is larger than 4.

Offset 1, canonical program `A171665.P4832445183620559262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2065 terms. -/
def A171665 (n : ℕ) : ℤ :=
  (A171665.P4832445183620559262.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2065 terms. -/
def A171665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171815.P11809366983025997243

`p?[A171743(n+1)+1]-1`
-/

namespace A171815.P11809366983025997243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171743 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A171815.P11809366983025997243

noncomputable section

/-- A171815: Values of A171743 that are 1 less than a prime, listed in the order in which they appear.

Offset 1, canonical program `A171815.P11809366983025997243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2691 terms. -/
def A171815 (n : ℕ) : ℤ :=
  A171815.P11809366983025997243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2691 terms. -/
def A171815.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A176997.P9587439984867558596

`A015919(n+2)-C(2, n+2)`
-/

namespace A176997.P9587439984867558596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 2) - (Nat.choose 2 (n + 2) : ℤ)

end

end A176997.P9587439984867558596

noncomputable section

/-- A176997: Integers k such that 2^(k-1) == 1 (mod k).

Offset 1, canonical program `A176997.P9587439984867558596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176997 (n : ℕ) : ℤ :=
  A176997.P9587439984867558596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176997.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A181733.P2943246372235819364

`A139708(n+1)-A092323(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181733.P2943246372235819364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139708 (n + 1) - A092323 (n + 1)

end

end A181733.P2943246372235819364

noncomputable section

/-- A181733: a(n) = A139708(n) - A092323(n).

Offset 1, canonical program `A181733.P2943246372235819364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092323, A139708, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181733 (n : ℕ) : ℤ :=
  A181733.P2943246372235819364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092323, A139708, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181733.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A190276.P1290073502243581009

`(A066692(n+1)+1)/2`
-/

namespace A190276.P1290073502243581009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066692 (n + 1) + 1 : ℚ) / 2

end

end A190276.P1290073502243581009

noncomputable section

/-- A190276: Numbers k such that tau(2k-1) = tau(2k+1) where tau(k) = A000005(k).

Offset 1, canonical program `A190276.P1290073502243581009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190276 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A190276.P1290073502243581009.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190276.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192854.P480192498423683373

`eq[A183063(n+1)+A051951(n), A000007(n)]`
-/

namespace A192854.P480192498423683373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + A051951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192854.P480192498423683373

noncomputable section

/-- A192854: Places n where tau(n) + tau(n+2) = tau(2*n+2).

Offset 1, canonical program `A192854.P480192498423683373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 545 terms. -/
def A192854 (n : ℕ) : ℤ :=
  (A192854.P480192498423683373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 545 terms. -/
def A192854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194533.P12707079005043601207

`A065960(n+1)*A065958(n+1)`
-/

namespace A194533.P12707079005043601207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065960 (n + 1) * A065958 (n + 1)

end

end A194533.P12707079005043601207

noncomputable section

/-- A194533: Jordan function ratio J_8(n)/J_2(n).

Offset 1, canonical program `A194533.P12707079005043601207`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065958, A065960, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A194533 (n : ℕ) : ℤ :=
  A194533.P12707079005043601207.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065958, A065960, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A194533.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A200214.P8720410556555359477

`6*A122180(n+1)`
-/

namespace A200214.P8720410556555359477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A122180 (n + 1)

end

end A200214.P8720410556555359477

noncomputable section

/-- A200214: Ordered factorizations of n with 3 distinct parts, all > 1.

Offset 1, canonical program `A200214.P8720410556555359477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122180, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A200214 (n : ℕ) : ℤ :=
  A200214.P8720410556555359477.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122180, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A200214.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204617.P10318683178991972701

`A079458(n+1)/A062570(n+1)`
-/

namespace A204617.P10318683178991972701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (n + 1) : ℚ) / (A062570 (n + 1) : ℚ)

end

end A204617.P10318683178991972701

noncomputable section

/-- A204617: Multiplicative with a(p^e) = p^(e-1)*H(p). H(2) = 1, H(p) = p - 1 if p == 1 (mod 4) and H(p) = p + 1 if p == 3 (mod 4).

Offset 1, canonical program `A204617.P10318683178991972701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062570, A079458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A204617 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A204617.P10318683178991972701.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062570, A079458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A204617.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A213595.P4520766995941985594

`A048784(n+1)/A000079(A213594(n+1))`
-/

namespace A213595.P4520766995941985594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048784 (n + 1) : ℚ) / (A000079 (A213594 (n + 1)).toNat : ℚ)

end

end A213595.P4520766995941985594

noncomputable section

/-- A213595: a(n) = A048784(n) / 2^A213594(n).

Offset 1, canonical program `A213595.P4520766995941985594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1692 terms. -/
def A213595 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A213595.P4520766995941985594.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1692 terms. -/
def A213595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215173.P7644619850736860119

`∩[A335328(n+1), A348098(n+1)]`
-/

namespace A215173.P7644619850736860119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215173.P7644619850736860119

noncomputable section

/-- A215173: Numbers k such that k and k+1 are both of the form p*q^3 where p and q are distinct primes.

Offset 1, canonical program `A215173.P7644619850736860119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A215173 (n : ℕ) : ℤ :=
  (A215173.P7644619850736860119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A215173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216850.P14243807484774658923

`A034444(n+1)*A100371(n+1)`
-/

namespace A216850.P14243807484774658923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A100371 (n + 1)

end

end A216850.P14243807484774658923

noncomputable section

/-- A216850: Number of distinct infinite sets of primes congruent to a subset of 1..n mod n.

Offset 1, canonical program `A216850.P14243807484774658923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A216850 (n : ℕ) : ℤ :=
  A216850.P14243807484774658923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A216850.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A225756.P8807305609864975192

`∪[A005237(n+1), A083795(n+1)]`
-/

namespace A225756.P8807305609864975192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225756.P8807305609864975192

noncomputable section

/-- A225756: Runs of consecutive numbers with the same number of divisors.

Offset 1, canonical program `A225756.P8807305609864975192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A225756 (n : ℕ) : ℤ :=
  (A225756.P8807305609864975192.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A225756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227756.P7600126737696958243

`p?[A141545(n+1)-1]`
-/

namespace A227756.P7600126737696958243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141545 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227756.P7600126737696958243

noncomputable section

/-- A227756: Primes p such that antisigma(p) = antisigma(p+1) + 12, where antisigma = A024816.

Offset 1, canonical program `A227756.P7600126737696958243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2218 terms. -/
def A227756 (n : ℕ) : ℤ :=
  A227756.P7600126737696958243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2218 terms. -/
def A227756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237649.P7615675460587602235

`A061347(n+1)*A175926(A006519(n+1))`
-/

namespace A237649.P7615675460587602235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A175926 (A006519 (n + 1)).toNat

end

end A237649.P7615675460587602235

noncomputable section

/-- A237649: a(n) = A163659(n^3), where A163659 is the logarithmic derivative of Stern's diatomic series (A002487).

Offset 1, canonical program `A237649.P7615675460587602235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237649 (n : ℕ) : ℤ :=
  A237649.P7615675460587602235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238096.P7573035923647933420

`∑[A140773(n+1)-1]`
-/

namespace A238096.P7573035923647933420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140773 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238096.P7573035923647933420

noncomputable section

/-- A238096: a(n) = Sum_{k=2..n} floor(n/k)*floor((tau(k)+1)/2), where tau = A000005.

Offset 1, canonical program `A238096.P7573035923647933420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238096 (n : ℕ) : ℤ :=
  A238096.P7573035923647933420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239613.P14059425188494653900

`A000005(n+1)*A227499(n+1)`
-/

namespace A239613.P14059425188494653900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A227499 (n + 1)

end

end A239613.P14059425188494653900

noncomputable section

/-- A239613: a(n) = Sum_{0 < x,y,z,t <= n and gcd(x^2 + y^2 + z^2 + t^2, n)=1} gcd(x^2 + y^2 + z^2 + t^2 - 1, n).

Offset 1, canonical program `A239613.P14059425188494653900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239613 (n : ℕ) : ℤ :=
  A239613.P14059425188494653900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243997.P13681003671720194849

`∑{d}[A046520(n+1), A007431(#)]`
-/

namespace A243997.P13681003671720194849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A243997.P13681003671720194849

noncomputable section

/-- A243997: a(n) = phi(sigma(n) - phi(n) - d(n)), where phi(n) is the Euler totient function, sigma(n) the sum of divisors of n and d(n) the number of divisors of n.

Offset 1, canonical program `A243997.P13681003671720194849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. -/
def A243997 (n : ℕ) : ℤ :=
  A243997.P13681003671720194849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. -/
def A243997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244554.P4002939539755767008

`A243747(2*(n+1))`
-/

namespace A244554.P4002939539755767008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243747 (2 * (n + 1))

end

end A244554.P4002939539755767008

noncomputable section

/-- A244554: Expansion of phi(q) * (phi(q) - phi(q^2)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A244554.P4002939539755767008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243747, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244554 (n : ℕ) : ℤ :=
  A244554.P4002939539755767008.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243747, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244554.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248517.P14904334009551317657

`A060831(n)-n`
-/

namespace A248517.P14904334009551317657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n - (n : ℤ)

end

end A248517.P14904334009551317657

noncomputable section

/-- A248517: Number of odd divisors > 1 in the numbers 1 through n, counted with multiplicity.

Offset 0, canonical program `A248517.P14904334009551317657`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060831, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248517 (n : ℕ) : ℤ :=
  A248517.P14904334009551317657.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060831, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248517.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254578.P12489297454804418568

`2*(A088434(n+1)-A122180(n+1))+A004220(4^A122180(n+1))+1`
-/

namespace A254578.P12489297454804418568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A088434 (n + 1) - A122180 (n + 1)) + (A004220 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A122180 (n + 1) : ℤ))).toNat + 1)

end

end A254578.P12489297454804418568

noncomputable section

/-- A254578: Number of ordered factorizations into distinct factors.

Offset 1, canonical program `A254578.P12489297454804418568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254578 (n : ℕ) : ℤ :=
  A254578.P12489297454804418568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254578.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A258747.P12775887819017485008

`A129134(3*n+1)`
-/

namespace A258747.P12775887819017485008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (3 * n + 1)

end

end A258747.P12775887819017485008

noncomputable section

/-- A258747: Expansion of chi(-x) * f(x^3) * f(-x^6) in powers of x where chi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A258747.P12775887819017485008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258747 (n : ℕ) : ℤ :=
  A258747.P12775887819017485008.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258747.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258764.P1236951229725799684

`A129134(3*n+2)`
-/

namespace A258764.P1236951229725799684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (3 * n + 2)

end

end A258764.P1236951229725799684

noncomputable section

/-- A258764: Expansion of chi(-x^2) * psi(-x^3)^2 in powers of x where psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A258764.P1236951229725799684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258764 (n : ℕ) : ℤ :=
  A258764.P1236951229725799684.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258764.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261085.P10967970624675834494

`A155043(A000040(n+1))`
-/

namespace A261085.P10967970624675834494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A000040 (n + 1)).toNat

end

end A261085.P10967970624675834494

noncomputable section

/-- A261085: Number of steps needed to reach zero when starting from the n-th prime [i.e., setting k to A000040(n)] and repeatedly applying the map that replaces k with k - d(k), where d(k) is the number of divisors of k (A000005).

Offset 1, canonical program `A261085.P10967970624675834494`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A155043, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261085 (n : ℕ) : ℤ :=
  A261085.P10967970624675834494.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A155043, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261088.P12367769580199237088

`A155043(n²)`
-/

namespace A261088.P12367769580199237088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (n ^ 2)

end

end A261088.P12367769580199237088

noncomputable section

/-- A261088: Number of steps needed to reach zero when starting from k = n^2 and repeatedly applying the map that replaces k with k - d(k), where d(k) is the number of divisors of k (A000005).

Offset 0, canonical program `A261088.P12367769580199237088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A155043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261088 (n : ℕ) : ℤ :=
  A261088.P12367769580199237088.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A155043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262518.P4745405101441477404

`A155043(2*n)`
-/

namespace A262518.P4745405101441477404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (2 * n)

end

end A262518.P4745405101441477404

noncomputable section

/-- A262518: Even bisection of A155043.

Offset 0, canonical program `A262518.P4745405101441477404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A155043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262518 (n : ℕ) : ℤ :=
  A262518.P4745405101441477404.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A155043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262518.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262519.P6612858690634746410

`A155043(2*n+1)`
-/

namespace A262519.P6612858690634746410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (2 * n + 1)

end

end A262519.P6612858690634746410

noncomputable section

/-- A262519: Odd bisection of A155043.

Offset 0, canonical program `A262519.P6612858690634746410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A155043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262519 (n : ℕ) : ℤ :=
  A262519.P6612858690634746410.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A155043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262519.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262681.P5069097334866241517

`A262680(2*n+1)`
-/

namespace A262681.P5069097334866241517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262680 (2 * n + 1)

end

end A262681.P5069097334866241517

noncomputable section

/-- A262681: Odd bisection of A262680.

Offset 0, canonical program `A262681.P5069097334866241517`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262681 (n : ℕ) : ℤ :=
  A262681.P5069097334866241517.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262681.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262682.P796108545495164690

`A262680(2*n)`
-/

namespace A262682.P796108545495164690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262680 (2 * n)

end

end A262682.P796108545495164690

noncomputable section

/-- A262682: Even bisection of A262680.

Offset 0, canonical program `A262682.P796108545495164690`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262682 (n : ℕ) : ℤ :=
  A262682.P796108545495164690.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262682.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A264898.P3004184521614351433

`eq[A155043(n+1), A155043(n)]`
-/

namespace A264898.P3004184521614351433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A264898.P3004184521614351433

noncomputable section

/-- A264898: Numbers m such that A155043(n+1) = A155043(n).

Offset 1, canonical program `A264898.P3004184521614351433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A264898 (n : ℕ) : ℤ :=
  (A264898.P3004184521614351433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A264898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117295.P11573964294491950666

`A002618(n+1)-A127473(n+1)`
-/

namespace A117295.P11573964294491950666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) - A127473 (n + 1)

end

end A117295.P11573964294491950666

noncomputable section

/-- A117295: a(n) = phi(n)*(n - phi(n)).

Offset 1, canonical program `A117295.P11573964294491950666`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A127473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A117295 (n : ℕ) : ℤ :=
  A117295.P11573964294491950666.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A127473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A117295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120360.P8400398089451663641

`∩[A057265(n+1), A181794(n+1)]`
-/

namespace A120360.P8400398089451663641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120360.P8400398089451663641

noncomputable section

/-- A120360: Even refactorable numbers k such that the number of odd divisors of k and the number of even divisors of k are both even divisors of k.

Offset 1, canonical program `A120360.P8400398089451663641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 776 terms. -/
def A120360 (n : ℕ) : ℤ :=
  (A120360.P8400398089451663641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 776 terms. -/
def A120360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122179.P10778673272952612676

`A034836(n+1)-A038548(n+1)`
-/

namespace A122179.P10778673272952612676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - A038548 (n + 1)

end

end A122179.P10778673272952612676

noncomputable section

/-- A122179: Number of ways to write n as n = x*y*z with 1

Offset 1, canonical program `A122179.P10778673272952612676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034836, A038548, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122179 (n : ℕ) : ℤ :=
  A122179.P10778673272952612676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034836, A038548, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122179.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137148.P14335475236548709894

`A002618(Δ[A051349(n)])`
-/

namespace A137148.P14335475236548709894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (f1 (n + 1) - f1 n).toNat

end

end A137148.P14335475236548709894

noncomputable section

/-- A137148: a(n) = k*phi(k), where k is the n-th nonprime number.

Offset 1, canonical program `A137148.P14335475236548709894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8771 terms. -/
def A137148 (n : ℕ) : ℤ :=
  A137148.P14335475236548709894.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8771 terms. -/
def A137148.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140826.P13460497171487579116

`lt[A231167(n+3), 1]+3`
-/

namespace A140826.P13460497171487579116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231167 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A140826.P13460497171487579116

noncomputable section

/-- A140826: Arithmetic nondivisor means.

Offset 1, canonical program `A140826.P13460497171487579116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1234 terms. -/
def A140826 (n : ℕ) : ℤ :=
  (A140826.P13460497171487579116.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1234 terms. -/
def A140826.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144255.P6279309011135346714

`(A085722(n+1)%A081619(2*(n+1)))²+1`
-/

namespace A144255.P6279309011135346714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085722 (n + 1)) (A081619 (2 * (n + 1))) ^ 2 + 1

end

end A144255.P6279309011135346714

noncomputable section

/-- A144255: Semiprimes of the form k^2+1.

Offset 1, canonical program `A144255.P6279309011135346714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A144255 (n : ℕ) : ℤ :=
  A144255.P6279309011135346714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A144255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145390.P15585800402733348238

`A112329(n+1)+A183063(n+1)`
-/

namespace A145390.P15585800402733348238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (n + 1) + A183063 (n + 1)

end

end A145390.P15585800402733348238

noncomputable section

/-- A145390: Number of sublattices of index n of a centered rectangular lattice fixed by a reflection.

Offset 1, canonical program `A145390.P15585800402733348238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112329, A183063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A145390 (n : ℕ) : ℤ :=
  A145390.P15585800402733348238.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112329, A183063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A145390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147807.P14447654963919172876

`A147806(n+1)+1+n`
-/

namespace A147807.P14447654963919172876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147806 (n + 1) + 1 + (n : ℤ)

end

end A147807.P14447654963919172876

noncomputable section

/-- A147807: Partial sums of A147810(n) = tau(n^2 + 1)/2.

Offset 1, canonical program `A147807.P14447654963919172876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147807 (n : ℕ) : ℤ :=
  A147807.P14447654963919172876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152442.P14276229364845082290

`lt[2, A000005(A137926(n+1))]+1`
-/

namespace A152442.P14276229364845082290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A137926 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A152442.P14276229364845082290

noncomputable section

/-- A152442: n is included if the largest divisor of n that is coprime to d(n) is a composite, where d(n) is the number of divisors of n.

Offset 1, canonical program `A152442.P14276229364845082290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152442 (n : ℕ) : ℤ :=
  (A152442.P14276229364845082290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152442.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A160595.P6850697665178590478

`A247074(n+1)*A318829(n+1)`
-/

namespace A160595.P6850697665178590478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247074 (n + 1) * A318829 (n + 1)

end

end A160595.P6850697665178590478

noncomputable section

/-- A160595: Numerator of resilience R(n) = phi(n)/(n-1), with a(1) = 1 by convention.

Offset 1, canonical program `A160595.P6850697665178590478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A247074, A318829, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160595 (n : ℕ) : ℤ :=
  A160595.P6850697665178590478.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A247074, A318829, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160595.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161841.P10874343468678800026

`A038548(n+1)*2`
-/

namespace A161841.P10874343468678800026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) * 2

end

end A161841.P10874343468678800026

noncomputable section

/-- A161841: Number of factors, with repetition, in all distinct pairs (a <= b) such that a*b = n.

Offset 1, canonical program `A161841.P10874343468678800026`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161841 (n : ℕ) : ℤ :=
  A161841.P10874343468678800026.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161841.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179643.P5918982336618133946

`filter[A030636(n+1), A212793(#)]`
-/

namespace A179643.P5918982336618133946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A179643.P5918982336618133946

noncomputable section

/-- A179643: Products of exactly 2 distinct squares of primes and a different prime (p^2 * q^2 * r).

Offset 1, canonical program `A179643.P5918982336618133946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179643 (n : ℕ) : ℤ :=
  A179643.P5918982336618133946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179643.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A180824.P4915511822982714582

`(A180783(n+1)-2)%A108411(n)`
-/

namespace A180824.P4915511822982714582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180783 (n + 1) - 2) (A108411 n)

end

end A180824.P4915511822982714582

noncomputable section

/-- A180824: Number of distinct solutions of Sum_{i=1..1} x(2i-1)*x(2i) = 1 (mod n), with x() only in 2..n-2.

Offset 1, canonical program `A180824.P4915511822982714582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A180824 (n : ℕ) : ℤ :=
  A180824.P4915511822982714582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A180824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185278.P4135583390326925766

`A110654(A193138(n+3)+A180783(n+3))`
-/

namespace A185278.P4135583390326925766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A193138 (n + 3) + A180783 (n + 3)).toNat

end

end A185278.P4135583390326925766

noncomputable section

/-- A185278: Number of isomorphism classes of generalized Petersen graphs G(n,k) on 2n vertices with gcd(n,k) = 1.

Offset 3, canonical program `A185278.P4135583390326925766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A185278 (n : ℕ) : ℤ :=
  A185278.P4135583390326925766.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A185278.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A193583.P1735472173273638827

`Δ[2*A147806(n+1)]+1`
-/

namespace A193583.P1735472173273638827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A193583.P1735472173273638827

noncomputable section

/-- A193583: Number of fixed points under iteration of sum of squares of digits in base b.

Offset 2, canonical program `A193583.P1735472173273638827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A193583 (n : ℕ) : ℤ :=
  A193583.P1735472173273638827.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A193583.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A202535.P2093204726395157723

`A002618(n+1)*A008966(n+1)`
-/

namespace A202535.P2093204726395157723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) * A008966 (n + 1)

end

end A202535.P2093204726395157723

noncomputable section

/-- A202535: a(n) = n*phi(n)*abs( mobius(n) ).

Offset 1, canonical program `A202535.P2093204726395157723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A008966, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A202535 (n : ℕ) : ℤ :=
  A202535.P2093204726395157723.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A008966, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A202535.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211271.P4906391338954789075

`A038548(3*(n+1))-gcd(2, n+1)`
-/

namespace A211271.P4906391338954789075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (3 * (n + 1)) - (Nat.gcd 2 (n + 1) : ℤ)

end

end A211271.P4906391338954789075

noncomputable section

/-- A211271: Number of integer pairs (x,y) such that 0

Offset 1, canonical program `A211271.P4906391338954789075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A211271 (n : ℕ) : ℤ :=
  A211271.P4906391338954789075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A211271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211485.P8134217445044999600

`∩[A366762(n+1), A375960(n+1)]`
-/

namespace A211485.P8134217445044999600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211485.P8134217445044999600

noncomputable section

/-- A211485: Numbers for which the canonical prime factorization contains only an odd number of exponents, all of which are congruent to 1 modulo 3.

Offset 1, canonical program `A211485.P8134217445044999600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A211485 (n : ℕ) : ℤ :=
  (A211485.P8134217445044999600.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A211485.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A217006.P11652602790585966678

`∩[A179188(n+1)+6, A179188(n+4)]`
-/

namespace A217006.P11652602790585966678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179188 (n + 1) + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179188 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217006.P11652602790585966678

noncomputable section

/-- A217006: Numbers k such that phi(k-6) = phi(k) = phi(k+6).

Offset 1, canonical program `A217006.P11652602790585966678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A217006 (n : ℕ) : ℤ :=
  (A217006.P11652602790585966678.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A217006.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A228498.P12527893153496033992

`A002618(n+1)-A377879(n+1)`
-/

namespace A228498.P12527893153496033992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) - A377879 (n + 1)

end

end A228498.P12527893153496033992

noncomputable section

/-- A228498: a(n) = sigma(n^2) + phi(n^2) - 2n^2.

Offset 1, canonical program `A228498.P12527893153496033992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228498 (n : ℕ) : ℤ :=
  A228498.P12527893153496033992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229972.P9080360286845708223

`filter[A375960(n+1), A005171(#)]`
-/

namespace A229972.P9080360286845708223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A229972.P9080360286845708223

noncomputable section

/-- A229972: Nonprime numbers whose product of proper divisors is a perfect cube.

Offset 1, canonical program `A229972.P9080360286845708223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7016 terms. -/
def A229972 (n : ℕ) : ℤ :=
  A229972.P9080360286845708223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7016 terms. -/
def A229972.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A246803.P15239765525824187154

`eq[A000010(n+1), A295301(n+1)]+1`
-/

namespace A246803.P15239765525824187154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A246803.P15239765525824187154

noncomputable section

/-- A246803: Solutions of phi(sigma(x)) = x-phi(x).

Offset 1, canonical program `A246803.P15239765525824187154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A246803 (n : ℕ) : ℤ :=
  (A246803.P15239765525824187154.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A246803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254503.P16877197465467938331

`A002618(n+1)/A384050(n+1)`
-/

namespace A254503.P16877197465467938331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A384050 (n + 1) : ℚ)

end

end A254503.P16877197465467938331

noncomputable section

/-- A254503: Möbius transform of A034448.

Offset 1, canonical program `A254503.P16877197465467938331`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A384050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A254503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A254503.P16877197465467938331.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A384050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A254503.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A128830.P9449490363820853623

`A000005(A137926(n+1))`
-/

namespace A128830.P9449490363820853623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A137926 (n + 1)).toNat

end

end A128830.P9449490363820853623

noncomputable section

/-- A128830: a(n) = the number of positive divisors of n which are coprime to d(n), where d(n) = the number of positive divisors of n.

Offset 1, canonical program `A128830.P9449490363820853623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A128830 (n : ℕ) : ℤ :=
  A128830.P9449490363820853623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A128830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165681.P2568694064747415589

`p?[A257772(n+1)+1]`
-/

namespace A165681.P2568694064747415589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257772 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165681.P2568694064747415589

noncomputable section

/-- A165681: Primes p such that 3*p*(p-1)+1 is not prime.

Offset 1, canonical program `A165681.P2568694064747415589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. -/
def A165681 (n : ℕ) : ℤ :=
  A165681.P2568694064747415589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. -/
def A165681.provenance : SequenceMachineLib.Provenance := .conjectured

