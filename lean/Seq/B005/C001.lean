import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C037
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import SequenceMachineLib.Triangle

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

Offset 1, canonical program `A256992.P2364808251290263884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256992 (n : ℕ) : ℤ :=
  A256992.P2364808251290263884.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256992.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261229.P11187250923675357345

`A261228(n+2)-A261228(n+1)`
-/

namespace A261229.P11187250923675357345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261228 (n + 2) - A261228 (n + 1)

end

end A261229.P11187250923675357345

noncomputable section

/-- A261229: a(n) = number of steps to reach (n^3)-1 when starting from k = ((n+1)^3)-1 and repeatedly applying the map that replaces k with k - A055401(k), where A055401(k) = the number of positive cubes needed to sum to k using the greedy algorithm.

Offset 1, canonical program `A261229.P11187250923675357345`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261229 (n : ℕ) : ℤ :=
  A261229.P11187250923675357345.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261229.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A296062.P5761383797540387978

`n-A268289(n)`
-/

namespace A296062.P5761383797540387978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268289 n

end

end A296062.P5761383797540387978

noncomputable section

/-- A296062: Base-2 logarithm of the number of different shapes of balanced binary trees with n nodes (A110316).

Offset 0, canonical program `A296062.P5761383797540387978`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296062 (n : ℕ) : ℤ :=
  A296062.P5761383797540387978.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296062.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A301336.P12381687914768118623

`A268289(n)-1`
-/

namespace A301336.P12381687914768118623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268289 n - 1

end

end A301336.P12381687914768118623

noncomputable section

/-- A301336: a(n) = total number of 1's minus total number of 0's in binary expansions of 0, ..., n.

Offset 0, canonical program `A301336.P12381687914768118623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301336 (n : ℕ) : ℤ :=
  A301336.P12381687914768118623.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301336.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A159634.P11967709027105384687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A159634.P11967709027105384687.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159634.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A177852.P6076088614486311757

`A000040(n+1)-A177687(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177852.P6076088614486311757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A177687 (n + 1)

end

end A177852.P6076088614486311757

noncomputable section

/-- A177852: prime(n)-A177687(n).

Offset 1, canonical program `A177852.P6076088614486311757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177852 (n : ℕ) : ℤ :=
  A177852.P6076088614486311757.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177852.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A243887.P5598863365777822828`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243887 (n : ℕ) : ℤ :=
  A243887.P5598863365777822828.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243887.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A324658.P12557822130857951693

`n+1-A324659(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324658.P12557822130857951693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A324659 (n + 1)

end

end A324658.P12557822130857951693

noncomputable section

/-- A324658: a(n) = n - A324659(n), where A324659(n) is half of bitwise-AND of 2*n and sigma(n).

Offset 1, canonical program `A324658.P12557822130857951693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324658 (n : ℕ) : ℤ :=
  A324658.P12557822130857951693.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324658.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326055.P11347868664017450431

`A326054(n+1)+A033879(n+1)`
-/

namespace A326055.P11347868664017450431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326054 (n + 1) + A033879 (n + 1)

end

end A326055.P11347868664017450431

noncomputable section

/-- A326055: a(n) = n - {the largest square that divides n}.

Offset 1, canonical program `A326055.P11347868664017450431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326055 (n : ℕ) : ℤ :=
  A326055.P11347868664017450431.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326055.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A237881.P9527050307391810079`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237881 (n : ℕ) : ℤ :=
  A237881.P9527050307391810079.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237881.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A253274.P17911130447505616928

`A007814(A007497(n+1))`
-/

namespace A253274.P17911130447505616928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A007497 (n + 1)).toNat

end

end A253274.P17911130447505616928

noncomputable section

/-- A253274: Exponent of the highest power of 2 dividing A007497(n).

Offset 1, canonical program `A253274.P17911130447505616928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253274 (n : ℕ) : ℤ :=
  A253274.P17911130447505616928.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253274.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A284565.P9570140672652545483`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284565 (n : ℕ) : ℤ :=
  A284565.P9570140672652545483.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284565.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A296306.P7064557066489787750

`(4^(A007814(n+1)+1)-1)/3`
-/

namespace A296306.P7064557066489787750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 : ℚ) ^ (A007814 (n + 1) + 1 : ℤ) - 1) / 3

end

end A296306.P7064557066489787750

noncomputable section

/-- A296306: a(n) = A001157(n)/A050999(n).

Offset 1, canonical program `A296306.P7064557066489787750`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296306 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A296306.P7064557066489787750.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296306.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324379.P10721248754641140736

`A007814(A005187(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324379.P10721248754641140736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005187 (n + 1)).toNat

end

end A324379.P10721248754641140736

noncomputable section

/-- A324379: a(n) = A007814(A005187(n)).

Offset 1, canonical program `A324379.P10721248754641140736`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A005187(n+1))` (program `A324379.P10721248754641140736`, by `A324379.P10721248754641140736.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A324379 (n : ℕ) : ℤ :=
  A324379.P10721248754641140736.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A005187(n+1))` (program `A324379.P10721248754641140736`, by `A324379.P10721248754641140736.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A324379.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A324902.P6713213474126694737

`A007814(A318456(n+1))`
-/

namespace A324902.P6713213474126694737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318456 (n + 1)).toNat

end

end A324902.P6713213474126694737

noncomputable section

/-- A324902: The 2-adic valuation of A318456(n), where A318456(n) = n OR (sigma(n)-n).

Offset 1, canonical program `A324902.P6713213474126694737`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324902 (n : ℕ) : ℤ :=
  A324902.P6713213474126694737.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324902.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324906.P2435466228713464625

`A007814(1+A318466(n+1))`
-/

namespace A324906.P2435466228713464625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A318466 (n + 1)).toNat

end

end A324906.P2435466228713464625

noncomputable section

/-- A324906: Number of trailing 1-bits in the binary representation of A318466(n), where A318466(n) = 2*n OR sigma(n).

Offset 1, canonical program `A324906.P2435466228713464625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324906 (n : ℕ) : ℤ :=
  A324906.P2435466228713464625.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324906.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326714.P2677261734638902469

`A007814(n+1)+A161680(n+1)`
-/

namespace A326714.P2677261734638902469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A161680 (n + 1)

end

end A326714.P2677261734638902469

noncomputable section

/-- A326714: a(n) = binomial(n,2) + (2-adic valuation of n).

Offset 1, canonical program `A326714.P2677261734638902469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326714 (n : ℕ) : ℤ :=
  A326714.P2677261734638902469.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326714.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A144217.P17527769007908988650

`val(A131816(n), 2)`
-/

namespace A144217.P17527769007908988650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131816 n).toNat 2

end

end A144217.P17527769007908988650

noncomputable section

/-- A144217: Weight array of A144216: a rectangular array by antidiagonals.

Offset 1, canonical program `A144217.P17527769007908988650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144217 (n : ℕ) : ℤ :=
  (A144217.P17527769007908988650.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144217.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A156365.P9939994924997747537

`A142075(abs(1-n)+1)`
-/

namespace A156365.P9939994924997747537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142075 (|1 - (n : ℤ)| + 1).toNat

end

end A156365.P9939994924997747537

noncomputable section

/-- A156365: T(n, k) = E(n, k)*2^k where E(n,k) are the Eulerian numbers A173018, for n > 0 and 0 <= k <= n-1, additionally T(0,0) = 1.

Offset 0, canonical program `A156365.P9939994924997747537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2114 terms. -/
def A156365 (n : ℕ) : ℤ :=
  A156365.P9939994924997747537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2114 terms. -/
def A156365.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A164385.P969803390570272299

`A087680(n+2)`
-/

namespace A164385.P969803390570272299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087680 (n + 2)

end

end A164385.P969803390570272299

noncomputable section

/-- A164385: Composite numbers n such that n+4 and n-4 are both prime.

Offset 1, canonical program `A164385.P969803390570272299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164385 (n : ℕ) : ℤ :=
  A164385.P969803390570272299.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164385.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A166065.P3490208905278104305

`A057728(n+1)+Δ[A010054(n)]`
-/

namespace A166065.P3490208905278104305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) + (f1 (n + 1) - f1 n)

end

end A166065.P3490208905278104305

noncomputable section

/-- A166065: Triangle, read by rows, given by [0,1,1,0,0,0,0,0,0,0,...] DELTA [2,-1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A166065.P3490208905278104305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166065 (n : ℕ) : ℤ :=
  A166065.P3490208905278104305.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166065.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A167608.P17167071257237271541

`∑{digits}[A103195(n+1), #]`
-/

namespace A167608.P17167071257237271541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A167608.P17167071257237271541

noncomputable section

/-- A167608: Digit sum of cousin prime pairs.

Offset 1, canonical program `A167608.P17167071257237271541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A167608 (n : ℕ) : ℤ :=
  (A167608.P17167071257237271541.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A167608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168552.P16861038903126470007

`2*A168551(n)-A168517(n)`
-/

namespace A168552.P16861038903126470007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168551 n - A168517 n

end

end A168552.P16861038903126470007

noncomputable section

/-- A168552: Expansion of g.f. (1/2)*( a*(1+x)^n + b*(1-x)^(n+2)*LerchPhi(x, -n-1, 1) + c*2^(n+1)*(1-x)^(n+1)*LerchPhi(x, -n, 1/2) ), where a = 3, b = -3, and c = 1, read by rows.

Offset 0, canonical program `A168552.P16861038903126470007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1916 terms. -/
def A168552 (n : ℕ) : ℤ :=
  A168552.P16861038903126470007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1916 terms. -/
def A168552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169590.P4055382450017512449

`(A089633(n*A023532(n))+1)%3`
-/

namespace A169590.P4055382450017512449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089633 ((n : ℤ) * A023532 n).toNat + 1) 3

end

end A169590.P4055382450017512449

noncomputable section

/-- A169590: Triangle T(n,k) with : column n = A000034 if n even and column n = A000007 if n odd.

Offset 0, canonical program `A169590.P4055382450017512449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A169590 (n : ℕ) : ℤ :=
  A169590.P4055382450017512449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A169590.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A172503.P2118640332743978140

`A109847(n+1)+(n+2)*A172500(n+1)`
-/

namespace A172503.P2118640332743978140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109847 (n + 1) + (n + 2 : ℤ) * A172500 (n + 1)

end

end A172503.P2118640332743978140

noncomputable section

/-- A172503: a(n) = numerator of fraction a/b, where gcd(a, b) = 1, whose decimal representation has the form (n).(n)(n)(n)... with period (n).

Offset 1, canonical program `A172503.P2118640332743978140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172503 (n : ℕ) : ℤ :=
  A172503.P2118640332743978140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172503.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174718.P11900434341111267060

`A008949(n)+A055248(n)-A038208(n)`
-/

namespace A174718.P11900434341111267060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n + (A055248 n - A038208 n)

end

end A174718.P11900434341111267060

noncomputable section

/-- A174718: Triangle T(n, k, q) = (1-q^n)*( binomial(n, k) - 1 ) + 1, with q = 2, read by rows.

Offset 0, canonical program `A174718.P11900434341111267060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174718 (n : ℕ) : ℤ :=
  A174718.P11900434341111267060.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174718.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A175382.P11062849655442964285

`comp[A175381(n+1)-1]+1`
-/

namespace A175382.P11062849655442964285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175381 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175382.P11062849655442964285

noncomputable section

/-- A175382: Positive integers n for which there is at least one positive integer k whose binary expansion occurs as a substring in the binary expansion of n but does not divide n.

Offset 1, canonical program `A175382.P11062849655442964285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175382 (n : ℕ) : ℤ :=
  (A175382.P11062849655442964285.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176224.P7399068725741792420

`A099627(n)-A089633(n)`
-/

namespace A176224.P7399068725741792420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n - A089633 n

end

end A176224.P7399068725741792420

noncomputable section

/-- A176224: A symmetrical triangle sequence: T(n, k) = q^k + q^(n-k) - q^n, with q=2.

Offset 0, canonical program `A176224.P7399068725741792420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176224 (n : ℕ) : ℤ :=
  A176224.P7399068725741792420.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177990.P655360059528610579

`2-A133083(n+1)`
-/

namespace A177990.P655360059528610579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A133083 (n + 1)

end

end A177990.P655360059528610579

noncomputable section

/-- A177990: Triangle read by rows, variant of A070909, a cellular automaton.

Offset 1, canonical program `A177990.P655360059528610579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177990 (n : ℕ) : ℤ :=
  A177990.P655360059528610579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180948.P43109043055312899

`A065091(lt[∑{e}[A127334(n+1), #], 2])`
-/

namespace A180948.P43109043055312899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A180948.P43109043055312899

noncomputable section

/-- A180948: Smallest of seven (7) consecutive primes whose sum is a prime.

Offset 1, canonical program `A180948.P43109043055312899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1794 terms. -/
def A180948 (n : ℕ) : ℤ :=
  A180948.P43109043055312899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1794 terms. -/
def A180948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181118.P14712911132165439164

`A057555(xor(1, n)+1)`
-/

namespace A181118.P14712911132165439164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (Nat.xor 1 n + 1)

end

end A181118.P14712911132165439164

noncomputable section

/-- A181118: Sequencing of all rational numbers p/q > 0 as ordered pairs (p,q). The rational (p,q) occurs as the n-th ordered pair where n=(p+q-1)*(p+q-2)/2+q.

Offset 1, canonical program `A181118.P14712911132165439164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181118 (n : ℕ) : ℤ :=
  A181118.P14712911132165439164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181118.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A183154.P7623041928284597540

`A005803(A130296(n+1))+A007318(n)`
-/

namespace A183154.P7623041928284597540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005803 (A130296 (n + 1)).toNat + A007318 n

end

end A183154.P7623041928284597540

noncomputable section

/-- A183154: T(n,k) is the number of order-preserving partial isometries (of an n-chain) of fixed k (fix of alpha is the number of fixed points of alpha).

Offset 0, canonical program `A183154.P7623041928284597540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183154 (n : ℕ) : ℤ :=
  A183154.P7623041928284597540.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183154.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188078.P9220553595696871983

`record[2*A188076(n+2)+n]`
-/

namespace A188078.P9220553595696871983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188076 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188078.P9220553595696871983

noncomputable section

/-- A188078: Positions of 1 in A188076; complement of A188077.

Offset 1, canonical program `A188078.P9220553595696871983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6602 terms. -/
def A188078 (n : ℕ) : ℤ :=
  A188078.P9220553595696871983.a (n - 1)

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

/-! ## A190302.P8878479900364276909

`A187285(n+1)/(n+1)`
-/

namespace A190302.P8878479900364276909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187285 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A190302.P8878479900364276909

noncomputable section

/-- A190302: Smallest number h such that the decimal expansion of n*h starts with 1.

Offset 1, canonical program `A190302.P8878479900364276909`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190302 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A190302.P8878479900364276909.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190302.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A193739.P1597501357748841903

`A065033(A143956(n+1)-1)`
-/

namespace A193739.P1597501357748841903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A143956 (n + 1) - 1).toNat

end

end A193739.P1597501357748841903

noncomputable section

/-- A193739: Mirror of the triangle A193738.

Offset 0, canonical program `A193739.P1597501357748841903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193739 (n : ℕ) : ℤ :=
  A193739.P1597501357748841903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193739.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A194887.P13401530721558716805

`A038336(A057944(n))+a(A112367(n))-1` with `a(0)=2`
-/

namespace A194887.P13401530721558716805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A038336 (A057944 n).toNat + (a (A112367 n).toNat - 1)

end

end A194887.P13401530721558716805

noncomputable section

/-- A194887: Numbers that are the sum of two powers of 12.

Offset 1, canonical program `A194887.P13401530721558716805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A194887 (n : ℕ) : ℤ :=
  A194887.P13401530721558716805.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A194887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196175.P3423915434805882668

`eq[2, Δ[Δ[A092243(n+1)]]]+2`
-/

namespace A196175.P3423915434805882668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A196175.P3423915434805882668

noncomputable section

/-- A196175: Positions of local minima in A001223.

Offset 1, canonical program `A196175.P3423915434805882668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3129 terms. -/
def A196175 (n : ℕ) : ℤ :=
  (A196175.P3423915434805882668.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3129 terms. -/
def A196175.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A198792.P8210630844402988045

`Δ[A089633(n)]*A097805(n)`
-/

namespace A198792.P8210630844402988045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A097805 n

end

end A198792.P8210630844402988045

noncomputable section

/-- A198792: Triangle T(n,k), read by rows, given by (0,1,1,0,0,0,0,0,0,0,...) DELTA (1,0,0,1,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A198792.P8210630844402988045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A198792 (n : ℕ) : ℤ :=
  A198792.P8210630844402988045.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A198792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202297.P4781330736124741313

`A109724(n)*A109724(n+1)`
-/

namespace A202297.P4781330736124741313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109724 n * A109724 (n + 1)

end

end A202297.P4781330736124741313

noncomputable section

/-- A202297: Product of the sum of the first n^2 primes by the sum of the first (n+1)^2 primes.

Offset 0, canonical program `A202297.P4781330736124741313`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202297 (n : ℕ) : ℤ :=
  A202297.P4781330736124741313.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202297.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A202452.P9644415859408235148

`A000045(A185914(n+1))`
-/

namespace A202452.P9644415859408235148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A185914 (n + 1)).toNat

end

end A202452.P9644415859408235148

noncomputable section

/-- A202452: Lower triangular Fibonacci matrix, by SW antidiagonals.

Offset 1, canonical program `A202452.P9644415859408235148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202452 (n : ℕ) : ℤ :=
  A202452.P9644415859408235148.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203998.P4307443962499752240

`A203996(n+1)-A203994(n+1)`
-/

namespace A203998.P4307443962499752240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203996 (n + 1) - A203994 (n + 1)

end

end A203998.P4307443962499752240

noncomputable section

/-- A203998: Symmetric matrix based on f(i,j)=max{i(j+1)-1,j(i+1)-1}, by antidiagonals.

Offset 1, canonical program `A203998.P4307443962499752240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203998 (n : ℕ) : ℤ :=
  A203998.P4307443962499752240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204000.P8902930415265516511

`A203996(n+1)-1`
-/

namespace A204000.P8902930415265516511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203996 (n + 1) - 1

end

end A204000.P8902930415265516511

noncomputable section

/-- A204000: Symmetric matrix based on f(i,j)=min{i(j+1)-1,j(i+1)-1}, by antidiagonals.

Offset 1, canonical program `A204000.P8902930415265516511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204000 (n : ℕ) : ℤ :=
  A204000.P8902930415265516511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204002.P9170286212412624765

`A203996(n+1)+A176270(n)`
-/

namespace A204002.P9170286212412624765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203996 (n + 1) + A176270 n

end

end A204002.P9170286212412624765

noncomputable section

/-- A204002: Symmetric matrix based on f(i,j)=min{2i+j,i+2j}, by antidiagonals.

Offset 1, canonical program `A204002.P9170286212412624765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204002 (n : ℕ) : ℤ :=
  A204002.P9170286212412624765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204158.P9414050647087276641

`A204154(n+1)+A049581(n)`
-/

namespace A204158.P9414050647087276641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1) + A049581 n

end

end A204158.P9414050647087276641

noncomputable section

/-- A204158: Symmetric matrix based on f(i,j)=max(3i-2j, 3j-2i), by antidiagonals.

Offset 1, canonical program `A204158.P9414050647087276641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204158 (n : ℕ) : ℤ :=
  A204158.P9414050647087276641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204173.P5209315876622248264

`A027656(floor(log2(A131816(n))))`
-/

namespace A204173.P5209315876622248264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (Nat.log 2 (A131816 n).toNat)

end

end A204173.P5209315876622248264

noncomputable section

/-- A204173: Symmetric matrix based on f(i,j)=(2i-1 if max(i,j) is odd, and 0 otherwise), by antidiagonals.

Offset 1, canonical program `A204173.P5209315876622248264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204173 (n : ℕ) : ℤ :=
  A204173.P5209315876622248264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204173.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A205680.P15285534464945859236

`A000040(A205678(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205680.P15285534464945859236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205678 (n + 1)).toNat

end

end A205680.P15285534464945859236

noncomputable section

/-- A205680: Prime(A205678(n)), the n-th number s(j) such that 4 divides s(k)-s(j), where the pairs (k,j) are given by A205677 and A205678.

Offset 1, canonical program `A205680.P15285534464945859236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205678, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A205680 (n : ℕ) : ℤ :=
  A205680.P15285534464945859236.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205678, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A205680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A205692.P12020917738335032980

`A002260(A205690(n+1))`
-/

namespace A205692.P12020917738335032980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205690 (n + 1)).toNat

end

end A205692.P12020917738335032980

noncomputable section

/-- A205692: The number j such that 6 divides prime(k)-prime(j), where k(n)=A205691(n).

Offset 1, canonical program `A205692.P12020917738335032980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5478 terms. -/
def A205692 (n : ℕ) : ℤ :=
  A205692.P12020917738335032980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5478 terms. -/
def A205692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206772.P13480883509910150050

`A279891(n)+A204154(n+1)`
-/

namespace A206772.P13480883509910150050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + A204154 (n + 1)

end

end A206772.P13480883509910150050

noncomputable section

/-- A206772: Table T(n,k)=max{4*n+k-4,n+4*k-4} n, k > 0, read by antidiagonals.

Offset 1, canonical program `A206772.P13480883509910150050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A206772 (n : ℕ) : ℤ :=
  A206772.P13480883509910150050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A206772.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A213819.P7092098208098070007

`A213761(n+1)+abs(A122432(n))`
-/

namespace A213819.P7092098208098070007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213761 (n + 1) + |A122432 n|

end

end A213819.P7092098208098070007

noncomputable section

/-- A213819: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = 3*n-4+3*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213819.P7092098208098070007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213819 (n : ℕ) : ℤ :=
  A213819.P7092098208098070007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213825.P10893518524547997828

`A213822(n+1)-A005449(A004736(n+1))`
-/

namespace A213825.P10893518524547997828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213822 (n + 1) - A005449 (A004736 (n + 1)).toNat

end

end A213825.P10893518524547997828

noncomputable section

/-- A213825: Rectangular array: (row n) = b**c, where b(h) = 3*h-1, c(h) = 3*n-5+3*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213825.P10893518524547997828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213825 (n : ℕ) : ℤ :=
  A213825.P10893518524547997828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213828.P12143672118156655501

`A213822(n+1)-A096037(n+1)`
-/

namespace A213828.P12143672118156655501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213822 (n + 1) - A096037 (n + 1)

end

end A213828.P12143672118156655501

noncomputable section

/-- A213828: Rectangular array: (row n) = b**c, where b(h) = 3*h-2, c(h) = 3*n-4+3*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213828.P12143672118156655501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213828 (n : ℕ) : ℤ :=
  A213828.P12143672118156655501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213922.P6928355750704519945

`A051125(n+1)²+1-A210535(n+1)`
-/

namespace A213922.P6928355750704519945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) ^ 2 + (1 - A210535 (n + 1))

end

end A213922.P6928355750704519945

noncomputable section

/-- A213922: Natural numbers placed in table T(n,k) layer by layer. The order of placement: T(n,n), T(n-1,n), T(n,n-1), ... T(1,n), T(n,1). Table T(n,k) read by antidiagonals.

Offset 1, canonical program `A213922.P6928355750704519945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A213922 (n : ℕ) : ℤ :=
  A213922.P6928355750704519945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A213922.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A215655.P274844341247519406

`2*A057555(xor(1, n)+1)`
-/

namespace A215655.P274844341247519406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057555 (Nat.xor 1 n + 1)

end

end A215655.P274844341247519406

noncomputable section

/-- A215655: Irregular triangle read by rows: reading the n-th row describes all the numbers seen in the triangle up to the end of the n-th row.

Offset 1, canonical program `A215655.P274844341247519406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A215655 (n : ℕ) : ℤ :=
  A215655.P274844341247519406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A215655.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A224701.P15756178297460564340

`2*A224380(n+1)-1`
-/

namespace A224701.P15756178297460564340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224380 (n + 1) - 1

end

end A224701.P15756178297460564340

noncomputable section

/-- A224701: Table read by antidiagonals of numbers of form (2^n - 1)*2^(m+3) + 5 where n>=1, m>=1.

Offset 1, canonical program `A224701.P15756178297460564340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A224701 (n : ℕ) : ℤ :=
  A224701.P15756178297460564340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A224701.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A229826.P1529673124160606402

`∩[A089644(n+1), A125494(n+1)]`
-/

namespace A229826.P1529673124160606402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229826.P1529673124160606402

noncomputable section

/-- A229826: Evil (A001969) numbers divisible by 7 but not divisible by 3.

Offset 1, canonical program `A229826.P1529673124160606402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 967 terms. -/
def A229826 (n : ℕ) : ℤ :=
  (A229826.P1529673124160606402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 967 terms. -/
def A229826.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A239459.P5241054701522062125

`(n+1)*(A055436(n+1)-n)`
-/

namespace A239459.P5241054701522062125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A055436 (n + 1) - (n : ℤ))

end

end A239459.P5241054701522062125

noncomputable section

/-- A239459: Concatenation of n^3 and n.

Offset 1, canonical program `A239459.P5241054701522062125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239459 (n : ℕ) : ℤ :=
  A239459.P5241054701522062125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239461.P12041808004721065073

`(n+1)*(A253445(n+1)-(n²+n))`
-/

namespace A239461.P12041808004721065073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A253445 (n + 1) - (n ^ 2 + n : ℤ))

end

end A239461.P12041808004721065073

noncomputable section

/-- A239461: Concatenation of n^3 and n^2.

Offset 1, canonical program `A239461.P12041808004721065073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239461 (n : ℕ) : ℤ :=
  A239461.P12041808004721065073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240502.P14660137439257369676

`A034386(n)/A055204(A028310(n))`
-/

namespace A240502.P14660137439257369676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (A055204 (A028310 n).toNat : ℚ)

end

end A240502.P14660137439257369676

noncomputable section

/-- A240502: Product of primes appearing in the factorization of n! with even exponents.

Offset 0, canonical program `A240502.P14660137439257369676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A240502 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A240502.P14660137439257369676.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A240502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244228.P12558676392616395413

`Δ[A244223(n+1)]`
-/

namespace A244228.P12558676392616395413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244228.P12558676392616395413

noncomputable section

/-- A244228: The lengths of runs in A244225, the first differences of A244223.

Offset 1, canonical program `A244228.P12558676392616395413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A244228 (n : ℕ) : ℤ :=
  A244228.P12558676392616395413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A244228.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A249166.P4963763552087285521

`floor(A235497(2*n+1)/2)+n+1`
-/

namespace A249166.P4963763552087285521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A235497 (2 * n + 1) : ℚ) / 2⌋ + (n + 1 : ℤ)

end

end A249166.P4963763552087285521

noncomputable section

/-- A249166: Odd integers concatenated with themselves.

Offset 1, canonical program `A249166.P4963763552087285521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A249166 (n : ℕ) : ℤ :=
  A249166.P4963763552087285521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A249166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250742.P16714809823875082383

`4*A131816(n)+2`
-/

namespace A250742.P16714809823875082383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A131816 n + 2

end

end A250742.P16714809823875082383

noncomputable section

/-- A250742: T(n,k) = Number of (n+1) X (k+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nonincreasing x(i,j)-x(i-1,j) in the j direction.

Offset 1, canonical program `A250742.P16714809823875082383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1450 terms. -/
def A250742 (n : ℕ) : ℤ :=
  A250742.P16714809823875082383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1450 terms. -/
def A250742.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A257804.P12788468420975431066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8433 terms. -/
def A257804 (n : ℕ) : ℤ :=
  (A257804.P12788468420975431066.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8433 terms. -/
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

/-! ## A258029.P1433885203408479246

`A139313(n+1)-A001223(A064149(n+1))`
-/

namespace A258029.P1433885203408479246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139313 (n + 1) - A001223 (A064149 (n + 1)).toNat

end

end A258029.P1433885203408479246

noncomputable section

/-- A258029: Numbers prime(k) such that D(prime(k), 3) = 0, where D( * , 3) = 3rd difference.

Offset 1, canonical program `A258029.P1433885203408479246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258029 (n : ℕ) : ℤ :=
  A258029.P1433885203408479246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258029.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A259643.P10978732131423175985

`eq[0, A262807(n+1)]+1`
-/

namespace A259643.P10978732131423175985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A259643.P10978732131423175985

noncomputable section

/-- A259643: Numbers k such that sum of first k odd primes divides product of first k odd primes.

Offset 1, canonical program `A259643.P10978732131423175985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1424 terms. -/
def A259643 (n : ℕ) : ℤ :=
  (A259643.P10978732131423175985.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1424 terms. -/
def A259643.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A276611.P18078078065825971557

`∑[char[A261227(n+1)]]`
-/

namespace A276611.P18078078065825971557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261227 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276611.P18078078065825971557

noncomputable section

/-- A276611: After a(0)=0, each n occurs A261229(n) times.

Offset 0, canonical program `A276611.P18078078065825971557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276611 (n : ℕ) : ℤ :=
  (A276611.P18078078065825971557.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276611.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A279415.P13072635906519015695

`(2-Δ[A274773(n+1)])*(1-C(n, n²))`
-/

namespace A279415.P13072635906519015695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) * (1 - (Nat.choose n (n ^ 2) : ℤ))

end

end A279415.P13072635906519015695

noncomputable section

/-- A279415: Triangle read by rows: T(n,k), n>=k>=1, is the number of right isosceles triangles with integral coordinates that have a bounding box of size n X k.

Offset 1, canonical program `A279415.P13072635906519015695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A279415 (n : ℕ) : ℤ :=
  A279415.P13072635906519015695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A279415.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A282451.P7052189223115230178

`A280411(xor(1, n))`
-/

namespace A282451.P7052189223115230178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280411 (Nat.xor 1 n)

end

end A282451.P7052189223115230178

noncomputable section

/-- A282451: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 475", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282451.P7052189223115230178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282451 (n : ℕ) : ℤ :=
  A282451.P7052189223115230178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282451.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A284263.P2360290570486179856

`A251719(n+1)-1`
-/

namespace A284263.P2360290570486179856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251719 (n + 1) - 1

end

end A284263.P2360290570486179856

noncomputable section

/-- A284263: a(n) = A252459(2*A000040(n)), a(0) = 0 by convention.

Offset 0, canonical program `A284263.P2360290570486179856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284263 (n : ℕ) : ℤ :=
  A284263.P2360290570486179856.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284263.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A290230.P10636525088049313073

`or(A051049(n), A288811(n))`
-/

namespace A290230.P10636525088049313073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A288811 n)

end

end A290230.P10636525088049313073

noncomputable section

/-- A290230: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290230.P10636525088049313073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290230 (n : ℕ) : ℤ :=
  A290230.P10636525088049313073.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292611.P2392908135108116771

`C(A189151(n+1), 2)`
-/

namespace A292611.P2392908135108116771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A189151 (n + 1)).toNat 2

end

end A292611.P2392908135108116771

noncomputable section

/-- A292611: Skip 3 triangle numbers, take 1 triangle number, skip 4 triangle numbers, take 2 triangle numbers, skip 5 triangle numbers, take 3 triangle numbers, ...

Offset 1, canonical program `A292611.P2392908135108116771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292611 (n : ℕ) : ℤ :=
  (A292611.P2392908135108116771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295661.P311646455530732485

`lt[1, A056191(n+1)]+1`
-/

namespace A295661.P311646455530732485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A295661.P311646455530732485

noncomputable section

/-- A295661: Numbers with at least one odd exponent larger than one in their prime factorization.

Offset 1, canonical program `A295661.P311646455530732485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A295661 (n : ℕ) : ℤ :=
  (A295661.P311646455530732485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A295661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304337.P3685069978609455408

`A133256(A253146(n+1))`
-/

namespace A304337.P3685069978609455408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A253146 (n + 1)).toNat

