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
import Seq.B000.C038
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A180955.P2016175764715229432

`A001790(row(n)-col(n))`
-/

namespace A180955.P2016175764715229432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A180955.P2016175764715229432

noncomputable section

/-- A180955: Triangle read by rows T(n,k) = numerators of A180955/A180956.

Offset 0, canonical program `A180955.P2016175764715229432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180955 (n : ℕ) : ℤ :=
  A180955.P2016175764715229432.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180955.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213723.P16906504039314298671

`2*A213714(n)`
-/

namespace A213723.P16906504039314298671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213714 n

end

end A213723.P16906504039314298671

noncomputable section

/-- A213723: a(n) = smallest natural number x such that x=n+A000120(x), otherwise zero.

Offset 0, canonical program `A213723.P16906504039314298671`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213723 (n : ℕ) : ℤ :=
  A213723.P16906504039314298671.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213723.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234017.P14444333569528327869

`(1-A079559(n))*A234016(n)`
-/

namespace A234017.P14444333569528327869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A079559 n) * A234016 n

end

end A234017.P14444333569528327869

noncomputable section

/-- A234017: Inverse function for injection A055938.

Offset 0, canonical program `A234017.P14444333569528327869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234017 (n : ℕ) : ℤ :=
  A234017.P14444333569528327869.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234017.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234431.P6979625768694921759

`A001969(n+1)+A001969(n+2)`
-/

namespace A234431.P6979625768694921759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1) + A001969 (n + 2)

end

end A234431.P6979625768694921759

noncomputable section

/-- A234431: Numbers that are the sum of 2 successive evil numbers (A001969).

Offset 1, canonical program `A234431.P6979625768694921759`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234431 (n : ℕ) : ℤ :=
  A234431.P6979625768694921759.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245710.P15631509805562168488

`A010059(n)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A245710.P15631509805562168488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  A010059 n + a (n - 1)

end

end A245710.P15631509805562168488

noncomputable section

/-- A245710: Number of nonzero evil numbers <= n, see A001969.

Offset 0, canonical program `A245710.P15631509805562168488`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245710 (n : ℕ) : ℤ :=
  A245710.P15631509805562168488.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245710.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254377.P13394934176457571448

`1-A228495(n)`
-/

namespace A254377.P13394934176457571448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A228495 n

end

end A254377.P13394934176457571448

noncomputable section

/-- A254377: Characteristic function of A230709: a(n) = 1 if n is either evil (A001969) or even odious (A128309), otherwise 0 (when n is odd odious).

Offset 0, canonical program `A254377.P13394934176457571448`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254377 (n : ℕ) : ℤ :=
  A254377.P13394934176457571448.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254651.P5982598180716446576

`1-A254379(n)`
-/

namespace A254651.P5982598180716446576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A254379 n

end

end A254651.P5982598180716446576

noncomputable section

/-- A254651: Characteristic function of A254614, numbers that are either odd or evil (or both).

Offset 0, canonical program `A254651.P5982598180716446576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254651 (n : ℕ) : ℤ :=
  A254651.P5982598180716446576.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255070.P12600322617074170858

`A236840(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255070.P12600322617074170858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236840 n : ℚ) / 2

end

end A255070.P12600322617074170858

noncomputable section

/-- A255070: (1/2)*(n minus number of runs in the binary expansion of n): a(n) = (n - A005811(n)) / 2 = A236840(n)/2.

Offset 0, canonical program `A255070.P12600322617074170858`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255070 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A255070.P12600322617074170858.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255070.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255072.P11066675909169792664

`1+a(A236840(n))` with `a(0)=0, a(1)=1`
-/

namespace A255072.P11066675909169792664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A236840 n).toNat

end

end A255072.P11066675909169792664

noncomputable section

/-- A255072: Number of steps to reach 0 starting with n and using the iterated process: x -> x - (number of runs in binary representation of x).

Offset 0, canonical program `A255072.P11066675909169792664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255072 (n : ℕ) : ℤ :=
  (A255072.P11066675909169792664.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255072.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256257.P3128146653347024265

`2*A160713(n)`
-/

namespace A256257.P3128146653347024265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160713 n

end

end A256257.P3128146653347024265

noncomputable section

/-- A256257: 6 times numbers of Gould's sequence A001316.

Offset 0, canonical program `A256257.P3128146653347024265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256257 (n : ℕ) : ℤ :=
  A256257.P3128146653347024265.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256257.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261227.P15274673965007870817

`A261226(n^3)`
-/

namespace A261227.P15274673965007870817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (n ^ 3)

end

end A261227.P15274673965007870817

noncomputable section

/-- A261227: a(n) = number of steps to reach 0 when starting from k = n^3 and repeatedly applying the map that replaces k with k - A055401(k), where A055401(k) = the number of positive cubes needed to sum to k using the greedy algorithm.

Offset 0, canonical program `A261227.P15274673965007870817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261227 (n : ℕ) : ℤ :=
  A261227.P15274673965007870817.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261227.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261228.P14680234118456696822

`A261226((n+1)^3-1)`
-/

namespace A261228.P14680234118456696822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 ((n + 1) ^ 3 - 1)

end

end A261228.P14680234118456696822

noncomputable section

/-- A261228: a(n) = number of steps to reach 0 when starting from k = (n^3)-1 and repeatedly applying the map that replaces k with k - A055401(k), where A055401(k) = the number of positive cubes needed to sum to k using the greedy algorithm.

Offset 1, canonical program `A261228.P14680234118456696822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261228 (n : ℕ) : ℤ :=
  A261228.P14680234118456696822.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261228.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268289.P17910930367041413554

`a(n-1)-A037861(n)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268289.P17910930367041413554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A037861 n

end

end A268289.P17910930367041413554

noncomputable section

/-- A268289: a(0)=0; thereafter a(n) = a(n-1) - A037861(n).

Offset 0, canonical program `A268289.P17910930367041413554`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268289 (n : ℕ) : ℤ :=
  A268289.P17910930367041413554.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268289.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268676.P8159254776456483871

`2-A106400(n)`
-/

namespace A268676.P8159254776456483871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A106400 n

end

end A268676.P8159254776456483871

noncomputable section

/-- A268676: a(n) = A101080(n,A268823(3+n)), where A101080(x,y) gives the Hamming distance between binary expansions of x and y.

Offset 0, canonical program `A268676.P8159254776456483871`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268676 (n : ℕ) : ℤ :=
  A268676.P8159254776456483871.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268676.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277561.P11433701935081207187

`2^A069010(n)`
-/

namespace A277561.P11433701935081207187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A069010 n : ℤ)

end

end A277561.P11433701935081207187

noncomputable section

/-- A277561: a(n) = Sum_{k=0..n} ({binomial(n+2k,2k)*binomial(n,k)} mod 2).

Offset 0, canonical program `A277561.P11433701935081207187`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277561 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A277561.P11433701935081207187.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294628.P17732687691627968368

`4*A294015(n+1)`
-/

namespace A294628.P17732687691627968368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A294015 (n + 1)

end

end A294628.P17732687691627968368

noncomputable section

/-- A294628: a(n) = 8*(sigma(n) - n + (1/2)).

Offset 1, canonical program `A294628.P17732687691627968368`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(A000203(n+1)-(n+1)+1/2)` (program `A294628.P9545602862444620034`, by `A294628.P9545602862444620034.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A294628 (n : ℕ) : ℤ :=
  A294628.P17732687691627968368.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(A000203(n+1)-(n+1)+1/2)` (program `A294628.P9545602862444620034`, by `A294628.P9545602862444620034.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A294628.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A216244.P11756277930264745226

`4*A061066(n+2)`
-/

namespace A216244.P11756277930264745226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A061066 (n + 2)

end

end A216244.P11756277930264745226

noncomputable section

/-- A216244: a(n) = (prime(n)^2 - 1)/2 for n >= 2.

Offset 2, canonical program `A216244.P11756277930264745226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216244 (n : ℕ) : ℤ :=
  A216244.P11756277930264745226.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227184.P3484603111831403944

`A243499(A003188(n))`
-/

namespace A227184.P3484603111831403944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (A003188 n).toNat

end

end A227184.P3484603111831403944

noncomputable section

/-- A227184: a(n) = product of parts of the unordered partition encoded with the runlengths of binary expansion of n.

Offset 0, canonical program `A227184.P3484603111831403944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227184 (n : ℕ) : ℤ :=
  A227184.P3484603111831403944.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227184.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228628.P1311672402623493656

`A160668(n+1)-1`
-/

namespace A228628.P1311672402623493656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1) - 1

end

end A228628.P1311672402623493656

noncomputable section

/-- A228628: 9's complement of prime(n).

Offset 1, canonical program `A228628.P1311672402623493656`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228628 (n : ℕ) : ℤ :=
  A228628.P1311672402623493656.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228628.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A250474.P15580657759443600580

`A250473(n+1)+1`
-/

namespace A250474.P15580657759443600580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) + 1

end

end A250474.P15580657759443600580

noncomputable section

/-- A250474: Number of times prime(n) occurs as the least prime factor among numbers 1 .. prime(n)^3: a(n) = A078898(A030078(n)).

Offset 1, canonical program `A250474.P15580657759443600580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250474 (n : ℕ) : ℤ :=
  A250474.P15580657759443600580.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250474.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A254732.P8036064587861871874`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254732 (n : ℕ) : ℤ :=
  A254732.P8036064587861871874.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254732.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259566.P1447897168910659284

`A032924(2*n+1)`
-/

namespace A259566.P1447897168910659284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (2 * n + 1)

end

end A259566.P1447897168910659284

noncomputable section

/-- A259566: Numbers following gaps in the sequence of base-3 numbers that don't contain 0.

Offset 1, canonical program `A259566.P1447897168910659284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259566 (n : ℕ) : ℤ :=
  A259566.P1447897168910659284.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259566.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262807.P14126293923301256309

`A070826(n+2)%A071148(n+1)`
-/

namespace A262807.P14126293923301256309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070826 (n + 2)) (A071148 (n + 1))

end

end A262807.P14126293923301256309

noncomputable section

/-- A262807: a(n) = (Product_{k=1..n} prime(k+1)) mod (Sum_{k=1..n} prime(k+1)) where prime(k) is the k-th prime number.

Offset 1, canonical program `A262807.P14126293923301256309`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262807 (n : ℕ) : ℤ :=
  A262807.P14126293923301256309.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262807.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265157.P8146945990280447041

`A260683(n)-A000035(n)`
-/

namespace A265157.P8146945990280447041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260683 n - A000035 n

end

end A265157.P8146945990280447041

noncomputable section

/-- A265157: Number of 2's in the base-3 representation of 2^n - 1.

Offset 0, canonical program `A265157.P8146945990280447041`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265157 (n : ℕ) : ℤ :=
  A265157.P8146945990280447041.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265157.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A272101.P1459219865942789853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272101 (n : ℕ) : ℤ :=
  A272101.P1459219865942789853.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272101.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283363.P9051439283470971273

`abs(A090396(n+2)-A090396(n+1))`
-/

namespace A283363.P9051439283470971273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090396 (n + 2) - A090396 (n + 1)|

end

end A283363.P9051439283470971273

noncomputable section

/-- A283363: Absolute values of first differences of A090396.

Offset 1, canonical program `A283363.P9051439283470971273`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283363 (n : ℕ) : ℤ :=
  A283363.P9051439283470971273.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283479.P8552650789036169488

`A283474(n+1)-A283474(n)`
-/

namespace A283479.P8552650789036169488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283474 (n + 1) - A283474 n

end

end A283479.P8552650789036169488

noncomputable section

/-- A283479: First differences of A283474.

Offset 1, canonical program `A283479.P8552650789036169488`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283479 (n : ℕ) : ℤ :=
  A283479.P8552650789036169488.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283479.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284566.P9813088326680274494

`A284556(2*n+1)`
-/

namespace A284566.P9813088326680274494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (2 * n + 1)

end

end A284566.P9813088326680274494

noncomputable section

/-- A284566: Odd bisection of A284556.

Offset 0, canonical program `A284566.P9813088326680274494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284566 (n : ℕ) : ℤ :=
  A284566.P9813088326680274494.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284566.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295657.P6967734593411189466

`A000188(A003557(n+1))`
-/

namespace A295657.P6967734593411189466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A003557 (n + 1)).toNat

end

end A295657.P6967734593411189466

noncomputable section

/-- A295657: Multiplicative with a(p^e) = p^floor((e-1)/2).

Offset 1, canonical program `A295657.P6967734593411189466`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295657 (n : ℕ) : ℤ :=
  A295657.P6967734593411189466.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295658.P31959927982178384

`A003557(A000188(n+1))`
-/

namespace A295658.P31959927982178384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000188 (n + 1)).toNat

end

end A295658.P31959927982178384

noncomputable section

/-- A295658: Multiplicative with a(p^e) = p^max(0,(floor(e/2)-1)).

Offset 1, canonical program `A295658.P31959927982178384`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295658 (n : ℕ) : ℤ :=
  A295658.P31959927982178384.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295658.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A183037.P2429531646680014753

`A001511(n+1)*2^A001511(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A183037.P2429531646680014753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001511 (n + 1) : ℚ) * (2 : ℚ) ^ (A001511 (n + 1) : ℤ)

end

end A183037.P2429531646680014753

noncomputable section

/-- A183037: a(n) = A001511(n)*2^A001511(n) where A001511(n) equals the 2-adic valuation of 2n.

Offset 1, canonical program `A183037.P2429531646680014753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183037 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A183037.P2429531646680014753.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183037.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A206527.P17662321040219862947

`A020338(3^n)`
-/

namespace A206527.P17662321040219862947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (3 ^ n)

end

end A206527.P17662321040219862947

noncomputable section

/-- A206527: 3^n concatenated with itself.

Offset 0, canonical program `A206527.P17662321040219862947`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206527 (n : ℕ) : ℤ :=
  A206527.P17662321040219862947.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A206528.P3167642556267065851

`A020338(5^n)`
-/

namespace A206528.P3167642556267065851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (5 ^ n)

end

end A206528.P3167642556267065851

noncomputable section

/-- A206528: 5^n concatenated with itself.

Offset 0, canonical program `A206528.P3167642556267065851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206528 (n : ℕ) : ℤ :=
  A206528.P3167642556267065851.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206528.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A206529.P17804462601865261922

`A020338(7^n)`
-/

namespace A206529.P17804462601865261922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (7 ^ n)

end

end A206529.P17804462601865261922

noncomputable section

/-- A206529: 7^n concatenated with itself.

Offset 0, canonical program `A206529.P17804462601865261922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206529 (n : ℕ) : ℤ :=
  A206529.P17804462601865261922.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228367.P1353796914564076815

`A001511(n+1)+A006519(n+1)`
-/

namespace A228367.P1353796914564076815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + A006519 (n + 1)

end

end A228367.P1353796914564076815

noncomputable section

/-- A228367: n-th element of the ruler function plus the highest power of 2 dividing n.

Offset 1, canonical program `A228367.P1353796914564076815`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228367 (n : ℕ) : ℤ :=
  A228367.P1353796914564076815.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228368.P14038538055200218841

`A001511(n+1)-A006519(n+1)`
-/

namespace A228368.P14038538055200218841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) - A006519 (n + 1)

end

end A228368.P14038538055200218841

noncomputable section

/-- A228368: Difference between the n-th element of the ruler function and the highest power of 2 dividing n.

Offset 1, canonical program `A228368.P14038538055200218841`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228368 (n : ℕ) : ℤ :=
  A228368.P14038538055200218841.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228368.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239462.P29377133976315736

`(n+1)*A020338(n+1)-A005563(n)`
-/

namespace A239462.P29377133976315736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020338 (n + 1) - A005563 n

end

end A239462.P29377133976315736

noncomputable section

/-- A239462: A239459(n) / n.

Offset 1, canonical program `A239462.P29377133976315736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239462 (n : ℕ) : ℤ :=
  A239462.P29377133976315736.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253445.P3990577317114025195

`A020338((n+1)²)`
-/

namespace A253445.P3990577317114025195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 ((n + 1) ^ 2)

end

end A253445.P3990577317114025195

noncomputable section

/-- A253445: a(n) = concatenation of n^2 with itself.

Offset 1, canonical program `A253445.P3990577317114025195`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253445 (n : ℕ) : ℤ :=
  A253445.P3990577317114025195.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257806.P8895059565627793606

`A257808(n)-A257807(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257806.P8895059565627793606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257808 n - A257807 n

end

end A257806.P8895059565627793606

noncomputable section

/-- A257806: a(n) = A257808(n) - A257807(n).

Offset 0, canonical program `A257806.P8895059565627793606`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257806 (n : ℕ) : ℤ :=
  A257806.P8895059565627793606.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257806.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268361.P14641184472888620429

`A000045(A001511(n+1)+1)`
-/

namespace A268361.P14641184472888620429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001511 (n + 1) + 1).toNat

end

end A268361.P14641184472888620429

noncomputable section

/-- A268361: Lexicographically least sequence of a certain form that avoids additive squares.

Offset 1, canonical program `A268361.P14641184472888620429`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268361 (n : ℕ) : ℤ :=
  A268361.P14641184472888620429.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268361.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274593.P8766669261268767539

`(2^A001511(n+1)-1)*(2*A025480(n)+1)-A001511(n+1)`
-/

namespace A274593.P8766669261268767539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A001511 (n + 1) : ℤ) - 1) * (2 * A025480 n + 1 : ℚ) - (A001511 (n + 1) : ℚ)

end

end A274593.P8766669261268767539

noncomputable section

/-- A274593: a(0) = 0; thereafter, a(2*n+1) = a(n)+2*n+1, otherwise a(n) = n.

Offset 0, canonical program `A274593.P8766669261268767539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274593 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A274593.P8766669261268767539.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274593.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276391.P10040952499910227078

`(2+4^A001511(n+1))/6`
-/

namespace A276391.P10040952499910227078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (4 : ℚ) ^ (A001511 (n + 1) : ℤ)) / 6

end

end A276391.P10040952499910227078

noncomputable section

/-- A276391: G.f. satisfies A(x) - 4*A(x^2) = x/(1+x).

Offset 1, canonical program `A276391.P10040952499910227078`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276391 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276391.P10040952499910227078.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276391.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277808.P4452036695971771112

`A010059(n+1)*A001511(n+1)`
-/

namespace A277808.P4452036695971771112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n + 1) * A001511 (n + 1)

end

end A277808.P4452036695971771112

noncomputable section

/-- A277808: a(n) = number of iterations of map k -> A003188(A006068(k)/2) that are required (when starting from k = n) until k is an odious number.

Offset 1, canonical program `A277808.P4452036695971771112`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277808 (n : ℕ) : ℤ :=
  A277808.P4452036695971771112.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277808.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284006.P12312417108895449444

`a(a(n-A001511(n+1))-1)+a(n-a(n-A001511(n+1)))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284006.P12312417108895449444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (a ((n : ℤ) - A001511 (n + 1)).toNat - 1) + a (n - a ((n : ℤ) - A001511 (n + 1)).toNat)

end

end A284006.P12312417108895449444

noncomputable section

/-- A284006: a(n) = a(a(n-A001511(n))) + a(n-a(n-A001511(n))) with a(1) = a(2) = 1, where A001511(n) = 1 + exponent of the highest power of 2 dividing n.

Offset 1, canonical program `A284006.P12312417108895449444`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-A001511(n+1))-1)+a(n-a(n-A001511(n+1)))` (program `A284006.P12312417108895449444`, by `A284006.P12312417108895449444.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A284006 (n : ℕ) : ℤ :=
  (A284006.P12312417108895449444.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-A001511(n+1))-1)+a(n-a(n-A001511(n+1)))` (program `A284006.P12312417108895449444`, by `A284006.P12312417108895449444.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A284006.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A286357.P14769850405548421969

`A001511(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286357.P14769850405548421969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000203 (n + 1)).toNat

end

end A286357.P14769850405548421969

noncomputable section

/-- A286357: One more than the exponent of the highest power of 2 dividing sigma(n): a(n) = A001511(A000203(n)).

Offset 1, canonical program `A286357.P14769850405548421969`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001511(A000203(n+1))` (program `A286357.P14769850405548421969`, by `A286357.P14769850405548421969.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A286357 (n : ℕ) : ℤ :=
  A286357.P14769850405548421969.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001511(A000203(n+1))` (program `A286357.P14769850405548421969`, by `A286357.P14769850405548421969.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A286357.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A286460.P13247630279209113175

`1/2*(2+(A001511(n+1)+A000203(n+1))²-A001511(n+1)-3*A000203(n+1))`
-/

namespace A286460.P13247630279209113175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A001511 (n + 1) + A000203 (n + 1)) ^ 2 - A001511 (n + 1) - 3 * A000203 (n + 1) : ℚ)

end

end A286460.P13247630279209113175

noncomputable section

/-- A286460: Compound filter (2-adic valuation & sum of the divisors): a(n) = P(A001511(n), A000203(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286460.P13247630279209113175`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286460 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286460.P13247630279209113175.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286460.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A287896.P4517701552711881970

`A002487(n+1)*A001511(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A287896.P4517701552711881970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) * A001511 (n + 1)

end

end A287896.P4517701552711881970

noncomputable section

/-- A287896: a(n) = A002487(n)*A001511(n).

Offset 1, canonical program `A287896.P4517701552711881970`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A287896 (n : ℕ) : ℤ :=
  A287896.P4517701552711881970.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A287896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A308546.P17597284659635134973

`a(n-1)*(1+1/A001511(n))` with `a(0)=1`
-/

namespace A308546.P17597284659635134973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (1 + 1 / (A001511 n : ℚ))

end

end A308546.P17597284659635134973

noncomputable section

/-- A308546: Number of double-closed subsets of {1..n}.

Offset 0, canonical program `A308546.P17597284659635134973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308546 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308546.P17597284659635134973.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308546.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309530.P10769901675090293297

`A001511(A051027(A000079(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A309530.P10769901675090293297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A051027 (A000079 n).toNat).toNat

end

end A309530.P10769901675090293297

noncomputable section

/-- A309530: Number of power-of-two-divisors of sum of divisors of sum of divisors of powers of two: a(n) = A001511(A051027(A000079(n))).

Offset 0, canonical program `A309530.P10769901675090293297`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001511(A051027(A000079(n)))` (program `A309530.P10769901675090293297`, by `A309530.P10769901675090293297.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A309530 (n : ℕ) : ℤ :=
  A309530.P10769901675090293297.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001511(A051027(A000079(n)))` (program `A309530.P10769901675090293297`, by `A309530.P10769901675090293297.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A309530.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A180987.P1087486024587690451

`A030528(eq[0, A145677(n)]+1)`
-/

namespace A180987.P1087486024587690451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A180987.P1087486024587690451

noncomputable section

/-- A180987: T(n,k)=number of nXk binary matrices with rows in lexicographically nonincreasing order and columns in lexicographically strictly increasing order.

Offset 1, canonical program `A180987.P1087486024587690451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A180987 (n : ℕ) : ℤ :=
  A180987.P1087486024587690451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A180987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182047.P2101095333412928792

`A151800(A002378(n))`
-/

namespace A182047.P2101095333412928792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A002378 n).toNat

end

end A182047.P2101095333412928792

noncomputable section

/-- A182047: Smallest prime > n*(n+1).

Offset 0, canonical program `A182047.P2101095333412928792`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182047 (n : ℕ) : ℤ :=
  A182047.P2101095333412928792.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182047.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182167.P1515146561545747847

`A053616(A002708(n+1)+∑[n])`
-/

namespace A182167.P1515146561545747847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A002708 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A182167.P1515146561545747847

noncomputable section

/-- A182167: Min( f(n), n-f(n) ), where f(n) = A002708(n) = Fibonacci(n) mod n.

Offset 1, canonical program `A182167.P1515146561545747847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A182167 (n : ℕ) : ℤ :=
  A182167.P1515146561545747847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A182167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182492.P8158037386142892390

`-A105523(A123108(A022998(n)))`
-/

namespace A182492.P8158037386142892390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A105523 (A123108 (A022998 n).toNat).toNat

end

end A182492.P8158037386142892390

noncomputable section

/-- A182492: Expansion of 1 - x - (1 - sqrt(1 + 4*x^4)) / (2*x) in powers of x.

Offset 0, canonical program `A182492.P8158037386142892390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A182492 (n : ℕ) : ℤ :=
  A182492.P8158037386142892390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A182492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182664.P15945012330009958967

`A088828(n+1)+A157502(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182664.P15945012330009958967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1) + A157502 (n + 1)

end

end A182664.P15945012330009958967

noncomputable section

/-- A182664: a(n) = A088828(n) + A157502(n).

Offset 1, canonical program `A182664.P15945012330009958967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088828, A157502, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182664 (n : ℕ) : ℤ :=
  A182664.P15945012330009958967.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088828, A157502, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182664.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A184034.P8692255249367243317

`A184033(n+1)+42`
-/

namespace A184034.P8692255249367243317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184033 (n + 1) + 42

end

end A184034.P8692255249367243317

noncomputable section

/-- A184034: 1/16 the number of (n+1) X 5 0..3 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184034.P8692255249367243317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184034 (n : ℕ) : ℤ :=
  A184034.P8692255249367243317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184046.P17356359777739550745

`A184041(n+1)+274`
-/

namespace A184046.P17356359777739550745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184041 (n + 1) + 274

end

end A184046.P17356359777739550745

noncomputable section

/-- A184046: 1/9 the number of (n+1) X 8 0..2 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184046.P17356359777739550745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184046 (n : ℕ) : ℤ :=
  A184046.P17356359777739550745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184486.P235648414909405234

`comp[A007064(2*n+1)-1]`
-/

namespace A184486.P235648414909405234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (2 * n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184486.P235648414909405234

noncomputable section

/-- A184486: Lower s-Wythoff sequence, where s(n)=4n+1. Complement of A184487.

Offset 1, canonical program `A184486.P235648414909405234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184486 (n : ℕ) : ℤ :=
  (A184486.P235648414909405234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184863.P11681446772865368955

`A005206(A005206(p?[A007064(n+1)]))`
-/

namespace A184863.P11681446772865368955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A005206 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A184863.P11681446772865368955

noncomputable section

/-- A184863: Numbers k such that floor(n+nr-r/2) are prime, where r=(1+sqrt(5))/2.

Offset 1, canonical program `A184863.P11681446772865368955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 863 terms. -/
def A184863 (n : ℕ) : ℤ :=
  A184863.P11681446772865368955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 863 terms. -/
def A184863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185027.P10949511265756633877

`∑{d}[n+1, A127773(#)]`
-/

namespace A185027.P10949511265756633877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A127773 d

end

end A185027.P10949511265756633877

noncomputable section

/-- A185027: Sum of the triangular divisors of n.

Offset 1, canonical program `A185027.P10949511265756633877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185027 (n : ℕ) : ℤ :=
  A185027.P10949511265756633877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185256.P14243737951295279238

`A033161(n+1)-2`
-/

namespace A185256.P14243737951295279238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033161 (n + 1) - 2

end

end A185256.P14243737951295279238

noncomputable section

/-- A185256: Stanley Sequence S(0,3).

Offset 1, canonical program `A185256.P14243737951295279238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185256 (n : ℕ) : ℤ :=
  A185256.P14243737951295279238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185410.P16147584212960793980

`A059268(n)*A102365(n)`
-/

namespace A185410.P16147584212960793980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A102365 n

end

end A185410.P16147584212960793980

noncomputable section

/-- A185410: A decomposition of the double factorials A001147.

Offset 0, canonical program `A185410.P16147584212960793980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1920 terms. -/
def A185410 (n : ℕ) : ℤ :=
  A185410.P16147584212960793980.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1920 terms. -/
def A185410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185874.P1314293558067631427

`A082652(A014132(n+1))%(n+2)²/2*val(A043569(n+1), 2)`
-/

namespace A185874.P1314293558067631427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A082652 (A014132 (n + 1)).toNat) ((n + 2) ^ 2 : ℤ) : ℚ) / 2 * (SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2 : ℚ)

end

end A185874.P1314293558067631427

noncomputable section

/-- A185874: Second accumulation array of A051340, by antidiagonals.

Offset 1, canonical program `A185874.P1314293558067631427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A185874 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A185874.P1314293558067631427.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A185874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185914.P13255273733279209154

`A004736(n+1)-A053616(n)`
-/

namespace A185914.P13255273733279209154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A053616 n

end

end A185914.P13255273733279209154

noncomputable section

/-- A185914: Array: T(n,k)=k-n+1 for k>=n; T(n,k)=0 for k

Offset 1, canonical program `A185914.P13255273733279209154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185914 (n : ℕ) : ℤ :=
  A185914.P13255273733279209154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186031.P15911966878136021821

`A000108(n)-A126120(n)²`
-/

namespace A186031.P15911966878136021821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A126120 n ^ 2

end

end A186031.P15911966878136021821

noncomputable section

/-- A186031: Number of Dyck paths of semilength n with a valley (DU) spanning the midpoint.

Offset 1, canonical program `A186031.P15911966878136021821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A186031 (n : ℕ) : ℤ :=
  A186031.P15911966878136021821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A186031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187285.P11288562697878379650

`(n+1)*A097327(n+1)%(A000030(n+1)*A097326(n+1))`
-/

namespace A187285.P11288562697878379650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A097327 (n + 1)) (A000030 (n + 1) * A097326 (n + 1))

end

end A187285.P11288562697878379650

noncomputable section

/-- A187285: Smallest multiple of n beginning with 1.

Offset 1, canonical program `A187285.P11288562697878379650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187285 (n : ℕ) : ℤ :=
  A187285.P11288562697878379650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187873.P9292529575938143401

`A151800(A151800(n²))`
-/

namespace A187873.P9292529575938143401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (n ^ 2)).toNat

end

end A187873.P9292529575938143401

noncomputable section

/-- A187873: Second smallest prime after n^2.

Offset 0, canonical program `A187873.P9292529575938143401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A187873 (n : ℕ) : ℤ :=
  A187873.P9292529575938143401.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A187873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187916.P6304784313382651331

`∑[A099363(n)+A000245(n)]`
-/

namespace A187916.P6304784313382651331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099363 n + A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187916.P6304784313382651331

noncomputable section

/-- A187916: a(n) = C(n) if n is odd, else C(n) - C(n/2); C(n) are Catalan numbers.

Offset 1, canonical program `A187916.P6304784313382651331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A187916 (n : ℕ) : ℤ :=
  A187916.P6304784313382651331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A187916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187973.P3184457284106312056

`A008619(n)+2*A187968(n+1)`
-/

namespace A187973.P3184457284106312056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + 2 * A187968 (n + 1)

end

end A187973.P3184457284106312056

noncomputable section

/-- A187973: Positions of 0 in A187972; complement of A187974.

Offset 1, canonical program `A187973.P3184457284106312056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187973 (n : ℕ) : ℤ :=
  A187973.P3184457284106312056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188076.P9855669907760331095

`A188068(n+1)-char[A188075(n+1)]`
-/

namespace A188076.P9855669907760331095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188075 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A188076.P9855669907760331095

noncomputable section

/-- A188076: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(3), k=5, [ ]=floor.

Offset 1, canonical program `A188076.P9855669907760331095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188076 (n : ℕ) : ℤ :=
  A188076.P9855669907760331095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188076.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188558.P17038073912110487584

`A188557(n)+a(n-1)` with `a(0)=8`
-/

namespace A188558.P17038073912110487584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A188557 n + a (n - 1)

end

end A188558.P17038073912110487584

noncomputable section

/-- A188558: Number of 7 X n binary arrays without the pattern 0 1 diagonally, vertically, antidiagonally or horizontally.

Offset 1, canonical program `A188558.P17038073912110487584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188558 (n : ℕ) : ℤ :=
  A188558.P17038073912110487584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189151.P4362739467928619395

`A185871(n+1)-A061885(n)`
-/

namespace A189151.P4362739467928619395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185871 (n + 1) - A061885 n

end

end A189151.P4362739467928619395

noncomputable section

/-- A189151: Numbers k such that k < floor(sqrt(k)) * ceiling(sqrt(k)).

Offset 1, canonical program `A189151.P4362739467928619395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189151 (n : ℕ) : ℤ :=
  A189151.P4362739467928619395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189720.P18273419159078696727

`lt[A117942(n), 0]+1`
-/

namespace A189720.P18273419159078696727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117942 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189720.P18273419159078696727

noncomputable section

/-- A189720: Positions of 1 in A189718; complement of A189719.

Offset 1, canonical program `A189720.P18273419159078696727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9843 terms. -/
def A189720 (n : ℕ) : ℤ :=
  (A189720.P18273419159078696727.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9843 terms. -/
def A189720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190429.P12891291036984290959

`∪[A007064(n+1), A189379(n+1)]`
-/

namespace A190429.P12891291036984290959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190429.P12891291036984290959

noncomputable section

/-- A190429: Positions of 1 in A190427.

Offset 1, canonical program `A190429.P12891291036984290959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190429 (n : ℕ) : ℤ :=
  (A190429.P12891291036984290959.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190459.P17714069434607776697

`eq[1, A190457(n+1)]+1`
-/

namespace A190459.P17714069434607776697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190459.P17714069434607776697

noncomputable section

/-- A190459: Positions of 1 in A190457.

Offset 1, canonical program `A190459.P17714069434607776697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190459 (n : ℕ) : ℤ :=
  (A190459.P17714069434607776697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190460.P12275995598528564661

`eq[2, A190457(n+1)]+1`
-/

namespace A190460.P12275995598528564661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190460.P12275995598528564661

noncomputable section

/-- A190460: Positions of 2 in A190457.

Offset 1, canonical program `A190460.P12275995598528564661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190460 (n : ℕ) : ℤ :=
  (A190460.P12275995598528564661.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190461.P4265382622330275703

`eq[3, A190457(n+1)]+1`
-/

namespace A190461.P4265382622330275703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190461.P4265382622330275703

noncomputable section

/-- A190461: Positions of 3 in A190457.

Offset 1, canonical program `A190461.P4265382622330275703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190461 (n : ℕ) : ℤ :=
  (A190461.P4265382622330275703.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190463.P7208781064280862474

`eq[4, A190457(n+1)]+1`
-/

namespace A190463.P7208781064280862474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190463.P7208781064280862474

noncomputable section

/-- A190463: Positions of 4 in A190457.

Offset 1, canonical program `A190463.P7208781064280862474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2135 terms. -/
def A190463 (n : ℕ) : ℤ :=
  (A190463.P7208781064280862474.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2135 terms. -/
def A190463.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190684.P7022410837627210472

`A003512(A190677(n+1))`
-/

namespace A190684.P7022410837627210472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (A190677 (n + 1)).toNat

end

end A190684.P7022410837627210472

noncomputable section

/-- A190684: Positions of 0 in A190683.

Offset 1, canonical program `A190684.P7022410837627210472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190684 (n : ℕ) : ℤ :=
  A190684.P7022410837627210472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190685.P3435241801983605835

`eq[1, A190683(n+1)]+1`
-/

namespace A190685.P3435241801983605835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190685.P3435241801983605835

noncomputable section

/-- A190685: Positions of 1 in A190683.

Offset 1, canonical program `A190685.P3435241801983605835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190685 (n : ℕ) : ℤ :=
  (A190685.P3435241801983605835.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190686.P6524750200931184886

`eq[2, A190683(n+1)]+1`
-/

namespace A190686.P6524750200931184886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190686.P6524750200931184886

noncomputable section

/-- A190686: Positions of 2 in A190683.

Offset 1, canonical program `A190686.P6524750200931184886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A190686 (n : ℕ) : ℤ :=
  (A190686.P6524750200931184886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A190686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190687.P16692059419886149605

`eq[3, A190683(n+1)]+1`
-/

namespace A190687.P16692059419886149605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190687.P16692059419886149605

noncomputable section

/-- A190687: Positions of 3 in A190683.

Offset 1, canonical program `A190687.P16692059419886149605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2440 terms. -/
def A190687 (n : ℕ) : ℤ :=
  (A190687.P16692059419886149605.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2440 terms. -/
def A190687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190769.P6494637925840641307

`∩[A120753(n+1), A190193(n+1)]`
-/

namespace A190769.P6494637925840641307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190769.P6494637925840641307

noncomputable section

/-- A190769: Positions of 2 in A190766.

Offset 1, canonical program `A190769.P6494637925840641307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A190769 (n : ℕ) : ℤ :=
  (A190769.P6494637925840641307.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A190769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191330.P17506206293950054102

`lt[(n+7)*A191329(n+1), 1]+1`
-/

namespace A191330.P17506206293950054102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * A191329 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A191330.P17506206293950054102

noncomputable section

/-- A191330: Positions of 0 in A191329.

Offset 1, canonical program `A191330.P17506206293950054102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191330 (n : ℕ) : ℤ :=
  (A191330.P17506206293950054102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191389.P9489773032743378258

`A011782(n)-Δ[A050168(n)]`
-/

namespace A191389.P9489773032743378258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (f1 (n + 1) - f1 n)

end

end A191389.P9489773032743378258

noncomputable section

/-- A191389: Number of valleys at level 0 in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0) steps at positive heights).

Offset 0, canonical program `A191389.P9489773032743378258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A191389 (n : ℕ) : ℤ :=
  A191389.P9489773032743378258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A191389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191907.P6778175255354609110

`A023532(n)*A177121(n+1)`
-/

namespace A191907.P6778175255354609110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n * A177121 (n + 1)

end

end A191907.P6778175255354609110

noncomputable section

/-- A191907: Square array read by antidiagonals up: T(n,k) = -(n-1) if n divides k, else 1.

Offset 1, canonical program `A191907.P6778175255354609110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191907 (n : ℕ) : ℤ :=
  A191907.P6778175255354609110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192255.P15495661104029478180

`∑[(A157726(n)-3)*(n+1)²]*A001511(2*n+5)`
-/

namespace A192255.P15495661104029478180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157726 n - 3) * ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001511 (2 * n + 5)

end

end A192255.P15495661104029478180

noncomputable section

/-- A192255: 1-sequence of reduction of (n^2) by x^2 -> x+1.

Offset 1, canonical program `A192255.P15495661104029478180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A192255 (n : ℕ) : ℤ :=
  A192255.P15495661104029478180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A192255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192656.P15892552188693503180

`∑[A192655(n)]`
-/

namespace A192656.P15892552188693503180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192656.P15892552188693503180

noncomputable section

/-- A192656: Partial sums of the Floor-Sqrt transform of central binomial coefficients.

Offset 0, canonical program `A192656.P15892552188693503180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A192656 (n : ℕ) : ℤ :=
  A192656.P15892552188693503180.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A192656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193815.P12377440765464689058

`A074909(abs(n-A127648(n)))`
-/

namespace A193815.P12377440765464689058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 |(n : ℤ) - A127648 n|.toNat

end

end A193815.P12377440765464689058

noncomputable section

/-- A193815: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x) = x^n + x^(n-1) + ... + x+1 and q(n,x)=(x+1)^n.

Offset 0, canonical program `A193815.P12377440765464689058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193815 (n : ℕ) : ℤ :=
  A193815.P12377440765464689058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193849.P10773639131772552231

`A059268(n)*A193843(n)`
-/

namespace A193849.P10773639131772552231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A193843 n

end

end A193849.P10773639131772552231

noncomputable section

/-- A193849: Triangular array: (1/2)*A193847.

Offset 0, canonical program `A193849.P10773639131772552231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193849 (n : ℕ) : ℤ :=
  A193849.P10773639131772552231.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193853.P9377099089315167757

`A059268(n)*A106516(A014132(n+1))`
-/

namespace A193853.P9377099089315167757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A106516 (A014132 (n + 1)).toNat

end

end A193853.P9377099089315167757

noncomputable section

/-- A193853: Triangular array: (1/2)*A193851.

Offset 0, canonical program `A193853.P9377099089315167757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A193853 (n : ℕ) : ℤ :=
  A193853.P9377099089315167757.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A193853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193859.P4797482589767653868

`A059268(n)*A193845(n)`
-/

namespace A193859.P4797482589767653868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A193845 n

end

end A193859.P4797482589767653868

noncomputable section

/-- A193859: Mirror of the triangle A193858.

Offset 0, canonical program `A193859.P4797482589767653868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193859 (n : ℕ) : ℤ :=
  A193859.P4797482589767653868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194258.P6130564753522000528

`A194195(A020703(n+1))`
-/

namespace A194258.P6130564753522000528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (A020703 (n + 1)).toNat

end

end A194258.P6130564753522000528

noncomputable section

/-- A194258: Second inverse function (numbers of columns) for pairing function A060734.

Offset 1, canonical program `A194258.P6130564753522000528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194258 (n : ℕ) : ℤ :=
  A194258.P6130564753522000528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194589.P3556960266445437551

`A194588(n)-A005043(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194589.P3556960266445437551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194588 n - A005043 n

end

end A194589.P3556960266445437551

noncomputable section

/-- A194589: a(n) = A194588(n) - A005043(n); complementary Riordan numbers.

Offset 0, canonical program `A194589.P3556960266445437551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194588, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194589 (n : ℕ) : ℤ :=
  A194589.P3556960266445437551.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194588, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194589.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194735.P10653237601226367426

`(n*A194138(n+1))%(n+2)`
-/

namespace A194735.P10653237601226367426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A194138 (n + 1)) (n + 2 : ℤ)

end

end A194735.P10653237601226367426

noncomputable section

/-- A194735: Number of positive integers k <= n such that {k*sqrt(2)} > {n*sqrt(2)}, where { } = fractional part.

Offset 1, canonical program `A194735.P10653237601226367426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A194735 (n : ℕ) : ℤ :=
  A194735.P10653237601226367426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A194735.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A194814.P16521420712131060021

`1-A194813(n+1)+n`
-/

namespace A194814.P16521420712131060021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194813 (n + 1) + (n : ℤ)

end

end A194814.P16521420712131060021

noncomputable section

/-- A194814: Number of integers k in [1,n] such that {n*r+k*r} > {n*r-k*r}, where { } = fractional part and r=(1+sqrt(5))/2 (the golden ratio).

Offset 1, canonical program `A194814.P16521420712131060021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194814 (n : ℕ) : ℤ :=
  A194814.P16521420712131060021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194827.P12693509753425005756

`∑[A000120(n)-A240883(n)]`
-/

namespace A194827.P12693509753425005756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A240883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194827.P12693509753425005756

noncomputable section

/-- A194827: 2-adic valuation of the number of n X n Alternating Sign Matrices (A005130(n)).

Offset 1, canonical program `A194827.P12693509753425005756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A194827 (n : ℕ) : ℤ :=
  A194827.P12693509753425005756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A194827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194848.P4641627590667546157

`A056557(n)+1`
-/

namespace A194848.P4641627590667546157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 n + 1

end

end A194848.P4641627590667546157

noncomputable section

/-- A194848: Write n = C(i,3)+C(j,2)+C(k,1) with i>j>k>=0; sequence gives j values.

Offset 0, canonical program `A194848.P4641627590667546157`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194848 (n : ℕ) : ℤ :=
  A194848.P4641627590667546157.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194991.P2956389845314371910

`p?[n*A228039(n)]`
-/

namespace A194991.P2956389845314371910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A228039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194991.P2956389845314371910

noncomputable section

/-- A194991: Primes whose squares are odious.

Offset 1, canonical program `A194991.P2956389845314371910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3380 terms. -/
def A194991 (n : ℕ) : ℤ :=
  A194991.P2956389845314371910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3380 terms. -/
def A194991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195608.P1474095549682633673

`record[(n+1)*A228495(A228495(n)+1+n)]`
-/

namespace A195608.P1474095549682633673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A228495 (A228495 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195608.P1474095549682633673

noncomputable section

/-- A195608: Numbers n such that Sum_{i=1..n} A(i) = A(n)*A(n+1)/4, where A(n) = A001969(n).

Offset 1, canonical program `A195608.P1474095549682633673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195608 (n : ℕ) : ℤ :=
  A195608.P1474095549682633673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196276.P9076072526218901477

`comp[A008507(n+1)]+1`
-/

namespace A196276.P9076072526218901477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A196276.P9076072526218901477

noncomputable section

/-- A196276: Numbers m such that A196274(m) = 1.

Offset 1, canonical program `A196276.P9076072526218901477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196276 (n : ℕ) : ℤ :=
  (A196276.P9076072526218901477.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198069.P6078617313314915995

`A135517(lt[A006257(n), A053644(n+1)])`
-/

namespace A198069.P6078617313314915995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A198069.P6078617313314915995

noncomputable section

/-- A198069: Table read by rows, T(0,0) = 1 and for n>0, 0<=k<=2^(n-1) T(n,k) = gcd(k,2^(n-1)).

Offset 0, canonical program `A198069.P6078617313314915995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5917 terms. -/
def A198069 (n : ℕ) : ℤ :=
  A198069.P6078617313314915995.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5917 terms. -/
def A198069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199332.P8726158095478974099

`∑[(A130855(n)+1)%2]`
-/

namespace A199332.P8726158095478974099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130855 n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199332.P8726158095478974099

noncomputable section

/-- A199332: Triangle read by rows, where even numbered rows contain the nonsquares (cf. A000037) and odd rows contain replicated squares.

Offset 1, canonical program `A199332.P8726158095478974099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199332 (n : ℕ) : ℤ :=
  A199332.P8726158095478974099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200245.P5209616361364891102

`∑[A200244(n+1)]`
-/

namespace A200245.P5209616361364891102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200245.P5209616361364891102

noncomputable section

/-- A200245: Partial sums of A200244.

Offset 1, canonical program `A200245.P5209616361364891102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200245 (n : ℕ) : ℤ :=
  A200245.P5209616361364891102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200779.P665373488790890752

`A004741(A000037(n+1))/Δ[A164386(n+1)]`
-/

namespace A200779.P665373488790890752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164386 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004741 (A000037 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A200779.P665373488790890752

noncomputable section

/-- A200779: a(n) = number of i in the range 1 <= i <= n such that b(i)=b(n), where b is the sequence A053615 taken with offset 1.

Offset 1, canonical program `A200779.P665373488790890752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A200779 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A200779.P665373488790890752.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A200779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201462.P13807279662606650267

`1+lt[1, A109848(n+1)]`
-/

namespace A201462.P13807279662606650267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109848 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A201462.P13807279662606650267

noncomputable section

/-- A201462: Numbers that are not coprime to their 9's complement.

Offset 1, canonical program `A201462.P13807279662606650267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3955 terms. -/
def A201462 (n : ℕ) : ℤ :=
  (A201462.P13807279662606650267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3955 terms. -/
def A201462.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A202301.P8679729127631786445

`A151800(A007504(n+1))`
-/

namespace A202301.P8679729127631786445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A007504 (n + 1)).toNat

end

end A202301.P8679729127631786445

noncomputable section

/-- A202301: Next prime after the partial sum of the first n primes.

Offset 1, canonical program `A202301.P8679729127631786445`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202301 (n : ℕ) : ℤ :=
  A202301.P8679729127631786445.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202301.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A203990.P14919765066385001405

`A106314(n+1)+A003991(n+1)`
-/

namespace A203990.P14919765066385001405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106314 (n + 1) + A003991 (n + 1)

end

end A203990.P14919765066385001405

noncomputable section

/-- A203990: Symmetric matrix based on f(i,j) = (i+j)*min(i,j), by antidiagonals.

Offset 1, canonical program `A203990.P14919765066385001405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203990 (n : ℕ) : ℤ :=
  A203990.P14919765066385001405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203996.P4927933465799713350

`A094053(n+1)+A185908(n+1)+1`
-/

namespace A203996.P4927933465799713350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (n + 1) + (A185908 (n + 1) + 1)

end

end A203996.P4927933465799713350

noncomputable section

/-- A203996: Symmetric matrix based on f(i,j)=min{i(j+1),j(i+1)}, by antidiagonals.

Offset 1, canonical program `A203996.P4927933465799713350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203996 (n : ℕ) : ℤ :=
  A203996.P4927933465799713350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204018.P15878726800504496581

`A204016(n+1)+1`
-/

namespace A204018.P15878726800504496581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 (n + 1) + 1

end

end A204018.P15878726800504496581

noncomputable section

/-- A204018: Symmetric matrix based on f(i,j)=1+max(j mod i, i mod j), by antidiagonals.

Offset 1, canonical program `A204018.P15878726800504496581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204018 (n : ℕ) : ℤ :=
  A204018.P15878726800504496581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204018.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A204154.P17367594193220542085

`A111650(n+1)-A204028(n+1)`
-/

namespace A204154.P17367594193220542085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A204028 (n + 1)

end

end A204154.P17367594193220542085

noncomputable section

/-- A204154: Symmetric matrix based on f(i,j) = max(2i-j, 2j-i), by antidiagonals.

Offset 1, canonical program `A204154.P17367594193220542085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204154 (n : ℕ) : ℤ :=
  A204154.P17367594193220542085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204179.P16416840978499100433

`A128227(n)*A204177(n+1)`
-/

namespace A204179.P16416840978499100433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n * A204177 (n + 1)

end

end A204179.P16416840978499100433

noncomputable section

/-- A204179: Symmetric matrix based on f(i,j) defined by f(i,1)=f(1,j)=1; f(i,i)= i; f(i,j)=0 otherwise; by antidiagonals.

Offset 1, canonical program `A204179.P16416840978499100433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204179 (n : ℕ) : ℤ :=
  A204179.P16416840978499100433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204183.P6031694459473628253

`A009531(A204181(n+1))`
-/

namespace A204183.P6031694459473628253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A204181 (n + 1)).toNat

end

end A204183.P6031694459473628253

noncomputable section

/-- A204183: Symmetric matrix based on f(i,j) defined by f(i,1)=f(1,j)=1; f(i,i)= (-1)^(i-1); f(i,j)=0 otherwise; by antidiagonals.

Offset 1, canonical program `A204183.P6031694459473628253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204183 (n : ℕ) : ℤ :=
  A204183.P6031694459473628253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204183.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A204850.P1575492180072976004

`(-1)^n*A202394(n)`
-/

namespace A204850.P1575492180072976004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A202394 n

end

end A204850.P1575492180072976004

noncomputable section

/-- A204850: Expansion of f(x)^3 - 9 * x * f(x^9)^3 in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A204850.P1575492180072976004`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A202394, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204850 (n : ℕ) : ℤ :=
  A204850.P1575492180072976004.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A202394, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A205511.P14836272613106091644

`A000040(eq[1, A205510(n+1)]+1)`
-/

namespace A205511.P14836272613106091644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A205511.P14836272613106091644

noncomputable section

/-- A205511: Lesser of the n-th pair of Hamming twin primes.

Offset 1, canonical program `A205511.P14836272613106091644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A205511 (n : ℕ) : ℤ :=
  A205511.P14836272613106091644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A205511.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A205678.P13105615205405818687

`A002260(A205676(n+1))`
-/

namespace A205678.P13105615205405818687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205676 (n + 1)).toNat

end

end A205678.P13105615205405818687

noncomputable section

/-- A205678: The number j such that 4 divides prime(k)-prime(j), where k(n)=A205677(n).

Offset 1, canonical program `A205678.P13105615205405818687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A205678 (n : ℕ) : ℤ :=
  A205678.P13105615205405818687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A205678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205690.P15675749625037910183

`∩[A205559(n+1), A080036(n)]`
-/

namespace A205690.P15675749625037910183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205690.P15675749625037910183

noncomputable section

/-- A205690: Positions of multiples of 6 in A204890 (differences of primes).

Offset 1, canonical program `A205690.P15675749625037910183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. -/
def A205690 (n : ℕ) : ℤ :=
  (A205690.P15675749625037910183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. -/
def A205690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205718.P15912331110075494012

`∩[A205683(n+1), A080036(n)]`
-/

namespace A205718.P15912331110075494012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205718.P15912331110075494012

noncomputable section

/-- A205718: Positions of multiples of 10 in A204890 (differences of primes).

Offset 1, canonical program `A205718.P15912331110075494012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A205718 (n : ℕ) : ℤ :=
  (A205718.P15912331110075494012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A205718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205857.P17589815892520553844

`A003057(A205856(n+1)+1)`
-/

namespace A205857.P17589815892520553844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205856 (n + 1) + 1).toNat

end

end A205857.P17589815892520553844

noncomputable section

/-- A205857: Numbers k for which 6 divides s(k)-s(j) for some j

Offset 1, canonical program `A205857.P17589815892520553844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A205857 (n : ℕ) : ℤ :=
  A205857.P17589815892520553844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A205857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205858.P7887194990483068320

`A002260(A205856(n+1))`
-/

namespace A205858.P7887194990483068320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205856 (n + 1)).toNat

end

end A205858.P7887194990483068320

noncomputable section

/-- A205858: The least number j such that 6 divides s(k)-s(j), where k(n)=A205857(n) and s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205858.P7887194990483068320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2103 terms. -/
def A205858 (n : ℕ) : ℤ :=
  A205858.P7887194990483068320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2103 terms. -/
def A205858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205877.P15389907545694943149

`A003057(A205876(n+1)+1)`
-/

namespace A205877.P15389907545694943149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205876 (n + 1) + 1).toNat

end

end A205877.P15389907545694943149

noncomputable section

/-- A205877: Numbers k for which 10 divides s(k)-s(j) for some j

Offset 1, canonical program `A205877.P15389907545694943149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1054 terms. -/
def A205877 (n : ℕ) : ℤ :=
  A205877.P15389907545694943149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1054 terms. -/
def A205877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205878.P6519794814124573053

`A002260(A205876(n+1))`
-/

namespace A205878.P6519794814124573053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205876 (n + 1)).toNat

end

end A205878.P6519794814124573053

noncomputable section

/-- A205878: The least number j such that 10 divides s(k)-s(j), where k(n)=A205877(n) and s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205878.P6519794814124573053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1197 terms. -/
def A205878 (n : ℕ) : ℤ :=
  A205878.P6519794814124573053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1197 terms. -/
def A205878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206604.P11241342694491247130

`1+2*A206603(n)`
-/

namespace A206604.P11241342694491247130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A206603 n

end

end A206604.P11241342694491247130

noncomputable section

/-- A206604: Number of integers in the smallest interval containing both minimal and maximal possible apex values of an addition triangle whose base is a permutation of n+1 consecutive integers.

Offset 0, canonical program `A206604.P11241342694491247130`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206603, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206604 (n : ℕ) : ℤ :=
  A206604.P11241342694491247130.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206603, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206604.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206771.P12055563301580654612

`A098597(abs(1-n))*A191871(n)`
-/

namespace A206771.P12055563301580654612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098597 |1 - (n : ℤ)|.toNat * A191871 n

end

end A206771.P12055563301580654612

noncomputable section

/-- A206771: 0 followed by the numerators of the reduced (A001803(n) + A001790(n)) / (2*A046161(n)).

Offset 0, canonical program `A206771.P12055563301580654612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A206771 (n : ℕ) : ℤ :=
  A206771.P12055563301580654612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A206771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206915.P6576328931929585577

`∑[A178225(n)]`
-/

namespace A206915.P6576328931929585577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206915.P6576328931929585577

noncomputable section

/-- A206915: The index (in A006995) of the greatest binary palindrome <= n; also the 'lower inverse' of A006995.

Offset 0, canonical program `A206915.P6576328931929585577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206915 (n : ℕ) : ℤ :=
  A206915.P6576328931929585577.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207543.P2222567261959713361

`2*A119900(n)-A098158(n)`
-/

namespace A207543.P2222567261959713361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119900 n - A098158 n

end

end A207543.P2222567261959713361

noncomputable section

/-- A207543: Triangle read by rows, expansion of (1+y*x)/(1-2*y*x+y*(y-1)*x^2).

Offset 0, canonical program `A207543.P2222567261959713361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207543 (n : ℕ) : ℤ :=
  A207543.P2222567261959713361.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207543.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A208328.P11399055652064399149

`A125690(and(1, A099627(n))*A061579(n))`
-/

namespace A208328.P11399055652064399149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125690 (Int.land 1 (A099627 n) * A061579 n).toNat

end

end A208328.P11399055652064399149

noncomputable section

/-- A208328: Triangle of coefficients of polynomials u(n,x) jointly generated with A208329; see the Formula section.

Offset 1, canonical program `A208328.P11399055652064399149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A208328 (n : ℕ) : ℤ :=
  A208328.P11399055652064399149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A208328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208510.P9937072583222605301

`A029655(A083920(n))`
-/

namespace A208510.P9937072583222605301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 (A083920 n).toNat

end

end A208510.P9937072583222605301

noncomputable section

/-- A208510: Triangle of coefficients of polynomials u(n,x) jointly generated with A029653; see the Formula section.

Offset 1, canonical program `A208510.P9937072583222605301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208510 (n : ℕ) : ℤ :=
  A208510.P9937072583222605301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208747.P1926894875507570

`A059268(n)*A208342(n+1)`
-/

namespace A208747.P1926894875507570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A208342 (n + 1)

end

end A208747.P1926894875507570

noncomputable section

/-- A208747: Triangle of coefficients of polynomials u(n,x) jointly generated with A208748; see the Formula section.

Offset 1, canonical program `A208747.P1926894875507570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208747 (n : ℕ) : ℤ :=
  A208747.P1926894875507570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208882.P1883116852521567448

`abs(floor(A073579(n+1)/8))`
-/

namespace A208882.P1883116852521567448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A073579 (n + 1) : ℚ) / 8⌋|

end

end A208882.P1883116852521567448

noncomputable section

/-- A208882: Number of representations of square of prime(n) as a^2 + b^2 + c^2 with 0 < a <= b <= c.

Offset 1, canonical program `A208882.P1883116852521567448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A208882 (n : ℕ) : ℤ :=
  A208882.P1883116852521567448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A208882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208913.P2125602932926388690

`A059268(n)*A133567(n+1)`
-/

namespace A208913.P2125602932926388690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A133567 (n + 1)

end

end A208913.P2125602932926388690

noncomputable section

/-- A208913: Triangle of coefficients of polynomials u(n,x) jointly generated with A208914; see the Formula section.

Offset 1, canonical program `A208913.P2125602932926388690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208913 (n : ℕ) : ℤ :=
  A208913.P2125602932926388690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208914.P18164605293524257971

`A059268(n)*A133084(n+1)`
-/

namespace A208914.P18164605293524257971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A133084 (n + 1)

end

end A208914.P18164605293524257971

noncomputable section

/-- A208914: Triangle of coefficients of polynomials v(n,x) jointly generated with A208913; see the Formula section.

Offset 1, canonical program `A208914.P18164605293524257971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208914 (n : ℕ) : ℤ :=
  A208914.P18164605293524257971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208917.P12345461414326027757

`(A208515(A014132(n+1)+1)-A208515(n+1))*A059268(n)`
-/

namespace A208917.P12345461414326027757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A208515 (A014132 (n + 1) + 1).toNat - A208515 (n + 1)) * A059268 n

end

end A208917.P12345461414326027757

noncomputable section

/-- A208917: Triangle of coefficients of polynomials u(n,x) jointly generated with A208918; see the Formula section.

Offset 1, canonical program `A208917.P12345461414326027757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A208917 (n : ℕ) : ℤ :=
  A208917.P12345461414326027757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A208917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208918.P1927240516366514660

`A059268(n)*A208515(n+1)`
-/

namespace A208918.P1927240516366514660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A208515 (n + 1)

end

end A208918.P1927240516366514660

noncomputable section

/-- A208918: Triangle of coefficients of polynomials v(n,x) jointly generated with A208917; see the Formula section.

Offset 1, canonical program `A208918.P1927240516366514660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208918 (n : ℕ) : ℤ :=
  A208918.P1927240516366514660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209202.P7856621708581531134

`A000203(A023207(n+4))-10`
-/

namespace A209202.P7856621708581531134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A023207 (n + 4)).toNat - 10

end

end A209202.P7856621708581531134

noncomputable section

/-- A209202: Values of the difference d for 3 primes in geometric-arithmetic progression with the minimal sequence {3*3^j + j*d}, j = 0 to 2.

Offset 1, canonical program `A209202.P7856621708581531134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A209202 (n : ℕ) : ℤ :=
  A209202.P7856621708581531134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A209202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210196.P11515123120557541586

`A059268(n)*A124927(n)`
-/

namespace A210196.P11515123120557541586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A124927 n

end

end A210196.P11515123120557541586

noncomputable section

/-- A210196: Triangle of coefficients of polynomials v(n,x) jointly generated with A210195; see the Formula section.

Offset 1, canonical program `A210196.P11515123120557541586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210196 (n : ℕ) : ℤ :=
  A210196.P11515123120557541586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210474.P15121292608583873979

`Δ[A127846(round(n*n/(n+1)))]`
-/

namespace A210474.P15121292608583873979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127846 (SequenceMachineLib.roundAway ((n : ℚ) * ((n : ℚ) / (n + 1 : ℚ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210474.P15121292608583873979

noncomputable section

/-- A210474: The number of different lattice paths from (0,0) to (2n,0) using steps of S={(i,i) or (i,-i): i=1,2,...,n} with j flaws(j=1,2,...,n-1), where the j flaws is the sum of lengths of down steps below the x-axis. (For down steps that are partly above and partly below the x-axis we just count the part below the x-axis.) This number is independent of the number of flaws.

Offset 0, canonical program `A210474.P15121292608583873979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A210474 (n : ℕ) : ℤ :=
  A210474.P15121292608583873979.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A210474.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A211170.P10008061104866407627

`∩[A034962(n+1), A034965(n+1)]`
-/

namespace A211170.P10008061104866407627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211170.P10008061104866407627

noncomputable section

/-- A211170: Primes that are sum of both three and five consecutive primes.

Offset 1, canonical program `A211170.P10008061104866407627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A211170 (n : ℕ) : ℤ :=
  (A211170.P10008061104866407627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A211170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211228.P5552691348241021487

`A208515(A117142(n+1))`
-/

namespace A211228.P5552691348241021487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (A117142 (n + 1)).toNat

end

end A211228.P5552691348241021487

noncomputable section

/-- A211228: Shallow diagonal sums of A211226.

Offset 0, canonical program `A211228.P5552691348241021487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 279 terms. -/
def A211228 (n : ℕ) : ℤ :=
  A211228.P5552691348241021487.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 279 terms. -/
def A211228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212303.P5682405961031894287

`gcd(A100071(n), A138364(n))`
-/

namespace A212303.P5682405961031894287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100071 n) (A138364 n)

end

end A212303.P5682405961031894287

noncomputable section

/-- A212303: a(n) = n!/([(n-1)/2]!*[(n+1)/2]!) for n>0, a(0)=0, and where [ ] = floor.

Offset 0, canonical program `A212303.P5682405961031894287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A212303 (n : ℕ) : ℤ :=
  (A212303.P5682405961031894287.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A212303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213539.P12768956684686906977

`eq[1, char[A119733(n+1)]]`
-/

namespace A213539.P12768956684686906977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213539.P12768956684686906977

noncomputable section

/-- A213539: Numbers for which there is at least one 3-smooth representation that is special of level k.

Offset 1, canonical program `A213539.P12768956684686906977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A213539 (n : ℕ) : ℤ :=
  (A213539.P12768956684686906977.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A213539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213761.P7356628059179805218

`2*A213750(n+1)-A213500(n+1)`
-/

namespace A213761.P7356628059179805218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213750 (n + 1) - A213500 (n + 1)

end

end A213761.P7356628059179805218

noncomputable section

/-- A213761: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = 3*n-5+3*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213761.P7356628059179805218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213761 (n : ℕ) : ℤ :=
  A213761.P7356628059179805218.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213774.P653417461158321534

`A213768(A014132(n+1))-A005408(A002024(n+1))`
-/

namespace A213774.P653417461158321534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (A014132 (n + 1)).toNat - A005408 (A002024 (n + 1)).toNat

end

end A213774.P653417461158321534

noncomputable section

/-- A213774: Rectangular array: (row n) = b**c, where b(h) = F(h+1), c(h) = 2*n-3+2*h, F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213774.P653417461158321534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A213774 (n : ℕ) : ℤ :=
  A213774.P653417461158321534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A213774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213822.P7065334176716146466

`A213750(n+1)+A213821(n+1)+A213752(n+1)`
-/

namespace A213822.P7065334176716146466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213750 (n + 1) + (A213821 (n + 1) + A213752 (n + 1))

end

end A213822.P7065334176716146466

noncomputable section

/-- A213822: Rectangular array: (row n) = b**c, where b(h) = 3*h-1, c(h) = 3*n-4+3*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213822.P7065334176716146466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213822 (n : ℕ) : ℤ :=
  A213822.P7065334176716146466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213835.P6060374703208332894

`2*A213750(n+1)-abs(A122432(n))`
-/

namespace A213835.P6060374703208332894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213750 (n + 1) - |A122432 n|

end

end A213835.P6060374703208332894

noncomputable section

/-- A213835: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = 4*n-7+4*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213835.P6060374703208332894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213835 (n : ℕ) : ℤ :=
  A213835.P6060374703208332894.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213847.P13086117806875613018

`A213752(n+1)+2*A213750(n+1)`
-/

namespace A213847.P13086117806875613018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (n + 1) + 2 * A213750 (n + 1)

end

end A213847.P13086117806875613018

noncomputable section

/-- A213847: Rectangular array: (row n) = b**c, where b(h) = 4*h-1, c(h) = 2*n-3+2*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213847.P13086117806875613018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213847 (n : ℕ) : ℤ :=
  A213847.P13086117806875613018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214547.P5981767396618173425

`lt[A009194(n+1), A033879(n+1)]+1`
-/

namespace A214547.P5981767396618173425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A214547.P5981767396618173425

noncomputable section

/-- A214547: Deficient numbers for which the (absolute value of) abundance is not a divisor.

Offset 1, canonical program `A214547.P5981767396618173425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7483 terms. -/
def A214547 (n : ℕ) : ℤ :=
  (A214547.P5981767396618173425.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7483 terms. -/
def A214547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214585.P2727886227339530422

`eq[1, A214054(n+1)]+1`
-/

namespace A214585.P2727886227339530422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214585.P2727886227339530422

noncomputable section

/-- A214585: Numbers k such that gcd(k!!+1,k-1) > 1.

Offset 1, canonical program `A214585.P2727886227339530422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4300 terms. -/
def A214585 (n : ℕ) : ℤ :=
  (A214585.P2727886227339530422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4300 terms. -/
def A214585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214586.P4542991298950632381

`lt[1, A214054(n+1)]+1`
-/

namespace A214586.P4542991298950632381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A214586.P4542991298950632381

noncomputable section

/-- A214586: Numbers k such that gcd(k!!+1,k-1) = 1.

Offset 1, canonical program `A214586.P4542991298950632381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3655 terms. -/
def A214586 (n : ℕ) : ℤ :=
  (A214586.P4542991298950632381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3655 terms. -/
def A214586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214711.P10925273728456051061

`eq[2, A214710(n+1)]+1`
-/

namespace A214711.P10925273728456051061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214711.P10925273728456051061

noncomputable section

/-- A214711: Positions of 2 in A214710.

Offset 1, canonical program `A214711.P10925273728456051061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A214711 (n : ℕ) : ℤ :=
  (A214711.P10925273728456051061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A214711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214923.P17745120934001476500

`∑[A011373(n)-A059016(n)]`
-/

namespace A214923.P17745120934001476500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 n - A059016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214923.P17745120934001476500

noncomputable section

/-- A214923: Total count of 1's in binary representation of Fibonacci(n) and previous Fibonacci numbers, minus total count of 0's. That is, partial sums of b(n) = -A037861(Fibonacci(n)).

Offset 0, canonical program `A214923.P17745120934001476500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214923 (n : ℕ) : ℤ :=
  A214923.P17745120934001476500.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214990.P627774021900434845

`A007064(A005206(n)+1)`
-/

namespace A214990.P627774021900434845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A005206 n + 1).toNat

end

end A214990.P627774021900434845

noncomputable section

/-- A214990: Second nearest integer to n*r, where r = (1+ sqrt(5))/2, the golden ratio.

Offset 1, canonical program `A214990.P627774021900434845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214990 (n : ℕ) : ℤ :=
  A214990.P627774021900434845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215028.P4106407671865329416

`2-(a(n-1)-(A111708(n)+A004273(n)))` with `a(0)=1`
-/

namespace A215028.P4106407671865329416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (n - 1) - (A111708 n + A004273 n))

end

end A215028.P4106407671865329416

noncomputable section

/-- A215028: a(1) = 1; for n >= 1, a(n+1) = (concatenation of n+1 and n) - a(n).

Offset 1, canonical program `A215028.P4106407671865329416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215028 (n : ℕ) : ℤ :=
  A215028.P4106407671865329416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215079.P7857227990351126838

`A002262(n)^A003056(n)*A055248(n)`
-/

namespace A215079.P7857227990351126838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A003056 n : ℤ) * (A055248 n : ℚ)

end

end A215079.P7857227990351126838

noncomputable section

/-- A215079: Triangle T(n,k) = k^n * sum(binomial(n,n-k-j),j=0..n-k).

Offset 0, canonical program `A215079.P7857227990351126838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1576 terms. -/
def A215079 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A215079.P7857227990351126838.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1576 terms. -/
def A215079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215099.P78987894132717335

`A151800(a(n-2)+a(n-1))-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A215099.P78987894132717335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A151800 (a (n - 2) + a (n - 1)).toNat - a (n - 2)

end

end A215099.P78987894132717335

noncomputable section

/-- A215099: a(0)=0, a(1)=1, a(n) = least k>a(n-1) such that k+a(n-2) is prime.

Offset 0, canonical program `A215099.P78987894132717335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5512 terms. -/
def A215099 (n : ℕ) : ℤ :=
  A215099.P78987894132717335.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5512 terms. -/
def A215099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215762.P9255059313311877312

`A151800(a(n-1)+2*n)` with `a(0)=2`
-/

namespace A215762.P9255059313311877312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (a (n - 1) + (2 * n : ℤ)).toNat

end

end A215762.P9255059313311877312

noncomputable section

/-- A215762: a(n) = smallest prime > a(n-1) + 2(n-1), a(1)=2.

Offset 1, canonical program `A215762.P9255059313311877312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A215762 (n : ℕ) : ℤ :=
  A215762.P9255059313311877312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A215762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217792.P9875595306642364827

`p?[A095375(n+1)]`
-/

namespace A217792.P9875595306642364827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217792.P9875595306642364827

noncomputable section

/-- A217792: Primes which are equal to the sum of the binary digits of consecutive primes starting with 2.

Offset 1, canonical program `A217792.P9875595306642364827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 995 terms. -/
def A217792 (n : ℕ) : ℤ :=
  A217792.P9875595306642364827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 995 terms. -/
def A217792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218255.P890284629792750492

`A151800(10*n)`
-/

namespace A218255.P890284629792750492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (10 * n)

end

end A218255.P890284629792750492

noncomputable section

/-- A218255: Next prime after 10*n.

Offset 0, canonical program `A218255.P890284629792750492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218255 (n : ℕ) : ℤ :=
  A218255.P890284629792750492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219092.P6146677779326094586

`A005182(2*(n+1))`
-/

namespace A219092.P6146677779326094586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005182 (2 * (n + 1))

end

end A219092.P6146677779326094586

noncomputable section

/-- A219092: a(n) = floor(e^(n + 1/2)).

Offset 0, canonical program `A219092.P6146677779326094586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A219092 (n : ℕ) : ℤ :=
  A219092.P6146677779326094586.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A219092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219238.P3363625506201266281

`ceil(A178952(3*(n+1))/6)`
-/

namespace A219238.P3363625506201266281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A178952 (3 * (n + 1)) : ℚ) / 6⌉

end

end A219238.P3363625506201266281

noncomputable section

/-- A219238: Coefficient table for the first differences of table A047971: Coefficients of the difference of Gauss polynomials [n+3,3]_q - [n+2,3]_q.

Offset 0, canonical program `A219238.P3363625506201266281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A219238 (n : ℕ) : ℤ :=
  A219238.P3363625506201266281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A219238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219525.P6968393615433371645

`A003991(n+1)-A178952(n+1)`
-/

namespace A219525.P6968393615433371645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A178952 (n + 1)

end

end A219525.P6968393615433371645

noncomputable section

/-- A219525: T(n,k)=Sum of neighbor maps: log base 2 of the number of nXk binary arrays indicating the locations of corresponding elements equal to the sum mod 2 of their king-move neighbors in a random 0..1 nXk array.

Offset 1, canonical program `A219525.P6968393615433371645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A219525 (n : ℕ) : ℤ :=
  A219525.P6968393615433371645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A219525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222405.P12488114317644509065

`A222404(n)+A007318(n)`
-/

namespace A222405.P12488114317644509065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222404 n + A007318 n

end

end A222405.P12488114317644509065

noncomputable section

/-- A222405: Triangle read by rows: left and right edges are A002061 (1,3,7,13,21,...), interior entries are filled in using the Pascal triangle rule.

Offset 0, canonical program `A222405.P12488114317644509065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222405 (n : ℕ) : ℤ :=
  A222405.P12488114317644509065.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224072.P16968694920148514415

`filter[A016945(n), A228495(#)]`
-/

namespace A224072.P16968694920148514415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A224072.P16968694920148514415

noncomputable section

/-- A224072: Odd odious numbers divisible by 3.

Offset 1, canonical program `A224072.P16968694920148514415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4058 terms. -/
def A224072 (n : ℕ) : ℤ :=
  A224072.P16968694920148514415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4058 terms. -/
def A224072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224380.P18395391775735731980

`4*A224195(n+1)-1`
-/

namespace A224380.P18395391775735731980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A224195 (n + 1) - 1

end

end A224380.P18395391775735731980

noncomputable section

/-- A224380: Table read by antidiagonals of numbers of form (2^n -1)*2^(m+2) + 3 where n>=1, m>=1.

Offset 1, canonical program `A224380.P18395391775735731980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224380 (n : ℕ) : ℤ :=
  A224380.P18395391775735731980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225034.P10390153056488090949

`Δ[A005773(n)]+abs(A085455(n))`
-/

namespace A225034.P10390153056488090949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + |A085455 n|

end

end A225034.P10390153056488090949

noncomputable section

/-- A225034: a(n) is the number of binary words containing n 1's and at most n 0's that do not contain the substring 101.

Offset 0, canonical program `A225034.P10390153056488090949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A225034 (n : ℕ) : ℤ :=
  A225034.P10390153056488090949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A225034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225534.P13308665992946786377

`eq[0, A007920(A055012(n))]`
-/

namespace A225534.P13308665992946786377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225534.P13308665992946786377

noncomputable section

/-- A225534: Numbers whose sum of cubed digits is prime.

Offset 1, canonical program `A225534.P13308665992946786377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1754 terms. -/
def A225534 (n : ℕ) : ℤ :=
  (A225534.P13308665992946786377.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1754 terms. -/
def A225534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225854.P1162875142972506100

`Δ[A061568(abs(1-n)+1)%A002522(n)]`
-/

namespace A225854.P1162875142972506100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061568 (|1 - (n : ℤ)| + 1).toNat) (A002522 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225854.P1162875142972506100

noncomputable section

/-- A225854: Frequency of prime numbers between consecutive partial sums of primes.

Offset 1, canonical program `A225854.P1162875142972506100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6120 terms. -/
def A225854 (n : ℕ) : ℤ :=
  A225854.P1162875142972506100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6120 terms. -/
def A225854.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A227453.P812764055664269610

`lt[A118111(n), 1]+1`
-/

namespace A227453.P812764055664269610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118111 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A227453.P812764055664269610

noncomputable section

/-- A227453: Numbers k such that the distance to the largest square less than k is a multiple of 4.

Offset 1, canonical program `A227453.P812764055664269610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A227453 (n : ℕ) : ℤ :=
  (A227453.P812764055664269610.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A227453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227740.P15268518559073972483

`n+1-(1+A173318(A227737(n+1)-1))`
-/

namespace A227740.P15268518559073972483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (1 + A173318 (A227737 (n + 1) - 1).toNat)

end

end A227740.P15268518559073972483

noncomputable section

/-- A227740: Integers from 0 to A037834(n) followed by integers from 0 to A037834(n+1) and so on.

Offset 1, canonical program `A227740.P15268518559073972483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, A227737, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227740 (n : ℕ) : ℤ :=
  A227740.P15268518559073972483.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, A227737, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227740.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230720.P14814653341307924643

`A003071(A092246(n+1))`
-/

namespace A230720.P14814653341307924643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (A092246 (n + 1)).toNat

end

end A230720.P14814653341307924643

noncomputable section

/-- A230720: Even sorting numbers, cf. A003071.

Offset 1, canonical program `A230720.P14814653341307924643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A230720 (n : ℕ) : ℤ :=
  A230720.P14814653341307924643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A230720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230721.P1031067549909490488

`A003071(A230709(n+2))`
-/

namespace A230721.P1031067549909490488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (A230709 (n + 2)).toNat

end

end A230721.P1031067549909490488

noncomputable section

/-- A230721: Odd sorting numbers, cf. A003071.

Offset 1, canonical program `A230721.P1031067549909490488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A230721 (n : ℕ) : ℤ :=
  A230721.P1031067549909490488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A230721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231431.P17689174645925923634

`eq[0, A228039(n)]²`
-/

namespace A231431.P17689174645925923634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A231431.P17689174645925923634

noncomputable section

/-- A231431: Evil squares.

Offset 1, canonical program `A231431.P17689174645925923634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231431 (n : ℕ) : ℤ :=
  (A231431.P17689174645925923634.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235001.P4979446370708647522

`lt[0, A228039(n)]²`
-/

namespace A235001.P4979446370708647522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A235001.P4979446370708647522

noncomputable section

/-- A235001: Odious squares.

Offset 1, canonical program `A235001.P4979446370708647522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235001 (n : ℕ) : ℤ :=
  (A235001.P4979446370708647522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235336.P14959383341618179848

`eq[1, A001285(log2(A001316(n)))]`
-/

namespace A235336.P14959383341618179848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235336.P14959383341618179848

noncomputable section

/-- A235336: Numbers having evil number of 1's in their binary representation.

Offset 0, canonical program `A235336.P14959383341618179848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235336 (n : ℕ) : ℤ :=
  (A235336.P14959383341618179848.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235497.P16290766832587102791

`A105814(n+1)+A068824(n+1)`
-/

namespace A235497.P16290766832587102791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105814 (n + 1) + A068824 (n + 1)

end

end A235497.P16290766832587102791

noncomputable section

/-- A235497: 2n concatenated with n.

Offset 1, canonical program `A235497.P16290766832587102791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235497 (n : ℕ) : ℤ :=
  A235497.P16290766832587102791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235985.P10362651167329117926

`p?[n*(2-A293162(n))]`
-/

namespace A235985.P10362651167329117926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A293162 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235985.P10362651167329117926

noncomputable section

/-- A235985: Primes p such that 3p-1 has even Hamming weight.

Offset 1, canonical program `A235985.P10362651167329117926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. -/
def A235985 (n : ℕ) : ℤ :=
  A235985.P10362651167329117926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. -/
def A235985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237046.P16405713100893644750

`lt[1, A033879(n+1)]+1`
-/

namespace A237046.P16405713100893644750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A237046.P16405713100893644750

noncomputable section

/-- A237046: Numbers n such that sigma(n) < 2n-1.

Offset 1, canonical program `A237046.P16405713100893644750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237046 (n : ℕ) : ℤ :=
  (A237046.P16405713100893644750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237719.P13944446607882022738

`eq[A000035(n), A242481(n+1)]+1`
-/

namespace A237719.P13944446607882022738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A237719.P13944446607882022738

noncomputable section

/-- A237719: Numbers n such that k(n) = (n(n+1)/2 mod n) = (antisigma(n) mod n) + (sigma(n) mod n).

Offset 1, canonical program `A237719.P13944446607882022738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1756 terms. -/
def A237719 (n : ℕ) : ℤ :=
  (A237719.P13944446607882022738.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1756 terms. -/
def A237719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238392.P14356481744646416300

`A018819(A194959(n+1)-1)`
-/

namespace A238392.P14356481744646416300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (A194959 (n + 1) - 1).toNat

end

end A238392.P14356481744646416300

noncomputable section

/-- A238392: Triangle read by rows: each row is an initial segment of the terms of A000123 followed by its reflection.

Offset 0, canonical program `A238392.P14356481744646416300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A238392 (n : ℕ) : ℤ :=
  A238392.P14356481744646416300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A238392.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A242482.P4940555900676613198

`eq[1, A242481(n+1)]+1`
-/

namespace A242482.P4940555900676613198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242482.P4940555900676613198

noncomputable section

/-- A242482: Numbers n such that A242481(n) = ((n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n) / n = 1.

Offset 1, canonical program `A242482.P4940555900676613198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6754 terms. -/
def A242482 (n : ℕ) : ℤ :=
  (A242482.P4940555900676613198.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6754 terms. -/
def A242482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242738.P6755084381788697046

`A151800(A002379(n+1))`
-/

namespace A242738.P6755084381788697046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A002379 (n + 1)).toNat

end

end A242738.P6755084381788697046

noncomputable section

/-- A242738: Smallest prime > (3/2)^n.

Offset 1, canonical program `A242738.P6755084381788697046`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242738 (n : ℕ) : ℤ :=
  A242738.P6755084381788697046.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242738.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A244223.P4164142307862508594

`comp[A244222(n)]`
-/

namespace A244223.P4164142307862508594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A244223.P4164142307862508594

noncomputable section

/-- A244223: Numbers k which have an odd representation in Greedy Catalan Base, i.e., where A014418(k) ends with digit one.

Offset 1, canonical program `A244223.P4164142307862508594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7354 terms. -/
def A244223 (n : ℕ) : ℤ :=
  (A244223.P4164142307862508594.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7354 terms. -/
def A244223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244229.P10812629268547515881

`A244224(n)-1`
-/

namespace A244229.P10812629268547515881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244224 n - 1

end

end A244229.P10812629268547515881

noncomputable section

/-- A244229: a(n) = Number of integers 0 < k <= n, which have an even representation in Greedy Catalan Base (A014418).

Offset 0, canonical program `A244229.P10812629268547515881`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244224, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244229 (n : ℕ) : ℤ :=
  A244229.P10812629268547515881.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244224, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244417.P18318086271130608872

`A051903(A065331(n+1))`
-/

namespace A244417.P18318086271130608872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A065331 (n + 1)).toNat

end

end A244417.P18318086271130608872

noncomputable section

/-- A244417: Exponents of 6 in appearing in the 6-adic value of 1/n, n>=1 (A244416).

Offset 1, canonical program `A244417.P18318086271130608872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244417 (n : ℕ) : ℤ :=
  A244417.P18318086271130608872.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244417.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246591.P17759261953792450585

`n-A086099(n)`
-/

namespace A246591.P17759261953792450585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A086099 n

end

end A246591.P17759261953792450585

noncomputable section

/-- A246591: Smallest number that can be obtained by swapping 2 bits in the binary expansion of n.

Offset 0, canonical program `A246591.P17759261953792450585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A246591 (n : ℕ) : ℤ :=
  A246591.P17759261953792450585.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A246591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246593.P14183238413555450199

`A086099(A035327(n))+n`
-/

namespace A246593.P14183238413555450199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (A035327 n).toNat + (n : ℤ)

end

end A246593.P14183238413555450199

noncomputable section

/-- A246593: a(n)=n for n <= 2; for n >= 3, a(n) = largest number that can be obtained by swapping two bits in the binary expansion of n.

Offset 0, canonical program `A246593.P14183238413555450199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A246593 (n : ℕ) : ℤ :=
  A246593.P14183238413555450199.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A246593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247900.P2545362560867208788

`Δ[A247681(n+1)]`
-/

namespace A247900.P2545362560867208788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247900.P2545362560867208788

noncomputable section

/-- A247900: First differences of A247681.

Offset 1, canonical program `A247900.P2545362560867208788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247900 (n : ℕ) : ℤ :=
  A247900.P2545362560867208788.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248038.P16100474791484475395

`A020338(3*(n+1))`
-/

namespace A248038.P16100474791484475395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (3 * (n + 1))

end

end A248038.P16100474791484475395

noncomputable section

/-- A248038: 3n concatenated with itself.

Offset 1, canonical program `A248038.P16100474791484475395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A248038 (n : ℕ) : ℤ :=
  A248038.P16100474791484475395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A248038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249133.P6513466101138431158

`A249095(n)%2`
-/

namespace A249133.P6513466101138431158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249095 n) 2

end

end A249133.P6513466101138431158

noncomputable section

/-- A249133: Triangle read by rows: interleaving successive pairs of rows of Sierpiński's triangle.

Offset 0, canonical program `A249133.P6513466101138431158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249133 (n : ℕ) : ℤ :=
  A249133.P6513466101138431158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249252.P10988775486435734646

`A035607(n)*A059268(n)`
-/

namespace A249252.P10988775486435734646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n * A059268 n

end

end A249252.P10988775486435734646

noncomputable section

/-- A249252: Triangular array: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

Offset 0, canonical program `A249252.P10988775486435734646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A249252 (n : ℕ) : ℤ :=
  A249252.P10988775486435734646.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A249252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249307.P11332962648986991517

`A000079(n-floor(sqrt(n))²)*A249095(n)`
-/

namespace A249307.P11332962648986991517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n - Nat.sqrt n ^ 2) * A249095 n

end

end A249307.P11332962648986991517

noncomputable section

/-- A249307: Triangle read by rows: A249095(n,k) * 2^k, k = 0 .. 2*n+1.

Offset 0, canonical program `A249307.P11332962648986991517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249307 (n : ℕ) : ℤ :=
  A249307.P11332962648986991517.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250406.P11635683072405501755

`A112660(n+1)%A008864(n+1)`
-/

namespace A250406.P11635683072405501755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112660 (n + 1)) (A008864 (n + 1))

end

end A250406.P11635683072405501755

noncomputable section

/-- A250406: Values of B such that p = prime(n) satisfies (p-1)! == -1-B*p (mod p^2), i.e., p is a near-Wilson prime.

Offset 1, canonical program `A250406.P11635683072405501755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A250406 (n : ℕ) : ℤ :=
  A250406.P11635683072405501755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A250406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251092.P10184513225157479240

`Δ[lt[1, A074927(n+1)]]`
-/

namespace A251092.P10184513225157479240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074927 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A251092.P10184513225157479240

noncomputable section

/-- A251092: a(n) is the number of primes in the n-th group of consecutive primes among the odd numbers.

Offset 1, canonical program `A251092.P10184513225157479240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A251092 (n : ℕ) : ℤ :=
  A251092.P10184513225157479240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A251092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251713.P10776453534213913153

`A251712(n+1)-A122189(n)`
-/

namespace A251713.P10776453534213913153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251712 (n + 1) - A122189 n

end

end A251713.P10776453534213913153

noncomputable section

/-- A251713: 7-step Fibonacci sequence starting with (0,0,1,0,0,0,0).

Offset 0, canonical program `A251713.P10776453534213913153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251713 (n : ℕ) : ℤ :=
  A251713.P10776453534213913153.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251714.P7486523241703354123

`A251712(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A251714.P7486523241703354123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A251712 n - a (n - 2)

end

end A251714.P7486523241703354123

noncomputable section

/-- A251714: 7-step Fibonacci sequence starting with (0,1,0,0,0,0,0).

Offset 0, canonical program `A251714.P7486523241703354123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251714 (n : ℕ) : ℤ :=
  A251714.P7486523241703354123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251719.P1076790489604256652

`∑[char[A250473(n+1)]]+1`
-/

namespace A251719.P1076790489604256652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A251719.P1076790489604256652

noncomputable section

/-- A251719: a(n) = the least k such that A250474(k) > n.

Offset 1, canonical program `A251719.P1076790489604256652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251719 (n : ℕ) : ℤ :=
  (A251719.P1076790489604256652.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251744.P2670266574410106303

`A251742(n+1)-A079262(n)`
-/

namespace A251744.P2670266574410106303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251742 (n + 1) - A079262 n

end

end A251744.P2670266574410106303

noncomputable section

/-- A251744: 8-step Fibonacci sequence starting with 0,0,1,0,0,0,0,0.

Offset 0, canonical program `A251744.P2670266574410106303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251744 (n : ℕ) : ℤ :=
  A251744.P2670266574410106303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251745.P11340030167898601430

`A251742(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A251745.P11340030167898601430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A251742 n - a (n - 2)

end

end A251745.P11340030167898601430

noncomputable section

/-- A251745: 8-step Fibonacci sequence starting with 0,1,0,0,0,0,0,0.

Offset 0, canonical program `A251745.P11340030167898601430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251745 (n : ℕ) : ℤ :=
  A251745.P11340030167898601430.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251749.P7611603450799538815

`A251748(n+1)-A104144(n)`
-/

namespace A251749.P7611603450799538815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251748 (n + 1) - A104144 n

end

end A251749.P7611603450799538815

noncomputable section

/-- A251749: 9-step Fibonacci sequence starting with 0,0,0,0,1,0,0,0,0.

Offset 0, canonical program `A251749.P7611603450799538815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251749 (n : ℕ) : ℤ :=
  A251749.P7611603450799538815.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253146.P8353781513861575822

`A131225(A185180(n+1))`
-/

namespace A253146.P8353781513861575822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131225 (A185180 (n + 1)).toNat

end

end A253146.P8353781513861575822

noncomputable section

/-- A253146: A fractal tree, read by rows: for n > 2, T(n,1) = T(n-1,1)+2, T(n,n) = T(n-1,1)+3, and for k=2..n-1, T(n,k) = T(n-2,k-1).

Offset 1, canonical program `A253146.P8353781513861575822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A253146 (n : ℕ) : ℤ :=
  A253146.P8353781513861575822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A253146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253563.P3695549317124564486

`a(A025480(n))*A000040(A000120(n))` with `a(0)=1`
-/

namespace A253563.P3695549317124564486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A025480 n).toNat * A000040 (A000120 n).toNat

end

end A253563.P3695549317124564486

noncomputable section

/-- A253563: Permutation of natural numbers: a(0) = 1, a(1) = 2; after which, a(2n) = A253560(a(n)), a(2n+1) = A253550(a(n)).

Offset 0, canonical program `A253563.P3695549317124564486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253563 (n : ℕ) : ℤ :=
  A253563.P3695549317124564486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253580.P15714201682578060032

`A004741(n+1)-1`
-/

namespace A253580.P15714201682578060032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (n + 1) - 1

end

end A253580.P15714201682578060032

noncomputable section

/-- A253580: A fractal tree, read by rows: for n > 1: T(n,0) = T(n-1,0)+2, T(n,2*n) = T(n-1,0)+3, and for k=1..2*n-1: T(n,k) = T(n-1,k-1).

Offset 0, canonical program `A253580.P15714201682578060032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253580 (n : ℕ) : ℤ :=
  A253580.P15714201682578060032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253629.P1098263720651424872

`A003557(n+1)*A206787(n+1)`
-/

namespace A253629.P1098263720651424872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A206787 (n + 1)

end

end A253629.P1098263720651424872

noncomputable section

/-- A253629: Multiplicative function defined for prime powers by a(p^e) = p^(e-1)(p+1) if p > 2 and a(2^e) = 2^(e-1).

Offset 1, canonical program `A253629.P1098263720651424872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253629 (n : ℕ) : ℤ :=
  A253629.P1098263720651424872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254148.P9928434026570908053

`A254147(n)+A001557(n)`
-/

namespace A254148.P9928434026570908053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254147 n + A001557 n

end

end A254148.P9928434026570908053

noncomputable section

/-- A254148: a(n) = 9*2^n + 7*4^n + 3*8^n + 8*3^n + 2*9^n + 6*5^n + 5*6^n + 4*7^n + 10^n + 10.

Offset 0, canonical program `A254148.P9928434026570908053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A254148 (n : ℕ) : ℤ :=
  A254148.P9928434026570908053.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A254148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254468.P17164874337159960283

`A254467(n)+A254466(n)`
-/

namespace A254468.P17164874337159960283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254467 n + A254466 n

end

end A254468.P17164874337159960283

noncomputable section

/-- A254468: a(n) = 35*4^n + 126*2^n + 70*3^n + 15*5^n + 5*6^n + 7^n + 210.

Offset 0, canonical program `A254468.P17164874337159960283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254468 (n : ℕ) : ℤ :=
  A254468.P17164874337159960283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254784.P9321430729431303408

`∑[A178138(n+1)]`
-/

namespace A254784.P9321430729431303408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254784.P9321430729431303408

noncomputable section

/-- A254784: Apply partial sum operator 5 times to primes.

Offset 1, canonical program `A254784.P9321430729431303408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254784 (n : ℕ) : ℤ :=
  A254784.P9321430729431303408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255317.P9121371679298329129

`A033761(3*n+2)`
-/

namespace A255317.P9121371679298329129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 (3 * n + 2)

end

end A255317.P9121371679298329129

noncomputable section

/-- A255317: Expansion of psi(-x^3)^2 / chi(-x) in powers of x where psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A255317.P9121371679298329129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A255317 (n : ℕ) : ℤ :=
  A255317.P9121371679298329129.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A255317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255318.P948709547054149984

`A033761(3*n+1)`
-/

namespace A255318.P948709547054149984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 (3 * n + 1)

end

end A255318.P948709547054149984

noncomputable section

/-- A255318: Expansion of psi(x^3) * f(x^2, x^4) in powers of x where psi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A255318.P948709547054149984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A255318 (n : ℕ) : ℤ :=
  A255318.P948709547054149984.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A255318.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A256702.P6496352478846748862

`A256701(n+1)-(n+1)`
-/

namespace A256702.P6496352478846748862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256701 (n + 1) - (n + 1 : ℤ)

end

end A256702.P6496352478846748862

noncomputable section

/-- A256702: Nonpositive part of the minimal alternating binary representation of n (defined at A256696).

Offset 1, canonical program `A256702.P6496352478846748862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256702 (n : ℕ) : ℤ :=
  A256702.P6496352478846748862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257020.P12343170561729900275

`eq[2, A001285(A055087(A055087(n)))]`
-/

namespace A257020.P12343170561729900275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A055087 (A055087 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257020.P12343170561729900275

noncomputable section

/-- A257020: Numbers whose quarter-square representation consists of three terms.

Offset 1, canonical program `A257020.P12343170561729900275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A257020 (n : ℕ) : ℤ :=
  (A257020.P12343170561729900275.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A257020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257445.P15690453960209871658

`A255226(n+1)+A000034(A001316(n))`
-/

namespace A257445.P15690453960209871658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255226 (n + 1) + A000034 (A001316 n).toNat

end

end A257445.P15690453960209871658

noncomputable section

/-- A257445: Number of (n+2) X (6+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 1 and no column sum 1.

Offset 1, canonical program `A257445.P15690453960209871658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A257445 (n : ℕ) : ℤ :=
  A257445.P15690453960209871658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A257445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257446.P10810494062127799661

`A255227(n+1)+1`
-/

namespace A257446.P10810494062127799661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255227 (n + 1) + 1

end

end A257446.P10810494062127799661

noncomputable section

/-- A257446: Number of (n+2) X (7+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 1 and no column sum 1.

Offset 1, canonical program `A257446.P10810494062127799661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A257446 (n : ℕ) : ℤ :=
  A257446.P10810494062127799661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A257446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257803.P5745170931242880120

`record[gcd(n+1, A257808(n+1)-A257808(n))]`
-/

namespace A257803.P5745170931242880120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A257808 (n + 1) - A257808 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257803.P5745170931242880120

noncomputable section

/-- A257803: Positions of odd numbers in A233271, the infinite trunk of inverted binary beanstalk.

Offset 1, canonical program `A257803.P5745170931242880120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7973 terms. -/
def A257803 (n : ℕ) : ℤ :=
  (A257803.P5745170931242880120.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7973 terms. -/
def A257803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258026.P15713230575811532906

`lt[0, A079054(n+2)]+1`
-/

namespace A258026.P15713230575811532906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A258026.P15713230575811532906

noncomputable section

/-- A258026: Numbers k such that prime(k+2) - 2*prime(k+1) + prime(k) < 0.

Offset 1, canonical program `A258026.P15713230575811532906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9557 terms. -/
def A258026 (n : ℕ) : ℤ :=
  (A258026.P15713230575811532906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9557 terms. -/
def A258026.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A258877.P7623926527182171937`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258876, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258877 (n : ℕ) : ℤ :=
  A258877.P7623926527182171937.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258876, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259558.P10968134983978428309

`eq[A008334(n+2), A008334(n+1)]+1`
-/

namespace A259558.P10968134983978428309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008334 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008334 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A259558.P10968134983978428309

noncomputable section

/-- A259558: Numbers n such that prime(n)-1 and prime(n+1)-1 have the same number of distinct prime factors.

Offset 1, canonical program `A259558.P10968134983978428309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3249 terms. -/
def A259558 (n : ℕ) : ℤ :=
  (A259558.P10968134983978428309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3249 terms. -/
def A259558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259853.P5595594093719287469

`A001790(n+1)/gcd((n+1)², A001790(n+1))`
-/

namespace A259853.P5595594093719287469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 (n + 1) : ℚ) / (Int.gcd ((n + 1) ^ 2 : ℤ) (A001790 (n + 1)) : ℚ)

end

end A259853.P5595594093719287469

noncomputable section

/-- A259853: Denominators of the terms of Lehmer's series S_2(2), where S_k(x) = Sum_{n>=1} n^k*x^n/binomial(2*n, n).

Offset 1, canonical program `A259853.P5595594093719287469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A259853 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A259853.P5595594093719287469.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A259853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260812.P13445173599127524008

`A060632(n)+a(A029578(n))` with `a(0)=1`
-/

namespace A260812.P13445173599127524008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060632 n + a (A029578 n).toNat

end

end A260812.P13445173599127524008

noncomputable section

/-- A260812: a(n) is the number of edges in a rooted 2-ary tree built from the binary representation of n: each vertex at level i (i=0,...,floor(log_2(n))) has two children if the i-th most significant bit is 1 and one child if the i-th bit is 0.

Offset 0, canonical program `A260812.P13445173599127524008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260812 (n : ℕ) : ℤ :=
  A260812.P13445173599127524008.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260934.P7552531157136623072

`A000203(n+1)-A227873(n+1)`
-/

namespace A260934.P7552531157136623072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A227873 (n + 1)

end

end A260934.P7552531157136623072

noncomputable section

/-- A260934: Sum of evil divisors of n. For evil numbers see A001969.

Offset 1, canonical program `A260934.P7552531157136623072`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227873, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260934 (n : ℕ) : ℤ :=
  A260934.P7552531157136623072.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227873, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260942.P8665585250651046300

`A253243(Δ[n²])/2`
-/

namespace A260942.P8665585250651046300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253243 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A260942.P8665585250651046300

noncomputable section

/-- A260942: Expansion of x * phi(-x) * psi(x^12) / chi(-x^3) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A260942.P8665585250651046300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260942 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A260942.P8665585250651046300.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262610.P17210216451198933661

`∑[Δ[A245092(n)]-A001057(n)]`
-/

namespace A262610.P17210216451198933661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262610.P17210216451198933661

noncomputable section

/-- A262610: The values of sigma function (A000203) and the positive integers interleaved.

Offset 1, canonical program `A262610.P17210216451198933661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262610 (n : ℕ) : ℤ :=
  A262610.P17210216451198933661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262768.P87336054763920580

`A073663(n)-A104722(record[A026741(n)])`
-/

namespace A262768.P87336054763920580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073663 n - A104722 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262768.P87336054763920580

noncomputable section

/-- A262768: a(n) = binomial(2*n+2,n) - 2*binomial(2*n,n) + binomial(2*n-2,n).

Offset 0, canonical program `A262768.P87336054763920580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A262768 (n : ℕ) : ℤ :=
  A262768.P87336054763920580.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A262768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264029.P7631594702276918908

`A119963(eq[0, A172090(n)])`
-/

namespace A264029.P7631594702276918908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264029.P7631594702276918908

noncomputable section

/-- A264029: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows lexicographically nondecreasing and columns lexicographically nonincreasing.

Offset 1, canonical program `A264029.P7631594702276918908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A264029 (n : ℕ) : ℤ :=
  A264029.P7631594702276918908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A264029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265509.P6848242209228727454

`and(2*n+1, A175920(2*n+1))`
-/

namespace A265509.P6848242209228727454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A175920 (2 * n + 1))

end

end A265509.P6848242209228727454

noncomputable section

/-- A265509: a(n) = largest base-2 palindrome m <= 2n+1 such that every base-2 digit of m is <= the corresponding digit of 2n+1; m is written in base 10.

Offset 0, canonical program `A265509.P6848242209228727454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A265509 (n : ℕ) : ℤ :=
  A265509.P6848242209228727454.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A265509.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A267103.P16478775800267878693

`A087686(1+A266109(n+1))`
-/

namespace A267103.P16478775800267878693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (1 + A266109 (n + 1)).toNat

end

end A267103.P16478775800267878693

noncomputable section

/-- A267103: Row 3 of A265903; numbers that occur exactly three times in A004001.

Offset 1, canonical program `A267103.P16478775800267878693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087686, A266109, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267103 (n : ℕ) : ℤ :=
  A267103.P16478775800267878693.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087686, A266109, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267582.P17996107973821825514

`A048967(floor(n²/(n+1)))+n+1`
-/

namespace A267582.P17996107973821825514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat + (n + 1 : ℤ)

end

end A267582.P17996107973821825514

noncomputable section

/-- A267582: Number of ON (black) cells in the n-th iteration of the "Rule 167" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267582.P17996107973821825514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267582 (n : ℕ) : ℤ :=
  A267582.P17996107973821825514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267700.P3416915831248695542

`(A160720(n+1)-1)/4`
-/

namespace A267700.P3416915831248695542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160720 (n + 1) - 1 : ℚ) / 4

end

end A267700.P3416915831248695542

noncomputable section

/-- A267700: "Tree" sequence in a 90-degree sector of the cellular automaton of A160720.

Offset 0, canonical program `A267700.P3416915831248695542`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267700 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A267700.P3416915831248695542.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267700.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267814.P10011190658344609298

`A267813(n+1)`
-/

namespace A267814.P10011190658344609298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267813 (n + 1)

end

end A267814.P10011190658344609298

noncomputable section

/-- A267814: Triangle read by rows giving successive states of cellular automaton generated by "Rule 221" initiated with a single ON (black) cell.

Offset 0, canonical program `A267814.P10011190658344609298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267814 (n : ℕ) : ℤ :=
  A267814.P10011190658344609298.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268000.P6584107503855115913

`(A112660(n+1)+A008864(n+1))%A001248(n+1)`
-/

namespace A268000.P6584107503855115913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112660 (n + 1) + A008864 (n + 1)) (A001248 (n + 1))

end

end A268000.P6584107503855115913

noncomputable section

/-- A268000: p*B_(p-1)+1 modulo p^2, where p = prime(n) and B_i denotes the i-th Bernoulli number.

Offset 1, canonical program `A268000.P6584107503855115913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268000 (n : ℕ) : ℤ :=
  A268000.P6584107503855115913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268272.P11859881272063941346

`eq[0, A027615(n)%2]`
-/

namespace A268272.P11859881272063941346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027615 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268272.P11859881272063941346

noncomputable section

/-- A268272: Negabinary evil numbers (see comment).

Offset 0, canonical program `A268272.P11859881272063941346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A268272 (n : ℕ) : ℤ :=
  (A268272.P11859881272063941346.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A268272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268273.P3579278689426774091

`eq[1, A027615(n)%2]`
-/

namespace A268273.P3579278689426774091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027615 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268273.P3579278689426774091

noncomputable section

/-- A268273: Negabinary odious numbers (see comment).

Offset 1, canonical program `A268273.P3579278689426774091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A268273 (n : ℕ) : ℤ :=
  (A268273.P3579278689426774091.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A268273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269709.P13202328295007541821

`∑[A169703(n)]`
-/

namespace A269709.P13202328295007541821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269709.P13202328295007541821

noncomputable section

/-- A269709: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 14", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A269709.P13202328295007541821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4006 terms. -/
def A269709 (n : ℕ) : ℤ :=
  A269709.P13202328295007541821.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4006 terms. -/
def A269709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271410.P2034698396170665635

`lcm(a(and(n, n-1)), A001511(n))` with `a(0)=1`
-/

namespace A271410.P2034698396170665635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℤ) (A001511 n)

end

end A271410.P2034698396170665635

noncomputable section

/-- A271410: LCM of exponents in binary expansion of 2n.

Offset 0, canonical program `A271410.P2034698396170665635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271410 (n : ℕ) : ℤ :=
  (A271410.P2034698396170665635.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271410.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A271784.P18244264633262029210

`eq[2, A037861(A292272(n))-2]`
-/

namespace A271784.P18244264633262029210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A292272 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271784.P18244264633262029210

noncomputable section

/-- A271784: Numbers that have exactly five zeros when written in binary balanced system (A270885).

Offset 1, canonical program `A271784.P18244264633262029210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1601 terms. -/
def A271784 (n : ℕ) : ℤ :=
  (A271784.P18244264633262029210.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1601 terms. -/
def A271784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271974.P704651561551889404

`ceil(A073579(n+2)/2)`
-/

namespace A271974.P704651561551889404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A073579 (n + 2) : ℚ) / 2⌉

end

end A271974.P704651561551889404

noncomputable section

/-- A271974: Let p = prime(n): if p mod 4 == 1 then a(n) = (1+p)/2 otherwise if p mod 4 == 3 then a(n) = (1-p)/2.

Offset 2, canonical program `A271974.P704651561551889404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A271974 (n : ℕ) : ℤ :=
  A271974.P704651561551889404.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A271974.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A272569.P17664590215106579410

`(A002487(n+1)-A020951(n))*A020951(n)`
-/

namespace A272569.P17664590215106579410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002487 (n + 1) - A020951 n) * A020951 n

end

end A272569.P17664590215106579410

noncomputable section

/-- A272569: A variation on Stern's diatomic sequence.

Offset 1, canonical program `A272569.P17664590215106579410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272569 (n : ℕ) : ℤ :=
  A272569.P17664590215106579410.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273561.P17437193732767183359

`∑[4*(n+1)-A270107(n)]`
-/

namespace A273561.P17437193732767183359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A270107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273561.P17437193732767183359

noncomputable section

/-- A273561: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273561.P17437193732767183359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3409 terms. -/
def A273561 (n : ℕ) : ℤ :=
  A273561.P17437193732767183359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3409 terms. -/
def A273561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273578.P16949239199051931656

`∑[A273577(n)]`
-/

namespace A273578.P16949239199051931656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273578.P16949239199051931656

noncomputable section

/-- A273578: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 803", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273578.P16949239199051931656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2682 terms. -/
def A273578 (n : ℕ) : ℤ :=
  A273578.P16949239199051931656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2682 terms. -/
def A273578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273579.P3856066556281764701

`Δ[A273577(n)]`
-/

namespace A273579.P3856066556281764701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273579.P3856066556281764701

noncomputable section

/-- A273579: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 803", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273579.P3856066556281764701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2671 terms. -/
def A273579 (n : ℕ) : ℤ :=
  A273579.P3856066556281764701.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2671 terms. -/
def A273579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274094.P5521899497297854027

`-A274093(n)`
-/

namespace A274094.P5521899497297854027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A274093 n

end

end A274094.P5521899497297854027

noncomputable section

/-- A274094: a(0)=0; thereafter (-1)^(n+1)*n appears n times.

Offset 0, canonical program `A274094.P5521899497297854027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274094 (n : ℕ) : ℤ :=
  A274094.P5521899497297854027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274707.P10103696147558758885

`A237884(n)+A138364(n)`
-/

namespace A274707.P10103696147558758885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237884 n + A138364 n

end

end A274707.P10103696147558758885

noncomputable section

/-- A274707: a(n) = A(n) if n is even else a(n) = A(n)*(n-1)/(n+1) with A(n) = ((n-1)!/ floor((n-1)/2)!^2).

Offset 1, canonical program `A274707.P10103696147558758885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A274707 (n : ℕ) : ℤ :=
  A274707.P10103696147558758885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A274707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274773.P11672624379083383188

`2*A053616(n)+1`
-/

namespace A274773.P11672624379083383188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053616 n + 1

end

end A274773.P11672624379083383188

noncomputable section

/-- A274773: a(n) = floor(sqrt(2*n-1) + 1/2) - abs(2*(n-1) - (floor(sqrt(2*n-1) + 1/2))^2) + 1.

Offset 1, canonical program `A274773.P11672624379083383188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274773 (n : ℕ) : ℤ :=
  A274773.P11672624379083383188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275238.P2529277380881640300

`xor(1, n*(A178914(n)+1+n))`
-/

namespace A275238.P2529277380881640300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * (A178914 n + 1 + (n : ℤ)))

end

end A275238.P2529277380881640300

noncomputable section

/-- A275238: a(n) = n*(10^floor(log_10(n)+1) + 1) + (-1)^n.

Offset 0, canonical program `A275238.P2529277380881640300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275238 (n : ℕ) : ℤ :=
  A275238.P2529277380881640300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275238.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A276133.P16912241071794328455

`Δ[A080085(n+1)]`
-/

namespace A276133.P16912241071794328455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P16912241071794328455

noncomputable section

/-- A276133: Exponent of highest power of 2 dividing the product of the composite numbers between the n-th prime and the (n+1)-st prime.

Offset 1, canonical program `A276133.P16912241071794328455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A276133 (n : ℕ) : ℤ :=
  A276133.P16912241071794328455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A276133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276151.P6895795867125702309

`n-A343048(1-Δ[A276150(n)])`
-/

namespace A276151.P6895795867125702309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A343048 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A276151.P6895795867125702309

noncomputable section

/-- A276151: n minus the greatest primorial number (A002110) which divides n: a(n) = n - A053589(n).

Offset 1, canonical program `A276151.P6895795867125702309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276151 (n : ℕ) : ℤ :=
  A276151.P6895795867125702309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276194.P6934674265485080533

`A001969(eq[2%A001316(n+1), A001285(n)]+1)`
-/

namespace A276194.P6934674265485080533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A001316 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A276194.P6934674265485080533

noncomputable section

/-- A276194: Odd numbers whose binary representation contains an even number of 1's and at least one 0.

Offset 1, canonical program `A276194.P6934674265485080533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A276194 (n : ℕ) : ℤ :=
  A276194.P6934674265485080533.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A276194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276273.P16785661812156744009

`A088748(A003188(n))`
-/

namespace A276273.P16785661812156744009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A003188 n).toNat

end

end A276273.P16785661812156744009

noncomputable section

/-- A276273: Replacing every "mixed pair" of integers (as defined in the comments) with the smaller integer of the pair rebuilds the sequence.

Offset 1, canonical program `A276273.P16785661812156744009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276273 (n : ℕ) : ℤ :=
  A276273.P16785661812156744009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276618.P14344532738654526043

`or(A059268(n), A099884(A061579(n)))`
-/

namespace A276618.P14344532738654526043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059268 n) (A099884 (A061579 n).toNat)

end

end A276618.P14344532738654526043

noncomputable section

/-- A276618: Transpose of table A099884.

Offset 0, canonical program `A276618.P14344532738654526043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A276618 (n : ℕ) : ℤ :=
  A276618.P14344532738654526043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A276618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276670.P10613911067036995534

`3*A138190((2*n)%(n+1)+1)`
-/

namespace A276670.P10613911067036995534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138190 (2 * n % (n + 1) + 1)

end

end A276670.P10613911067036995534

noncomputable section

/-- A276670: Numerator of (n-1)*n*(n+1)/4.

Offset 0, canonical program `A276670.P10613911067036995534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276670 (n : ℕ) : ℤ :=
  A276670.P10613911067036995534.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278711.P2667105724991810827

`lcm(A140978(n+1), A225950(n+2))`
-/

namespace A278711.P2667105724991810827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A140978 (n + 1)) (A225950 (n + 2))

end

end A278711.P2667105724991810827

noncomputable section

/-- A278711: Triangle T read by rows: T(n, m), for n >= 2, and m=1, 2, ..., n-1, equals the positive integer solution x of y^2 = x^3 - A(n, m)^2*x with the area A(n, m) = A249869(n, m) of the primitive Pythagorean triangle characterized by (n, m) or 0 if no such triangle exists.

Offset 2, canonical program `A278711.P2667105724991810827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A278711 (n : ℕ) : ℤ :=
  (A278711.P2667105724991810827.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A278711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278712.P11642607934964256146

`lcm(∑[A073423(n)], A225950(n+2))`
-/

namespace A278712.P11642607934964256146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A225950 (n + 2))

end

end A278712.P11642607934964256146

noncomputable section

/-- A278712: Triangle T read by rows: T(n, m), for n >= 2, and m = 1, 2, ..., n-1, equals the square root of the positive integer solution y of y^2 = x^3 - A(n, m)^2*x with the area A(n, m) = A249869(n, m) of the primitive Pythagorean triangle characterized by (n, m) or 0 if no such triangle exists.

Offset 2, canonical program `A278712.P11642607934964256146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A278712 (n : ℕ) : ℤ :=
  (A278712.P11642607934964256146.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A278712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278959.P17833903646216685810

`A068670(∑[char[p?[round(8*n/7)]+1]])`
-/

namespace A278959.P17833903646216685810
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068670 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278959.P17833903646216685810

noncomputable section

/-- A278959: Length of the string that is generated by the concatenation of all the prime numbers < n.

Offset 0, canonical program `A278959.P17833903646216685810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278959 (n : ℕ) : ℤ :=
  A278959.P17833903646216685810.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279563.P2925378631213152026

`1-n+n*A166588(2*n)-A000225(n)`
-/

namespace A279563.P2925378631213152026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) + ((n : ℤ) * A166588 (2 * n) - A000225 n)

end

end A279563.P2925378631213152026

noncomputable section

/-- A279563: Number of length n inversion sequences avoiding the patterns 102, 201, and 210.

Offset 0, canonical program `A279563.P2925378631213152026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A279563 (n : ℕ) : ℤ :=
  A279563.P2925378631213152026.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A279563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279733.P15757647906941129304

`A023531(A061579(n)-A087401(n))`
-/

namespace A279733.P15757647906941129304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A061579 n - A087401 n).toNat

end

end A279733.P15757647906941129304

noncomputable section

/-- A279733: Triangle read by rows which is constructed with the diagram of the triangle of A237048 and filling the empty cells with zeros.

Offset 1, canonical program `A279733.P15757647906941129304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A279733 (n : ℕ) : ℤ :=
  A279733.P15757647906941129304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A279733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280411.P16062598287580684843

`A309761(∑[xor(1, n)])`
-/

namespace A280411.P16062598287580684843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280411.P16062598287580684843

noncomputable section

/-- A280411: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 261", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A280411.P16062598287580684843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A280411 (n : ℕ) : ℤ :=
  A280411.P16062598287580684843.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A280411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280514.P1420355641287953879

`A246104(n+1)-(n+2)`
-/

namespace A280514.P1420355641287953879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (n + 1) - (n + 2 : ℤ)

end

end A280514.P1420355641287953879

noncomputable section

/-- A280514: Index sequence of the reverse block-fractal sequence A003849.

Offset 1, canonical program `A280514.P1420355641287953879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280514 (n : ℕ) : ℤ :=
  A280514.P1420355641287953879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283316.P17339832045397034403

`A160383(n)%2`
-/

namespace A283316.P17339832045397034403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160383 n) 2

end

end A283316.P17339832045397034403

noncomputable section

/-- A283316: Image of 0 under repeated applications of the morphism 0 -> 0,0,0,1, 1 -> 1,1,1,0.

Offset 1, canonical program `A283316.P17339832045397034403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283316 (n : ℕ) : ℤ :=
  A283316.P17339832045397034403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283909.P7601031243717363811

`A267247(n)%A198633(n)`
-/

namespace A283909.P7601031243717363811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267247 n) (A198633 n)

end

end A283909.P7601031243717363811

noncomputable section

/-- A283909: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A283909.P7601031243717363811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A283909 (n : ℕ) : ℤ :=
  A283909.P7601031243717363811.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A283909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284090.P9625942839066826035

`round(A284023(A008619(2*n))/2)`
-/

namespace A284090.P9625942839066826035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A284023 (A008619 (2 * n)).toNat : ℚ) / 2)

end

end A284090.P9625942839066826035

noncomputable section

/-- A284090: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 798", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A284090.P9625942839066826035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A284090 (n : ℕ) : ℤ :=
  A284090.P9625942839066826035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A284090.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A284483.P4989402952069662796

`A284351(n)-A000035(A007920(n))`
-/

namespace A284483.P4989402952069662796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284351 n - A000035 (A007920 n).toNat

end

end A284483.P4989402952069662796

noncomputable section

/-- A284483: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 961", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A284483.P4989402952069662796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A284483 (n : ℕ) : ℤ :=
  A284483.P4989402952069662796.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A284483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284973.P12250254518392136044

`A284963(n+1)+A256077(n+1)`
-/

namespace A284973.P12250254518392136044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1) + A256077 (n + 1)

end

end A284973.P12250254518392136044

noncomputable section

/-- A284973: Numbers with digits 4 and 9 only.

Offset 1, canonical program `A284973.P12250254518392136044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284973 (n : ℕ) : ℤ :=
  A284973.P12250254518392136044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285474.P15837645706445647605

`A309761(∑[A266303(n)])`
-/

namespace A285474.P15837645706445647605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285474.P15837645706445647605

noncomputable section

/-- A285474: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285474.P15837645706445647605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285474 (n : ℕ) : ℤ :=
  A285474.P15837645706445647605.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285541.P13893119404520415230

`A309761(∑[A266981(n)])`
-/

namespace A285541.P13893119404520415230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285541.P13893119404520415230

noncomputable section

/-- A285541: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285541.P13893119404520415230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A285541 (n : ℕ) : ℤ :=
  A285541.P13893119404520415230.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A285541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285779.P3124785709148883009

`floor(xor(n, A106400(n))/2)`
-/

namespace A285779.P3124785709148883009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.xor (n : ℤ) (A106400 n) : ℚ) / 2⌋

end

end A285779.P3124785709148883009

noncomputable section

/-- A285779: Parity index: number of integers z with 1 <= z <= n for which A010060(z) = A010060(n), negated if A010060(n) = 1.

Offset 0, canonical program `A285779.P3124785709148883009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285779 (n : ℕ) : ℤ :=
  A285779.P3124785709148883009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285917.P12135390314754956376

`∑[2^(n+1)-Δ[A138364(n)]]`
-/

namespace A285917.P12135390314754956376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285917.P12135390314754956376

noncomputable section

/-- A285917: Number of ordered set partitions of [n] into two blocks such that equal-sized blocks are ordered with increasing least elements.

Offset 2, canonical program `A285917.P12135390314754956376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A285917 (n : ℕ) : ℤ :=
  A285917.P12135390314754956376.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A285917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285949.P15970173890661859112

`A082446(A091684(n))`
-/

namespace A285949.P15970173890661859112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082446 (A091684 n).toNat

end

end A285949.P15970173890661859112

noncomputable section

/-- A285949: {0->01, 1->0}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285949.P15970173890661859112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285949 (n : ℕ) : ℤ :=
  A285949.P15970173890661859112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285954.P14356408792107538698

`1+A026430(n)`
-/

namespace A285954.P14356408792107538698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A026430 n

end

end A285954.P14356408792107538698

noncomputable section

/-- A285954: Positions of 1 in A285952; complement of A285953.

Offset 1, canonical program `A285954.P14356408792107538698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285954 (n : ℕ) : ℤ :=
  A285954.P14356408792107538698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286050.P16642162876214931589

`A285957(n+1)+Δ[n²]`
-/

namespace A286050.P16642162876214931589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285957 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A286050.P16642162876214931589

noncomputable section

/-- A286050: Positions of 0 in A286049; complement of A286051.

Offset 1, canonical program `A286050.P16642162876214931589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286050 (n : ℕ) : ℤ :=
  A286050.P16642162876214931589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286051.P3921126115596038729

`2*(n+1)-A285957(n+1)`
-/

namespace A286051.P3921126115596038729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A285957 (n + 1)

end

end A286051.P3921126115596038729

noncomputable section

/-- A286051: Positions of 1 in A286049; complement of A286050.

Offset 1, canonical program `A286051.P3921126115596038729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286051 (n : ℕ) : ℤ :=
  A286051.P3921126115596038729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286063.P1257865481194737079

`A254379(lt[val(n+1, 2), 2])`
-/

namespace A286063.P1257865481194737079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A286063.P1257865481194737079

noncomputable section

/-- A286063: Fixed point of the mapping 00->001, 1->100, starting with 00.

Offset 1, canonical program `A286063.P1257865481194737079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286063 (n : ℕ) : ℤ :=
  A286063.P1257865481194737079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286108.P8792181165033674960

`A221146(n)+A057944(n)`
-/

namespace A286108.P8792181165033674960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221146 n + A057944 n

end

end A286108.P8792181165033674960

noncomputable section

/-- A286108: Square array read by antidiagonals: A(n,k) = T(2*(n AND k), n XOR k), where T(n,k) is sequence A001477 considered as a two-dimensional table, AND is bitwise-and (A004198) and XOR is bitwise-xor (A003987).

Offset 0, canonical program `A286108.P8792181165033674960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286108 (n : ℕ) : ℤ :=
  A286108.P8792181165033674960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286727.P12806024800689892931

`A095190(n)+A001651(n+1)`
-/

namespace A286727.P12806024800689892931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 n + A001651 (n + 1)

end

end A286727.P12806024800689892931

noncomputable section

/-- A286727: Positions of 0 in A286063; complement of A286728.

Offset 1, canonical program `A286727.P12806024800689892931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286727 (n : ℕ) : ℤ :=
  A286727.P12806024800689892931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286803.P3688873761259965348

`A286692(n+1)-A286665(n+1)`
-/

namespace A286803.P3688873761259965348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286692 (n + 1) - A286665 (n + 1)

end

end A286803.P3688873761259965348

noncomputable section

/-- A286803: Positions of 1 in A286801; complement of A286802.

Offset 1, canonical program `A286803.P3688873761259965348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286803 (n : ℕ) : ℤ :=
  A286803.P3688873761259965348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286900.P7686726523732709747

`A000217(A151800(n+1))-∑[n]`
-/

namespace A286900.P7686726523732709747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A151800 (n + 1)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A286900.P7686726523732709747

noncomputable section

/-- A286900: Sum of the numbers from n to nextprime(n).

Offset 1, canonical program `A286900.P7686726523732709747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286900 (n : ℕ) : ℤ :=
  A286900.P7686726523732709747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287555.P853673800569344600

`A004766(n+1)-A273149(n)`
-/

namespace A287555.P853673800569344600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1) - A273149 n

end

end A287555.P853673800569344600

noncomputable section

/-- A287555: Positions of 3 in A053839.

Offset 1, canonical program `A287555.P853673800569344600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287555 (n : ℕ) : ℤ :=
  A287555.P853673800569344600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287555.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A288418.P14808170796872248510

`∑{d}[n+1, A228274(#)]`
-/

namespace A288418.P14808170796872248510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A228274 d

end

end A288418.P14808170796872248510

noncomputable section

/-- A288418: a(n) = Sum_{d|n} d^2*A000593(n/d).

Offset 1, canonical program `A288418.P14808170796872248510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288418 (n : ℕ) : ℤ :=
  A288418.P14808170796872248510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288811.P11306443262646702706

`A095121(n)+1-A288807(n)`
-/

namespace A288811.P11306443262646702706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288807 n)

end

end A288811.P11306443262646702706

noncomputable section

/-- A288811: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288811.P11306443262646702706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A288811 (n : ℕ) : ℤ :=
  A288811.P11306443262646702706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A288811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289035.P15604890525171698629

`A188297(n+1)-A188300(n+1)`
-/

namespace A289035.P15604890525171698629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (n + 1) - A188300 (n + 1)

end

end A289035.P15604890525171698629

noncomputable section

/-- A289035: Fixed point of the mapping 00->0010, 01->010, 10->010, starting with 00.

Offset 1, canonical program `A289035.P15604890525171698629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289035 (n : ℕ) : ℤ :=
  A289035.P15604890525171698629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289279.P13898592628160016869

`2*(n+1)-1-A285786(n+1)`
-/

namespace A289279.P13898592628160016869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 1 - A285786 (n + 1)

end

end A289279.P13898592628160016869

noncomputable section

/-- A289279: Number of odd composite numbers in ]2*(n-1)^2, 2*n^2[.

Offset 1, canonical program `A289279.P13898592628160016869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285786, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289279 (n : ℕ) : ℤ :=
  A289279.P13898592628160016869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285786, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289279.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289450.P12865695419556516410

`A120588(n)+A141351(n)-A155587(n)`
-/

namespace A289450.P12865695419556516410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n + (A141351 n - A155587 n)

end

end A289450.P12865695419556516410

noncomputable section

/-- A289450: Related to number of mesh patterns of length 2 that avoid the pattern 231 or 321. For details see the comment section.

Offset 0, canonical program `A289450.P12865695419556516410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289450 (n : ℕ) : ℤ :=
  A289450.P12865695419556516410.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289866.P13807419711234569525

`p?[A160668(n+1)+A100484(n+1)]`
-/

namespace A289866.P13807419711234569525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1) + A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289866.P13807419711234569525

noncomputable section

/-- A289866: Primes obtained from other primes by prefixing a 1.

Offset 1, canonical program `A289866.P13807419711234569525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1476 terms. -/
def A289866 (n : ℕ) : ℤ :=
  A289866.P13807419711234569525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1476 terms. -/
def A289866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290012.P1928420523366165154

`A151800(A127719(n+1)-A000007(n))`
-/

namespace A290012.P1928420523366165154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A127719 (n + 1) - A000007 n).toNat

end

end A290012.P1928420523366165154

noncomputable section

/-- A290012: a(n) is the smallest prime number p satisfying p^2 >= Sum_{1 <= k <= n} prime(k)^2.

Offset 1, canonical program `A290012.P1928420523366165154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 822 terms. -/
def A290012 (n : ℕ) : ℤ :=
  A290012.P1928420523366165154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 822 terms. -/
def A290012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290090.P12479799207567123634

`A227872(n+1)-A010060(n+1)`
-/

namespace A290090.P12479799207567123634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227872 (n + 1) - A010060 (n + 1)

end

end A290090.P12479799207567123634

noncomputable section

/-- A290090: a(n) is the number of proper divisors of n that are odious (A000069).

Offset 1, canonical program `A290090.P12479799207567123634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227872, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A290090 (n : ℕ) : ℤ :=
  A290090.P12479799207567123634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227872, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A290090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A290231.P14487216163094283759

`or(A277928(n), A288812(n))`
-/

namespace A290231.P14487216163094283759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277928 n) (A288812 n)

end

end A290231.P14487216163094283759

noncomputable section

/-- A290231: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290231.P14487216163094283759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290231 (n : ℕ) : ℤ :=
  A290231.P14487216163094283759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290232.P11019390822315618094

`A309761(A093005(n+1))`
-/

namespace A290232.P11019390822315618094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A093005 (n + 1)).toNat

end

end A290232.P11019390822315618094

noncomputable section

/-- A290232: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 773", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290232.P11019390822315618094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290232 (n : ℕ) : ℤ :=
  A290232.P11019390822315618094.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290256.P5412785612567679480

`A290255(2*(n+1))`
-/

namespace A290256.P5412785612567679480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (2 * (n + 1))

end

end A290256.P5412785612567679480

noncomputable section

/-- A290256: a(n) is the number of parts equal to 1 in the integer partition having viabin number n.

Offset 1, canonical program `A290256.P5412785612567679480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A290255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A290256 (n : ℕ) : ℤ :=
  A290256.P5412785612567679480.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A290255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A290256.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A290257.P10947685291748395

`A037870(2*(n+1))`
-/

namespace A290257.P10947685291748395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037870 (2 * (n + 1))

end

end A290257.P10947685291748395

noncomputable section

/-- A290257: a(n) is the size of the Durfee square of the integer partition having viabin number n.

Offset 1, canonical program `A290257.P10947685291748395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290257 (n : ℕ) : ℤ :=
  A290257.P10947685291748395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290418.P2473438558105985708

`A052551(n+1)-A285773(n+1)`
-/

namespace A290418.P2473438558105985708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (n + 1) - A285773 (n + 1)

end

end A290418.P2473438558105985708

noncomputable section

/-- A290418: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290418.P2473438558105985708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A290418 (n : ℕ) : ℤ :=
  A290418.P2473438558105985708.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A290418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290739.P10153310189044843911

`A089802(n)*A089802(∑[A089802(n)]²)`
-/

namespace A290739.P10153310189044843911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089802 n * A089802 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A290739.P10153310189044843911

noncomputable section

/-- A290739: a(n) = 0 unless n = 3j^2+2j or 3j^2+4j+1 for some j>=0, in which case a(n) = (-1)^(j+1).

Offset 0, canonical program `A290739.P10153310189044843911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290739 (n : ℕ) : ℤ :=
  A290739.P10153310189044843911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290825.P15737516132095807789

`(A088917(n)+1)*char[A032924(n+1)]`
-/

namespace A290825.P15737516132095807789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088917 n + 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290825.P15737516132095807789

noncomputable section

/-- A290825: Least base-3 digit of n.

Offset 0, canonical program `A290825.P15737516132095807789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290825 (n : ℕ) : ℤ :=
  A290825.P15737516132095807789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293795.P7536653038350909202

`A094058(eq[1, A094058(n+1)-A004712(n+1)]+1)`
-/

namespace A293795.P7536653038350909202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094058 (n + 1) - A004712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A293795.P7536653038350909202

noncomputable section

/-- A293795: Numbers k such that (d(k), d(k+1)) = (1,1) in the base-2 digits d(i) of e.

Offset 1, canonical program `A293795.P7536653038350909202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5047 terms. -/
def A293795 (n : ℕ) : ℤ :=
  A293795.P7536653038350909202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5047 terms. -/
def A293795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293899.P5665492798636299173

`A293895(n+1)-A293896(n+1)`
-/

namespace A293899.P5665492798636299173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (n + 1) - A293896 (n + 1)

end

end A293899.P5665492798636299173

noncomputable section

/-- A293899: Number of proper divisors of the form 3k+1 minus number of proper divisors of the form 3k+2.

Offset 1, canonical program `A293899.P5665492798636299173`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293895, A293896, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293899 (n : ℕ) : ℤ :=
  A293899.P5665492798636299173.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293895, A293896, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293899.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293975.P1441853442646380636

`A026741(n)+A000035(n)*A151800(n)`
-/

namespace A293975.P1441853442646380636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + A000035 n * A151800 n

end

end A293975.P1441853442646380636

noncomputable section

/-- A293975: If n is even, divide by 2; otherwise, add the next larger prime.

Offset 0, canonical program `A293975.P1441853442646380636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293975 (n : ℕ) : ℤ :=
  A293975.P1441853442646380636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295878.P12559335493611426634

`∏{e}[A071975(n+1), A000040(#)]`
-/

namespace A295878.P12559335493611426634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A295878.P12559335493611426634

noncomputable section

/-- A295878: Multiplicative with a(p^(2e)) = 1, a(p^(2e-1)) = prime(e).

Offset 1, canonical program `A295878.P12559335493611426634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295878 (n : ℕ) : ℤ :=
  A295878.P12559335493611426634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296304.P12505462346226864270

`lt[Δ[A128059(n)]², 1]²`
-/

namespace A296304.P12505462346226864270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n ^ 2

end

end A296304.P12505462346226864270

noncomputable section

/-- A296304: Numbers whose absolute difference from a square is never a prime.

Offset 1, canonical program `A296304.P12505462346226864270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2774 terms. -/
def A296304 (n : ℕ) : ℤ :=
  (A296304.P12505462346226864270.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2774 terms. -/
def A296304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297040.P2860188233135443845

`A020951(2^A064458(n))`
-/

namespace A297040.P2860188233135443845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A064458 n : ℤ))).toNat

end

end A297040.P2860188233135443845

noncomputable section

/-- A297040: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-12 digits of n; see Comments.

Offset 1, canonical program `A297040.P2860188233135443845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A297040 (n : ℕ) : ℤ :=
  A297040.P2860188233135443845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A297040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298468.P9775696212957372657

`floor(A026491(n)+n/2)`
-/

namespace A298468.P9775696212957372657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026491 n : ℚ) + (n : ℚ) / 2⌋

end

end A298468.P9775696212957372657

noncomputable section

/-- A298468: Solution (aa(n)) of the system of 3 complementary equations in Comments.

Offset 0, canonical program `A298468.P9775696212957372657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298468 (n : ℕ) : ℤ :=
  A298468.P9775696212957372657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298879.P12503287432390370405

`eq[0, A228039(n)]`
-/

namespace A298879.P12503287432390370405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298879.P12503287432390370405

noncomputable section

/-- A298879: Numbers whose square is not odious.

Offset 1, canonical program `A298879.P12503287432390370405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298879 (n : ℕ) : ℤ :=
  (A298879.P12503287432390370405.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298944.P11431826460709050354

`A220105(Δ[A053767(n)])`
-/

namespace A298944.P11431826460709050354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (f1 (n + 1) - f1 n).toNat

end

end A298944.P11431826460709050354

noncomputable section

/-- A298944: a(n) = 2^(c-1) mod c^2, where c is the n-th composite number.

Offset 1, canonical program `A298944.P11431826460709050354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A298944 (n : ℕ) : ℤ :=
  A298944.P11431826460709050354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A298944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303581.P15071600454215095240

`A070941(n)-A010059(n)`
-/

namespace A303581.P15071600454215095240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n - A010059 n

end

end A303581.P15071600454215095240

noncomputable section

/-- A303581: Add i (>= 0) to the i-th block of terms in the Thue-Morse sequence A010060.

Offset 0, canonical program `A303581.P15071600454215095240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303581 (n : ℕ) : ℤ :=
  A303581.P15071600454215095240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304685.P4730161233825574462

`C(A204697(n+1), A286577(A038502(n+1)))`
-/

namespace A304685.P4730161233825574462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A204697 (n + 1)).toNat (A286577 (A038502 (n + 1)).toNat).toNat

end

end A304685.P4730161233825574462

noncomputable section

/-- A304685: a(n) = A000699(n) (mod 3).

Offset 1, canonical program `A304685.P4730161233825574462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A304685 (n : ℕ) : ℤ :=
  (A304685.P4730161233825574462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A304685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304876.P15055631552920192285

`∑{d}[n+1, A033999(#-1)*A127773((n+1)/#)]`
-/

namespace A304876.P15055631552920192285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A127773 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304876.P15055631552920192285

noncomputable section

/-- A304876: L.g.f.: log(Product_{k>=1} (1 + x^(k*(k+1)/2))) = Sum_{n>=1} a(n)*x^n/n.

Offset 1, canonical program `A304876.P15055631552920192285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304876 (n : ℕ) : ℤ :=
  A304876.P15055631552920192285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305007.P6262789419513029025

`(n+1)/gcd(n+1, A002129(n+1))`
-/

namespace A305007.P6262789419513029025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A002129 (n + 1)) : ℚ)

end

end A305007.P6262789419513029025

noncomputable section

/-- A305007: Denominators of coefficients in expansion of Sum_{k>=1} x^k/(k*(1 + x^k)).

Offset 1, canonical program `A305007.P6262789419513029025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305007 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A305007.P6262789419513029025.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305549.P11754656348602292953

`∑[A019562(n)]`
-/

namespace A305549.P11754656348602292953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305549.P11754656348602292953

noncomputable section

/-- A305549: Crystal ball sequence for the lattice C_6.

Offset 0, canonical program `A305549.P11754656348602292953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305549 (n : ℕ) : ℤ :=
  A305549.P11754656348602292953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307673.P7363177245116075700

`∑[A108754(n+1)]`
-/

namespace A307673.P7363177245116075700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P7363177245116075700

noncomputable section

/-- A307673: Partial sums of A108754.

Offset 1, canonical program `A307673.P7363177245116075700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307673 (n : ℕ) : ℤ :=
  A307673.P7363177245116075700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307980.P14907760515223499407

`eq[(2*A055642(n))², A145154(n)]`
-/

namespace A307980.P14907760515223499407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A055642 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307980.P14907760515223499407

noncomputable section

/-- A307980: Numbers k whose number of divisors is the square of the number of decimal digits of k.

Offset 1, canonical program `A307980.P14907760515223499407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A307980 (n : ℕ) : ℤ :=
  (A307980.P14907760515223499407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A307980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308046.P12778737970063889955

`2*A151800(n)-2*(n+1)`
-/

namespace A308046.P12778737970063889955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151800 n - (2 * (n + 1) : ℤ)

end

end A308046.P12778737970063889955

noncomputable section

/-- A308046: a(n) = 2*nextprime(n - 1) - 2*n, where nextprime(n) is the smallest prime > n.

Offset 1, canonical program `A308046.P12778737970063889955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308046 (n : ℕ) : ℤ :=
  A308046.P12778737970063889955.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308048.P2909942597719409398

`n+1-A151800(ceil((n+1)/2)-1)`
-/

namespace A308048.P2909942597719409398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A151800 (⌈(n + 1 : ℚ) / 2⌉ - 1).toNat

end

end A308048.P2909942597719409398

noncomputable section

/-- A308048: a(n) = n - nextprime(ceiling(n/2) - 1), where nextprime(n) is the smallest prime > n.

Offset 1, canonical program `A308048.P2909942597719409398`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308048 (n : ℕ) : ℤ :=
  A308048.P2909942597719409398.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308052.P8174859683597679288

`A151800(floor(n/2))`
-/

namespace A308052.P8174859683597679288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ⌊(n : ℚ) / 2⌋.toNat

end

end A308052.P8174859683597679288

noncomputable section

/-- A308052: a(n) = nextprime(ceiling(n/2)-1), where nextprime(n) is the smallest prime > n.

Offset 1, canonical program `A308052.P8174859683597679288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308052 (n : ℕ) : ℤ :=
  A308052.P8174859683597679288.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308430.P10162572136234299228

`∑[A037861(A130290(n+1))+1]`
-/

namespace A308430.P10162572136234299228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A130290 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308430.P10162572136234299228

noncomputable section

/-- A308430: Number of 0's minus number of 1's among the edge truncated binary representations of the first n prime numbers.

Offset 1, canonical program `A308430.P10162572136234299228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A308430 (n : ℕ) : ℤ :=
  A308430.P10162572136234299228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A308430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309416.P13966311176528186971

`A296239(n)+a(A296239(n))` with `a(0)=0`
-/

namespace A309416.P13966311176528186971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A296239 n + a (A296239 n).toNat

end

end A309416.P13966311176528186971

noncomputable section

/-- A309416: a(n) = Sum_{k > 0} d^k(n), where d^k corresponds to the k-th iterate of A296239.

Offset 0, canonical program `A309416.P13966311176528186971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A309416 (n : ℕ) : ℤ :=
  A309416.P13966311176528186971.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A309416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309851.P14047395158355173875

`p?[A008619(n)+ceil(A111708(n)/2+n)]`
-/

namespace A309851.P14047395158355173875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + ⌈(A111708 n : ℚ) / 2 + (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309851.P14047395158355173875

noncomputable section

/-- A309851: Primes formed by concatenating n and 2n-1.

Offset 1, canonical program `A309851.P14047395158355173875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A309851 (n : ℕ) : ℤ :=
  A309851.P14047395158355173875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A309851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181173.P4927634658876330475

`p?[A023721(n+1)]`
-/

namespace A181173.P4927634658876330475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181173.P4927634658876330475

noncomputable section

/-- A181173: Primes whose base 5 representation does not contain a 0.

Offset 1, canonical program `A181173.P4927634658876330475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1356 terms. -/
def A181173 (n : ℕ) : ℤ :=
  A181173.P4927634658876330475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1356 terms. -/
def A181173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181328.P11141749099102399961

`A181296(n)+A181300(n)-A181326(n)`
-/

namespace A181328.P11141749099102399961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181296 n + (A181300 n - A181326 n)

end

end A181328.P11141749099102399961

noncomputable section

/-- A181328: Number of columns with an even sum in all 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

Offset 0, canonical program `A181328.P11141749099102399961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181328 (n : ℕ) : ℤ :=
  A181328.P11141749099102399961.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181363.P272929501792705759

`A008578(A025480(n)+1)`
-/

namespace A181363.P272929501792705759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A025480 n + 1).toNat

end

end A181363.P272929501792705759

noncomputable section

/-- A181363: 1 followed by the primes, interleaved recursively.

Offset 1, canonical program `A181363.P272929501792705759`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181363 (n : ℕ) : ℤ :=
  A181363.P272929501792705759.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181650.P7495452160807174074

`A070909(n)*A141679(n+1)`
-/

namespace A181650.P7495452160807174074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070909 n * A141679 (n + 1)

end

end A181650.P7495452160807174074

noncomputable section

/-- A181650: Inverse of number triangle A070909.

Offset 0, canonical program `A181650.P7495452160807174074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181650 (n : ℕ) : ℤ :=
  A181650.P7495452160807174074.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181938.P3732360409968739230

`∩[A151800(A253969(2*n+1)), A253969(n+2)]`
-/

namespace A181938.P3732360409968739230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A253969 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253969 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181938.P3732360409968739230

noncomputable section

/-- A181938: Isolated primes = 1 mod 6: sandwiched by primes = 5 mod 6.

Offset 1, canonical program `A181938.P3732360409968739230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A181938 (n : ℕ) : ℤ :=
  (A181938.P3732360409968739230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A181938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182004.P11314887941871430139

`A008441(n)*A226162(2*n+3)`
-/

namespace A182004.P11314887941871430139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n * A226162 (2 * n + 3)

end

end A182004.P11314887941871430139

noncomputable section

/-- A182004: Expansion of q^(-1/4) * (eta(q^4) * eta(q^25) + eta(q) * eta(q^100))^2 / (eta(q^2) * eta(q^50)) in powers of q.

Offset 0, canonical program `A182004.P11314887941871430139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A182004 (n : ℕ) : ℤ :=
  A182004.P11314887941871430139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A182004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182093.P17307292128728891994

`∑[A005590(n)]`
-/

namespace A182093.P17307292128728891994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182093.P17307292128728891994

noncomputable section

/-- A182093: Partial sums of A005590.

Offset 0, canonical program `A182093.P17307292128728891994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182093 (n : ℕ) : ℤ :=
  A182093.P17307292128728891994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182339.P2554287700400521995

`∪[A036554(n+1), A072587(n+1)]`
-/

namespace A182339.P2554287700400521995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A182339.P2554287700400521995

noncomputable section

/-- A182339: List of positive integers whose prime tower factorization, as defined in comments, contains the prime 2.

Offset 1, canonical program `A182339.P2554287700400521995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182339 (n : ℕ) : ℤ :=
  (A182339.P2554287700400521995.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182434.P10432546062453886706

`∑[and(A061007(n+1), A101264(2*(n+1)))]`
-/

namespace A182434.P10432546062453886706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061007 (n + 1)) (A101264 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182434.P10432546062453886706

noncomputable section

/-- A182434: Number of primes p < n such that 4*p+1 is also prime.

Offset 1, canonical program `A182434.P10432546062453886706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182434 (n : ℕ) : ℤ :=
  A182434.P10432546062453886706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182936.P4233504524226139086

`A020500(n+1)-A061397(n+1)`
-/

namespace A182936.P4233504524226139086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1) - A061397 (n + 1)

end

end A182936.P4233504524226139086

noncomputable section

/-- A182936: Greatest common divisor of the proper divisors of n, 0 if there are none.

Offset 1, canonical program `A182936.P4233504524226139086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020500, A061397, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182936 (n : ℕ) : ℤ :=
  A182936.P4233504524226139086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020500, A061397, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183002.P1082009122046195699

`2*(A091627(n+1)-n)`
-/

namespace A183002.P1082009122046195699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A091627 (n + 1) - (n : ℤ))

end

end A183002.P1082009122046195699

noncomputable section

/-- A183002: a(n) is the total number of noncentral divisors in all positive integers <= n.

Offset 1, canonical program `A183002.P1082009122046195699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183002 (n : ℕ) : ℤ :=
  A183002.P1082009122046195699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183095.P16118821317782953757

`A183093(n+1)+1`
-/

namespace A183095.P16118821317782953757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183093 (n + 1) + 1

end

end A183095.P16118821317782953757

noncomputable section

/-- A183095: a(n) = number of divisors d of n that are either 1 or of the form Product_(i) (p_i^e_i) where e_i = 1 for at least one i.

Offset 1, canonical program `A183095.P16118821317782953757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183095 (n : ℕ) : ℤ :=
  A183095.P16118821317782953757.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183095.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A185711.P8088876807942369668

`∑[A185705(n+1)]`
-/

namespace A185711.P8088876807942369668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185711.P8088876807942369668

noncomputable section

/-- A185711: a(n) = number of primes <= n that end in 1.

Offset 1, canonical program `A185711.P8088876807942369668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185711 (n : ℕ) : ℤ :=
  A185711.P8088876807942369668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185714.P14230647716207036197

`∑[A001877((n+1)*A151763(n+1)²)]`
-/

namespace A185714.P14230647716207036197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 ((n + 1 : ℤ) * A151763 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185714.P14230647716207036197

noncomputable section

/-- A185714: a(n) = number of primes <= n that end in 7.

Offset 1, canonical program `A185714.P14230647716207036197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185714 (n : ℕ) : ℤ :=
  A185714.P14230647716207036197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185725.P4132825737576595347

`A194959(n+1)+A003984(n)²`
-/

namespace A185725.P4132825737576595347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (n + 1) + A003984 n ^ 2

end

end A185725.P4132825737576595347

noncomputable section

/-- A185725: Array associated with squares, by antidiagonals.

Offset 1, canonical program `A185725.P4132825737576595347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185725 (n : ℕ) : ℤ :=
  A185725.P4132825737576595347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185916.P655898616161062102

`A115359((n-1)%(n+1))`
-/

namespace A185916.P655898616161062102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A185916.P655898616161062102

noncomputable section

/-- A185916: Weight array of A185914, by antidiagonals.

Offset 1, canonical program `A185916.P655898616161062102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185916 (n : ℕ) : ℤ :=
  A185916.P655898616161062102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186099.P16380765776800973491

`A284098(n+1)+A284104(n+1)`
-/

namespace A186099.P16380765776800973491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284098 (n + 1) + A284104 (n + 1)

end

end A186099.P16380765776800973491

noncomputable section

/-- A186099: Sum of divisors of n congruent to 1 or 5 mod 6.

Offset 1, canonical program `A186099.P16380765776800973491`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284098, A284104, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A186099 (n : ℕ) : ℤ :=
  A186099.P16380765776800973491.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284098, A284104, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A186099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186697.P1665573472131375262

`A246104(p?[a(n-1)+2]-1)` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A186697.P1665573472131375262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A186697.P1665573472131375262

noncomputable section

/-- A186697: Next Fibonacci number after n-th prime number.

Offset 1, canonical program `A186697.P1665573472131375262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1329 terms. -/
def A186697 (n : ℕ) : ℤ :=
  A186697.P1665573472131375262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1329 terms. -/
def A186697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186994.P7214231733505960877

`A000005(A038610(n+1)/A066838(n+1))`
-/

namespace A186994.P7214231733505960877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A038610 (n + 1) : ℚ) / (A066838 (n + 1) : ℚ))).toNat

end

end A186994.P7214231733505960877

noncomputable section

/-- A186994: Number of maximum subsets of {1, 2, ..., n} containing n and having pairwise coprime elements.

Offset 1, canonical program `A186994.P7214231733505960877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A186994 (n : ℕ) : ℤ :=
  A186994.P7214231733505960877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A186994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187151.P13703592292862614707

`A186648(n)+A000984(n)`
-/

namespace A187151.P13703592292862614707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186648 n + A000984 n

end

end A187151.P13703592292862614707

noncomputable section

/-- A187151: Number of walks of length n starting at origin and ending in first quadrant on a square lattice.

Offset 0, canonical program `A187151.P13703592292862614707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A187151 (n : ℕ) : ℤ :=
  A187151.P13703592292862614707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A187151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187615.P16899303713262803839

`A133985(3*n)`
-/

namespace A187615.P16899303713262803839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133985 (3 * n)

end

end A187615.P16899303713262803839

noncomputable section

/-- A187615: Expansion of f(-x^17, -x^19) + x^4 * f(-x, -x^35) in powers of x where f(,) is Ramanujan's general theta function.

Offset 0, canonical program `A187615.P16899303713262803839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187615 (n : ℕ) : ℤ :=
  A187615.P16899303713262803839.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187615.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A187801.P9725530492111839525

`A087698(n+3)+A071919(n+2)`
-/

namespace A187801.P9725530492111839525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087698 (n + 3) + A071919 (n + 2)

end

end A187801.P9725530492111839525

noncomputable section

/-- A187801: Pascal's triangle construction method applied to {1,1,2} as an initial term.

Offset 2, canonical program `A187801.P9725530492111839525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1272 terms. -/
def A187801 (n : ℕ) : ℤ :=
  A187801.P9725530492111839525.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1272 terms. -/
def A187801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188023.P11150660518032503552

`A002260(n+1)*A115361(n)`
-/

namespace A188023.P11150660518032503552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A115361 n

end

end A188023.P11150660518032503552

noncomputable section

/-- A188023: Triangle read by rows, T(n,k) = k*A115361(n-1,k-1).

Offset 1, canonical program `A188023.P11150660518032503552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188023 (n : ℕ) : ℤ :=
  A188023.P11150660518032503552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188023.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188265.P1760849739698113654

`∪[A120753(n+1), A187975(n+1)]`
-/

namespace A188265.P1760849739698113654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188265.P1760849739698113654

noncomputable section

/-- A188265: Positions of 1 in A188398; complement of A188399.

Offset 1, canonical program `A188265.P1760849739698113654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188265 (n : ℕ) : ℤ :=
  (A188265.P1760849739698113654.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188265.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189817.P5095028548418174896

`eq[1, cos(A189816(n+1))]+1`
-/

namespace A189817.P5095028548418174896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A189816 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n + 1

end

end A189817.P5095028548418174896

noncomputable section

/-- A189817: Positions of 0 in A189816; complement of A189818.

Offset 1, canonical program `A189817.P5095028548418174896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6050 terms. -/
def A189817 (n : ℕ) : ℤ :=
  (A189817.P5095028548418174896.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6050 terms. -/
def A189817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190222.P6549821447653687319

`∩[A001742(n+1), A160337(n+1)]`
-/

namespace A190222.P6549821447653687319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P6549821447653687319

noncomputable section

/-- A190222: Noncomposite numbers all of whose decimal digits are noncomposite numbers (1,2,3,5,7).

Offset 1, canonical program `A190222.P6549821447653687319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A190222 (n : ℕ) : ℤ :=
  (A190222.P6549821447653687319.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A190222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190435.P4495769777369891294

`filter[A184659(n+1), A327174(#)]`
-/

namespace A190435.P4495769777369891294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327174 (f1 j).toNat = 1) n)

end

end A190435.P4495769777369891294

noncomputable section

/-- A190435: Positions of 3 in A190431.

Offset 1, canonical program `A190435.P4495769777369891294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5394 terms. -/
def A190435 (n : ℕ) : ℤ :=
  A190435.P4495769777369891294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5394 terms. -/
def A190435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190455.P12633995412954827223

`eq[1, A191329(A016825(n))+A078588(n)]`
-/

namespace A190455.P12633995412954827223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (A016825 n).toNat + A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190455.P12633995412954827223

noncomputable section

/-- A190455: Positions of 3 in A190451.

Offset 1, canonical program `A190455.P12633995412954827223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190455 (n : ℕ) : ℤ :=
  (A190455.P12633995412954827223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190465.P16276923175194958437

`(eq[2, A349620(n+1)]+1)^5`
-/

namespace A190465.P16276923175194958437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 5

end

end A190465.P16276923175194958437

noncomputable section

/-- A190465: Numbers with prime factorization p^5q^5.

Offset 1, canonical program `A190465.P16276923175194958437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5047 terms. -/
def A190465 (n : ℕ) : ℤ :=
  (A190465.P16276923175194958437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5047 terms. -/
def A190465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190666.P12689365777574726580

`Δ[A047665(n+1)-A035011(n+1)]`
-/

namespace A190666.P12689365777574726580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 (n + 1) - A035011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190666.P12689365777574726580

noncomputable section

/-- A190666: Number of walks from (0,0) to (n+3,n) which take steps from {E, N, NE}.

Offset 0, canonical program `A190666.P12689365777574726580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A190666 (n : ℕ) : ℤ :=
  A190666.P12689365777574726580.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A190666.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190757.P10981793899459881199

`gcd(A061447(10*(n+1)-5), A027941(n)*A106729(n)+1)`
-/

namespace A190757.P10981793899459881199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061447 (10 * (n + 1) - 5)) (A027941 n * A106729 n + 1)

end

end A190757.P10981793899459881199

noncomputable section

/-- A190757: Lucas Aurifeuillian primitive part A of Lucas(10*n - 5).

Offset 1, canonical program `A190757.P10981793899459881199`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190757 (n : ℕ) : ℤ :=
  (A190757.P10981793899459881199.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190757.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190781.P17856108577842530239

`gcd(A061447(10*(n+1)-5), A032908(n+1)*A106729(n)+1)`
-/

namespace A190781.P17856108577842530239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061447 (10 * (n + 1) - 5)) (A032908 (n + 1) * A106729 n + 1)

end

end A190781.P17856108577842530239

noncomputable section

/-- A190781: Lucas Aurifeuillian primitive part B of Lucas(10*n - 5).

Offset 1, canonical program `A190781.P17856108577842530239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190781 (n : ℕ) : ℤ :=
  (A190781.P17856108577842530239.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190781.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191483.P18427046693413308703

`4*A089269(n+1)`
-/

namespace A191483.P18427046693413308703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A089269 (n + 1)

end

end A191483.P18427046693413308703

noncomputable section

/-- A191483: Even discriminants of imaginary quadratic fields, negated.

Offset 1, canonical program `A191483.P18427046693413308703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089269, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191483 (n : ℕ) : ℤ :=
  A191483.P18427046693413308703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089269, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191558.P14009675995309042097

`n+1-A061397(n+1)`
-/

namespace A191558.P14009675995309042097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A061397 (n + 1)

end

end A191558.P14009675995309042097

noncomputable section

/-- A191558: a(n) = 0 if n prime, otherwise n.

Offset 1, canonical program `A191558.P14009675995309042097`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061397, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191558 (n : ℕ) : ℤ :=
  A191558.P14009675995309042097.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061397, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191836.P5700790045255042442

`∏[A143731(n+1)+ceil((n+1)/∏{p}[n+1, (n+1)/#])]`
-/

namespace A191836.P5700790045255042442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) + ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A191836.P5700790045255042442

noncomputable section

/-- A191836: The slowest growing sequence that satisfies: a(1) = 1, a(n) is a multiple of n and a(n-1), and a(n) > a(n-1).

Offset 1, canonical program `A191836.P5700790045255042442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A191836 (n : ℕ) : ℤ :=
  A191836.P5700790045255042442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A191836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191906.P12727792690230933810

`A007956(n+2)%A001065(n+2)`
-/

namespace A191906.P12727792690230933810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007956 (n + 2)) (A001065 (n + 2))

end

end A191906.P12727792690230933810

noncomputable section

/-- A191906: The remainder of (product of proper divisors of n) mod (sum of proper divisors of n).

Offset 2, canonical program `A191906.P12727792690230933810`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191906 (n : ℕ) : ℤ :=
  A191906.P12727792690230933810.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191906.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A193291.P12186419772948378566

`A183063(A000045(n+1))`
-/

namespace A193291.P12186419772948378566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A000045 (n + 1)).toNat

end

end A193291.P12186419772948378566

noncomputable section

/-- A193291: Number of even divisors of Fibonacci(n).

Offset 1, canonical program `A193291.P12186419772948378566`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193291 (n : ℕ) : ℤ :=
  A193291.P12186419772948378566.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193334.P16944727795109553516

`A183063(A000203(n+1))`
-/

namespace A193334.P16944727795109553516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A000203 (n + 1)).toNat

end

end A193334.P16944727795109553516

noncomputable section

/-- A193334: Number of even divisors of sigma(n).

Offset 1, canonical program `A193334.P16944727795109553516`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193334 (n : ℕ) : ℤ :=
  A193334.P16944727795109553516.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A194122.P1212420979446489230

`A194119(eq[0, A103516(n)])+A144394(n+4)`
-/

namespace A194122.P1212420979446489230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A144394 (n + 4)

end

end A194122.P1212420979446489230

noncomputable section

/-- A194122: Triangular array: T(n,k) = C(n+4,k) + C(n+4,k+1) + C(n+4,k+2) + C(n+4,k+3) + C(n+4,k+4), 0 <= k <= n.

Offset 0, canonical program `A194122.P1212420979446489230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6903 terms. -/
def A194122 (n : ℕ) : ℤ :=
  A194122.P1212420979446489230.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6903 terms. -/
def A194122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194123.P9267081841225222537

`abs(A104712(n+2)-A209518(n))`
-/

namespace A194123.P9267081841225222537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104712 (n + 2) - A209518 n|

end

end A194123.P9267081841225222537

noncomputable section

/-- A194123: Triangular array: T(n,k)=|C(n+2,k)-C(n+2,k+2)|, 0<=k<=n.

Offset 0, canonical program `A194123.P9267081841225222537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194123 (n : ℕ) : ℤ :=
  A194123.P9267081841225222537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194815.P10897451695732251232

`abs(A001489(∑[A327177(n)]))`
-/

namespace A194815.P10897451695732251232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A194815.P10897451695732251232

noncomputable section

/-- A194815: Number of integers k in [1,n] such that {n*r+k*r} < {n*r-k*r}, where { } = fractional part and r=sqrt(2).

Offset 1, canonical program `A194815.P10897451695732251232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194815 (n : ℕ) : ℤ :=
  A194815.P10897451695732251232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194816.P12578202600685302847

`∑[1-A327177(n)]`
-/

namespace A194816.P12578202600685302847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A327177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194816.P12578202600685302847

noncomputable section

/-- A194816: Number of integers k in [1,n] such that {n*r+k*r} > {n*r-k*r}, where { } = fractional part and r=sqrt(2).

Offset 1, canonical program `A194816.P12578202600685302847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194816 (n : ℕ) : ℤ :=
  A194816.P12578202600685302847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196274.P15919097305767155130

`A067970(n+1)/2`
-/

namespace A196274.P15919097305767155130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067970 (n + 1) : ℚ) / 2

end

end A196274.P15919097305767155130

noncomputable section

/-- A196274: Half of the gaps A067970 between odd nonprimes A014076.

Offset 1, canonical program `A196274.P15919097305767155130`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067970, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196274 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A196274.P15919097305767155130.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067970, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A199015.P4609584876450057430

`∑[A008441(n)]`
-/

namespace A199015.P4609584876450057430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P4609584876450057430

noncomputable section

/-- A199015: G.f.: 1/(1-x) * Product_{n>=1} (1 - x^(2*n))^2/(1 - x^(2*n-1))^2.

Offset 0, canonical program `A199015.P4609584876450057430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199015 (n : ℕ) : ℤ :=
  A199015.P4609584876450057430.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199015.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A199322.P1315380875111111042

`Δ[A071538(abs(A014209(n)))]`
-/

namespace A199322.P1315380875111111042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 |A014209 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199322.P1315380875111111042

noncomputable section

/-- A199322: Number of twin prime numbers of the form n*(n+1) + 2*k-3 and n*(n+1) + 2*k-1 with k = 1 to n+1.

Offset 1, canonical program `A199322.P1315380875111111042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A199322 (n : ℕ) : ℤ :=
  A199322.P1315380875111111042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A199322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199593.P322643745458318063

`lt[A075743(n+1), 1]+2`
-/

namespace A199593.P322643745458318063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A199593.P322643745458318063

noncomputable section

/-- A199593: Numbers n such that 3n-2, 3n-1 and 3n are all composite.

Offset 1, canonical program `A199593.P322643745458318063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199593 (n : ℕ) : ℤ :=
  (A199593.P322643745458318063.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199855.P14212829303038593170

`1-(a(n-1)-eq[A005369(n), A266666(n)])` with `a(0)=1`
-/

namespace A199855.P14212829303038593170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266666 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ))

end

end A199855.P14212829303038593170

noncomputable section

/-- A199855: Inverse permutation to A210521.

Offset 1, canonical program `A199855.P14212829303038593170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4951 terms. -/
def A199855 (n : ℕ) : ℤ :=
  A199855.P14212829303038593170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4951 terms. -/
def A199855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200811.P737774431781934220

`A200810(A035004(n+2))`
-/

namespace A200811.P737774431781934220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200810 (A035004 (n + 2)).toNat

end

end A200811.P737774431781934220

noncomputable section

/-- A200811: Iterate k -> d(k) until an odd prime is reached, starting from the n-th composite.

Offset 1, canonical program `A200811.P737774431781934220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A200811 (n : ℕ) : ℤ :=
  A200811.P737774431781934220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A200811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201734.P3143725369021031847

`eq[1, A075743(A128468(n)-2)]`
-/

namespace A201734.P3143725369021031847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A128468 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201734.P3143725369021031847

noncomputable section

/-- A201734: Numbers n such that 90*n + 47 is prime.

Offset 1, canonical program `A201734.P3143725369021031847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A201734 (n : ℕ) : ℤ :=
  (A201734.P3143725369021031847.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A201734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202116.P14031869112246816162

`eq[1, A075743(A257645(2*n+1))]`
-/

namespace A202116.P14031869112246816162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A257645 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202116.P14031869112246816162

noncomputable section

/-- A202116: Numbers k such that 90*k + 89 is prime.

Offset 1, canonical program `A202116.P14031869112246816162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A202116 (n : ℕ) : ℤ :=
  (A202116.P14031869112246816162.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A202116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202137.P10979129982781156413

`eq[A010051(A103214(n)), A133985(n)]`
-/

namespace A202137.P10979129982781156413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A103214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202137.P10979129982781156413

noncomputable section

/-- A202137: Numbers k such that 24k + 1 is neither square nor prime.

Offset 1, canonical program `A202137.P10979129982781156413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2881 terms. -/
def A202137 (n : ℕ) : ℤ :=
  (A202137.P10979129982781156413.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2881 terms. -/
def A202137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202268.P10475302286849161585

`A084984(A248910(n+1)+1)`
-/

namespace A202268.P10475302286849161585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (A248910 (n + 1) + 1).toNat

end

end A202268.P10475302286849161585

noncomputable section

/-- A202268: Numbers in which all digits are neither primes nor zero, i.e., are members of (1, 4, 6, 8, 9).

Offset 1, canonical program `A202268.P10475302286849161585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4298 terms. -/
def A202268 (n : ℕ) : ℤ :=
  A202268.P10475302286849161585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4298 terms. -/
def A202268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204014.P10436582750078122122

`A049581(n)%A008621(A115281(n))+1`
-/

namespace A204014.P10436582750078122122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049581 n) (A008621 (A115281 n).toNat) + 1

end

end A204014.P10436582750078122122

noncomputable section

/-- A204014: Symmetric matrix based by antidiagonals, based on f(i,j)=min{1+(j mod i), 1+( i mod j)}.

Offset 1, canonical program `A204014.P10436582750078122122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204014 (n : ℕ) : ℤ :=
  A204014.P10436582750078122122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204201.P4812556110496593180

`2*A054143(n)-A008949(n)`
-/

namespace A204201.P4812556110496593180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054143 n - A008949 n

end

end A204201.P4812556110496593180

noncomputable section

/-- A204201: Triangle based on (0,1/3,1) averaging array.

Offset 1, canonical program `A204201.P4812556110496593180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204201 (n : ℕ) : ℤ :=
  A204201.P4812556110496593180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204202.P1024099258740543106

`A054143(n)+A008949(n)`
-/

namespace A204202.P1024099258740543106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n + A008949 n

end

end A204202.P1024099258740543106

noncomputable section

/-- A204202: Triangle based on (0,2/3,1) averaging array.

Offset 1, canonical program `A204202.P1024099258740543106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204202 (n : ℕ) : ℤ :=
  A204202.P1024099258740543106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204203.P18355877739269611644

`2*A054143(n)-A007318(n)`
-/

namespace A204203.P18355877739269611644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054143 n - A007318 n

end

end A204203.P18355877739269611644

noncomputable section

/-- A204203: Triangle based on (0,1/4,1) averaging array.

Offset 1, canonical program `A204203.P18355877739269611644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204203 (n : ℕ) : ℤ :=
  A204203.P18355877739269611644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205302.P14954641894090934178

`A065091(eq[1, A205510(n+1)]+1)`
-/

namespace A205302.P14954641894090934178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A205302.P14954641894090934178

noncomputable section

/-- A205302: Greater of Hamming's twin primes.

Offset 1, canonical program `A205302.P14954641894090934178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A205302 (n : ℕ) : ℤ :=
  A205302.P14954641894090934178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A205302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205547.P16237328813757143675

`A002260(A205559(n+1))`
-/

namespace A205547.P16237328813757143675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205559 (n + 1)).toNat

end

end A205547.P16237328813757143675

noncomputable section

/-- A205547: The number j such that 3 divides prime(k)-prime(j), where k(n)=A205560(n).

Offset 1, canonical program `A205547.P16237328813757143675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A205547 (n : ℕ) : ℤ :=
  A205547.P16237328813757143675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A205547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206286.P5854580810556654288

`record[A018252(n+2)/A077649(n+1)]`
-/

namespace A206286.P5854580810556654288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 2) : ℚ) / (A077649 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206286.P5854580810556654288

noncomputable section

/-- A206286: Nonprime numbers starting with a digit 1.

Offset 1, canonical program `A206286.P5854580810556654288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2182 terms. -/
def A206286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A206286.P5854580810556654288.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2182 terms. -/
def A206286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208609.P10537684362394957244

`2*A208337(n+1)-A209127(n+1)`
-/

namespace A208609.P10537684362394957244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208337 (n + 1) - A209127 (n + 1)

end

end A208609.P10537684362394957244

noncomputable section

/-- A208609: Triangle of coefficients of polynomials v(n,x) jointly generated with A208608; see the Formula section.

Offset 1, canonical program `A208609.P10537684362394957244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208609 (n : ℕ) : ℤ :=
  A208609.P10537684362394957244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208659.P4846878712330380114

`A029653(n)*A059268(n)`
-/

namespace A208659.P4846878712330380114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n * A059268 n

end

end A208659.P4846878712330380114

noncomputable section

/-- A208659: Triangle of coefficients of polynomials v(n,x) jointly generated with A185045; see the Formula section.

Offset 1, canonical program `A208659.P4846878712330380114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208659 (n : ℕ) : ℤ :=
  A208659.P4846878712330380114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209624.P7224047817522038513

`p?[(n+1)*(A175078(n+1)-1)]`
-/

namespace A209624.P7224047817522038513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A175078 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209624.P7224047817522038513

noncomputable section

/-- A209624: Primes separated from their previous adjacent primes by a prime number of successive composites.

Offset 1, canonical program `A209624.P7224047817522038513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A209624 (n : ℕ) : ℤ :=
  A209624.P7224047817522038513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A209624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209697.P9498463174537726618

`A121462(n+1)+A208511(n+1)-A160232(n+1)`
-/

namespace A209697.P9498463174537726618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121462 (n + 1) + (A208511 (n + 1) - A160232 (n + 1))

end

end A209697.P9498463174537726618

noncomputable section

/-- A209697: Triangle of coefficients of polynomials u(n,x) jointly generated with A209698; see the Formula section.

Offset 1, canonical program `A209697.P9498463174537726618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209697 (n : ℕ) : ℤ :=
  A209697.P9498463174537726618.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210256.P198618298556542039

`Δ[A051201(n+1)]`
-/

namespace A210256.P198618298556542039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210256.P198618298556542039

noncomputable section

/-- A210256: Differences of the sum of distinct values of {floor(n/k), k=1,...,n}.

Offset 1, canonical program `A210256.P198618298556542039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210256 (n : ℕ) : ℤ :=
  A210256.P198618298556542039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210882.P18029080820007784071

`A136548(n+1)+A013632(n)-A000038(n)`
-/

namespace A210882.P18029080820007784071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1) + (A013632 n - A000038 n)

end

end A210882.P18029080820007784071

noncomputable section

/-- A210882: a(1)=1, a(n)=a(n-1)-1 if a(n-1)-1 > 0 is not in the set {a(k)| 1<=k

Offset 1, canonical program `A210882.P18029080820007784071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A210882 (n : ℕ) : ℤ :=
  A210882.P18029080820007784071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A210882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211173.P7488017100782827256

`A101264(n)*A266303(n)`
-/

namespace A211173.P7488017100782827256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n * A266303 n

end

end A211173.P7488017100782827256

noncomputable section

/-- A211173: a(n) = (2n)!^n (modulo 2n+1).

Offset 0, canonical program `A211173.P7488017100782827256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211173 (n : ℕ) : ℤ :=
  A211173.P7488017100782827256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211273.P13713686683909964253

`A091627(2*(n+1))-n`
-/

namespace A211273.P13713686683909964253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091627 (2 * (n + 1)) - (n : ℤ)

end

end A211273.P13713686683909964253

noncomputable section

/-- A211273: Number of integer pairs (x,y) such that 0

Offset 1, canonical program `A211273.P13713686683909964253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A211273 (n : ℕ) : ℤ :=
  A211273.P13713686683909964253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A211273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212564.P74518275513655976

`n²²-A212563(n)`
-/

namespace A212564.P74518275513655976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212563 n

end

end A212564.P74518275513655976

noncomputable section

/-- A212564: Number of (w,x,y,z) with all terms in {1,...,n} and w + x > 2y + 2z.

Offset 0, canonical program `A212564.P74518275513655976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212564 (n : ℕ) : ℤ :=
  A212564.P74518275513655976.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212573.P10750861225412555263

`n²²-A212572(n)`
-/

namespace A212573.P10750861225412555263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212572 n

end

end A212573.P10750861225412555263

noncomputable section

/-- A212573: Number of (w,x,y,z) with all terms in {1,...,n} and |w-x|>|x-y|+|y-z|.

Offset 0, canonical program `A212573.P10750861225412555263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212573 (n : ℕ) : ℤ :=
  A212573.P10750861225412555263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213595.P12443528902880694475

`A048784(n+1)/2^A213594(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213595.P12443528902880694475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048784 (n + 1) : ℚ) / (2 : ℚ) ^ (A213594 (n + 1) : ℤ)

end

end A213595.P12443528902880694475

noncomputable section

/-- A213595: a(n) = A048784(n) / 2^A213594(n).

Offset 1, canonical program `A213595.P12443528902880694475`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213595 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A213595.P12443528902880694475.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213595.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214284.P5212717974546388228

`A035187(A028310(n))%2`
-/

namespace A214284.P5212717974546388228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035187 (A028310 n).toNat) 2

end

end A214284.P5212717974546388228

noncomputable section

/-- A214284: Characteristic function of squares or five times squares.

Offset 0, canonical program `A214284.P5212717974546388228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214284 (n : ℕ) : ℤ :=
  A214284.P5212717974546388228.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214870.P14474937078078779627

`A045901(A060734(n+1))`
-/

namespace A214870.P14474937078078779627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045901 (A060734 (n + 1)).toNat

end

end A214870.P14474937078078779627

noncomputable section

/-- A214870: Natural numbers placed in table T(n,k) layer by layer. The order of placement: at the beginning filled odd places of layer clockwise, next - even places counterclockwise. T(n,k) read by antidiagonals.

Offset 1, canonical program `A214870.P14474937078078779627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A214870 (n : ℕ) : ℤ :=
  A214870.P14474937078078779627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A214870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215161.P11448201851860339282

`∪[A140542(n+1), A215156(n+1)]`
-/

namespace A215161.P11448201851860339282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215161.P11448201851860339282

noncomputable section

/-- A215161: Primes congruent to {2, 3, 5, 7, 11} mod 17.

Offset 1, canonical program `A215161.P11448201851860339282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215161 (n : ℕ) : ℤ :=
  (A215161.P11448201851860339282.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215162.P12842036876452639844

`∪[A141876(n+1), A215157(n+1)]`
-/

namespace A215162.P12842036876452639844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215162.P12842036876452639844

noncomputable section

/-- A215162: Primes congruent to {2, 3, 5, 7, 11} mod 19.

Offset 1, canonical program `A215162.P12842036876452639844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215162 (n : ℕ) : ℤ :=
  (A215162.P12842036876452639844.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215302.P2678401142277637227

`∪[A141851(n+1), A215134(n+1)]`
-/

namespace A215302.P2678401142277637227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215302.P2678401142277637227

noncomputable section

/-- A215302: Primes congruent to {1, 2, 3, 4} mod 11.

Offset 1, canonical program `A215302.P2678401142277637227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215302 (n : ℕ) : ℤ :=
  (A215302.P2678401142277637227.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215306.P3529849924513493806

`∪[A141849(n+1), A215102(n+1)]`
-/

namespace A215306.P3529849924513493806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215306.P3529849924513493806

noncomputable section

/-- A215306: Primes congruent to {1, 2, 3, 5} mod 11.

Offset 1, canonical program `A215306.P3529849924513493806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215306 (n : ℕ) : ℤ :=
  (A215306.P3529849924513493806.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215313.P14218060251309606385

`∪[A102851(n+1), A215305(n+1)]`
-/

namespace A215313.P14218060251309606385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215313.P14218060251309606385

noncomputable section

/-- A215313: Primes congruent to {1, 2, 3, 4, 5} mod 19.

Offset 1, canonical program `A215313.P14218060251309606385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215313 (n : ℕ) : ℤ :=
  (A215313.P14218060251309606385.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215314.P15003749524856667591

`∪[A141851(n+1), A215102(n+1)]`
-/

namespace A215314.P15003749524856667591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215314.P15003749524856667591

noncomputable section

/-- A215314: Primes congruent to {2, 3, 4, 5} mod 11.

Offset 1, canonical program `A215314.P15003749524856667591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215314 (n : ℕ) : ℤ :=
  (A215314.P15003749524856667591.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215320.P3172696357784485875

`∪[A140545(n+1), A215308(n+1)]`
-/

namespace A215320.P3172696357784485875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215320.P3172696357784485875

noncomputable section

/-- A215320: Primes congruent to {1, 2, 3, 5, 6} mod 17.

Offset 1, canonical program `A215320.P3172696357784485875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215320 (n : ℕ) : ℤ :=
  (A215320.P3172696357784485875.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215321.P2990805988694639767

`∪[A141871(n+1), A215309(n+1)]`
-/

namespace A215321.P2990805988694639767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215321.P2990805988694639767

noncomputable section

/-- A215321: Primes congruent to {1, 2, 3, 5, 6} mod 19.

Offset 1, canonical program `A215321.P2990805988694639767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215321 (n : ℕ) : ℤ :=
  (A215321.P2990805988694639767.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215325.P6103314079684101461

`∪[A141871(n+1), A215305(n+1)]`
-/

namespace A215325.P6103314079684101461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215325.P6103314079684101461

noncomputable section

/-- A215325: Primes congruent to {1, 2, 3, 4, 6} mod 19.

Offset 1, canonical program `A215325.P6103314079684101461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215325 (n : ℕ) : ℤ :=
  (A215325.P6103314079684101461.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215350.P655104726170058786

`∪[A141853(n+1), A215279(n+1)]`
-/

namespace A215350.P655104726170058786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215350.P655104726170058786

noncomputable section

/-- A215350: Primes congruent to {2, 3, 4, 6} mod 11.

Offset 1, canonical program `A215350.P655104726170058786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215350 (n : ℕ) : ℤ :=
  (A215350.P655104726170058786.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215382.P13591723540297022784

`∪[A141853(n+1), A215134(n+1)]`
-/

namespace A215382.P13591723540297022784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215382.P13591723540297022784

noncomputable section

/-- A215382: Primes congruent to {1, 2, 3, 6} mod 11.

Offset 1, canonical program `A215382.P13591723540297022784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215382 (n : ℕ) : ℤ :=
  (A215382.P13591723540297022784.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215761.P3697800326789046983

`eq[1, A167020(2*A016777(n))]`
-/

namespace A215761.P3697800326789046983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (2 * A016777 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215761.P3697800326789046983

noncomputable section

/-- A215761: Numbers m with property that 36m+11 is prime.

Offset 1, canonical program `A215761.P3697800326789046983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A215761 (n : ℕ) : ℤ :=
  (A215761.P3697800326789046983.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A215761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216301.P11893625468491235529

`∩[A008471(n+1), A153308(n+1)]`
-/

namespace A216301.P11893625468491235529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216301.P11893625468491235529

noncomputable section

/-- A216301: Numbers k such that 10k+7 is composite but 10k+1, 10k+3, 10k+9 are all prime.

Offset 1, canonical program `A216301.P11893625468491235529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A216301 (n : ℕ) : ℤ :=
  (A216301.P11893625468491235529.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A216301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216302.P95029662313042903

`∩[A008471(n+1), A153380(n+1)]`
-/

namespace A216302.P95029662313042903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216302.P95029662313042903

noncomputable section

/-- A216302: Numbers k such that 10k+9 is composite but 10k+1, 10k+3, 10k+7 are all prime.

Offset 1, canonical program `A216302.P95029662313042903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A216302 (n : ℕ) : ℤ :=
  (A216302.P95029662313042903.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A216302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216780.P3237457974216524300

`eq[1, A361024(n+1)]+1`
-/

namespace A216780.P3237457974216524300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216780.P3237457974216524300

noncomputable section

/-- A216780: Numbers n such that numerator(sigma(n)/n) and denominator(sigma(n)/n) are both odd.

Offset 1, canonical program `A216780.P3237457974216524300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3944 terms. -/
def A216780 (n : ℕ) : ℤ :=
  (A216780.P3237457974216524300.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3944 terms. -/
def A216780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217029.P14938499860737606038

`A003990(n+1)/A003983(n+1)`
-/

namespace A217029.P14938499860737606038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (A003983 (n + 1) : ℚ)

end

end A217029.P14938499860737606038

noncomputable section

/-- A217029: Array T(i,j) read by antidiagonals, where T(i,j) is the height of i/j, that is max(|m|,|n|) with m/n = i/j and gcd(m, n) = 1.

Offset 1, canonical program `A217029.P14938499860737606038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A217029 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A217029.P14938499860737606038.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A217029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217557.P9555844630679007877

`A160638(n)-n`
-/

namespace A217557.P9555844630679007877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160638 n - (n : ℤ)

end

end A217557.P9555844630679007877

noncomputable section

/-- A217557: The difference between the reversal of an 8-bit integer and the original integer.

Offset 0, canonical program `A217557.P9555844630679007877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160638, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217557 (n : ℕ) : ℤ :=
  A217557.P9555844630679007877.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160638, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217557.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217659.P12603984998292989845

`A151800(A185934(n+1))`
-/

namespace A217659.P12603984998292989845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A185934 (n + 1)).toNat

end

end A217659.P12603984998292989845

noncomputable section

/-- A217659: Larger of two consecutive primes which both equal 1 (mod 3).

Offset 1, canonical program `A217659.P12603984998292989845`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, A185934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A217659 (n : ℕ) : ℤ :=
  A217659.P12603984998292989845.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, A185934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A217659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217854.P9671442733473030747

`A158387(n+1)*A062758(n+1)`
-/

namespace A217854.P9671442733473030747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158387 (n + 1) * A062758 (n + 1)

end

end A217854.P9671442733473030747

noncomputable section

/-- A217854: Product of all divisors of n, positive or negative.

Offset 1, canonical program `A217854.P9671442733473030747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217854 (n : ℕ) : ℤ :=
  A217854.P9671442733473030747.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217854.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220846.P4568934254118068041

`∑{d}[n+1, #]*A007956(n+1)`
-/

namespace A220846.P4568934254118068041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A007956 (n + 1)

end

end A220846.P4568934254118068041

noncomputable section

/-- A220846: a(n) = sum_(d|n) ((product_(d|n) d) / d).

Offset 1, canonical program `A220846.P4568934254118068041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A220846 (n : ℕ) : ℤ :=
  A220846.P4568934254118068041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A220846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221309.P7335009920877620027

`∩[A123608(n+1)+1, A123608(n+1)]`
-/

namespace A221309.P7335009920877620027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123608 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221309.P7335009920877620027

noncomputable section

/-- A221309: Numbers m such that no subset of {m-1, m, m+1} sums up to a prime number.

Offset 1, canonical program `A221309.P7335009920877620027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6656 terms. -/
def A221309 (n : ℕ) : ℤ :=
  (A221309.P7335009920877620027.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6656 terms. -/
def A221309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222763.P9947241186755586665

`(n+1)*A046736(n+2)`
-/

namespace A222763.P9947241186755586665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A046736 (n + 2)

end

end A222763.P9947241186755586665

noncomputable section

/-- A222763: Number of n X 2 0..1 arrays with exactly floor(nX2/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

Offset 0, canonical program `A222763.P9947241186755586665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046736, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A222763 (n : ℕ) : ℤ :=
  A222763.P9947241186755586665.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046736, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A222763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224270.P12309449781339529055

`abs(A002596(n)*A110331(n))`
-/

namespace A224270.P12309449781339529055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002596 n * A110331 n|

end

end A224270.P12309449781339529055

noncomputable section

/-- A224270: Absolute values of the numerators of the third column of ( 0 followed by (interleave 0 , A001803(n))/A060818(n) ) and its successive differences.

Offset 0, canonical program `A224270.P12309449781339529055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A224270 (n : ℕ) : ℤ :=
  A224270.P12309449781339529055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A224270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226381.P1779935612286312944

`eq[A053000(n)*A151800(n), A139693(n)]`
-/

namespace A226381.P1779935612286312944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n * A151800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226381.P1779935612286312944

noncomputable section

/-- A226381: Numbers n such that the distance from n to the next prime is the same as the distance from n^2 to the next prime.

Offset 1, canonical program `A226381.P1779935612286312944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. -/
def A226381 (n : ℕ) : ℤ :=
  (A226381.P1779935612286312944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. -/
def A226381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226555.P5954910614484465652

`(A344598(n+1)+1)/gcd(2, n)`
-/

namespace A226555.P5954910614484465652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344598 (n + 1) + 1 : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A226555.P5954910614484465652

noncomputable section

/-- A226555: Numerators of row sums of the triangular enumeration of rational numbers A226314(n,k) / A054531(n,k), 1 <= k <= n.

Offset 1, canonical program `A226555.P5954910614484465652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226555 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A226555.P5954910614484465652.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226567.P14814399466170142573

`eq[A003982(n), A101264(n)]`
-/

namespace A226567.P14814399466170142573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226567.P14814399466170142573

noncomputable section

/-- A226567: Numbers k such that 2*k+1 is neither a square nor a prime.

Offset 1, canonical program `A226567.P14814399466170142573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226567 (n : ℕ) : ℤ :=
  (A226567.P14814399466170142573.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227127.P510515048403085324

`gcd(n+1, C(5, n²))*Δ[A028815(n)]`
-/

namespace A227127.P510515048403085324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (Nat.choose 5 (n ^ 2)) : ℤ) * (f1 (n + 1) - f1 n)

end

end A227127.P510515048403085324

noncomputable section

/-- A227127: The Akiyama-Tanigawa algorithm applied to 1/(1,2,3,5,... old prime numbers). Reduced numerators of the second row.

Offset 0, canonical program `A227127.P510515048403085324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227127 (n : ℕ) : ℤ :=
  A227127.P510515048403085324.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227127.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A227921.P15568228381888625967

`filter[A093696(n+1), A093719(#)]`
-/

namespace A227921.P15568228381888625967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A227921.P15568228381888625967

noncomputable section

/-- A227921: Odd odious numbers (A000069), all divisors of which are odious.

Offset 1, canonical program `A227921.P15568228381888625967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4692 terms. -/
def A227921 (n : ℕ) : ℤ :=
  A227921.P15568228381888625967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4692 terms. -/
def A227921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228357.P1316091021505171964

`eq[char[A228102(n+1)], A000007(n)]`
-/

namespace A228357.P1316091021505171964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A228357.P1316091021505171964

noncomputable section

/-- A228357: Numbers k such that sum of all primes <= k is not prime.

Offset 1, canonical program `A228357.P1316091021505171964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228357 (n : ℕ) : ℤ :=
  (A228357.P1316091021505171964.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228374.P4332640910458039691

`eq[0, A049084(A062234(n+1))]+1`
-/

namespace A228374.P4332640910458039691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A062234 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A228374.P4332640910458039691

noncomputable section

/-- A228374: Numbers k such that 2*prime(k) - prime(k+1) is not prime.

Offset 1, canonical program `A228374.P4332640910458039691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228374 (n : ℕ) : ℤ :=
  (A228374.P4332640910458039691.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230217.P14626932815808286926

`p?[A023210(n+1)+6]-6`
-/

namespace A230217.P14626932815808286926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023210 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6

end

end A230217.P14626932815808286926

noncomputable section

/-- A230217: List of those primes p with p + 6 and 3*p + 8 also prime.

Offset 1, canonical program `A230217.P14626932815808286926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2684 terms. -/
def A230217 (n : ℕ) : ℤ :=
  A230217.P14626932815808286926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2684 terms. -/
def A230217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230404.P3760350599277947129

`A230403(2*(n+1))`
-/

namespace A230404.P3760350599277947129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (2 * (n + 1))

end

end A230404.P3760350599277947129

noncomputable section

/-- A230404: a(n) = the largest k such that (k+1)! divides 2n; the number of trailing zeros in the factorial base representation of even numbers.

Offset 1, canonical program `A230404.P3760350599277947129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230403, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230404 (n : ℕ) : ℤ :=
  A230404.P3760350599277947129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230403, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230846.P382823846826996037

`1+A075526(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A230846.P382823846826996037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A075526 n

end

end A230846.P382823846826996037

noncomputable section

/-- A230846: 1 + A075526(n).

Offset 1, canonical program `A230846.P382823846826996037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075526, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230846 (n : ℕ) : ℤ :=
  A230846.P382823846826996037.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075526, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230846.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A232745.P11759041676394614836

`record[Δ[(A232744(n+1)/2)²]]`
-/

namespace A232745.P11759041676394614836
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A232744 (n + 1) : ℚ) / 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232745.P11759041676394614836

noncomputable section

/-- A232745: Numbers k for which the largest m such that m! divides k is even.

Offset 1, canonical program `A232745.P11759041676394614836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5562 terms. -/
def A232745 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A232745.P11759041676394614836.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5562 terms. -/
def A232745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233286.P14086924426959048452

`A233285(n+1)-1`
-/

namespace A233286.P14086924426959048452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233285 (n + 1) - 1

end

end A233286.P14086924426959048452

noncomputable section

/-- A233286: Number of trailing zeros in the factorial base representation of n-th Fibonacci number.

Offset 1, canonical program `A233286.P14086924426959048452`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233286 (n : ℕ) : ℤ :=
  A233286.P14086924426959048452.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A233345.P582782782341846025

`∩[A011540(n+1), A109303(n+1)]`
-/

namespace A233345.P582782782341846025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233345.P582782782341846025

noncomputable section

/-- A233345: Numbers having at least one digit 0 and at least two identical digits (which may be two 0's), in their decimal expansion.

Offset 1, canonical program `A233345.P582782782341846025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A233345 (n : ℕ) : ℤ :=
  (A233345.P582782782341846025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A233345.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A234648.P5813461578857952792

`A225822(n+1)+(-1)^(n+1)`
-/

namespace A234648.P5813461578857952792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225822 (n + 1) + (-1) ^ (n + 1)

end

end A234648.P5813461578857952792

noncomputable section

/-- A234648: Even sums of 2 consecutive odious numbers (A000069).

Offset 1, canonical program `A234648.P5813461578857952792`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A225822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234648 (n : ℕ) : ℤ :=
  A234648.P5813461578857952792.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A225822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234648.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A234852.P16185758610676893289

`A000720(A234695(n+1))`
-/

namespace A234852.P16185758610676893289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A234695 (n + 1)).toNat

end

end A234852.P16185758610676893289

noncomputable section

/-- A234852: Indices k of primes p=prime(k) such that prime(p)-p+1 is prime.

Offset 1, canonical program `A234852.P16185758610676893289`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A234695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234852 (n : ℕ) : ℤ :=
  A234852.P16185758610676893289.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A234695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234852.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A235992.P5177798210499836503

`∪[A046337(n+1), A008586(n)]`
-/

namespace A235992.P5177798210499836503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235992.P5177798210499836503

noncomputable section

/-- A235992: Numbers with an even arithmetic derivative, cf. A003415.

Offset 1, canonical program `A235992.P5177798210499836503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235992 (n : ℕ) : ℤ :=
  (A235992.P5177798210499836503.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236575.P12514269811901278447

`A000720(A013929(n+2))-A000720(A013929(n+1))`
-/

namespace A236575.P12514269811901278447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A013929 (n + 2)).toNat - A000720 (A013929 (n + 1)).toNat

end

end A236575.P12514269811901278447

noncomputable section

/-- A236575: Number of primes between successive numbers that are not squarefree.

Offset 1, canonical program `A236575.P12514269811901278447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236575 (n : ℕ) : ℤ :=
  A236575.P12514269811901278447.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A237124.P1225317986327375735

`A033184(n+1)-A059365(n+2)%A039599(n)`
-/

namespace A237124.P1225317986327375735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (n + 1) - Int.tmod (A059365 (n + 2)) (A039599 n)

end

end A237124.P1225317986327375735

noncomputable section

/-- A237124: Triangle of numbers related to Catalan numbers (A000108).

Offset 0, canonical program `A237124.P1225317986327375735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 496 terms. -/
def A237124 (n : ℕ) : ℤ :=
  A237124.P1225317986327375735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 496 terms. -/
def A237124.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A238013.P18117388732455638620

`A237452(n+1)+1`
-/

namespace A238013.P18117388732455638620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237452 (n + 1) + 1

end

end A238013.P18117388732455638620

noncomputable section

/-- A238013: List n copies of each k in {1,2,...,n}, for n=1,2,3,...

Offset 1, canonical program `A238013.P18117388732455638620`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A237452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238013 (n : ℕ) : ℤ :=
  A238013.P18117388732455638620.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A237452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A238204.P8101858339685720932

`2*eq[2, A175078(2*n+1)]`
-/

namespace A238204.P8101858339685720932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A238204.P8101858339685720932

noncomputable section

/-- A238204: Even numbers n such that the difference with the preceding prime is prime.

Offset 1, canonical program `A238204.P8101858339685720932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A238204 (n : ℕ) : ℤ :=
  (A238204.P8101858339685720932.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A238204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239114.P10150466013173584691

`A001511((A014076(n+1)+1)/2)`
-/

namespace A239114.P10150466013173584691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A014076 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A239114.P10150466013173584691

noncomputable section

/-- A239114: Exponent of 2 in prime factorization (i.e., 2-adic valuation) of odd nonprimes A014076(n) + 1.

Offset 1, canonical program `A239114.P10150466013173584691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239114 (n : ℕ) : ℤ :=
  A239114.P10150466013173584691.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239114.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239732.P10526106354442783034

`∩[A023207(n+1), A023233(n+1)]`
-/

namespace A239732.P10526106354442783034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239732.P10526106354442783034

noncomputable section

/-- A239732: Primes p such that 2p+9 and 9p+2 are both prime.

Offset 1, canonical program `A239732.P10526106354442783034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239732 (n : ℕ) : ℤ :=
  (A239732.P10526106354442783034.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240680.P8776622975220520957

`p?[A008471(n+1)]`
-/

namespace A240680.P8776622975220520957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240680.P8776622975220520957

noncomputable section

/-- A240680: Primes p such that p*10+k is prime for exactly three values of the digit k.

Offset 1, canonical program `A240680.P8776622975220520957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A240680 (n : ℕ) : ℤ :=
  A240680.P8776622975220520957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A240680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240711.P11649321335741123604

`A239186(n+1)-A240707(n+1)`
-/

namespace A240711.P11649321335741123604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239186 (n + 1) - A240707 (n + 1)

end

end A240711.P11649321335741123604

noncomputable section

/-- A240711: Sum of the largest parts in the partitions of 4n into 4 parts with smallest part = 1.

Offset 1, canonical program `A240711.P11649321335741123604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240711 (n : ℕ) : ℤ :=
  A240711.P11649321335741123604.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240839.P18193742884803591972

`∩[A030431(n+1), A271043(n+1)]`
-/

namespace A240839.P18193742884803591972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240839.P18193742884803591972

noncomputable section

/-- A240839: Both n and prime(n) are primes congruent to 3 (mod 10).

Offset 1, canonical program `A240839.P18193742884803591972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A240839 (n : ℕ) : ℤ :=
  (A240839.P18193742884803591972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A240839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241023.P16673000107773081704

`(2-A000007(n))*A123164(n)`
-/

namespace A241023.P16673000107773081704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A123164 n

end

end A241023.P16673000107773081704

noncomputable section

/-- A241023: Central terms of the triangle in A102413.

Offset 0, canonical program `A241023.P16673000107773081704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A241023 (n : ℕ) : ℤ :=
  A241023.P16673000107773081704.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A241023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241266.P8342663187428289721

`eq[0, A108151(2*n+1)]+1`
-/

namespace A241266.P8342663187428289721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A241266.P8342663187428289721

noncomputable section

/-- A241266: Numbers n such that 4*n^2+2*n-1 is not prime.

Offset 1, canonical program `A241266.P8342663187428289721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3891 terms. -/
def A241266 (n : ℕ) : ℤ :=
  (A241266.P8342663187428289721.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3891 terms. -/
def A241266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241543.P17870996406380725953

`gcd(xor(1, -n), ∑[n])*A089408(n)`
-/

namespace A241543.P17870996406380725953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) * A089408 n

end

end A241543.P17870996406380725953

noncomputable section

/-- A241543: a(n) = A241477(n, n).

Offset 0, canonical program `A241543.P17870996406380725953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A241543 (n : ℕ) : ℤ :=
  A241543.P17870996406380725953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A241543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242214.P18435104598137080333

`filter[A291639(n+1), A168184(#)]`
-/

namespace A242214.P18435104598137080333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A242214.P18435104598137080333

noncomputable section

/-- A242214: Numbers n not divisible by 10 such that n^3 contains at least one 0.

Offset 1, canonical program `A242214.P18435104598137080333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A242214 (n : ℕ) : ℤ :=
  A242214.P18435104598137080333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A242214.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A242256.P8815613757924160173

`p?[A175078(2*n+1)+A163985(n)]`
-/

namespace A242256.P8815613757924160173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (2 * n + 1) + A163985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242256.P8815613757924160173

noncomputable section

/-- A242256: Primes that are not primes-greedy summable, as defined at A242252.

Offset 1, canonical program `A242256.P8815613757924160173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A242256 (n : ℕ) : ℤ :=
  A242256.P8815613757924160173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A242256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242357.P2496803421774203751

`abs(A246575(A193832(n+1)+n+1))`
-/

namespace A242357.P2496803421774203751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246575 (A193832 (n + 1) + (n + 1 : ℤ)).toNat|

end

end A242357.P2496803421774203751

noncomputable section

/-- A242357: Crescendo trapezoidal.

Offset 1, canonical program `A242357.P2496803421774203751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A242357 (n : ℕ) : ℤ :=
  A242357.P2496803421774203751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A242357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242559.P4660459681427850123

`∩[A052382(n+1), A291639(n+1)]`
-/

namespace A242559.P4660459681427850123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242559.P4660459681427850123

noncomputable section

/-- A242559: Zeroless numbers n such that n^3 contains a 0.

Offset 1, canonical program `A242559.P4660459681427850123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6255 terms. -/
def A242559 (n : ℕ) : ℤ :=
  (A242559.P4660459681427850123.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6255 terms. -/
def A242559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244576.P4626810035088509024

`A244049(A000040(n+1))`
-/

namespace A244576.P4626810035088509024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (A000040 (n + 1)).toNat

end

end A244576.P4626810035088509024

noncomputable section

/-- A244576: Sum of all proper divisors of all positive integers <= prime(n).

Offset 1, canonical program `A244576.P4626810035088509024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244049, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244576 (n : ℕ) : ℤ :=
  A244576.P4626810035088509024.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244049, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244576.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245017.P7747278623458680335

`∩[A081988(n+1), A244748(n+1)]`
-/

namespace A245017.P7747278623458680335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245017.P7747278623458680335

noncomputable section

/-- A245017: Numbers k such that (product of digits of k) + 1 and (product of digits of k)^2 + 1 are both prime.

Offset 1, canonical program `A245017.P7747278623458680335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. -/
def A245017 (n : ℕ) : ℤ :=
  (A245017.P7747278623458680335.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. -/
def A245017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245769.P9071487461412164535

`1-∑[∑[2*A085403(n)]]`
-/

namespace A245769.P9071487461412164535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085403 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245769.P9071487461412164535

noncomputable section

/-- A245769: a(n) = Sum_{k=0..n} C(n, k)*C(n+k, k)/(2k-1), where C(n, k) denotes the binomial coefficient n!/(k!*(n-k)!).

Offset 0, canonical program `A245769.P9071487461412164535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A245769 (n : ℕ) : ℤ :=
  A245769.P9071487461412164535.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A245769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245904.P7718430387775165049

`A036453(n+1)*A259858(n)`
-/

namespace A245904.P7718430387775165049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A259858 n

end

end A245904.P7718430387775165049

noncomputable section

/-- A245904: a(n) is the number of permutations avoiding 231 and 312 realizable on increasing strict binary trees with 2n-1 nodes.

Offset 1, canonical program `A245904.P7718430387775165049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A245904 (n : ℕ) : ℤ :=
  A245904.P7718430387775165049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A245904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246200.P12941183571808914625

`A057889(3*n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246200.P12941183571808914625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057889 (3 * n) : ℚ) / 3

end

end A246200.P12941183571808914625

noncomputable section

/-- A246200: Self-inverse permutation of natural numbers: a(n) = A057889(3*n) / 3.

Offset 0, canonical program `A246200.P12941183571808914625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246200 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A246200.P12941183571808914625.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246200.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246296.P14387227478916711438

`A246295(n+2)-1`
-/

namespace A246296.P14387227478916711438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246295 (n + 2) - 1

end

end A246296.P14387227478916711438

noncomputable section

/-- A246296: Numbers k such that sin(k) < sin(k+1) < sin(k+2) < sin(k+3) > sin(k+4).

Offset 1, canonical program `A246296.P14387227478916711438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A246296 (n : ℕ) : ℤ :=
  A246296.P14387227478916711438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A246296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246299.P187487161401922223

`A246298(n+1)-1`
-/

namespace A246299.P187487161401922223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246298 (n + 1) - 1

end

end A246299.P187487161401922223

noncomputable section

/-- A246299: Numbers k such that sin(k) > sin(k+1) > sin(k+2) > sin(k+3) < sin(k+4).

Offset 1, canonical program `A246299.P187487161401922223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246299 (n : ℕ) : ℤ :=
  A246299.P187487161401922223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246590.P10952296055587311205

`2*A091067(n+1)`
-/

namespace A246590.P10952296055587311205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091067 (n + 1)

end

end A246590.P10952296055587311205

noncomputable section

/-- A246590: Even numbers whose odd part is of the form 4m+3; Numbers missing from A241816.

Offset 1, canonical program `A246590.P10952296055587311205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246590 (n : ℕ) : ℤ :=
  A246590.P10952296055587311205.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246590.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246716.P11198527028303689584

`comp[eq[2, A349620(n+1)]]+1`
-/

namespace A246716.P11198527028303689584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349620 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A246716.P11198527028303689584

noncomputable section

/-- A246716: Positive numbers that are not the product of (exactly) two distinct primes.

Offset 1, canonical program `A246716.P11198527028303689584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246716 (n : ℕ) : ℤ :=
  (A246716.P11198527028303689584.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246716.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A249728.P8976673975456800970

`∑[char[A061536(n+1)]]+1`
-/

namespace A249728.P8976673975456800970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061536 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A249728.P8976673975456800970

noncomputable section

/-- A249728: After a(1) = 1 each n appears A000720(n) times.

Offset 1, canonical program `A249728.P8976673975456800970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249728 (n : ℕ) : ℤ :=
  (A249728.P8976673975456800970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249743.P9211820019658507526

`A083141(n+1)-1`
-/

namespace A249743.P9211820019658507526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083141 (n + 1) - 1

end

end A249743.P9211820019658507526

noncomputable section

/-- A249743: Main diagonal of square arrays A114881 and A249741.

Offset 1, canonical program `A249743.P9211820019658507526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083141, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249743 (n : ℕ) : ℤ :=
  A249743.P9211820019658507526.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083141, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249743.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A250039.P11073604648966551140

`A248502(n+1)*A341644(A156112(n+1))`
-/

namespace A250039.P11073604648966551140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248502 (n + 1) * A341644 (A156112 (n + 1)).toNat

end

end A250039.P11073604648966551140

noncomputable section

/-- A250039: Numbers n such that m = floor(n/16) is not coprime to n and, if nonzero, m is also a term of the sequence.

Offset 1, canonical program `A250039.P11073604648966551140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A250039 (n : ℕ) : ℤ :=
  A250039.P11073604648966551140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A250039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250437.P375934551708024128

`A250427(n+1)/A250426(n+1)*A250428(n+1)`
-/

namespace A250437.P375934551708024128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250427 (n + 1) : ℚ) / (A250426 (n + 1) : ℚ) * (A250428 (n + 1) : ℚ)

end

end A250437.P375934551708024128

noncomputable section

/-- A250437: Number of (n+1)X(2+1) 0..2 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250437.P375934551708024128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250437 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A250437.P375934551708024128.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252021.P7800136030572691619

`p?[A063080(n+1)+1]`
-/

namespace A252021.P7800136030572691619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063080 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252021.P7800136030572691619

noncomputable section

/-- A252021: Primes p such that (p - 1)/tau(p - 1) is also prime.

Offset 1, canonical program `A252021.P7800136030572691619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1581 terms. -/
def A252021 (n : ℕ) : ℤ :=
  A252021.P7800136030572691619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1581 terms. -/
def A252021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253137.P13322010452455234093

`(n+1)*A009191(Δ[A053767(n)])`
-/

namespace A253137.P13322010452455234093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A009191 (f1 (n + 1) - f1 n).toNat

end

end A253137.P13322010452455234093

noncomputable section

/-- A253137: a(n) = n*gcd(c(n), d(n)), where c(n) = composite numbers, d(n) = number of divisors of c(n).

Offset 1, canonical program `A253137.P13322010452455234093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253137 (n : ℕ) : ℤ :=
  A253137.P13322010452455234093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253260.P9231036617430178530

`eq[n, A135684(A233583(n+1))]²`
-/

namespace A253260.P9231036617430178530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135684 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A253260.P9231036617430178530

noncomputable section

/-- A253260: Brazilian squares.

Offset 1, canonical program `A253260.P9231036617430178530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A253260 (n : ℕ) : ℤ :=
  (A253260.P9231036617430178530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A253260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253283.P6460536467449515030

`A059481(n)*A097805(n)`
-/

namespace A253283.P6460536467449515030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n * A097805 n

end

end A253283.P6460536467449515030

noncomputable section

/-- A253283: Triangle read by rows: coefficients of the partial fraction decomposition of [d^n/dx^n] (x/(1-x))^n/n!.

Offset 0, canonical program `A253283.P6460536467449515030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9268 terms. -/
def A253283 (n : ℕ) : ℤ :=
  A253283.P6460536467449515030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9268 terms. -/
def A253283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255068.P12646045524398561054

`A091067(n+1)-1`
-/

namespace A255068.P12646045524398561054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1) - 1

end

end A255068.P12646045524398561054

noncomputable section

/-- A255068: a(n) is the largest k such that A255070(k) = n.

Offset 0, canonical program `A255068.P12646045524398561054`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255068 (n : ℕ) : ℤ :=
  A255068.P12646045524398561054.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255346.P13039647980767050582

`filter[A080765(n+1), A143731(#)]`
-/

namespace A255346.P13039647980767050582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A255346.P13039647980767050582

noncomputable section

/-- A255346: Numbers k such that k and k+1 both have at least two distinct prime factors.

Offset 1, canonical program `A255346.P13039647980767050582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A255346 (n : ℕ) : ℤ :=
  A255346.P13039647980767050582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A255346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255769.P10219843264777276091

`p?[A022449(n+2)+1]`
-/

namespace A255769.P10219843264777276091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022449 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P10219843264777276091

noncomputable section

/-- A255769: Primes p such that there are a prime number of composite numbers less than p.

Offset 1, canonical program `A255769.P10219843264777276091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A255769 (n : ℕ) : ℤ :=
  A255769.P10219843264777276091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A255769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256287.P1123834805178179916

`∑[A026812(A008458(n)-1+n)]`
-/

namespace A256287.P1123834805178179916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (A008458 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256287.P1123834805178179916

noncomputable section

/-- A256287: Number of partitions of 7n into 7 parts.

Offset 0, canonical program `A256287.P1123834805178179916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A256287 (n : ℕ) : ℤ :=
  A256287.P1123834805178179916.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A256287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256310.P15154368042461958730

`A026812(2*n)`
-/

namespace A256310.P15154368042461958730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (2 * n)

end

end A256310.P15154368042461958730

noncomputable section

/-- A256310: Number of partitions of 2n into exactly 6 parts.

Offset 0, canonical program `A256310.P15154368042461958730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A256310 (n : ℕ) : ℤ :=
  A256310.P15154368042461958730.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A256310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256315.P14419130864312344157

`A026812(3*n)`
-/

namespace A256315.P14419130864312344157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (3 * n)

end

end A256315.P14419130864312344157

noncomputable section

/-- A256315: Number of partitions of 3n into exactly 6 parts.

Offset 0, canonical program `A256315.P14419130864312344157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A256315 (n : ℕ) : ℤ :=
  A256315.P14419130864312344157.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A256315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256533.P5671197403926202284

`A332264(n+1)+A175254(n+1)`
-/

namespace A256533.P5671197403926202284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332264 (n + 1) + A175254 (n + 1)

end

end A256533.P5671197403926202284

noncomputable section

/-- A256533: Product of n and the sum of all divisors of all positive integers <= n.

Offset 1, canonical program `A256533.P5671197403926202284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175254, A332264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256533 (n : ℕ) : ℤ :=
  A256533.P5671197403926202284.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175254, A332264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256533.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256688.P10016313267920444038

`∏{e}[n+1, A004117(#)]`
-/

namespace A256688.P10016313267920444038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A004117 (Nat.factorization (f1 n) p)

end

end A256688.P10016313267920444038

noncomputable section

/-- A256688: From third root of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose cube is zeta function; sequence gives numerator of b(n).

Offset 1, canonical program `A256688.P10016313267920444038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256688 (n : ℕ) : ℤ :=
  A256688.P10016313267920444038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257077.P17026154758205929853

`A037125(A000040(n+1))`
-/

namespace A257077.P17026154758205929853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (A000040 (n + 1)).toNat

end

end A257077.P17026154758205929853

noncomputable section

/-- A257077: a(n) = prime(n)-prime(1)-prime(2)-...-prime(k), while the result > 0.

Offset 1, canonical program `A257077.P17026154758205929853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A257077 (n : ℕ) : ℤ :=
  A257077.P17026154758205929853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A257077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257852.P9714662518285997073

`A257791(n+1)-A257499(n+1)`
-/

namespace A257852.P9714662518285997073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257791 (n + 1) - A257499 (n + 1)

end

end A257852.P9714662518285997073

noncomputable section

/-- A257852: Array A read by upward antidiagonals in which the entry A(n,k) in row n and column k is defined by A(n,k) = (2^n*(6*k - 3 - 2*(-1)^n) - 1)/3, n,k >= 1.

Offset 1, canonical program `A257852.P9714662518285997073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257852 (n : ℕ) : ℤ :=
  A257852.P9714662518285997073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257900.P5839440756912760088

`A107751(n)*A113652(n+1)`
-/

namespace A257900.P5839440756912760088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107751 n * A113652 (n + 1)

end

end A257900.P5839440756912760088

noncomputable section

/-- A257900: Expansion of 1/2 - (phi(-q)^2 + phi(-q^9)^2) / 4 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A257900.P5839440756912760088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257900 (n : ℕ) : ℤ :=
  A257900.P5839440756912760088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258027.P8926715394870140338

`lt[1, Δ[A008578(n+1)-A118534(n+1)]]`
-/

namespace A258027.P8926715394870140338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A118534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258027.P8926715394870140338

noncomputable section

/-- A258027: Numbers k such that D(prime(k), 3) < 0, where D( * , 3) = 3rd difference.

Offset 1, canonical program `A258027.P8926715394870140338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258027 (n : ℕ) : ℤ :=
  (A258027.P8926715394870140338.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258277.P14490946904607176595

`(-1)^n*A122865(n)`
-/

namespace A258277.P14490946904607176595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A122865 n

end

end A258277.P14490946904607176595

noncomputable section

/-- A258277: Expansion of chi(-q) * phi(-q^3) * psi(q^3) in powers of q where chi(), phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A258277.P14490946904607176595`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122865, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258277 (n : ℕ) : ℤ :=
  A258277.P14490946904607176595.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122865, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258277.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258278.P13033127775777485449

`(-1)^n*A122856(n)`
-/

namespace A258278.P13033127775777485449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A122856 n

end

end A258278.P13033127775777485449

noncomputable section

/-- A258278: Expansion of f(-x, -x^5)^2 in powers of x where f(,) is Ramanujan's general theta function.

Offset 0, canonical program `A258278.P13033127775777485449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122856, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258278 (n : ℕ) : ℤ :=
  A258278.P13033127775777485449.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122856, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258278.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258977.P6713999893642362193

`A258974(A258976(n+1))`
-/

namespace A258977.P6713999893642362193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258974 (A258976 (n + 1)).toNat

end

end A258977.P6713999893642362193

noncomputable section

/-- A258977: Primes in A258974.

Offset 1, canonical program `A258977.P6713999893642362193`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258976, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258977 (n : ℕ) : ℤ :=
  A258977.P6713999893642362193.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258976, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259310.P3784086918977029367

`A259308(A259309(n+1))`
-/

namespace A259310.P3784086918977029367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259308 (A259309 (n + 1)).toNat

end

end A259310.P3784086918977029367

noncomputable section

/-- A259310: Primes of the form: 1 + sigma(n)^4.

Offset 1, canonical program `A259310.P3784086918977029367`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259310 (n : ℕ) : ℤ :=
  A259310.P3784086918977029367.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259310.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259311.P10737788261636901505

`A098058(n+2)-A098058(n+1)`
-/

namespace A259311.P10737788261636901505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (n + 2) - A098058 (n + 1)

end

end A259311.P10737788261636901505

noncomputable section

/-- A259311: First differences of A098058.

Offset 1, canonical program `A259311.P10737788261636901505`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098058, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259311 (n : ℕ) : ℤ :=
  A259311.P10737788261636901505.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098058, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259311.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260401.P2046318254898871270

`record[n+1-A112604(xor(n, n+1))]`
-/

namespace A260401.P2046318254898871270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A112604 (Nat.xor n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260401.P2046318254898871270

noncomputable section

/-- A260401: Positions of 1 in the infinite palindromic word at A259599.

Offset 1, canonical program `A260401.P2046318254898871270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5589 terms. -/
def A260401 (n : ℕ) : ℤ :=
  A260401.P2046318254898871270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5589 terms. -/
def A260401.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A260682.P10691635331888986917

`filter[A202822(n+1), A373156(#)]`
-/

namespace A260682.P10691635331888986917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A260682.P10691635331888986917

noncomputable section

/-- A260682: Löschian numbers (A003136) of the form 6*k+1.

Offset 1, canonical program `A260682.P10691635331888986917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7312 terms. -/
def A260682 (n : ℕ) : ℤ :=
  A260682.P10691635331888986917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7312 terms. -/
def A260682.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A261085.P10967970624675834494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261085 (n : ℕ) : ℤ :=
  A261085.P10967970624675834494.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261085.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A261088.P12367769580199237088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261088 (n : ℕ) : ℤ :=
  A261088.P12367769580199237088.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261088.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261609.P15255296728293898829

`A055212(A002522(n+1))`
-/

namespace A261609.P15255296728293898829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (A002522 (n + 1)).toNat

end

end A261609.P15255296728293898829

noncomputable section

/-- A261609: Number of composite divisors of n^2+1.

Offset 1, canonical program `A261609.P15255296728293898829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055212, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261609 (n : ℕ) : ℤ :=
  A261609.P15255296728293898829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055212, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261609.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262044.P8753774164014263887

`∑[A071904(n+1)]`
-/

namespace A262044.P8753774164014263887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P8753774164014263887

noncomputable section

/-- A262044: Partial sum of the first n odd composite numbers.

Offset 1, canonical program `A262044.P8753774164014263887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262044 (n : ℕ) : ℤ :=
  A262044.P8753774164014263887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262198.P508349440457690952

`lt[A262190(n), A055642(n)]`
-/

namespace A262198.P508349440457690952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A262198.P508349440457690952

noncomputable section

/-- A262198: Numbers such that the number of distinct palindromes contained as substring in their decimal representation differs from the length thereof.

Offset 1, canonical program `A262198.P508349440457690952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A262198 (n : ℕ) : ℤ :=
  (A262198.P508349440457690952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A262198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262262.P1658621310215384767

`A063962(n+1)-A063962(∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A262262.P1658621310215384767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (n + 1) - A063962 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

end

end A262262.P1658621310215384767

noncomputable section

/-- A262262: Number of prime divisors p | n such that p^2 < n and p^2 does not divide n.

Offset 1, canonical program `A262262.P1658621310215384767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262262 (n : ℕ) : ℤ :=
  A262262.P1658621310215384767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262262.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A262518.P4745405101441477404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262518 (n : ℕ) : ℤ :=
  A262518.P4745405101441477404.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262518.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A262519.P6612858690634746410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262519 (n : ℕ) : ℤ :=
  A262519.P6612858690634746410.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262519.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A262708.P6887640225270983865

`A086304(n+1)+or(5, A090722(n+4))`
-/

namespace A262708.P6887640225270983865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1) + Int.lor 5 (A090722 (n + 4))

end

end A262708.P6887640225270983865

noncomputable section

/-- A262708: a(n) = p-(p/5) where p = prime(n) and (p/5) is a Legendre symbol.

Offset 4, canonical program `A262708.P6887640225270983865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262708 (n : ℕ) : ℤ :=
  A262708.P6887640225270983865.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262774.P1314283626335343178

`(-1)^n*A112604(n)`
-/

namespace A262774.P1314283626335343178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112604 n

end

end A262774.P1314283626335343178

noncomputable section

/-- A262774: Expansion of psi(x^2) * phi(-x^3) in powers of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A262774.P1314283626335343178`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112604, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262774 (n : ℕ) : ℤ :=
  A262774.P1314283626335343178.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112604, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262774.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262855.P8894309601039071380

`A267673(A020703(n+1)-1)`
-/

namespace A262855.P8894309601039071380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267673 (A020703 (n + 1) - 1).toNat

end

end A262855.P8894309601039071380

noncomputable section

/-- A262855: Triangle read by rows giving successive states of cellular automaton generated by "Rule 153" initiated with a single ON (black) cell.

Offset 0, canonical program `A262855.P8894309601039071380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262855 (n : ℕ) : ℤ :=
  A262855.P8894309601039071380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263204.P2115118568935714077

`A071538((n+3)²)-A071538((n+1)²)`
-/

namespace A263204.P2115118568935714077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 ((n + 3) ^ 2) - A071538 ((n + 1) ^ 2)

end

end A263204.P2115118568935714077

noncomputable section

/-- A263204: Number of twin prime pairs between n^2 and (n+2)^2.

Offset 1, canonical program `A263204.P2115118568935714077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A263204 (n : ℕ) : ℤ :=
  A263204.P2115118568935714077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A263204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263729.P8218952625031793335

`p?[lt[A072627(n+1), 1]+2]`
-/

namespace A263729.P8218952625031793335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A263729.P8218952625031793335

noncomputable section

/-- A263729: Primes p where (p - 1)/k - 1 is not prime for any integer k >= 1.

Offset 1, canonical program `A263729.P8218952625031793335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A263729 (n : ℕ) : ℤ :=
  (A263729.P8218952625031793335.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A263729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263804.P1371526510976708710

`A267687(A020703(n+1)-1)`
-/

namespace A263804.P1371526510976708710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267687 (A020703 (n + 1) - 1).toNat

end

end A263804.P1371526510976708710

noncomputable section

/-- A263804: Triangle read by rows giving successive states of cellular automaton generated by "Rule 157" initiated with a single ON (black) cell.

Offset 0, canonical program `A263804.P1371526510976708710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263804 (n : ℕ) : ℤ :=
  A263804.P1371526510976708710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264618.P3264753877006638992

`2*A048701(n)-A030101(n)`
-/

namespace A264618.P3264753877006638992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048701 n - A030101 n

end

end A264618.P3264753877006638992

noncomputable section

/-- A264618: Working in binary, write n followed by 0 then n-reversed (including leading zeros); show result in base 10.

Offset 0, canonical program `A264618.P3264753877006638992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264618 (n : ℕ) : ℤ :=
  A264618.P3264753877006638992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264618.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A265026.P15314511607540541398

`A048701(n+1)-A048701(n)`
-/

namespace A265026.P15314511607540541398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048701 (n + 1) - A048701 n

end

end A265026.P15314511607540541398

noncomputable section

/-- A265026: First differences of A048701.

Offset 1, canonical program `A265026.P15314511607540541398`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265026 (n : ℕ) : ℤ :=
  A265026.P15314511607540541398.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265026.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265332.P14034574010007287764

`A051135(abs(1-n)+2)`
-/

namespace A265332.P14034574010007287764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (|1 - (n : ℤ)| + 2).toNat

end

end A265332.P14034574010007287764

noncomputable section

/-- A265332: a(n) is the index of the column in A265901 where n appears; also the index of the row in A265903 where n appears.

Offset 1, canonical program `A265332.P14034574010007287764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265332 (n : ℕ) : ℤ :=
  A265332.P14034574010007287764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265370.P3607156033040373403

`ceil(log2(A078510(n)+1))`
-/

namespace A265370.P3607156033040373403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A078510 n + 1 : ℝ)⌉

end

end A265370.P3607156033040373403

noncomputable section

/-- A265370: a(0) = 0; for n >= 1, a(n) = A070939(A078510(n)).

Offset 0, canonical program `A265370.P3607156033040373403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265370 (n : ℕ) : ℤ :=
  A265370.P3607156033040373403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265404.P15777867062804018376

`A001227(A156300(n+1))-char[A078510(n)]`
-/

namespace A265404.P15777867062804018376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078510 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A156300 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265404.P15777867062804018376

noncomputable section

/-- A265404: a(n) = number of Spironacci numbers (A078510) needed to sum to n using the greedy algorithm.

Offset 0, canonical program `A265404.P15777867062804018376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A265404 (n : ℕ) : ℤ :=
  A265404.P15777867062804018376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A265404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265718.P12554410647525554970

`A266666(n)*A267704(n)`
-/

namespace A265718.P12554410647525554970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266666 n * A267704 n

end

end A265718.P12554410647525554970

noncomputable section

/-- A265718: Triangle read by rows giving successive states of cellular automaton generated by "Rule 1" initiated with a single ON (black) cell.

Offset 0, canonical program `A265718.P12554410647525554970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265718 (n : ℕ) : ℤ :=
  A265718.P12554410647525554970.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265905.P17623149438114299411

`a(n-1)+A153880(a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265905.P17623149438114299411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A153880 (a (n - 1)).toNat

end

end A265905.P17623149438114299411

noncomputable section

/-- A265905: a(1) = 1; for n > 1, a(n) = a(n-1) + A153880(a(n-1)).

Offset 1, canonical program `A265905.P17623149438114299411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265905 (n : ℕ) : ℤ :=
  A265905.P17623149438114299411.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266659.P421182450732641634

`A267272(A020703(n+1)-1)`
-/

namespace A266659.P421182450732641634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267272 (A020703 (n + 1) - 1).toNat

end

end A266659.P421182450732641634

noncomputable section

/-- A266659: Triangle read by rows giving successive states of cellular automaton generated by "Rule 47" initiated with a single ON (black) cell.

Offset 0, canonical program `A266659.P421182450732641634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266659 (n : ℕ) : ℤ :=
  A266659.P421182450732641634.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266836.P4349394875853698873

`A003136(A024609(n+1))`
-/

namespace A266836.P4349394875853698873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (A024609 (n + 1)).toNat

end

end A266836.P4349394875853698873

noncomputable section

/-- A266836: Odd Löschian numbers.

Offset 1, canonical program `A266836.P4349394875853698873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7280 terms. -/
def A266836 (n : ℕ) : ℤ :=
  A266836.P4349394875853698873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7280 terms. -/
def A266836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266843.P15807973679981638370

`A266502(n-2*A196199(n))`
-/

namespace A266843.P15807973679981638370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 ((n : ℤ) - 2 * A196199 n).toNat

end

end A266843.P15807973679981638370

noncomputable section

/-- A266843: Triangle read by rows giving successive states of cellular automaton generated by "Rule 70" initiated with a single ON (black) cell.

Offset 0, canonical program `A266843.P15807973679981638370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266843 (n : ℕ) : ℤ :=
  A266843.P15807973679981638370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266848.P10124636830213584024

`A266666(xor(n, A267034(n)))`
-/

namespace A266848.P10124636830213584024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266666 (Int.xor (n : ℤ) (A267034 n)).toNat

end

end A266848.P10124636830213584024

noncomputable section

/-- A266848: Triangle read by rows giving successive states of cellular automaton generated by "Rule 71" initiated with a single ON (black) cell.

Offset 0, canonical program `A266848.P10124636830213584024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266848 (n : ℕ) : ℤ :=
  A266848.P10124636830213584024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267050.P6583964261662905485

`or(A266502(n), A267006(n))`
-/

namespace A267050.P6583964261662905485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266502 n) (A267006 n)

end

end A267050.P6583964261662905485

noncomputable section

/-- A267050: Triangle read by rows giving successive states of cellular automaton generated by "Rule 92" initiated with a single ON (black) cell.

Offset 0, canonical program `A267050.P6583964261662905485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267050 (n : ℕ) : ℤ :=
  A267050.P6583964261662905485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267263.P541567630172199219

`a(A260187(n))+1` with `a(0)=0`
-/

namespace A267263.P541567630172199219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A260187 n).toNat + 1

end

end A267263.P541567630172199219

noncomputable section

/-- A267263: Number of nonzero digits in representation of n in primorial base.

Offset 0, canonical program `A267263.P541567630172199219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267263 (n : ℕ) : ℤ :=
  (A267263.P541567630172199219.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267349.P897274427643744679

`A266666(n*A267704(n))`
-/

namespace A267349.P897274427643744679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266666 ((n : ℤ) * A267704 n).toNat

end

end A267349.P897274427643744679

noncomputable section

/-- A267349: Triangle read by rows giving successive states of cellular automaton generated by "Rule 123" initiated with a single ON (black) cell.

Offset 0, canonical program `A267349.P897274427643744679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267349 (n : ℕ) : ℤ :=
  A267349.P897274427643744679.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267676.P4684612888645743978

`char[A183569(n+1)*A267687(n)]`
-/

namespace A267676.P4684612888645743978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183569 (n + 1) * A267687 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267676.P4684612888645743978

noncomputable section

/-- A267676: Triangle read by rows giving successive states of cellular automaton generated by "Rule 197" initiated with a single ON (black) cell.

Offset 0, canonical program `A267676.P4684612888645743978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5143 terms. -/
def A267676 (n : ℕ) : ℤ :=
  (A267676.P4684612888645743978.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5143 terms. -/
def A267676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267778.P18033994300650970323

`1-A267006(A266502(n)+n)`
-/

namespace A267778.P18033994300650970323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267006 (A266502 n + (n : ℤ)).toNat

end

end A267778.P18033994300650970323

noncomputable section

/-- A267778: Triangle read by rows giving successive states of cellular automaton generated by "Rule 211" initiated with a single ON (black) cell.

Offset 0, canonical program `A267778.P18033994300650970323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267778 (n : ℕ) : ℤ :=
  A267778.P18033994300650970323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267845.P5263829636429714484

`and(1, A189827(n+2)%A097922(n)+1)`
-/

namespace A267845.P5263829636429714484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.tmod (A189827 (n + 2)) (A097922 n) + 1)

end

end A267845.P5263829636429714484

noncomputable section

/-- A267845: Triangle read by rows giving successive states of cellular automaton generated by "Rule 227" initiated with a single ON (black) cell.

Offset 0, canonical program `A267845.P5263829636429714484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267845 (n : ℕ) : ℤ :=
  A267845.P5263829636429714484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269161.P13941495985757432610

`A057889(A269160(A057889(n)))`
-/

namespace A269161.P13941495985757432610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A269160 (A057889 n).toNat).toNat

end

end A269161.P13941495985757432610

noncomputable section

/-- A269161: Formula for Wolfram's Rule 86 cellular automaton: a(n) = 4n XOR (2n OR n).

Offset 0, canonical program `A269161.P13941495985757432610`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A269160, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A269161 (n : ℕ) : ℤ :=
  A269161.P13941495985757432610.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A269160, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A269161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269364.P12160389382123291649

`A269849(n+1)-A269850(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269364.P12160389382123291649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269849 (n + 1) - A269850 (n + 1)

end

end A269364.P12160389382123291649

noncomputable section

/-- A269364: Difference between the number of occurrences of prime gaps not divisible by 3, versus number of prime gaps that are multiples of 3, up to n-th prime gap: a(n) = A269849(n) - A269850(n).

Offset 1, canonical program `A269364.P12160389382123291649`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269849, A269850, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A269364 (n : ℕ) : ℤ :=
  A269364.P12160389382123291649.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269849, A269850, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A269364.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270248.P13305958007717822557

`2*A270050(n+1)`
-/

namespace A270248.P13305958007717822557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270050 (n + 1)

end

end A270248.P13305958007717822557

noncomputable section

/-- A270248: Even Löschian numbers.

Offset 1, canonical program `A270248.P13305958007717822557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270050, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270248 (n : ℕ) : ℤ :=
  A270248.P13305958007717822557.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270050, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A271197.P9767987725976590934

`A002002(n+2)-A225887(n+1)`
-/

namespace A271197.P9767987725976590934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 2) - A225887 (n + 1)

end

end A271197.P9767987725976590934

noncomputable section

/-- A271197: Expansion of -(sqrt(x^2-6*x+1)+3*x-1)/((7*x-1)*sqrt(x^2-6*x+1)+x^2-6*x+1)/x.

Offset 0, canonical program `A271197.P9767987725976590934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A271197 (n : ℕ) : ℤ :=
  A271197.P9767987725976590934.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A271197.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A272902.P2391986581813364604

`eq[0, A101264(3*n)]+1`
-/

namespace A272902.P2391986581813364604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272902.P2391986581813364604

noncomputable section

/-- A272902: Numbers k such that 6*k - 5 is not prime.

Offset 1, canonical program `A272902.P2391986581813364604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272902 (n : ℕ) : ℤ :=
  (A272902.P2391986581813364604.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273020.P8082277504351008940

`Δ[A097861(n)+∑[A099323(n)]]`
-/

namespace A273020.P8082277504351008940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273020.P8082277504351008940

noncomputable section

/-- A273020: a(n) = Sum_{k=0..n} C(n,k)*((-1)^n*(C(k,n-k)-C(k,n-k-1))+C(n-k,k+1)).

Offset 0, canonical program `A273020.P8082277504351008940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A273020 (n : ℕ) : ℤ :=
  A273020.P8082277504351008940.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A273020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273670.P14908057013433481843

`comp[A153880(n)]`
-/

namespace A273670.P14908057013433481843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273670.P14908057013433481843

noncomputable section

/-- A273670: Numbers with at least one maximal digit in their factorial base representation.

Offset 0, canonical program `A273670.P14908057013433481843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273670 (n : ℕ) : ℤ :=
  (A273670.P14908057013433481843.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274357.P15400264292422820349

`A030626(eq[1, A030626(n+1)-A111398(n+1)])`
-/

namespace A274357.P15400264292422820349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1) - A111398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274357.P15400264292422820349

noncomputable section

/-- A274357: Numbers n such that n and n+1 both have 8 divisors.

Offset 1, canonical program `A274357.P15400264292422820349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A274357 (n : ℕ) : ℤ :=
  A274357.P15400264292422820349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A274357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276788.P8117237613989876869

`A003144(n+2)-A003144(n+1)`
-/

namespace A276788.P8117237613989876869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 2) - A003144 (n + 1)

end

end A276788.P8117237613989876869

noncomputable section

/-- A276788: First differences of A003144.

Offset 1, canonical program `A276788.P8117237613989876869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276788 (n : ℕ) : ℤ :=
  A276788.P8117237613989876869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276788.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277169.P7870320882973460960

`A000290(A007956(n+1))`
-/

namespace A277169.P7870320882973460960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A007956 (n + 1)).toNat

end

end A277169.P7870320882973460960

noncomputable section

/-- A277169: Product of squares of proper divisors of n.

Offset 1, canonical program `A277169.P7870320882973460960`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277169 (n : ℕ) : ℤ :=
  A277169.P7870320882973460960.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277169.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277567.P15704819305109196933

`filter[A189715(n+1), A373156(#)]`
-/

namespace A277567.P15704819305109196933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A277567.P15704819305109196933

noncomputable section

/-- A277567: Numbers k such that k/6^m == 1 (mod 6), where 6^m is the greatest power of 6 that divides k.

Offset 1, canonical program `A277567.P15704819305109196933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4003 terms. -/
def A277567 (n : ℕ) : ℤ :=
  A277567.P15704819305109196933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4003 terms. -/
def A277567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277571.P535996432442128007

`filter[A225838(n+1), A373156(#)]`
-/

namespace A277571.P535996432442128007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A277571.P535996432442128007

noncomputable section

/-- A277571: Numbers k such that k/6^m == 5 (mod 6), where 6^m is the greatest power of 6 that divides k.

Offset 1, canonical program `A277571.P535996432442128007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4010 terms. -/
def A277571 (n : ℕ) : ℤ :=
  A277571.P535996432442128007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4010 terms. -/
def A277571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277909.P9440782015810627941

`filter[A181709(2*n+1), A075743(#)]`
-/

namespace A277909.P9440782015810627941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181709 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075743 (f1 j).toNat = 1) n)

end

end A277909.P9440782015810627941

noncomputable section

/-- A277909: Numbers n for which A277911(n) = n+1.

Offset 1, canonical program `A277909.P9440782015810627941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A277909 (n : ℕ) : ℤ :=
  A277909.P9440782015810627941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A277909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278039.P16218767788797619260

`A003144(n+1)-1`
-/

namespace A278039.P16218767788797619260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1) - 1

end

end A278039.P16218767788797619260

noncomputable section

/-- A278039: The tribonacci representation of a(n) is obtained by appending a 0 to the tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A278039.P16218767788797619260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278039 (n : ℕ) : ℤ :=
  A278039.P16218767788797619260.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279497.P13199051140231990892

`∑{d}[n+1, A255849(#)]`
-/

namespace A279497.P13199051140231990892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A255849 d

end

end A279497.P13199051140231990892

noncomputable section

/-- A279497: Number of pentagonal numbers dividing n.

Offset 1, canonical program `A279497.P13199051140231990892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279497 (n : ℕ) : ℤ :=
  A279497.P13199051140231990892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280116.P3577260603132501466

`∑[∏{d}[n+1, #*A007956(#)]]`
-/

namespace A280116.P3577260603132501466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (d : ℤ) * A007956 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280116.P3577260603132501466

noncomputable section

/-- A280116: Partial sums of A266265 (Product_{d|n} pod(d)).

Offset 1, canonical program `A280116.P3577260603132501466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A280116 (n : ℕ) : ℤ :=
  A280116.P3577260603132501466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A280116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280469.P12523109073399917992

`filter[A067888(n+1), A379971(#)]`
-/

namespace A280469.P12523109073399917992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280469.P12523109073399917992

noncomputable section

/-- A280469: Numbers n such that n-1 and n+1 are squarefree and have the same number of prime factors.

Offset 1, canonical program `A280469.P12523109073399917992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6388 terms. -/
def A280469 (n : ℕ) : ℤ :=
  A280469.P12523109073399917992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6388 terms. -/
def A280469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280508.P2465948265885217128

`xor(n, A057889(n))`
-/

namespace A280508.P2465948265885217128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A057889 n)

end

end A280508.P2465948265885217128

noncomputable section

/-- A280508: a(n) = n XOR A057889(n).

Offset 0, canonical program `A280508.P2465948265885217128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280508 (n : ℕ) : ℤ :=
  A280508.P2465948265885217128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280728.P2681727417312641949

`A183063(A000032(n))`
-/

namespace A280728.P2681727417312641949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A000032 n).toNat

end

end A280728.P2681727417312641949

noncomputable section

/-- A280728: Number of even divisors of Lucas(n).

Offset 0, canonical program `A280728.P2681727417312641949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280728 (n : ℕ) : ℤ :=
  A280728.P2681727417312641949.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280728.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A281048.P3938855718998279442

`Δ[A005590(n)]`
-/

namespace A281048.P3938855718998279442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281048.P3938855718998279442

noncomputable section

/-- A281048: Expansion of x*(1 - x)*Product_{k>=0} (1 + x^(2^k) - x^(2^(k+1))).

Offset 1, canonical program `A281048.P3938855718998279442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281048 (n : ℕ) : ℤ :=
  A281048.P3938855718998279442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281451.P319179514857330733

`A122865(3*(n+1)+2)`
-/

namespace A281451.P319179514857330733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (3 * (n + 1) + 2)

end

end A281451.P319179514857330733

noncomputable section

/-- A281451: Expansion of x * f(x, x) * f(x, x^17) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 1, canonical program `A281451.P319179514857330733`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122865, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281451 (n : ℕ) : ℤ :=
  A281451.P319179514857330733.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122865, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281452.P16373175316652639648

`A122865(3*n+1)`
-/

namespace A281452.P16373175316652639648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (3 * n + 1)

end

end A281452.P16373175316652639648

noncomputable section

/-- A281452: Expansion of f(x, x) * f(x^5, x^13) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A281452.P16373175316652639648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122865, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281452 (n : ℕ) : ℤ :=
  A281452.P16373175316652639648.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122865, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281452.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281453.P11275303056165070648

`A122865(3*n)`
-/

namespace A281453.P11275303056165070648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (3 * n)

end

end A281453.P11275303056165070648

noncomputable section

/-- A281453: Expansion of f(x, x) * f(x^7, x^11) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A281453.P11275303056165070648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122865, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281453 (n : ℕ) : ℤ :=
  A281453.P11275303056165070648.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122865, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281453.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282806.P5522376432113910485

`A052955(A004277(n))-A288807(2*n+1)`
-/

namespace A282806.P5522376432113910485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A288807 (2 * n + 1)

end

end A282806.P5522376432113910485

noncomputable section

/-- A282806: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282806.P5522376432113910485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A282806 (n : ℕ) : ℤ :=
  A282806.P5522376432113910485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A282806.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A284281.P9191018554184866651

`A116073(n+1)-(A284280(n+1)+A284150(n+1))`
-/

namespace A284281.P9191018554184866651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116073 (n + 1) - (A284280 (n + 1) + A284150 (n + 1))

end

end A284281.P9191018554184866651

noncomputable section

/-- A284281: a(n) = Sum_{d|n, d == 3 (mod 5)} d.

Offset 1, canonical program `A284281.P9191018554184866651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284281 (n : ℕ) : ℤ :=
  A284281.P9191018554184866651.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284531.P11943089900125186726

`p?[ceil(A031928(n+1)/6)]`
-/

namespace A284531.P11943089900125186726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A031928 (n + 1) : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A284531.P11943089900125186726

noncomputable section

/-- A284531: Primes p such that 6p - 5 and 6p + 5 are consecutive primes.

Offset 1, canonical program `A284531.P11943089900125186726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1030 terms. -/
def A284531 (n : ℕ) : ℤ :=
  A284531.P11943089900125186726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1030 terms. -/
def A284531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284751.P4794700435670867007

`A285301(xor(1, n)+1)`
-/

namespace A284751.P4794700435670867007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 (Nat.xor 1 n + 1)

end

end A284751.P4794700435670867007

noncomputable section

/-- A284751: Fixed point of the morphism 0 -> 01, 1 -> 0001.

Offset 1, canonical program `A284751.P4794700435670867007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284751 (n : ℕ) : ℤ :=
  A284751.P4794700435670867007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284752.P1214330946785391422

`a(n-1)+A284369(n)+1` with `a(0)=1`
-/

namespace A284752.P1214330946785391422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A284369 n + 1)

end

end A284752.P1214330946785391422

noncomputable section

/-- A284752: Positions of 0 in A284751; complement of A284753.

Offset 1, canonical program `A284752.P1214330946785391422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284752 (n : ℕ) : ℤ :=
  A284752.P1214330946785391422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284794.P2972452500732799436

`2*A189665(n+1)`
-/

namespace A284794.P2972452500732799436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189665 (n + 1)

end

end A284794.P2972452500732799436

noncomputable section

/-- A284794: Positions of -1 in A284793.

Offset 1, canonical program `A284794.P2972452500732799436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284794 (n : ℕ) : ℤ :=
  A284794.P2972452500732799436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284818.P2162458952130043232

`∪[A189665(n+1), n²]+1`
-/

namespace A284818.P2162458952130043232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n + 1

end

end A284818.P2162458952130043232

noncomputable section

/-- A284818: Positions of 0 in A284817.

Offset 1, canonical program `A284818.P2162458952130043232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284818 (n : ℕ) : ℤ :=
  (A284818.P2162458952130043232.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284881.P16258864461448778512

`Δ[A284878(n+1)+n]-1`
-/

namespace A284881.P16258864461448778512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284878 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A284881.P16258864461448778512

noncomputable section

/-- A284881: Difference sequence of A284878.

Offset 1, canonical program `A284881.P16258864461448778512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284881 (n : ℕ) : ℤ :=
  A284881.P16258864461448778512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284882.P13401279417778518260

`A284878(n+1)+2*A189629(n+1)`
-/

namespace A284882.P13401279417778518260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284878 (n + 1) + 2 * A189629 (n + 1)

end

end A284882.P13401279417778518260

noncomputable section

/-- A284882: Positions of -1 in A284881.

Offset 1, canonical program `A284882.P13401279417778518260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284882 (n : ℕ) : ℤ :=
  A284882.P13401279417778518260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284883.P7296943405471408281

`∪[A189634(2*(n+1)), A189634(2*(n+1))-2]`
-/

namespace A284883.P7296943405471408281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189634 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189634 (2 * (n + 1)) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A284883.P7296943405471408281

noncomputable section

/-- A284883: Positions of 0 in A284881.

Offset 1, canonical program `A284883.P7296943405471408281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284883 (n : ℕ) : ℤ :=
  (A284883.P7296943405471408281.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284905.P11490552408293159038

`char[A285347(n+1)]`
-/

namespace A284905.P11490552408293159038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284905.P11490552408293159038

noncomputable section

/-- A284905: Fixed point of the morphism 0 -> 01, 1 -> 1001.

Offset 1, canonical program `A284905.P11490552408293159038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284905 (n : ℕ) : ℤ :=
  (A284905.P11490552408293159038.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284934.P7002224388800912769

`4*(n+1)-(A285976(n+1)+1)`
-/

namespace A284934.P7002224388800912769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - (A285976 (n + 1) + 1)

end

end A284934.P7002224388800912769

noncomputable section

/-- A284934: Positions of 1 in A284792; complement of A284933.

Offset 1, canonical program `A284934.P7002224388800912769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284934 (n : ℕ) : ℤ :=
  A284934.P7002224388800912769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285302.P16715383448792695938

`∑[A284369(n+1)+1]`
-/

namespace A285302.P16715383448792695938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284369 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285302.P16715383448792695938

noncomputable section

/-- A285302: Positions of 0 in A285301, complement of A086398.

Offset 1, canonical program `A285302.P16715383448792695938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285302 (n : ℕ) : ℤ :=
  A285302.P16715383448792695938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285346.P16359284748052672519

`∑[4-A326420(n+1)]`
-/

namespace A285346.P16359284748052672519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A326420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285346.P16359284748052672519

noncomputable section

/-- A285346: Positions of 0 in A285345; complement of A285347.

Offset 1, canonical program `A285346.P16359284748052672519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285346 (n : ℕ) : ℤ :=
  A285346.P16359284748052672519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286047.P5733247358110953504

`A285972(n+2)+Δ[n²]`
-/

namespace A286047.P5733247358110953504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285972 (n + 2) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A286047.P5733247358110953504

noncomputable section

/-- A286047: Positions of 0 in A286046; complement of A286048.

Offset 1, canonical program `A286047.P5733247358110953504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A286047 (n : ℕ) : ℤ :=
  A286047.P5733247358110953504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A286047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286057.P3029216040997174688

`1+eq[1, A286055(n+1)]`
-/

namespace A286057.P3029216040997174688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286057.P3029216040997174688

noncomputable section

/-- A286057: Positions of 1 in A286055; complement of A286056.

Offset 1, canonical program `A286057.P3029216040997174688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A286057 (n : ℕ) : ℤ :=
  (A286057.P3029216040997174688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A286057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286259.P18123077156284400842

`(2+(A001511(n+1)+A049820(n+1))²-A001511(n+1)-3*A049820(n+1))/2`
-/

namespace A286259.P18123077156284400842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A001511 (n + 1) + A049820 (n + 1)) ^ 2 - A001511 (n + 1) - 3 * A049820 (n + 1) : ℚ) / 2

end

end A286259.P18123077156284400842

noncomputable section

/-- A286259: Compound filter: a(n) = P(A001511(n), A049820(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286259.P18123077156284400842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286259 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286259.P18123077156284400842.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286259.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A286324.P10528776469317877690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286324 (n : ℕ) : ℤ :=
  A286324.P10528776469317877690.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286324.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286530.P8332738514861168906

`A286529(n+1)-A000005(n+1)`
-/

namespace A286530.P8332738514861168906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286529 (n + 1) - A000005 (n + 1)

end

end A286530.P8332738514861168906

noncomputable section

/-- A286530: a(n) = d(n+d(n)) - d(n), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A286530.P8332738514861168906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286530 (n : ℕ) : ℤ :=
  A286530.P8332738514861168906.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286530.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286990.P5038761849871249141

`A286726(A133310(n))`
-/

namespace A286990.P5038761849871249141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286726 (A133310 n).toNat

end

end A286990.P5038761849871249141

noncomputable section

/-- A286990: {0->010, 1->101}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286990.P5038761849871249141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286990 (n : ℕ) : ℤ :=
  A286990.P5038761849871249141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287526.P12703940711411786649

`A189725(A189633(2*n+1)-n)`
-/

namespace A287526.P12703940711411786649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189725 (A189633 (2 * n + 1) - (n : ℤ)).toNat

end

end A287526.P12703940711411786649

noncomputable section

/-- A287526: Positions of 1 in A287524.

Offset 1, canonical program `A287526.P12703940711411786649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A287526 (n : ℕ) : ℤ :=
  A287526.P12703940711411786649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A287526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287801.P16564018995618813451

`A079978(A287773(n+1)+n)`
-/

namespace A287801.P16564018995618813451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A287773 (n + 1) + (n : ℤ)).toNat

end

end A287801.P16564018995618813451

noncomputable section

/-- A287801: {0->100, 1->001}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287801.P16564018995618813451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287801 (n : ℕ) : ℤ :=
  A287801.P16564018995618813451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289055.P12978513394096284979

`(col(n)+1)*A028815(row(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289055.P12978513394096284979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * A028815 (SequenceMachineLib.triRow n)

end

end A289055.P12978513394096284979

noncomputable section

/-- A289055: Triangle read by rows: T(n,k) = (k+1)*A028815(n) for 0 <= k <= n.

Offset 0, canonical program `A289055.P12978513394096284979`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289055 (n : ℕ) : ℤ :=
  A289055.P12978513394096284979.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289055.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289363.P17304641566808962649

`p?[2-A108151(n+1)+n]`
-/

namespace A289363.P17304641566808962649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A108151 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289363.P17304641566808962649

noncomputable section

/-- A289363: Primes p such that p^2 + p - 1 is composite.

Offset 1, canonical program `A289363.P17304641566808962649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A289363 (n : ℕ) : ℤ :=
  A289363.P17304641566808962649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A289363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290081.P12748911258898542202

`A008442(A065260(n+1))`
-/

namespace A290081.P12748911258898542202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008442 (A065260 (n + 1)).toNat

end

end A290081.P12748911258898542202

noncomputable section

/-- A290081: a(n) = number of ways of writing n as the sum of two odd positive squares.

Offset 0, canonical program `A290081.P12748911258898542202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A290081 (n : ℕ) : ℤ :=
  A290081.P12748911258898542202.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A290081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290480.P5828358060988426572

`A061537(n+1)/(n+1)`
-/

namespace A290480.P5828358060988426572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061537 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A290480.P5828358060988426572

noncomputable section

/-- A290480: Product of proper unitary divisors of n.

Offset 1, canonical program `A290480.P5828358060988426572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A290480 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A290480.P5828358060988426572.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A290480.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292145.P11540186890732361601

`A292144(A013929(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292145.P11540186890732361601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292144 (A013929 (n + 1)).toNat

end

end A292145.P11540186890732361601

noncomputable section

/-- A292145: A permutation of the natural numbers: A292144(A013929(n)).

Offset 1, canonical program `A292145.P11540186890732361601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A292144, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292145 (n : ℕ) : ℤ :=
  A292145.P11540186890732361601.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A292144, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292145.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294612.P4833185872788990948

`A007504(n+1)/A024450(n+1)*A296199(n+1)`
-/

namespace A294612.P4833185872788990948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (A024450 (n + 1) : ℚ) * (A296199 (n + 1) : ℚ)

end

end A294612.P4833185872788990948

noncomputable section

/-- A294612: Denominator of the contraharmonic mean of the first n primes.

Offset 1, canonical program `A294612.P4833185872788990948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294612 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A294612.P4833185872788990948.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294629.P4287090505026357869

`4*A294016(n+1)`
-/

namespace A294629.P4287090505026357869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A294016 (n + 1)

end

end A294629.P4287090505026357869

noncomputable section

/-- A294629: Partial sums of A294628.

Offset 1, canonical program `A294629.P4287090505026357869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294016, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294629 (n : ℕ) : ℤ :=
  A294629.P4287090505026357869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294016, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294629.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294895.P16892911565145110880

`∏{d}[n+1, A008578(A000188(#))]`
-/

namespace A294895.P16892911565145110880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A008578 (A000188 d).toNat

end

end A294895.P16892911565145110880

noncomputable section

/-- A294895: a(n) = Product_{d|n, gcd(d,n/d)>1} prime(gcd(d,n/d)-1).

Offset 1, canonical program `A294895.P16892911565145110880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294895 (n : ℕ) : ℤ :=
  A294895.P16892911565145110880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295820.P16692635017392490781

`a(n-1)+A295819(n)` with `a(0)=0`
-/

namespace A295820.P16692635017392490781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A295819 n

end

end A295820.P16692635017392490781

noncomputable section

/-- A295820: Number of nonnegative solutions to (x,y) = 1 and x^2 + y^2 <= n.

Offset 0, canonical program `A295820.P16692635017392490781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295820 (n : ℕ) : ℤ :=
  A295820.P16692635017392490781.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296020.P7139076584926301415

`∑[A101264(Δ[n²])]`
-/

namespace A296020.P7139076584926301415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P7139076584926301415

noncomputable section

/-- A296020: Number of primes of the form 4*k+3 <= 4*n+3.

Offset 0, canonical program `A296020.P7139076584926301415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296020 (n : ℕ) : ℤ :=
  A296020.P7139076584926301415.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296021.P11845768645576456076

`∑[A101264(2*n)]`
-/

namespace A296021.P11845768645576456076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296021.P11845768645576456076

noncomputable section

/-- A296021: Number of primes of the form 4*k+1 <= 4*n+1.

Offset 0, canonical program `A296021.P11845768645576456076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296021 (n : ℕ) : ℤ :=
  A296021.P11845768645576456076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296074.P13795180973919370839

`A296075(n+1)-A033879(n+1)`
-/

namespace A296074.P13795180973919370839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296075 (n + 1) - A033879 (n + 1)

end

end A296074.P13795180973919370839

noncomputable section

/-- A296074: Sum of deficiencies of the proper divisors of n.

Offset 1, canonical program `A296074.P13795180973919370839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296074 (n : ℕ) : ℤ :=
  A296074.P13795180973919370839.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A298861.P498187030667195910

`a(n-1)+A217564(n)+1` with `a(0)=1`
-/

namespace A298861.P498187030667195910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A217564 n + 1)

end

end A298861.P498187030667195910

noncomputable section

/-- A298861: Rank of n-th prime when all the primes and twice-primes are jointly ranked.

Offset 1, canonical program `A298861.P498187030667195910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298861 (n : ℕ) : ℤ :=
  A298861.P498187030667195910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301300.P2291985338386002746

`∑[A301299(n)]`
-/

namespace A301300.P2291985338386002746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301300.P2291985338386002746

noncomputable section

/-- A301300: Partial sums of A301299.

Offset 0, canonical program `A301300.P2291985338386002746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2590 terms. -/
def A301300 (n : ℕ) : ℤ :=
  A301300.P2291985338386002746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2590 terms. -/
def A301300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301725.P2295522434011153661

`∑[A301724(n)]`
-/

namespace A301725.P2295522434011153661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301725.P2295522434011153661

noncomputable section

/-- A301725: Partial sums of A301724.

Offset 0, canonical program `A301725.P2295522434011153661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301725 (n : ℕ) : ℤ :=
  A301725.P2295522434011153661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304571.P9163030136196335364

`A000007(A127368(n+1)+A051731(n+1))`
-/

namespace A304571.P9163030136196335364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A127368 (n + 1) + A051731 (n + 1)).toNat

end

end A304571.P9163030136196335364

noncomputable section

/-- A304571: Triangle read by rows: T(n,k) = 1 if gcd(k,n) > 1 and n mod k != 0.

Offset 1, canonical program `A304571.P9163030136196335364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304571 (n : ℕ) : ℤ :=
  A304571.P9163030136196335364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306345.P6612547379326574336

`abs(A001221(n+1)-A055212(n+1))`
-/

namespace A306345.P6612547379326574336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001221 (n + 1) - A055212 (n + 1)|

end

end A306345.P6612547379326574336

noncomputable section

/-- A306345: Absolute difference between the number of prime divisors and the number of composite divisors of n.

Offset 1, canonical program `A306345.P6612547379326574336`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A055212, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306345 (n : ℕ) : ℤ :=
  A306345.P6612547379326574336.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A055212, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306682.P11360712118956145825

`gcd(A000203(n+1), A187680(n+1))`
-/

namespace A306682.P11360712118956145825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A187680 (n + 1))

end

end A306682.P11360712118956145825

noncomputable section

/-- A306682: a(n) = gcd(sigma(n), pod(n)) where sigma(k) = the sum of the divisors of k (A000203) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A306682.P11360712118956145825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306682 (n : ℕ) : ℤ :=
  (A306682.P11360712118956145825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306705.P258986654421283042

`A211776(n+1)*A007955(n+1)`
-/

namespace A306705.P258986654421283042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1) * A007955 (n + 1)

end

end A306705.P258986654421283042

noncomputable section

/-- A306705: a(n) = Product_{d|n} d*tau(d), where tau(k) = the number of the divisors of k (A000005).

Offset 1, canonical program `A306705.P258986654421283042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306705 (n : ℕ) : ℤ :=
  A306705.P258986654421283042.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306705.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307013.P16025431409212704238

`A307011(n)+A307012(n)`
-/

namespace A307013.P16025431409212704238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307011 n + A307012 n

end

end A307013.P16025431409212704238

noncomputable section

/-- A307013: Third coordinate (asymmetric variant) in a redundant hexagonal coordinate system of the points of a counterclockwise spiral on an hexagonal grid. First and second coordinates are given in A307011 and A307012.

Offset 0, canonical program `A307013.P16025431409212704238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307011, A307012, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307013 (n : ℕ) : ℤ :=
  A307013.P16025431409212704238.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307011, A307012, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307101.P8537828544159030044

`A211776(n+1)*A266265(n+1)`
-/

namespace A307101.P8537828544159030044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1) * A266265 (n + 1)

end

end A307101.P8537828544159030044

noncomputable section

/-- A307101: a(n) = Product_{d|n} (tau(d)*pod(d)) where tau(k) = the number of divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A307101.P8537828544159030044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307101 (n : ℕ) : ℤ :=
  A307101.P8537828544159030044.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307360.P8284333854152591718

`∪[A089581(n+1), A166684(n+1)]`
-/

namespace A307360.P8284333854152591718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307360.P8284333854152591718

noncomputable section

/-- A307360: A sequence in which every divisor other than 1 is used at most three times.

Offset 1, canonical program `A307360.P8284333854152591718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307360 (n : ℕ) : ℤ :=
  (A307360.P8284333854152591718.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307508.P1138066095491844169

`A000040(A247514(n+1))`
-/

namespace A307508.P1138066095491844169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A247514 (n + 1)).toNat

end

end A307508.P1138066095491844169

noncomputable section

/-- A307508: Primes p for which the continued fraction expansion of sqrt(p) does not have a 1 in the second position.

Offset 1, canonical program `A307508.P1138066095491844169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5024 terms. -/
def A307508 (n : ℕ) : ℤ :=
  A307508.P1138066095491844169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5024 terms. -/
def A307508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307716.P13840358709468437809

`∑[A000040(n+1)]/A309036(n+1)`
-/

namespace A307716.P13840358709468437809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A309036 (n + 1) : ℚ)

end

end A307716.P13840358709468437809

noncomputable section

/-- A307716: Denominator of the barycenter of first n primes defined as a(n) = denominator(Sum_{i=1..n} (i*prime(i)) / Sum_{i=1..n} prime(i)).

Offset 1, canonical program `A307716.P13840358709468437809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307716 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307716.P13840358709468437809.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308022.P12381398611717644389

`A033558(n+1)-A238737(n)`
-/

namespace A308022.P12381398611717644389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033558 (n + 1) - A238737 n

end

end A308022.P12381398611717644389

noncomputable section

/-- A308022: a(n) = prevprime(2*n-1) - nextprime(n-1), where prevprime = A151799 and nextprime = A151800.

Offset 2, canonical program `A308022.P12381398611717644389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308022 (n : ℕ) : ℤ :=
  A308022.P12381398611717644389.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308754.P4482175284400131053

`a(n-1)+A101264(n+1)` with `a(0)=0`
-/

namespace A308754.P4482175284400131053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A101264 (n + 1)

end

end A308754.P4482175284400131053

noncomputable section

/-- A308754: a(0) = 0, a(n) = a(n-1) + 1 if 2*n + 3 is prime, otherwise a(n) = a(n-1).

Offset 0, canonical program `A308754.P4482175284400131053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308754 (n : ℕ) : ℤ :=
  A308754.P4482175284400131053.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309213.P7560310409620454455

`A131376(n)+A168561(n)-A049310(n)`
-/

namespace A309213.P7560310409620454455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131376 n + (A168561 n - A049310 n)

end

end A309213.P7560310409620454455

noncomputable section

/-- A309213: A007318 + A065941 - A049310.

Offset 0, canonical program `A309213.P7560310409620454455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309213 (n : ℕ) : ℤ :=
  A309213.P7560310409620454455.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309355.P9345418795961828822

`A071904(n+1)-1`
-/

namespace A309355.P9345418795961828822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) - 1

end

end A309355.P9345418795961828822

noncomputable section

/-- A309355: Even numbers k such that k! is divisible by k*(k+1)/2.

Offset 1, canonical program `A309355.P9345418795961828822`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309355 (n : ℕ) : ℤ :=
  A309355.P9345418795961828822.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309355.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A310379.P6537019467355233572

`2*A312903(n)-A008574(n)`
-/

namespace A310379.P6537019467355233572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312903 n - A008574 n

end

end A310379.P6537019467355233572

noncomputable section

/-- A310379: Coordination sequence Gal.6.321.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310379.P6537019467355233572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2412 terms. -/
def A310379 (n : ℕ) : ℤ :=
  A310379.P6537019467355233572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2412 terms. -/
def A310379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310380.P5834693299645205668

`A315034(n)-A011582(n)`
-/

namespace A310380.P5834693299645205668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315034 n - A011582 n

end

end A310380.P5834693299645205668

noncomputable section

/-- A310380: Coordination sequence Gal.6.322.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310380.P5834693299645205668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. -/
def A310380 (n : ℕ) : ℤ :=
  A310380.P5834693299645205668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. -/
def A310380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310398.P3945335365291150677

`A312903(n)+Δ[A011858(n)]`
-/

namespace A310398.P3945335365291150677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312903 n + (f1 (n + 1) - f1 n)

end

end A310398.P3945335365291150677

noncomputable section

/-- A310398: Coordination sequence Gal.5.136.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310398.P3945335365291150677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A310398 (n : ℕ) : ℤ :=
  A310398.P3945335365291150677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A310398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310421.P18423327400045776034

`abs(A008592(n)-A315304(n))`
-/

namespace A310421.P18423327400045776034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315304 n|

end

end A310421.P18423327400045776034

noncomputable section

/-- A310421: Coordination sequence Gal.5.131.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310421.P18423327400045776034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A310421 (n : ℕ) : ℤ :=
  A310421.P18423327400045776034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A310421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310422.P14341133682885301915

`abs(A008592(n)-A315303(n))`
-/

namespace A310422.P14341133682885301915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315303 n|

end

end A310422.P14341133682885301915

noncomputable section

/-- A310422: Coordination sequence Gal.6.325.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310422.P14341133682885301915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A310422 (n : ℕ) : ℤ :=
  A310422.P14341133682885301915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A310422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310462.P14374953291466899148

`abs(10*n-A315256(n))`
-/

namespace A310462.P14374953291466899148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315256 n|

end

end A310462.P14374953291466899148

noncomputable section

/-- A310462: Coordination sequence Gal.5.138.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310462.P14374953291466899148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2358 terms. -/
def A310462 (n : ℕ) : ℤ :=
  A310462.P14374953291466899148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2358 terms. -/
def A310462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310464.P516578395885125778

`abs(10*n-A315255(n))`
-/

namespace A310464.P516578395885125778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315255 n|

end

end A310464.P516578395885125778

noncomputable section

/-- A310464: Coordination sequence Gal.5.139.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310464.P516578395885125778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A310464 (n : ℕ) : ℤ :=
  A310464.P516578395885125778.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A310464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310496.P10218133312535367939

`A315034(n)+A011582(A011582(n)+n)`
-/

namespace A310496.P10218133312535367939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315034 n + A011582 (A011582 n + (n : ℤ)).toNat

end

end A310496.P10218133312535367939

noncomputable section

/-- A310496: Coordination sequence Gal.6.327.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310496.P10218133312535367939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A310496 (n : ℕ) : ℤ :=
  A310496.P10218133312535367939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A310496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310509.P5623356039193188941

`A313201(n)+A002264(A004773(n+1))`
-/

namespace A310509.P5623356039193188941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313201 n + A002264 (A004773 (n + 1)).toNat

end

end A310509.P5623356039193188941

noncomputable section

/-- A310509: Coordination sequence Gal.5.142.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310509.P5623356039193188941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A310509 (n : ℕ) : ℤ :=
  A310509.P5623356039193188941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A310509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311209.P6586831971978910313

`A046978(n)+A313154(n)-n`
-/

namespace A311209.P6586831971978910313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A313154 n - (n : ℤ))

end

end A311209.P6586831971978910313

noncomputable section

/-- A311209: Coordination sequence Gal.5.107.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311209.P6586831971978910313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A311209 (n : ℕ) : ℤ :=
  A311209.P6586831971978910313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A311209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311425.P6783800476576581403

`A315495(n)-A047363(n+1)`
-/

namespace A311425.P6783800476576581403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n - A047363 (n + 1)

end

end A311425.P6783800476576581403

noncomputable section

/-- A311425: Coordination sequence Gal.5.52.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311425.P6783800476576581403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A311425 (n : ℕ) : ℤ :=
  A311425.P6783800476576581403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A311425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181132.P3293973136529451721

`A059015(n)-1`
-/

namespace A181132.P3293973136529451721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059015 n - 1

end

end A181132.P3293973136529451721

noncomputable section

/-- A181132: a(0)=0; thereafter a(n) = total number of 0's in binary expansions of 1, ..., n.

Offset 0, canonical program `A181132.P3293973136529451721`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181132 (n : ℕ) : ℤ :=
  A181132.P3293973136529451721.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181298.P4944943515467020596

`2*A181337(n)`
-/

namespace A181298.P4944943515467020596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181337 n

end

end A181298.P4944943515467020596

noncomputable section

/-- A181298: The number of even entries in all the 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

Offset 0, canonical program `A181298.P4944943515467020596`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181337, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181298 (n : ℕ) : ℤ :=
  A181298.P4944943515467020596.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181337, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181298.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181371.P3047154225030384075

`A125662(A091018(n))`
-/

namespace A181371.P3047154225030384075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125662 (A091018 n).toNat

end

end A181371.P3047154225030384075

noncomputable section

/-- A181371: Triangle read by rows: T(n,k) is the number of ternary words (i.e., finite sequences of 0's, 1's and 2's) of length n having k occurrences of 01's (0 <= k <= floor(n/2)).

Offset 0, canonical program `A181371.P3047154225030384075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A181371 (n : ℕ) : ℤ :=
  A181371.P3047154225030384075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A181371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182318.P12456302042161532717

`filter[A047501(n+1), A295316(#)]`
-/

namespace A182318.P12456302042161532717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A182318.P12456302042161532717

noncomputable section

/-- A182318: List of positive integers whose prime tower factorization, as defined in comments, does not contain the prime 2.

Offset 1, canonical program `A182318.P12456302042161532717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6763 terms. -/
def A182318 (n : ℕ) : ℤ :=
  A182318.P12456302042161532717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6763 terms. -/
def A182318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182340.P464581348279077059

`eq[5, gcd(5, A000026(n+1))]+1`
-/

namespace A182340.P464581348279077059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A000026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A182340.P464581348279077059

noncomputable section

/-- A182340: List of positive integers whose prime tower factorization, as defined in comments, contains the prime 5.

Offset 1, canonical program `A182340.P464581348279077059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2150 terms. -/
def A182340 (n : ℕ) : ℤ :=
  (A182340.P464581348279077059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2150 terms. -/
def A182340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182341.P1387839447626138029

`eq[7, gcd(7, A000026(n+1))]+1`
-/

namespace A182341.P1387839447626138029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A000026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A182341.P1387839447626138029

noncomputable section

/-- A182341: List of positive integers whose prime tower factorization, as defined in comments, contains the prime 7.

Offset 1, canonical program `A182341.P1387839447626138029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1464 terms. -/
def A182341 (n : ℕ) : ℤ :=
  (A182341.P1387839447626138029.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1464 terms. -/
def A182341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182487.P5966758565493062569

`A014208(n+4)-A180422(n+4)`
-/

namespace A182487.P5966758565493062569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014208 (n + 4) - A180422 (n + 4)

end

end A182487.P5966758565493062569

noncomputable section

/-- A182487: Nextprime(F(n)) - prevprime(F(n)), where F(n) is the n-th Fibonacci number.

Offset 4, canonical program `A182487.P5966758565493062569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014208, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182487 (n : ℕ) : ℤ :=
  A182487.P5966758565493062569.a (n - 4)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014208, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182487.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186129.P8547217690229078494

`lt[5, A293235(n+1)]+1`
-/

namespace A186129.P8547217690229078494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A186129.P8547217690229078494

noncomputable section

/-- A186129: Numbers that can be partitioned into four parts s, t, u, v such that s+k = t-k = u*k = v/k for some k > 1.

Offset 1, canonical program `A186129.P8547217690229078494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1178 terms. -/
def A186129 (n : ℕ) : ℤ :=
  (A186129.P8547217690229078494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1178 terms. -/
def A186129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187974.P12540977451401628100

`comp[A188045(n+1)-4]`
-/

namespace A187974.P12540977451401628100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187974.P12540977451401628100

noncomputable section

/-- A187974: Positions of 1 in A187972; complement of A187973.

Offset 1, canonical program `A187974.P12540977451401628100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187974 (n : ℕ) : ℤ :=
  (A187974.P12540977451401628100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187978.P14878399714927445587

`record[A080755(n+1)*A188395(n+1)]`
-/

namespace A187978.P14878399714927445587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1) * A188395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187978.P14878399714927445587

noncomputable section

/-- A187978: Positions of 1 in A187976; complement of A187977.

Offset 1, canonical program `A187978.P14878399714927445587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8284 terms. -/
def A187978 (n : ℕ) : ℤ :=
  A187978.P14878399714927445587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8284 terms. -/
def A187978.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A188024.P14928406718776886035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5452 terms. -/
def A188024 (n : ℕ) : ℤ :=
  (A188024.P14928406718776886035.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5452 terms. -/
def A188024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188030.P265076706034375144

`A188435(n+1)+2*A188016(n+1)`
-/

namespace A188030.P265076706034375144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (n + 1) + 2 * A188016 (n + 1)

end

end A188030.P265076706034375144

noncomputable section

/-- A188030: Positions of 1 in the zero-one sequence given by [nr]-[nr-10r]-[10r], where r=(1+sqrt(5))/2, [ ]=floor, n>=1.

Offset 1, canonical program `A188030.P265076706034375144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188030 (n : ℕ) : ℤ :=
  A188030.P265076706034375144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188473.P2410951327315252382

`A188435(n+1)+A188016(n+1)`
-/

namespace A188473.P2410951327315252382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (n + 1) + A188016 (n + 1)

end

end A188473.P2410951327315252382

noncomputable section

/-- A188473: Positions of 1 in A188472.

Offset 1, canonical program `A188473.P2410951327315252382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188473 (n : ℕ) : ℤ :=
  A188473.P2410951327315252382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189162.P11362982788040175534

`2^n+A189390(n)`
-/

namespace A189162.P11362982788040175534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + A189390 n

end

end A189162.P11362982788040175534

noncomputable section

/-- A189162: The maximum possible value for the apex of a triangle of numbers whose base consists of a permutation of the numbers 1 to n, and each number in a higher row is the sum of the two numbers directly below it.

Offset 1, canonical program `A189162.P11362982788040175534`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189390, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189162 (n : ℕ) : ℤ :=
  A189162.P11362982788040175534.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189390, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189835.P10100538785749668856

`A001157(n+1)-A038040(n+1)`
-/

namespace A189835.P10100538785749668856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - A038040 (n + 1)

end

end A189835.P10100538785749668856

noncomputable section

/-- A189835: Number of representations of n as a*b + b*c + c*d + d*e where a, b, d, e>0, c>=0 are integers.

Offset 1, canonical program `A189835.P10100538785749668856`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189835 (n : ℕ) : ℤ :=
  A189835.P10100538785749668856.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189835.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189975.P4597304850234292274

`filter[A030634(n+1), A359472(#)]`
-/

namespace A189975.P4597304850234292274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A189975.P4597304850234292274

noncomputable section

/-- A189975: Numbers with prime factorization pqr^3 for distinct p, q, r.

Offset 1, canonical program `A189975.P4597304850234292274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3320 terms. -/
def A189975 (n : ℕ) : ℤ :=
  A189975.P4597304850234292274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3320 terms. -/
def A189975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191528.P9215815392354335812

`A007318(A091018(n)-A000194(n))`
-/

namespace A191528.P9215815392354335812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A091018 n - A000194 n).toNat

end

end A191528.P9215815392354335812

noncomputable section

/-- A191528: Triangle read by rows: T(n,k) is the number of left factors of Dyck paths of length n that have k returns to the axis.

Offset 0, canonical program `A191528.P9215815392354335812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A191528 (n : ℕ) : ℤ :=
  A191528.P9215815392354335812.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A191528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193138.P12552581172921823484

`A004525(Δ[A305117(n+2)])`
-/

namespace A193138.P12552581172921823484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A193138.P12552581172921823484

noncomputable section

/-- A193138: Number of square satins of order n.

Offset 3, canonical program `A193138.P12552581172921823484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A193138 (n : ℕ) : ℤ :=
  A193138.P12552581172921823484.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A193138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195066.P9959749085544739887

`∪[A035928(n+1), A195065(n+1)]`
-/

namespace A195066.P9959749085544739887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195066.P9959749085544739887

noncomputable section

/-- A195066: Numbers n such that BCR(n) is not less than n, where BCR = binary-complement-and-reverse = A036044.

Offset 1, canonical program `A195066.P9959749085544739887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195066 (n : ℕ) : ℤ :=
  (A195066.P9959749085544739887.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195896.P14358306679495744766

`∪[A001747(n+1), A112773(n+1)]-1`
-/

namespace A195896.P14358306679495744766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A195896.P14358306679495744766

noncomputable section

/-- A195896: Numbers of the form 2*p-1 or 3*p-1 where p is 1 or a prime.

Offset 1, canonical program `A195896.P14358306679495744766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195896 (n : ℕ) : ℤ :=
  A195896.P14358306679495744766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199478.P6630177777262602825

`A081277(A091018(n+2))`
-/

namespace A199478.P6630177777262602825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081277 (A091018 (n + 2)).toNat

end

end A199478.P6630177777262602825

noncomputable section

/-- A199478: Irregular triangle read by rows: T(n,i) = 2^(i-1)*(binomial(n-i+1,i)+binomial(n-i,i)), n >= 1, 0 <= i <= (n+1)/2.

Offset 1, canonical program `A199478.P6630177777262602825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A199478 (n : ℕ) : ℤ :=
  A199478.P6630177777262602825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A199478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201259.P11575144589005381822

`A049441(n+1)^3+3`
-/

namespace A201259.P11575144589005381822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049441 (n + 1) ^ 3 + 3

end

end A201259.P11575144589005381822

noncomputable section

/-- A201259: Primes of the form n^3+3.

Offset 1, canonical program `A201259.P11575144589005381822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201259 (n : ℕ) : ℤ :=
  A201259.P11575144589005381822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202090.P4126079562617871700

`A049711(A000045(n+5))`
-/

namespace A202090.P4126079562617871700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A000045 (n + 5)).toNat

end

end A202090.P4126079562617871700

noncomputable section

/-- A202090: a(n) = Fibonacci(n) - p, where p is the largest prime < Fibonacci(n).

Offset 5, canonical program `A202090.P4126079562617871700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202090 (n : ℕ) : ℤ :=
  A202090.P4126079562617871700.a (n - 5)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A202095.P12678363989807783651

`A250428(n+2)`
-/

namespace A202095.P12678363989807783651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250428 (n + 2)

end

end A202095.P12678363989807783651

noncomputable section

/-- A202095: Number of (n+2)X5 binary arrays avoiding patterns 001 and 011 in rows and columns.

Offset 1, canonical program `A202095.P12678363989807783651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202095 (n : ℕ) : ℤ :=
  A202095.P12678363989807783651.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202111.P12212055803023361538

`A049711(A000203(n+2))`
-/

namespace A202111.P12212055803023361538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A000203 (n + 2)).toNat

end

end A202111.P12212055803023361538

noncomputable section

/-- A202111: a(n) = sigma(n) - p, where p is the largest prime < sigma(n).

Offset 2, canonical program `A202111.P12212055803023361538`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202111 (n : ℕ) : ℤ :=
  A202111.P12212055803023361538.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202111.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A202334.P8072250924669287975

`A202335(∑[n+6]+22)`
-/

namespace A202334.P8072250924669287975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A202334.P8072250924669287975

noncomputable section

/-- A202334: Number of (n+1) X 8 binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

Offset 1, canonical program `A202334.P8072250924669287975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A202334 (n : ℕ) : ℤ :=
  A202334.P8072250924669287975.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A202334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203074.P7851202269046150314

`A014210((n-1)%a(n-1))` with `a(0)=1`
-/

namespace A203074.P7851202269046150314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014210 (Int.tmod ((n : ℤ) - 1) (a (n - 1))).toNat

end

end A203074.P7851202269046150314

noncomputable section

/-- A203074: a(0) = 1; for n > 0, a(n) = next prime after 2^(n-1).

Offset 0, canonical program `A203074.P7851202269046150314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A203074 (n : ℕ) : ℤ :=
  A203074.P7851202269046150314.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A203074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203849.P5663793052223685031

`A001157(n+1)*A000045(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203849.P5663793052223685031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) * A000045 (n + 1)

end

end A203849.P5663793052223685031

noncomputable section

/-- A203849: a(n) = sigma_2(n)*Fibonacci(n), where sigma_2(n) = A001157(n), the sum of squares of divisors of n.

Offset 1, canonical program `A203849.P5663793052223685031`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A203849 (n : ℕ) : ℤ :=
  A203849.P5663793052223685031.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A203849.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204272.P17163550386598823124

`A001157(n+1)*A000129(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A204272.P17163550386598823124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) * A000129 (n + 1)

end

end A204272.P17163550386598823124

noncomputable section

/-- A204272: a(n) = sigma_2(n)*Pell(n), where sigma_2(n) = A001157(n), the sum of squares of divisors of n.

Offset 1, canonical program `A204272.P17163550386598823124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204272 (n : ℕ) : ℤ :=
  A204272.P17163550386598823124.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A207537.P9241399492848314122

`A200139(A091018(n+1))`
-/

namespace A207537.P9241399492848314122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200139 (A091018 (n + 1)).toNat

end

end A207537.P9241399492848314122

noncomputable section

/-- A207537: Triangle of coefficients of polynomials u(n,x) jointly generated with A207538; see Formula section.

Offset 1, canonical program `A207537.P9241399492848314122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A207537 (n : ℕ) : ℤ :=
  A207537.P9241399492848314122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A207537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207617.P12486162294747434692

`A236376(A091018(n+1))`
-/

namespace A207617.P12486162294747434692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236376 (A091018 (n + 1)).toNat

end

end A207617.P12486162294747434692

noncomputable section

/-- A207617: Triangle of coefficients of polynomials v(n,x) jointly generated with A207616; see the Formula section.

Offset 1, canonical program `A207617.P12486162294747434692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A207617 (n : ℕ) : ℤ :=
  A207617.P12486162294747434692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A207617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207622.P11482556725908799106

`A000079(n%floor(sqrt(n+1)))*A207616(n+1)`
-/

namespace A207622.P11482556725908799106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n % Nat.sqrt (n + 1)) * A207616 (n + 1)

end

end A207622.P11482556725908799106

noncomputable section

/-- A207622: Triangle of coefficients of polynomials u(n,x) jointly generated with A207623; see the Formula section.

Offset 1, canonical program `A207622.P11482556725908799106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207622 (n : ℕ) : ℤ :=
  A207622.P11482556725908799106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208117.P2010372378160813750

`A208115(n+1)/A207363(n+1)*A208552(n+1)`
-/

namespace A208117.P2010372378160813750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208115 (n + 1) : ℚ) / (A207363 (n + 1) : ℚ) * (A208552 (n + 1) : ℚ)

end

end A208117.P2010372378160813750

noncomputable section

/-- A208117: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

Offset 1, canonical program `A208117.P2010372378160813750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208117 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208117.P2010372378160813750.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208271.P9303695278166639527

`filter[A011531(n+1), A005171(#)]`
-/

namespace A208271.P9303695278166639527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A208271.P9303695278166639527

noncomputable section

/-- A208271: Nonprime numbers containing a digit 1.

Offset 1, canonical program `A208271.P9303695278166639527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8754 terms. -/
def A208271 (n : ℕ) : ℤ :=
  A208271.P9303695278166639527.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8754 terms. -/
def A208271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208273.P479560889702569818

`filter[A011532(n+1), A005171(#)]`
-/

namespace A208273.P479560889702569818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A208273.P479560889702569818

noncomputable section

/-- A208273: Composite numbers containing a digit 2.

Offset 1, canonical program `A208273.P479560889702569818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9049 terms. -/
def A208273 (n : ℕ) : ℤ :=
  A208273.P479560889702569818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9049 terms. -/
def A208273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208508.P9829869949086533994

`A208513(A056536(n+2))`
-/

namespace A208508.P9829869949086533994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208513 (A056536 (n + 2)).toNat

end

end A208508.P9829869949086533994

noncomputable section

/-- A208508: Triangle of coefficients of polynomials u(n,x) jointly generated with A208509; see the Formula section.

Offset 1, canonical program `A208508.P9829869949086533994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A208508 (n : ℕ) : ℤ :=
  A208508.P9829869949086533994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A208508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208754.P18207085302697048033

`A059268(A091018(n))*A208509(n+1)`
-/

namespace A208754.P18207085302697048033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A091018 n).toNat * A208509 (n + 1)

end

end A208754.P18207085302697048033

noncomputable section

/-- A208754: Triangle of coefficients of polynomials v(n,x) jointly generated with A208753; see the Formula section.

Offset 1, canonical program `A208754.P18207085302697048033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A208754 (n : ℕ) : ℤ :=
  A208754.P18207085302697048033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A208754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209061.P16956751986298849818

`eq[A049419(n+1), A278908(n+1)]+1`
-/

namespace A209061.P16956751986298849818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A209061.P16956751986298849818

noncomputable section

/-- A209061: Exponentially squarefree numbers.

Offset 1, canonical program `A209061.P16956751986298849818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9560 terms. -/
def A209061 (n : ℕ) : ℤ :=
  (A209061.P16956751986298849818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9560 terms. -/
def A209061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210197.P2839348897359410372

`A193845(A091018(n))`
-/

namespace A210197.P2839348897359410372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193845 (A091018 n).toNat

end

end A210197.P2839348897359410372

noncomputable section

/-- A210197: Triangle of coefficients of polynomials u(n,x) jointly generated with A210198; see the Formula section.

Offset 1, canonical program `A210197.P2839348897359410372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A210197 (n : ℕ) : ℤ :=
  A210197.P2839348897359410372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A210197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210441.P7469224644423689987

`filter[A010784(n+2), A005171(#)]`
-/

namespace A210441.P7469224644423689987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A210441.P7469224644423689987

noncomputable section

/-- A210441: Nonprime numbers with distinct decimal digits.

Offset 1, canonical program `A210441.P7469224644423689987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8913 terms. -/
def A210441 (n : ℕ) : ℤ :=
  A210441.P7469224644423689987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8913 terms. -/
def A210441.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A211275.P17918795795607819298

`A362059(n+1)-A181972(n+1)`
-/

namespace A211275.P17918795795607819298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362059 (n + 1) - A181972 (n + 1)

end

end A211275.P17918795795607819298

noncomputable section

/-- A211275: Number of integer pairs (x,y) such that 0 < x <= y <= n and x*y <= floor(n/2).

Offset 1, canonical program `A211275.P17918795795607819298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211275 (n : ℕ) : ℤ :=
  A211275.P17918795795607819298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211275.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A213343.P5626630658667177083

`A000267(n)/A122197(n+1)*A051288(n)`
-/

namespace A213343.P5626630658667177083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000267 n : ℚ) / (A122197 (n + 1) : ℚ) * (A051288 n : ℚ)

end

end A213343.P5626630658667177083

noncomputable section

/-- A213343: 1-quantum transitions in systems of N spin 1/2 particles, in columns by combination indices. Triangle read by rows, T(n, k) for n >= 1 and 0 <= k <= floor((n-1)/2).

Offset 1, canonical program `A213343.P5626630658667177083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7266 terms. -/
def A213343 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A213343.P5626630658667177083.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7266 terms. -/
def A213343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215155.P12284036453472301963

`∪[A100202(n+1), A215211(n+1)]`
-/

namespace A215155.P12284036453472301963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215155.P12284036453472301963

noncomputable section

/-- A215155: Primes congruent to {2, 3, 5, 7} mod 13.

Offset 1, canonical program `A215155.P12284036453472301963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215155 (n : ℕ) : ℤ :=
  (A215155.P12284036453472301963.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215303.P1432680102437036267

`∪[A093191(n+1), A215135(n+1)]`
-/

namespace A215303.P1432680102437036267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215303.P1432680102437036267

noncomputable section

/-- A215303: Primes congruent to {1, 2, 3, 4} mod 13.

Offset 1, canonical program `A215303.P1432680102437036267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215303 (n : ℕ) : ℤ :=
  (A215303.P1432680102437036267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215307.P10886749593874814575

`∪[A102732(n+1), A215135(n+1)]`
-/

namespace A215307.P10886749593874814575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215307.P10886749593874814575

noncomputable section

/-- A215307: Primes congruent to {1, 2, 3, 5} mod 13.

Offset 1, canonical program `A215307.P10886749593874814575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215307 (n : ℕ) : ℤ :=
  (A215307.P10886749593874814575.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215315.P1023930215791107352

`∪[A093191(n+1), A215103(n+1)]`
-/

namespace A215315.P1023930215791107352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215315.P1023930215791107352

noncomputable section

/-- A215315: Primes congruent to {2, 3, 4, 5} mod 13.

Offset 1, canonical program `A215315.P1023930215791107352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215315 (n : ℕ) : ℤ :=
  (A215315.P1023930215791107352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215379.P3185768796367872946

`∪[A215135(n+1), A215375(n+1)]`
-/

namespace A215379.P3185768796367872946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215379.P3185768796367872946

noncomputable section

/-- A215379: Primes congruent to {0, 1, 2, 3} mod 13.

Offset 1, canonical program `A215379.P3185768796367872946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215379 (n : ℕ) : ℤ :=
  (A215379.P3185768796367872946.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215383.P317313801147762073

`∪[A093350(n+1), A215135(n+1)]`
-/

namespace A215383.P317313801147762073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215383.P317313801147762073

noncomputable section

/-- A215383: Primes congruent to {1, 2, 3, 6} mod 13.

Offset 1, canonical program `A215383.P317313801147762073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215383 (n : ℕ) : ℤ :=
  (A215383.P317313801147762073.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A223456.P16215183360678606943

`filter[A154893(n+1), A066247(#)]`
-/

namespace A223456.P16215183360678606943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A223456.P16215183360678606943

noncomputable section

/-- A223456: Composite numbers whose number of proper divisors has a prime number of proper divisors.

Offset 1, canonical program `A223456.P16215183360678606943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5667 terms. -/
def A223456 (n : ℕ) : ℤ :=
  A223456.P16215183360678606943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5667 terms. -/
def A223456.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A224525.P7370046672617577056

`6*(n+1)²+18*(n+1)+3+6*A002541(n+1)`
-/

namespace A224525.P7370046672617577056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) ^ 2 + 18 * (n + 1) + 3 : ℤ) + 6 * A002541 (n + 1)

end

end A224525.P7370046672617577056

noncomputable section

/-- A224525: Number of idempotent 3 X 3 0..n matrices of rank 1.

Offset 1, canonical program `A224525.P7370046672617577056`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A224525 (n : ℕ) : ℤ :=
  A224525.P7370046672617577056.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A224525.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A226993.P10032319242996008587

`p?[A272799(n+1)]`
-/

namespace A226993.P10032319242996008587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226993.P10032319242996008587

noncomputable section

/-- A226993: Primes p such that 2p - 1 and 2p + 1 are squarefree.

Offset 1, canonical program `A226993.P10032319242996008587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 967 terms. -/
def A226993 (n : ℕ) : ℤ :=
  A226993.P10032319242996008587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 967 terms. -/
def A226993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228056.P11606014909607671869

`filter[A229125(n+1), A005171(#)]`
-/

namespace A228056.P11606014909607671869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A228056.P11606014909607671869

noncomputable section

/-- A228056: Numbers of the form p * m^2, where p is prime and m > 1.

Offset 1, canonical program `A228056.P11606014909607671869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4902 terms. -/
def A228056 (n : ℕ) : ℤ :=
  A228056.P11606014909607671869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4902 terms. -/
def A228056.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A228382.P1375136025872469721

`A005101(A316095(n+1))`
-/

namespace A228382.P1375136025872469721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A316095 (n + 1)).toNat

end

end A228382.P1375136025872469721

noncomputable section

/-- A228382: Abundant numbers that differ from the next abundant number by 3.

Offset 1, canonical program `A228382.P1375136025872469721`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A316095, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A228382 (n : ℕ) : ℤ :=
  A228382.P1375136025872469721.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A316095, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A228382.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A230095.P4209829393180644445

`filter[A230048(n+2), A354927(#)]`
-/

namespace A230095.P4209829393180644445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230048 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A230095.P4209829393180644445

noncomputable section

/-- A230095: Odious numbers (A000069) that are the product of exactly two distinct primes.

Offset 1, canonical program `A230095.P4209829393180644445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4157 terms. -/
def A230095 (n : ℕ) : ℤ :=
  A230095.P4209829393180644445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4157 terms. -/
def A230095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230294.P9485852536752022539

`∑[A095374(2*(n+1))-A095374(n+1)]`
-/

namespace A230294.P9485852536752022539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095374 (2 * (n + 1)) - A095374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230294.P9485852536752022539

noncomputable section

/-- A230294: a(n) = Sum_{i=1..n} d(4*i+1) - Sum_{i=1..n} d(2*i+1), where d(n) = A000005(n).

Offset 1, canonical program `A230294.P9485852536752022539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A230294 (n : ℕ) : ℤ :=
  A230294.P9485852536752022539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A230294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230542.P15479602818993290102

`lt[1, (n+2)%A000026(n+1)]+1`
-/

namespace A230542.P15479602818993290102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A000026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A230542.P15479602818993290102

noncomputable section

/-- A230542: Numbers that cannot be divided by their multiplicative projection (A000026).

Offset 1, canonical program `A230542.P15479602818993290102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A230542 (n : ℕ) : ℤ :=
  (A230542.P15479602818993290102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A230542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231720.P17111948023975065534

`A153880(n)+A073575(A048765(n+1))`
-/

namespace A231720.P17111948023975065534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 n + A073575 (A048765 (n + 1)).toNat

end

end A231720.P17111948023975065534

noncomputable section

/-- A231720: a(0)=1, after which, for any n uniquely written as du*u! + ... + d2*2! + d1*1! (each di in range 0..i), a(n) = (du+1)*(u+1)! + ... + (d2+1)*3! + (d1+1)*2! + 1; the natural numbers with their factorial base representation (A007623) shifted left one step and each digit incremented by one, converted back to decimal.

Offset 0, canonical program `A231720.P17111948023975065534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A231720 (n : ℕ) : ℤ :=
  A231720.P17111948023975065534.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A231720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233182.P15043265348537409818

`comp[(n+1)*A358769(n+1)]`
-/

namespace A233182.P15043265348537409818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A358769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A233182.P15043265348537409818

noncomputable section

/-- A233182: Numbers that are not the product of a prime and a square.

Offset 1, canonical program `A233182.P15043265348537409818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233182 (n : ℕ) : ℤ :=
  (A233182.P15043265348537409818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233865.P3025316243327147662

`record[(n+1)*A296212(A039653(n+1)+1)]`
-/

namespace A233865.P3025316243327147662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A296212 (A039653 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233865.P3025316243327147662

noncomputable section

/-- A233865: Numbers n such that sigma(sigma(n))+1 is prime.

Offset 1, canonical program `A233865.P3025316243327147662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3120 terms. -/
def A233865 (n : ℕ) : ℤ :=
  A233865.P3025316243327147662.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3120 terms. -/
def A233865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235062.P12767841605931254477

`A000178(n+1)/2^A174605(n+1)`
-/

namespace A235062.P12767841605931254477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000178 (n + 1) : ℚ) / (2 : ℚ) ^ (A174605 (n + 1) : ℤ)

end

end A235062.P12767841605931254477

noncomputable section

/-- A235062: Odd part of n-th superfactorial (A000178).

Offset 1, canonical program `A235062.P12767841605931254477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235062 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A235062.P12767841605931254477.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235062.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A235620.P8527257182076827454

`p?[A037477(A000040(n+1))]`
-/

namespace A235620.P8527257182076827454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235620.P8527257182076827454

noncomputable section

/-- A235620: Primes whose base-9 representation also is the base-8 representation of a prime.

Offset 1, canonical program `A235620.P8527257182076827454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A235620 (n : ℕ) : ℤ :=
  A235620.P8527257182076827454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A235620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239204.P16238939825905580694

`(A001003(n+2)-A001003(n+1))/2`
-/

namespace A239204.P16238939825905580694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 (n + 2) - A001003 (n + 1) : ℚ) / 2

end

end A239204.P16238939825905580694

noncomputable section

/-- A239204: Expansion of ((x-1)*sqrt(x^2-6*x+1)-x^2-4*x+1)/(8*x^3).

Offset 0, canonical program `A239204.P16238939825905580694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239204 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A239204.P16238939825905580694.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239204.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239681.P9271270151549184395

`A332219(A000040(n+1))`
-/

namespace A239681.P9271270151549184395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (A000040 (n + 1)).toNat

end

end A239681.P9271270151549184395

noncomputable section

/-- A239681: Primality of Mersenne number 2^prime(n)-1.

Offset 1, canonical program `A239681.P9271270151549184395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239681 (n : ℕ) : ℤ :=
  A239681.P9271270151549184395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239968.P9247355313622841393

`A062298(n+1)*A005171(n+1)`
-/

namespace A239968.P9247355313622841393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) * A005171 (n + 1)

end

end A239968.P9247355313622841393

noncomputable section

/-- A239968: a(n) = 0 unless n is a nonprime A018252(k) then a(n) = k.

Offset 1, canonical program `A239968.P9247355313622841393`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239968 (n : ℕ) : ℤ :=
  A239968.P9247355313622841393.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240521.P8578861033948740818

`A050376(n+1)*A050376(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A240521.P8578861033948740818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A050376 (n + 2)

end

end A240521.P8578861033948740818

noncomputable section

/-- A240521: a(n) = A050376(n)*A050376(n+1) where A050376(n) is the n-th number of the form p^(2^k) with p is prime and k >= 0.

Offset 1, canonical program `A240521.P8578861033948740818`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240521 (n : ℕ) : ℤ :=
  A240521.P8578861033948740818.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240536.P362324169712596171

`A050376(n+1)*A050376(n+4)`
-/

namespace A240536.P362324169712596171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A050376 (n + 4)

end

end A240536.P362324169712596171

noncomputable section

/-- A240536: S_9 sequence in partition of integers > 1 described in A240521.

Offset 1, canonical program `A240536.P362324169712596171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240536 (n : ℕ) : ℤ :=
  A240536.P362324169712596171.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240571.P12608565179818551599

`xor(A185013(n), A235496(n))`
-/

namespace A240571.P12608565179818551599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185013 n) (A235496 n)

end

end A240571.P12608565179818551599

noncomputable section

/-- A240571: a(n) = round(n^n/n!) where round(1/2)=0.

Offset 0, canonical program `A240571.P12608565179818551599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A240571 (n : ℕ) : ℤ :=
  A240571.P12608565179818551599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A240571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241024.P7090105526242822996

`A050376(n+1)*A050376(n+3)*A050376(n+4)`
-/

namespace A241024.P7090105526242822996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A050376 (n + 3) * A050376 (n + 4)

end

end A241024.P7090105526242822996

noncomputable section

/-- A241024: S_11 sequence in partition of integers > 1 described in A240521.

Offset 1, canonical program `A241024.P7090105526242822996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241024 (n : ℕ) : ℤ :=
  A241024.P7090105526242822996.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A241025.P8181339160921596088

`A050376(n+1)*A050376(n+2)*A050376(n+4)`
-/

namespace A241025.P8181339160921596088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A050376 (n + 2) * A050376 (n + 4)

end

end A241025.P8181339160921596088

noncomputable section

/-- A241025: S_13 sequence in partition of integers > 1 described in A240521.

Offset 1, canonical program `A241025.P8181339160921596088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241025 (n : ℕ) : ℤ :=
  A241025.P8181339160921596088.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241025.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243067.P1645064430872176748

`n+1-(1+A000788(A100922(n)-1))`
-/

namespace A243067.P1645064430872176748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (1 + A000788 (A100922 n - 1).toNat)

end

end A243067.P1645064430872176748

noncomputable section

/-- A243067: Integers from 0 to A000120(n)-1 followed by integers from 0 to A000120(n+1)-1 and so on, starting with n=1.

Offset 1, canonical program `A243067.P1645064430872176748`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, A100922, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243067 (n : ℕ) : ℤ :=
  A243067.P1645064430872176748.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, A100922, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243067.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244218.P10883957659016357263

`A244219(n+1)-1`
-/

namespace A244218.P10883957659016357263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244219 (n + 1) - 1

end

end A244218.P10883957659016357263

noncomputable section

/-- A244218: The ending points of runs of consecutive terms with the same parity in A014418 (n represented in Greedy Catalan Base).

Offset 0, canonical program `A244218.P10883957659016357263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4121 terms. -/
def A244218 (n : ℕ) : ℤ :=
  A244218.P10883957659016357263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4121 terms. -/
def A244218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245365.P4902612867877700399

`A000326(A114439(n+1))`
-/

namespace A245365.P4902612867877700399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A114439 (n + 1)).toNat

end

end A245365.P4902612867877700399

noncomputable section

/-- A245365: Semiprimes of the form n*(3*n-1)/2.

Offset 1, canonical program `A245365.P4902612867877700399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A245365 (n : ℕ) : ℤ :=
  A245365.P4902612867877700399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A245365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246348.P15441118046010307260

`a(A066136(n+1)-1)+1` with `a(0)=1`
-/

namespace A246348.P15441118046010307260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A066136 (n + 1) - 1).toNat + 1

end

end A246348.P15441118046010307260

noncomputable section

/-- A246348: a(1)=1, a(p_n) = 1 + a(n), a(c_n) = 1 + a(n), where p_n = n-th prime = A000040(n), c_n = n-th composite number = A002808(n); Also binary width of terms of A135141.

Offset 1, canonical program `A246348.P15441118046010307260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246348 (n : ℕ) : ℤ :=
  (A246348.P15441118046010307260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246408.P3496905763118372023

`A004526(A246411(2*n+1))%A000290(A000217(n+9))`
-/

namespace A246408.P3496905763118372023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (A246411 (2 * n + 1)).toNat) (A000290 (A000217 (n + 9)).toNat)

end

end A246408.P3496905763118372023

noncomputable section

/-- A246408: Nonnegative integers k satisfying sec(k) < sec(k+1) > sec(k+2).

Offset 1, canonical program `A246408.P3496905763118372023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A246408 (n : ℕ) : ℤ :=
  A246408.P3496905763118372023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A246408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246956.P14999203751813535719

`2^n*A014210(n+1)`
-/

namespace A246956.P14999203751813535719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A014210 (n + 1)

end

end A246956.P14999203751813535719

noncomputable section

/-- A246956: Numbers a(n) = 2^(n-1) * f(n), where n >= 1 and f(n) is the smallest prime number larger than 2^n (A014210).

Offset 1, canonical program `A246956.P14999203751813535719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A246956 (n : ℕ) : ℤ :=
  A246956.P14999203751813535719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A246956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248663.P4155660683917625723

`A048675(A007913(n+1))`
-/

namespace A248663.P4155660683917625723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A007913 (n + 1)).toNat

end

end A248663.P4155660683917625723

noncomputable section

/-- A248663: Binary encoding of the prime factors of the squarefree part of n.

Offset 1, canonical program `A248663.P4155660683917625723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248663 (n : ℕ) : ℤ :=
  A248663.P4155660683917625723.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248792.P3751142704019262655

`eq[1, A296211(n+1)]+1`
-/

namespace A248792.P3751142704019262655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296211 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248792.P3751142704019262655

noncomputable section

/-- A248792: Numbers k such that sigma(k) - 1 is a prime p.

Offset 1, canonical program `A248792.P3751142704019262655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248792 (n : ℕ) : ℤ :=
  (A248792.P3751142704019262655.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249139.P9059059770418363528

`A073370(A091018(n+1))`
-/

namespace A249139.P9059059770418363528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A091018 (n + 1)).toNat

end

end A249139.P9059059770418363528

noncomputable section

/-- A249139: Triangular array read by rows: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

Offset 0, canonical program `A249139.P9059059770418363528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2651 terms. -/
def A249139 (n : ℕ) : ℤ :=
  A249139.P9059059770418363528.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2651 terms. -/
def A249139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249152.P735864470480457739

`A174605(n)+A187059(n)`
-/

namespace A249152.P735864470480457739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174605 n + A187059 n

end

end A249152.P735864470480457739

noncomputable section

/-- A249152: Exponent of 2 in the hyperfactorials: a(n) = A007814(A002109(n)).

Offset 0, canonical program `A249152.P735864470480457739`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174605, A187059, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249152 (n : ℕ) : ℤ :=
  A249152.P735864470480457739.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174605, A187059, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249152.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249303.P140894087376217444

`A101950(A091018(n+1))`
-/

namespace A249303.P140894087376217444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101950 (A091018 (n + 1)).toNat

end

end A249303.P140894087376217444

noncomputable section

/-- A249303: Triangular array: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

Offset 0, canonical program `A249303.P140894087376217444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2651 terms. -/
def A249303 (n : ℕ) : ℤ :=
  A249303.P140894087376217444.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2651 terms. -/
def A249303.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A256317.P11855813758149970793

`A256540(n)-A256539(n)`
-/

namespace A256317.P11855813758149970793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256540 n - A256539 n

end

end A256317.P11855813758149970793

noncomputable section

/-- A256317: Number of partitions of 4n into exactly 6 parts.

Offset 0, canonical program `A256317.P11855813758149970793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256317 (n : ℕ) : ℤ :=
  A256317.P11855813758149970793.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258776.P5594703475324302981

`A258774(A258775(n+1))`
-/

namespace A258776.P5594703475324302981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258774 (A258775 (n + 1)).toNat

end

end A258776.P5594703475324302981

noncomputable section

/-- A258776: Primes in A258774.

Offset 1, canonical program `A258776.P5594703475324302981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258775, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258776 (n : ℕ) : ℤ :=
  A258776.P5594703475324302981.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258775, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258776.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259186.P17881752095375684835

`A259184(A259185(n+1))`
-/

namespace A259186.P17881752095375684835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259184 (A259185 (n + 1)).toNat

end

end A259186.P17881752095375684835

noncomputable section

/-- A259186: Primes in A259184.

Offset 1, canonical program `A259186.P17881752095375684835`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259186 (n : ℕ) : ℤ :=
  A259186.P17881752095375684835.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259186.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259676.P16720077974617783061

`A000566(A114517(n+1))`
-/

namespace A259676.P16720077974617783061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A114517 (n + 1)).toNat

end

end A259676.P16720077974617783061

noncomputable section

/-- A259676: Heptagonal numbers (A000566) that are semiprimes (A001358).

Offset 1, canonical program `A259676.P16720077974617783061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A259676 (n : ℕ) : ℤ :=
  A259676.P16720077974617783061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A259676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259978.P11955456678990968788

`2*A275770(n+1)+1`
-/

namespace A259978.P11955456678990968788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275770 (n + 1) + 1

end

end A259978.P11955456678990968788

noncomputable section

/-- A259978: Terms in A053177 that are relatively prime to 3.

Offset 1, canonical program `A259978.P11955456678990968788`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259978 (n : ℕ) : ℤ :=
  A259978.P11955456678990968788.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259978.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A261711.P12008416668888732034

`A207823(A091018(n))`
-/

namespace A261711.P12008416668888732034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207823 (A091018 n).toNat

end

end A261711.P12008416668888732034

noncomputable section

/-- A261711: Triangle read by rows: T(n,k) is the number of words over alphabet {0,1,2,3} having exactly k occurrences of the string 01, where n>=0 and k>=0.

Offset 0, canonical program `A261711.P12008416668888732034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A261711 (n : ℕ) : ℤ :=
  A261711.P12008416668888732034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A261711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262685.P16456492644422870268

`A262683(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A262685.P16456492644422870268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262683 (n + 1) + a (n - 1)

end

end A262685.P16456492644422870268

noncomputable section

/-- A262685: Least monotonic left inverse for A182859.

Offset 1, canonical program `A262685.P16456492644422870268`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262685 (n : ℕ) : ℤ :=
  A262685.P16456492644422870268.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262726.P18314210768648216299

`A262780(2*n+1)`
-/

namespace A262726.P18314210768648216299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262780 (2 * n + 1)

end

end A262726.P18314210768648216299

noncomputable section

/-- A262726: Expansion of phi(-x) * psi(x^6) in powers of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A262726.P18314210768648216299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262780, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262726 (n : ℕ) : ℤ :=
  A262726.P18314210768648216299.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262780, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262726.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268066.P13943974798166471358

`filter[A016742(n+1), A322980(#)]`
-/

namespace A268066.P13943974798166471358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P13943974798166471358

noncomputable section

/-- A268066: Even numbers coprime to the number of their divisors.

Offset 1, canonical program `A268066.P13943974798166471358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A268066 (n : ℕ) : ℤ :=
  A268066.P13943974798166471358.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A268066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268335.P2949356212945410865

`eq[1, A295316(n+1)]+1`
-/

namespace A268335.P2949356212945410865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268335.P2949356212945410865

noncomputable section

/-- A268335: Exponentially odd numbers.

Offset 1, canonical program `A268335.P2949356212945410865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268335 (n : ℕ) : ℤ :=
  (A268335.P2949356212945410865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271568.P11000683878390668970

`filter[A050704(n+2), A354927(#)]`
-/

namespace A271568.P11000683878390668970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A271568.P11000683878390668970

noncomputable section

/-- A271568: Squarefree semiprimes n such that phi(n) - 1 is prime.

Offset 1, canonical program `A271568.P11000683878390668970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4674 terms. -/
def A271568 (n : ℕ) : ℤ :=
  A271568.P11000683878390668970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4674 terms. -/
def A271568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274555.P2558607527214522533

`∩[A140612(n+1), A000415(n+5)]`
-/

namespace A274555.P2558607527214522533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274555.P2558607527214522533

noncomputable section

/-- A274555: Nonsquare n such that n*(n+1)/2 is the sum of two nonzero squares.

Offset 1, canonical program `A274555.P2558607527214522533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2067 terms. -/
def A274555 (n : ℕ) : ℤ :=
  (A274555.P2558607527214522533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2067 terms. -/
def A274555.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A276254.P9589331955149899379

`A069513(2*A292264(n+1))`
-/

namespace A276254.P9589331955149899379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (2 * A292264 (n + 1)).toNat

end

end A276254.P9589331955149899379

noncomputable section

/-- A276254: With respect to the dictionary ordering of words over the alphabet {a,b}, i.e., e,a,b,aa,ab,ba,bb,aaa,..., the sequence is the characteristic function of the language of words that have no consecutive b's.

Offset 0, canonical program `A276254.P9589331955149899379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276254 (n : ℕ) : ℤ :=
  A276254.P9589331955149899379.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276984.P12000769543562231146

`(n+1)*(n+2)*(2*(n+1)+1)/6-A001157(n+1)`
-/

namespace A276984.P12000769543562231146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (2 * (n + 1) + 1) : ℚ) / 6 - (A001157 (n + 1) : ℚ)

end

end A276984.P12000769543562231146

noncomputable section

/-- A276984: Sum of squares of numbers less than n that do not divide n.

Offset 1, canonical program `A276984.P12000769543562231146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276984 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276984.P12000769543562231146.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278403.P2901026274186559840

`(A001158(n+1)+A001157(n+1))/2`
-/

namespace A278403.P2901026274186559840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) + A001157 (n + 1) : ℚ) / 2

end

end A278403.P2901026274186559840

noncomputable section

/-- A278403: a(n) = Sum_{d|n} d^2 * (d+1)/2.

Offset 1, canonical program `A278403.P2901026274186559840`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278403 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A278403.P2901026274186559840.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278536.P10927879092705534477

`A273324(n+2)-A273324(n+1)`
-/

namespace A278536.P10927879092705534477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273324 (n + 2) - A273324 (n + 1)

end

end A278536.P10927879092705534477

noncomputable section

/-- A278536: First differences of A273324.

Offset 1, canonical program `A278536.P10927879092705534477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A273324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278536 (n : ℕ) : ℤ :=
  A278536.P10927879092705534477.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A273324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278754.P1604936635740070644

`floor(A288661(n+1)/10)`
-/

namespace A278754.P1604936635740070644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A288661 (n + 1) : ℚ) / 10⌋

end

end A278754.P1604936635740070644

noncomputable section

/-- A278754: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 65", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A278754.P1604936635740070644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A278754 (n : ℕ) : ℤ :=
  A278754.P1604936635740070644.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A278754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283237.P17759055040848509895

`A001157(3*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283237.P17759055040848509895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (3 * (n + 1))

end

end A283237.P17759055040848509895

noncomputable section

/-- A283237: a(n) = sigma_2(3*n).

Offset 1, canonical program `A283237.P17759055040848509895`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283237 (n : ℕ) : ℤ :=
  A283237.P17759055040848509895.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283237.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283611.P7753238100296088695

`A007095(comp[A037477(n)])`
-/

namespace A283611.P7753238100296088695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A283611.P7753238100296088695

noncomputable section

/-- A283611: Numbers whose largest decimal digit is 8.

Offset 1, canonical program `A283611.P7753238100296088695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A283611 (n : ℕ) : ℤ :=
  A283611.P7753238100296088695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A283611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284388.P4360297033908615493

`A284391(a(a(n-1))+n)` with `a(0)=0, a(1)=0`
-/

namespace A284388.P4360297033908615493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A284391 (a (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A284388.P4360297033908615493

noncomputable section

/-- A284388: 0-limiting word of the morphism 0 -> 1, 1 -> 001.

Offset 1, canonical program `A284388.P4360297033908615493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284388 (n : ℕ) : ℤ :=
  A284388.P4360297033908615493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284763.P1069890231272640625

`eq[1, A008833(A000026(n+1))]+1`
-/

namespace A284763.P1069890231272640625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A000026 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284763.P1069890231272640625

noncomputable section

/-- A284763: Numbers n such that A279513(n) is squarefree.

Offset 1, canonical program `A284763.P1069890231272640625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7335 terms. -/
def A284763 (n : ℕ) : ℤ :=
  (A284763.P1069890231272640625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7335 terms. -/
def A284763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284790.P18153554382833569304

`A285972(n+1)+A285970(n+1)`
-/

namespace A284790.P18153554382833569304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285972 (n + 1) + A285970 (n + 1)

end

end A284790.P18153554382833569304

noncomputable section

/-- A284790: Positions of 0 in A284789; complement of A284791.

Offset 1, canonical program `A284790.P18153554382833569304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284790 (n : ℕ) : ℤ :=
  A284790.P18153554382833569304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285094.P16350561640069672631

`A004428(A061430(n+1))`
-/

namespace A285094.P16350561640069672631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 (A061430 (n + 1)).toNat

end

end A285094.P16350561640069672631

noncomputable section

/-- A285094: Corresponding values of geometric means of digits of numbers from A061430.

Offset 0, canonical program `A285094.P16350561640069672631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2833 terms. -/
def A285094 (n : ℕ) : ℤ :=
  A285094.P16350561640069672631.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2833 terms. -/
def A285094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285335.P14240308816044716378

`A048675(2*(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285335.P14240308816044716378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048675 (2 * (n + 1) - 1) : ℚ) / 2

end

end A285335.P14240308816044716378

noncomputable section

/-- A285335: Odd bisection of A048675 divided by two: a(n) = A048675((2*n)-1)/2.

Offset 1, canonical program `A285335.P14240308816044716378`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285335 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285335.P14240308816044716378.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285678.P5257345093601625963

`A188016(n+1)+or(1, n-1)`
-/

namespace A285678.P5257345093601625963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1) + Int.lor 1 ((n : ℤ) - 1)

end

end A285678.P5257345093601625963

noncomputable section

/-- A285678: Positions of 0 in A285677.

Offset 1, canonical program `A285678.P5257345093601625963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285678 (n : ℕ) : ℤ :=
  A285678.P5257345093601625963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285788.P13809897660344118351

`filter[A038566(n+1), A005171(#)]`
-/

namespace A285788.P13809897660344118351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A285788.P13809897660344118351

noncomputable section

/-- A285788: Irregular triangle T(n,m): nonprime 1 <= k <= n such that n and k are coprime.

Offset 1, canonical program `A285788.P13809897660344118351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285788 (n : ℕ) : ℤ :=
  A285788.P13809897660344118351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285959.P12122029514880620375

`A285961(n+1)-A104248(n+1)`
-/

namespace A285959.P12122029514880620375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285961 (n + 1) - A104248 (n + 1)

end

end A285959.P12122029514880620375

noncomputable section

/-- A285959: Positions of 1 in A285957; complement of A285958.

Offset 1, canonical program `A285959.P12122029514880620375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285959 (n : ℕ) : ℤ :=
  A285959.P12122029514880620375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286693.P502539275683704723

`∑[A286991(n+1)%3]+n`
-/

namespace A286693.P502539275683704723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286991 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A286693.P502539275683704723

noncomputable section

/-- A286693: Positions of 1 in A286691; complement of A286692.

Offset 1, canonical program `A286693.P502539275683704723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286693 (n : ℕ) : ℤ :=
  A286693.P502539275683704723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287073.P14749507163745126481

`A287074(A287106(n+1))-A287106(n+1)`
-/

namespace A287073.P14749507163745126481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287074 (A287106 (n + 1)).toNat - A287106 (n + 1)

end

end A287073.P14749507163745126481

noncomputable section

/-- A287073: Positions of 0 in A287072.

Offset 1, canonical program `A287073.P14749507163745126481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4302 terms. -/
def A287073 (n : ℕ) : ℤ :=
  A287073.P14749507163745126481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4302 terms. -/
def A287073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287117.P12363309979779094861

`eq[n, n*a(A292596(n))]` with `a(0)=1`
-/

namespace A287117.P12363309979779094861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  n * f2 (A292596 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287117.P12363309979779094861

noncomputable section

/-- A287117: Numbers with no odd prime binary proper prefixes.

Offset 1, canonical program `A287117.P12363309979779094861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A287117 (n : ℕ) : ℤ :=
  (A287117.P12363309979779094861.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A287117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289653.P13128161815598754898

`A289652(n)+A185013(n)`
-/

namespace A289653.P13128161815598754898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289652 n + A185013 n

end

end A289653.P13128161815598754898

noncomputable section

/-- A289653: Catalan numbers - 2 (A120304) with first four terms changed to 1,1,1,4.

Offset 1, canonical program `A289653.P13128161815598754898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289653 (n : ℕ) : ℤ :=
  A289653.P13128161815598754898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289654.P3590409810907321973

`A289652(n)+A185014(n)`
-/

namespace A289654.P3590409810907321973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289652 n + A185014 n

end

end A289654.P3590409810907321973

noncomputable section

/-- A289654: Related to number of mesh patterns of length 2 that avoid the pattern 321.

Offset 1, canonical program `A289654.P3590409810907321973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289654 (n : ℕ) : ℤ :=
  A289654.P3590409810907321973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290254.P4242582675085589106

`A035928(n%a(n-1))/2` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A290254.P4242582675085589106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  (A035928 (Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1)))).toNat : ℚ) / 2

end

end A290254.P4242582675085589106

noncomputable section

/-- A290254: The viabin numbers of the self-conjugate integer partitions.

Offset 1, canonical program `A290254.P4242582675085589106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290254 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A290254.P4242582675085589106.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292509.P11294046245130525337

`A132763(A300473(n+1))+1`
-/

namespace A292509.P11294046245130525337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132763 (A300473 (n + 1)).toNat + 1

end

end A292509.P11294046245130525337

noncomputable section

/-- A292509: Primes of the form k^2 + 23*k + 23.

Offset 1, canonical program `A292509.P11294046245130525337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3444 terms. -/
def A292509 (n : ℕ) : ℤ :=
  A292509.P11294046245130525337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3444 terms. -/
def A292509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294107.P14015073582122171902

`A185013(n)+A055679(n+1)`
-/

namespace A294107.P14015073582122171902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 n + A055679 (n + 1)

end

end A294107.P14015073582122171902

noncomputable section

/-- A294107: Maximum of the number of primes appearing among the smaller parts and the number of primes appearing among the larger parts of the partitions of n into two parts.

Offset 1, canonical program `A294107.P14015073582122171902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294107 (n : ℕ) : ℤ :=
  A294107.P14015073582122171902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297841.P6793829861847375659

`2*A001157(n+1)-A297792(n+1)`
-/

namespace A297841.P6793829861847375659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001157 (n + 1) - A297792 (n + 1)

end

end A297841.P6793829861847375659

noncomputable section

/-- A297841: a(n) = Sum_{d|n} max(d, n/d)^2.

Offset 1, canonical program `A297841.P6793829861847375659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A297792, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297841 (n : ℕ) : ℤ :=
  A297841.P6793829861847375659.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A297792, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297841.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A301677.P2251903067479057057

`∑[A301676(n)]`
-/

namespace A301677.P2251903067479057057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301677.P2251903067479057057

noncomputable section

/-- A301677: Partial sums of A301676.

Offset 0, canonical program `A301677.P2251903067479057057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2518 terms. -/
def A301677 (n : ℕ) : ℤ :=
  A301677.P2251903067479057057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2518 terms. -/
def A301677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301896.P13543893688146725157

`A059015(n)*A000788(n)`
-/

namespace A301896.P13543893688146725157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059015 n * A000788 n

end

end A301896.P13543893688146725157

noncomputable section

/-- A301896: a(n) = product of total number of 0's and total number of 1's in binary expansions of 0, ..., n.

Offset 0, canonical program `A301896.P13543893688146725157`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, A059015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A301896 (n : ℕ) : ℤ :=
  A301896.P13543893688146725157.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, A059015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A301896.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A302975.P17848082813074921203

`A137926(n+1)^Δ[A006218(n)]`
-/

namespace A302975.P17848082813074921203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137926 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A302975.P17848082813074921203

noncomputable section

/-- A302975: a(n) = denominator of tau(n)^n / n^tau(n).

Offset 1, canonical program `A302975.P17848082813074921203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2729 terms. -/
def A302975 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A302975.P17848082813074921203.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2729 terms. -/
def A302975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303384.P10676162683554511722

`A064987(n+1)-A001157(n+1)`
-/

namespace A303384.P10676162683554511722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 1) - A001157 (n + 1)

end

end A303384.P10676162683554511722

noncomputable section

/-- A303384: Total area of all rectangles with dimensions s and t where s | t, n = s + t and s <= t.

Offset 1, canonical program `A303384.P10676162683554511722`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A303384 (n : ℕ) : ℤ :=
  A303384.P10676162683554511722.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A303384.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308047.P5773726846185413917

`A001157(n+1)+2*A000203(n+1)`
-/

namespace A308047.P5773726846185413917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + 2 * A000203 (n + 1)

end

end A308047.P5773726846185413917

noncomputable section

/-- A308047: Sum of subgroup indices of dihedral group, Sum_{H <= D(n)} [D(n):H].

Offset 1, canonical program `A308047.P5773726846185413917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308047 (n : ℕ) : ℤ :=
  A308047.P5773726846185413917.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308047.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A310456.P16640342773671596994

`A310408(n)+Δ[A011864(n)]`
-/

namespace A310456.P16640342773671596994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310408 n + (f1 (n + 1) - f1 n)

end

end A310456.P16640342773671596994

noncomputable section

/-- A310456: Coordination sequence Gal.6.322.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310456.P16640342773671596994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A310456 (n : ℕ) : ℤ :=
  A310456.P16640342773671596994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A310456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311287.P13191711119088898085

`A008574(n)+A313694(n)-A313683(n)`
-/

namespace A311287.P13191711119088898085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A313694 n - A313683 n)

end

end A311287.P13191711119088898085

noncomputable section

/-- A311287: Coordination sequence Gal.4.50.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311287.P13191711119088898085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A311287 (n : ℕ) : ℤ :=
  A311287.P13191711119088898085.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A311287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311332.P5397505913384543494

`A314688(n)-A046978(A004396(n))`
-/

namespace A311332.P5397505913384543494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314688 n - A046978 (A004396 n).toNat

end

end A311332.P5397505913384543494

noncomputable section

/-- A311332: Coordination sequence Gal.6.120.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311332.P5397505913384543494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A311332 (n : ℕ) : ℤ :=
  A311332.P5397505913384543494.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A311332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311404.P16929994779130442920

`A313119(n)-A313078(n)%A004277(n)`
-/

namespace A311404.P16929994779130442920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313119 n - Int.tmod (A313078 n) (A004277 n)

end

end A311404.P16929994779130442920

noncomputable section

/-- A311404: Coordination sequence Gal.5.60.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311404.P16929994779130442920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2388 terms. -/
def A311404 (n : ℕ) : ℤ :=
  A311404.P16929994779130442920.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2388 terms. -/
def A311404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311430.P10392638198592284384

`A314670(n)-A134667(A004525(n))`
-/

namespace A311430.P10392638198592284384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314670 n - A134667 (A004525 n).toNat

end

end A311430.P10392638198592284384

noncomputable section

/-- A311430: Coordination sequence Gal.6.240.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311430.P10392638198592284384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2596 terms. -/
def A311430 (n : ℕ) : ℤ :=
  A311430.P10392638198592284384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2596 terms. -/
def A311430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188015.P4944563327904613526

`comp[A188016(n+1)-1]+1`
-/

namespace A188015.P4944563327904613526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188015.P4944563327904613526

noncomputable section

/-- A188015: Positions of 0 in A188014; complement of A188016.

Offset 1, canonical program `A188015.P4944563327904613526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188015 (n : ℕ) : ℤ :=
  (A188015.P4944563327904613526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214677.P15757122612619513849

`A007094(A255805(n+1)-1)+1`
-/

namespace A214677.P15757122612619513849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A255805 (n + 1) - 1).toNat + 1

end

end A214677.P15757122612619513849

noncomputable section

/-- A214677: a(n) = n represented in bijective base-7 numeration.

Offset 1, canonical program `A214677.P15757122612619513849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6042 terms. -/
def A214677 (n : ℕ) : ℤ :=
  A214677.P15757122612619513849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6042 terms. -/
def A214677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310533.P10206175859937310339

`2*A314253(n)-A008458(n)`
-/

namespace A310533.P10206175859937310339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314253 n - A008458 n

end

end A310533.P10206175859937310339

noncomputable section

/-- A310533: Coordination sequence Gal.6.334.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310533.P10206175859937310339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1966 terms. -/
def A310533 (n : ℕ) : ℤ :=
  A310533.P10206175859937310339.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1966 terms. -/
def A310533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181117.P3556212015790333691

`lcm(A046644(A010766(n+1)), A114002(n))`
-/

namespace A181117.P3556212015790333691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046644 (A010766 (n + 1)).toNat) (A114002 n)

end

end A181117.P3556212015790333691

noncomputable section

/-- A181117: Triangle T(n,k) read by rows. T(n,k) = A046644(A126988).

Offset 1, canonical program `A181117.P3556212015790333691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181117 (n : ℕ) : ℤ :=
  (A181117.P3556212015790333691.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181294.P10170045756962490790

`2*(A181290(n)-A054146(n))`
-/

namespace A181294.P10170045756962490790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181290 n - A054146 n)

end

end A181294.P10170045756962490790

noncomputable section

/-- A181294: Number of 0's in all 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

Offset 0, canonical program `A181294.P10170045756962490790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181294 (n : ℕ) : ℤ :=
  A181294.P10170045756962490790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182105.P6910077357457844647

`2^(A082850(n+1)-1)`
-/

namespace A182105.P6910077357457844647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A082850 (n + 1) - 1 : ℤ)

end

end A182105.P6910077357457844647

noncomputable section

/-- A182105: Number of elements merged by bottom-up merge sort.

Offset 1, canonical program `A182105.P6910077357457844647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182105 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A182105.P6910077357457844647.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182105.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185059.P3995956921967741887

`A010815(7*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185059.P3995956921967741887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (7 * n)

end

end A185059.P3995956921967741887

noncomputable section

/-- A185059: a(n) = A010815(7*n).

Offset 0, canonical program `A185059.P3995956921967741887`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185059 (n : ℕ) : ℤ :=
  A185059.P3995956921967741887.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185059.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185175.P11623372724660659512

`A010815(7*n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185175.P11623372724660659512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (7 * n + 5)

end

end A185175.P11623372724660659512

noncomputable section

/-- A185175: a(n) = A010815(7*n + 5).

Offset 0, canonical program `A185175.P11623372724660659512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185175 (n : ℕ) : ℤ :=
  A185175.P11623372724660659512.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185175.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185295.P11341972992585939006

`-A010815(7*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185295.P11341972992585939006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010815 (7 * n + 1)

end

end A185295.P11341972992585939006

noncomputable section

/-- A185295: a(n) = - A010815(7*n + 1).

Offset 0, canonical program `A185295.P11341972992585939006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185295 (n : ℕ) : ℤ :=
  A185295.P11341972992585939006.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189120.P13109880559421340591

`A001157(n+1)-A005063(n+1)`
-/

namespace A189120.P13109880559421340591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - A005063 (n + 1)

end

end A189120.P13109880559421340591

noncomputable section

/-- A189120: Sum of squares of nonprime divisors of n.

Offset 1, canonical program `A189120.P13109880559421340591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A005063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189120 (n : ℕ) : ℤ :=
  A189120.P13109880559421340591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A005063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189120.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A206773.P1039150232301474807

`A001065(n+1)-A105221(n+1)`
-/

namespace A206773.P1039150232301474807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A105221 (n + 1)

end

end A206773.P1039150232301474807

noncomputable section

/-- A206773: Sum of the nonprime proper divisors (or nonprime aliquot parts) of n.

Offset 1, canonical program `A206773.P1039150232301474807`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206773 (n : ℕ) : ℤ :=
  A206773.P1039150232301474807.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206958.P12180534930543884821

`(1-and(2, n))*A010815(n)`
-/

namespace A206958.P12180534930543884821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A010815 n

end

end A206958.P12180534930543884821

noncomputable section

/-- A206958: Expansion of f(x^5, -x^7) - x * f(-x, x^11) in powers of x where f() is Ramanujan's two-variable theta function.

Offset 0, canonical program `A206958.P12180534930543884821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206958 (n : ℕ) : ℤ :=
  A206958.P12180534930543884821.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215020.P5100721215331730801

`A082850(n+1)-1`
-/

namespace A215020.P5100721215331730801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (n + 1) - 1

end

end A215020.P5100721215331730801

noncomputable section

/-- A215020: a(n) = log_2( A182105(n) ).

Offset 1, canonical program `A215020.P5100721215331730801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215020 (n : ℕ) : ℤ :=
  A215020.P5100721215331730801.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215020.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218171.P11355719928321184254

`A010815(2*n)`
-/

namespace A218171.P11355719928321184254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (2 * n)

end

end A218171.P11355719928321184254

noncomputable section

/-- A218171: Expansion of f(x^11, x^13) - x * f(x^5, x^19) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A218171.P11355719928321184254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218171 (n : ℕ) : ℤ :=
  A218171.P11355719928321184254.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218173.P4391662376202428754

`-A010815(2*n+1)`
-/

namespace A218173.P4391662376202428754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010815 (2 * n + 1)

end

end A218173.P4391662376202428754

noncomputable section

/-- A218173: Expansion of f(x^7, x^17) - x^2 * f(x, x^23) in powers of x where f(,) is Ramanujan's two-variable theta function.

Offset 0, canonical program `A218173.P4391662376202428754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218173 (n : ℕ) : ℤ :=
  A218173.P4391662376202428754.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218173.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218622.P5261897689198646449

`A001316(A184616(n))%4`
-/

namespace A218622.P5261897689198646449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 (A184616 n).toNat) 4

end

end A218622.P5261897689198646449

noncomputable section

/-- A218622: a(n) = A183161(n) (mod 4), n>=0.

Offset 0, canonical program `A218622.P5261897689198646449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3790 terms. -/
def A218622 (n : ℕ) : ℤ :=
  A218622.P5261897689198646449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3790 terms. -/
def A218622.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A227346.P17862458044584444554

`A023201(n+2)-A023201(n+1)`
-/

namespace A227346.P17862458044584444554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 2) - A023201 (n + 1)

end

end A227346.P17862458044584444554

noncomputable section

/-- A227346: Distance between consecutive pairs of primes differing by 6 (p, p+6).

Offset 1, canonical program `A227346.P17862458044584444554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227346 (n : ℕ) : ℤ :=
  A227346.P17862458044584444554.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A231088.P9425386829451350861

`A231086(eq[2, A231086(n+2)-A231086(n+1)]+1)`
-/

namespace A231088.P9425386829451350861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231086 (n + 2) - A231086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A231088.P9425386829451350861

noncomputable section

/-- A231088: Initial members of abundant triples, i.e., values of k such that (k, k+2, k+4) are all abundant numbers.

Offset 1, canonical program `A231088.P9425386829451350861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1920 terms. -/
def A231088 (n : ℕ) : ℤ :=
  A231088.P9425386829451350861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1920 terms. -/
def A231088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231204.P13163929619996957332

`A230877(n)-A000120(n)`
-/

namespace A231204.P13163929619996957332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n - A000120 n

end

end A231204.P13163929619996957332

noncomputable section

/-- A231204: If n = Sum_{i=0..m} c(i)*2^i, c(i) = 0 or 1, then a(n) = Sum_{i=0..m} (m-i)*c(i).

Offset 0, canonical program `A231204.P13163929619996957332`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A231204 (n : ℕ) : ℤ :=
  A231204.P13163929619996957332.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A231204.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A237283.P6867739282526891379

`p?[A096477(n+1)]`
-/

namespace A237283.P6867739282526891379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237283.P6867739282526891379

noncomputable section

/-- A237283: Primes p with prime(prime(p)) + 2 also prime.

Offset 1, canonical program `A237283.P6867739282526891379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A237283 (n : ℕ) : ℤ :=
  A237283.P6867739282526891379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A237283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242493.P16512276420622633304

`n+1-A064775(n+1)`
-/

namespace A242493.P16512276420622633304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A064775 (n + 1)

end

end A242493.P16512276420622633304

noncomputable section

/-- A242493: a(n) is the number of not-sqrt-smooth numbers ("jagged" numbers) not exceeding n. This is the counting function of A064052.

Offset 1, canonical program `A242493.P16512276420622633304`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064775, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242493 (n : ℕ) : ℤ :=
  A242493.P16512276420622633304.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064775, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242493.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244375.P14907623755703960831

`(-1)^n*A112298(n+1)`
-/

namespace A244375.P14907623755703960831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112298 (n + 1)

end

end A244375.P14907623755703960831

noncomputable section

/-- A244375: Expansion of (a(q) + 3*a(q^2) - 4*a(q^4)) / 6 in powers of q where a() is a cubic AGM theta function.

Offset 1, canonical program `A244375.P14907623755703960831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244375 (n : ℕ) : ℤ :=
  A244375.P14907623755703960831.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246405.P16491160402709366502

`A004526(A246411(2*(n+1)))%A186083(A017377(n))`
-/

namespace A246405.P16491160402709366502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (A246411 (2 * (n + 1))).toNat) (A186083 (A017377 n).toNat)

end

end A246405.P16491160402709366502

noncomputable section

/-- A246405: Nonnegative integers k satisfying sec(k) > sec(k+1) < sec(k+2).

Offset 1, canonical program `A246405.P16491160402709366502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A246405 (n : ℕ) : ℤ :=
  A246405.P16491160402709366502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A246405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248886.P18163405162273270776

`(-1)^n*A123884(n)`
-/

namespace A248886.P18163405162273270776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A123884 n

end

end A248886.P18163405162273270776

noncomputable section

/-- A248886: Expansion of f(-x, -x) * f(x^2, x^4) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A248886.P18163405162273270776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248886 (n : ℕ) : ℤ :=
  A248886.P18163405162273270776.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248886.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249942.P9237157470274512187

`∩[A156242(n+1)+1, A156243(n+1)]`
-/

namespace A249942.P9237157470274512187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249942.P9237157470274512187

noncomputable section

/-- A249942: Ranks of single 1's in the Kolakoski sequence A000002.

Offset 1, canonical program `A249942.P9237157470274512187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A249942 (n : ℕ) : ℤ :=
  (A249942.P9237157470274512187.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A249942.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A256232.P17738822358258441629

`(2-A001511(n+1))*A035218(n+1)`
-/

namespace A256232.P17738822358258441629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A001511 (n + 1)) * A035218 (n + 1)

end

end A256232.P17738822358258441629

noncomputable section

/-- A256232: Multiplicative with a(2^e) = 1-e, a(3^e) = 1, a(p^e) = e+1 if p>3.

Offset 1, canonical program `A256232.P17738822358258441629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256232 (n : ℕ) : ℤ :=
  A256232.P17738822358258441629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256446.P17907843069056531532

`A250477(n+2)-A250477(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256446.P17907843069056531532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 2) - A250477 (n + 1)

end

end A256446.P17907843069056531532

noncomputable section

/-- A256446: First differences of A250477: a(n) = A250477(n+1) - A250477(n).

Offset 1, canonical program `A256446.P17907843069056531532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256446 (n : ℕ) : ℤ :=
  A256446.P17907843069056531532.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256446.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269174.P5853859582538514396

`A057889(A161903(A057889(n)))`
-/

namespace A269174.P5853859582538514396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A161903 (A057889 n).toNat).toNat

end

end A269174.P5853859582538514396

noncomputable section

/-- A269174: Formula for Wolfram's Rule 124 cellular automaton: a(n) = (n OR 2n) AND ((n XOR 2n) OR (n XOR 4n)).

Offset 0, canonical program `A269174.P5853859582538514396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A161903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A269174 (n : ℕ) : ℤ :=
  A269174.P5853859582538514396.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A161903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A269174.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274029.P1460330632668924800

`sqrt(n+1)^A037445(n+1)`
-/

namespace A274029.P1460330632668924800
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A037445 (n + 1) : ℤ)

end

end A274029.P1460330632668924800

noncomputable section

/-- A274029: Product of infinitary divisors of n.

Offset 1, canonical program `A274029.P1460330632668924800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7559 terms. -/
def A274029 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A274029.P1460330632668924800.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7559 terms. -/
def A274029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274719.P15727446664512670220

`A089806(n)*A010815(floor(n/2))`
-/

namespace A274719.P15727446664512670220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089806 n * A010815 ⌊(n : ℚ) / 2⌋.toNat

end

end A274719.P15727446664512670220

noncomputable section

/-- A274719: Expansion of Product_{k >= 1} (1-q^(2*k)).

Offset 0, canonical program `A274719.P15727446664512670220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274719 (n : ℕ) : ℤ :=
  A274719.P15727446664512670220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283976.P17238727065902708821

`or(A295515(or(1, n)), A295515(n+1))`
-/

namespace A283976.P17238727065902708821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A295515 (Nat.lor 1 n)) (A295515 (n + 1))

end

end A283976.P17238727065902708821

noncomputable section

/-- A283976: a(2n) = A002487(n), a(2n+1) = A002487(n) OR A002487(n+1), where OR is bitwise-or (A003986).

Offset 0, canonical program `A283976.P17238727065902708821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283976 (n : ℕ) : ℤ :=
  A283976.P17238727065902708821.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283982.P10832225324888640207

`A283981(n)-A124757(n)`
-/

namespace A283982.P10832225324888640207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283981 n - A124757 n

end

end A283982.P10832225324888640207

noncomputable section

/-- A283982: a(0) = 0, and for n > 0, a(n) = A070939(n) - A280700(n).

Offset 0, canonical program `A283982.P10832225324888640207`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124757, A283981, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283982 (n : ℕ) : ℤ :=
  A283982.P10832225324888640207.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124757, A283981, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283982.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286956.P16005335099664677132

`A010815(n)+n`
-/

namespace A286956.P16005335099664677132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n + (n : ℤ)

end

end A286956.P16005335099664677132

noncomputable section

/-- A286956: Main diagonal of A286950.

Offset 0, canonical program `A286956.P16005335099664677132`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286956 (n : ℕ) : ℤ :=
  A286956.P16005335099664677132.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286956.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288915.P17477177874724802117

`Δ[comp[A270190(n+1)]]`
-/

namespace A288915.P17477177874724802117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270190 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A288915.P17477177874724802117

noncomputable section

/-- A288915: Run lengths in A039704.

Offset 1, canonical program `A288915.P17477177874724802117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A288915 (n : ℕ) : ℤ :=
  A288915.P17477177874724802117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A288915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288930.P1598540981707641911

`2*A288625(n+1)-(n+2)`
-/

namespace A288930.P1598540981707641911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288625 (n + 1) - (n + 2 : ℤ)

end

end A288930.P1598540981707641911

noncomputable section

/-- A288930: Positions of 0 in A288929; complement of A288931.

Offset 1, canonical program `A288930.P1598540981707641911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288930 (n : ℕ) : ℤ :=
  A288930.P1598540981707641911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289322.P2431377451658955017

`(2^n+A088568(2^n))/2`
-/

namespace A289322.P2431377451658955017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) + A088568 (2 ^ n) : ℚ) / 2

end

end A289322.P2431377451658955017

noncomputable section

/-- A289322: Number of 1s in the first 2^n entries of the Kolakoski sequence, A000002.

Offset 0, canonical program `A289322.P2431377451658955017`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088568, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289322 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A289322.P2431377451658955017.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088568, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289322.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293140.P3221199790550330238

`n!*A010815(n)`
-/

namespace A293140.P3221199790550330238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A010815 n

end

end A293140.P3221199790550330238

noncomputable section

/-- A293140: E.g.f.: Product_{m>0} (1-x^m).

Offset 0, canonical program `A293140.P3221199790550330238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293140 (n : ℕ) : ℤ :=
  A293140.P3221199790550330238.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293140.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293360.P17948557738983842076

`A293359(n)+1`
-/

namespace A293360.P17948557738983842076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293359 n + 1

end

end A293360.P17948557738983842076

noncomputable section

/-- A293360: Least integer k such that k/2^n > e^2.

Offset 0, canonical program `A293360.P17948557738983842076`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293360 (n : ℕ) : ℤ :=
  A293360.P17948557738983842076.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293903.P13391266891711295931

`A091570(n+1)-A293901(n+1)`
-/

namespace A293903.P13391266891711295931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (n + 1) - A293901 (n + 1)

end

end A293903.P13391266891711295931

noncomputable section

/-- A293903: Sum of proper divisors of n of the form 4k+3.

Offset 1, canonical program `A293903.P13391266891711295931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091570, A293901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293903 (n : ℕ) : ℤ :=
  A293903.P13391266891711295931.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091570, A293901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294060.P329766733442987257

`(n+1)*A262869(n+1)-2*A262871(n+1)`
-/

namespace A294060.P329766733442987257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A262869 (n + 1) - 2 * A262871 (n + 1)

end

end A294060.P329766733442987257

noncomputable section

/-- A294060: Sum of the differences of the larger and smaller parts in the partitions of n into two parts with the smaller part squarefree.

Offset 1, canonical program `A294060.P329766733442987257`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262869, A262871, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294060 (n : ℕ) : ℤ :=
  A294060.P329766733442987257.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262869, A262871, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294060.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294109.P16701193320608045315

`A294023(n+1)+A063960(n+1)`
-/

namespace A294109.P16701193320608045315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294023 (n + 1) + A063960 (n + 1)

end

end A294109.P16701193320608045315

noncomputable section

/-- A294109: Sum of the larger parts of the partitions of n into two parts with smaller part prime.

Offset 1, canonical program `A294109.P16701193320608045315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294109 (n : ℕ) : ℤ :=
  A294109.P16701193320608045315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294284.P6326353456023793442

`∑[A013928(n+1)]-A294146(n+1)`
-/

namespace A294284.P6326353456023793442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294146 (n + 1)

end

end A294284.P6326353456023793442

noncomputable section

/-- A294284: Sum of the smaller parts of the partitions of n into two distinct parts with larger part squarefree.

Offset 1, canonical program `A294284.P6326353456023793442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294284 (n : ℕ) : ℤ :=
  A294284.P6326353456023793442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294285.P4641961170870907035

`∑[n*char[∏{p}[n, #]]]-A262871(n+1)`
-/

namespace A294285.P4641961170870907035
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A262871 (n + 1)

end

end A294285.P4641961170870907035

noncomputable section

/-- A294285: Sum of the larger parts of the partitions of n into two distinct parts with larger part squarefree.

Offset 1, canonical program `A294285.P4641961170870907035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A294285 (n : ℕ) : ℤ :=
  A294285.P4641961170870907035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A294285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295996.P15464028350351248957

`A057427(n)+∑[A055029(4*n+1)]`
-/

namespace A295996.P15464028350351248957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295996.P15464028350351248957

noncomputable section

/-- A295996: One quarter of number of Gaussian primes whose norm is 4*n+1 or less.

Offset 0, canonical program `A295996.P15464028350351248957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A295996 (n : ℕ) : ℤ :=
  A295996.P15464028350351248957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A295996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298826.P1322318025094889225

`∑{d}[n+1, A076479(#)*A140670((n+1)/#)]`
-/

namespace A298826.P1322318025094889225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076479 d * A140670 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A298826.P1322318025094889225

noncomputable section

/-- A298826: a(n) = A298825(n)/n.

Offset 1, canonical program `A298826.P1322318025094889225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A298826 (n : ℕ) : ℤ :=
  A298826.P1322318025094889225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A298826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303741.P16042547146136321047

`A091194(A231086(n+1))`
-/

namespace A303741.P16042547146136321047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A231086 (n + 1)).toNat

end

end A303741.P16042547146136321047

noncomputable section

/-- A303741: Numbers k such that A(k+1) = A(k) + 2, where A() = A005101() are the abundant numbers.

Offset 1, canonical program `A303741.P16042547146136321047`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A231086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A303741 (n : ℕ) : ℤ :=
  A303741.P16042547146136321047.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A231086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A303741.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304096.P10156323254175933682

`A304094(n+1)-A079978(n+1)-1`
-/

namespace A304096.P10156323254175933682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304094 (n + 1) - A079978 (n + 1) - 1

end

end A304096.P10156323254175933682

noncomputable section

/-- A304096: Number of Lucas numbers larger than 3 (4, 7, 11, 18, ...) that divide n.

Offset 1, canonical program `A304096.P10156323254175933682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304096 (n : ℕ) : ℤ :=
  A304096.P10156323254175933682.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304096.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305439.P10396080351550377806

`A046645(n+1)-A007949(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305439.P10396080351550377806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A007949 (n + 1)

end

end A305439.P10396080351550377806

noncomputable section

/-- A305439: a(n) = A046645(n) - A007949(n); the 2-adic valuation of A317932.

Offset 1, canonical program `A305439.P10396080351550377806`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305439 (n : ℕ) : ℤ :=
  A305439.P10396080351550377806.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305439.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305818.P15738816487274573770

`∑{d}[n+1, A101264(#)]-A101264(n+1)`
-/

namespace A305818.P15738816487274573770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101264 d - A101264 (n + 1)

end

end A305818.P15738816487274573770

noncomputable section

/-- A305818: Number of proper divisors d of n such that 2d+1 is a prime.

Offset 1, canonical program `A305818.P15738816487274573770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305818 (n : ℕ) : ℤ :=
  A305818.P15738816487274573770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306323.P12186467086008578801

`A074286(Δ[record[A074288(n+1)]])`
-/

namespace A306323.P12186467086008578801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074288 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (f1 (n + 1) - f1 n).toNat

end

end A306323.P12186467086008578801

noncomputable section

/-- A306323: Break up the Kolakoski sequence A000002 into pieces by inserting a space between every pair of equal terms; sequence gives lengths of successive pieces.

Offset 1, canonical program `A306323.P12186467086008578801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A306323 (n : ℕ) : ℤ :=
  A306323.P12186467086008578801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A306323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180648.P10189235092180966563

`eq[1, A193929(A000010(n+1))]+1`
-/

namespace A180648.P10189235092180966563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180648.P10189235092180966563

noncomputable section

/-- A180648: Numbers k such that 1 + phi(k)^4 is a prime. Phi is Euler's totient function.

Offset 1, canonical program `A180648.P10189235092180966563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1820 terms. -/
def A180648 (n : ℕ) : ℤ :=
  (A180648.P10189235092180966563.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1820 terms. -/
def A180648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181056.P2304498049817351940

`A000040(A000010(A000045(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181056.P2304498049817351940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000010 (A000045 (n + 1)).toNat).toNat

end

end A181056.P2304498049817351940

noncomputable section

/-- A181056: a(n) = prime(phi(Fibonacci(n))).

Offset 1, canonical program `A181056.P2304498049817351940`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181056 (n : ℕ) : ℤ :=
  A181056.P2304498049817351940.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181056.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181058.P5190739753113495481

`A000040(A000045(A000010(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181058.P5190739753113495481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000045 (A000010 (n + 1)).toNat).toNat

end

end A181058.P5190739753113495481

noncomputable section

/-- A181058: a(n) = prime(Fibonacci(phi(n))), where prime = A000040, Fibonacci = A000045 and phi = A000010.

Offset 1, canonical program `A181058.P5190739753113495481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181058 (n : ℕ) : ℤ :=
  A181058.P5190739753113495481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182535.P17468542528139783195

`A007895(A000040(n+1))`
-/

namespace A182535.P17468542528139783195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A000040 (n + 1)).toNat

end

end A182535.P17468542528139783195

noncomputable section

/-- A182535: Number of terms in Zeckendorf representation of prime(n).

Offset 1, canonical program `A182535.P17468542528139783195`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182535 (n : ℕ) : ℤ :=
  A182535.P17468542528139783195.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182535.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182816.P15538426458893494896

`∏{p}[n+1, gcd(n, A000010(#))+1]`
-/

namespace A182816.P15538426458893494896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Int.gcd (n : ℤ) (A000010 p) + 1)

end

end A182816.P15538426458893494896

noncomputable section

/-- A182816: Number of values b in Z/nZ such that b^n = b.

Offset 1, canonical program `A182816.P15538426458893494896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182816 (n : ℕ) : ℤ :=
  (A182816.P15538426458893494896.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186749.P8755394519025797091

`A000010(n+1-A000010(n+1)+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186749.P8755394519025797091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1 : ℤ) - A000010 (n + 1) + 3).toNat

end

end A186749.P8755394519025797091

noncomputable section

/-- A186749: a(n) = phi(n - phi(n) + 3).

Offset 1, canonical program `A186749.P8755394519025797091`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186749 (n : ℕ) : ℤ :=
  A186749.P8755394519025797091.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189393.P14759760009596929175

`A000010((n+1)^4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A189393.P14759760009596929175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ 4)

end

end A189393.P14759760009596929175

noncomputable section

/-- A189393: a(n) = phi(n^4).

Offset 1, canonical program `A189393.P14759760009596929175`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189393 (n : ℕ) : ℤ :=
  A189393.P14759760009596929175.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190503.P4853042845525181551

`eq[1, A000203(n+1)%A000203(A000010(n+1))+1]+1`
-/

namespace A190503.P4853042845525181551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000203 (A000010 (n + 1)).toNat) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190503.P4853042845525181551

noncomputable section

/-- A190503: Numbers k such that sigma(phi(k)) divides sigma(k).

Offset 1, canonical program `A190503.P4853042845525181551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 681 terms. -/
def A190503 (n : ℕ) : ℤ :=
  (A190503.P4853042845525181551.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 681 terms. -/
def A190503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190902.P5214767407288776691

`A069158(n+1)*A061537(n+1)`
-/

namespace A190902.P5214767407288776691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1) * A061537 (n + 1)

end

end A190902.P5214767407288776691

noncomputable section

/-- A190902: a(n) = Product_{d|n} d*mu(n/d).

Offset 1, canonical program `A190902.P5214767407288776691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061537, A069158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190902 (n : ℕ) : ℤ :=
  A190902.P5214767407288776691.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061537, A069158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193453.P6993732054623460770

`A001227(A000010(n+1))`
-/

namespace A193453.P6993732054623460770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A000010 (n + 1)).toNat

end

end A193453.P6993732054623460770

noncomputable section

/-- A193453: Number of odd divisors of phi(n).

Offset 1, canonical program `A193453.P6993732054623460770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193453 (n : ℕ) : ℤ :=
  A193453.P6993732054623460770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193453.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193454.P14726844864907007468

`A000593(A000010(n+1))`
-/

namespace A193454.P14726844864907007468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A000010 (n + 1)).toNat

end

end A193454.P14726844864907007468

noncomputable section

/-- A193454: Sum of odd divisors of phi(n).

Offset 1, canonical program `A193454.P14726844864907007468`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193454 (n : ℕ) : ℤ :=
  A193454.P14726844864907007468.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193564.P10859496068576138660

`A026242(n+1)-1`
-/

namespace A193564.P10859496068576138660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (n + 1) - 1

end

end A193564.P10859496068576138660

noncomputable section

/-- A193564: In A014675, replace the n-th occurrence of 1 with n-1 and also replace the n-th occurrence of 2 with n-1.

Offset 1, canonical program `A193564.P10859496068576138660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193564 (n : ℕ) : ℤ :=
  A193564.P10859496068576138660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195459.P2860711302660598050

`A000010(3*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A195459.P2860711302660598050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (3 * (n + 1)) : ℚ) / 2

end

end A195459.P2860711302660598050

noncomputable section

/-- A195459: a(n) = phi(3*n)/2.

Offset 1, canonical program `A195459.P2860711302660598050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195459 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A195459.P2860711302660598050.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A196524.P2546210231834918335

`A000010(n+1)*A000005((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A196524.P2546210231834918335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000005 ((n + 1) ^ 2)

end

end A196524.P2546210231834918335

noncomputable section

/-- A196524: a(n) = phi(n)*tau(n^2).

Offset 1, canonical program `A196524.P2546210231834918335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196524 (n : ℕ) : ℤ :=
  A196524.P2546210231834918335.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196524.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A197129.P9586474388136463062

`∩[A197039(n+1), A197125(n+1)]`
-/

namespace A197129.P9586474388136463062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197129.P9586474388136463062

noncomputable section

/-- A197129: Numbers such that the sum, sum of the squares, and sum of the cubes of the decimal digits are each a perfect square.

Offset 1, canonical program `A197129.P9586474388136463062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A197129 (n : ℕ) : ℤ :=
  (A197129.P9586474388136463062.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A197129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197191.P15605299056805201229

`A000010(A000032(n²))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A197191.P15605299056805201229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000032 (n ^ 2)).toNat

end

end A197191.P15605299056805201229

noncomputable section

/-- A197191: a(n) = phi(Lucas(n^2)).

Offset 0, canonical program `A197191.P15605299056805201229`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A197191 (n : ℕ) : ℤ :=
  A197191.P15605299056805201229.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A197191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A197218.P5916423780579939464

`A000010(A000032(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A197218.P5916423780579939464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000032 n).toNat

end

end A197218.P5916423780579939464

noncomputable section

/-- A197218: a(n) = phi(Lucas(n)).

Offset 0, canonical program `A197218.P5916423780579939464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A197218 (n : ℕ) : ℤ :=
  A197218.P5916423780579939464.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A197218.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A197219.P1176045312080678236

`A000032(floor(A000010(n)+a(n-1))-a(n-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A197219.P1176045312080678236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000032 (A000010 n + a (n - 1) - a (n - 1)).toNat

end

end A197219.P1176045312080678236

noncomputable section

/-- A197219: a(0) = 2, a(n) = Lucas(phi(n)) for n > 0.

Offset 0, canonical program `A197219.P1176045312080678236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A197219 (n : ℕ) : ℤ :=
  A197219.P1176045312080678236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A197219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199596.P10862457242794547760

`floor(A000010(2*n+1)/A000010(2*n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199596.P10862457242794547760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (2 * n + 1) : ℚ) / (A000010 (2 * n + 2) : ℚ)⌋

end

end A199596.P10862457242794547760

noncomputable section

/-- A199596: a(n) = floor(phi(2*n+1)/phi(2*n+2)).

Offset 0, canonical program `A199596.P10862457242794547760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A199596 (n : ℕ) : ℤ :=
  A199596.P10862457242794547760.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A199596.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A200648.P286470985086155592

`a(A026242(n-1))+1` with `a(0)=1, a(1)=1`
-/

namespace A200648.P286470985086155592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A026242 (n - 1)).toNat + 1

end

end A200648.P286470985086155592

noncomputable section

/-- A200648: Length of Stolarsky representation of n.

Offset 1, canonical program `A200648.P286470985086155592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200648 (n : ℕ) : ℤ :=
  (A200648.P286470985086155592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200905.P16128160975711994279

`3*A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A200905.P16128160975711994279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000010 (n + 1)

end

end A200905.P16128160975711994279

noncomputable section

/-- A200905: a(n) = 3*phi(n), where phi (A000010) is the Euler totient function.

Offset 1, canonical program `A200905.P16128160975711994279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A200905 (n : ℕ) : ℤ :=
  A200905.P16128160975711994279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A200905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A203463.P15275112682331819246

`lt[A065620(and(n, 2*n)/2), 1]`
-/

namespace A203463.P15275112682331819246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (SequenceMachineLib.roundAway ((Nat.land n (2 * n) : ℚ) / 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A203463.P15275112682331819246

noncomputable section

/-- A203463: Where Golay-Rudin-Shapiro sequence A020985 is positive.

Offset 1, canonical program `A203463.P15275112682331819246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203463 (n : ℕ) : ℤ :=
  (A203463.P15275112682331819246.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203468.P281610576651752722

`eq[A035214(n), A325334(n)]`
-/

namespace A203468.P281610576651752722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203468.P281610576651752722

noncomputable section

/-- A203468: Numbers that have a unique triangular proper divisor greater than 1.

Offset 1, canonical program `A203468.P281610576651752722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1942 terms. -/
def A203468 (n : ℕ) : ℤ :=
  (A203468.P281610576651752722.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1942 terms. -/
def A203468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206546.P4990165859290751092

`A065621(and(6, A065620(n+1))+1)`
-/

namespace A206546.P4990165859290751092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 (Int.land 6 (A065620 (n + 1)) + 1).toNat

end

end A206546.P4990165859290751092

noncomputable section

/-- A206546: Period 8: repeat [1, 7, 11, 13, 13, 11, 7, 1].

Offset 1, canonical program `A206546.P4990165859290751092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206546 (n : ℕ) : ℤ :=
  A206546.P4990165859290751092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206581.P6744461879614919973

`p?[A100368(n+1)-1]`
-/

namespace A206581.P6744461879614919973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100368 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A206581.P6744461879614919973

noncomputable section

/-- A206581: Odd primes p such that p+1 is a prime times a power of two.

Offset 1, canonical program `A206581.P6744461879614919973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206581 (n : ℕ) : ℤ :=
  A206581.P6744461879614919973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210845.P13189797381442615972

`lt[A003557(A000010(2*(n+1))), 3]+1`
-/

namespace A210845.P13189797381442615972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000010 (2 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A210845.P13189797381442615972

noncomputable section

/-- A210845: Values n for which A055034(n) is squarefree.

Offset 1, canonical program `A210845.P13189797381442615972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1410 terms. -/
def A210845 (n : ℕ) : ℤ :=
  (A210845.P13189797381442615972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1410 terms. -/
def A210845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213911.P10704289243874186372

`A007895(n)-A003849(n)`
-/

namespace A213911.P10704289243874186372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n - A003849 n

end

end A213911.P10704289243874186372

noncomputable section

/-- A213911: Number of runs of consecutive zeros in the Zeckendorf (binary) representation of n.

Offset 0, canonical program `A213911.P10704289243874186372`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213911 (n : ℕ) : ℤ :=
  A213911.P10704289243874186372.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213911.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214287.P11295175971518832110

`p?[A000010(n+1)-1]`
-/

namespace A214287.P11295175971518832110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P11295175971518832110

noncomputable section

/-- A214287: Primes of the form phi(n)-1 sorted by increasing n, where phi is the Euler totient function.

Offset 1, canonical program `A214287.P11295175971518832110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214287 (n : ℕ) : ℤ :=
  A214287.P11295175971518832110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214288.P3436294397742324961

`p?[A000010(n+1)+1]`
-/

namespace A214288.P3436294397742324961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214288.P3436294397742324961

noncomputable section

/-- A214288: Primes of the form phi(n)+1 sorted by increasing n, where phi is the Euler totient function.

Offset 1, canonical program `A214288.P3436294397742324961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214288 (n : ℕ) : ℤ :=
  A214288.P3436294397742324961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214629.P6159312016029750256

`p?[A185300(n+1)]`
-/

namespace A214629.P6159312016029750256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214629.P6159312016029750256

noncomputable section

/-- A214629: Primes p such that the sum of the digits plus the product of the digits is a prime.

Offset 1, canonical program `A214629.P6159312016029750256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1425 terms. -/
def A214629 (n : ℕ) : ℤ :=
  A214629.P6159312016029750256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1425 terms. -/
def A214629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215486.P14905427778399820879

`n%A000010(n+1)`
-/

namespace A215486.P14905427778399820879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000010 (n + 1))

end

end A215486.P14905427778399820879

noncomputable section

/-- A215486: n - 1 mod phi(n), where phi(n) is Euler's totient function.

Offset 1, canonical program `A215486.P14905427778399820879`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215486 (n : ℕ) : ℤ :=
  A215486.P14905427778399820879.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215486.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216321.P6307569186183926854

`A000010(ceil(A000010(2*(n+1))/2))`
-/

namespace A216321.P6307569186183926854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈(A000010 (2 * (n + 1)) : ℚ) / 2⌉.toNat

end

end A216321.P6307569186183926854

noncomputable section

/-- A216321: phi(delta(n)), n >= 1, with phi = A000010 (Euler's totient) and delta = A055034 (degree of minimal polynomials with coefficients given in A187360).

Offset 1, canonical program `A216321.P6307569186183926854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216321 (n : ℕ) : ℤ :=
  A216321.P6307569186183926854.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216321.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216475.P1503443610381396525

`A000010(n+3)-(n+1)%2`
-/

namespace A216475.P1503443610381396525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3) - (((n + 1) % 2 : ℕ) : ℤ)

end

end A216475.P1503443610381396525

noncomputable section

/-- A216475: The number of numbers coprime to and less than n+2, excluding 2.

Offset 1, canonical program `A216475.P1503443610381396525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216475 (n : ℕ) : ℤ :=
  A216475.P1503443610381396525.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216475.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216687.P16719336148888210859

`record[A093178(n+11)*A188641(n+10)]`
-/

namespace A216687.P16719336148888210859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (n + 11) * A188641 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216687.P16719336148888210859

noncomputable section

/-- A216687: Odd numbers > 10 that can be written as m*s - m + 1, where s is the sum of their digits and m >= 1.

Offset 1, canonical program `A216687.P16719336148888210859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1195 terms. -/
def A216687 (n : ℕ) : ℤ :=
  A216687.P16719336148888210859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1195 terms. -/
def A216687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216836.P6437354700397976852

`eq[0, A000010(n+1)%A007953(n+1)]+1`
-/

namespace A216836.P6437354700397976852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (A007953 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216836.P6437354700397976852

noncomputable section

/-- A216836: Numbers n such that sum of decimal digits of n divides phi(n).

Offset 1, canonical program `A216836.P6437354700397976852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2688 terms. -/
def A216836 (n : ℕ) : ℤ :=
  (A216836.P6437354700397976852.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2688 terms. -/
def A216836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216850.P1387506290551560808

`(2^A000010(n+1)-1)*2^A001221(n+1)`
-/

namespace A216850.P1387506290551560808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A000010 (n + 1) : ℤ) - 1) * (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A216850.P1387506290551560808

noncomputable section

/-- A216850: Number of distinct infinite sets of primes congruent to a subset of 1..n mod n.

Offset 1, canonical program `A216850.P1387506290551560808`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A216850 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A216850.P1387506290551560808.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A216850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217139.P16840314535765683681

`eq[A000010(C(3, n)+n), A000010(n+12)]`
-/

namespace A217139.P16840314535765683681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose 3 n + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 12)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217139.P16840314535765683681

noncomputable section

/-- A217139: Numbers n such that phi(n) = phi(n+12), with Euler's totient function phi = A000010.

Offset 1, canonical program `A217139.P16840314535765683681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 543 terms. -/
def A217139 (n : ℕ) : ℤ :=
  (A217139.P16840314535765683681.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 543 terms. -/
def A217139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217863.P4277841558715900929

`A000010(A003418(n+1))`
-/

namespace A217863.P4277841558715900929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003418 (n + 1)).toNat

end

end A217863.P4277841558715900929

noncomputable section

/-- A217863: a(n) = phi(lcm(1,2,3,...,n)), where phi is Euler's totient function.

Offset 1, canonical program `A217863.P4277841558715900929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217863 (n : ℕ) : ℤ :=
  A217863.P4277841558715900929.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217863.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217973.P11846285657803405566

`filter[A052382(n+1), A188641(#)]`
-/

namespace A217973.P11846285657803405566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A217973.P11846285657803405566

noncomputable section

/-- A217973: Niven (or Harshad) numbers not containing the digit 0.

Offset 1, canonical program `A217973.P11846285657803405566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 841 terms. -/
def A217973 (n : ℕ) : ℤ :=
  A217973.P11846285657803405566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 841 terms. -/
def A217973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219029.P12345475859855343114

`n-A000010(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A219029.P12345475859855343114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (A000010 (n + 1)).toNat

end

end A219029.P12345475859855343114

noncomputable section

/-- A219029: a(n) = n - 1 - phi(phi(n)).

Offset 1, canonical program `A219029.P12345475859855343114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219029 (n : ℕ) : ℤ :=
  A219029.P12345475859855343114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219428.P9184341513320465947

`n-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A219428.P9184341513320465947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (n + 1)

end

end A219428.P9184341513320465947

noncomputable section

/-- A219428: a(n) = n - 1 - phi(n).

Offset 1, canonical program `A219428.P9184341513320465947`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219428 (n : ℕ) : ℤ :=
  A219428.P9184341513320465947.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219641.P1602393212941527080

`n-A007895(n)`
-/

namespace A219641.P1602393212941527080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007895 n

end

end A219641.P1602393212941527080

noncomputable section

/-- A219641: a(n) = n minus (number of 1's in Zeckendorf expansion of n).

Offset 0, canonical program `A219641.P1602393212941527080`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219641 (n : ℕ) : ℤ :=
  A219641.P1602393212941527080.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A220115.P11390568708152913507

`A000120(n)-A007895(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A220115.P11390568708152913507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A007895 n

end

end A220115.P11390568708152913507

noncomputable section

/-- A220115: a(n) = A000120(n) - A007895(n), the number of 1's in binary expansion of n minus the number of terms in Zeckendorf representation of n.

Offset 0, canonical program `A220115.P11390568708152913507`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220115 (n : ℕ) : ℤ :=
  A220115.P11390568708152913507.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220115.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225530.P14142544683776780979

`A000010(C(2, n²)+n)`
-/

namespace A225530.P14142544683776780979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose 2 (n ^ 2) + n)

end

end A225530.P14142544683776780979

noncomputable section

/-- A225530: Number of ordered pairs (i,j) with i,j >= 0, i + j = n and gcd(i,j) <= 1.

Offset 0, canonical program `A225530.P14142544683776780979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A225530 (n : ℕ) : ℤ :=
  A225530.P14142544683776780979.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A225530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226385.P8581291142238122846

`lt[A336551(A000010(n+1)), A336551(n+1)]+1`
-/

namespace A226385.P8581291142238122846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A226385.P8581291142238122846

noncomputable section

/-- A226385: Numbers n such that rad(phi(n)) > phi(rad(n)), where rad(n) is the squarefree kernel of n, and phi is Euler's totient function.

Offset 1, canonical program `A226385.P8581291142238122846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A226385 (n : ℕ) : ℤ :=
  (A226385.P8581291142238122846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A226385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226561.P4346169156950608747

`∑{d}[n+1, #*A000010(#^(n+1))]`
-/

namespace A226561.P4346169156950608747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000010 (d ^ (n + 1))

end

end A226561.P4346169156950608747

noncomputable section

/-- A226561: a(n) = Sum_{d|n} d^n * phi(d), where phi(n) is the Euler totient function A000010(n).

Offset 1, canonical program `A226561.P4346169156950608747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226561 (n : ℕ) : ℤ :=
  A226561.P4346169156950608747.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226561.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226586.P1032371712486698964

`A152677(n+3)-A000010(A028982(n+3))`
-/

namespace A226586.P1032371712486698964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152677 (n + 3) - A000010 (A028982 (n + 3)).toNat

end

end A226586.P1032371712486698964

noncomputable section

/-- A226586: Odd values of sigma(n) - phi(n) in the order of appearance and with repetition.

Offset 1, canonical program `A226586.P1032371712486698964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 537 terms. -/
def A226586 (n : ℕ) : ℤ :=
  A226586.P1032371712486698964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 537 terms. -/
def A226586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228498.P13150910257080311854

`A000203((n+1)²)+A000010((n+1)²)-2*(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228498.P13150910257080311854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 2) + A000010 ((n + 1) ^ 2) - (2 * (n + 1) ^ 2 : ℤ)

end

end A228498.P13150910257080311854

noncomputable section

/-- A228498: a(n) = sigma(n^2) + phi(n^2) - 2n^2.

Offset 1, canonical program `A228498.P13150910257080311854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228498 (n : ℕ) : ℤ :=
  A228498.P13150910257080311854.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228498.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228640.P11204383012530829131

`∑{d}[n, A000010(#)*n^(n/#)]`
-/

namespace A228640.P11204383012530829131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d : ℝ) * (n : ℝ) ^ ((n : ℚ) / (d : ℚ) : ℝ)

end

end A228640.P11204383012530829131

noncomputable section

/-- A228640: a(n) = Sum_{d|n} phi(d)*n^(n/d).

Offset 0, canonical program `A228640.P11204383012530829131`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228640 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A228640.P11204383012530829131.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228640.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228807.P16255660433747809993

`A000010(a(n-1)+a(n-2)+1)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228807.P16255660433747809993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000010 (a (n - 1) + a (n - 2) + 1).toNat

end

end A228807.P16255660433747809993

noncomputable section

/-- A228807: a(n) = phi( a(n-1) + a(n-2) + 1) with a(0) = 0 and a(1) = 1.

Offset 0, canonical program `A228807.P16255660433747809993`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228807 (n : ℕ) : ℤ :=
  A228807.P16255660433747809993.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228807.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228947.P1027786129053480284

`A000203(n+1)-A000010(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228947.P1027786129053480284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000010 (n + 1) - (n + 1 : ℤ)

end

end A228947.P1027786129053480284

noncomputable section

/-- A228947: a(n) = sigma(n) - phi(n) - n.

Offset 1, canonical program `A228947.P1027786129053480284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228947 (n : ℕ) : ℤ :=
  A228947.P1027786129053480284.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228947.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230263.P8370102804236807387

`lcm(floor((2-n%4)/2), A034178(lcm(4, n+1)/4))`
-/

namespace A230263.P8370102804236807387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(2 - ((n % 4 : ℕ) : ℤ) : ℚ) / 2⌋ (A034178 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat)

end

end A230263.P8370102804236807387

noncomputable section

/-- A230263: Number of nonnegative integer solutions to the equation x^2 - 4*y^2 = n.

Offset 1, canonical program `A230263.P8370102804236807387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230263 (n : ℕ) : ℤ :=
  (A230263.P8370102804236807387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233279.P10877154597455539139

`A006068(A063946(n))`
-/

namespace A233279.P10877154597455539139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A063946 n).toNat

end

end A233279.P10877154597455539139

noncomputable section

/-- A233279: Permutation of nonnegative integers: a(n) = A054429(A006068(n)).

Offset 0, canonical program `A233279.P10877154597455539139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A063946, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A233279 (n : ℕ) : ℤ :=
  A233279.P10877154597455539139.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A063946, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A233279.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A233541.P8613134617587554925

`A000203(n+1)+A000010(n+1)+A000005(n+1)`
-/

namespace A233541.P8613134617587554925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000010 (n + 1) + A000005 (n + 1)

end

end A233541.P8613134617587554925

noncomputable section

/-- A233541: a(n) = sigma(n) + phi(n) + d(n).

Offset 1, canonical program `A233541.P8613134617587554925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233541 (n : ℕ) : ℤ :=
  A233541.P8613134617587554925.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233541.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A233904.P1500390034095797774

`A233905(n)-A233931(n)`
-/

namespace A233904.P1500390034095797774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n - A233931 n

end

end A233904.P1500390034095797774

noncomputable section

/-- A233904: a(2n) = a(n) - n, a(2n+1) = a(n) + n, with a(0)=0.

Offset 0, canonical program `A233904.P1500390034095797774`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233905, A233931, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A233904 (n : ℕ) : ℤ :=
  A233904.P1500390034095797774.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233905, A233931, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A233904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A234474.P13636113180550074245

`filter[A064807(n+1), A188641(#)]`
-/

namespace A234474.P13636113180550074245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A234474.P13636113180550074245

noncomputable section

/-- A234474: Numbers that are divisible by their digital sum and digital root.

Offset 1, canonical program `A234474.P13636113180550074245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A234474 (n : ℕ) : ℤ :=
  A234474.P13636113180550074245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A234474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238533.P15818849799102492591

`(n+1)^4*A000010(n+1)`
-/

namespace A238533.P15818849799102492591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) * A000010 (n + 1)

end

end A238533.P15818849799102492591

noncomputable section

/-- A238533: Number of solutions to gcd(x^2 + y^2 + z^2 + t^2 + h^2, n) = 1 with x,y,z,t,h in [0,n-1].

Offset 1, canonical program `A238533.P15818849799102492591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238533 (n : ℕ) : ℤ :=
  A238533.P15818849799102492591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238533.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239442.P15847655363987109605

`A000010((n+1)^7)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A239442.P15847655363987109605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ 7)

end

end A239442.P15847655363987109605

noncomputable section

/-- A239442: a(n) = phi(n^7).

Offset 1, canonical program `A239442.P15847655363987109605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239442 (n : ℕ) : ℤ :=
  A239442.P15847655363987109605.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239443.P10336153813408353762

`(n+1)^8*A000010(n+1)`
-/

namespace A239443.P10336153813408353762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 8 : ℤ) * A000010 (n + 1)

end

end A239443.P10336153813408353762

noncomputable section

/-- A239443: a(n) = phi(n^9), where phi = A000010.

Offset 1, canonical program `A239443.P10336153813408353762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239443 (n : ℕ) : ℤ :=
  A239443.P10336153813408353762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239443.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240162.P11696725197043655021

`(3^a(A000010(n+1)-1))%(n+1)` with `a(0)=0`
-/

namespace A240162.P11696725197043655021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 ^ a (A000010 (n + 1) - 1).toNat % (n + 1)

end

end A240162.P11696725197043655021

noncomputable section

/-- A240162: Tower of 3's modulo n.

Offset 1, canonical program `A240162.P11696725197043655021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240162 (n : ℕ) : ℤ :=
  (A240162.P11696725197043655021.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A242188.P14005786775646046571

`∑[record[A005064(n+1)]*A062157(n)]`
-/

namespace A242188.P14005786775646046571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242188.P14005786775646046571

noncomputable section

/-- A242188: a(n) = Sum_{i=1..n} (-1)^(i+1) prime(i)^3.

Offset 0, canonical program `A242188.P14005786775646046571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A242188 (n : ℕ) : ℤ :=
  A242188.P14005786775646046571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A242188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243620.P13122354162749420895

`p?[A243617(n+1)]`
-/

namespace A243620.P13122354162749420895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243620.P13122354162749420895

noncomputable section

/-- A243620: Prime numbers whose digital sum equals the number of bits in its binary expansion. No zeros allowed in the decimal expansion.

Offset 1, canonical program `A243620.P13122354162749420895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1030 terms. -/
def A243620 (n : ℕ) : ℤ :=
  A243620.P13122354162749420895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1030 terms. -/
def A243620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245497.P11908119768427537626

`A000010(n+3)²/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245497.P11908119768427537626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 3) ^ 2 : ℚ) / 2

end

end A245497.P11908119768427537626

noncomputable section

/-- A245497: a(n) = phi(n)^2/2, where phi(n) = A000010(n), the Euler totient function.

Offset 3, canonical program `A245497.P11908119768427537626`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245497 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A245497.P11908119768427537626.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245497.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245970.P5572372540227041168

`(2^(A000010(n+1)+a(A000010(n+1)-1)))%(n+1)` with `a(0)=0`
-/

namespace A245970.P5572372540227041168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000010 (n + 1) + a (A000010 (n + 1) - 1).toNat : ℤ))) (n + 1 : ℤ)

end

end A245970.P5572372540227041168

noncomputable section

/-- A245970: Tower of 2's modulo n.

Offset 1, canonical program `A245970.P5572372540227041168`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245970 (n : ℕ) : ℤ :=
  A245970.P5572372540227041168.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245972.P15399825625106078030

`(5^a(A000010(n+1)-1))%(n+1)` with `a(0)=0`
-/

namespace A245972.P15399825625106078030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  5 ^ a (A000010 (n + 1) - 1).toNat % (n + 1)

end

end A245972.P15399825625106078030

noncomputable section

/-- A245972: Tower of 5s mod n.

Offset 1, canonical program `A245972.P15399825625106078030`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245972 (n : ℕ) : ℤ :=
  (A245972.P15399825625106078030.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245974.P10829304009798588982

`(7^a(A000010(n+1)-1))%(n+1)` with `a(0)=0`
-/

namespace A245974.P10829304009798588982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  7 ^ a (A000010 (n + 1) - 1).toNat % (n + 1)

end

end A245974.P10829304009798588982

noncomputable section

/-- A245974: Tower of 7's mod n.

Offset 1, canonical program `A245974.P10829304009798588982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245974 (n : ℕ) : ℤ :=
  (A245974.P10829304009798588982.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245974.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247074.P1287193648648202640

`A000010(n+1)/A063994(n+1)`
-/

namespace A247074.P1287193648648202640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A063994 (n + 1) : ℚ)

end

end A247074.P1287193648648202640

noncomputable section

/-- A247074: a(n) = phi(n)/(Product_{primes p dividing n } gcd(p - 1, n - 1)).

Offset 1, canonical program `A247074.P1287193648648202640`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A247074 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A247074.P1287193648648202640.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A247074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248643.P10481303452012472952

`A000010(2^(n+1))-A000010((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A248643.P10481303452012472952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 ^ (n + 1)) - A000010 ((n + 1) ^ 2)

end

end A248643.P10481303452012472952

noncomputable section

/-- A248643: a(n) = phi(2^n) - phi(n^2), with Euler's totient function phi = A000010.

Offset 1, canonical program `A248643.P10481303452012472952`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248643 (n : ℕ) : ℤ :=
  A248643.P10481303452012472952.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248643.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249353.P12630331722951047343

`A000010(n+1)+A000203(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249353.P12630331722951047343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A000203 (A000203 (n + 1)).toNat

end

end A249353.P12630331722951047343

noncomputable section

/-- A249353: a(n) = phi(n) + sigma(sigma(n)).

Offset 1, canonical program `A249353.P12630331722951047343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249353 (n : ℕ) : ℤ :=
  A249353.P12630331722951047343.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249353.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A250222.P7138023212861486806

`A000010(2*(n+1)+1)-A000010(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A250222.P7138023212861486806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1) + 1) - A000010 (2 * (n + 1))

end

end A250222.P7138023212861486806

noncomputable section

/-- A250222: a(n) = phi(2n+1) - phi(2n), where phi is A000010.

Offset 1, canonical program `A250222.P7138023212861486806`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A250222 (n : ℕ) : ℤ :=
  A250222.P7138023212861486806.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A250222.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255385.P15739975789967617263

`A000203(n+1)+A000010(n+1)-A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255385.P15739975789967617263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000010 (n + 1) - A000005 (n + 1)

end

end A255385.P15739975789967617263

noncomputable section

/-- A255385: a(n) = sigma(n) + phi(n) - tau(n).

Offset 1, canonical program `A255385.P15739975789967617263`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255385 (n : ℕ) : ℤ :=
  A255385.P15739975789967617263.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256303.P17390221643236458087

`A007089(A256293(n))`
-/

namespace A256303.P17390221643236458087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A256293 n).toNat

end

end A256303.P17390221643236458087

noncomputable section

/-- A256303: Apply the transformation 0 -> 1 -> 2 -> 0 to the digits of n written in base 3; do not convert back to base 10.

Offset 0, canonical program `A256303.P17390221643236458087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A256303 (n : ℕ) : ℤ :=
  A256303.P17390221643236458087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A256303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257408.P7293558973563838932

`eq[1, A034178(n+1)]+1`
-/

namespace A257408.P7293558973563838932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A257408.P7293558973563838932

noncomputable section

/-- A257408: Values of n such that there is exactly 1 solution to x^2 - y^2 = n with x > y >= 0.

Offset 1, canonical program `A257408.P7293558973563838932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1500 terms. -/
def A257408 (n : ℕ) : ℤ :=
  (A257408.P7293558973563838932.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1500 terms. -/
def A257408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257411.P9185470921176240693

`eq[4, A034178(n+1)]+1`
-/

namespace A257411.P9185470921176240693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A257411.P9185470921176240693

noncomputable section

/-- A257411: Values of n such that there are exactly 4 solutions to x^2 - y^2 = n with x > y >= 0.

Offset 1, canonical program `A257411.P9185470921176240693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1419 terms. -/
def A257411 (n : ℕ) : ℤ :=
  (A257411.P9185470921176240693.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1419 terms. -/
def A257411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257412.P2136020918674413741

`eq[5, A034178(A028310(n))]`
-/

namespace A257412.P2136020918674413741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257412.P2136020918674413741

noncomputable section

/-- A257412: Values of n such that there are exactly 5 solutions to x^2 - y^2 = n with x > y >= 0.

Offset 1, canonical program `A257412.P2136020918674413741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A257412 (n : ℕ) : ℤ :=
  (A257412.P2136020918674413741.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A257412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257413.P16665506709251320358

`eq[6, A034178(A028310(n))]`
-/

namespace A257413.P16665506709251320358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257413.P16665506709251320358

noncomputable section

/-- A257413: Values of n such that there are exactly 6 solutions to x^2 - y^2 = n with x > y >= 0.

Offset 1, canonical program `A257413.P16665506709251320358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A257413 (n : ℕ) : ℤ :=
  (A257413.P16665506709251320358.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A257413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257415.P10533796931957512431

`eq[8, A034178(A028310(n))]`
-/

namespace A257415.P10533796931957512431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257415.P10533796931957512431

noncomputable section

/-- A257415: Values of n such that there are exactly 8 solutions to x^2 - y^2 = n with x > y >= 0.

Offset 1, canonical program `A257415.P10533796931957512431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A257415 (n : ℕ) : ℤ :=
  (A257415.P10533796931957512431.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A257415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258434.P3576622354757452924

`(n+1)²-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258434.P3576622354757452924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000010 (n + 1)

end

end A258434.P3576622354757452924

noncomputable section

/-- A258434: n^2 - phi(n).

Offset 1, canonical program `A258434.P3576622354757452924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258434 (n : ℕ) : ℤ :=
  A258434.P3576622354757452924.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258438.P1507217286969799084

`n^3+n²-A224924(n)`
-/

namespace A258438.P1507217286969799084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 + n ^ 2 : ℤ) - A224924 n

end

end A258438.P1507217286969799084

noncomputable section

/-- A258438: Sum_{i=1..n} Sum_{j=1..n} (i OR j), where OR is the binary logical OR operator.

Offset 0, canonical program `A258438.P1507217286969799084`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224924, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258438 (n : ℕ) : ℤ :=
  A258438.P1507217286969799084.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224924, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261283.P16041338717505093880

`A355340(A006068(n))`
-/

namespace A261283.P16041338717505093880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355340 (A006068 n).toNat

end

end A261283.P16041338717505093880

noncomputable section

/-- A261283: a(n) = bitwise XOR of all the bit numbers for the bits that are set in n, using number 1 for the LSB.

Offset 0, canonical program `A261283.P16041338717505093880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A261283 (n : ℕ) : ℤ :=
  A261283.P16041338717505093880.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A261283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261872.P7054032506093188784

`A000010(n+1)%5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261872.P7054032506093188784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 5

end

end A261872.P7054032506093188784

noncomputable section

/-- A261872: a(n) = phi(n) mod 5, where phi is the Euler totient function.

Offset 1, canonical program `A261872.P7054032506093188784`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261872 (n : ℕ) : ℤ :=
  A261872.P7054032506093188784.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261872.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A263319.P16862253577896793387

`A000720((n+1)²)*A000010(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263319.P16862253577896793387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 ((n + 1) ^ 2) * A000010 (n + 1) : ℚ) / 2

end

end A263319.P16862253577896793387

noncomputable section

/-- A263319: a(n) = pi(n^2)*phi(n)/2, where pi(x) denotes the number of primes not exceeding x, and phi(.) is Euler's totient function given by A000010.

Offset 1, canonical program `A263319.P16862253577896793387`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263319 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A263319.P16862253577896793387.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A264724.P2483294076025266206

`(n+1)²+A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264724.P2483294076025266206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A000010 (n + 1)

end

end A264724.P2483294076025266206

noncomputable section

/-- A264724: a(n) = n^2 + phi(n).

Offset 1, canonical program `A264724.P2483294076025266206`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264724 (n : ℕ) : ℤ :=
  A264724.P2483294076025266206.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264724.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A264739.P12611076801907111291

`char[A000010(n+1)-1]`
-/

namespace A264739.P12611076801907111291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A264739.P12611076801907111291

noncomputable section

/-- A264739: Characteristic function of A002202, the range of Euler's totient function A000010.

Offset 1, canonical program `A264739.P12611076801907111291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264739 (n : ℕ) : ℤ :=
  (A264739.P12611076801907111291.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264822.P10679971076099386625

`∩[A030430(n+1), A194275(n)]`
-/

namespace A264822.P10679971076099386625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264822.P10679971076099386625

noncomputable section

/-- A264822: Centered 15-gonal (or pentadecagonal) primes.

Offset 1, canonical program `A264822.P10679971076099386625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A264822 (n : ℕ) : ℤ :=
  (A264822.P10679971076099386625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A264822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268714.P12826146515407586314

`A006068(col(n))+A006068(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268714.P12826146515407586314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (SequenceMachineLib.triCol n) + A006068 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A268714.P12826146515407586314

noncomputable section

/-- A268714: Square array A(i,j) = A006068(i) + A006068(j), read by antidiagonals.

Offset 0, canonical program `A268714.P12826146515407586314`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268714 (n : ℕ) : ℤ :=
  A268714.P12826146515407586314.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268715.P7451648431105528350

`A003188(A006068(col(n))+A006068(row(n)-col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268715.P7451648431105528350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A006068 (SequenceMachineLib.triCol n) + A006068 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)).toNat

end

end A268715.P7451648431105528350

noncomputable section

/-- A268715: Square array A(i,j) = A003188(A006068(i) + A006068(j)), read by antidiagonals as A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

Offset 0, canonical program `A268715.P7451648431105528350`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268715 (n : ℕ) : ℤ :=
  A268715.P7451648431105528350.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268715.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268716.P9381113325776133009

`2*A006068(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268716.P9381113325776133009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006068 n

end

end A268716.P9381113325776133009

noncomputable section

/-- A268716: a(n) = 2*A006068(n); main diagonal of A268714.

Offset 0, canonical program `A268716.P9381113325776133009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268716 (n : ℕ) : ℤ :=
  A268716.P9381113325776133009.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268716.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268719.P889818638160862363

`A003188(A006068(col(n))+A006068(row(n)))`
-/

namespace A268719.P889818638160862363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A006068 (SequenceMachineLib.triCol n) + A006068 (SequenceMachineLib.triRow n)).toNat

end

end A268719.P889818638160862363

noncomputable section

/-- A268719: Triangular table T(n>=0,k=0..n) = A003188(A006068(n) + A006068(k)), read by rows as A(0,0), A(1,0), A(1,1), A(2,0), A(2,1), A(2,2), ...

Offset 0, canonical program `A268719.P889818638160862363`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268719 (n : ℕ) : ℤ :=
  A268719.P889818638160862363.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268719.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268722.P6401053392494273194

`A003188(3*A006068(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268722.P6401053392494273194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (3 * A006068 n).toNat

end

end A268722.P6401053392494273194

noncomputable section

/-- A268722: a(n) = A003188(3*A006068(n)), where A003188 is binary Gray code and A006068 is its inverse.

Offset 0, canonical program `A268722.P6401053392494273194`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268722 (n : ℕ) : ℤ :=
  A268722.P6401053392494273194.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268722.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268723.P2389493602278608129

`A003188(A006068(n)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268723.P2389493602278608129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A006068 n ^ 2).toNat

end

end A268723.P2389493602278608129

noncomputable section

/-- A268723: Main diagonal of A268725: a(n) = A003188(A006068(n)^2), where A003188 is binary Gray code and A006068 is its inverse.

Offset 0, canonical program `A268723.P2389493602278608129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268723 (n : ℕ) : ℤ :=
  A268723.P2389493602278608129.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268723.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268724.P15430574446493443891

`A006068(col(n)+1)*A006068(row(n)-col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268724.P15430574446493443891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (SequenceMachineLib.triCol n + 1) * A006068 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A268724.P15430574446493443891

noncomputable section

/-- A268724: Square array A(i,j) = A006068(i) * A006068(j), read by antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

Offset 1, canonical program `A268724.P15430574446493443891`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268724 (n : ℕ) : ℤ :=
  A268724.P15430574446493443891.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268724.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268725.P18393995439646546994

`A003188(A006068(col(n)+1)*A006068(row(n)-col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268725.P18393995439646546994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A006068 (SequenceMachineLib.triCol n + 1) * A006068 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat).toNat

end

end A268725.P18393995439646546994

noncomputable section

/-- A268725: Square array A(i,j) = A003188(A006068(i) * A006068(j)), read by antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

Offset 1, canonical program `A268725.P18393995439646546994`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268725 (n : ℕ) : ℤ :=
  A268725.P18393995439646546994.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268727.P7725352305021057032

`A001511(1+A006068(n))`
-/

namespace A268727.P7725352305021057032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (1 + A006068 n).toNat

end

end A268727.P7725352305021057032

noncomputable section

/-- A268727: One-based index of the toggled bit between n and A268717(n+1): a(n) = A070939(A003987(n,A268717(1+n))).

Offset 0, canonical program `A268727.P7725352305021057032`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268727 (n : ℕ) : ℤ :=
  A268727.P7725352305021057032.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268727.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268835.P3997942670541146932

`A005811(xor(A006068(n)+n, A006068(n)))`
-/

namespace A268835.P3997942670541146932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Int.xor (A006068 n + (n : ℤ)) (A006068 n)).toNat

end

end A268835.P3997942670541146932

noncomputable section

/-- A268835: Main diagonal of arrays A268833 & A268834: a(n) = A101080(n, A268820(n, 2*n)).

Offset 0, canonical program `A268835.P3997942670541146932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. -/
def A268835 (n : ℕ) : ℤ :=
  A268835.P3997942670541146932.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. -/
def A268835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269844.P17306079981013533178

`p?[A179017(n+2)]`
-/

namespace A269844.P17306079981013533178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269844.P17306079981013533178

noncomputable section

/-- A269844: Primes equal to the sum of a pair of consecutive integers which are both squarefree.

Offset 1, canonical program `A269844.P17306079981013533178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2093 terms. -/
def A269844 (n : ℕ) : ℤ :=
  A269844.P17306079981013533178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2093 terms. -/
def A269844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272040.P17165963704395840071

`A000010(A000129(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A272040.P17165963704395840071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000129 (n + 1)).toNat

end

end A272040.P17165963704395840071

noncomputable section

/-- A272040: a(n) = A000010(A000129(n)).

Offset 1, canonical program `A272040.P17165963704395840071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272040 (n : ℕ) : ℤ :=
  A272040.P17165963704395840071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276503.P3868539189465671820

`eq[A000010(n+11), A000010(n+1)]+1`
-/

namespace A276503.P3868539189465671820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276503.P3868539189465671820

noncomputable section

/-- A276503: Numbers n such that phi(n) = phi(n+10), with Euler's totient function phi = A000010.

Offset 1, canonical program `A276503.P3868539189465671820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A276503 (n : ℕ) : ℤ :=
  (A276503.P3868539189465671820.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A276503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278044.P17470812905146498962

`A278042(n)+A278043(n)`
-/

namespace A278044.P17470812905146498962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278042 n + A278043 n

end

end A278044.P17470812905146498962

noncomputable section

/-- A278044: Length of tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A278044.P17470812905146498962`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278042, A278043, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278044 (n : ℕ) : ℤ :=
  A278044.P17470812905146498962.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278042, A278043, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278044.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279290.P4214688874557127316

`A001158(n+1)-A005064(n+1)`
-/

namespace A279290.P4214688874557127316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - A005064 (n + 1)

end

end A279290.P4214688874557127316

noncomputable section

/-- A279290: Sum of cubes of nonprime divisors of n.

Offset 1, canonical program `A279290.P4214688874557127316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, A005064, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A279290 (n : ℕ) : ℤ :=
  A279290.P4214688874557127316.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, A005064, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A279290.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279507.P3039935428284071331

`floor(A000010(n+1)/A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A279507.P3039935428284071331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)⌋

end

end A279507.P3039935428284071331

noncomputable section

/-- A279507: a(n) = floor(phi(n)/tau(n)).

Offset 1, canonical program `A279507.P3039935428284071331`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279507 (n : ℕ) : ℤ :=
  A279507.P3039935428284071331.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279507.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280577.P8585216914748748291

`A000010(n+1)+floor((n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280577.P8585216914748748291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + ⌊(n + 1 : ℚ) / 2⌋

end

end A280577.P8585216914748748291

noncomputable section

/-- A280577: a(n) = eulerphi(n) + floor(n/2).

Offset 1, canonical program `A280577.P8585216914748748291`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280577 (n : ℕ) : ℤ :=
  A280577.P8585216914748748291.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280577.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280877.P16270623710386896264

`lt[A000010(A028310(n)), A256502(n+1)]`
-/

namespace A280877.P16270623710386896264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280877.P16270623710386896264

noncomputable section

/-- A280877: Occurrences of decrease of the probability density P(a(n)) of coprime numbers k,m, satisfying 1 <= k <= a(n) and 1 <= m <= a(n); i.e., P(a(n)) < P(a(n)-1).

Offset 1, canonical program `A280877.P16270623710386896264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1278 terms. -/
def A280877 (n : ℕ) : ℤ :=
  (A280877.P16270623710386896264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1278 terms. -/
def A280877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280919.P2165921723752371989

`A280223(A071562(n+1))`
-/

namespace A280919.P2165921723752371989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280223 (A071562 (n + 1)).toNat

end

end A280919.P2165921723752371989

noncomputable section

/-- A280919: Precipices from the successive terraces, descending by the main diagonal of the pyramid described in A245092. Also first differences of A071562.

Offset 1, canonical program `A280919.P2165921723752371989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, A280223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280919 (n : ℕ) : ℤ :=
  A280919.P2165921723752371989.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, A280223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280919.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283737.P2852708590030688587

`∩[A085370(n+1), A143164(n+1)]`
-/

namespace A283737.P2852708590030688587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283737.P2852708590030688587

noncomputable section

/-- A283737: Numbers with digit sum 13 that are multiples of 13.

Offset 1, canonical program `A283737.P2852708590030688587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A283737 (n : ℕ) : ℤ :=
  (A283737.P2852708590030688587.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A283737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283808.P7073396927989824590

`record[gcd(n+1, (n+1)%A000010(A000010(n+1)))]`
-/

namespace A283808.P7073396927989824590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (n + 1 : ℤ) (A000010 (A000010 (n + 1)).toNat))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283808.P7073396927989824590

noncomputable section

/-- A283808: Numbers k such that phi(phi(k)) divides k, where phi(k) is A000010(k).

Offset 1, canonical program `A283808.P7073396927989824590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A283808 (n : ℕ) : ℤ :=
  (A283808.P7073396927989824590.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A283808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283999.P10523247562261861769

`xor(A005187(n), A006068(n))`
-/

namespace A283999.P10523247562261861769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005187 n) (A006068 n)

end

end A283999.P10523247562261861769

noncomputable section

/-- A283999: a(n) = A005187(n) XOR A006068(n), where XOR is bitwise-xor (A003987).

Offset 0, canonical program `A283999.P10523247562261861769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283999 (n : ℕ) : ℤ :=
  A283999.P10523247562261861769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284438.P17089990379882731108

`A000010(n+1)^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284438.P17089990379882731108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ (n + 1)

end

end A284438.P17089990379882731108

noncomputable section

/-- A284438: a(n) = phi(n)^n.

Offset 1, canonical program `A284438.P17089990379882731108`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284438 (n : ℕ) : ℤ :=
  A284438.P17089990379882731108.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285093.P12873639855771182747

`A007953(A061383(n))/A055642(A061383(n))`
-/

namespace A285093.P12873639855771182747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 (A061383 n).toNat : ℚ) / (A055642 (A061383 n).toNat : ℚ)

end

end A285093.P12873639855771182747

noncomputable section

/-- A285093: Corresponding values of arithmetic means of digits of numbers from A061383.

Offset 0, canonical program `A285093.P12873639855771182747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A061383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285093 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285093.P12873639855771182747.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A061383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285183.P16153452333160018341

`round((n+1)*A001221(n+1)/A000010(n+1))`
-/

namespace A285183.P16153452333160018341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℤ) * A001221 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ))

end

end A285183.P16153452333160018341

noncomputable section

/-- A285183: Nearest integer to n*omega(n)/phi(n).

Offset 1, canonical program `A285183.P16153452333160018341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285183 (n : ℕ) : ℤ :=
  A285183.P16153452333160018341.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285183.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286546.P17363262112593177841

`A006068(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286546.P17363262112593177841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n - (n : ℤ)

end

end A286546.P17363262112593177841

noncomputable section

/-- A286546: a(n) = A006068(n) - n.

Offset 0, canonical program `A286546.P17363262112593177841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286546 (n : ℕ) : ℤ :=
  A286546.P17363262112593177841.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286546.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A287415.P9002368936138603502

`n-a(A000010(a(n-1)))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A287415.P9002368936138603502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - a (A000010 (a (n - 1)).toNat).toNat

end

end A287415.P9002368936138603502

noncomputable section

/-- A287415: a(0) = 0; a(1) = 1; a(n) = n - a(phi(a(n-1))), where phi() is the Euler totient function (A000010).

Offset 0, canonical program `A287415.P9002368936138603502`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287415 (n : ℕ) : ℤ :=
  A287415.P9002368936138603502.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287415.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288375.P15167059163787172092

`char[comp[A288625(n+1)-1]]`
-/

namespace A288375.P15167059163787172092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288625 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288375.P15167059163787172092

noncomputable section

/-- A288375: Fixed point of the mapping 00->1000, 10->1001, starting at 00.

Offset 1, canonical program `A288375.P15167059163787172092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288375 (n : ℕ) : ℤ :=
  (A288375.P15167059163787172092.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289353.P4800151085491080530

`p?[A030430(n+1)-4]`
-/

namespace A289353.P4800151085491080530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289353.P4800151085491080530

noncomputable section

/-- A289353: Primes p such that (p,p+4) is a pair of cousin primes and p == 7 (mod 10).

Offset 1, canonical program `A289353.P4800151085491080530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2759 terms. -/
def A289353 (n : ℕ) : ℤ :=
  A289353.P4800151085491080530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2759 terms. -/
def A289353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289831.P1355285298190598776

`A289813(n)+A289814(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289831.P1355285298190598776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 n + A289814 n

end

end A289831.P1355285298190598776

noncomputable section

/-- A289831: a(n) = A289813(n) + A289814(n).

Offset 0, canonical program `A289831.P1355285298190598776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289813, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289831 (n : ℕ) : ℤ :=
  A289831.P1355285298190598776.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289813, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289831.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A290434.P16415859728572519795

`eq[A000010(A001414(n+1)+1), A288654(n+1)]+1`
-/

namespace A290434.P16415859728572519795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001414 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288654 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A290434.P16415859728572519795

noncomputable section

/-- A290434: Semiprimes of the form pq such that p+q+1 is prime.

Offset 1, canonical program `A290434.P16415859728572519795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2727 terms. -/
def A290434 (n : ℕ) : ℤ :=
  (A290434.P16415859728572519795.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2727 terms. -/
def A290434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291756.P7501113078620905802

`1/2*(2+(A003557(n+1)+A000010(n+1))²-A003557(n+1)-3*A000010(n+1))`
-/

namespace A291756.P7501113078620905802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A003557 (n + 1) + A000010 (n + 1)) ^ 2 - A003557 (n + 1) - 3 * A000010 (n + 1) : ℚ)

end

end A291756.P7501113078620905802

noncomputable section

/-- A291756: Compound filter: a(n) = P(A003557(n), A000010(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A291756.P7501113078620905802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291756 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291756.P7501113078620905802.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291756.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292600.P3914548694480041296

`A006068(floor(n/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292600.P3914548694480041296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 ⌊(n : ℚ) / 2⌋.toNat

end

end A292600.P3914548694480041296

noncomputable section

/-- A292600: a(n) = A006068(floor(n/2)); A006068 with every term duplicated, where A006068 is the inverse of binary gray code.

Offset 0, canonical program `A292600.P3914548694480041296`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292600 (n : ℕ) : ℤ :=
  A292600.P3914548694480041296.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292600.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292786.P1789774906474236372

`A001615(n+1)-A000010(n+1)`
-/

namespace A292786.P1789774906474236372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) - A000010 (n + 1)

end

end A292786.P1789774906474236372

noncomputable section

/-- A292786: a(n) = psi(n) - phi(n).

Offset 1, canonical program `A292786.P1789774906474236372`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292786 (n : ℕ) : ℤ :=
  A292786.P1789774906474236372.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292786.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293516.P8793904391479843574

`A000010(n+1)-2*A000010(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293516.P8793904391479843574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 2 * A000010 (A000010 (n + 1)).toNat

end

end A293516.P8793904391479843574

noncomputable section

/-- A293516: a(n) = phi(n) - 2*phi(phi(n)), where phi = Euler totient function, A000010.

Offset 1, canonical program `A293516.P8793904391479843574`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293516 (n : ℕ) : ℤ :=
  A293516.P8793904391479843574.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293516.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294074.P2969751212753778829

`p?[A026491(A038550(n+1))-1]`
-/

namespace A294074.P2969751212753778829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A038550 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A294074.P2969751212753778829

noncomputable section

/-- A294074: Primes of the form p*2^k + 1, where p is an odd prime and k is odd.

Offset 1, canonical program `A294074.P2969751212753778829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A294074 (n : ℕ) : ℤ :=
  A294074.P2969751212753778829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A294074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295126.P8603545562454549646

`(n+1)/A126864(n+1)`
-/

namespace A295126.P8603545562454549646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A126864 (n + 1) : ℚ)

end

end A295126.P8603545562454549646

noncomputable section

/-- A295126: Denominator of Sum_{d|n} mu(n/d)/d, where mu is the Möbius function A008683.

Offset 1, canonical program `A295126.P8603545562454549646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295126 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295126.P8603545562454549646.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295127.P883789148021260298

`A023900(n+1)/A126864(n+1)`
-/

namespace A295127.P883789148021260298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023900 (n + 1) : ℚ) / (A126864 (n + 1) : ℚ)

end

end A295127.P883789148021260298

noncomputable section

/-- A295127: Numerator of Sum_{d|n} mu(n/d)/d, where mu is the Möbius function A008683.

Offset 1, canonical program `A295127.P883789148021260298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295127 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295127.P883789148021260298.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295301.P15354737003195505250

`n+1-A000010(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295301.P15354737003195505250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (A000203 (n + 1)).toNat

end

end A295301.P15354737003195505250

noncomputable section

/-- A295301: a(n) = n - phi(sigma(n)), where phi = A000010 and sigma = A000203.

Offset 1, canonical program `A295301.P15354737003195505250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295301 (n : ℕ) : ℤ :=
  A295301.P15354737003195505250.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295301.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295302.P2815971940510698898

`A000203(A000010(n+1))-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295302.P2815971940510698898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 (n + 1)).toNat - (n + 1 : ℤ)

end

end A295302.P2815971940510698898

noncomputable section

/-- A295302: a(n) = sigma(phi(n)) - n, where phi = A000010 and sigma = A000203.

Offset 1, canonical program `A295302.P2815971940510698898`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295302 (n : ℕ) : ℤ :=
  A295302.P2815971940510698898.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295302.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295313.P9853845397252640583

`gcd(A000203(n+1), A000010(A000203(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295313.P9853845397252640583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A000010 (A000203 (n + 1)).toNat)

end

end A295313.P9853845397252640583

noncomputable section

/-- A295313: a(n) = gcd(sigma(n), phi(sigma(n))).

Offset 1, canonical program `A295313.P9853845397252640583`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295313 (n : ℕ) : ℤ :=
  (A295313.P9853845397252640583.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295313.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295496.P15796292661352488148

`A000010(6^(n+1)-1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295496.P15796292661352488148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (6 ^ (n + 1) - 1) : ℚ) / (n + 1 : ℚ)

end

end A295496.P15796292661352488148

noncomputable section

/-- A295496: a(n) = phi(6^n-1)/n, where phi is Euler's totient function (A000010).

Offset 1, canonical program `A295496.P15796292661352488148`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295496 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295496.P15796292661352488148.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295496.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295497.P12508717939502689986

`A000010(10^(n+1)-1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295497.P12508717939502689986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (10 ^ (n + 1) - 1) : ℚ) / (n + 1 : ℚ)

end

end A295497.P12508717939502689986

noncomputable section

/-- A295497: a(n) = phi(10^n-1)/n, where phi is Euler's totient function (A000010).

Offset 1, canonical program `A295497.P12508717939502689986`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295497 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295497.P12508717939502689986.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295497.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295500.P1753605882960463589

`A000010(3^(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295500.P1753605882960463589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 ^ (n + 1) - 1)

end

end A295500.P1753605882960463589

noncomputable section

/-- A295500: a(n) = phi(3^n-1), where phi is Euler's totient function (A000010).

Offset 1, canonical program `A295500.P1753605882960463589`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295500 (n : ℕ) : ℤ :=
  A295500.P1753605882960463589.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295500.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295501.P4869209951066471894

`A000010(4^(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295501.P4869209951066471894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (4 ^ (n + 1) - 1)

end

end A295501.P4869209951066471894

noncomputable section

/-- A295501: a(n) = phi(4^n-1), where phi is Euler's totient function (A000010).

Offset 1, canonical program `A295501.P4869209951066471894`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295501 (n : ℕ) : ℤ :=
  A295501.P4869209951066471894.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295501.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295502.P436210428483275086

`A000010(5^(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295502.P436210428483275086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (5 ^ (n + 1) - 1)

end

end A295502.P436210428483275086

noncomputable section

/-- A295502: a(n) = phi(5^n-1), where phi is Euler's totient function (A000010).

Offset 1, canonical program `A295502.P436210428483275086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295502 (n : ℕ) : ℤ :=
  A295502.P436210428483275086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295502.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295503.P16393159655749531957

`A000010(10^(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295503.P16393159655749531957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (10 ^ (n + 1) - 1)

end

end A295503.P16393159655749531957

noncomputable section

/-- A295503: a(n) = phi(10^n-1), where phi is Euler's totient function (A000010).

Offset 1, canonical program `A295503.P16393159655749531957`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295503 (n : ℕ) : ℤ :=
  A295503.P16393159655749531957.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295660.P1297563117309372631

`A000120(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295660.P1297563117309372631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000010 (n + 1)).toNat

end

end A295660.P1297563117309372631

noncomputable section

/-- A295660: Binary weight of Euler phi: a(n) = A000120(A000010(n)).

Offset 1, canonical program `A295660.P1297563117309372631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295660 (n : ℕ) : ℤ :=
  A295660.P1297563117309372631.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296023.P3653154413069258971

`2*eq[gcd(2*n+1, A000010(2*n+1)), A054024(n+1)]+1`
-/

namespace A296023.P3653154413069258971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A000010 (2 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A296023.P3653154413069258971

noncomputable section

/-- A296023: Numbers n such that there is precisely 1 group of order n and 2 of order n + 1.

Offset 1, canonical program `A296023.P3653154413069258971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A296023 (n : ℕ) : ℤ :=
  (A296023.P3653154413069258971.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A296023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297044.P13798135279491243698

`A359326(A175144(floor(log2(n+1))!))`
-/

namespace A297044.P13798135279491243698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359326 (A175144 (Nat.factorial (Nat.log 2 (n + 1)))).toNat

end

end A297044.P13798135279491243698

noncomputable section

/-- A297044: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-16 digits of n; see Comments.

Offset 1, canonical program `A297044.P13798135279491243698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A297044 (n : ℕ) : ℤ :=
  A297044.P13798135279491243698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A297044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297159.P13683911670693545293

`3*(n+1)-2*A000010(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A297159.P13683911670693545293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - 2 * A000010 (n + 1) - A000203 (n + 1)

end

end A297159.P13683911670693545293

noncomputable section

/-- A297159: a(n) = 3*n - 2*phi(n) - sigma(n); Difference between the deficiency of n and its Moebius-transform.

Offset 1, canonical program `A297159.P13683911670693545293`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297159 (n : ℕ) : ℤ :=
  A297159.P13683911670693545293.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297159.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297170.P17524158691492541290

`gcd(A000010(n+1), A000203(n+1)-(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A297170.P17524158691492541290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A000203 (n + 1) - (n + 1 : ℤ))

end

end A297170.P17524158691492541290

noncomputable section

/-- A297170: a(n) = gcd(phi(n), sigma(n)-n).

Offset 1, canonical program `A297170.P17524158691492541290`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297170 (n : ℕ) : ℤ :=
  (A297170.P17524158691492541290.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A299822.P17822751971997811856

`A000010(n+1)*A007947(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A299822.P17822751971997811856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A007947 (n + 1)

end

end A299822.P17822751971997811856

noncomputable section

/-- A299822: Product of Euler's totient and the squarefree kernel, a(n) = phi(n)*rad(n).

Offset 1, canonical program `A299822.P17822751971997811856`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299822 (n : ℕ) : ℤ :=
  A299822.P17822751971997811856.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300251.P9104168606851773387

`∑{d}[n+1, A000010(#)*A349394((n+1)/#)]`
-/

namespace A300251.P9104168606851773387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300251.P9104168606851773387

noncomputable section

/-- A300251: Möbius transform of arithmetic derivative (A003415).

Offset 1, canonical program `A300251.P9104168606851773387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300251 (n : ℕ) : ℤ :=
  A300251.P9104168606851773387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300836.P11681242100459120982

`∑{d}[n+1, A007895(#%(n+1))]`
-/

namespace A300836.P11681242100459120982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007895 (d % (n + 1))

end

end A300836.P11681242100459120982

noncomputable section

/-- A300836: a(n) is the total number of terms (1-digits) in Zeckendorf representation of all proper divisors of n.

Offset 1, canonical program `A300836.P11681242100459120982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300836 (n : ℕ) : ℤ :=
  A300836.P11681242100459120982.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300839.P17405904623820629113

`A006068(A057300(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300839.P17405904623820629113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A057300 n).toNat

end

end A300839.P17405904623820629113

noncomputable section

/-- A300839: Permutation of nonnegative integers: a(n) = A006068(A057300(n)).

Offset 0, canonical program `A300839.P17405904623820629113`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A057300, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300839 (n : ℕ) : ℤ :=
  A300839.P17405904623820629113.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A057300, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300839.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306263.P2796597650289034260

`record[gcd(n+1, A324393(n+1))]`
-/

namespace A306263.P2796597650289034260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A324393 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306263.P2796597650289034260

noncomputable section

/-- A306263: Numbers k such that, for any divisor d of k, the Hamming weight of d divides k.

Offset 1, canonical program `A306263.P2796597650289034260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. -/
def A306263 (n : ℕ) : ℤ :=
  (A306263.P2796597650289034260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. -/
def A306263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306369.P8843425213670804087

`A000010(n+1)+A069359(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306369.P8843425213670804087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A069359 (n + 1)

end

end A306369.P8843425213670804087

noncomputable section

/-- A306369: a(n) = A000010(n) + A069359(n).

Offset 1, canonical program `A306369.P8843425213670804087`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306369 (n : ℕ) : ℤ :=
  A306369.P8843425213670804087.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306369.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306411.P1404693947266497701

`(n+1)^5*A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306411.P1404693947266497701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 5 : ℤ) * A000010 (n + 1)

end

end A306411.P1404693947266497701

noncomputable section

/-- A306411: a(n) = phi(n^6) = n^5*phi(n).

Offset 1, canonical program `A306411.P1404693947266497701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306411 (n : ℕ) : ℤ :=
  A306411.P1404693947266497701.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306411.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306412.P13375825734425677663

`(n+1)^7*A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306412.P13375825734425677663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 7 : ℤ) * A000010 (n + 1)

end

end A306412.P13375825734425677663

noncomputable section

/-- A306412: a(n) = phi(n^8) = n^7*phi(n).

Offset 1, canonical program `A306412.P13375825734425677663`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306412 (n : ℕ) : ℤ :=
  A306412.P13375825734425677663.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306412.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306510.P7325178267120369206

`eq[2*A145154(n), A145154(A007953(n))]`
-/

namespace A306510.P7325178267120369206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145154 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306510.P7325178267120369206

noncomputable section

/-- A306510: Numbers k such that twice the number of divisors of k is equal to the number of divisors of the sum of digits of k.

Offset 1, canonical program `A306510.P7325178267120369206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A306510 (n : ℕ) : ℤ :=
  (A306510.P7325178267120369206.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A306510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306896.P14191396921043126274

`∑{d}[n+1, (2^#+2*(-1)^#)*A000010((n+1)/#)]`
-/

namespace A306896.P14191396921043126274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((2 ^ d : ℤ) + 2 * (-1) ^ d) * A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306896.P14191396921043126274

noncomputable section

/-- A306896: a(n) = Sum_{d|n} (2^d + 2*(-1)^d)*phi(n/d).

Offset 1, canonical program `A306896.P14191396921043126274`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306896 (n : ℕ) : ℤ :=
  A306896.P14191396921043126274.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306896.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306899.P6142850787279588073

`∑{d}[n+1, (2^#-(-1)^#)*A000010(3*(n+1)/#)]`
-/

namespace A306899.P6142850787279588073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((2 ^ d : ℤ) - (-1) ^ d) * A000010 (SequenceMachineLib.roundAway ((3 * (n + 1) : ℚ) / (d : ℚ))).toNat

end

end A306899.P6142850787279588073

noncomputable section

/-- A306899: a(n) = Sum_{d|n} (2^d - (-1)^d)*phi(3*n/d).

Offset 1, canonical program `A306899.P6142850787279588073`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306899 (n : ℕ) : ℤ :=
  A306899.P6142850787279588073.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306899.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308470.P12117465840209749667

`(gcd(A000010(n+1), 4*(n+1)²-1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A308470.P12117465840209749667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.gcd (A000010 (n + 1)) ((4 * (n + 1) ^ 2 : ℤ) - 1) : ℤ) - 1 : ℚ) / 2

end

end A308470.P12117465840209749667

noncomputable section

/-- A308470: a(n) = (gcd(phi(n), 4*n^2 - 1) - 1)/2, where phi is A000010, Euler's totient function.

Offset 1, canonical program `A308470.P12117465840209749667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308470 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308470.P12117465840209749667.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308470.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308707.P10750836579362091936

`gcd(n+1, A000010(n+1)+A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A308707.P10750836579362091936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000010 (n + 1) + A000203 (n + 1))

end

end A308707.P10750836579362091936

noncomputable section

/-- A308707: a(n) = gcd(n, phi(n) + sigma(n)), where phi is A000010 and sigma is A000203.

Offset 1, canonical program `A308707.P10750836579362091936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308707 (n : ℕ) : ℤ :=
  (A308707.P10750836579362091936.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309369.P13434162935675506423

`∑{d}[n+1, A000010((n+1)/#)^#]`
-/

namespace A309369.P13434162935675506423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ d

end

end A309369.P13434162935675506423

noncomputable section

/-- A309369: a(n) = Sum_{d|n} phi(n/d)^d, where phi = Euler totient function (A000010).

Offset 1, canonical program `A309369.P13434162935675506423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A309369 (n : ℕ) : ℤ :=
  A309369.P13434162935675506423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A309369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309674.P15182603414113973909

`∑{digits}[A157845(n), #]`
-/

namespace A309674.P15182603414113973909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A309674.P15182603414113973909

noncomputable section

/-- A309674: a(1) = 1, a(n) = hamming_weight(Sum_{k=1..n-1} a(k) ) for n>=2.

Offset 1, canonical program `A309674.P15182603414113973909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309674 (n : ℕ) : ℤ :=
  (A309674.P15182603414113973909.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186281.P5592322813747269097

`p?[A186278(n+1)]`
-/

namespace A186281.P5592322813747269097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186281.P5592322813747269097

noncomputable section

/-- A186281: Primes within A186278.

Offset 1, canonical program `A186281.P5592322813747269097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A186281 (n : ℕ) : ℤ :=
  A186281.P5592322813747269097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A186281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200260.P581452882919251261

`comp[A200259(n+1)-1]+1`
-/

namespace A200260.P581452882919251261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200259 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A200260.P581452882919251261

noncomputable section

/-- A200260: Numbers k such that k-th prime has an odd digit sum.

Offset 1, canonical program `A200260.P581452882919251261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200260 (n : ℕ) : ℤ :=
  (A200260.P581452882919251261.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200262.P13695405948688906386

`∑[A200261(n+1)]`
-/

namespace A200262.P13695405948688906386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P13695405948688906386

noncomputable section

/-- A200262: Partial sums of A200261.

Offset 1, canonical program `A200262.P13695405948688906386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200262 (n : ℕ) : ℤ :=
  A200262.P13695405948688906386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200263.P276379876242031562

`1-A200261(n+1)`
-/

namespace A200263.P276379876242031562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A200261 (n + 1)

end

end A200263.P276379876242031562

noncomputable section

/-- A200263: a(n) = 1 iff n-th prime has an odd digit sum.

Offset 1, canonical program `A200263.P276379876242031562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200263 (n : ℕ) : ℤ :=
  A200263.P276379876242031562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219675.P3662688382853343317

`A004207(n)-A000007(n)`
-/

namespace A219675.P3662688382853343317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n - A000007 n

end

end A219675.P3662688382853343317

noncomputable section

/-- A219675: Starting with a(0)=0, a(n) = 1 + the sum of the digital sums of a(0) through a(n-1).

Offset 0, canonical program `A219675.P3662688382853343317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219675 (n : ℕ) : ℤ :=
  A219675.P3662688382853343317.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222423.P10040492677139867736

`(A045943(n)-A224915(n))/2`
-/

namespace A222423.P10040492677139867736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045943 n - A224915 n : ℚ) / 2

end

end A222423.P10040492677139867736

noncomputable section

/-- A222423: Sum of (n AND k) for k = 0, 1, 2, ..., n, where AND is the bitwise AND operator.

Offset 0, canonical program `A222423.P10040492677139867736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A222423 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A222423.P10040492677139867736.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A222423.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230286.P917926184221838479

`A016052(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A230286.P917926184221838479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016052 (n + 1) : ℚ) / 3

end

end A230286.P917926184221838479

noncomputable section

/-- A230286: a(n) = A016052(n)/3.

Offset 1, canonical program `A230286.P917926184221838479`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A016052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A230286.P917926184221838479.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A016052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A235225.P2460599509591164425

`∩[A273159(n+1), A017221(n)]`
-/

namespace A235225.P2460599509591164425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235225.P2460599509591164425

noncomputable section

/-- A235225: Numbers whose sum of digits is 14.

Offset 1, canonical program `A235225.P2460599509591164425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A235225 (n : ℕ) : ℤ :=
  (A235225.P2460599509591164425.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A235225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239656.P12690542447395092271

`A007304(n+2)-A007304(n+1)`
-/

namespace A239656.P12690542447395092271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 2) - A007304 (n + 1)

end

end A239656.P12690542447395092271

noncomputable section

/-- A239656: First differences of sphenic numbers, cf. A007304.

Offset 1, canonical program `A239656.P12690542447395092271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239656 (n : ℕ) : ℤ :=
  A239656.P12690542447395092271.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240754.P6827576315638044596

`eq[1, A240752(n+1)+2]`
-/

namespace A240754.P6827576315638044596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240754.P6827576315638044596

noncomputable section

/-- A240754: Numbers k with digit_sum(k*k) - 1 = digit_sum((k+1)*(k+1)).

Offset 1, canonical program `A240754.P6827576315638044596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A240754 (n : ℕ) : ℤ :=
  (A240754.P6827576315638044596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A240754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254066.P6804668024201466388

`∩[A058369(n+1), A067251(n+1)]`
-/

namespace A254066.P6804668024201466388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254066.P6804668024201466388

noncomputable section

/-- A254066: Primitive numbers n such that the sums of the digits of n and n^2 coincide.

Offset 1, canonical program `A254066.P6804668024201466388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A254066 (n : ℕ) : ℤ :=
  (A254066.P6804668024201466388.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A254066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254621.P1888052046391958266

`∩[A052382(n+1), A062996(n+1)]`
-/

namespace A254621.P1888052046391958266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254621.P1888052046391958266

noncomputable section

/-- A254621: Zerofree numbers having product of digits less than or equal to sum of digits.

Offset 1, canonical program `A254621.P1888052046391958266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A254621 (n : ℕ) : ℤ :=
  (A254621.P1888052046391958266.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A254621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271329.P13346107551120019866

`A000203(A007304(n+1))`
-/

namespace A271329.P13346107551120019866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007304 (n + 1)).toNat

end

end A271329.P13346107551120019866

noncomputable section

/-- A271329: a(n) is the sum of the divisors of the n-th sphenic number (A007304).

Offset 1, canonical program `A271329.P13346107551120019866`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271329 (n : ℕ) : ℤ :=
  A271329.P13346107551120019866.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271329.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275082.P12631991313375267517

`filter[A374198(n+1), A294930(#)]`
-/

namespace A275082.P12631991313375267517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A275082.P12631991313375267517

noncomputable section

/-- A275082: Primitive abundant numbers (having no abundant proper divisors) that have perfect proper divisors.

Offset 1, canonical program `A275082.P12631991313375267517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1730 terms. -/
def A275082 (n : ℕ) : ℤ :=
  A275082.P12631991313375267517.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1730 terms. -/
def A275082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279776.P18021118608583568116

`∩[2*n, A235151(n+1)]/6`
-/

namespace A279776.P18021118608583568116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 6

end

end A279776.P18021118608583568116

noncomputable section

/-- A279776: Numbers n such that the sum of digits of 6n equals 12.

Offset 1, canonical program `A279776.P18021118608583568116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 981 terms. -/
def A279776 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A279776.P18021118608583568116.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 981 terms. -/
def A279776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285095.P226835775559454231

`A004427(p?[A061383(n)])`
-/

namespace A285095.P226835775559454231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285095.P226835775559454231

noncomputable section

/-- A285095: Corresponding values of arithmetic means of digits of primes from A069709.

Offset 1, canonical program `A285095.P226835775559454231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 576 terms. -/
def A285095 (n : ℕ) : ℤ :=
  A285095.P226835775559454231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 576 terms. -/
def A285095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294888.P2385972138544037667

`A294886(n+1)+A082551(n+1)*A187794(n+1)`
-/

namespace A294888.P2385972138544037667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294886 (n + 1) + A082551 (n + 1) * A187794 (n + 1)

end

end A294888.P2385972138544037667

noncomputable section

/-- A294888: Sum of nonabundant proper divisors of n.

Offset 1, canonical program `A294888.P2385972138544037667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294888 (n : ℕ) : ℤ :=
  A294888.P2385972138544037667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294927.P17135175495355119695

`floor(n*A341620(n+1)/(n+1))`
-/

namespace A294927.P17135175495355119695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * A341620 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A294927.P17135175495355119695

noncomputable section

/-- A294927: Number of proper divisors of n that are nondeficient (A023196).

Offset 1, canonical program `A294927.P17135175495355119695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294927 (n : ℕ) : ℤ :=
  A294927.P17135175495355119695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294927.provenance : SequenceMachineLib.Provenance := .conjectured