end

end A304337.P3685069978609455408

noncomputable section

/-- A304337: Lexicographically earliest fractal-like sequence such that the erasure of all pairs of contiguous terms of opposite parity leaves the sequence unchanged.

Offset 1, canonical program `A304337.P3685069978609455408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A304337 (n : ℕ) : ℤ :=
  A304337.P3685069978609455408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A304337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305006.P10100576833363132034

`lcm((n+1)², A326238(n+1))/A162395(n+1)`
-/

namespace A305006.P10100576833363132034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n + 1) ^ 2 : ℤ) (A326238 (n + 1)) : ℚ) / (A162395 (n + 1) : ℚ)

end

end A305006.P10100576833363132034

noncomputable section

/-- A305006: Numerators of coefficients in expansion of Sum_{k>=1} x^k/(k*(1 + x^k)).

Offset 1, canonical program `A305006.P10100576833363132034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305006 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A305006.P10100576833363132034.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305721.P5842318793537541038

`∑[A019563(n)]`
-/

namespace A305721.P5842318793537541038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305721.P5842318793537541038

noncomputable section

/-- A305721: Crystal ball sequence for the lattice C_7.

Offset 0, canonical program `A305721.P5842318793537541038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305721 (n : ℕ) : ℤ :=
  A305721.P5842318793537541038.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308127.P13327846023797537183

`lt[A336564(n+2), 0]+2`
-/

namespace A308127.P13327846023797537183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A308127.P13327846023797537183

noncomputable section

/-- A308127: Non-coreful abundant numbers: numbers k such that ncsigma(k) > k, where ncsigma(k) is the sum of the non-coreful divisors of k (A308135).

Offset 1, canonical program `A308127.P13327846023797537183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. -/
def A308127 (n : ℕ) : ℤ :=
  (A308127.P13327846023797537183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. -/
def A308127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309720.P3653890474350407193

`A096379(eq[A036263(n+1), A054541(n+1)])`
-/

namespace A309720.P3653890474350407193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A309720.P3653890474350407193

noncomputable section

/-- A309720: Numbers of the form p+q-r = q+r-s where p < q < r < s are consecutive primes.

Offset 1, canonical program `A309720.P3653890474350407193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A309720 (n : ℕ) : ℤ :=
  A309720.P3653890474350407193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A309720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313202.P16962560134668645847

`A004396(n)+A313053(n)-A004525(n)`
-/

namespace A313202.P16962560134668645847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313053 n - A004525 n)

end

end A313202.P16962560134668645847

noncomputable section

/-- A313202: Coordination sequence Gal.4.96.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313202.P16962560134668645847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A313202 (n : ℕ) : ℤ :=
  A313202.P16962560134668645847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A313202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313525.P8743535936701336269

`2*A313506(n)-A313476(n)`
-/

namespace A313525.P8743535936701336269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313506 n - A313476 n

end

end A313525.P8743535936701336269

noncomputable section

/-- A313525: Coordination sequence Gal.6.249.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313525.P8743535936701336269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313525 (n : ℕ) : ℤ :=
  A313525.P8743535936701336269.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313565.P15751569244382166249

`A313144(n)+A128834(n)`
-/

namespace A313565.P15751569244382166249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313144 n + A128834 n

end

end A313565.P15751569244382166249

noncomputable section

/-- A313565: Coordination sequence Gal.5.219.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313565.P15751569244382166249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A313565 (n : ℕ) : ℤ :=
  A313565.P15751569244382166249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A313565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313682.P7898542429883627702

`A047263(n+1)+A313476(n)-n`
-/

namespace A313682.P7898542429883627702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A313476 n - (n : ℤ))

end

end A313682.P7898542429883627702

noncomputable section

/-- A313682: Coordination sequence Gal.5.55.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313682.P7898542429883627702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A313682 (n : ℕ) : ℤ :=
  A313682.P7898542429883627702.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A313682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313698.P13755199689401812010

`A313251(n)+A128834(n)`
-/

namespace A313698.P13755199689401812010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A128834 n

end

end A313698.P13755199689401812010

noncomputable section

/-- A313698: Coordination sequence Gal.6.157.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313698.P13755199689401812010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313698 (n : ℕ) : ℤ :=
  A313698.P13755199689401812010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313736.P16871043691306963978

`A313053(n)+A004396(A004396(n))`
-/

namespace A313736.P16871043691306963978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 n + A004396 (A004396 n).toNat

end

end A313736.P16871043691306963978

noncomputable section

/-- A313736: Coordination sequence Gal.6.363.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313736.P16871043691306963978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A313736 (n : ℕ) : ℤ :=
  A313736.P16871043691306963978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A313736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313853.P5161189615059206870

`A313246(n)+A128834(A004525(n))`
-/

namespace A313853.P5161189615059206870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n + A128834 (A004525 n).toNat

end

end A313853.P5161189615059206870

noncomputable section

/-- A313853: Coordination sequence Gal.6.156.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313853.P5161189615059206870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. -/
def A313853 (n : ℕ) : ℤ :=
  A313853.P5161189615059206870.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. -/
def A313853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313922.P17676570645266848054

`A313246(n)+A004525(n)`
-/

namespace A313922.P17676570645266848054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n + A004525 n

end

end A313922.P17676570645266848054

noncomputable section

/-- A313922: Coordination sequence Gal.6.356.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313922.P17676570645266848054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A313922 (n : ℕ) : ℤ :=
  A313922.P17676570645266848054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A313922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313924.P10563583441028807303

`A313251(n)+A004525(n)`
-/

namespace A313924.P10563583441028807303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A004525 n

end

end A313924.P10563583441028807303

noncomputable section

/-- A313924: Coordination sequence Gal.6.626.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313924.P10563583441028807303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A313924 (n : ℕ) : ℤ :=
  A313924.P10563583441028807303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A313924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313956.P5999280833725996003

`2*A313875(n)-A313782(n)`
-/

namespace A313956.P5999280833725996003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313875 n - A313782 n

end

end A313956.P5999280833725996003

noncomputable section

/-- A313956: Coordination sequence Gal.6.652.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313956.P5999280833725996003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A313956 (n : ℕ) : ℤ :=
  A313956.P5999280833725996003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A313956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314020.P15849566854326766126

`A313476(n)+Δ[A011858(n)]`
-/

namespace A314020.P15849566854326766126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n + (f1 (n + 1) - f1 n)

end

end A314020.P15849566854326766126

noncomputable section

/-- A314020: Coordination sequence Gal.6.247.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314020.P15849566854326766126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2392 terms. -/
def A314020 (n : ℕ) : ℤ :=
  A314020.P15849566854326766126.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2392 terms. -/
def A314020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314203.P8872604243500081186

`A265227(n+1)+A313476(n)-n`
-/

namespace A314203.P8872604243500081186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + (A313476 n - (n : ℤ))

end

end A314203.P8872604243500081186

noncomputable section

/-- A314203: Coordination sequence Gal.5.88.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314203.P8872604243500081186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A314203 (n : ℕ) : ℤ :=
  A314203.P8872604243500081186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A314203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314220.P5659571598859034226

`A313053(n)+n`
-/

namespace A314220.P5659571598859034226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 n + (n : ℤ)

end

end A314220.P5659571598859034226

noncomputable section

/-- A314220: Coordination sequence Gal.5.306.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314220.P5659571598859034226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A314220 (n : ℕ) : ℤ :=
  A314220.P5659571598859034226.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A314220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314899.P7105760915525544627

`A004525(n)+A314841(n)-A004396(A004525(n))`
-/

namespace A314899.P7105760915525544627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314841 n - A004396 (A004525 n).toNat)

end

end A314899.P7105760915525544627

noncomputable section

/-- A314899: Coordination sequence Gal.6.153.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314899.P7105760915525544627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A314899 (n : ℕ) : ℤ :=
  A314899.P7105760915525544627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A314899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314912.P18076292877621533634

`A004525(n)+A314841(n)-A004525(A004396(n))`
-/

namespace A314912.P18076292877621533634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314841 n - A004525 (A004396 n).toNat)

end

end A314912.P18076292877621533634

noncomputable section

/-- A314912: Coordination sequence Gal.6.195.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314912.P18076292877621533634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A314912 (n : ℕ) : ℤ :=
  A314912.P18076292877621533634.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A314912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315266.P7852260397978347680

`A314841(n)+A004525(n)`
-/

namespace A315266.P7852260397978347680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + A004525 n

end

end A315266.P7852260397978347680

noncomputable section

/-- A315266: Coordination sequence Gal.6.205.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315266.P7852260397978347680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A315266 (n : ℕ) : ℤ :=
  A315266.P7852260397978347680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A315266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315275.P16320743547030048239

`A330025(n)+A314972(n)`
-/

namespace A315275.P16320743547030048239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314972 n

end

end A315275.P16320743547030048239

noncomputable section

/-- A315275: Coordination sequence Gal.6.329.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315275.P16320743547030048239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. -/
def A315275 (n : ℕ) : ℤ :=
  A315275.P16320743547030048239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. -/
def A315275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315399.P10081948034211585204

`abs(A008592(n)-A313292(n))`
-/

namespace A315399.P10081948034211585204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313292 n|

end

end A315399.P10081948034211585204

noncomputable section

/-- A315399: Coordination sequence Gal.4.43.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315399.P10081948034211585204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315399 (n : ℕ) : ℤ :=
  A315399.P10081948034211585204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315412.P16716451552511901256

`abs(A008592(n)-A313255(n))`
-/

namespace A315412.P16716451552511901256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313255 n|

end

end A315412.P16716451552511901256

noncomputable section

/-- A315412: Coordination sequence Gal.5.141.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315412.P16716451552511901256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315412 (n : ℕ) : ℤ :=
  A315412.P16716451552511901256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315455.P3215631304142781688

`A313891(n)+A128834(n)`
-/

namespace A315455.P3215631304142781688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 n + A128834 n

end

end A315455.P3215631304142781688

noncomputable section

/-- A315455: Coordination sequence Gal.6.208.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315455.P3215631304142781688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315455 (n : ℕ) : ℤ :=
  A315455.P3215631304142781688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315468.P18044790226856226141

`A314972(n)+A253262(n)`
-/

namespace A315468.P18044790226856226141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314972 n + A253262 n

end

end A315468.P18044790226856226141

noncomputable section

/-- A315468: Coordination sequence Gal.5.300.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315468.P18044790226856226141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A315468 (n : ℕ) : ℤ :=
  A315468.P18044790226856226141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A315468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315481.P74549118950222558

`A330025(n)+A313782(n)`
-/

namespace A315481.P74549118950222558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313782 n

end

end A315481.P74549118950222558

noncomputable section

/-- A315481: Coordination sequence Gal.5.139.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315481.P74549118950222558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A315481 (n : ℕ) : ℤ :=
  A315481.P74549118950222558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A315481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315512.P16857491610922492177

`A315246(n)+∑[A021913(n)]`
-/

namespace A315512.P16857491610922492177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315246 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315512.P16857491610922492177

noncomputable section

/-- A315512: Coordination sequence Gal.6.626.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315512.P16857491610922492177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315512 (n : ℕ) : ℤ :=
  A315512.P16857491610922492177.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315527.P15376779248736554616

`A314841(n)+n`
-/

namespace A315527.P15376779248736554616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + (n : ℤ)

end

end A315527.P15376779248736554616

noncomputable section

/-- A315527: Coordination sequence Gal.6.638.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315527.P15376779248736554616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2107 terms. -/
def A315527 (n : ℕ) : ℤ :=
  A315527.P15376779248736554616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2107 terms. -/
def A315527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315630.P1935897935145256014

`2*A313476(n)-A008574(n)`
-/

namespace A315630.P1935897935145256014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313476 n - A008574 n

end

end A315630.P1935897935145256014

noncomputable section

/-- A315630: Coordination sequence Gal.6.233.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315630.P1935897935145256014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A315630 (n : ℕ) : ℤ :=
  A315630.P1935897935145256014.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A315630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315680.P2686874256871590290

`A315463(n)+A004396(n-A004396(n))`
-/

namespace A315680.P2686874256871590290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315463 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315680.P2686874256871590290

noncomputable section

/-- A315680: Coordination sequence Gal.5.89.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315680.P2686874256871590290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2300 terms. -/
def A315680 (n : ℕ) : ℤ :=
  A315680.P2686874256871590290.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2300 terms. -/
def A315680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315681.P15551591667760656861

`A004525(n)+A315670(n)-A004525(A004396(n))`
-/

namespace A315681.P15551591667760656861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315670 n - A004525 (A004396 n).toNat)

end

end A315681.P15551591667760656861

noncomputable section

/-- A315681: Coordination sequence Gal.6.159.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315681.P15551591667760656861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315681 (n : ℕ) : ℤ :=
  A315681.P15551591667760656861.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315684.P8057506164725959055

`A313476(n)+n`
-/

namespace A315684.P8057506164725959055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n + (n : ℤ)

end

end A315684.P8057506164725959055

noncomputable section

/-- A315684: Coordination sequence Gal.5.291.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315684.P8057506164725959055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A315684 (n : ℕ) : ℤ :=
  A315684.P8057506164725959055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A315684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315700.P8415465502126498151

`abs(11*n-A313891(n))`
-/

namespace A315700.P8415465502126498151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - A313891 n|

end

end A315700.P8415465502126498151

noncomputable section

/-- A315700: Coordination sequence Gal.6.638.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315700.P8415465502126498151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315700 (n : ℕ) : ℤ :=
  A315700.P8415465502126498151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315761.P1947908363640495384

`A330025(n)+A314252(n)`
-/

namespace A315761.P1947908363640495384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314252 n

end

end A315761.P1947908363640495384

noncomputable section

/-- A315761: Coordination sequence Gal.5.295.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315761.P1947908363640495384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2186 terms. -/
def A315761 (n : ℕ) : ℤ :=
  A315761.P1947908363640495384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2186 terms. -/
def A315761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315768.P5080605822707988904

`A314208(n)+A004525(n)`
-/

namespace A315768.P5080605822707988904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314208 n + A004525 n

end

end A315768.P5080605822707988904

noncomputable section

/-- A315768: Coordination sequence Gal.6.628.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315768.P5080605822707988904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315768 (n : ℕ) : ℤ :=
  A315768.P5080605822707988904.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316717.P5515055320797680457

`A014081(eq[0, and(n, 2*and(n, 2*n))])`
-/

namespace A316717.P5515055320797680457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * Nat.land n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A316717.P5515055320797680457

noncomputable section

/-- A316717: a(n) is the number of 3s in A316713(n). That is, a(n) is the number of C-sequences (A278041) used in the tribonacci ABC-representation of n >= 0.

Offset 0, canonical program `A316717.P5515055320797680457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316717 (n : ℕ) : ℤ :=
  A316717.P5515055320797680457.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316831.P2741381390933968218

`A046819(a(floor(n/2))+n%2)` with `a(0)=0, a(1)=1`
-/

namespace A316831.P2741381390933968218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A046819 (a ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)).toNat

end

end A316831.P2741381390933968218

noncomputable section

/-- A316831: Trajectory of 0 under repeated application of the morphism 0 -> 01, 1 -> 21, 2 -> 13, 3 -> 33.

Offset 0, canonical program `A316831.P2741381390933968218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316831 (n : ℕ) : ℤ :=
  A316831.P2741381390933968218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316844.P16115526743851967488

`A056557(lt[A056559(n), A056558(n)])`
-/

namespace A316844.P16115526743851967488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316844.P16115526743851967488

noncomputable section

/-- A316844: Column 2 of table A316841.

Offset 1, canonical program `A316844.P16115526743851967488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316844 (n : ℕ) : ℤ :=
  A316844.P16115526743851967488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316845.P7291579847746609250

`A056558(lt[A056559(n), A056558(n)])`
-/

namespace A316845.P7291579847746609250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316845.P7291579847746609250

noncomputable section

/-- A316845: Column 3 of table A316841.

Offset 1, canonical program `A316845.P7291579847746609250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316845 (n : ℕ) : ℤ :=
  A316845.P7291579847746609250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317189.P4789240492486274008

`5%(A316826(n)+1)`
-/

namespace A317189.P4789240492486274008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A316826 n + 1)

end

end A317189.P4789240492486274008

noncomputable section

/-- A317189: A morphic sequence related to the ternary Thue-Morse sequence.

Offset 0, canonical program `A317189.P4789240492486274008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317189 (n : ℕ) : ℤ :=
  A317189.P4789240492486274008.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317933.P9961828793587788294

`A046643(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A317933.P9961828793587788294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A317933.P9961828793587788294

noncomputable section

/-- A317933: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A034444 (number of unitary divisors of n).

Offset 1, canonical program `A317933.P9961828793587788294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317933 (n : ℕ) : ℤ :=
  A317933.P9961828793587788294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317950.P649723107157043023

`Δ[abs(1-A317198(n))]`
-/

namespace A317950.P649723107157043023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A317198 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317950.P649723107157043023

noncomputable section

/-- A317950: First differences of ternary tribonacci word A080843.

Offset 0, canonical program `A317950.P649723107157043023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317950 (n : ℕ) : ℤ :=
  A317950.P649723107157043023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318313.P9581478745777910388

`A046643(lcm(A000188(n+1), A006519(n+1)))`
-/

namespace A318313.P9581478745777910388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (Int.lcm (A000188 (n + 1)) (A006519 (n + 1)))

end

end A318313.P9581478745777910388

noncomputable section

/-- A318313: Numerators of the sequence whose Dirichlet convolution with itself yields A068068, number of odd unitary divisors of n.

Offset 1, canonical program `A318313.P9581478745777910388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318313 (n : ℕ) : ℤ :=
  A318313.P9581478745777910388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318449.P14690494041851434724

`A046643((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A318449.P14690494041851434724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat

end

end A318449.P14690494041851434724

noncomputable section

/-- A318449: Numerators of the sequence whose Dirichlet convolution with itself yields A001511, the 2-adic valuation of 2n.

Offset 1, canonical program `A318449.P14690494041851434724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318449 (n : ℕ) : ℤ :=
  A318449.P14690494041851434724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320515.P891390049597261690

`record[A007913(A320514(n+2))]`
-/

namespace A320515.P891390049597261690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A320514 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320515.P891390049597261690

noncomputable section

/-- A320515: Squarefree k > 1 with sigma(sigma(k)) < 2*k + 1.

Offset 1, canonical program `A320515.P891390049597261690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3608 terms. -/
def A320515 (n : ℕ) : ℤ :=
  A320515.P891390049597261690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3608 terms. -/
def A320515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323466.P8596251984879986670

`A005811(n+1)+A014081(n+1)+1`
-/

namespace A323466.P8596251984879986670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1) + (A014081 (n + 1) + 1)

end

end A323466.P8596251984879986670

noncomputable section

/-- A323466: Number of terms in row n of A323465.

Offset 1, canonical program `A323466.P8596251984879986670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A323466 (n : ℕ) : ℤ :=
  A323466.P8596251984879986670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A323466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323952.P1977647580741173646

`A130296(n+1)+A095834(A028310(n))`
-/

namespace A323952.P1977647580741173646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) + A095834 (A028310 n).toNat

end

end A323952.P1977647580741173646

noncomputable section

/-- A323952: Regular triangle read by rows where if k > 1 then T(n, k) is the number of connected subgraphs of an n-cycle with any number of vertices other than 2 through k - 1, n >= 1, 1 <= k <= n - 1. Otherwise T(n, 1) = n.

Offset 1, canonical program `A323952.P1977647580741173646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A323952 (n : ℕ) : ℤ :=
  A323952.P1977647580741173646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A323952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324470.P11516600818281016258

`∑[2-A317198(n)]`
-/

namespace A324470.P11516600818281016258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A317198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324470.P11516600818281016258

noncomputable section

/-- A324470: Partial sums of ternary tribonacci word A092782.

Offset 1, canonical program `A324470.P11516600818281016258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324470 (n : ℕ) : ℤ :=
  A324470.P11516600818281016258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324639.P17877870540520381496

`eq[(A318466(n+1)-A318467(n+1))/2, A318458(n+1)]+1`
-/

namespace A324639.P17877870540520381496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318466 (n + 1) - A318467 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A324639.P17877870540520381496

noncomputable section

/-- A324639: Numbers k such that bitand(2k,sigma(k)) = 2*bitand(k,sigma(k)-k), where bitand is bitwise-AND, A004198.

Offset 1, canonical program `A324639.P17877870540520381496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 872 terms. -/
def A324639 (n : ℕ) : ℤ :=
  (A324639.P17877870540520381496.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 872 terms. -/
def A324639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327217.P245651097107119372

`lt[n*A327216(n), n]`
-/

namespace A327217.P245651097107119372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327216 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327217.P245651097107119372

noncomputable section

/-- A327217: Positions of 0's in {A327216(n) : n > 0}.

Offset 1, canonical program `A327217.P245651097107119372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A327217 (n : ℕ) : ℤ :=
  (A327217.P245651097107119372.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A327217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327218.P13898235747039253329

`A327176(n+1)-A327174(A327176(n+1)+1)`
-/

namespace A327218.P13898235747039253329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327176 (n + 1) - A327174 (A327176 (n + 1) + 1).toNat

end

end A327218.P13898235747039253329

noncomputable section

/-- A327218: Positions of 1's in {A327216(n) : n > 0}.

Offset 1, canonical program `A327218.P13898235747039253329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327218 (n : ℕ) : ℤ :=
  A327218.P13898235747039253329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327224.P10926925885471084677

`A327207(n+1)-A327205(A327207(n+2)-3)`
-/

namespace A327224.P10926925885471084677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327207 (n + 1) - A327205 (A327207 (n + 2) - 3).toNat

end

end A327224.P10926925885471084677

noncomputable section

/-- A327224: Positions of 1's in {A327222(k) : n > 0}.

Offset 1, canonical program `A327224.P10926925885471084677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327224 (n : ℕ) : ℤ :=
  A327224.P10926925885471084677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329688.P15403590587362411359

`A329686(A042965(n+1))`
-/

namespace A329688.P15403590587362411359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329686 (A042965 (n + 1)).toNat

end

end A329688.P15403590587362411359

noncomputable section

/-- A329688: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU, HH, HD and DU.

Offset 0, canonical program `A329688.P15403590587362411359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A329688 (n : ℕ) : ℤ :=
  A329688.P15403590587362411359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A329688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330561.P8312419357431212609

`n-A330560(n+1)`
-/

namespace A330561.P8312419357431212609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A330560 (n + 1)

end

end A330561.P8312419357431212609

noncomputable section

/-- A330561: a(n) = number of primes p <= prime(n) with Delta(p) == 0 (mod 4), where Delta(p) = nextprime(p) - p.

Offset 1, canonical program `A330561.P8312419357431212609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330561 (n : ℕ) : ℤ :=
  A330561.P8312419357431212609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330933.P1547525484770531212

`∩[A330932(n+1)-1, A330932(n+1)]`
-/

namespace A330933.P1547525484770531212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330932 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330933.P1547525484770531212

noncomputable section

/-- A330933: Starts of runs of 4 consecutive Niven numbers in base 2 (A049445).

Offset 1, canonical program `A330933.P1547525484770531212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A330933 (n : ℕ) : ℤ :=
  (A330933.P1547525484770531212.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A330933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331830.P3749508068268674475

`A268272(eq[1, A268272(n+1)-A268272(n)])`
-/

namespace A331830.P3749508068268674475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 (n + 1) - A268272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331830.P3749508068268674475

noncomputable section

/-- A331830: Numbers k such that k and k + 1 are both negabinary evil numbers.

Offset 1, canonical program `A331830.P3749508068268674475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A331830 (n : ℕ) : ℤ :=
  A331830.P3749508068268674475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A331830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331831.P1834665176300229750

`record[A141310(A268272(A004442(n)))]`
-/

namespace A331831.P1834665176300229750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A268272 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331831.P1834665176300229750

noncomputable section

/-- A331831: Numbers k such that k and k + 1 are both negabinary odious numbers.

Offset 1, canonical program `A331831.P1834665176300229750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A331831 (n : ℕ) : ℤ :=
  A331831.P1834665176300229750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A331831.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140773.P9739347816414512295

`(A007425(n+1)+A046951(n+1))/2`
-/

namespace A140773.P9739347816414512295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007425 (n + 1) + A046951 (n + 1) : ℚ) / 2

end

end A140773.P9739347816414512295

noncomputable section

/-- A140773: Consider the products of all pairs of (not necessarily distinct) positive divisors of n. a(n) is the number of these products that divide n. a(n) also is the number of the products that are divisible by n.

Offset 1, canonical program `A140773.P9739347816414512295`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140773 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140773.P9739347816414512295.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140773.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A141701.P8211479873156200797

`∑{d}[A126988(n+1), A120007(#)]`
-/

namespace A141701.P8211479873156200797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A120007 d

end

end A141701.P8211479873156200797

noncomputable section

/-- A141701: Triangle read by rows: A001414 interleaved with (k-1) zeros.

Offset 1, canonical program `A141701.P8211479873156200797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A141701 (n : ℕ) : ℤ :=
  A141701.P8211479873156200797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A141701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142085.P16460279008080382848

`∪[A140841(n+1), A141570(n+1)]`
-/

namespace A142085.P16460279008080382848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P16460279008080382848

noncomputable section

/-- A142085: Primes congruent to 13 mod 35.

Offset 1, canonical program `A142085.P16460279008080382848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142085 (n : ℕ) : ℤ :=
  (A142085.P16460279008080382848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142339.P3986988199601511842

`p?[A087461(n+2)-A000040(n+2)]`
-/

namespace A142339.P3986988199601511842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2) - A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142339.P3986988199601511842

noncomputable section

/-- A142339: Primes of the form (p(2*n)-p(n))/2, where p(n)=n-th prime.

Offset 1, canonical program `A142339.P3986988199601511842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A142339 (n : ℕ) : ℤ :=
  A142339.P3986988199601511842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A142339.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143086.P9163126404409703882

`A126646(A004197(n))`
-/

namespace A143086.P9163126404409703882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A004197 n).toNat

end

end A143086.P9163126404409703882

noncomputable section

/-- A143086: Triangle read by rows: T(n,k) = 2^(k + 1) - 1 if k < = floor(n/2), otherwise 2^(n - k + 1) - 1, for 0 <= k <= n.

Offset 0, canonical program `A143086.P9163126404409703882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143086 (n : ℕ) : ℤ :=
  A143086.P9163126404409703882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143110.P1100247901521213873

`A143425(n+1)%3`
-/

namespace A143110.P1100247901521213873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143425 (n + 1)) 3

end

end A143110.P1100247901521213873

noncomputable section

/-- A143110: Triangle read by rows, A051731 * A000034 * 0^(n-k), 1<=k<=n.

Offset 1, canonical program `A143110.P1100247901521213873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143110 (n : ℕ) : ℤ :=
  A143110.P1100247901521213873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143187.P15464511713782995700

`A028310(lcm(2, A004197(n)))`
-/

namespace A143187.P15464511713782995700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lcm 2 (A004197 n))

end

end A143187.P15464511713782995700

noncomputable section

/-- A143187: Triangle read by rows: T(n, k) = f(k) for 1 <= k <= floor(n/2), T(n, k) = f(n-k) for floor(n/2) < k <= n-1, with T(n, 0) = 1, T(n, n) = 1, and f(k) = (1/2)*(3 - (-1)^k)*k.

Offset 0, canonical program `A143187.P15464511713782995700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143187 (n : ℕ) : ℤ :=
  A143187.P15464511713782995700.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143199.P5401882570097877984

`A143198(A057944(n)+A004197(n))`
-/

namespace A143199.P5401882570097877984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143198 (A057944 n + A004197 n).toNat

end

end A143199.P5401882570097877984

noncomputable section

/-- A143199: Triangle read by rows: T(n, k) = (n+1)*A000096(k-1) + n if k <= floor(n/2), otherwise T(n, k) = (n+1)*A000096(n-k-1) + n.

Offset 0, canonical program `A143199.P5401882570097877984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143199 (n : ℕ) : ℤ :=
  A143199.P5401882570097877984.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143199.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143593.P13769069135629193761

`A022998(A143956(n+1))`
-/

namespace A143593.P13769069135629193761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A143956 (n + 1)).toNat

end

end A143593.P13769069135629193761

noncomputable section

/-- A143593: Triangle read by rows, square of A238303 (an infinite lower triangular matrix with 1's in the first column and the rest 2's).

Offset 1, canonical program `A143593.P13769069135629193761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143593 (n : ℕ) : ℤ :=
  A143593.P13769069135629193761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143593.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144464.P14632589415150791803

`2^A004197(n)`
-/

namespace A144464.P14632589415150791803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004197 n : ℤ)

end

end A144464.P14632589415150791803

noncomputable section

/-- A144464: Triangle T(n,m) read by rows: T(n,m) = 2^min(m,n-m).

Offset 0, canonical program `A144464.P14632589415150791803`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144464 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144464.P14632589415150791803.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144464.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A147813.P1679973090657813842

`A000040(A333230(n+1))`
-/

namespace A147813.P1679973090657813842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A333230 (n + 1)).toNat

end

end A147813.P1679973090657813842

noncomputable section

/-- A147813: Primes prime(n) such that (-prime(n) + 2*prime(n+1) - prime(n+2))/((1 - prime(n) + prime(n+1))^(3/2)) < 0.

Offset 1, canonical program `A147813.P1679973090657813842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5252 terms. -/
def A147813 (n : ℕ) : ℤ :=
  A147813.P1679973090657813842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5252 terms. -/
def A147813.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A152714.P9266182527036570793

`3^A004197(n)`
-/

namespace A152714.P9266182527036570793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A004197 n : ℤ)

end

end A152714.P9266182527036570793

noncomputable section

/-- A152714: Triangle read by rows: T(n,k) = 3^min(k, n-k).

Offset 0, canonical program `A152714.P9266182527036570793`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152714 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152714.P9266182527036570793.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152716.P634610165933584230

`4^A004197(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152716.P634610165933584230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A004197 n : ℤ)

end

end A152716.P634610165933584230

noncomputable section

/-- A152716: Triangle T(n,k) read by rows: T(n,k) = 4^min(k, n-k) = 4^A004197(n,k).

Offset 0, canonical program `A152716.P634610165933584230`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152716 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152716.P634610165933584230.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152716.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152717.P11772506304295409247

`5^A004197(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152717.P11772506304295409247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A004197 n : ℤ)

end

end A152717.P11772506304295409247

noncomputable section

/-- A152717: Triangle T(n,k) read by rows: T(n,k) = 5^min(k, n-k) = 5^A004197(n,k).

Offset 0, canonical program `A152717.P11772506304295409247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152717 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152717.P11772506304295409247.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152717.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153044.P8228127336685737390

`A153043(n+1)+3`
-/

namespace A153044.P8228127336685737390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 1) + 3

end

end A153044.P8228127336685737390

noncomputable section

/-- A153044: Numbers n such that 2*n-9 is not a prime.

Offset 1, canonical program `A153044.P8228127336685737390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153044 (n : ℕ) : ℤ :=
  A153044.P8228127336685737390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153044.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A153053.P11375225491096847210

`A153052(n+1)-1`
-/

namespace A153053.P11375225491096847210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1) - 1

end

end A153053.P11375225491096847210

noncomputable section

/-- A153053: Numbers j such that 2*j + 7 is not a prime.

Offset 1, canonical program `A153053.P11375225491096847210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153053 (n : ℕ) : ℤ :=
  A153053.P11375225491096847210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153210.P15842624019466504602

`p?[2*A049098(n+1)+1]`
-/

namespace A153210.P15842624019466504602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049098 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153210.P15842624019466504602

noncomputable section

/-- A153210: Primes of the form 2*p+1 where p is prime and p+1 is not squarefree.

Offset 1, canonical program `A153210.P15842624019466504602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1328 terms. -/
def A153210 (n : ℕ) : ℤ :=
  A153210.P15842624019466504602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1328 terms. -/
def A153210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153238.P13831251492164971693

`A153052(n+1)+1`
-/

namespace A153238.P13831251492164971693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1) + 1

end

end A153238.P13831251492164971693

noncomputable section

/-- A153238: Numbers k such that 2*k + 3 is composite.

Offset 1, canonical program `A153238.P13831251492164971693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153238 (n : ℕ) : ℤ :=
  A153238.P13831251492164971693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155069.P2113503701719238828

`abs(A086456(n))`
-/

namespace A155069.P2113503701719238828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086456 n|

end

end A155069.P2113503701719238828

noncomputable section

/-- A155069: Expansion of (3 - x - sqrt(1 - 6*x + x^2))/2.

Offset 0, canonical program `A155069.P2113503701719238828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A155069 (n : ℕ) : ℤ :=
  A155069.P2113503701719238828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A155069.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A155943.P14210588904046408266

`p?[2*A105135(n+1)+1]`
-/

namespace A155943.P14210588904046408266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105135 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155943.P14210588904046408266

noncomputable section

/-- A155943: Primes p such that 16*p + 1 is also prime.

Offset 1, canonical program `A155943.P14210588904046408266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1264 terms. -/
def A155943 (n : ℕ) : ℤ :=
  A155943.P14210588904046408266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1264 terms. -/
def A155943.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A156543.P5898804048182279516

`eq[0, A156542(n+1)]+1`
-/

namespace A156543.P5898804048182279516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156542 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A156543.P5898804048182279516

noncomputable section

/-- A156543: Multiplicative closure of primes that are not Sophie Germain primes (A053176).

Offset 1, canonical program `A156543.P5898804048182279516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1777 terms. -/
def A156543 (n : ℕ) : ℤ :=
  (A156543.P5898804048182279516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1777 terms. -/
def A156543.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A156874.P3410723949972869260

`∑[A156660(n+1)]`
-/

namespace A156874.P3410723949972869260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156874.P3410723949972869260

noncomputable section

/-- A156874: Number of Sophie Germain primes <= n.

Offset 1, canonical program `A156874.P3410723949972869260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156874 (n : ℕ) : ℤ :=
  A156874.P3410723949972869260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156874.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A157219.P8471988911864010731

`C(A003056(n)*A004197(n), A004197(n))`
-/

namespace A157219.P8471988911864010731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n * A004197 n).toNat (A004197 n).toNat

end

end A157219.P8471988911864010731

noncomputable section

/-- A157219: Triangle T(n, k) = binomial(n*f(n,k), f(n,k)), where f(n, k) = k if k <= floor(n/2) otherwise n-k, read by rows.

Offset 0, canonical program `A157219.P8471988911864010731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A157219 (n : ℕ) : ℤ :=
  (A157219.P8471988911864010731.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A157219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158902.P4390019292788329709

`A158906(n+1)+A152770(A130296(n+1))`
-/

namespace A158902.P4390019292788329709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158906 (n + 1) + A152770 (A130296 (n + 1)).toNat

end

end A158902.P4390019292788329709

noncomputable section

/-- A158902: Triangle read by rows: the matrix product A051731 * A158821.

Offset 1, canonical program `A158902.P4390019292788329709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158902 (n : ℕ) : ℤ :=
  A158902.P4390019292788329709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158902.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A160951.P2640926693166453273

`p?[A105760(n+1)-574]`
-/

namespace A160951.P2640926693166453273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1) - 574

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160951.P2640926693166453273

noncomputable section

/-- A160951: Primes p such that 2p + 1155 is prime.

Offset 1, canonical program `A160951.P2640926693166453273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A160951 (n : ℕ) : ℤ :=
  A160951.P2640926693166453273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A160951.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A162341.P14188834232834760692

`A115061(A233583(1+n))-A165326(n)`
-/

namespace A162341.P14188834232834760692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (A233583 (1 + n)).toNat - A165326 n

end

end A162341.P14188834232834760692

noncomputable section

/-- A162341: a(n) = number of grid points P(x,y) that are covered by a polyedge as the graph of the "mountain path" function for prime numbers, where x=n and y=0..oo.

Offset 0, canonical program `A162341.P14188834232834760692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A162341 (n : ℕ) : ℤ :=
  A162341.P14188834232834760692.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A162341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162417.P3385297954225530343

`2*(n+2)-A058043(n+2)`
-/

namespace A162417.P3385297954225530343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A058043 (n + 2)

end

end A162417.P3385297954225530343

noncomputable section

/-- A162417: Find max {primes such that p < n^2, n = 2,3,...}, then the gap g(n) between that prime and its successor. This sequence is the sequence of differences {2n - g(n)}.

Offset 2, canonical program `A162417.P3385297954225530343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162417 (n : ℕ) : ℤ :=
  A162417.P3385297954225530343.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162417.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162514.P8715730541407026886

`abs(A133607(n)+A108299(n))`
-/

namespace A162514.P8715730541407026886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133607 n + A108299 n|

end

end A162514.P8715730541407026886

noncomputable section

/-- A162514: Triangle of coefficients of polynomials defined by the Binet form P(n,x) = U^n + L^n, where U = (x + d)/2, L = (x - d)/2, d = (4 + x^2)^(1/2). Decreasing powers of x.

Offset 0, canonical program `A162514.P8715730541407026886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162514 (n : ℕ) : ℤ :=
  A162514.P8715730541407026886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162514.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A163769.P6265540848864808962

`p?[gcd(n, A156707(n+1))]`
-/

namespace A163769.P6265540848864808962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A156707 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A163769.P6265540848864808962

noncomputable section

/-- A163769: Primes p such that 2*p+3 is not prime.

Offset 1, canonical program `A163769.P6265540848864808962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3828 terms. -/
def A163769 (n : ℕ) : ℤ :=
  (A163769.P6265540848864808962.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3828 terms. -/
def A163769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164651.P12443161755439418697

`A026674(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A164651.P12443161755439418697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A026674 (n - 1) + a (n - 1)

end

end A164651.P12443161755439418697

noncomputable section

/-- A164651: Number of permutations of length n that avoid both 1243 and 2134.

Offset 0, canonical program `A164651.P12443161755439418697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A164651 (n : ℕ) : ℤ :=
  A164651.P12443161755439418697.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A164651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166282.P3565531868312319310

`2*A047999(n)-A167274(n)`
-/

namespace A166282.P3565531868312319310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047999 n - A167274 n

end

end A166282.P3565531868312319310

noncomputable section

/-- A166282: Matrix inverse of Sierpinski's triangle (A047999, Pascal's triangle mod 2).

Offset 0, canonical program `A166282.P3565531868312319310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166282 (n : ℕ) : ℤ :=
  A166282.P3565531868312319310.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166282.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A167172.P4528320979691283848

`A014473(n)+A004197(n)!`
-/

namespace A167172.P4528320979691283848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (Nat.factorial (A004197 n).toNat : ℤ)

end

end A167172.P4528320979691283848

noncomputable section

/-- A167172: Triangle T(n,k) read by rows: T(n,k) = binomial(n, k) + A140356(n, k) - 1.

Offset 0, canonical program `A167172.P4528320979691283848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A167172 (n : ℕ) : ℤ :=
  A167172.P4528320979691283848.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A167172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167569.P2794290920742679181

`abs(A053124(n)*A098361(n))`
-/

namespace A167569.P2794290920742679181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053124 n * A098361 n|

end

end A167569.P2794290920742679181

noncomputable section

/-- A167569: The lower left triangle of the ED2 array A167560.

Offset 1, canonical program `A167569.P2794290920742679181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A167569 (n : ℕ) : ℤ :=
  A167569.P2794290920742679181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A167569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167666.P3519015945170238925

`A185868(n+1)%A005408(A113125(n))`
-/

namespace A167666.P3519015945170238925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185868 (n + 1)) (A005408 (A113125 n).toNat)

end

end A167666.P3519015945170238925

noncomputable section

/-- A167666: Triangle read by rows given by [1,1,-4,2,0,0,0,0,0,0,0,...] DELTA [1,0,0,1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A167666.P3519015945170238925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167666 (n : ℕ) : ℤ :=
  A167666.P3519015945170238925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167666.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A173075.P2388564592646506827

`A132731(n)+1-A072405(n)`
-/

namespace A173075.P2388564592646506827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132731 n + (1 - A072405 n)

end

end A173075.P2388564592646506827

noncomputable section

/-- A173075: T(n,k) = binomial(n, k) - 1 + q^(floor(n/2))*binomial(n-2, k-1) for 0 < k < n with T(n,0) = T(n,n) = 1 and q = 1. Triangle read by rows.

Offset 0, canonical program `A173075.P2388564592646506827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A173075 (n : ℕ) : ℤ :=
  A173075.P2388564592646506827.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A173075.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A173740.P17450600128773935956

`A132737(n)-A014473(n)`
-/

namespace A173740.P17450600128773935956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132737 n - A014473 n

end

end A173740.P17450600128773935956

noncomputable section

/-- A173740: Triangle T(n,k) = binomial(n,k) + 2 for 1 <= k <= n - 1, n >= 2, and T(n,0) = T(n,n) = 1 for n >= 0, read by rows.

Offset 0, canonical program `A173740.P17450600128773935956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173740 (n : ℕ) : ℤ :=
  A173740.P17450600128773935956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174036.P15707099634806956760

`C(A008292(n+1), A004197(n))`
-/

namespace A174036.P15707099634806956760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008292 (n + 1)).toNat (A004197 n).toNat

end

end A174036.P15707099634806956760

noncomputable section

/-- A174036: Triangle read by rows: T(n,k) = 1 if k=0 or k=n, otherwise T(n,k) = binomial(Eulerian(n+1, k), min(n-k,k)).

Offset 0, canonical program `A174036.P15707099634806956760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A174036 (n : ℕ) : ℤ :=
  (A174036.P15707099634806956760.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A174036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174446.P10782928639851895883

`ceil(A132735(n)/2)`
-/

namespace A174446.P10782928639851895883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132735 n : ℚ) / 2⌉

end

end A174446.P10782928639851895883

noncomputable section

/-- A174446: Triangle T(n, k, q) = ceiling(binomial(n, k)/f(n, q)) with T(0, 0) = 1, f(n, q) = 1 + tanh((n-1)/q), and q = 1, read by rows.

Offset 0, canonical program `A174446.P10782928639851895883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174446 (n : ℕ) : ℤ :=
  A174446.P10782928639851895883.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174852.P9332735036458002118

`A010051(A144515(n)+1)`
-/

namespace A174852.P9332735036458002118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A144515 n + 1).toNat

end

end A174852.P9332735036458002118

noncomputable section

/-- A174852: Triangle T(n,k) read by rows. T(1,1)=1, n>1 T(n,1)=A049240, k>1 T(n,k)=A051731.

Offset 1, canonical program `A174852.P9332735036458002118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A174852 (n : ℕ) : ℤ :=
  A174852.P9332735036458002118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A174852.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A177227.P98995655980783552

`A132044(n)+2-A132737(n)`
-/

namespace A177227.P98995655980783552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n + (2 - A132737 n)

end

end A177227.P98995655980783552

noncomputable section

/-- A177227: Triangle, read by rows, T(n, k) = -binomial(n,k) for 0 < k < n, otherwise T(n, k) = 2.

Offset 0, canonical program `A177227.P98995655980783552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A177227 (n : ℕ) : ℤ :=
  A177227.P98995655980783552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A177227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177228.P5726255244693317150

`4-A173741(n)`
-/

namespace A177228.P5726255244693317150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A173741 n

end

end A177228.P5726255244693317150

noncomputable section

/-- A177228: Triangle read by rows: T(n, k) = -binomial(n,k) for 1 <= k <= n-1, otherwise T(n, k) = 3.

Offset 0, canonical program `A177228.P5726255244693317150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A177228 (n : ℕ) : ℤ :=
  A177228.P5726255244693317150.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A177228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178387.P5932882252809689318

`∩[p?[or(1, 7*n-1)], A164566(n+3)]`
-/

namespace A178387.P5932882252809689318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((7 * n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164566 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A178387.P5932882252809689318

noncomputable section

/-- A178387: Primes p such that q*p+-Mod(p,q) are primes, for q=7.

Offset 1, canonical program `A178387.P5932882252809689318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A178387 (n : ℕ) : ℤ :=
  (A178387.P5932882252809689318.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A178387.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A178623.P14236001565579889142

`A130296(lt[1, A143544(n+1)])`
-/

namespace A178623.P14236001565579889142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A178623.P14236001565579889142

noncomputable section

/-- A178623: Triangle T(n,m) read by rows: T(n,0)= prime(n); T(n,m)=1 if m>=1.

Offset 0, canonical program `A178623.P14236001565579889142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A178623 (n : ℕ) : ℤ :=
  A178623.P14236001565579889142.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A178623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178881.P10769260265071727443

`(A018806(n+1)-(n+1)*(n+2)/2)/2`
-/

namespace A178881.P10769260265071727443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A018806 (n + 1) : ℚ) - ((n + 1) * (n + 2) : ℚ) / 2) / 2

end

end A178881.P10769260265071727443

noncomputable section

/-- A178881: Sum of all pairs of greatest common divisors for (i,j) where 1 <= i < j <= n.

Offset 1, canonical program `A178881.P10769260265071727443`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178881 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178881.P10769260265071727443.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178881.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178931.P2043277826171487165

`eq[1, A117943(n+1)]+1`
-/

namespace A178931.P2043277826171487165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A178931.P2043277826171487165

noncomputable section

/-- A178931: This sequence S is generated by the following rules: 2 is in S, and if n is in S, then floor[(3n-1)/2] and 3n are in S.

Offset 1, canonical program `A178931.P2043277826171487165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3083 terms. -/
def A178931 (n : ℕ) : ℤ :=
  (A178931.P2043277826171487165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3083 terms. -/
def A178931.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A180637.P11947041617568078126

`dr(A179899(n+1))`
-/

namespace A180637.P11947041617568078126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A179899 (n + 1))

end

end A180637.P11947041617568078126

noncomputable section

/-- A180637: Digital root of A179899.

Offset 1, canonical program `A180637.P11947041617568078126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180637 (n : ℕ) : ℤ :=
  (A180637.P11947041617568078126.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181089.P1090113602927549719

`A060821(n)+A060821(A061579(n))`
-/

namespace A181089.P1090113602927549719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 n + A060821 (A061579 n).toNat

end

end A181089.P1090113602927549719

noncomputable section

/-- A181089: Triangle T(n, k) = A060821(n,k) + A060821(n,n-k), read by rows.

Offset 0, canonical program `A181089.P1090113602927549719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A181089 (n : ℕ) : ℤ :=
  A181089.P1090113602927549719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A181089.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A183003.P6178749893469608523

`A183002(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A183003.P6178749893469608523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183002 (n + 1) : ℚ) / 2

end

end A183003.P6178749893469608523

noncomputable section

/-- A183003: a(n) = A183002(n)/2.

Offset 1, canonical program `A183003.P6178749893469608523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183003 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A183003.P6178749893469608523.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183003.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A183096.P3962787682876171308`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091050, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183096 (n : ℕ) : ℤ :=
  A183096.P3962787682876171308.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091050, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A184048.P14701129384521830144

`2*(A183986(n+1)+A131816(n))-1`
-/

namespace A184048.P14701129384521830144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A183986 (n + 1) + A131816 n) - 1

end

end A184048.P14701129384521830144

noncomputable section

/-- A184048: T(n,k) = 1/9 the number of (n+1) X (k+1) 0..2 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184048.P14701129384521830144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A184048 (n : ℕ) : ℤ :=
  A184048.P14701129384521830144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A184048.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A187092.P9150632400778143436

`∑[A186994(n+1)]`
-/

namespace A187092.P9150632400778143436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187092.P9150632400778143436

noncomputable section

/-- A187092: Number of nonempty subsets S of {1, 2, ..., n} with pairwise coprime elements that are maximal with respect to inclusion of elements < max(S).

Offset 1, canonical program `A187092.P9150632400778143436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187092 (n : ℕ) : ℤ :=
  A187092.P9150632400778143436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187092.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190443.P6575420629787972794

`∩[A005652(n+1), A190250(n+1)]`
-/

namespace A190443.P6575420629787972794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190443.P6575420629787972794

noncomputable section

/-- A190443: Positions of 2 in A190440.

Offset 1, canonical program `A190443.P6575420629787972794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A190443 (n : ℕ) : ℤ :=
  (A190443.P6575420629787972794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A190443.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A191331.P4692217345239116527

`2*A005652(n+1)`
-/

namespace A191331.P4692217345239116527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005652 (n + 1)

end

end A191331.P4692217345239116527

noncomputable section

/-- A191331: Positions of 2 in A191329.

Offset 1, canonical program `A191331.P4692217345239116527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191331 (n : ℕ) : ℤ :=
  A191331.P4692217345239116527.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191331.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A193852.P12383301890878815459

`A193853(∑[char[∑[n]]]²-(n+1))`
-/

namespace A193852.P12383301890878815459
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193853 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A193852.P12383301890878815459

noncomputable section

/-- A193852: Triangular array: (1/2)*A193850.

Offset 0, canonical program `A193852.P12383301890878815459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A193852 (n : ℕ) : ℤ :=
  A193852.P12383301890878815459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A193852.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A198697.P858733286284913195

`A001223(∩[A233671(n+1), A258026(n+1)])`
-/

namespace A198697.P858733286284913195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A198697.P858733286284913195

noncomputable section

/-- A198697: Values of local maxima in differences of primes, A001223.

Offset 1, canonical program `A198697.P858733286284913195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6629 terms. -/
def A198697 (n : ℕ) : ℤ :=
  A198697.P858733286284913195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6629 terms. -/
def A198697.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A199985.P15200555582612975294

`2*A034050(n+1)-A131664(n+1)`
-/

namespace A199985.P15200555582612975294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034050 (n + 1) - A131664 (n + 1)

end

end A199985.P15200555582612975294

noncomputable section

/-- A199985: Numbers with digital product = 5.

Offset 1, canonical program `A199985.P15200555582612975294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A199985 (n : ℕ) : ℤ :=
  A199985.P15200555582612975294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A199985.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A203640.P11471034263871899350

`A046951(A046951(57*n+1)^A046951(n+1)+1)`
-/

namespace A203640.P11471034263871899350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway ((A046951 (57 * n + 1) : ℚ) ^ (A046951 (n + 1) : ℤ) + 1)).toNat

end

end A203640.P11471034263871899350

noncomputable section

/-- A203640: Length of the cycle reached for the map x->A203639(x), starting at n.

Offset 1, canonical program `A203640.P11471034263871899350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A203640 (n : ℕ) : ℤ :=
  A203640.P11471034263871899350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A203640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203905.P7367023948062970657

`∑[A197870(n)]*A008619(A004197(n))`
-/

namespace A203905.P7367023948062970657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008619 (A004197 n).toNat

end

end A203905.P7367023948062970657

noncomputable section

/-- A203905: Symmetric matrix based on (1,0,1,0,1,0,1,0,...), by antidiagonals.

Offset 1, canonical program `A203905.P7367023948062970657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203905 (n : ℕ) : ℤ :=
  A203905.P7367023948062970657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204204.P9788490803614695615

`A204202(n+1)+A008949(n)`
-/

namespace A204204.P9788490803614695615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204202 (n + 1) + A008949 n

end

end A204204.P9788490803614695615

noncomputable section

/-- A204204: Triangle based on (0,3/4,1) averaging array.

Offset 1, canonical program `A204204.P9788490803614695615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204204 (n : ℕ) : ℤ :=
  A204204.P9788490803614695615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204205.P18235704100513698987

`2*A204201(n+1)-A008949(n)`
-/

namespace A204205.P18235704100513698987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204201 (n + 1) - A008949 n

end

end A204205.P18235704100513698987

noncomputable section

/-- A204205: Triangle based on (0,1/5,1) averaging array.

Offset 1, canonical program `A204205.P18235704100513698987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204205 (n : ℕ) : ℤ :=
  A204205.P18235704100513698987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204621.P10545578004143869044

`A054143(A057944(n)+A004197(n))`
-/

namespace A204621.P10545578004143869044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A057944 n + A004197 n).toNat

end

end A204621.P10545578004143869044

noncomputable section

/-- A204621: Triangle read by rows: coordinator triangle for lattice A*_n.

Offset 0, canonical program `A204621.P10545578004143869044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204621 (n : ℕ) : ℤ :=
  A204621.P10545578004143869044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204621.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A205674.P5002100609961987848

`A000040(A205547(n+1))`
-/

namespace A205674.P5002100609961987848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205547 (n + 1)).toNat

end

end A205674.P5002100609961987848

noncomputable section

/-- A205674: Prime(A202560(n)), the n-th number s(k) such that 3 divides s(k)-s(j) for some j

Offset 1, canonical program `A205674.P5002100609961987848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205674 (n : ℕ) : ℤ :=
  A205674.P5002100609961987848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207620.P5954762046324026887

`A258993(n+1)+A102426(A061885(n))`
-/

namespace A207620.P5954762046324026887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258993 (n + 1) + A102426 (A061885 n).toNat

end

end A207620.P5954762046324026887

noncomputable section

/-- A207620: Triangle of coefficients of polynomials u(n,x) jointly generated with A207621; see the Formula section.

Offset 1, canonical program `A207620.P5954762046324026887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A207620 (n : ℕ) : ℤ :=
  A207620.P5954762046324026887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A207620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208514.P3689932814595698333

`A208917(n+1)/A059268(n)`
-/

namespace A208514.P3689932814595698333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208917 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A208514.P3689932814595698333

noncomputable section

/-- A208514: Triangle of coefficients of polynomials u(n,x) jointly generated with A208515; see the Formula section.

Offset 1, canonical program `A208514.P3689932814595698333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208514 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208514.P3689932814595698333.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208520.P11996119381766978288

`A208913(n+1)/A060546(A002262(n))`
-/

namespace A208520.P11996119381766978288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208913 (n + 1) : ℚ) / (A060546 (A002262 n).toNat : ℚ)

end

end A208520.P11996119381766978288

noncomputable section

/-- A208520: Triangle of coefficients of polynomials u(n,x) jointly generated with A208521; see the Formula section.

Offset 1, canonical program `A208520.P11996119381766978288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208520 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208520.P11996119381766978288.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208520.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A209562.P7373821784173499212

`A209561(n+1)+A029653(n)-A208510(n+1)`
-/

namespace A209562.P7373821784173499212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (n + 1) + A029653 n - A208510 (n + 1)

end

end A209562.P7373821784173499212

noncomputable section

/-- A209562: Triangle of coefficients of polynomials v(n,x) jointly generated with A209561; see the Formula section.

Offset 1, canonical program `A209562.P7373821784173499212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209562 (n : ℕ) : ℤ :=
  A209562.P7373821784173499212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209562.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A212177.P15343509916105935241

`A056170(A013929(n+1))`
-/

namespace A212177.P15343509916105935241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A013929 (n + 1)).toNat

end

end A212177.P15343509916105935241

noncomputable section

/-- A212177: Number of exponents >= 2 in the canonical prime factorization of the n-th nonsquarefree number (A013929(n)).

Offset 1, canonical program `A212177.P15343509916105935241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A056170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A212177 (n : ℕ) : ℤ :=
  A212177.P15343509916105935241.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A056170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A212177.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213290.P9813323371573201390

`A057427(n)+A028262(A194274(n))`
-/

namespace A213290.P9813323371573201390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A028262 (A194274 n).toNat

end

end A213290.P9813323371573201390

noncomputable section

/-- A213290: Number of n-length words w over binary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

Offset 0, canonical program `A213290.P9813323371573201390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A213290 (n : ℕ) : ℤ :=
  A213290.P9813323371573201390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A213290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214506.P10165416646776841090

`A003617(n+1)%10`
-/

namespace A214506.P10165416646776841090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003617 (n + 1)) 10

end

end A214506.P10165416646776841090

noncomputable section

/-- A214506: Last digit of the smallest prime number in base 10 with n digits.

Offset 1, canonical program `A214506.P10165416646776841090`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214506 (n : ℕ) : ℤ :=
  A214506.P10165416646776841090.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214506.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A216864.P16380076787172319000

`A046951(A007955(n+1))`
-/

namespace A216864.P16380076787172319000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A007955 (n + 1)).toNat

end

end A216864.P16380076787172319000

noncomputable section

/-- A216864: Number of squares that divide the product of divisors of n.

Offset 1, canonical program `A216864.P16380076787172319000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216864 (n : ℕ) : ℤ :=
  A216864.P16380076787172319000.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216864.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A225856.P11800117262539165010

`floor(sqrt(sqrt(A225892(n+1))))`
-/

namespace A225856.P11800117262539165010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A225892 (n + 1) : ℝ))⌋

end

end A225856.P11800117262539165010

noncomputable section

/-- A225856: Primes p such that p^2 + 1 is squarefree.

Offset 1, canonical program `A225856.P11800117262539165010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225856 (n : ℕ) : ℤ :=
  A225856.P11800117262539165010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225856.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A227408.P7610701793903841046

`∩[A352776(n+1), A352785(n+1)]`
-/

namespace A227408.P7610701793903841046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227408.P7610701793903841046

noncomputable section

/-- A227408: Set of all n, where n = r(s(n)) = s(r(n)), given that r(n) = n+bitcount(n), s(n) = n-bitcount(n), and bitcount(n) is the count of binary 1's in n.

Offset 1, canonical program `A227408.P7610701793903841046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A227408 (n : ℕ) : ℤ :=
  (A227408.P7610701793903841046.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A227408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230405.P8381565500841950673

`A000217(A230404(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A230405.P8381565500841950673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A230404 (n + 1)).toNat

end

end A230405.P8381565500841950673

noncomputable section

/-- A230405: a(n) = A000217(A230404(n+1)); the first differences of A219650.

Offset 0, canonical program `A230405.P8381565500841950673`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230405 (n : ℕ) : ℤ :=
  A230405.P8381565500841950673.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230405.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A238712.P11655535671467740802

`lt[0, char[A316347(n)]]`
-/

namespace A238712.P11655535671467740802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316347 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A238712.P11655535671467740802

noncomputable section

/-- A238712: Numbers in which squares may end (in base 10).

Offset 1, canonical program `A238712.P11655535671467740802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. -/
def A238712 (n : ℕ) : ℤ :=
  (A238712.P11655535671467740802.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. -/
def A238712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238949.P10522096884235985667

`A001221(n+1)+A056170(n+1)`
-/

namespace A238949.P10522096884235985667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A056170 (n + 1)

end

end A238949.P10522096884235985667

noncomputable section

/-- A238949: Degree of divisor lattice D(n).

Offset 1, canonical program `A238949.P10522096884235985667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A238949 (n : ℕ) : ℤ :=
  A238949.P10522096884235985667.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A238949.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A256098.P9109279517395957021

`A054531(record[A056023(n+1)])`
-/

namespace A256098.P9109279517395957021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256098.P9109279517395957021

noncomputable section

/-- A256098: Denominators for the numerators A256097.

Offset 1, canonical program `A256098.P9109279517395957021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A256098 (n : ℕ) : ℤ :=
  A256098.P9109279517395957021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A256098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256288.P3413659148463275734

`7*n*A256287(n)`
-/

namespace A256288.P3413659148463275734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) * A256287 n

end

end A256288.P3413659148463275734

noncomputable section

/-- A256288: Sum of all the parts in the partitions of 7n into 7 parts.

Offset 0, canonical program `A256288.P3413659148463275734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256287, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256288 (n : ℕ) : ℤ :=
  A256288.P3413659148463275734.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256287, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256288.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A257838.P9432177341719237820

`A108081(n)-A081696(n)`
-/

namespace A257838.P9432177341719237820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108081 n - A081696 n

end

end A257838.P9432177341719237820

noncomputable section

/-- A257838: Main diagonal of iterated partial sums array of Fibonacci numbers (starting with the first partial sums).

Offset 0, canonical program `A257838.P9432177341719237820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A257838 (n : ℕ) : ℤ :=
  A257838.P9432177341719237820.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A257838.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A258211.P3873874455253473199

`2*A053850(n+1)`
-/

namespace A258211.P3873874455253473199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053850 (n + 1)

end

end A258211.P3873874455253473199

noncomputable section

/-- A258211: Nonsquarefree numbers of the form 4*k + 2.

Offset 1, canonical program `A258211.P3873874455253473199`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258211 (n : ℕ) : ℤ :=
  A258211.P3873874455253473199.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258211.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258383.P13211642193045278784

`Δ[A258432(n+1)]`
-/

namespace A258383.P13211642193045278784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258383.P13211642193045278784

noncomputable section

/-- A258383: Run lengths of consecutive identical terms in A062234.

Offset 1, canonical program `A258383.P13211642193045278784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A258383 (n : ℕ) : ℤ :=
  A258383.P13211642193045278784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A258383.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A261080.P5026933393780726250

`A205511(n+1)*A205302(n+1)`
-/

namespace A261080.P5026933393780726250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205511 (n + 1) * A205302 (n + 1)

end

end A261080.P5026933393780726250

noncomputable section

/-- A261080: Semiprimes p*q for which p and q are successive primes and their binary representations differ from each other in one bit position only.

Offset 1, canonical program `A261080.P5026933393780726250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205302, A205511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261080 (n : ℕ) : ℤ :=
  A261080.P5026933393780726250.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205302, A205511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261080.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261871.P14657242575537952892

`∩[2*n+1, A382875(n+1)]`
-/

namespace A261871.P14657242575537952892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261871.P14657242575537952892

noncomputable section

/-- A261871: Numbers of the form (2*j-1)*(2^k-1); j>=1, k>=2.

Offset 1, canonical program `A261871.P14657242575537952892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A261871 (n : ℕ) : ℤ :=
  (A261871.P14657242575537952892.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
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

Offset 0, canonical program `A262520.P5646456857022786100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262520 (n : ℕ) : ℤ :=
  A262520.P5646456857022786100.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262520.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A264357.P4841253329854367094

`A110813(n)-A131085(n)`
-/

namespace A264357.P4841253329854367094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 n - A131085 n

end

end A264357.P4841253329854367094

noncomputable section

/-- A264357: Array A(r, n) of number of independent components of a symmetric traceless tensor of rank r and dimension n, written as triangle T(n, r) = A(r, n-r+2), n >= 1, r = 2..n+1.

Offset 1, canonical program `A264357.P4841253329854367094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264357 (n : ℕ) : ℤ :=
  A264357.P4841253329854367094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264357.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A268343.P13116901143195206810

`A000040(∩[A258026(n+1), A358529(n+1)])`
-/

namespace A268343.P13116901143195206810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358529 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A268343.P13116901143195206810

noncomputable section

/-- A268343: Hermit primes: primes which are not a nearest neighbor of another prime.

Offset 1, canonical program `A268343.P13116901143195206810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A268343 (n : ℕ) : ℤ :=
  A268343.P13116901143195206810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A268343.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A268641.P593264094722309301

`record[A007913(sqrt(A233409(n+1)))]`
-/

namespace A268641.P593264094722309301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway (Real.sqrt (A233409 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268641.P593264094722309301

noncomputable section

/-- A268641: Squarefree numbers k such that k^2 + 1 and k^2 - 1 are also squarefree.

Offset 1, canonical program `A268641.P593264094722309301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3871 terms. -/
def A268641 (n : ℕ) : ℤ :=
  A268641.P593264094722309301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3871 terms. -/
def A268641.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A276799.P8873014292681214512

`A277722(n+1)-A003145(n+1)`
-/

namespace A276799.P8873014292681214512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277722 (n + 1) - A003145 (n + 1)

end

end A276799.P8873014292681214512

noncomputable section

/-- A276799: a(n) = floor(n*t^2) - A003145(n), where t = 1.8392867... is the tribonacci constant A058265.

Offset 1, canonical program `A276799.P8873014292681214512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276799 (n : ℕ) : ℤ :=
  A276799.P8873014292681214512.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276799.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A278472.P17517785868394324728

`A176085(n+2)-A109262(n+2)`
-/

namespace A278472.P17517785868394324728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 (n + 2) - A109262 (n + 2)

end

end A278472.P17517785868394324728

noncomputable section

/-- A278472: a(n) = Sum_{i=0..n} Fibonacci(i+1)*binomial(2*n-i+2, n+2).

Offset 0, canonical program `A278472.P17517785868394324728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A278472 (n : ℕ) : ℤ :=
  A278472.P17517785868394324728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A278472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279014.P8513409595306119484

`A054441(n)+A001405(A004273(n))`
-/

namespace A279014.P8513409595306119484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054441 n + A001405 (A004273 n).toNat

end

end A279014.P8513409595306119484

noncomputable section

/-- A279014: a(n) = Sum_{k=0..n} fibonacci(k+1)*binomial(2*n-1,n-k).

Offset 0, canonical program `A279014.P8513409595306119484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A279014 (n : ℕ) : ℤ :=
  A279014.P8513409595306119484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A279014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279913.P12273230905058985659

`10^(n+1)-A089186(n+1)`
-/

namespace A279913.P12273230905058985659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A089186 (n + 1)

end

end A279913.P12273230905058985659

noncomputable section

/-- A279913: Largest n-digit number ending in n.

Offset 1, canonical program `A279913.P12273230905058985659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089186, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279913 (n : ℕ) : ℤ :=
  A279913.P12273230905058985659.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089186, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279934.P3342387130069850537

`1+A005652(n+1)`
-/

namespace A279934.P3342387130069850537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A005652 (n + 1)

end

end A279934.P3342387130069850537

noncomputable section

/-- A279934: Positive integers k such that {(k-1)*r} > 1/2, where r = golden ratio = (1 + sqrt(5))/2 and { } = fractional part.

Offset 1, canonical program `A279934.P3342387130069850537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005652, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279934 (n : ℕ) : ℤ :=
  A279934.P3342387130069850537.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005652, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279934.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A285351.P8573257068003813108

`2*(n+1)+1-A285346(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285351.P8573257068003813108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) + 1 : ℤ) - A285346 (n + 1)

end

end A285351.P8573257068003813108

noncomputable section

/-- A285351: a(n) = 2n + 1 - A285346(n).

Offset 1, canonical program `A285351.P8573257068003813108`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285351 (n : ℕ) : ℤ :=
  A285351.P8573257068003813108.a (n - 1)

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

/-! ## A286150.P18193726890069242487

`A286147(A057944(n)+A004197(n))`
-/

namespace A286150.P18193726890069242487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286147 (A057944 n + A004197 n).toNat

end

end A286150.P18193726890069242487

noncomputable section

/-- A286150: Square array read by antidiagonals: A(n,k) = T(n XOR k, min(n,k)), where T(n,k) is sequence A001477 considered as a two-dimensional table, and XOR is bitwise-xor (A003987).

Offset 0, canonical program `A286150.P18193726890069242487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286150 (n : ℕ) : ℤ :=
  A286150.P18193726890069242487.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286519.P7676926827839113296

`A290660(n)+A280411(n)%A283351(n)`
-/

namespace A286519.P7676926827839113296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290660 n + Int.tmod (A280411 n) (A283351 n)

end

end A286519.P7676926827839113296

noncomputable section

/-- A286519: Binary representation of the diagonal from the origin to the corner (or of the corner to the origin) of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 659", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A286519.P7676926827839113296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A286519 (n : ℕ) : ℤ :=
  A286519.P7676926827839113296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A286519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286771.P2105546020748147357

`lcm(A280411(n), A288699(n))`
-/

namespace A286771.P2105546020748147357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A280411 n) (A288699 n)

end

end A286771.P2105546020748147357

noncomputable section

/-- A286771: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A286771.P2105546020748147357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A286771 (n : ℕ) : ℤ :=
  (A286771.P2105546020748147357.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A286771.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A288022.P13806557595186574534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2956 terms. -/
def A288022 (n : ℕ) : ℤ :=
  (A288022.P13806557595186574534.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2956 terms. -/
def A288022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289108.P11984288742072836431

`A289055(n)-1`
-/

namespace A289108.P11984288742072836431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289055 n - 1

end

end A289108.P11984288742072836431

noncomputable section

/-- A289108: Triangle read by rows: T(n,k) = (k + 1)*prime(n) + k for n > 0, 0 <= k <= n, and with T(0,0) = 1.

Offset 0, canonical program `A289108.P11984288742072836431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A289108 (n : ℕ) : ℤ :=
  A289108.P11984288742072836431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A289108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289320.P2991685240031938222

`∏{d}[n+1, A120007(#)²+1]`
-/

namespace A289320.P2991685240031938222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A120007 d ^ 2 + 1)

end

end A289320.P2991685240031938222

noncomputable section

/-- A289320: a(n) = A289310(n)^2 + A289311(n)^2.

Offset 1, canonical program `A289320.P2991685240031938222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289320 (n : ℕ) : ℤ :=
  A289320.P2991685240031938222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289493.P4700301683383788014

`A100637(n)-A099801(n)`
-/

namespace A289493.P4700301683383788014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - A099801 n

end

end A289493.P4700301683383788014

noncomputable section

/-- A289493: Number of primes in the interval [2n, 3n].

Offset 1, canonical program `A289493.P4700301683383788014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289493 (n : ℕ) : ℤ :=
  A289493.P4700301683383788014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292936.P8365704605525395897

`A007814(1+A292599(n+1))`
-/

namespace A292936.P8365704605525395897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A292599 (n + 1)).toNat

end

end A292936.P8365704605525395897

noncomputable section

/-- A292936: a(n) = the least k >= 0 such that floor(n/(2^k)) is a nonprime; a(n) is degree of the "safeness" of prime, 0 if n is not a prime, 1 for unsafe primes (A059456), and k >= 2 for primes that are (k-1)-safe but not k-safe.

Offset 1, canonical program `A292936.P8365704605525395897`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292599, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292936 (n : ℕ) : ℤ :=
  A292936.P8365704605525395897.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292599, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293234.P10621370865650298108

`A046951(n+1)-A010052(n+1)`
-/

namespace A293234.P10621370865650298108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A010052 (n + 1)

end

end A293234.P10621370865650298108

noncomputable section

/-- A293234: a(n) is the number of proper divisors of n that are square.

Offset 1, canonical program `A293234.P10621370865650298108`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293234 (n : ℕ) : ℤ :=
  A293234.P10621370865650298108.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293234.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295662.P12288310833318385704

`A162642(n+1)-A056169(n+1)`
-/

namespace A295662.P12288310833318385704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1) - A056169 (n + 1)

end

end A295662.P12288310833318385704

noncomputable section

/-- A295662: Number of odd exponents larger than one in the canonical prime factorization of n.

Offset 1, canonical program `A295662.P12288310833318385704`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A162642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295662 (n : ℕ) : ℤ :=
  A295662.P12288310833318385704.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A162642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295664.P6712857258460992871

`A007814(A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295664.P6712857258460992871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000005 (n + 1)).toNat

end

end A295664.P6712857258460992871

noncomputable section

/-- A295664: Exponent of the highest power of 2 dividing number of divisors of n: a(n) = A007814(A000005(n)); 2-adic valuation of tau(n).

Offset 1, canonical program `A295664.P6712857258460992871`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A000005(n+1))` (program `A295664.P6712857258460992871`, by `A295664.P6712857258460992871.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A295664 (n : ℕ) : ℤ :=
  A295664.P6712857258460992871.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A000005(n+1))` (program `A295664.P6712857258460992871`, by `A295664.P6712857258460992871.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A295664.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A295884.P5953786868987589474

`A056170(A062378(n+1))`
-/

namespace A295884.P5953786868987589474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A062378 (n + 1)).toNat

end

end A295884.P5953786868987589474

noncomputable section

/-- A295884: Number of exponents larger than 3 in the prime factorization of n.

Offset 1, canonical program `A295884.P5953786868987589474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295884 (n : ℕ) : ℤ :=
  A295884.P5953786868987589474.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295884.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300893.P14197464904502864311

`∑{d}[n+1, A033999(#-1)*A191558((n+1)/#)]`
-/

namespace A300893.P14197464904502864311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A191558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300893.P14197464904502864311

noncomputable section

/-- A300893: L.g.f.: log(Product_{k>=1} (1 + x^k)/(1 + x^prime(k))) = Sum_{n>=1} a(n)*x^n/n.

Offset 1, canonical program `A300893.P14197464904502864311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300893 (n : ℕ) : ℤ :=
  A300893.P14197464904502864311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302253.P10939319436702998548

`A140398(n+1)+2*A190435(n+1)`
-/

namespace A302253.P10939319436702998548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140398 (n + 1) + 2 * A190435 (n + 1)

end

end A302253.P10939319436702998548

noncomputable section

/-- A302253: Positions of 3 in A190436.

Offset 1, canonical program `A302253.P10939319436702998548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302253 (n : ℕ) : ℤ :=
  A302253.P10939319436702998548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304572.P1363963036755555797

`A304571(n+1)-A304570(n+1)`
-/

namespace A304572.P1363963036755555797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304571 (n + 1) - A304570 (n + 1)

end

end A304572.P1363963036755555797

noncomputable section

/-- A304572: Triangle read by rows: T(n,k) = 1 if k does not divide n^e, positive nonzero integers, and gcd(n,k) > 1.

Offset 1, canonical program `A304572.P1363963036755555797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304572 (n : ℕ) : ℤ :=
  A304572.P1363963036755555797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306409.P2461275947846805459

`(A006134(n)-A120305(n))/2`
-/

namespace A306409.P2461275947846805459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006134 n - A120305 n : ℚ) / 2

end

end A306409.P2461275947846805459

noncomputable section

/-- A306409: a(n) = -Sum_{0<=i

Offset 0, canonical program `A306409.P2461275947846805459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306409 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306409.P2461275947846805459.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306834.P8589768313617631174

`A014285(n+1)/gcd(A014285(n+1), A316322(n+1))`
-/

namespace A306834.P8589768313617631174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014285 (n + 1) : ℚ) / (Int.gcd (A014285 (n + 1)) (A316322 (n + 1)) : ℚ)

end

end A306834.P8589768313617631174

noncomputable section

/-- A306834: Numerator of the barycenter of first n primes defined as a(n) = numerator(Sum_{i=1..n} (i*prime(i)) / Sum_{i=1..n} prime(i)).

Offset 1, canonical program `A306834.P8589768313617631174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306834 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306834.P8589768313617631174.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306863.P15409555806204532107

`Δ[A153052(n+1)]-1`
-/

namespace A306863.P15409555806204532107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A306863.P15409555806204532107

noncomputable section

/-- A306863: a(n) is the number of primes between the n-th and (n+1)-st odd composite numbers.

Offset 1, canonical program `A306863.P15409555806204532107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A306863 (n : ℕ) : ℤ :=
  A306863.P15409555806204532107.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A306863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307354.P6583539778900423417

`(A006134(n)+A120305(n))/2`
-/

namespace A307354.P6583539778900423417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006134 n + A120305 n : ℚ) / 2

end

end A307354.P6583539778900423417

noncomputable section

/-- A307354: a(n) = Sum_{0<=i<=j<=n} (-1)^(i+j) * (i+j)!/(i!*j!).

Offset 0, canonical program `A307354.P6583539778900423417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307354 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307354.P6583539778900423417.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307597.P12525034653730918067

`floor(A053603(n)/2)`
-/

namespace A307597.P12525034653730918067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053603 n : ℚ) / 2⌋

end

end A307597.P12525034653730918067

noncomputable section

/-- A307597: Number of partitions of n into 2 distinct positive triangular numbers.

Offset 0, canonical program `A307597.P12525034653730918067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307597 (n : ℕ) : ℤ :=
  A307597.P12525034653730918067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308731.P16581783222327330498

`A316322(n+1)+A007290(n+2)`
-/

namespace A308731.P16581783222327330498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316322 (n + 1) + A007290 (n + 2)

end

end A308731.P16581783222327330498

noncomputable section

/-- A308731: a(n) is the sum of the terms of the symmetric square array defined by M(i,j) = prime(i)+i-j for i >= j and M(i,j) = M(j,i) if i < j.

Offset 1, canonical program `A308731.P16581783222327330498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A316322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308731 (n : ℕ) : ℤ :=
  A308731.P16581783222327330498.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A316322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308731.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309332.P11044657249734363077

`A110654(A160651(n+1))-1`
-/

namespace A309332.P11044657249734363077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A160651 (n + 1)).toNat - 1

end

end A309332.P11044657249734363077

noncomputable section

/-- A309332: Number of ways the n-th triangular number T(n) = A000217(n) can be written as the sum of two positive triangular numbers.

Offset 1, canonical program `A309332.P11044657249734363077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309332 (n : ℕ) : ℤ :=
  A309332.P11044657249734363077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310504.P464538820079187203

`2*A313053(n)-A008574(n)`
-/

namespace A310504.P464538820079187203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313053 n - A008574 n

end

end A310504.P464538820079187203

noncomputable section

/-- A310504: Coordination sequence Gal.6.329.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310504.P464538820079187203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A310504 (n : ℕ) : ℤ :=
  A310504.P464538820079187203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A310504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310538.P10108678506340412

`A310509(n)+Δ[A011862(n)]`
-/

namespace A310538.P10108678506340412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310509 n + (f1 (n + 1) - f1 n)

end

end A310538.P10108678506340412

noncomputable section

/-- A310538: Coordination sequence Gal.6.215.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310538.P10108678506340412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A310538 (n : ℕ) : ℤ :=
  A310538.P10108678506340412.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A310538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312206.P1241787982787610248

`abs(10*n-A315670(n))`
-/

namespace A312206.P1241787982787610248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315670 n|

end

end A312206.P1241787982787610248

noncomputable section

/-- A312206: Coordination sequence Gal.6.157.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312206.P1241787982787610248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A312206 (n : ℕ) : ℤ :=
  A312206.P1241787982787610248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A312206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312976.P18215844327102758922

`A004396(2*(A312935(n)-n))`
-/

namespace A312976.P18215844327102758922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A312935 n - (n : ℤ))).toNat

end

end A312976.P18215844327102758922

noncomputable section

/-- A312976: Coordination sequence Gal.6.246.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312976.P18215844327102758922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A312976 (n : ℕ) : ℤ :=
  A312976.P18215844327102758922.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A312976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312979.P10469328530055326609

`A310398(n)+A014019(n+3)`
-/

namespace A312979.P10469328530055326609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A014019 (n + 3)

end

end A312979.P10469328530055326609

noncomputable section

/-- A312979: Coordination sequence Gal.6.247.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312979.P10469328530055326609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A312979 (n : ℕ) : ℤ :=
  A312979.P10469328530055326609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A312979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313062.P7455441757488067714

`A312935(n)+Δ[A011864(n)]`
-/

namespace A313062.P7455441757488067714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312935 n + (f1 (n + 1) - f1 n)

end

end A313062.P7455441757488067714

noncomputable section

/-- A313062: Coordination sequence Gal.6.154.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313062.P7455441757488067714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2459 terms. -/
def A313062 (n : ℕ) : ℤ :=
  A313062.P7455441757488067714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2459 terms. -/
def A313062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313125.P8596607718569848778

`abs(A008592(n)-A315463(n))`
-/

namespace A313125.P8596607718569848778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315463 n|

end

end A313125.P8596607718569848778

noncomputable section

/-- A313125: Coordination sequence Gal.5.111.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313125.P8596607718569848778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A313125 (n : ℕ) : ℤ :=
  A313125.P8596607718569848778.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A313125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313145.P4535959116783505472

`A312184(n)+A004525(n-A004396(n))`
-/

namespace A313145.P4535959116783505472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312184 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313145.P4535959116783505472

noncomputable section

/-- A313145: Coordination sequence Gal.6.264.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313145.P4535959116783505472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A313145 (n : ℕ) : ℤ :=
  A313145.P4535959116783505472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A313145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313515.P11298845023019683879

`A313117(n)+A128834(n)`
-/

namespace A313515.P11298845023019683879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313117 n + A128834 n

end

end A313515.P11298845023019683879

noncomputable section

/-- A313515: Coordination sequence Gal.6.264.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313515.P11298845023019683879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A313515 (n : ℕ) : ℤ :=
  A313515.P11298845023019683879.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A313515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313769.P5587162002525287589

`A004396(n)+A313619(n)-A004525(n)`
-/

namespace A313769.P5587162002525287589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313619 n - A004525 n)

end

end A313769.P5587162002525287589

noncomputable section

/-- A313769: Coordination sequence Gal.6.339.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313769.P5587162002525287589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313769 (n : ℕ) : ℤ :=
  A313769.P5587162002525287589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313772.P6532572318584518292

`abs(A008592(n)-A313704(n))`
-/

namespace A313772.P6532572318584518292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313704 n|

end

end A313772.P6532572318584518292

noncomputable section

/-- A313772: Coordination sequence Gal.6.328.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313772.P6532572318584518292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313772 (n : ℕ) : ℤ :=
  A313772.P6532572318584518292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313855.P14947819833165197464

`A313719(n)+A002266(n+2)`
-/

namespace A313855.P14947819833165197464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n + A002266 (n + 2)

end

end A313855.P14947819833165197464

noncomputable section

/-- A313855: Coordination sequence Gal.5.87.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313855.P14947819833165197464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313855 (n : ℕ) : ℤ :=
  A313855.P14947819833165197464.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313890.P2997046397026414357

`∪[A313891(2*n+1), A313894(2*n)]`
-/

namespace A313890.P2997046397026414357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A313890.P2997046397026414357

noncomputable section

/-- A313890: Coordination sequence Gal.6.648.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313890.P2997046397026414357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313890 (n : ℕ) : ℤ :=
  (A313890.P2997046397026414357.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313939.P1821970513572052391

`A008576(n)+A313799(n)-A072154(n)`
-/

namespace A313939.P1821970513572052391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313799 n - A072154 n)

end

end A313939.P1821970513572052391

noncomputable section

/-- A313939: Coordination sequence Gal.6.659.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313939.P1821970513572052391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A313939 (n : ℕ) : ℤ :=
  A313939.P1821970513572052391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A313939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314059.P15361203540330467185

`A310398(n)+A004525(n)`
-/

namespace A314059.P15361203540330467185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A004525 n

end

end A314059.P15361203540330467185

noncomputable section

/-- A314059: Coordination sequence Gal.6.652.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314059.P15361203540330467185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2279 terms. -/
def A314059 (n : ℕ) : ℤ :=
  A314059.P15361203540330467185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2279 terms. -/
def A314059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314085.P6510588875040797776

`A315670(n)-A004525(A004396(n))`
-/

namespace A314085.P6510588875040797776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315670 n - A004525 (A004396 n).toNat

end

end A314085.P6510588875040797776

noncomputable section

/-- A314085: Coordination sequence Gal.6.132.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314085.P6510588875040797776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A314085 (n : ℕ) : ℤ :=
  A314085.P6510588875040797776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A314085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314118.P650591932633737003

`A310398(n)+A314829(n)-A008574(n)`
-/

namespace A314118.P650591932633737003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + (A314829 n - A008574 n)

end

end A314118.P650591932633737003

noncomputable section

/-- A314118: Coordination sequence Gal.6.652.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314118.P650591932633737003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2306 terms. -/
def A314118 (n : ℕ) : ℤ :=
  A314118.P650591932633737003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2306 terms. -/
def A314118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314129.P3295900941499139215

`A313966(n)+A314123(n)-A313957(n)`
-/

namespace A314129.P3295900941499139215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313966 n + (A314123 n - A313957 n)

end

end A314129.P3295900941499139215

noncomputable section

/-- A314129: Coordination sequence Gal.5.312.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314129.P3295900941499139215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314129 (n : ℕ) : ℤ :=
  A314129.P3295900941499139215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314130.P11569106488579326638

`A313966(n)+A314125(n)-A313957(n)`
-/

namespace A314130.P11569106488579326638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313966 n + (A314125 n - A313957 n)

end

end A314130.P11569106488579326638

noncomputable section

/-- A314130: Coordination sequence Gal.5.312.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314130.P11569106488579326638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A314130 (n : ℕ) : ℤ :=
  A314130.P11569106488579326638.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A314130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314176.P4544315038910432247

`A313932(n)+A244895(A142150(n))`
-/

namespace A314176.P4544315038910432247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313932 n + A244895 (A142150 n).toNat

end

end A314176.P4544315038910432247

noncomputable section

/-- A314176: Coordination sequence Gal.5.313.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314176.P4544315038910432247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A314176 (n : ℕ) : ℤ :=
  A314176.P4544315038910432247.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A314176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314210.P1704120020659904217

`(A310496(n)+A008458(n))/2`
-/

namespace A314210.P1704120020659904217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310496 n + A008458 n : ℚ) / 2

end

end A314210.P1704120020659904217

noncomputable section

/-- A314210: Coordination sequence Gal.6.623.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314210.P1704120020659904217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. -/
def A314210 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A314210.P1704120020659904217.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. -/
def A314210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314254.P14587660656971649234

`A313117(n)+n`
-/

namespace A314254.P14587660656971649234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313117 n + (n : ℤ)

end

end A314254.P14587660656971649234

noncomputable section

/-- A314254: Coordination sequence Gal.6.628.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314254.P14587660656971649234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2174 terms. -/
def A314254 (n : ℕ) : ℤ :=
  A314254.P14587660656971649234.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2174 terms. -/
def A314254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314548.P16561424659105891053

`A314364(n)+A087509(n)`
-/

namespace A314548.P16561424659105891053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314364 n + A087509 n

end

end A314548.P16561424659105891053

noncomputable section

/-- A314548: Coordination sequence Gal.4.99.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314548.P16561424659105891053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. -/
def A314548 (n : ℕ) : ℤ :=
  A314548.P16561424659105891053.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. -/
def A314548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314689.P7889334889047970928

`abs(A008592(n)-A314234(n))`
-/

namespace A314689.P7889334889047970928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314234 n|

end

end A314689.P7889334889047970928

noncomputable section

/-- A314689: Coordination sequence Gal.6.255.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314689.P7889334889047970928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314689 (n : ℕ) : ℤ :=
  A314689.P7889334889047970928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314885.P6042204147825848892

`abs(A008592(n)-A314133(n))`
-/

namespace A314885.P6042204147825848892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314133 n|

end

end A314885.P6042204147825848892

noncomputable section

/-- A314885: Coordination sequence Gal.6.245.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314885.P6042204147825848892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314885 (n : ℕ) : ℤ :=
  A314885.P6042204147825848892.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314971.P14452924613501510343

`abs(A008592(n)-A314088(n))`
-/

namespace A314971.P14452924613501510343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314088 n|

end

end A314971.P14452924613501510343

noncomputable section

/-- A314971: Coordination sequence Gal.5.138.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314971.P14452924613501510343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A314971 (n : ℕ) : ℤ :=
  A314971.P14452924613501510343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A314971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315019.P7036511611890630324

`abs(10*n-A314057(n))`
-/

namespace A315019.P7036511611890630324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314057 n|

end

end A315019.P7036511611890630324

noncomputable section

/-- A315019: Coordination sequence Gal.6.320.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315019.P7036511611890630324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A315019 (n : ℕ) : ℤ :=
  A315019.P7036511611890630324.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A315019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315056.P4925321079305398332

`abs(A008592(n)-A314029(n))`
-/

namespace A315056.P4925321079305398332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314029 n|

end

end A315056.P4925321079305398332

noncomputable section

/-- A315056: Coordination sequence Gal.6.348.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315056.P4925321079305398332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315056 (n : ℕ) : ℤ :=
  A315056.P4925321079305398332.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315172.P15889676630402810519

`2*A314671(n)-A008574(n)`
-/

namespace A315172.P15889676630402810519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314671 n - A008574 n

end

end A315172.P15889676630402810519

noncomputable section

/-- A315172: Coordination sequence Gal.5.54.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315172.P15889676630402810519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2523 terms. -/
def A315172 (n : ℕ) : ℤ :=
  A315172.P15889676630402810519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2523 terms. -/
def A315172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315212.P16544204040533700131

`abs(10*n-A310496(n))`
-/

namespace A315212.P16544204040533700131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A310496 n|

end

end A315212.P16544204040533700131

noncomputable section

/-- A315212: Coordination sequence Gal.6.351.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315212.P16544204040533700131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A315212 (n : ℕ) : ℤ :=
  A315212.P16544204040533700131.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A315212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315267.P18096296036471696412

`A313799(n)+A134667(A006369(n))`
-/

namespace A315267.P18096296036471696412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n + A134667 (A006369 n).toNat

end

end A315267.P18096296036471696412

noncomputable section

/-- A315267: Coordination sequence Gal.6.215.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315267.P18096296036471696412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2284 terms. -/
def A315267 (n : ℕ) : ℤ :=
  A315267.P18096296036471696412.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2284 terms. -/
def A315267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315312.P652016832202607211

`A315261(n)+Δ[A011864(n)]`
-/

namespace A315312.P652016832202607211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315261 n + (f1 (n + 1) - f1 n)

end

end A315312.P652016832202607211

noncomputable section

/-- A315312: Coordination sequence Gal.6.639.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315312.P652016832202607211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315312 (n : ℕ) : ℤ :=
  A315312.P652016832202607211.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315319.P8559741598565083215

`abs(A008592(n)-A310398(n))`
-/

namespace A315319.P8559741598565083215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310398 n|

end

end A315319.P8559741598565083215

noncomputable section

/-- A315319: Coordination sequence Gal.5.289.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315319.P8559741598565083215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315319 (n : ℕ) : ℤ :=
  A315319.P8559741598565083215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315446.P15191818491354741477

`A315398(n)+Δ[A011862(n)]`
-/

namespace A315446.P15191818491354741477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315398 n + (f1 (n + 1) - f1 n)

end

end A315446.P15191818491354741477

noncomputable section

/-- A315446: Coordination sequence Gal.5.68.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315446.P15191818491354741477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A315446 (n : ℕ) : ℤ :=
  A315446.P15191818491354741477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A315446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315478.P13307919099686245578

`A315426(n)+Δ[A011864(n)]`
-/

namespace A315478.P13307919099686245578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315426 n + (f1 (n + 1) - f1 n)

end

end A315478.P13307919099686245578

noncomputable section

/-- A315478: Coordination sequence Gal.6.209.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315478.P13307919099686245578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A315478 (n : ℕ) : ℤ :=
  A315478.P13307919099686245578.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A315478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315485.P8491301675403388189

`A313717(n)+A004525(n)`
-/

namespace A315485.P8491301675403388189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + A004525 n

end

end A315485.P8491301675403388189

noncomputable section

/-- A315485: Coordination sequence Gal.6.205.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315485.P8491301675403388189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A315485 (n : ℕ) : ℤ :=
  A315485.P8491301675403388189.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A315485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315631.P14361202183170723118

`A315398(n)+A004396(n-A004396(n))`
-/

namespace A315631.P14361202183170723118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315398 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315631.P14361202183170723118

noncomputable section

/-- A315631: Coordination sequence Gal.5.68.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315631.P14361202183170723118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2391 terms. -/
def A315631 (n : ℕ) : ℤ :=
  A315631.P14361202183170723118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2391 terms. -/
def A315631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315690.P5988482929167051028

`A314671(n)+∑[A101825(n)]`
-/

namespace A315690.P5988482929167051028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315690.P5988482929167051028

noncomputable section

/-- A315690: Coordination sequence Gal.5.135.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315690.P5988482929167051028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. -/
def A315690 (n : ℕ) : ℤ :=
  A315690.P5988482929167051028.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. -/
def A315690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315727.P1759850529148023067

`A315669(n)+Δ[A011862(n)]`
-/

namespace A315727.P1759850529148023067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315669 n + (f1 (n + 1) - f1 n)

end

end A315727.P1759850529148023067

noncomputable section

/-- A315727: Coordination sequence Gal.5.89.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315727.P1759850529148023067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. -/
def A315727 (n : ℕ) : ℤ :=
  A315727.P1759850529148023067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. -/
def A315727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315832.P11173554786775722333

`A315213(n)-A265188(n+1)+n`
-/

namespace A315832.P11173554786775722333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315213 n - A265188 (n + 1) + (n : ℤ)

end

end A315832.P11173554786775722333

noncomputable section

/-- A315832: Coordination sequence Gal.5.207.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315832.P11173554786775722333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315832 (n : ℕ) : ℤ :=
  A315832.P11173554786775722333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315959.P3345584257071925561

`3*n+A004525(A315828(n))`
-/

namespace A315959.P3345584257071925561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A004525 (A315828 n).toNat

end

end A315959.P3345584257071925561

noncomputable section

/-- A315959: Coordination sequence Gal.5.146.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315959.P3345584257071925561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A315959 (n : ℕ) : ℤ :=
  A315959.P3345584257071925561.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A315959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316344.P12222898114171771494

`A316826((C(3, n+2)+1)*(n+1))`
-/

namespace A316344.P12222898114171771494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 ((Nat.choose 3 (n + 2) + 1) * (n + 1))

end

end A316344.P12222898114171771494

noncomputable section

/-- A316344: An example of a word that is uniform morphic, but neither pure morphic, primitive morphic, nor recurrent.

Offset 0, canonical program `A316344.P12222898114171771494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316344 (n : ℕ) : ℤ :=
  A316344.P12222898114171771494.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316523.P9130007244371439540

`A162642(n+1)-A162641(n+1)`
-/

namespace A316523.P9130007244371439540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1) - A162641 (n + 1)

end

end A316523.P9130007244371439540

noncomputable section

/-- A316523: Number of odd multiplicities minus number of even multiplicities in the canonical prime factorization of n.

Offset 1, canonical program `A316523.P9130007244371439540`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162641, A162642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316523 (n : ℕ) : ℤ :=
  A316523.P9130007244371439540.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162641, A162642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317751.P3394042211911026629

`A219977(A034444(n+1))+A046951(n+1)`
-/

namespace A317751.P3394042211911026629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A034444 (n + 1)).toNat + A046951 (n + 1)

end

end A317751.P3394042211911026629

noncomputable section

/-- A317751: Number of divisors d of n such that there exists a factorization of n into factors > 1 with GCD d.

Offset 1, canonical program `A317751.P3394042211911026629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317751 (n : ℕ) : ℤ :=
  A317751.P3394042211911026629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318206.P13112359878719457918

`eq[1, A175242(n+1)]+1`
-/

namespace A318206.P13112359878719457918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A318206.P13112359878719457918

noncomputable section

/-- A318206: Numbers having no divisor d > 1 that is a binary palindrome (i.e., an element of A006995).

Offset 1, canonical program `A318206.P13112359878719457918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3950 terms. -/
def A318206 (n : ℕ) : ℤ :=
  (A318206.P13112359878719457918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3950 terms. -/
def A318206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319050.P16650929760473563245

`∩[A049098(n+1), A049232(n+1)]`
-/

namespace A319050.P16650929760473563245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319050.P16650929760473563245

noncomputable section

/-- A319050: Primes p such that neither p + 1 nor p + 2 is squarefree.

Offset 1, canonical program `A319050.P16650929760473563245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A319050 (n : ℕ) : ℤ :=
  (A319050.P16650929760473563245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A319050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319967.P4287753706179414986

`A003145(A003144(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319967.P4287753706179414986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (A003144 (n + 1)).toNat

end

end A319967.P4287753706179414986

noncomputable section

/-- A319967: a(n) = A003145(A003144(n)) where A003144 and A003145 are positions of '1' and '2' in the tribonacci word A092782.

Offset 1, canonical program `A319967.P4287753706179414986`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319967 (n : ℕ) : ℤ :=
  A319967.P4287753706179414986.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319968.P16398350758420422133

`A003145(A003145(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319968.P16398350758420422133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (A003145 (n + 1)).toNat

end

end A319968.P16398350758420422133

noncomputable section

/-- A319968: a(n) = A003145(A003145(n)).

Offset 1, canonical program `A319968.P16398350758420422133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319968 (n : ℕ) : ℤ :=
  A319968.P16398350758420422133.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319969.P14966318444219165670

`3*A003144(n+1)+4*A003145(n+1)+2*(n+1)`
-/

namespace A319969.P14966318444219165670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003144 (n + 1) + 4 * A003145 (n + 1) + (2 * (n + 1) : ℤ)

end

end A319969.P14966318444219165670

noncomputable section

/-- A319969: a(n) = A003145(A003146(n)).

Offset 1, canonical program `A319969.P14966318444219165670`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319969 (n : ℕ) : ℤ :=
  A319969.P14966318444219165670.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319969.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319971.P17707355117856194328

`3*A003144(n+1)+4*A003145(n+1)+2*n`
-/

namespace A319971.P17707355117856194328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003144 (n + 1) + 4 * A003145 (n + 1) + (2 * n : ℤ)

end

end A319971.P17707355117856194328

noncomputable section

/-- A319971: a(n) = A003146(A003145(n)).

Offset 1, canonical program `A319971.P17707355117856194328`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319971 (n : ℕ) : ℤ :=
  A319971.P17707355117856194328.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320627.P6502014669296269449

`A006134(A038754(n)-1)/3^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A320627.P6502014669296269449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006134 (A038754 n - 1).toNat : ℚ) / (3 ^ n : ℚ)

end

end A320627.P6502014669296269449

noncomputable section

/-- A320627: a(n) = A006134(A038754(n) - 1)/3^n.

Offset 0, canonical program `A320627.P6502014669296269449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320627 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A320627.P6502014669296269449.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320627.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320701.P6478986865021011395

`A000720(A031924(n+1))`
-/

namespace A320701.P6478986865021011395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A031924 (n + 1)).toNat

end

end A320701.P6478986865021011395

noncomputable section

/-- A320701: Indices of primes followed by a gap (distance to next larger prime) of 6.

Offset 1, canonical program `A320701.P6478986865021011395`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031924, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320701 (n : ℕ) : ℤ :=
  A320701.P6478986865021011395.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031924, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320701.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322583.P14311457502044672591

`A344438(∑[A063226(n+1)])+A344438(n+1)`
-/

namespace A322583.P14311457502044672591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344438 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A344438 (n + 1)

end

end A322583.P14311457502044672591

noncomputable section

/-- A322583: a(n) is the number of factorizations of n into factorial numbers larger than one; a(1) = 1.

Offset 1, canonical program `A322583.P14311457502044672591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A322583 (n : ℕ) : ℤ :=
  A322583.P14311457502044672591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A322583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322978.P16968695254368812252

`A322977(2*(n+1))`
-/

namespace A322978.P16968695254368812252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322977 (2 * (n + 1))

end

end A322978.P16968695254368812252

noncomputable section

/-- A322978: Number of even divisors d of 2n such that d-1 is prime.

Offset 1, canonical program `A322978.P16968695254368812252`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322978 (n : ℕ) : ℤ :=
  A322978.P16968695254368812252.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325310.P15476195284828619111

`∑{d}[A325315(n+1), A209229(#)]`
-/

namespace A325310.P15476195284828619111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A209229 d

end

end A325310.P15476195284828619111

noncomputable section

/-- A325310: a(n) = A001511(A325315(n)), except when A325315(n) = 0, then a(n) = 0.

Offset 1, canonical program `A325310.P15476195284828619111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325310 (n : ℕ) : ℤ :=
  A325310.P15476195284828619111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325317.P3726811727158540044

`A325316(n+1)-A325318(n+1)`
-/

namespace A325317.P3726811727158540044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325316 (n + 1) - A325318 (n + 1)

end

end A325317.P3726811727158540044

noncomputable section

/-- A325317: a(n) = A048250(n) XOR A162296(n), where XOR is the bitwise-XOR, A003987.

Offset 1, canonical program `A325317.P3726811727158540044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325316, A325318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325317 (n : ℕ) : ℤ :=
  A325317.P3726811727158540044.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325316, A325318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325317.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325402.P10132391026070939766

`A055944(n)-A325401(n)`
-/

namespace A325402.P10132391026070939766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n - A325401 n

end

end A325402.P10132391026070939766

noncomputable section

/-- A325402: maxflip(n) = max(n, r(n)) where r(n) is the binary reverse of n.

Offset 0, canonical program `A325402.P10132391026070939766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325402 (n : ℕ) : ℤ :=
  A325402.P10132391026070939766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325837.P10403141756841379382

`A046951(A003557(n+1))`
-/

namespace A325837.P10403141756841379382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A003557 (n + 1)).toNat

end

end A325837.P10403141756841379382

noncomputable section

/-- A325837: The number of coreful divisors of n that are exponentially odd numbers (A268335).

Offset 1, canonical program `A325837.P10403141756841379382`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325837 (n : ℕ) : ℤ :=
  A325837.P10403141756841379382.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325837.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A327728.P1727755471504395487

`A050531(n+1)-A002620(n+3)`
-/

namespace A327728.P1727755471504395487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 (n + 1) - A002620 (n + 3)

end

end A327728.P1727755471504395487

noncomputable section

/-- A327728: Number of unlabeled multigraphs with loops allowed and n edges covering three vertices.

Offset 1, canonical program `A327728.P1727755471504395487`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050531, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327728 (n : ℕ) : ℤ :=
  A327728.P1727755471504395487.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050531, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327728.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327954.P11440697312019406287

`Δ[A327953(n+1)]`
-/

namespace A327954.P11440697312019406287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327954.P11440697312019406287

noncomputable section

/-- A327954: First differences of A327953.

Offset 1, canonical program `A327954.P11440697312019406287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327954 (n : ℕ) : ℤ :=
  A327954.P11440697312019406287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328190.P10977472533607710601

`A328984(n+1)+and(A298468(n), A328979(n+1))`
-/

namespace A328190.P10977472533607710601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328984 (n + 1) + Int.land (A298468 n) (A328979 (n + 1))

end

end A328190.P10977472533607710601

noncomputable section

/-- A328190: Lexicographically earliest infinite sequence of distinct positive integers such that the sequence and its first differences have no values in common.

Offset 1, canonical program `A328190.P10977472533607710601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328190 (n : ℕ) : ℤ :=
  A328190.P10977472533607710601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328818.P2352908255522347692

`A307011(n)+A307013(n)`
-/

namespace A328818.P2352908255522347692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307011 n + A307013 n

end

end A328818.P2352908255522347692

noncomputable section

/-- A328818: 2 * x-coordinate of the points of a counterclockwise spiral on an hexagonal grid.

Offset 0, canonical program `A328818.P2352908255522347692`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307011, A307013, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328818 (n : ℕ) : ℤ :=
  A328818.P2352908255522347692.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307011, A307013, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328818.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328902.P11557614217852770634

`A134478(n)/A046899(n)*A328901(n)`
-/

namespace A328902.P11557614217852770634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134478 n : ℚ) / (A046899 n : ℚ) * (A328901 n : ℚ)

end

end A328902.P11557614217852770634

noncomputable section

/-- A328902: Triangle T(n, k) read by rows: T(n, k) is the denominator of the rational Catalan number defined as binomial(n + k, n)/(n + k) for 0 <= k <= n, n > 0; T(0, 0) = 1.

Offset 0, canonical program `A328902.P11557614217852770634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328902 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A328902.P11557614217852770634.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329243.P9180453080884109219

`A038698(n+1)+A321861(n+1)+A320858(n+1)`
-/

namespace A329243.P9180453080884109219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (n + 1) + (A321861 (n + 1) + A320858 (n + 1))

end

end A329243.P9180453080884109219

noncomputable section

/-- A329243: a(n) = Pi(8,3)(prime(n)) + Pi(8,5)(prime(n)) + Pi(8,7)(prime(n)) - 3*Pi(8,1)(prime(n)), where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

Offset 1, canonical program `A329243.P9180453080884109219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329243 (n : ℕ) : ℤ :=
  A329243.P9180453080884109219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329451.P14420224795869764284

`A056847(A008811(n)-A107279(n))`
-/

namespace A329451.P14420224795869764284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A008811 n - A107279 n).toNat

end

end A329451.P14420224795869764284

noncomputable section

/-- A329451: Maximum number of pieces that can be captured during one move on an n X n board according to the international draughts capture rules.

Offset 0, canonical program `A329451.P14420224795869764284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A329451 (n : ℕ) : ℤ :=
  A329451.P14420224795869764284.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A329451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329836.P12686953867278850669

`A110303(2*n+2)%A074822(A000463(n+4))`
-/

namespace A329836.P12686953867278850669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110303 (2 * n + 2)) (A074822 (A000463 (n + 4)).toNat)

end

end A329836.P12686953867278850669

noncomputable section

/-- A329836: Beatty sequence for (11+sqrt(101))/10.

Offset 1, canonical program `A329836.P12686953867278850669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A329836 (n : ℕ) : ℤ :=
  A329836.P12686953867278850669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A329836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330557.P15434734115232232872

`A001281(A330556(n)+∑[A101264(n)])`
-/

namespace A330557.P15434734115232232872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A330556 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330557.P15434734115232232872

noncomputable section

/-- A330557: a(n) = number of primes p <= 2*n+1 with Delta(p) == 2 mod 4, where Delta(p) = nextprime(p) - p.

Offset 0, canonical program `A330557.P15434734115232232872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330557 (n : ℕ) : ℤ :=
  A330557.P15434734115232232872.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330908.P5206692806244212137

`a(n-1)+A083399(a(n-1))` with `a(0)=1`
-/

namespace A330908.P5206692806244212137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A083399 (a (n - 1)).toNat

end

end A330908.P5206692806244212137

noncomputable section

/-- A330908: a(n+1) = a(n) + (number of divisors of a(n) that are not divisors of other divisors of a(n)) for n>1; a(1)=1.

Offset 1, canonical program `A330908.P5206692806244212137`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083399, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330908 (n : ℕ) : ℤ :=
  A330908.P5206692806244212137.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083399, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330908.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331698.P4122289337441276779

`A056930(n+2)-A007491(n+2)`
-/

namespace A331698.P4122289337441276779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056930 (n + 2) - A007491 (n + 2)

end

end A331698.P4122289337441276779

noncomputable section

/-- A331698: a(n) = (1/2) * ((greatest prime < (n+1)^2) - (least prime > n^2)) for n >= 2.

Offset 2, canonical program `A331698.P4122289337441276779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331698 (n : ℕ) : ℤ :=
  A331698.P4122289337441276779.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331698.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A139890.P459811890116219402

`∪[A139994(n+1), A139995(n+1)]`
-/

namespace A139890.P459811890116219402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P459811890116219402

noncomputable section

/-- A139890: Primes of the form 6x^2+35y^2.

Offset 1, canonical program `A139890.P459811890116219402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139890 (n : ℕ) : ℤ :=
  (A139890.P459811890116219402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139890.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A141614.P7621870366066753165

`A008846(n+2)-A008846(n+1)`
-/

namespace A141614.P7621870366066753165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 2) - A008846 (n + 1)

end

end A141614.P7621870366066753165

noncomputable section

/-- A141614: First differences of A008846.

Offset 1, canonical program `A141614.P7621870366066753165`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141614 (n : ℕ) : ℤ :=
  A141614.P7621870366066753165.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141614.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A142992.P6139702825425951330

`A101603(A245300(n)+A114327(n))`
-/

namespace A142992.P6139702825425951330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101603 (A245300 n + A114327 n).toNat

end

end A142992.P6139702825425951330

noncomputable section

/-- A142992: Square array, read by ascending antidiagonals, of the crystal ball sequences for the root lattices of type C_n.

Offset 0, canonical program `A142992.P6139702825425951330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A142992 (n : ℕ) : ℤ :=
  A142992.P6139702825425951330.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A142992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145551.P800159444026911314

`lt[2*n, A306682(n+1)]+1`
-/

namespace A145551.P800159444026911314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A145551.P800159444026911314

noncomputable section

/-- A145551: Numbers k such that product of divisors of k / sum of divisors of k is an integer.

Offset 1, canonical program `A145551.P800159444026911314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A145551 (n : ℕ) : ℤ :=
  (A145551.P800159444026911314.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A145551.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A146975.P6518762066543505355

`A061043(5*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A146975.P6518762066543505355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061043 (5 * (n + 1))

end

end A146975.P6518762066543505355

noncomputable section

/-- A146975: First quintisection of A061043: A061043(5n).

Offset 0, canonical program `A146975.P6518762066543505355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A146975 (n : ℕ) : ℤ :=
  A146975.P6518762066543505355.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A146975.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A152313.P10045116747263746088

`p?[A202268(n+1)]`
-/

namespace A152313.P10045116747263746088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152313.P10045116747263746088

noncomputable section

/-- A152313: Primes without 0's or primes in their decimal expansion.

Offset 1, canonical program `A152313.P10045116747263746088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. -/
def A152313 (n : ℕ) : ℤ :=
  A152313.P10045116747263746088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. -/
def A152313.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A153085.P13243709957649807552

`eq[0, A156707(2*(n+1))]`
-/

namespace A153085.P13243709957649807552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153085.P13243709957649807552

noncomputable section

/-- A153085: Numbers k such that 4*k + 5 is not prime.

Offset 1, canonical program `A153085.P13243709957649807552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153085 (n : ℕ) : ℤ :=
  (A153085.P13243709957649807552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153236.P9988325728927142668

`eq[1, A156707(4*n+1)+1]`
-/

namespace A153236.P9988325728927142668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (4 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153236.P9988325728927142668

noncomputable section

/-- A153236: Numbers n such that 8*n + 3 is not prime.

Offset 1, canonical program `A153236.P9988325728927142668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153236 (n : ℕ) : ℤ :=
  (A153236.P9988325728927142668.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153236.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A154948.P16040335656581871554

`(A101603(A014132(n+1))+A101603(n))/2`
-/

namespace A154948.P16040335656581871554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101603 (A014132 (n + 1)).toNat + A101603 n : ℚ) / 2

end

end A154948.P16040335656581871554

noncomputable section

/-- A154948: Riordan array ((1+x)/(1-x^2)^2, x(1+x)/(1-x)).

Offset 0, canonical program `A154948.P16040335656581871554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A154948 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A154948.P16040335656581871554.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A154948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156659.P9694102179594452160

`A156660(A057979(n))`
-/

namespace A156659.P9694102179594452160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (A057979 n).toNat

end

end A156659.P9694102179594452160

noncomputable section

/-- A156659: Characteristic function of safe primes.

Offset 0, canonical program `A156659.P9694102179594452160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156659 (n : ℕ) : ℤ :=
  A156659.P9694102179594452160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156659.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A157075.P6307101692987451821

`2*A008846(n+1)`
-/

namespace A157075.P6307101692987451821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008846 (n + 1)

end

end A157075.P6307101692987451821

noncomputable section

/-- A157075: Positive integers n for which the Diophantine equation x^2 + y^2 = n^2/2 has relatively prime solutions.

Offset 1, canonical program `A157075.P6307101692987451821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157075 (n : ℕ) : ℤ :=
  A157075.P6307101692987451821.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157075.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A157813.P14905809734430770879

`A038567(n+1)-A157807(n+1)`
-/

namespace A157813.P14905809734430770879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (n + 1) - A157807 (n + 1)

end

end A157813.P14905809734430770879

noncomputable section

/-- A157813: Denominators of fractions arranged in "antidiagonal boustrophedon" ordering with equivalent fractions removed: (1/1, 2/1, 1/2, 1/3, 3/1, 4/1, 3/2, 2/3, 1/4, 1/5, 5/1, 6/1, 5/2, ...).

Offset 1, canonical program `A157813.P14905809734430770879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157813 (n : ℕ) : ℤ :=
  A157813.P14905809734430770879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157813.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A161840.P9787077699229106813`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161840 (n : ℕ) : ℤ :=
  A161840.P9787077699229106813.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161840.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A162322.P10409462531012993339

`∏{e}[A083794(n+1), #+1]`
-/

namespace A162322.P10409462531012993339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A162322.P10409462531012993339

noncomputable section

/-- A162322: Take sequence A000005 (where A000005(n) = the number of divisors of n). To get {a(k)}, replace each run of multiple occurrences of the same integer in sequence A000005 with just one occurrence of that integer, such that a(n) never equals a(n+1).

Offset 1, canonical program `A162322.P10409462531012993339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A162322 (n : ℕ) : ℤ :=
  (A162322.P10409462531012993339.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A162322.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A166160.P15900755279161251971

`A005097(n+1)+A047845(n+1)`
-/

namespace A166160.P15900755279161251971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + A047845 (n + 1)

end

end A166160.P15900755279161251971

noncomputable section

/-- A166160: a(n) = (n-th odd prime + n-th odd nonprime)/2 - 1.

Offset 1, canonical program `A166160.P15900755279161251971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047845, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166160 (n : ℕ) : ℤ :=
  A166160.P15900755279161251971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047845, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166160.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A173136.P16019285385718865064

`∩[A014076(n+1), A174047(n+1)]`
-/

namespace A173136.P16019285385718865064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173136.P16019285385718865064

noncomputable section

/-- A173136: Odd nonprimes n such that exactly one of 2n-1 and 2n+1 is prime.

Offset 1, canonical program `A173136.P16019285385718865064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173136 (n : ℕ) : ℤ :=
  (A173136.P16019285385718865064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173882.P14512227098527934923

`A155865(n)*A174124(n)`
-/

namespace A173882.P14512227098527934923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155865 n * A174124 n

end

end A173882.P14512227098527934923

noncomputable section

/-- A173882: Triangle T(n, k) = A090443(n-1)/(A090443(k-1)*A090443(n-k-1)) read by rows.

Offset 0, canonical program `A173882.P14512227098527934923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173882 (n : ℕ) : ℤ :=
  A173882.P14512227098527934923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174166.P8885773317569641825

`A034784(n+1)+1`
-/

namespace A174166.P8885773317569641825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1) + 1

end

end A174166.P8885773317569641825

noncomputable section

/-- A174166: Composites n such that 2*n-1 is prime.

Offset 1, canonical program `A174166.P8885773317569641825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174166 (n : ℕ) : ℤ :=
  A174166.P8885773317569641825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174166.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A178655.P14680724150822790654

`A131198(n)-A090181(A028310(n))`
-/

namespace A178655.P14680724150822790654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131198 n - A090181 (A028310 n).toNat

end

end A178655.P14680724150822790654

noncomputable section

/-- A178655: Triangle which contains the first differences of the Catalan triangle A001263 constructed along rows.

Offset 0, canonical program `A178655.P14680724150822790654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178655 (n : ℕ) : ℤ :=
  A178655.P14680724150822790654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178655.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188020.P10686154921417870516

`A003849(n)*A188470(A123070(n+1))`
-/

namespace A188020.P10686154921417870516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n * A188470 (A123070 (n + 1)).toNat

end

end A188020.P10686154921417870516

noncomputable section

/-- A188020: [nr]-[nr-kr]-[kr], where r=(1+sqrt(5))/2, k=7, [ ]=floor.

Offset 1, canonical program `A188020.P10686154921417870516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188020 (n : ℕ) : ℤ :=
  A188020.P10686154921417870516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188027.P17928141488210304603

`char[A188029(n+1)-1]`
-/

namespace A188027.P17928141488210304603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188029 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188027.P17928141488210304603

noncomputable section

/-- A188027: [nr]-[nr-kr]-[kr], where r=(1+sqrt(5))/2, k=9, [ ]=floor.

Offset 1, canonical program `A188027.P17928141488210304603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188027 (n : ℕ) : ℤ :=
  (A188027.P17928141488210304603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189073.P2258175136577695061

`A000217(A002260(n+1))*A128176(n+1)`
-/

namespace A189073.P2258175136577695061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A128176 (n + 1)

end

end A189073.P2258175136577695061

noncomputable section

/-- A189073: Triangle read by rows: T(n,k) is the number of inversions in k-compositions of n for n >= 3, 2 <= k <= n-1.

Offset 3, canonical program `A189073.P2258175136577695061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189073 (n : ℕ) : ℤ :=
  A189073.P2258175136577695061.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189073.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A191764.P4997533141840393272

`floor((A008846(n+1)/2)²)`
-/

namespace A191764.P4997533141840393272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A008846 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A191764.P4997533141840393272

noncomputable section

/-- A191764: Integers that do not have a partition into a sum of an odd square and two (not necessarily distinct) triangular numbers.

Offset 1, canonical program `A191764.P4997533141840393272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A191764 (n : ℕ) : ℤ :=
  A191764.P4997533141840393272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A191764.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A207623.P11214128450374438743

`A207617(n+1)/A207616(n+2)*A207622(n+2)`
-/

namespace A207623.P11214128450374438743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207617 (n + 1) : ℚ) / (A207616 (n + 2) : ℚ) * (A207622 (n + 2) : ℚ)

end

end A207623.P11214128450374438743

noncomputable section

/-- A207623: Triangle of coefficients of polynomials v(n,x) jointly generated with A207622; see the Formula section.

Offset 1, canonical program `A207623.P11214128450374438743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A207623 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207623.P11214128450374438743.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A207623.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A210994.P14985166472289145165

`comp[A007422(n+2)-1]+1`
-/

namespace A210994.P14985166472289145165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A210994.P14985166472289145165

noncomputable section

/-- A210994: Numbers k such that A000005(k) != 4.

Offset 1, canonical program `A210994.P14985166472289145165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210994 (n : ℕ) : ℤ :=
  (A210994.P14985166472289145165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213234.P13155706535955670258

`floor(1/(n+1))+A132460(n)`
-/

namespace A213234.P13155706535955670258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋ + A132460 n

end

end A213234.P13155706535955670258

noncomputable section

/-- A213234: Triangle read by rows: coefficients of auxiliary Rudin-Shapiro polynomials A_{ns}(omega) written in descending powers of x.

Offset 0, canonical program `A213234.P13155706535955670258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213234 (n : ℕ) : ℤ :=
  A213234.P13155706535955670258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213234.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A214803.P16704600720366373310

`(A038567(n)-1)*A020652(n+1)-A038567(n)`
-/

namespace A214803.P16704600720366373310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038567 n - 1) * A020652 (n + 1) - A038567 n

end

end A214803.P16704600720366373310

noncomputable section

/-- A214803: Frobenius numbers of numerators and denominators of rational numbers in order of their canonical enumeration.

Offset 1, canonical program `A214803.P16704600720366373310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214803 (n : ℕ) : ℤ :=
  A214803.P16704600720366373310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214803.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A240171.P15820621349524491020

`A074775(n+1)+1`
-/

namespace A240171.P15820621349524491020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1) + 1

end

end A240171.P15820621349524491020

noncomputable section

/-- A240171: Numbers k such that k has more divisors than k-1.

Offset 1, canonical program `A240171.P15820621349524491020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240171 (n : ℕ) : ℤ :=
  A240171.P15820621349524491020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244669.P10899017682964738725

`∑{d}[n+1, #]/A306682(n+1)`
-/

namespace A244669.P10899017682964738725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A306682 (n + 1) : ℚ)

end

end A244669.P10899017682964738725

noncomputable section

/-- A244669: Denominators of (product of divisors of n / sum of divisors of n).

Offset 1, canonical program `A244669.P10899017682964738725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244669 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A244669.P10899017682964738725.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244669.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A248345.P487880727656073056

`A128176(n+1)*A140756(n+1)`
-/

namespace A248345.P487880727656073056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128176 (n + 1) * A140756 (n + 1)

end

end A248345.P487880727656073056

noncomputable section

/-- A248345: Signed version of A094953.

Offset 0, canonical program `A248345.P487880727656073056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248345 (n : ℕ) : ℤ :=
  A248345.P487880727656073056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248345.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A255361.P8441760194462435338

`floor(A348665(n+1)/∏{e}[n+1, #+1])`
-/

namespace A255361.P8441760194462435338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A348665 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ)⌋

end

end A255361.P8441760194462435338

noncomputable section

/-- A255361: Number of ways n can be represented as x*y+x+y where x>=y>1.

Offset 0, canonical program `A255361.P8441760194462435338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3301 terms. -/
def A255361 (n : ℕ) : ℤ :=
  A255361.P8441760194462435338.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3301 terms. -/
def A255361.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A256226.P5516758041017410339

`A256315(2*n)`
-/

namespace A256226.P5516758041017410339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256315 (2 * n)

end

end A256226.P5516758041017410339

noncomputable section

/-- A256226: Number of partitions of 6n into 6 parts.

Offset 0, canonical program `A256226.P5516758041017410339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A256226 (n : ℕ) : ℤ :=
  A256226.P5516758041017410339.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A256226.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A262978.P15795800057724418315

`eq[1, A272334(2*(n+1))]+1`
-/

namespace A262978.P15795800057724418315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272334 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A262978.P15795800057724418315

noncomputable section

/-- A262978: Exponents n such that 2^n-1 and 2^n+1 are squarefree.

Offset 1, canonical program `A262978.P15795800057724418315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A262978 (n : ℕ) : ℤ :=
  (A262978.P15795800057724418315.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A262978.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A267612.P17946930726986731092

`A267845(A020703(n+1)-1)`
-/

namespace A267612.P17946930726986731092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267845 (A020703 (n + 1) - 1).toNat

end

end A267612.P17946930726986731092

noncomputable section

/-- A267612: Triangle read by rows giving successive states of cellular automaton generated by "Rule 185" initiated with a single ON (black) cell.

Offset 0, canonical program `A267612.P17946930726986731092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267612 (n : ℕ) : ℤ :=
  A267612.P17946930726986731092.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267612.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A273283.P12673250565840435264

`A007918(A079870(n+2))`
-/

namespace A273283.P12673250565840435264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A079870 (n + 2)).toNat

end

end A273283.P12673250565840435264

noncomputable section

/-- A273283: Least prime not less than the geometric mean of all prime divisors of n counted with multiplicity.

Offset 2, canonical program `A273283.P12673250565840435264`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, A079870, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273283 (n : ℕ) : ℤ :=
  A273283.P12673250565840435264.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, A079870, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273283.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A289982.P14518482289595983886

`A054723(eq[2, A054723(n+2)-A054723(n+1)]+1)`
-/

namespace A289982.P14518482289595983886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 2) - A054723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A289982.P14518482289595983886

noncomputable section

/-- A289982: Lesser member p of twin primes in A054723 (Prime exponents of composite Mersenne numbers).

Offset 1, canonical program `A289982.P14518482289595983886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A289982 (n : ℕ) : ℤ :=
  A289982.P14518482289595983886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A289982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290452.P1449433213042397141

`A135528(A268234(n))`
-/

namespace A290452.P1449433213042397141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A268234 n).toNat

end

end A290452.P1449433213042397141

noncomputable section

/-- A290452: Triangle formed by reading the triangle of Eulerian numbers (A173018) mod 2.

Offset 0, canonical program `A290452.P1449433213042397141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290452 (n : ℕ) : ℤ :=
  A290452.P1449433213042397141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290778.P11544281249416864993

`ceil(n/2)+A328652(A028310(n))-n`
-/

namespace A290778.P11544281249416864993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + (A328652 (A028310 n).toNat - (n : ℤ))

end

end A290778.P11544281249416864993

noncomputable section

/-- A290778: Number of connected undirected unlabeled loopless multigraphs with 4 vertices and n edges.

Offset 0, canonical program `A290778.P11544281249416864993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290778 (n : ℕ) : ℤ :=
  A290778.P11544281249416864993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292302.P15615501185427932939

`Δ[A057660(A028310(n))%A064987(n+1)]`
-/

namespace A292302.P15615501185427932939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057660 (A028310 n).toNat) (A064987 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292302.P15615501185427932939

noncomputable section

/-- A292302: Expansion of (1 - x)*Sum_{k>=1} k*phi(k)*x^k/(1 - x^k), where phi() is the Euler totient function (A000010).

Offset 1, canonical program `A292302.P15615501185427932939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A292302 (n : ℕ) : ℤ :=
  A292302.P15615501185427932939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A292302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293447.P13625130516549796158

`A005187(A087207(n+1))+a(A003557(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A293447.P13625130516549796158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A005187 (A087207 (n + 1)).toNat + a (A003557 (n + 1) - 1).toNat

end

end A293447.P13625130516549796158

noncomputable section

/-- A293447: Fully additive with a(p^e) = e * A000225(PrimePi(p)), where PrimePi(n) = A000720(n) and A000225(n) = (2^n)-1.

Offset 1, canonical program `A293447.P13625130516549796158`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293447 (n : ℕ) : ℤ :=
  A293447.P13625130516549796158.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297404.P1105051912658612473

`A087207(∏{e}[n+1, A000040(#)])`
-/

namespace A297404.P1105051912658612473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A297404.P1105051912658612473

noncomputable section

/-- A297404: A binary representation of the positive exponents that appear in the prime factorization of a number, shown in decimal.

Offset 1, canonical program `A297404.P1105051912658612473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297404 (n : ℕ) : ℤ :=
  A297404.P1105051912658612473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298867.P15695722077931917837

`A020934(n+1)+1+n`
-/

namespace A298867.P15695722077931917837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020934 (n + 1) + 1 + (n : ℤ)

end

end A298867.P15695722077931917837

noncomputable section

/-- A298867: Positions of numbers 4*p when all primes p and products 4*p are arranged in increasing order.

Offset 1, canonical program `A298867.P15695722077931917837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A298867 (n : ℕ) : ℤ :=
  A298867.P15695722077931917837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A298867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303385.P7477845777958172115

`A303384(n+1)-∑[A001057(n)]²`
-/

namespace A303385.P7477845777958172115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303384 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A303385.P7477845777958172115

noncomputable section

/-- A303385: Total area of all rectangles with dimensions s and t such that s | t, n = s + t and s < t.

Offset 1, canonical program `A303385.P7477845777958172115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303385 (n : ℕ) : ℤ :=
  A303385.P7477845777958172115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305800.P15822938426651104625

`A066246(n+1)+2-A000007(n)`
-/

namespace A305800.P15822938426651104625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1) + (2 - A000007 n)

end

end A305800.P15822938426651104625

noncomputable section

/-- A305800: Filter sequence for a(prime) = constant sequences.

Offset 1, canonical program `A305800.P15822938426651104625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305800 (n : ℕ) : ℤ :=
  A305800.P15822938426651104625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307892.P2139601516006320098

`A324528(n+1)/(n+1)`
-/

namespace A307892.P2139601516006320098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324528 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A307892.P2139601516006320098

noncomputable section

/-- A307892: a(n) = lcm(tau(n), pod(n)) / n, where tau(k) = the number of divisors of k (A000005) and pod(n) = the product of divisors of k (A007955).

Offset 1, canonical program `A307892.P2139601516006320098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307892 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307892.P2139601516006320098.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307989.P9420988974038816448

`n+1-A035250(n+1)`
-/

namespace A307989.P9420988974038816448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A035250 (n + 1)

end

end A307989.P9420988974038816448

noncomputable section

/-- A307989: a(n) = n - pi(2*n) + pi(n-1), where pi is the prime counting function.

Offset 1, canonical program `A307989.P9420988974038816448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307989 (n : ℕ) : ℤ :=
  A307989.P9420988974038816448.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308401.P1704796771430067553

`A005513(n+9)-A058187(n+3)`
-/

namespace A308401.P1704796771430067553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005513 (n + 9) - A058187 (n + 3)

end

end A308401.P1704796771430067553

noncomputable section

/-- A308401: Number of bracelets (turnover necklaces) of length n that have no reflection symmetry and consist of 6 white beads and n-6 black beads.

Offset 9, canonical program `A308401.P1704796771430067553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308401 (n : ℕ) : ℤ :=
  A308401.P1704796771430067553.a (n - 9)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309176.P1940731175005839416

`A002411(n+1)-A064602(n+1)`
-/

namespace A309176.P1940731175005839416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (n + 1) - A064602 (n + 1)

end

end A309176.P1940731175005839416

noncomputable section

/-- A309176: a(n) = n^2 * (n + 1)/2 - Sum_{k=1..n} sigma_2(k).

Offset 1, canonical program `A309176.P1940731175005839416`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309176 (n : ℕ) : ℤ :=
  A309176.P1940731175005839416.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309176.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309324.P3117719213953618928

`gcd(2, n+1)*A035109(n)`
-/

namespace A309324.P3117719213953618928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A035109 n

end

end A309324.P3117719213953618928

noncomputable section

/-- A309324: Expansion of Sum_{k>=1} psi(k) * x^k/(1 + x^k), where psi = Dedekind psi function (A001615).

Offset 1, canonical program `A309324.P3117719213953618928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309324 (n : ℕ) : ℤ :=
  A309324.P3117719213953618928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310420.P17604742702045992643

`abs(A008592(n)-A315305(n))`
-/

namespace A310420.P17604742702045992643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315305 n|

end

end A310420.P17604742702045992643

noncomputable section

/-- A310420: Coordination sequence Gal.6.324.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310420.P17604742702045992643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A310420 (n : ℕ) : ℤ :=
  A310420.P17604742702045992643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A310420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310455.P786279696323869961

`(A310496(n)+A310413(n))/2`
-/

namespace A310455.P786279696323869961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310496 n + A310413 n : ℚ) / 2

end

end A310455.P786279696323869961

noncomputable section

/-- A310455: Coordination sequence Gal.6.348.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310455.P786279696323869961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A310455 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A310455.P786279696323869961.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A310455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310521.P11719741427687549128

`abs(A008592(n)-A315185(n))`
-/

namespace A310521.P11719741427687549128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315185 n|

end

end A310521.P11719741427687549128

noncomputable section

/-- A310521: Coordination sequence Gal.5.133.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310521.P11719741427687549128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. -/
def A310521 (n : ℕ) : ℤ :=
  A310521.P11719741427687549128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. -/
def A310521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310531.P139863264852785367

`A313293(n)+A004396(A002264(n+1))`
-/

namespace A310531.P139863264852785367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313293 n + A004396 (A002264 (n + 1)).toNat

end

end A310531.P139863264852785367

noncomputable section

/-- A310531: Coordination sequence Gal.5.135.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310531.P139863264852785367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. -/
def A310531 (n : ℕ) : ℤ :=
  A310531.P139863264852785367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. -/
def A310531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311512.P15083007676544046786

`A004525(A004396(n))+A312184(n)-A004396(n)`
-/

namespace A311512.P15083007676544046786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A312184 n - A004396 n)

end

end A311512.P15083007676544046786

noncomputable section

/-- A311512: Coordination sequence Gal.6.130.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311512.P15083007676544046786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A311512 (n : ℕ) : ℤ :=
  A311512.P15083007676544046786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A311512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311861.P8116900546318081513

`A047588(n+1)+A311687(n)-n`
-/

namespace A311861.P8116900546318081513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 1) + (A311687 n - (n : ℤ))

end

end A311861.P8116900546318081513

noncomputable section

/-- A311861: Coordination sequence Gal.6.130.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311861.P8116900546318081513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A311861 (n : ℕ) : ℤ :=
  A311861.P8116900546318081513.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A311861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312101.P13095207374321224915

`A004525(A004396(n))+A312184(n)-A004525(n)`
-/

namespace A312101.P13095207374321224915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A312184 n - A004525 n)

end

end A312101.P13095207374321224915

noncomputable section

/-- A312101: Coordination sequence Gal.6.150.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312101.P13095207374321224915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312101 (n : ℕ) : ℤ :=
  A312101.P13095207374321224915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312507.P15411761902841347457

`2*A313876(n)-A008458(n)`
-/

namespace A312507.P15411761902841347457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313876 n - A008458 n

end

end A312507.P15411761902841347457

noncomputable section

/-- A312507: Coordination sequence Gal.6.245.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312507.P15411761902841347457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A312507 (n : ℕ) : ℤ :=
  A312507.P15411761902841347457.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A312507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312969.P1122136448779470542

`A004525(n)+A312926(n)-A004396(A004525(n))`
-/

namespace A312969.P1122136448779470542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A312926 n - A004396 (A004525 n).toNat)

end

end A312969.P1122136448779470542

noncomputable section

/-- A312969: Coordination sequence Gal.6.254.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312969.P1122136448779470542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312969 (n : ℕ) : ℤ :=
  A312969.P1122136448779470542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313519.P11254400388031239526

`2*A313704(n)-A313834(n)`
-/

namespace A313519.P11254400388031239526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313704 n - A313834 n

end

end A313519.P11254400388031239526

noncomputable section

/-- A313519: Coordination sequence Gal.6.196.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313519.P11254400388031239526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A313519 (n : ℕ) : ℤ :=
  A313519.P11254400388031239526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A313519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313543.P17775607979476667023

`A004396(A314038(n)+2*n)`
-/

namespace A313543.P17775607979476667023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314038 n + (2 * n : ℤ)).toNat

end

end A313543.P17775607979476667023

noncomputable section

/-- A313543: Coordination sequence Gal.6.196.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313543.P17775607979476667023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A313543 (n : ℕ) : ℤ :=
  A313543.P17775607979476667023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A313543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313610.P10900153276771282228

`A314708(n)+Δ[A011858(n)]`
-/

namespace A313610.P10900153276771282228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314708 n + (f1 (n + 1) - f1 n)

end

end A313610.P10900153276771282228

noncomputable section

/-- A313610: Coordination sequence Gal.5.136.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313610.P10900153276771282228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2426 terms. -/
def A313610 (n : ℕ) : ℤ :=
  A313610.P10900153276771282228.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2426 terms. -/
def A313610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313803.P13524405696789602585

`A314737(n)+n-A004396(A004525(n))`
-/

namespace A313803.P13524405696789602585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314737 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A313803.P13524405696789602585

noncomputable section

/-- A313803: Coordination sequence Gal.6.210.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313803.P13524405696789602585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A313803 (n : ℕ) : ℤ :=
  A313803.P13524405696789602585.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A313803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313825.P10683649782616596619

`2*A313722(n)-A313615(n)`
-/

namespace A313825.P10683649782616596619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313722 n - A313615 n

end

end A313825.P10683649782616596619

noncomputable section

/-- A313825: Coordination sequence Gal.6.322.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313825.P10683649782616596619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313825 (n : ℕ) : ℤ :=
  A313825.P10683649782616596619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314127.P7201920616213390850

`2*n+A004396(A310456(n))`
-/

namespace A314127.P7201920616213390850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A310456 n).toNat

end

end A314127.P7201920616213390850

noncomputable section

/-- A314127: Coordination sequence Gal.6.326.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314127.P7201920616213390850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314127 (n : ℕ) : ℤ :=
  A314127.P7201920616213390850.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314157.P13095074004396682400

`A310456(n)+A004525(A008458(n)-A310456(n))`
-/

namespace A314157.P13095074004396682400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310456 n + A004525 (A008458 n - A310456 n).toNat

end

end A314157.P13095074004396682400

noncomputable section

/-- A314157: Coordination sequence Gal.6.623.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314157.P13095074004396682400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A314157 (n : ℕ) : ℤ :=
  A314157.P13095074004396682400.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A314157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314428.P9611413599869563837

`A315214(n)-A004396(A006369(n))`
-/

namespace A314428.P9611413599869563837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315214 n - A004396 (A006369 n).toNat

end

end A314428.P9611413599869563837

noncomputable section

/-- A314428: Coordination sequence Gal.6.58.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314428.P9611413599869563837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A314428 (n : ℕ) : ℤ :=
  A314428.P9611413599869563837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A314428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314742.P12640656443291314387

`A311332(n)+A004525(n)`
-/

namespace A314742.P12640656443291314387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311332 n + A004525 n

end

end A314742.P12640656443291314387

noncomputable section

/-- A314742: Coordination sequence Gal.6.262.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314742.P12640656443291314387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A314742 (n : ℕ) : ℤ :=
  A314742.P12640656443291314387.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A314742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315186.P13057520070277243894

`2*A314684(n)-A008574(n)`
-/

namespace A315186.P13057520070277243894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314684 n - A008574 n

end

end A315186.P13057520070277243894

noncomputable section

/-- A315186: Coordination sequence Gal.6.263.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315186.P13057520070277243894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A315186 (n : ℕ) : ℤ :=
  A315186.P13057520070277243894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A315186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315758.P11537770092758335120

`abs(A008592(n)-A311332(n))`
-/

namespace A315758.P11537770092758335120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311332 n|

end

end A315758.P11537770092758335120

noncomputable section

/-- A315758: Coordination sequence Gal.6.210.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315758.P11537770092758335120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A315758 (n : ℕ) : ℤ :=
  A315758.P11537770092758335120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A315758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317745.P4957751422514425376

`A085090(col(n)+1)+A085090(row(n)-col(n)+1)`
-/

namespace A317745.P4957751422514425376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (SequenceMachineLib.triCol n + 1) + A085090 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A317745.P4957751422514425376

noncomputable section

/-- A317745: Square array T(n,k) (n >= 1, k >= 1) read by antidiagonals: first row and column are A085090, other entries equal sum of entries in first row and first column.

Offset 1, canonical program `A317745.P4957751422514425376`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317745 (n : ℕ) : ℤ :=
  A317745.P4957751422514425376.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317745.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318742.P13794595884572258610

`A006218(n+1)-3*A024916(n+1)+3*A064602(n+1)`
-/

namespace A318742.P13794595884572258610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - 3 * A024916 (n + 1) + 3 * A064602 (n + 1)

end

end A318742.P13794595884572258610

noncomputable section

/-- A318742: a(n) = Sum_{k=1..n} floor(n/k)^3.

Offset 1, canonical program `A318742.P13794595884572258610`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318742 (n : ℕ) : ℤ :=
  A318742.P13794595884572258610.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318742.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318744.P5868279293464878838

`A006218(n+1)-5*A024916(n+1)+10*A064602(n+1)-10*A064603(n+1)+5*A064604(n+1)`
-/

namespace A318744.P5868279293464878838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - 5 * A024916 (n + 1) + 10 * A064602 (n + 1) - 10 * A064603 (n + 1) + 5 * A064604 (n + 1)

end

end A318744.P5868279293464878838

noncomputable section

/-- A318744: a(n) = Sum_{k=1..n} floor(n/k)^5.

Offset 1, canonical program `A318744.P5868279293464878838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A064603, A064604, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318744 (n : ℕ) : ℤ :=
  A318744.P5868279293464878838.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A064603, A064604, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318744.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319225.P16688211917328614942

`A028310(abs(A330415(n+1)))`
-/

namespace A319225.P16688211917328614942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 |A330415 (n + 1)|.toNat

end

end A319225.P16688211917328614942

noncomputable section

/-- A319225: Number of acyclic spanning subgraphs of a cycle graph, where the sizes of the connected components are given by the prime indices of n.

Offset 1, canonical program `A319225.P16688211917328614942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319225 (n : ℕ) : ℤ :=
  A319225.P16688211917328614942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320900.P17696305435880861285

`A000593(n+1)+A050999(n+1)-(A000203(n+1)+A001157(n+1))/2`
-/

namespace A320900.P17696305435880861285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000593 (n + 1) + A050999 (n + 1) : ℚ) - (A000203 (n + 1) + A001157 (n + 1) : ℚ) / 2

end

end A320900.P17696305435880861285

noncomputable section

/-- A320900: Expansion of Sum_{k>=1} x^k/(1 + x^k)^3.

Offset 1, canonical program `A320900.P17696305435880861285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A050999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320900 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A320900.P17696305435880861285.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A050999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320900.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320901.P2796526842798435949

`(4*A000593(n+1)+6*A050999(n+1)+2*A051000(n+1)-2*A000203(n+1)-3*A001157(n+1)-A001158(n+1))/6`
-/

namespace A320901.P2796526842798435949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A000593 (n + 1) + 6 * A050999 (n + 1) + 2 * A051000 (n + 1) - 2 * A000203 (n + 1) - 3 * A001157 (n + 1) - A001158 (n + 1) : ℚ) / 6

end

end A320901.P2796526842798435949

noncomputable section

/-- A320901: Expansion of Sum_{k>=1} x^k/(1 + x^k)^4.

Offset 1, canonical program `A320901.P2796526842798435949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, A050999, A051000, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320901 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A320901.P2796526842798435949.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, A050999, A051000, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321516.P138228601672142670

`A070824(n+1)-A087624(n+1)`
-/

namespace A321516.P138228601672142670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) - A087624 (n + 1)

end

end A321516.P138228601672142670

noncomputable section

/-- A321516: Number of composite divisors of n that are < n.

Offset 1, canonical program `A321516.P138228601672142670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321516 (n : ℕ) : ℤ :=
  A321516.P138228601672142670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322430.P13676474653024602128

`eq[0, A005882(n)]`
-/

namespace A322430.P13676474653024602128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P13676474653024602128

noncomputable section

/-- A322430: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1-x^j)^8 is zero.

Offset 1, canonical program `A322430.P13676474653024602128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5866 terms. -/
def A322430 (n : ℕ) : ℤ :=
  (A322430.P13676474653024602128.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5866 terms. -/
def A322430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323760.P7258766165293403016

`A325030(n+1)/gcd(A324987(n+1), A325030(n+1))`
-/

namespace A323760.P7258766165293403016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325030 (n + 1) : ℚ) / (Int.gcd (A324987 (n + 1)) (A325030 (n + 1)) : ℚ)

end

end A323760.P7258766165293403016

noncomputable section

/-- A323760: Numerator of Product_{d|n} (pod(d)/tau(d)) where pod(k) = the product of the divisors of k and tau(k) = the number of the divisors of k.

Offset 1, canonical program `A323760.P7258766165293403016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A323760 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323760.P7258766165293403016.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A323760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324506.P94793196211163730

`lcm(A211776(n+1), A324528(n+1))/A211776(n+1)`
-/

namespace A324506.P94793196211163730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A211776 (n + 1)) (A324528 (n + 1)) : ℚ) / (A211776 (n + 1) : ℚ)

end

end A324506.P94793196211163730

noncomputable section

/-- A324506: a(n) = numerator of Product_{d|n} (d/tau(d)) where tau(k) = the number of divisors of k (A000005).

Offset 1, canonical program `A324506.P94793196211163730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3779 terms. -/
def A324506 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324506.P94793196211163730.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3779 terms. -/
def A324506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325937.P7515168000438611485

`A048272(n+1)+(-1)^(n+1)`
-/

namespace A325937.P7515168000438611485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) + (-1) ^ (n + 1)

end

end A325937.P7515168000438611485

noncomputable section

/-- A325937: Expansion of Sum_{k>=1} (-1)^(k + 1) * x^(2*k) / (1 - x^k).

Offset 1, canonical program `A325937.P7515168000438611485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325937 (n : ℕ) : ℤ :=
  A325937.P7515168000438611485.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325937.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325939.P14233231963195728863

`1-A048272(n+1)`
-/

namespace A325939.P14233231963195728863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A048272 (n + 1)

end

end A325939.P14233231963195728863

noncomputable section

/-- A325939: Expansion of Sum_{k>=1} x^(2*k) / (1 + x^k).

Offset 1, canonical program `A325939.P14233231963195728863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325939 (n : ℕ) : ℤ :=
  A325939.P14233231963195728863.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325940.P5826704247194185154

`A048272(n+1)-A002129(n+1)`
-/

namespace A325940.P5826704247194185154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) - A002129 (n + 1)

end

end A325940.P5826704247194185154

noncomputable section

/-- A325940: Expansion of Sum_{k>=1} x^(2*k) / (1 + x^k)^2.

Offset 1, canonical program `A325940.P5826704247194185154`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325940 (n : ℕ) : ℤ :=
  A325940.P5826704247194185154.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325941.P481027245925735307

`A000593(n+1)-(n+1)*A048272(n+1)`
-/

namespace A325941.P481027245925735307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - (n + 1 : ℤ) * A048272 (n + 1)

end

end A325941.P481027245925735307

noncomputable section

/-- A325941: Expansion of Sum_{k>=1} k * x^(2*k) / (1 + x^k)^2.

Offset 1, canonical program `A325941.P481027245925735307`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325941 (n : ℕ) : ℤ :=
  A325941.P481027245925735307.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326048.P11105980823969462034

`gcd(A326049(n+1), A326050(n+1))`
-/

namespace A326048.P11105980823969462034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326049 (n + 1)) (A326050 (n + 1))

end

end A326048.P11105980823969462034

noncomputable section

/-- A326048: a(n) = gcd(n-A050449(n), A082052(n)-n), where A050449 and A082052 give the sum of divisors of the form 4k+1, and not of that form, respectively.

Offset 1, canonical program `A326048.P11105980823969462034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326049, A326050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326048 (n : ℕ) : ℤ :=
  (A326048.P11105980823969462034.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326049, A326050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327971.P15193960377859545139

`A280508(A110240(n))`
-/

namespace A327971.P15193960377859545139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 (A110240 n).toNat

end

end A327971.P15193960377859545139

noncomputable section

/-- A327971: Bitwise XOR of trajectories of rule 30 and its mirror image, rule 86, when both are started from a lone 1 cell: a(n) = A110240(n) XOR A265281(n).

Offset 0, canonical program `A327971.P15193960377859545139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A280508, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327971 (n : ℕ) : ℤ :=
  A327971.P15193960377859545139.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A280508, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328557.P3690603107563760352

`comp[∪[A049642(n+1), n²]]`
-/

namespace A328557.P3690603107563760352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A328557.P3690603107563760352

noncomputable section

/-- A328557: Arithmetic numbers (A003601) that are not squares (A000290).

Offset 1, canonical program `A328557.P3690603107563760352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328557 (n : ℕ) : ℤ :=
  (A328557.P3690603107563760352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328559.P7373183784743117782

`filter[A049642(n+1), A049240(#)]`
-/

namespace A328559.P7373183784743117782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A328559.P7373183784743117782

noncomputable section

/-- A328559: Numbers m that are neither arithmetic (A003601) nor squares (A000290).

Offset 1, canonical program `A328559.P7373183784743117782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9810 terms. -/
def A328559 (n : ℕ) : ℤ :=
  A328559.P7373183784743117782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9810 terms. -/
def A328559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329760.P7902454852561261286

`∩[A038604(n+1), A038615(n+1)]`
-/

namespace A329760.P7902454852561261286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329760.P7902454852561261286

noncomputable section

/-- A329760: Primes without {2, 7} as digits.

Offset 1, canonical program `A329760.P7902454852561261286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9910 terms. -/
def A329760 (n : ℕ) : ℤ :=
  (A329760.P7902454852561261286.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9910 terms. -/
def A329760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331740.P9260061976321167483

`A048675(A375240(n+1))`
-/

namespace A331740.P9260061976321167483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A375240 (n + 1)).toNat

end

end A331740.P9260061976321167483

noncomputable section

/-- A331740: Number of prime factors in A225546(n), counted with multiplicity.

Offset 1, canonical program `A331740.P9260061976321167483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A331740 (n : ℕ) : ℤ :=
  A331740.P9260061976321167483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A331740.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143061.P12994917075269842013

`A171729(A014132(n+1))`
-/

namespace A143061.P12994917075269842013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171729 (A014132 (n + 1)).toNat

end

end A143061.P12994917075269842013

noncomputable section

/-- A143061: Triangle read by rows, A000012 * A127647 * A000012.

Offset 1, canonical program `A143061.P12994917075269842013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143061 (n : ℕ) : ℤ :=
  A143061.P12994917075269842013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143061.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A155563.P9922242301162862577

`∪[A353198(n+1), n²]`
-/

namespace A155563.P9922242301162862577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353198 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A155563.P9922242301162862577

noncomputable section

/-- A155563: Intersection of A001481 and A003136: N = a^2 + b^2 = c^2 + 3d^2 for some integers a,b,c,d.

Offset 1, canonical program `A155563.P9922242301162862577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155563 (n : ℕ) : ℤ :=
  (A155563.P9922242301162862577.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156995.P8768716994975108950

`A034807(A061885(n))*A119502(n)`
-/

namespace A156995.P8768716994975108950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (A061885 n).toNat * A119502 n

end

end A156995.P8768716994975108950

noncomputable section

/-- A156995: Triangle T(n, k) = 2*n*binomial(2*n-k, k)*(n-k)!/(2*n-k), with T(0, 0) = 2, read by rows.

Offset 0, canonical program `A156995.P8768716994975108950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A156995 (n : ℕ) : ℤ :=
  A156995.P8768716994975108950.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A156995.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A158275.P7501874898225500758

`A000203(n+1)/A179931(n+1)`
-/

namespace A158275.P7501874898225500758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A179931 (n + 1) : ℚ)

end

end A158275.P7501874898225500758

noncomputable section

/-- A158275: Denominators of antiharmonic means of divisors of n.

Offset 1, canonical program `A158275.P7501874898225500758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158275 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A158275.P7501874898225500758.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158275.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A182584.P10431393163449915345

`A034807(A174114(n+1)-char[A034807(n)])`
-/

namespace A182584.P10431393163449915345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (A174114 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A182584.P10431393163449915345

noncomputable section

/-- A182584: Central terms of the triangle A182579.

Offset 0, canonical program `A182584.P10431393163449915345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A182584 (n : ℕ) : ℤ :=
  A182584.P10431393163449915345.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A182584.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A217795.P8087682452368100650

`A000068(eq[2, A000068(n+2)-A000068(n+1)]+1)`
-/

namespace A217795.P8087682452368100650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 2) - A000068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A217795.P8087682452368100650

noncomputable section

/-- A217795: Numbers n such that n^4+1 and (n+2)^4+1 are both prime.

Offset 1, canonical program `A217795.P8087682452368100650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A217795 (n : ℕ) : ℤ :=
  A217795.P8087682452368100650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A217795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220655.P11527760965549802027

`n+1+A007489(A084558(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A220655.P11527760965549802027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A007489 (A084558 (n + 1)).toNat

end

end A220655.P11527760965549802027

noncomputable section

/-- A220655: For n with a unique factorial base representation n = du*u! + ... + d2*2! + d1*1! (each di in range 0..i, cf. A007623), a(n) = (du+1)*u! + ... + (d2+1)*2! + (d1+1)*1!; a(n) = n + A007489(A084558(n)).

Offset 1, canonical program `A220655.P11527760965549802027`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084558, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220655 (n : ℕ) : ℤ :=
  A220655.P11527760965549802027.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084558, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220655.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A230293.P6138807695865852207

`∑[A230294(2*(n+1))-A230294(2*n+1)]`
-/

namespace A230293.P6138807695865852207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230294 (2 * (n + 1)) - A230294 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230293.P6138807695865852207

noncomputable section

/-- A230293: a(n) = Sum_{i=1..n} d(8*i+1) - Sum_{i=1..n} d(4*i+1), where d(n) = A000005(n).

Offset 1, canonical program `A230293.P6138807695865852207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A230293 (n : ℕ) : ℤ :=
  A230293.P6138807695865852207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A230293.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A289616.P6968600782892435759

`A289654(n+1)-A289207(n)`
-/

namespace A289616.P6968600782892435759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289654 (n + 1) - A289207 n

end

end A289616.P6968600782892435759

noncomputable section

/-- A289616: A246604 (Catalan(n)-n) with initial terms 1,0,0,2,10 changed to 1,1,1,2,11.

Offset 0, canonical program `A289616.P6968600782892435759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289616 (n : ℕ) : ℤ :=
  A289616.P6968600782892435759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310452.P8814723128049641890

`A312926(n)+∑[A021913(n)]`
-/

namespace A310452.P8814723128049641890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310452.P8814723128049641890

noncomputable section

/-- A310452: Coordination sequence Gal.6.195.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310452.P8814723128049641890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A310452 (n : ℕ) : ℤ :=
  A310452.P8814723128049641890.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A310452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313228.P2561284602986671939

`A313859(n)-A004525(A004396(n))`
-/

namespace A313228.P2561284602986671939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313859 n - A004525 (A004396 n).toNat

end

end A313228.P2561284602986671939

noncomputable section

/-- A313228: Coordination sequence Gal.6.155.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313228.P2561284602986671939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313228 (n : ℕ) : ℤ :=
  A313228.P2561284602986671939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313824.P16488686342278004829

`A004396(A004525(n))+A313859(n)-A004525(n)`
-/

namespace A313824.P16488686342278004829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313859 n - A004525 n)

end

end A313824.P16488686342278004829

noncomputable section

/-- A313824: Coordination sequence Gal.6.195.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313824.P16488686342278004829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313824 (n : ℕ) : ℤ :=
  A313824.P16488686342278004829.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328981.P4173490097379195379

`1-A359832(n+1)`
-/

namespace A328981.P4173490097379195379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A359832 (n + 1)

end

end A328981.P4173490097379195379

noncomputable section

/-- A328981: Indicator function of numbers whose binary representation ends in an even positive number of 0's.

Offset 1, canonical program `A328981.P4173490097379195379`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359832, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328981 (n : ℕ) : ℤ :=
  A328981.P4173490097379195379.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359832, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328981.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332424.P12302743230273671513

`∑{p}[n+1, #/A332823(#)]`
-/

namespace A332424.P12302743230273671513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (A332823 p : ℚ)

end

end A332424.P12302743230273671513

noncomputable section

/-- A332424: If n = Product (p_j^k_j) then a(n) = Sum ((-1)^(pi(p_j) + 1) * p_j), where pi = A000720.

Offset 1, canonical program `A332424.P12302743230273671513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332424 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332424.P12302743230273671513.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313259.P1861422749685330600

`A004396(A310533(n)+2*n)`
-/

namespace A313259.P1861422749685330600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310533 n + (2 * n : ℤ)).toNat

end

end A313259.P1861422749685330600

noncomputable section

/-- A313259: Coordination sequence Gal.6.204.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313259.P1861422749685330600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A313259 (n : ℕ) : ℤ :=
  A313259.P1861422749685330600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A313259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313779.P5705324669876184418

`A312944(2*n)-4*n`
-/

namespace A313779.P5705324669876184418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312944 (2 * n) - (4 * n : ℤ)

end

end A313779.P5705324669876184418

noncomputable section

/-- A313779: Coordination sequence Gal.6.328.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313779.P5705324669876184418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A313779 (n : ℕ) : ℤ :=
  A313779.P5705324669876184418.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A313779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315473.P5440894521520911496

`A310533(n)+A000034(n)*A128834(n)`
-/

namespace A315473.P5440894521520911496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310533 n + A000034 n * A128834 n

end

end A315473.P5440894521520911496

noncomputable section

/-- A315473: Coordination sequence Gal.6.658.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315473.P5440894521520911496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315473 (n : ℕ) : ℤ :=
  A315473.P5440894521520911496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315519.P253301866715473937

`abs(A008592(n)-A312944(n))`
-/

namespace A315519.P253301866715473937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312944 n|

end

end A315519.P253301866715473937

noncomputable section

/-- A315519: Coordination sequence Gal.6.332.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315519.P253301866715473937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315519 (n : ℕ) : ℤ :=
  A315519.P253301866715473937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310465.P7677132150427515020

`A310380(n)+A001281(A310533(n)-A310380(n))`
-/

namespace A310465.P7677132150427515020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310380 n + A001281 (A310533 n - A310380 n).toNat

end

end A310465.P7677132150427515020

noncomputable section

/-- A310465: Coordination sequence Gal.6.342.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310465.P7677132150427515020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2235 terms. -/
def A310465 (n : ℕ) : ℤ :=
  A310465.P7677132150427515020.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2235 terms. -/
def A310465.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A144570.P11118034758568014224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144570 (n : ℕ) : ℤ :=
  A144570.P11118034758568014224.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

Offset 1, canonical program `A144573.P389422865237897508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A144573 (n : ℕ) : ℤ :=
  A144573.P389422865237897508.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A144573.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145199.P16128091297052967479

`A049092(n+1)-1`
-/

namespace A145199.P16128091297052967479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1) - 1

end

end A145199.P16128091297052967479

noncomputable section

/-- A145199: Nonsquarefree numbers k such that k+1 is prime.

Offset 1, canonical program `A145199.P16128091297052967479`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049092, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145199 (n : ℕ) : ℤ :=
  A145199.P16128091297052967479.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049092, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145199.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A145393.P14008747392456650763`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, A145390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A145393 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145393.P14008747392456650763.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, A145390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A145393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145642.P7677048617916036936

`A050985(A000142(n+1))`
-/

namespace A145642.P7677048617916036936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A000142 (n + 1)).toNat

end

end A145642.P7677048617916036936

noncomputable section

/-- A145642: Cubefree part of n!.

Offset 1, canonical program `A145642.P7677048617916036936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145642 (n : ℕ) : ℤ :=
  A145642.P7677048617916036936.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145643.P5565039089606067867

`A050985(A006882(n+1))`
-/

namespace A145643.P5565039089606067867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A006882 (n + 1)).toNat

end

end A145643.P5565039089606067867

noncomputable section

/-- A145643: Cubefree part of n!!.

Offset 1, canonical program `A145643.P5565039089606067867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145643 (n : ℕ) : ℤ :=
  A145643.P5565039089606067867.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145643.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A155752.P6228689506561445427

`A029707(n+1)-1`
-/

namespace A155752.P6228689506561445427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - 1

end

end A155752.P6228689506561445427

noncomputable section

/-- A155752: Where 2's occur in the prime differences A001223.

Offset 1, canonical program `A155752.P6228689506561445427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155752 (n : ℕ) : ℤ :=
  A155752.P6228689506561445427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155752.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158207.P14410960387144455574

`A158077(n)/A000034(A289207(n))`
-/

namespace A158207.P14410960387144455574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158077 n : ℚ) / (A000034 (A289207 n).toNat : ℚ)

end

end A158207.P14410960387144455574

noncomputable section

/-- A158207: Denominator of Bernoulli(n, -1/6).

Offset 0, canonical program `A158207.P14410960387144455574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A158207 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A158207.P14410960387144455574.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A158207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161671.P6686431630733255058

`A000040(n+1)-A141468(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161671.P6686431630733255058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A141468 (n + 1)

end

end A161671.P6686431630733255058

noncomputable section

/-- A161671: a(n) = prime(n) - A141468(n).

Offset 1, canonical program `A161671.P6686431630733255058`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161671 (n : ℕ) : ℤ :=
  A161671.P6686431630733255058.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

Offset 1, canonical program `A161964.P4214855072703663802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161964 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161964.P4214855072703663802.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

Offset 1, canonical program `A162909.P4760727200634389971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162909 (n : ℕ) : ℤ :=
  A162909.P4760727200634389971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A162910.P10176663424386777526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162910 (n : ℕ) : ℤ :=
  A162910.P10176663424386777526.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A163121.P3309701501368410349`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163121 (n : ℕ) : ℤ :=
  A163121.P3309701501368410349.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163121.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A163976.P5511687890835414188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163976 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163976.P5511687890835414188.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A174620.P16519671325999291648

`(2^A141468(n+1))%A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174620.P16519671325999291648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A141468 (n + 1) : ℤ))) (A000040 (n + 1))

end

end A174620.P16519671325999291648

noncomputable section

/-- A174620: a(n) = 2^A141468(n) mod prime(n), where A141468(n) is the n-th nonnegative nonprime.

Offset 1, canonical program `A174620.P16519671325999291648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174620 (n : ℕ) : ℤ :=
  A174620.P16519671325999291648.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174620.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A177416.P16700719177921399123

`(2^A141468(row(n)+1))%A000040(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177416.P16700719177921399123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A141468 (SequenceMachineLib.triRow n + 1) : ℤ))) (A000040 (SequenceMachineLib.triCol n + 1))

end

end A177416.P16700719177921399123

noncomputable section

/-- A177416: Triangle read by rows: T(n,k) = 2^A141468(n) mod prime(k).

Offset 1, canonical program `A177416.P16700719177921399123`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177416 (n : ℕ) : ℤ :=
  A177416.P16700719177921399123.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177416.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A236568.P5918031760574523688

`p?[A029707(n+1)-2]`
-/

namespace A236568.P5918031760574523688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236568.P5918031760574523688

noncomputable section

/-- A236568: Primes p with prime(p + 2) + 2 prime.

Offset 1, canonical program `A236568.P5918031760574523688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6764 terms. -/
def A236568 (n : ℕ) : ℤ :=
  A236568.P5918031760574523688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6764 terms. -/
def A236568.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A256447.P10526496064396814310

`A250477(n+1)-A250474(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256447.P10526496064396814310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 1) - A250474 (n + 1)

end

end A256447.P10526496064396814310

noncomputable section

/-- A256447: Number of integers in range (prime(n)^2)+1 .. (prime(n)*prime(n+1)) whose smallest prime factor is at least prime(n): a(n) = A250477(n) - A250474(n).

Offset 1, canonical program `A256447.P10526496064396814310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256447 (n : ℕ) : ℤ :=
  A256447.P10526496064396814310.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256448.P8888948745584736931

`A250474(n+2)-A250477(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256448.P8888948745584736931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 2) - A250477 (n + 1)

end

end A256448.P8888948745584736931

noncomputable section

/-- A256448: a(n) = A250474(n+1) - A250477(n).

Offset 1, canonical program `A256448.P8888948745584736931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256448 (n : ℕ) : ℤ :=
  A256448.P8888948745584736931.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257628.P18237328773760466214

`round(A147843(n)/(n+1))`
-/

namespace A257628.P18237328773760466214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A147843 n : ℚ) / (n + 1 : ℚ))

end

end A257628.P18237328773760466214

noncomputable section

/-- A257628: Expansion of 1 - f(-x) in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A257628.P18237328773760466214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257628 (n : ℕ) : ℤ :=
  A257628.P18237328773760466214.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257628.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A259488.P209394129755622119

`∩[A029707(n+1), A096477(n+1)]`
-/

namespace A259488.P209394129755622119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259488.P209394129755622119

noncomputable section

/-- A259488: Positive integers k with prime(k)+2 and prime(prime(k))+2 both prime.

Offset 1, canonical program `A259488.P209394129755622119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A259488 (n : ℕ) : ℤ :=
  (A259488.P209394129755622119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A259488.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A283978.P12954739794367481226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283978 (n : ℕ) : ℤ :=
  A283978.P12954739794367481226.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A289323.P568056266206430904

`2^n-2*A289322(n)`
-/

namespace A289323.P568056266206430904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 2 * A289322 n

end

end A289323.P568056266206430904

noncomputable section

/-- A289323: Number of twos minus number of ones in the first 2^n entries of the Kolakoski sequence, A000002.

Offset 0, canonical program `A289323.P568056266206430904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289323 (n : ℕ) : ℤ :=
  A289323.P568056266206430904.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294283.P1633113175361013834

`A294060(n+1)+A262871(A028310(n))`
-/

namespace A294283.P1633113175361013834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294060 (n + 1) + A262871 (A028310 n).toNat

end

end A294283.P1633113175361013834

noncomputable section

/-- A294283: Sum of the larger parts of the partitions of n into two distinct parts with smaller part squarefree.

Offset 1, canonical program `A294283.P1633113175361013834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294283 (n : ℕ) : ℤ :=
  A294283.P1633113175361013834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296084.P5567096927429281005

`A121373((A296082(n+1)+9)²)`
-/

namespace A296084.P5567096927429281005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 ((A296082 (n + 1) + 9) ^ 2).toNat

end

end A296084.P5567096927429281005

noncomputable section

/-- A296084: a(1) = 0 and for n > 1, a(n) = 1 if tau(n)-1 divides sigma(n)-1, 0 otherwise. Here tau = A000005, sigma = A000203.

Offset 1, canonical program `A296084.P5567096927429281005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296084 (n : ℕ) : ℤ :=
  A296084.P5567096927429281005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316472.P15815370962677773689

`A057889(A153152(A059893(n+1)))`
-/

namespace A316472.P15815370962677773689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A153152 (A059893 (n + 1)).toNat).toNat

end

end A316472.P15815370962677773689

noncomputable section

/-- A316472: Inverse permutation to A316385.

Offset 1, canonical program `A316472.P15815370962677773689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A316472 (n : ℕ) : ℤ :=
  A316472.P15815370962677773689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A316472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317932.P6928807366266153349

`2^A305439(n+1)`
-/

namespace A317932.P6928807366266153349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A305439 (n + 1) : ℤ)

end

end A317932.P6928807366266153349

noncomputable section

/-- A317932: Denominators of certain "Dirichlet Square Root" sequences: a(n) = A046644(n)/(2^A007949(n)).

Offset 1, canonical program `A317932.P6928807366266153349`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A317932.P6928807366266153349.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318440.P5886094417818087707

`A046645(n+1)-A007814(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318440.P5886094417818087707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A007814 (n + 1)

end

end A318440.P5886094417818087707

noncomputable section

/-- A318440: a(n) = A046645(n) - A007814(n); the 2-adic valuation of A299150.

Offset 1, canonical program `A318440.P5886094417818087707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318440 (n : ℕ) : ℤ :=
  A318440.P5886094417818087707.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318440.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318447.P10080329051014422547

`A296074(n+1)-A292257(n+1)`
-/

namespace A318447.P10080329051014422547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296074 (n + 1) - A292257 (n + 1)

end

end A318447.P10080329051014422547

noncomputable section

/-- A318447: a(n) = Sum_{d|n, d

Offset 1, canonical program `A318447.P10080329051014422547`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292257, A296074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318447 (n : ℕ) : ℤ :=
  A318447.P10080329051014422547.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292257, A296074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318513.P17793607305187104594

`A007814(A318512(n+1))`
-/

namespace A318513.P17793607305187104594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318512 (n + 1)).toNat

end

end A318513.P17793607305187104594

noncomputable section

/-- A318513: The 2-adic valuation of A318512.

Offset 1, canonical program `A318513.P17793607305187104594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318513 (n : ℕ) : ℤ :=
  A318513.P17793607305187104594.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318651.P14693122508814225811

`A046644(n+1)/A318512(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318651.P14693122508814225811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A318512 (n + 1) : ℚ)

end

end A318651.P14693122508814225811

noncomputable section

/-- A318651: a(n) = A046644(n)/A318512(n).

Offset 1, canonical program `A318651.P14693122508814225811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318651 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318651.P14693122508814225811.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318656.P13008805478963827236

`2*A007814(n+1)-A046645(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318656.P13008805478963827236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1) - A046645 (n + 1)

end

end A318656.P13008805478963827236

noncomputable section

/-- A318656: The 2-adic valuation of ratio A318649(n)/A318512(n); a(n) = 2*A007814(n) - A046645(n).

Offset 1, canonical program `A318656.P13008805478963827236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318656 (n : ℕ) : ℤ :=
  A318656.P13008805478963827236.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319293.P13782557292742531831

`eq[1, dr(A050985(n+1)²)]+1`
-/

namespace A319293.P13782557292742531831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A050985 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319293.P13782557292742531831

noncomputable section

/-- A319293: Numbers of the form 27^i*(9*j +- 1).

Offset 1, canonical program `A319293.P13782557292742531831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A319293 (n : ℕ) : ℤ :=
  (A319293.P13782557292742531831.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A319293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319715.P2645840201832669613

`A319713(n+1)+A276150(n+1)`
-/

namespace A319715.P2645840201832669613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319713 (n + 1) + A276150 (n + 1)

end

end A319715.P2645840201832669613

noncomputable section

/-- A319715: Sum of A276150(d) over divisors d of n, where A276150 gives the sum of digits in primorial base.

Offset 1, canonical program `A319715.P2645840201832669613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, A319713, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319715 (n : ℕ) : ℤ :=
  A319715.P2645840201832669613.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, A319713, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319715.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325446.P518244642965140129

`A254578(∏{p}[n+1, #])`
-/

namespace A325446.P518244642965140129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254578 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A325446.P518244642965140129

noncomputable section

/-- A325446: The unitary version of Kalmár's function: number of ordered factorizations of n into powers of distinct primes.

Offset 1, canonical program `A325446.P518244642965140129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325446 (n : ℕ) : ℤ :=
  A325446.P518244642965140129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332464.P13607079084851042029

`A269174(A000203(n+1))`
-/

namespace A332464.P13607079084851042029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 (A000203 (n + 1)).toNat

end

end A332464.P13607079084851042029

noncomputable section

/-- A332464: Rule 124 one-dimensional cellular automaton applied for one step to the configuration read from the base-2 expansion of sigma(n), then converted back to decimal.

Offset 1, canonical program `A332464.P13607079084851042029`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332464 (n : ℕ) : ℤ :=
  A332464.P13607079084851042029.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332464.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A141427.P14332811284951125235

`A000010(A067775(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141427.P14332811284951125235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A067775 (n + 1)).toNat

end

end A141427.P14332811284951125235

noncomputable section

/-- A141427: a(n) = phi(A067775(n)).

Offset 1, canonical program `A141427.P14332811284951125235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A067775, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A141427 (n : ℕ) : ℤ :=
  A141427.P14332811284951125235.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A067775, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A141427.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A153011.P18266022580685187752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153011 (n : ℕ) : ℤ :=
  A153011.P18266022580685187752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153011.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157228.P6044199204996125931

`(A000089(n+1)-A019590(n+1))/2`
-/

namespace A157228.P6044199204996125931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000089 (n + 1) - A019590 (n + 1) : ℚ) / 2

end

end A157228.P6044199204996125931

noncomputable section

/-- A157228: Number of primitive inequivalent inclined square sublattices of square lattice of index n.

Offset 1, canonical program `A157228.P6044199204996125931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, A019590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157228 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157228.P6044199204996125931.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, A019590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157361.P10027409474950020482

`A051731(n+1)*A114810(A002260(n+1))`
-/

namespace A157361.P10027409474950020482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A114810 (A002260 (n + 1)).toNat

end

end A157361.P10027409474950020482

noncomputable section

/-- A157361: Triangle read by rows, A051731 * (A114810 * 0^(n-k)).

Offset 1, canonical program `A157361.P10027409474950020482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157361 (n : ℕ) : ℤ :=
  A157361.P10027409474950020482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160597.P15569161753854345137

`(n+1)/A058663(n+2)`
-/

namespace A160597.P15569161753854345137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A058663 (n + 2) : ℚ)

end

end A160597.P15569161753854345137

noncomputable section

/-- A160597: Denominator of coresilience C(n) = (n - phi(n))/(n-1).

Offset 2, canonical program `A160597.P15569161753854345137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160597 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160597.P15569161753854345137.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160597.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A165931.P14215265576820430206

`Δ[A074693(A028310(n))]+C(2, n+2)`
-/

namespace A165931.P14215265576820430206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074693 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A165931.P14215265576820430206

noncomputable section

/-- A165931: a(1) = 1, for n > 1: a(n) = phi(sum of the previous terms) where phi is Euler's totient function.

Offset 1, canonical program `A165931.P14215265576820430206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. -/
def A165931 (n : ℕ) : ℤ :=
  A165931.P14215265576820430206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. -/
def A165931.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A173683.P3255351781956052033

`A024934(n+1)+1-∑{p}[n+1, C(#, n)]+n`
-/

namespace A173683.P3255351781956052033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024934 (n + 1) + (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ))

end

end A173683.P3255351781956052033

noncomputable section

/-- A173683: Sum of n mod p, for p = 2, 3, 5, ..., smallest prime >= n.

Offset 1, canonical program `A173683.P3255351781956052033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173683 (n : ℕ) : ℤ :=
  A173683.P3255351781956052033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173683.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A175701.P414894152738446073

`(n+1)*A062981(n+1)`
-/

namespace A175701.P414894152738446073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062981 (n + 1)

end

end A175701.P414894152738446073

noncomputable section

/-- A175701: a(n) = n ^ (phi(n)+1), phi(n) = A000010(n) = Euler totient function.

Offset 1, canonical program `A175701.P414894152738446073`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062981, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175701 (n : ℕ) : ℤ :=
  A175701.P414894152738446073.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062981, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175701.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A177754.P10245631934257037110

`∑[A047994(n+1)]`
-/

namespace A177754.P10245631934257037110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177754.P10245631934257037110

noncomputable section

/-- A177754: Partial sums of A047994.

Offset 1, canonical program `A177754.P10245631934257037110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177754 (n : ℕ) : ℤ :=
  A177754.P10245631934257037110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181538.P2422341693197598264

`A050873(n+1)*A054526(n+1)`
-/

namespace A181538.P2422341693197598264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A054526 (n + 1)

end

end A181538.P2422341693197598264

noncomputable section

/-- A181538: T(n, k) = sum_(1 <= j <= k) [j | k] j mu(k / j) gcd(n, k), triangle read by rows.

Offset 1, canonical program `A181538.P2422341693197598264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181538 (n : ℕ) : ℤ :=
  A181538.P2422341693197598264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181794.P10753813683387248145

`∩[A120351(n+1), A348005(n+1)]`
-/

namespace A181794.P10753813683387248145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181794.P10753813683387248145

noncomputable section

/-- A181794: Numbers n such that the number of even divisors of n is an even divisor of n.

Offset 1, canonical program `A181794.P10753813683387248145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3309 terms. -/
def A181794 (n : ℕ) : ℤ :=
  (A181794.P10753813683387248145.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3309 terms. -/
def A181794.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A182817.P14309563797210267358

`A182816(A018252(n+1))`
-/

namespace A182817.P14309563797210267358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182816 (A018252 (n + 1)).toNat

end

end A182817.P14309563797210267358

noncomputable section

/-- A182817: Number of elements k in Z/mZ such that k^m=k, for nonprime m = A018252(n).

Offset 1, canonical program `A182817.P14309563797210267358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A182816, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182817 (n : ℕ) : ℤ :=
  A182817.P14309563797210267358.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A182816, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191228.P7558607639382217669

`A107347(∑[C(2, ∑{e}[n+1, #+1])])`
-/

namespace A191228.P7558607639382217669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A191228.P7558607639382217669

noncomputable section

/-- A191228: Greatest Ramanujan prime index less than x, eta(x).

Offset 1, canonical program `A191228.P7558607639382217669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A191228 (n : ℕ) : ℤ :=
  A191228.P7558607639382217669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A191228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199514.P11177618966910493986

`(A066779(n+2)-A066779(n+1))/A009195(n+2)`
-/

namespace A199514.P11177618966910493986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066779 (n + 2) - A066779 (n + 1) : ℚ) / (A009195 (n + 2) : ℚ)

end

end A199514.P11177618966910493986

noncomputable section

/-- A199514: Numerators of zeros to a symmetric polynomial. Numerators of mu(n)^2*(n/(n - phi(n))).

Offset 2, canonical program `A199514.P11177618966910493986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A199514 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A199514.P11177618966910493986.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A199514.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A213514.P4233426757645372914

`A233583(A002808(n+1))%A073256(n+1)`
-/

namespace A213514.P4233426757645372914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (A002808 (n + 1)).toNat) (A073256 (n + 1))

end

end A213514.P4233426757645372914

noncomputable section

/-- A213514: For composite n, remainder of n - 1 when divided by phi(n), where phi(n) is the totient function (A000010).

Offset 1, canonical program `A213514.P4233426757645372914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A213514 (n : ℕ) : ℤ :=
  A213514.P4233426757645372914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A213514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216412.P4166279177706564649

`A000010(A039771(n+1))`
-/

namespace A216412.P4166279177706564649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A039771 (n + 1)).toNat

end

end A216412.P4166279177706564649

noncomputable section

/-- A216412: The cubes arising in A039771.

Offset 1, canonical program `A216412.P4166279177706564649`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A039771, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A216412 (n : ℕ) : ℤ :=
  A216412.P4166279177706564649.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A039771, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A216412.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219028.P14180676015968789505

`A057000(A039915(n+1))`
-/

namespace A219028.P14180676015968789505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (A039915 (n + 1)).toNat

end

end A219028.P14180676015968789505

noncomputable section

/-- A219028: Number of non-primitive roots for prime(n), less than prime(n).

Offset 1, canonical program `A219028.P14180676015968789505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A219028 (n : ℕ) : ℤ :=
  A219028.P14180676015968789505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A219028.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A219839.P1850322905401694183

`floor(A176095(n+1)/2)`
-/

namespace A219839.P1850322905401694183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A176095 (n + 1) : ℚ) / 2⌋

end

end A219839.P1850322905401694183

noncomputable section

/-- A219839: a(n) is the number of odd integers in 2..(n-1) that have a common factor (other than 1) with n.

Offset 1, canonical program `A219839.P1850322905401694183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219839 (n : ℕ) : ℤ :=
  A219839.P1850322905401694183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219839.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A226133.P1863923535064680015

`eq[2, A051709(24*n+1)]`
-/

namespace A226133.P1863923535064680015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (24 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226133.P1863923535064680015

noncomputable section

/-- A226133: Integers of the form (p*q-1)/24 where p < q are primes.

Offset 1, canonical program `A226133.P1863923535064680015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1195 terms. -/
def A226133 (n : ℕ) : ℤ :=
  (A226133.P1863923535064680015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1195 terms. -/
def A226133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226386.P1965072438224400353

`lt[A080400(n+1), A173557(n+1)]+1`
-/

namespace A226386.P1965072438224400353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A226386.P1965072438224400353

noncomputable section

/-- A226386: Numbers n such that rad(phi(n)) < phi(rad(n)), where rad(n) is the squarefree kernel of n, and phi is Euler's totient function.

Offset 1, canonical program `A226386.P1965072438224400353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226386 (n : ℕ) : ℤ :=
  (A226386.P1965072438224400353.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226386.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A240877.P3561136259224989296

`a(n-1)+A046151(n)+1` with `a(0)=1`
-/

namespace A240877.P3561136259224989296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A046151 n + 1)

end

end A240877.P3561136259224989296

noncomputable section

/-- A240877: Sum of the denominators of the Farey series of order n (A006843).

Offset 0, canonical program `A240877.P3561136259224989296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240877 (n : ℕ) : ℤ :=
  A240877.P3561136259224989296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240960.P3834821827547813831

`filter[A062972(n+1), A296211(#)]`
-/

namespace A240960.P3834821827547813831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A240960.P3834821827547813831

noncomputable section

/-- A240960: Numbers m such that sigma(m) - phi(m) = tau(m)^omega(m), where sigma=A000203, phi=A000010, tau=A000005 and omega=A001221.

Offset 1, canonical program `A240960.P3834821827547813831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A240960 (n : ℕ) : ℤ :=
  A240960.P3834821827547813831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A240960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243305.P11485261021790212205

`A066781(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243305.P11485261021790212205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1) + 1

end

end A243305.P11485261021790212205

noncomputable section

/-- A243305: a(n) = 2^phi(n)+1 = A066781(n)+1.

Offset 1, canonical program `A243305.P11485261021790212205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066781, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243305 (n : ℕ) : ℤ :=
  A243305.P11485261021790212205.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066781, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243305.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243306.P11123591734652521989

`A066781(n+1)-A000010(n+1)`
-/

namespace A243306.P11123591734652521989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1) - A000010 (n + 1)

end

end A243306.P11123591734652521989

noncomputable section

/-- A243306: 2^phi(n) - phi(n).

Offset 1, canonical program `A243306.P11123591734652521989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A066781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243306 (n : ℕ) : ℤ :=
  A243306.P11123591734652521989.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A066781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243306.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243307.P15340824748724089513

`A066781(n+1)+A000010(n+1)`
-/

namespace A243307.P15340824748724089513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1) + A000010 (n + 1)

end

end A243307.P15340824748724089513

noncomputable section

/-- A243307: a(n) = 2^phi(n) + phi(n).

Offset 1, canonical program `A243307.P15340824748724089513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A066781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243307 (n : ℕ) : ℤ :=
  A243307.P15340824748724089513.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A066781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243307.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A245199.P15657518765040660811

`∩[A036436(n+1), A039770(n+1)]`
-/

namespace A245199.P15657518765040660811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245199.P15657518765040660811

noncomputable section

/-- A245199: Numbers n where phi(n) and tau(n) are perfect squares.

Offset 1, canonical program `A245199.P15657518765040660811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A245199 (n : ℕ) : ℤ :=
  (A245199.P15657518765040660811.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A245199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245202.P1209277125421135516

`eq[1, A007913(A073757(n+1)+1)]+1`
-/

namespace A245202.P1209277125421135516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A073757 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245202.P1209277125421135516

noncomputable section

/-- A245202: Numbers k such that tau(k) + phi(k) is a perfect square.

Offset 1, canonical program `A245202.P1209277125421135516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A245202 (n : ℕ) : ℤ :=
  (A245202.P1209277125421135516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A245202.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A245325.P16913474214626989000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A154435, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245325 (n : ℕ) : ℤ :=
  A245325.P16913474214626989000.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A154435, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A245326.P3477940018113176802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A154435, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245326 (n : ℕ) : ℤ :=
  A245326.P3477940018113176802.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A154435, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A253473.P17226977604656821504

`A049820(A073256(n+1))`
-/

namespace A253473.P17226977604656821504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A073256 (n + 1)).toNat

end

end A253473.P17226977604656821504

noncomputable section

/-- A253473: a(n) = phi(c(n)) - tau(phi(c(n))), where c(n) is the n-th composite number.

Offset 1, canonical program `A253473.P17226977604656821504`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253473 (n : ℕ) : ℤ :=
  A253473.P17226977604656821504.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253473.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A259897.P2407533474827309403

`val(A066973(round(sqrt(n²+1))), 2)`
-/

namespace A259897.P2407533474827309403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A066973 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat 2

end

end A259897.P2407533474827309403

noncomputable section

/-- A259897: a(n) is the 2-adic valuation of phi(binomial(2*n,n)).

Offset 0, canonical program `A259897.P2407533474827309403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A259897 (n : ℕ) : ℤ :=
  (A259897.P2407533474827309403.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A259897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261768.P4235035151799676691

`A000010(n+1)^(n+1)-A062981(n+1)`
-/

namespace A261768.P4235035151799676691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ (n + 1) - A062981 (n + 1)

end

end A261768.P4235035151799676691

noncomputable section

/-- A261768: a(n) = phi(n)^n - n^phi(n), where phi(n) is Euler's totient function.

Offset 1, canonical program `A261768.P4235035151799676691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A062981, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261768 (n : ℕ) : ℤ :=
  A261768.P4235035151799676691.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A062981, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261768.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262406.P13591506646915870537

`record[∏{p}[A039770(n+1), #]]`
-/

namespace A262406.P13591506646915870537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262406.P13591506646915870537

noncomputable section

/-- A262406: Squarefree k such that phi(k) is a perfect square.

Offset 1, canonical program `A262406.P13591506646915870537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3694 terms. -/
def A262406 (n : ℕ) : ℤ :=
  (A262406.P13591506646915870537.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3694 terms. -/
def A262406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264441.P18237955088571379997

`floor(sqrt(A045763(n+1)²+1))`
-/

namespace A264441.P18237955088571379997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A045763 (n + 1) ^ 2 + 1)

end

end A264441.P18237955088571379997

noncomputable section

/-- A264441: Length of row n of the irregular triangle A133995 (positive integers <= n which are neither divisors of n nor coprime to n).

Offset 1, canonical program `A264441.P18237955088571379997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264441 (n : ℕ) : ℤ :=
  A264441.P18237955088571379997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264810.P5749480952070146331

`∑[A264739(n+1)]`
-/

namespace A264810.P5749480952070146331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P5749480952070146331

noncomputable section

/-- A264810: Number of numbers k <= n such that phi(m) = k for some m.

Offset 1, canonical program `A264810.P5749480952070146331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264810 (n : ℕ) : ℤ :=
  A264810.P5749480952070146331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264810.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A273060.P12650829157669879632

`A048855(n+1)/A000010(n+1)`
-/

namespace A273060.P12650829157669879632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048855 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A273060.P12650829157669879632

noncomputable section

/-- A273060: a(n) = phi(n!)/phi(n).

Offset 1, canonical program `A273060.P12650829157669879632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A048855, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273060 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A273060.P12650829157669879632.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A048855, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273060.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275059.P1792862244400861378

`floor(sqrt(p?[A264724(n+1)]))`
-/

namespace A275059.P1792862244400861378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A275059.P1792862244400861378

noncomputable section

/-- A275059: Numbers n such that A000010(n) + n^2 is a prime.

Offset 1, canonical program `A275059.P1792862244400861378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A275059 (n : ℕ) : ℤ :=
  A275059.P1792862244400861378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A275059.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A278049.P11985461488246088473

`∑[A200905(n+1)]-1`
-/

namespace A278049.P11985461488246088473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A278049.P11985461488246088473

noncomputable section

/-- A278049: a(n) = 3*(Sum_{k=1..n} phi(k)) - 1, where phi = A000010.

Offset 1, canonical program `A278049.P11985461488246088473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278049 (n : ℕ) : ℤ :=
  A278049.P11985461488246088473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278049.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A279287.P12267829467651088072

`A062354(n+1)/gcd(A062354(n+1), A064840(n+1))`
-/

namespace A279287.P12267829467651088072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (Int.gcd (A062354 (n + 1)) (A064840 (n + 1)) : ℚ)

end

end A279287.P12267829467651088072

noncomputable section

/-- A279287: a(n) = numerator of (phi(n)/tau(n)).

Offset 1, canonical program `A279287.P12267829467651088072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279287 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A279287.P12267829467651088072.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279288.P12363136388556004692

`A064840(n+1)/gcd(A062354(n+1), A064840(n+1))`
-/

namespace A279288.P12363136388556004692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (Int.gcd (A062354 (n + 1)) (A064840 (n + 1)) : ℚ)

end

end A279288.P12363136388556004692

noncomputable section

/-- A279288: a(n) = denominator of (phi(n)/tau(n)).

Offset 1, canonical program `A279288.P12363136388556004692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A279288.P12363136388556004692.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279480.P1875435745998994455

`p?[A180648(n+1)]-1`
-/

namespace A279480.P1875435745998994455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A279480.P1875435745998994455

noncomputable section

/-- A279480: Numbers k such that k+1 and k^4+1 are primes.

Offset 1, canonical program `A279480.P1875435745998994455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 943 terms. -/
def A279480 (n : ℕ) : ℤ :=
  A279480.P1875435745998994455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 943 terms. -/
def A279480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280131.P12740549784646320561

`∑[A029940(n+1)]`
-/

namespace A280131.P12740549784646320561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280131.P12740549784646320561

noncomputable section

/-- A280131: Partial sums of A029940 (Product_{d|n} phi(d)).

Offset 1, canonical program `A280131.P12740549784646320561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. -/
def A280131 (n : ℕ) : ℤ :=
  A280131.P12740549784646320561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. -/
def A280131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280729.P13621898540149842299

`2*A005097(n+1)-A098006(n+2)`
-/

namespace A280729.P13621898540149842299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005097 (n + 1) - A098006 (n + 2)

end

end A280729.P13621898540149842299

noncomputable section

/-- A280729: (p-1)/2 + phi(p-1) as p runs through the odd primes.

Offset 1, canonical program `A280729.P13621898540149842299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280729 (n : ℕ) : ℤ :=
  A280729.P13621898540149842299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280878.P12461695525565810277

`∩[A280877(n+1), A100490(n)]`
-/

namespace A280878.P12461695525565810277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280878.P12461695525565810277

noncomputable section

/-- A280878: Occurrences of decrease of the probability density P(n) of coprime numbers k,m, satisfying 1 <= k <= a(n) and 1 <= m <= a(n), and a(n) congruent to 1(mod 2) and a(n) congruent to {3,9,21,27}(mod 30).

Offset 1, canonical program `A280878.P12461695525565810277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A280878 (n : ℕ) : ℤ :=
  (A280878.P12461695525565810277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A280878.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A286568.P15358631486427401094

`1/2*(2+(A000010(n+1)+A286357(n+1))²-A000010(n+1)-3*A286357(n+1))`
-/

namespace A286568.P15358631486427401094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A000010 (n + 1) + A286357 (n + 1)) ^ 2 - A000010 (n + 1) - 3 * A286357 (n + 1) : ℚ)

end

end A286568.P15358631486427401094

noncomputable section

/-- A286568: Compound filter (phi(n) & 2-adic valuation of sigma(n)): a(n) = P(A000010(n), A286357(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286568.P15358631486427401094`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286568 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286568.P15358631486427401094.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286568.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A288929.P9658926497667176175

`char[comp[2*A219641(n)+n+2]-1]`
-/

namespace A288929.P9658926497667176175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219641 n + (n + 2 : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288929.P9658926497667176175

noncomputable section

/-- A288929: Fixed point of the mapping 00->1000, 10->10011, starting with 00.

Offset 1, canonical program `A288929.P9658926497667176175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288929 (n : ℕ) : ℤ :=
  (A288929.P9658926497667176175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289336.P13059549218811230367

`Δ[A160664(n)]/A009223(n+1)`
-/

namespace A289336.P13059549218811230367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A009223 (n + 1) : ℚ)

end

end A289336.P13059549218811230367

noncomputable section

/-- A289336: a(n) = numerator of (sigma(n) / phi(n)).

Offset 1, canonical program `A289336.P13059549218811230367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289336 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A289336.P13059549218811230367.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289412.P16736095440430260150

`A062354(n+1)/(A000203(n+1)*A009223(n+1))`
-/

namespace A289412.P16736095440430260150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (A000203 (n + 1) * A009223 (n + 1) : ℚ)

end

end A289412.P16736095440430260150

noncomputable section

/-- A289412: a(n) = denominator of (sigma(n) / phi(n)).

Offset 1, canonical program `A289412.P16736095440430260150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A289412.P16736095440430260150.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290288.P7015897065372757057

`A294487(2*(n+1))-A368058(2*(n+1))`
-/

namespace A290288.P7015897065372757057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294487 (2 * (n + 1)) - A368058 (2 * (n + 1))

end

end A290288.P7015897065372757057

noncomputable section

/-- A290288: Sum of the differences of the larger and smaller parts in the partitions of 2n into two parts with the larger part prime.

Offset 1, canonical program `A290288.P7015897065372757057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A290288 (n : ℕ) : ℤ :=
  A290288.P7015897065372757057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A290288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291549.P17778341340060570744

`∩[A039770(n+1), A291167(n+1)]`
-/

namespace A291549.P17778341340060570744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291549.P17778341340060570744

noncomputable section

/-- A291549: Numbers n such that both phi(n) and psi(n) are perfect squares.

Offset 1, canonical program `A291549.P17778341340060570744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A291549 (n : ℕ) : ℤ :=
  (A291549.P17778341340060570744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A291549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291770.P14763637493214319991

`A035327(A289831(n+1))`
-/

namespace A291770.P14763637493214319991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A289831 (n + 1)).toNat

end

end A291770.P14763637493214319991

noncomputable section

/-- A291770: A binary encoding of the zeros in ternary representation of n.

Offset 1, canonical program `A291770.P14763637493214319991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A291770 (n : ℕ) : ℤ :=
  A291770.P14763637493214319991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A291770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291782.P13217686668389589060

`(n+1)*A092694(n+1)`
-/

namespace A291782.P13217686668389589060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A092694 (n + 1)

end

end A291782.P13217686668389589060

noncomputable section

/-- A291782: Let f_k(n) be the result of applying phi (the Euler totient function A000010) k times to n; a(n) = n*Product_{k=1..oo} f_k(n).

Offset 1, canonical program `A291782.P13217686668389589060`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092694, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291782 (n : ℕ) : ℤ :=
  A291782.P13217686668389589060.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092694, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291782.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292601.P906998299720976826

`n-A292600(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292601.P906998299720976826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292600 n

end

end A292601.P906998299720976826

noncomputable section

/-- A292601: a(n) = n - A292600(n).

Offset 0, canonical program `A292601.P906998299720976826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292600, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292601 (n : ℕ) : ℤ :=
  A292601.P906998299720976826.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292600, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292601.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292769.P7637608606255069320

`∑[A228947(n+1)+1+n]`
-/

namespace A292769.P7637608606255069320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228947 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292769.P7637608606255069320

noncomputable section

/-- A292769: Partial sums of A051612.

Offset 1, canonical program `A292769.P7637608606255069320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292769 (n : ℕ) : ℤ :=
  A292769.P7637608606255069320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292770.P13773517797988369441

`A027656(A065387(n+1))-1`
-/

namespace A292770.P13773517797988369441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A065387 (n + 1)).toNat - 1

end

end A292770.P13773517797988369441

noncomputable section

/-- A292770: If sigma(n)+phi(n) is even then a(n) = (sigma(n)+phi(n))/2 otherwise -1.

Offset 1, canonical program `A292770.P13773517797988369441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2879 terms. -/
def A292770 (n : ℕ) : ℤ :=
  A292770.P13773517797988369441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2879 terms. -/
def A292770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292771.P12174660936694892643

`A027656(A051612(n+1))-1`
-/

namespace A292771.P12174660936694892643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A051612 (n + 1)).toNat - 1

end

end A292771.P12174660936694892643

noncomputable section

/-- A292771: If sigma(n)-phi(n) is even then (sigma(n)-phi(n))/2 otherwise -1.

Offset 1, canonical program `A292771.P12174660936694892643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3239 terms. -/
def A292771 (n : ℕ) : ℤ :=
  A292771.P12174660936694892643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3239 terms. -/
def A292771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294022.P1258060895145082735

`A294487(n+1)-A368058(n+1)`
-/

namespace A294022.P1258060895145082735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294487 (n + 1) - A368058 (n + 1)

end

end A294022.P1258060895145082735

noncomputable section

/-- A294022: Sum of the differences of the larger and smaller parts in the partitions of n into two parts with the larger part prime.

Offset 1, canonical program `A294022.P1258060895145082735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294022 (n : ℕ) : ℤ :=
  A294022.P1258060895145082735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294061.P13855633599967279508

`A294285(n+1)-A294284(n+1)`
-/

namespace A294061.P13855633599967279508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294285 (n + 1) - A294284 (n + 1)

end

end A294061.P13855633599967279508

noncomputable section

/-- A294061: Sum of the differences of the larger and smaller parts in the partitions of n into two parts with the larger part squarefree.

Offset 1, canonical program `A294061.P13855633599967279508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294061 (n : ℕ) : ℤ :=
  A294061.P13855633599967279508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294113.P16964987193441781902

`A368058(2*n+1)+A056171(2*n+1)`
-/

namespace A294113.P16964987193441781902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368058 (2 * n + 1) + A056171 (2 * n + 1)

end

end A294113.P16964987193441781902

noncomputable section

/-- A294113: Sum of the smaller parts of the partitions of 2n into two parts with larger part prime.

Offset 1, canonical program `A294113.P16964987193441781902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294113 (n : ℕ) : ℤ :=
  A294113.P16964987193441781902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295303.P8470606991534144988

`round(sin(atan(A295301(n+1))))`
-/

namespace A295303.P8470606991534144988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A295301 (n + 1) : ℝ)))

end

end A295303.P8470606991534144988

noncomputable section

/-- A295303: a(n) = +1 if n > phi(sigma(n)), -1 if n < phi(sigma(n)), and 0 if n = phi(sigma(n)), where phi = A000010 and sigma = A000203.

Offset 1, canonical program `A295303.P8470606991534144988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295303 (n : ℕ) : ℤ :=
  A295303.P8470606991534144988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295304.P8804302237955418523

`round(sin(atan(A295302(n+1))))`
-/

namespace A295304.P8804302237955418523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A295302 (n + 1) : ℝ)))

end

end A295304.P8804302237955418523

noncomputable section

/-- A295304: a(n) = +1 if sigma(phi(n)) > n, -1 if sigma(phi(n)) < n, and 0 if sigma(phi(n)) = n, where phi = A000010 and sigma = A000203.

Offset 1, canonical program `A295304.P8804302237955418523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295304 (n : ℕ) : ℤ :=
  A295304.P8804302237955418523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295309.P8495486040454173549

`ceil(A295301(n+1)/A160664(n))`
-/

namespace A295309.P8495486040454173549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295301 (n + 1) : ℚ) / (A160664 n : ℚ)⌉

end

end A295309.P8495486040454173549

noncomputable section

/-- A295309: Characteristic function for A295307: a(n) = 1 if n > phi(sigma(n)), 0 otherwise.

Offset 1, canonical program `A295309.P8495486040454173549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295309 (n : ℕ) : ℤ :=
  A295309.P8495486040454173549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295310.P15878343265230964827

`gcd(n+1, A062401(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295310.P15878343265230964827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A062401 (n + 1))

end

end A295310.P15878343265230964827

noncomputable section

/-- A295310: a(n) = gcd(n, A062401(n)), where A062401(n) = phi(sigma(n)).

Offset 1, canonical program `A295310.P15878343265230964827`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295310 (n : ℕ) : ℤ :=
  (A295310.P15878343265230964827.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295310.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295314.P2490447409591246023

`A000203(n+1)/A295313(n+1)`
-/

namespace A295314.P2490447409591246023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A295313 (n + 1) : ℚ)

end

end A295314.P2490447409591246023

noncomputable section

/-- A295314: a(n) = sigma(n) / gcd(sigma(n), phi(sigma(n))).

Offset 1, canonical program `A295314.P2490447409591246023`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295313, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295314 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295314.P2490447409591246023.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295313, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295314.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295315.P724021200967414565

`A062401(n+1)/A295313(n+1)`
-/

namespace A295315.P724021200967414565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A295313 (n + 1) : ℚ)

end

end A295315.P724021200967414565

noncomputable section

/-- A295315: a(n) = phi(sigma(n)) / gcd(sigma(n), phi(sigma(n))).

Offset 1, canonical program `A295315.P724021200967414565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A295313, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295315 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295315.P724021200967414565.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A295313, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295315.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296079.P15018280529446540256

`A010051(A039649(n+1))`
-/

namespace A296079.P15018280529446540256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A039649 (n + 1)).toNat

end

end A296079.P15018280529446540256

noncomputable section

/-- A296079: a(n) = 1 if 1+phi(n) is prime, 0 otherwise, where phi = A000010, Euler totient function.

Offset 1, canonical program `A296079.P15018280529446540256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A039649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A296079 (n : ℕ) : ℤ :=
  A296079.P15018280529446540256.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A039649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A296079.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296442.P15214103420429711918

`A008952(A000040(n+1))-A019590(n+1)`
-/

namespace A296442.P15214103420429711918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (A000040 (n + 1)).toNat - A019590 (n + 1)

end

end A296442.P15214103420429711918

noncomputable section

/-- A296442: Initial digit of n-th Mersenne number.

Offset 1, canonical program `A296442.P15214103420429711918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A296442 (n : ℕ) : ℤ :=
  A296442.P15214103420429711918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A296442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297086.P2157316894102876955

`A063524(A009195(n+1))`
-/

namespace A297086.P2157316894102876955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A009195 (n + 1)).toNat

end

end A297086.P2157316894102876955

noncomputable section

/-- A297086: a(n) = 1 if gcd(n, phi(n)) == 1 otherwise 0.

Offset 1, canonical program `A297086.P2157316894102876955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297086 (n : ℕ) : ℤ :=
  A297086.P2157316894102876955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297115.P17041612972225485539

`A083254(n+1)-A297114(n+1)`
-/

namespace A297115.P17041612972225485539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) - A297114 (n + 1)

end

end A297115.P17041612972225485539

noncomputable section

/-- A297115: Möbius transform of A000120, binary weight of n.

Offset 1, canonical program `A297115.P17041612972225485539`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, A297114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297115 (n : ℕ) : ℤ :=
  A297115.P17041612972225485539.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, A297114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297115.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297117.P14003803636479694355

`A297114(n+1)+A051953(n+1)`
-/

namespace A297117.P14003803636479694355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (n + 1) + A051953 (n + 1)

end

end A297117.P14003803636479694355

noncomputable section

/-- A297117: Möbius transform of A011371, n minus (number of 1's in binary expansion of n).

Offset 1, canonical program `A297117.P14003803636479694355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A297114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297117 (n : ℕ) : ℤ :=
  A297117.P14003803636479694355.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A297114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297117.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297153.P15480407933502326326

`xor(A083254(n+1)+A074057(n+3), A074057(n+3))`
-/

namespace A297153.P15480407933502326326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083254 (n + 1) + A074057 (n + 3)) (A074057 (n + 3))

end

end A297153.P15480407933502326326

noncomputable section

/-- A297153: Reversing binary representation of A083254(n), 2*phi(n) - n.

Offset 1, canonical program `A297153.P15480407933502326326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297153 (n : ℕ) : ℤ :=
  A297153.P15480407933502326326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298825.P17445611569160264652

`(n+1)*A298826(n+1)`
-/

namespace A298825.P17445611569160264652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A298826 (n + 1)

end

end A298825.P17445611569160264652

noncomputable section

/-- A298825: Row sums of A298824.

Offset 1, canonical program `A298825.P17445611569160264652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A298825 (n : ℕ) : ℤ :=
  A298825.P17445611569160264652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A298825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300837.P3407511099178858747

`A300836(n+1)+A007895(n+1)`
-/

namespace A300837.P3407511099178858747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300836 (n + 1) + A007895 (n + 1)

end

end A300837.P3407511099178858747

noncomputable section

/-- A300837: a(n) is the total number of terms (1-digits) in Zeckendorf representation of all divisors of n.

Offset 1, canonical program `A300837.P3407511099178858747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, A300836, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300837 (n : ℕ) : ℤ :=
  A300837.P3407511099178858747.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, A300836, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300837.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A302056.P1047659896841164977

`eq[0, A097195(n)]`
-/

namespace A302056.P1047659896841164977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302056.P1047659896841164977

noncomputable section

/-- A302056: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1 - x^j)^4 is zero.

Offset 1, canonical program `A302056.P1047659896841164977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4167 terms. -/
def A302056 (n : ℕ) : ℤ :=
  (A302056.P1047659896841164977.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4167 terms. -/
def A302056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304095.P8518165107337469446

`∑{d}[n+1, A157658(#)*A304096((n+1)/#)]`
-/

namespace A304095.P8518165107337469446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A304096 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304095.P8518165107337469446

noncomputable section

/-- A304095: a(n) is the number of the proper divisors of n that are Lucas numbers larger than 3 (4, 7, 11, 18, ...).

Offset 1, canonical program `A304095.P8518165107337469446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304095 (n : ℕ) : ℤ :=
  A304095.P8518165107337469446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305809.P1603223688838508842

`∑{d}[n+1, A300251(#)*A319684((n+1)/#)]`
-/

namespace A305809.P1603223688838508842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305809.P1603223688838508842

noncomputable section

/-- A305809: Dirichlet convolution of A003415 (Arithmetic derivative) with itself.

Offset 1, canonical program `A305809.P1603223688838508842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305809 (n : ℕ) : ℤ :=
  A305809.P1603223688838508842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306897.P7907252615614501728

`A306896(n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306897.P7907252615614501728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306896 (n + 1) : ℚ) / 6

end

end A306897.P7907252615614501728

noncomputable section

/-- A306897: a(n) = A306896(n)/6.

Offset 1, canonical program `A306897.P7907252615614501728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306896, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306897 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306897.P7907252615614501728.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306896, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306897.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306906.P14077871062807347448

`A306899(n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306906.P14077871062807347448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306899 (n + 1) : ℚ) / 6

end

end A306906.P14077871062807347448

noncomputable section

/-- A306906: a(n) = A306899(n)/6.

Offset 1, canonical program `A306906.P14077871062807347448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306899, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306906 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306906.P14077871062807347448.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306899, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309790.P12506806462962635043

`A104895(2*n+3)+A065620(A063946(2*(n+1)))`
-/

namespace A309790.P12506806462962635043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (2 * n + 3) + A065620 (A063946 (2 * (n + 1))).toNat

end

end A309790.P12506806462962635043

noncomputable section

/-- A309790: G.f. A(x) satisfies: A(x) = 2*x*(1 - x)*A(x^2) + x/(1 - x).

Offset 0, canonical program `A309790.P12506806462962635043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A309790 (n : ℕ) : ℤ :=
  A309790.P12506806462962635043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A309790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318315.P13571981915240890591

`A007814(A318314(n+1))`
-/

namespace A318315.P13571981915240890591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318314 (n + 1)).toNat

end

end A318315.P13571981915240890591

noncomputable section

/-- A318315: The 2-adic valuation of A318314.

Offset 1, canonical program `A318315.P13571981915240890591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318315 (n : ℕ) : ℤ :=
  A318315.P13571981915240890591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318315.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318459.P16245640249373000386

`gcd(n+1, A009213(n+1))`
-/

namespace A318459.P16245640249373000386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A009213 (n + 1))

end

end A318459.P16245640249373000386

noncomputable section

/-- A318459: a(n) = gcd(n, tau(n), phi(n)), where tau = A000005 and phi = A000010.

Offset 1, canonical program `A318459.P16245640249373000386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009213, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318459 (n : ℕ) : ℤ :=
  (A318459.P16245640249373000386.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009213, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318465.P12082296130128085348

`2^A318464(n+1)`
-/

namespace A318465.P12082296130128085348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318464 (n + 1) : ℤ)

end

end A318465.P12082296130128085348

noncomputable section

/-- A318465: The number of Zeckendorf-infinitary divisors of n = Product_{i} p(i)^r(i): divisors d = Product_{i} p(i)^s(i), such that the Zeckendorf expansion (A014417) of each s(i) contains only terms that are in the Zeckendorf expansion of r(i).

Offset 1, canonical program `A318465.P12082296130128085348`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318465 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318465.P12082296130128085348.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318473.P15254297892022099386

`A007814(A318474(n+1))`
-/

namespace A318473.P15254297892022099386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318474 (n + 1)).toNat

end

end A318473.P15254297892022099386

noncomputable section

/-- A318473: Additive with a(p^e) = A000045(e+1).

Offset 1, canonical program `A318473.P15254297892022099386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318473 (n : ℕ) : ℤ :=
  A318473.P15254297892022099386.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318829.P17686825492943057174

`A063994(n+1)/A049559(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318829.P17686825492943057174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063994 (n + 1) : ℚ) / (A049559 (n + 1) : ℚ)

end

end A318829.P17686825492943057174

noncomputable section

/-- A318829: a(n) = A063994(n) / A049559(n) = (1/gcd(n-1, phi(n))) * Product_{primes p dividing n} gcd(p-1, n-1).

Offset 1, canonical program `A318829.P17686825492943057174`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049559, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318829 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318829.P17686825492943057174.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049559, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318829.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319087.P11873426032925542692

`∑[A053191(n+1)]`
-/

namespace A319087.P11873426032925542692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P11873426032925542692

noncomputable section

/-- A319087: a(n) = Sum_{k=1..n} k^2*phi(k), where phi is the Euler totient function A000010.

Offset 1, canonical program `A319087.P11873426032925542692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319087 (n : ℕ) : ℤ :=
  A319087.P11873426032925542692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319676.P6719959262025814008

`lcm(n+1, A047994(n+1))/(n+1)`
-/

namespace A319676.P6719959262025814008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A047994 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A319676.P6719959262025814008

noncomputable section

/-- A319676: Numerator of A047994(n)/n where A047994 is the unitary totient function.

Offset 1, canonical program `A319676.P6719959262025814008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319676 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319676.P6719959262025814008.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320003.P14814290166151194418

`A091954(n+1)-A320015(n+1)`
-/

namespace A320003.P14814290166151194418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) - A320015 (n + 1)

end

end A320003.P14814290166151194418

noncomputable section

/-- A320003: Number of proper divisors of n of the form 6*k + 3.

Offset 1, canonical program `A320003.P14814290166151194418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320003 (n : ℕ) : ℤ :=
  A320003.P14814290166151194418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321167.P10161724176455158981

`∏{e}[n+1, A047994(#)]`
-/

namespace A321167.P10161724176455158981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A047994 (Nat.factorization (f1 n) p)

end

end A321167.P10161724176455158981

noncomputable section

/-- A321167: The e-unitary Euler function: a(1) = 1, a(n) = Product uphi(e(i)) for n = Product p(i)^e(i), where uphi is the unitary totient function (A047994).

Offset 1, canonical program `A321167.P10161724176455158981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321167 (n : ℕ) : ℤ :=
  A321167.P10161724176455158981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321553.P1101805715336315510

`∑{d}[n+1, A306412(#)*A321552((n+1)/#)]`
-/

namespace A321553.P1101805715336315510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306412 d * A321552 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321553.P1101805715336315510

noncomputable section

/-- A321553: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^8.

Offset 1, canonical program `A321553.P1101805715336315510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321553 (n : ℕ) : ℤ :=
  A321553.P1101805715336315510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321818.P11557806207317153073

`∑{d}[n+1, A096961(#)*A306412((n+1)/#)]`
-/

namespace A321818.P11557806207317153073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A096961 d * A306412 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321818.P11557806207317153073

noncomputable section

/-- A321818: a(n) = Sum_{d|n, n/d odd} d^8 for n > 0.

Offset 1, canonical program `A321818.P11557806207317153073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321818 (n : ℕ) : ℤ :=
  A321818.P11557806207317153073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322359.P4809427501009130692

`A322360(n+1)/A066086(n+1)`
-/

namespace A322359.P4809427501009130692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322360 (n + 1) : ℚ) / (A066086 (n + 1) : ℚ)

end

end A322359.P4809427501009130692

noncomputable section

/-- A322359: Least common multiple of product (p-1) and product (p+1), where p ranges over distinct prime divisors of n.

Offset 1, canonical program `A322359.P4809427501009130692`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066086, A322360, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322359 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322359.P4809427501009130692.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066086, A322360, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323399.P15061214207658318257

`A007434(n+1)+A046970(n+1)`
-/

namespace A323399.P15061214207658318257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1) + A046970 (n + 1)

end

end A323399.P15061214207658318257

noncomputable section

/-- A323399: Sum of Jordan function J_2(n), A007434 and its Dirichlet inverse, A046970.

Offset 1, canonical program `A323399.P15061214207658318257`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, A046970, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323399 (n : ℕ) : ℤ :=
  A323399.P15061214207658318257.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, A046970, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323399.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323409.P15899352784078456227

`gcd(n+1, A047994(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323409.P15899352784078456227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A047994 (n + 1))

end

end A323409.P15899352784078456227

noncomputable section

/-- A323409: Greatest common divisor of Product (p_i^e_i)-1 and n, when n = Product (p_i^e_i); a(n) = gcd(n, A047994(n)).

Offset 1, canonical program `A323409.P15899352784078456227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323409 (n : ℕ) : ℤ :=
  (A323409.P15899352784078456227.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323410.P6927638298555409235

`n+1-A047994(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323410.P6927638298555409235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A047994 (n + 1)

end

end A323410.P6927638298555409235

noncomputable section

/-- A323410: Unitary analog of cototient function A051953: a(n) = n - A047994(n).

Offset 1, canonical program `A323410.P6927638298555409235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323410 (n : ℕ) : ℤ :=
  A323410.P6927638298555409235.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323410.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324045.P1593717203067298836

`A033879(n+1)+A324047(n+1)-A053158(n+1)`
-/

namespace A324045.P1593717203067298836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + (A324047 (n + 1) - A053158 (n + 1))

end

end A324045.P1593717203067298836

noncomputable section

/-- A324045: a(n) = A000010(n) - A106316(n).

Offset 1, canonical program `A324045.P1593717203067298836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324045 (n : ℕ) : ℤ :=
  A324045.P1593717203067298836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324048.P2740531755121187895

`A000203(n+1)-A083254(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324048.P2740531755121187895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A083254 (n + 1)

end

end A324048.P2740531755121187895

noncomputable section

/-- A324048: a(n) = A000203(n) - A083254(n) = n + sigma(n) - 2*phi(n).

Offset 1, canonical program `A324048.P2740531755121187895`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324048 (n : ℕ) : ℤ :=
  A324048.P2740531755121187895.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324050.P4688166954402356267

`record[n+1-A318840(n+1)]`
-/

namespace A324050.P4688166954402356267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A318840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324050.P4688166954402356267

noncomputable section

/-- A324050: Numbers satisfying Korselt's criterion: squarefree numbers n such that for every prime divisor p of n, p-1 divides n-1.

Offset 1, canonical program `A324050.P4688166954402356267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6559 terms. -/
def A324050 (n : ℕ) : ℤ :=
  A324050.P4688166954402356267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6559 terms. -/
def A324050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325321.P4412432402840763013

`A010052(A051953(n+1))`
-/

namespace A325321.P4412432402840763013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A051953 (n + 1)).toNat

end

end A325321.P4412432402840763013

noncomputable section

/-- A325321: a(n) = 1 if cototient of n is a square, 0 otherwise.

Offset 1, canonical program `A325321.P4412432402840763013`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325321 (n : ℕ) : ℤ :=
  A325321.P4412432402840763013.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325321.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326195.P2163876731620684191

`1+a(A009195(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A326195.P2163876731620684191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A009195 (n + 1) - 1).toNat

end

end A326195.P2163876731620684191

noncomputable section

/-- A326195: Number of iterations of x -> A009195(x) needed to reach 1 when starting from x = n, where A009195(x) = gcd(x, phi(x)).

Offset 1, canonical program `A326195.P2163876731620684191`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326195 (n : ℕ) : ℤ :=
  (A326195.P2163876731620684191.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326195.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326575.P1591157321063095187

`∑{d}[n+1, A113448(#)*A195459((n+1)/#)]`
-/

namespace A326575.P1591157321063095187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113448 d * A195459 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326575.P1591157321063095187

noncomputable section

/-- A326575: Expansion of Sum_{k>=1} k * x^k * (1 + x^(2*k)) / (1 + x^(2*k) + x^(4*k)).

Offset 1, canonical program `A326575.P1591157321063095187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326575 (n : ℕ) : ℤ :=
  A326575.P1591157321063095187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327239.P9428732686515301854

`A013947(n+2)-A013947(n+1)`
-/

namespace A327239.P9428732686515301854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 2) - A013947 (n + 1)

end

end A327239.P9428732686515301854

noncomputable section

/-- A327239: For n >= 1, a(n) = b(n+1) - b(n) where b is A013947.

Offset 1, canonical program `A327239.P9428732686515301854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327239 (n : ℕ) : ℤ :=
  A327239.P9428732686515301854.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327625.P2807763681306950925

`∑{d}[n+1, A195459(#)]`
-/

namespace A327625.P2807763681306950925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A195459 d

end

end A327625.P2807763681306950925

noncomputable section

/-- A327625: Expansion of Sum_{k>=0} x^(3^k) / (1 - x^(3^k))^2.

Offset 1, canonical program `A327625.P2807763681306950925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327625 (n : ℕ) : ℤ :=
  A327625.P2807763681306950925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329153.P12855634014752564158

`A047994(n+1)+a(A047994(n+1)-1)` with `a(0)=0`
-/

namespace A329153.P12855634014752564158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A047994 (n + 1) + a (A047994 (n + 1) - 1).toNat

end

end A329153.P12855634014752564158

noncomputable section

/-- A329153: Sum of the iterated unitary totient function (A047994).

Offset 1, canonical program `A329153.P12855634014752564158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329153 (n : ℕ) : ℤ :=
  A329153.P12855634014752564158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330319.P9551825162349702017

`∑[A055034(2*(n+1))*A055034(n+2)]`
-/

namespace A330319.P9551825162349702017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (2 * (n + 1)) * A055034 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P9551825162349702017

noncomputable section

/-- A330319: a(n) = Sum_{i=1..n} phi(i)*phi(i+1), where phi(n) = A000010(n) is Euler's totient function.

Offset 1, canonical program `A330319.P9551825162349702017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A330319 (n : ℕ) : ℤ :=
  A330319.P9551825162349702017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A330319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330740.P3370590016903294651

`A117967(abs(A117966(n)))`
-/

namespace A330740.P3370590016903294651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 |A117966 n|.toNat

end

end A330740.P3370590016903294651

noncomputable section

/-- A330740: a(n) = min(n, A004488(n)), where A004488(n) is base-3 sum n+n without carries.

Offset 0, canonical program `A330740.P3370590016903294651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330740 (n : ℕ) : ℤ :=
  A330740.P3370590016903294651.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331273.P10558890110751531057

`A072911(n+1)+a(A072911(n+1)-1)` with `a(0)=0`
-/

namespace A331273.P10558890110751531057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A072911 (n + 1) + a (A072911 (n + 1) - 1).toNat

end

end A331273.P10558890110751531057

noncomputable section

/-- A331273: Sum of the iterated exponential totient function (A072911).

Offset 1, canonical program `A331273.P10558890110751531057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331273 (n : ℕ) : ℤ :=
  A331273.P10558890110751531057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331891.P10796456041934863719

`∑[2*A119608(n+1)]-A119608(n+1)`
-/

namespace A331891.P10796456041934863719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A119608 (n + 1)

end

end A331891.P10796456041934863719

noncomputable section

/-- A331891: Negabinary palindromes: nonnegative numbers whose negabinary expansion (A039724) is palindromic.

Offset 1, canonical program `A331891.P10796456041934863719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331891 (n : ℕ) : ℤ :=
  A331891.P10796456041934863719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331891.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143973.P9186749906629124843

`Δ[lt[0, A354099(n+1)]]`
-/

namespace A143973.P9186749906629124843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354099 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A143973.P9186749906629124843

noncomputable section

/-- A143973: Distances between multiples of 3 in A000010.

Offset 1, canonical program `A143973.P9186749906629124843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A143973 (n : ℕ) : ℤ :=
  A143973.P9186749906629124843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A143973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145190.P17626600670453877125

`lt[A217863(n+1)%(n+1), 1]+1`
-/

namespace A145190.P17626600670453877125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217863 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A145190.P17626600670453877125

noncomputable section

/-- A145190: Numbers k such that phi(1)*phi(2)*...*phi(k) / k is an integer, where phi(k) is the totient function (A000010).

Offset 1, canonical program `A145190.P17626600670453877125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A145190 (n : ℕ) : ℤ :=
  (A145190.P17626600670453877125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A145190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157346.P9858211536238811526

`∩[A007304(n+1), A156541(n+1)]`
-/

namespace A157346.P9858211536238811526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157346.P9858211536238811526

noncomputable section

/-- A157346: Products of 3 distinct Sophie Germain primes.

Offset 1, canonical program `A157346.P9858211536238811526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 807 terms. -/
def A157346 (n : ℕ) : ℤ :=
  (A157346.P9858211536238811526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 807 terms. -/
def A157346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179188.P9691688414308048865

`record[A103391(A217139(n+1)-2)]`
-/

namespace A179188.P9691688414308048865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A217139 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179188.P9691688414308048865

noncomputable section

/-- A179188: Numbers n such that phi(n) = phi(n+6), with Euler's totient function phi=A000010.

Offset 1, canonical program `A179188.P9691688414308048865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A179188 (n : ℕ) : ℤ :=
  A179188.P9691688414308048865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A179188.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A193386.P2341240866290404182

`A062821(n+1)-A193453(n+1)`
-/

namespace A193386.P2341240866290404182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1) - A193453 (n + 1)

end

end A193386.P2341240866290404182

noncomputable section

/-- A193386: Number of even divisors of phi(n).

Offset 1, canonical program `A193386.P2341240866290404182`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062821, A193453, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193386 (n : ℕ) : ℤ :=
  A193386.P2341240866290404182.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062821, A193453, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193386.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A230203.P13072862272042323846

`lt[0, A295302(n+1)]+1`
-/

namespace A230203.P13072862272042323846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295302 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A230203.P13072862272042323846

noncomputable section

/-- A230203: Numbers k such that sigma(phi(k)) > k.

Offset 1, canonical program `A230203.P13072862272042323846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230203 (n : ℕ) : ℤ :=
  (A230203.P13072862272042323846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230203.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A231099.P2171262129548700046

`p?[A000010(A000203(n+1))+A295302(n+1)+1+n]`
-/

namespace A231099.P2171262129548700046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat + (A295302 (n + 1) + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231099.P2171262129548700046

noncomputable section

/-- A231099: Primes expressible as phi(sigma(n)) + sigma(phi(n)), in order of their occurrence.

Offset 1, canonical program `A231099.P2171262129548700046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A231099 (n : ℕ) : ℤ :=
  A231099.P2171262129548700046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A231099.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A279912.P579018527015761516

`∑{d}[n, A342534(#)]`
-/

namespace A279912.P579018527015761516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A342534 d

end

end A279912.P579018527015761516

noncomputable section

/-- A279912: a(n) = Sum_{i=1..n} denominator(i^n/n).

Offset 0, canonical program `A279912.P579018527015761516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279912 (n : ℕ) : ℤ :=
  A279912.P579018527015761516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279912.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A306217.P10231340410320966270

`filter[A045718(n), A354926(#)]`
-/

namespace A306217.P10231340410320966270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A306217.P10231340410320966270

noncomputable section

/-- A306217: Sphenic numbers with a prime nearest neighbor.

Offset 1, canonical program `A306217.P10231340410320966270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1709 terms. -/
def A306217 (n : ℕ) : ℤ :=
  A306217.P10231340410320966270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1709 terms. -/
def A306217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308339.P12363408473159488480

`eq[1, A239656(n+1)]+1`
-/

namespace A308339.P12363408473159488480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308339.P12363408473159488480

noncomputable section

/-- A308339: Sphenic number indices of A215217.

Offset 1, canonical program `A308339.P12363408473159488480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A308339 (n : ℕ) : ℤ :=
  (A308339.P12363408473159488480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A308339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328728.P9496393580234342524

`A328749(A328727(n+1))`
-/

namespace A328728.P9496393580234342524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (A328727 (n + 1)).toNat

end

end A328728.P9496393580234342524

noncomputable section

/-- A328728: a(n) = Sum_{k = 0..w and t_k > 0} (-1)^t_k * 2^k, where Sum_{k = 0..w} t_k * 3^k is the ternary representation of A328727(n).

Offset 1, canonical program `A328728.P9496393580234342524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328727, A328749, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328728 (n : ℕ) : ℤ :=
  A328728.P9496393580234342524.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328727, A328749, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328728.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A285227.P10686455318228212917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A285227 (n : ℕ) : ℤ :=
  (A285227.P10686455318228212917.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A285227.provenance : SequenceMachineLib.Provenance := .conjectured

