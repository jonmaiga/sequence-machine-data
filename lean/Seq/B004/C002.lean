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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A220853.P2902271968462197626

`A061549(n)²`
-/

namespace A220853.P2902271968462197626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061549 n ^ 2

end

end A220853.P2902271968462197626

noncomputable section

/-- A220853: Denominators of the fraction (30*n+7) * binomial(2*n,n)^2 * 2F1([1/2 - n/2, -n/2], [1], 64)/(-256)^n, where 2F1 is the hypergeometric function.

Offset 0, canonical program `A220853.P2902271968462197626`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220853 (n : ℕ) : ℤ :=
  A220853.P2902271968462197626.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220853.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228329.P18294392692715026064

`A051960(2*n)/2`
-/

namespace A228329.P18294392692715026064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051960 (2 * n) : ℚ) / 2

end

end A228329.P18294392692715026064

noncomputable section

/-- A228329: a(n) = Sum_{k=0..n} (k+1)^2*T(n,k)^2 where T(n,k) is the Catalan triangle A039598.

Offset 0, canonical program `A228329.P18294392692715026064`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228329 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A228329.P18294392692715026064.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228329.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A294628.P17732687691627968368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294628 (n : ℕ) : ℤ :=
  A294628.P17732687691627968368.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A195585.P435392344371100577

`A054785((n+1)²)`
-/

namespace A195585.P435392344371100577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 ((n + 1) ^ 2)

end

end A195585.P435392344371100577

noncomputable section

/-- A195585: sigma(2*n^2) - sigma(n^2).

Offset 1, canonical program `A195585.P435392344371100577`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195585 (n : ℕ) : ℤ :=
  A195585.P435392344371100577.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195585.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A224880.P6096983120324589862

`A033879(n+1)+2*A000203(n+1)`
-/

namespace A224880.P6096983120324589862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + 2 * A000203 (n + 1)

end

end A224880.P6096983120324589862

noncomputable section

/-- A224880: a(n) = 2*n + sum of divisors of n.

Offset 1, canonical program `A224880.P6096983120324589862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A224880 (n : ℕ) : ℤ :=
  A224880.P6096983120324589862.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A224880.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A224903.P10254843835854398111

`A054785((n+1)^4)`
-/

namespace A224903.P10254843835854398111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 ((n + 1) ^ 4)

end

end A224903.P10254843835854398111

noncomputable section

/-- A224903: a(n) = sigma(2*n^4) - sigma(n^4).

Offset 1, canonical program `A224903.P10254843835854398111`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A224903 (n : ℕ) : ℤ :=
  A224903.P10254843835854398111.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A224903.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A225959.P1080982604390908792

`A054785((n+1)^3)`
-/

namespace A225959.P1080982604390908792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 ((n + 1) ^ 3)

end

end A225959.P1080982604390908792

noncomputable section

/-- A225959: a(n) = sigma(2*n^3) - sigma(n^3).

Offset 1, canonical program `A225959.P1080982604390908792`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225959 (n : ℕ) : ℤ :=
  A225959.P1080982604390908792.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225959.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A235796.P10282550748648679139

`A033879(n+1)-1`
-/

namespace A235796.P10282550748648679139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) - 1

end

end A235796.P10282550748648679139

noncomputable section

/-- A235796: 2*n - 1 - sigma(n).

Offset 1, canonical program `A235796.P10282550748648679139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235796 (n : ℕ) : ℤ :=
  A235796.P10282550748648679139.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235796.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A237424.P11989314284916062246

`(A052216(n+1)+1)/3`
-/

namespace A237424.P11989314284916062246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052216 (n + 1) + 1 : ℚ) / 3

end

end A237424.P11989314284916062246

noncomputable section

/-- A237424: Numbers of the form (10^a + 10^b + 1)/3.

Offset 1, canonical program `A237424.P11989314284916062246`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237424 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A237424.P11989314284916062246.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237424.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A187034.P12620824179047078274

`A101688(n)*(-1)^(A003056(n)+A002260(n+1)+1)`
-/

namespace A187034.P12620824179047078274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101688 n : ℚ) * (-1 : ℚ) ^ (A003056 n + A002260 (n + 1) + 1 : ℤ)

end

end A187034.P12620824179047078274

noncomputable section

/-- A187034: Number triangle T(n,k) = (-1)^(n-k) if binomial(k, n-k) > 0, 0 otherwise, with 0 <= k <= n.

Offset 0, canonical program `A187034.P12620824179047078274`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187034 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A187034.P12620824179047078274.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187034.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187881.P17144407328644083593

`floor((2*A002260(n+1)+1)/(A003056(n)+3))*A002260(n+1)`
-/

namespace A187881.P17144407328644083593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A002260 (n + 1) + 1 : ℚ) / (A003056 n + 3 : ℚ)⌋ * A002260 (n + 1)

end

end A187881.P17144407328644083593

noncomputable section

/-- A187881: Triangle read by rows: the n-th column consists of n n's followed by 0's.

Offset 1, canonical program `A187881.P17144407328644083593`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187881 (n : ℕ) : ℤ :=
  A187881.P17144407328644083593.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187881.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A209274.P7417626152320983520

`A002260(n+1)*(A002260(n+1)+2^A004736(n+1)-1)/2`
-/

namespace A209274.P7417626152320983520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) * (((A002260 (n + 1) : ℚ) + (2 : ℚ) ^ (A004736 (n + 1) : ℤ) - 1) / 2)

end

end A209274.P7417626152320983520

noncomputable section

/-- A209274: Table T(n,k) = n*(n+2^k-1)/2, n, k > 0 read by antidiagonals.

Offset 1, canonical program `A209274.P7417626152320983520`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A209274 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A209274.P7417626152320983520.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A209274.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A211197.P9481613499707772193

`2*A002260(n+1)-A057211(n+1)`
-/

namespace A211197.P9481613499707772193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002260 (n + 1) - A057211 (n + 1)

end

end A211197.P9481613499707772193

noncomputable section

/-- A211197: Table T(n,k) = 2*n + ((-1)^n)*(1/2 - (k-1) mod 2) - 1/2; n, k > 0, read by antidiagonals.

Offset 1, canonical program `A211197.P9481613499707772193`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211197 (n : ℕ) : ℤ :=
  A211197.P9481613499707772193.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211197.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A218828.P498474312992821161

`A004736(A002260(n+1))`
-/

namespace A218828.P498474312992821161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A002260 (n + 1)).toNat

end

end A218828.P498474312992821161

noncomputable section

/-- A218828: Reluctant sequence of reverse reluctant sequence A004736.

Offset 1, canonical program `A218828.P498474312992821161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A218828 (n : ℕ) : ℤ :=
  A218828.P498474312992821161.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A218828.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220280.P8469677914056541657

`A002260(A002260(n+1))`
-/

namespace A220280.P8469677914056541657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A002260 (n + 1)).toNat

end

end A220280.P8469677914056541657

noncomputable section

/-- A220280: The reluctant sequence for A002260.

Offset 1, canonical program `A220280.P8469677914056541657`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220280 (n : ℕ) : ℤ :=
  A220280.P8469677914056541657.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220280.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220415.P3446082501230133742

`floor(A002260(n+1)/A004736(n+1))+floor(A004736(n+1)/A002260(n+1))`
-/

namespace A220415.P3446082501230133742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)⌋ + ⌊(A004736 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A220415.P3446082501230133742

noncomputable section

/-- A220415: Table T(n,k)= floor(n/k)+ floor(k/n), n,k >0 read by antidiagonals.

Offset 1, canonical program `A220415.P3446082501230133742`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220415 (n : ℕ) : ℤ :=
  A220415.P3446082501230133742.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220415.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220416.P5663609671499042840

`(n+1)^A002260(n+1)`
-/

namespace A220416.P5663609671499042840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A220416.P5663609671499042840

noncomputable section

/-- A220416: Table T(n,k) = ((n+k-1)*(n+k-2)/2+n)^n, n,k >0 read by antidiagonals.

Offset 1, canonical program `A220416.P5663609671499042840`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220416 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A220416.P5663609671499042840.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220416.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220464.P617436510485413338

`A002260(A004736(n+1))`
-/

namespace A220464.P617436510485413338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A004736 (n + 1)).toNat

end

end A220464.P617436510485413338

noncomputable section

/-- A220464: Reverse reluctant sequence of reluctant sequence A002260.

Offset 1, canonical program `A220464.P617436510485413338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220464 (n : ℕ) : ℤ :=
  A220464.P617436510485413338.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220464.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A225145.P8159227418262710555

`1-floor(A004736(n+1)/(A002260(n+1)+1))+floor((A004736(n+1)-1)/(A002260(n+1)+1))`
-/

namespace A225145.P8159227418262710555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊(A004736 (n + 1) : ℚ) / (A002260 (n + 1) + 1 : ℚ)⌋ + ⌊(A004736 (n + 1) - 1 : ℚ) / (A002260 (n + 1) + 1 : ℚ)⌋

end

end A225145.P8159227418262710555

noncomputable section

/-- A225145: Square array read by downwards antidiagonals: T(n,k) = 1 if k mod (n+1) > 0, T(n,k) = 0 if k mod (n+1) = 0.

Offset 1, canonical program `A225145.P8159227418262710555`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225145 (n : ℕ) : ℤ :=
  A225145.P8159227418262710555.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225145.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A230286.P917926184221838479`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A230286.P917926184221838479.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230286.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236347.P18345253086849417705

`abs(A002260(2*(n+1))-A002260(n+1))+A002024(2*(n+1))-A002024(n+1)`
-/

namespace A236347.P18345253086849417705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002260 (2 * (n + 1)) - A002260 (n + 1)| + A002024 (2 * (n + 1)) - A002024 (n + 1)

end

end A236347.P18345253086849417705

noncomputable section

/-- A236347: Manhattan distances between n and 2*n in a left-aligned triangle with next M natural numbers in row M: 1, 2 3, 4 5 6, 7 8 9 10, etc.

Offset 1, canonical program `A236347.P18345253086849417705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236347 (n : ℕ) : ℤ :=
  A236347.P18345253086849417705.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236347.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A276349.P10108756407215495079

`A002275(A002260(n+1))*10^A004736(n+1)`
-/

namespace A276349.P10108756407215495079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002275 (A002260 (n + 1)).toNat : ℚ) * (10 : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A276349.P10108756407215495079

noncomputable section

/-- A276349: Numbers consisting of a nonempty string of 1's followed by a nonempty string of 0's.

Offset 1, canonical program `A276349.P10108756407215495079`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276349 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276349.P10108756407215495079.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276349.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A284006.P12312417108895449444`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284006 (n : ℕ) : ℤ :=
  (A284006.P12312417108895449444.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284006.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A286357.P14769850405548421969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286357 (n : ℕ) : ℤ :=
  A286357.P14769850405548421969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286357.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286460.P5982496039173164368

`1/2*(2+(A001511(n+1)+A000203(n+1))²-A001511(n+1)-3*A000203(n+1))`
-/

namespace A286460.P5982496039173164368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + ((A001511 (n + 1) + A000203 (n + 1)) ^ 2 - A001511 (n + 1)) - 3 * A000203 (n + 1) : ℚ)

end

end A286460.P5982496039173164368

noncomputable section

/-- A286460: Compound filter (2-adic valuation & sum of the divisors): a(n) = P(A001511(n), A000203(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286460.P5982496039173164368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286460 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286460.P5982496039173164368.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286460.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A309530.P10769901675090293297`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309530 (n : ℕ) : ℤ :=
  A309530.P10769901675090293297.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309530.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A183233.P11654729324377189926

`lt[1, Δ[A057945(n)²]]`
-/

namespace A183233.P11654729324377189926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183233.P11654729324377189926

noncomputable section

/-- A183233: Ordering of the numbers in the tree A183231; complement of A183234.

Offset 1, canonical program `A183233.P11654729324377189926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A183233 (n : ℕ) : ℤ :=
  (A183233.P11654729324377189926.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A183233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183292.P17832010991322585296

`lt[1, A002260(n+7)]`
-/

namespace A183292.P17832010991322585296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183292.P17832010991322585296

noncomputable section

/-- A183292: Complement of A055999.

Offset 1, canonical program `A183292.P17832010991322585296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183292 (n : ℕ) : ℤ :=
  (A183292.P17832010991322585296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183293.P7731830150971217467

`lt[1, A002260(n+11)]`
-/

namespace A183293.P7731830150971217467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183293.P7731830150971217467

noncomputable section

/-- A183293: Complement of A056000.

Offset 1, canonical program `A183293.P7731830150971217467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183293 (n : ℕ) : ℤ :=
  (A183293.P7731830150971217467.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183293.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A185322.P1874524359197115943

`ceil(A111333(n+1)/5)`
-/

namespace A185322.P1874524359197115943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A111333 (n + 1) : ℚ) / 5⌉

end

end A185322.P1874524359197115943

noncomputable section

/-- A185322: a(n) = ceiling(prime(n)/10).

Offset 1, canonical program `A185322.P1874524359197115943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185322 (n : ℕ) : ℤ :=
  A185322.P1874524359197115943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185371.P14009335989578313983

`floor(A166329(n+1)/A046301(n+1))`
-/

namespace A185371.P14009335989578313983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166329 (n + 1) : ℚ) / (A046301 (n + 1) : ℚ)⌋

end

end A185371.P14009335989578313983

noncomputable section

/-- A185371: Product of two consecutive primes divided by the next prime and rounded down.

Offset 1, canonical program `A185371.P14009335989578313983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185371 (n : ℕ) : ℤ :=
  A185371.P14009335989578313983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185780.P13066242038255754829

`A055461(n+1)+2*A062707(n)`
-/

namespace A185780.P13066242038255754829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + 2 * A062707 n

end

end A185780.P13066242038255754829

noncomputable section

/-- A185780: Array T(n,k) = k*(n*k-n+1), by antidiagonals.

Offset 1, canonical program `A185780.P13066242038255754829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185780 (n : ℕ) : ℤ :=
  A185780.P13066242038255754829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185904.P11695102435182326736

`A000292(A002260(n+1))*A058187(A099375(n))`
-/

namespace A185904.P11695102435182326736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002260 (n + 1)).toNat * A058187 (A099375 n).toNat

end

end A185904.P11695102435182326736

noncomputable section

/-- A185904: Multiplication table for the tetrahedral numbers (A000292), by antidiagonals.

Offset 1, canonical program `A185904.P11695102435182326736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185904 (n : ℕ) : ℤ :=
  A185904.P11695102435182326736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185907.P17717947783364132317

`C(C(2, A026729(n)), 2)`
-/

namespace A185907.P17717947783364132317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A026729 n).toNat) 2

end

end A185907.P17717947783364132317

noncomputable section

/-- A185907: Weight array of A185908, by descending antidiagonals.

Offset 1, canonical program `A185907.P17717947783364132317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185907 (n : ℕ) : ℤ :=
  (A185907.P17717947783364132317.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185907.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188095.P11723710385775795557

`∩[A188092(n+1)-1, A188092(n+1)]`
-/

namespace A188095.P11723710385775795557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188092 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188095.P11723710385775795557

noncomputable section

/-- A188095: Positions of 1 in A188093; complement of A188094.

Offset 1, canonical program `A188095.P11723710385775795557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5941 terms. -/
def A188095 (n : ℕ) : ℤ :=
  (A188095.P11723710385775795557.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5941 terms. -/
def A188095.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189011.P15385399491713008070

`and(1, A069011(n)+a(A002262(n)))` with `a(0)=0`
-/

namespace A189011.P15385399491713008070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land 1 (A069011 n + a (A002262 n).toNat)

end

end A189011.P15385399491713008070

noncomputable section

/-- A189011: Zero-one sequence based on triangular numbers: a(A000217(k))=a(k); a(A014132(k))=1-a(k); a(1)=0.

Offset 1, canonical program `A189011.P15385399491713008070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189011 (n : ℕ) : ℤ :=
  A189011.P15385399491713008070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189011.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190248.P6919742512996183991

`A004938(n+1)-A003623(n+1)`
-/

namespace A190248.P6919742512996183991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 (n + 1) - A003623 (n + 1)

end

end A190248.P6919742512996183991

noncomputable section

/-- A190248: a(n) = [nu+nv+nw]-[nu]-[nv]-[nw], where u=(1+sqrt(5))/2, v=u^2, w=u^3, []=floor.

Offset 1, canonical program `A190248.P6919742512996183991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190248 (n : ℕ) : ℤ :=
  A190248.P6919742512996183991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190248.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A191449.P13469591426900435099

`A140303(n)*A141396(A112367(n))`
-/

namespace A191449.P13469591426900435099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n * A141396 (A112367 n).toNat

end

end A191449.P13469591426900435099

noncomputable section

/-- A191449: Dispersion of (3,6,9,12,15,...), by antidiagonals.

Offset 1, canonical program `A191449.P13469591426900435099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A191449 (n : ℕ) : ℤ :=
  A191449.P13469591426900435099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A191449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191532.P6208350236830388762

`A026741(val(A055236(n), 2))`
-/

namespace A191532.P6208350236830388762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.valuation (A055236 n).toNat 2)

end

end A191532.P6208350236830388762

noncomputable section

/-- A191532: Triangle T(n,k) read by rows: T(n,n) = 2n+1, T(n,k)=k for k

Offset 0, canonical program `A191532.P6208350236830388762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191532 (n : ℕ) : ℤ :=
  A191532.P6208350236830388762.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191777.P3545865049015846884

`lt[2*a(A002260(n+1)), 1]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A191777.P3545865049015846884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  2 * f1 (A002260 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191777.P3545865049015846884

noncomputable section

/-- A191777: Positions of 1 in A020903; complement of A020904.

Offset 1, canonical program `A191777.P3545865049015846884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6594 terms. -/
def A191777 (n : ℕ) : ℤ :=
  (A191777.P3545865049015846884.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6594 terms. -/
def A191777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192112.P8461457790815633047

`record[A137688(n)-A130321(n)²]`
-/

namespace A192112.P8461457790815633047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n - A130321 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192112.P8461457790815633047

noncomputable section

/-- A192112: Monotonic ordering of nonnegative differences 2^i-4^j, for 40>=i>=0, j>=0.

Offset 1, canonical program `A192112.P8461457790815633047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A192112 (n : ℕ) : ℤ :=
  A192112.P8461457790815633047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A192112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192113.P2947756502860701992

`record[A122803(A003056(n))-A130321(n)]`
-/

namespace A192113.P2947756502860701992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (A003056 n).toNat - A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192113.P2947756502860701992

noncomputable section

/-- A192113: Monotonic ordering of nonnegative differences 4^i-2^j, for 40>=i>=0, j>=0.

Offset 1, canonical program `A192113.P2947756502860701992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1641 terms. -/
def A192113 (n : ℕ) : ℤ :=
  A192113.P2947756502860701992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1641 terms. -/
def A192113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192157.P15765879569040438431

`record[A098355(n)-A140303(n)²]`
-/

namespace A192157.P15765879569040438431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098355 n - A140303 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192157.P15765879569040438431

noncomputable section

/-- A192157: Monotonic ordering of nonnegative differences 3^i-9^j, for 40>=i>=0, j>=0.

Offset 1, canonical program `A192157.P15765879569040438431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A192157 (n : ℕ) : ℤ :=
  A192157.P15765879569040438431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A192157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192158.P10446398768701529999

`record[A140303(A003056(n))²-A140303(n)]`
-/

namespace A192158.P10446398768701529999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 (A003056 n).toNat ^ 2 - A140303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192158.P10446398768701529999

noncomputable section

/-- A192158: Monotonic ordering of nonnegative differences 9^i-3^j, for 40>= i>=0, j>=0.

Offset 1, canonical program `A192158.P10446398768701529999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A192158 (n : ℕ) : ℤ :=
  A192158.P10446398768701529999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A192158.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A192310.P2475868322072867542

`A192306(n+1)+A014286(n)`
-/

namespace A192310.P2475868322072867542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192306 (n + 1) + A014286 n

end

end A192310.P2475868322072867542

noncomputable section

/-- A192310: 1-sequence of reduction of (3n-1) by x^2 -> x+1.

Offset 1, canonical program `A192310.P2475868322072867542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A192310 (n : ℕ) : ℤ :=
  A192310.P2475868322072867542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A192310.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A193588.P17609543549557560662

`A115346(n)+1`
-/

namespace A193588.P17609543549557560662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115346 n + 1

end

end A193588.P17609543549557560662

noncomputable section

/-- A193588: A Fibonacci triangle: T(n,k) = Fib(k+2) for 0 <= k <= n.

Offset 0, canonical program `A193588.P17609543549557560662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193588 (n : ℕ) : ℤ :=
  A193588.P17609543549557560662.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193588.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193636.P16365352576518328121

`A109955(gcd(A061579(n), A198954(n)))`
-/

namespace A193636.P16365352576518328121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109955 (Int.gcd (A061579 n) (A198954 n))

end

end A193636.P16365352576518328121

noncomputable section

/-- A193636: Triangle: T(n,k) = C(3n-2k,k), 0 <= k <= n.

Offset 0, canonical program `A193636.P16365352576518328121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A193636 (n : ℕ) : ℤ :=
  A193636.P16365352576518328121.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A193636.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A194584.P12034886436282009719

`Δ[A134859(n+1)]`
-/

namespace A194584.P12034886436282009719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194584.P12034886436282009719

noncomputable section

/-- A194584: Differences of A035336.

Offset 1, canonical program `A194584.P12034886436282009719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194584 (n : ℕ) : ℤ :=
  A194584.P12034886436282009719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194584.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A194640.P6304836416132754197

`A002260(A046691(n+3))-A062276(n+3)`
-/

namespace A194640.P6304836416132754197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A046691 (n + 3)).toNat - A062276 (n + 3)

end

end A194640.P6304836416132754197

noncomputable section

/-- A194640: Smallest image size for which the number of endofunctions (functions f:{1,2,...,n}->{1,2,...,n}) is a maximum.

Offset 0, canonical program `A194640.P6304836416132754197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A194640 (n : ℕ) : ℤ :=
  A194640.P6304836416132754197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A194640.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A198063.P43002539216638676

`A003056(n)*A048147(n)`
-/

namespace A198063.P43002539216638676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A048147 n

end

end A198063.P43002539216638676

noncomputable section

/-- A198063: Triangle read by rows (n >= 0, 0 <= k <= n, m = 3); T(n,k) = Sum{j=0..m} Sum{i=0..m} (-1)^(j+i)*C(i,j)*n^j*k^(m-j).

Offset 0, canonical program `A198063.P43002539216638676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A198063 (n : ℕ) : ℤ :=
  A198063.P43002539216638676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A198063.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A198798.P56848906856835327

`2*A002260(A006254(n+1)+1)-3`
-/

namespace A198798.P56848906856835327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002260 (A006254 (n + 1) + 1).toNat - 3

end

end A198798.P56848906856835327

noncomputable section

/-- A198798: Least odd number a(n) > -3 such that a(n) = p(n) - j*(j+1), where p(n) is the n-th prime.

Offset 2, canonical program `A198798.P56848906856835327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A198798 (n : ℕ) : ℤ :=
  A198798.P56848906856835327.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A198798.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A199334.P13274266476100415293

`A000045(A051162(n))`
-/

namespace A199334.P13274266476100415293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A051162 n).toNat

end

end A199334.P13274266476100415293

noncomputable section

/-- A199334: Triangle T(n,k) = Fibonacci(n+k), related to A000045 (Fibonacci numbers).

Offset 0, canonical program `A199334.P13274266476100415293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199334 (n : ℕ) : ℤ :=
  A199334.P13274266476100415293.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199656.P10246066711263651744

`A002260(n+1)^A002024(n+1)-A002262(n)^A002024(n+1)`
-/

namespace A199656.P10246066711263651744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A002024 (n + 1) : ℤ) - (A002262 n : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A199656.P10246066711263651744

noncomputable section

/-- A199656: Triangular array read by rows, T(n,k) is the number of functions from {1,2,...,n} into {1,2,...,n} with maximum value of k.

Offset 1, canonical program `A199656.P10246066711263651744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A199656 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A199656.P10246066711263651744.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A199656.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A200246.P185476321665765473

`1-A200244(n+1)`
-/

namespace A200246.P185476321665765473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A200244 (n + 1)

end

end A200246.P185476321665765473

noncomputable section

/-- A200246: a(n)=1 iff binary weight of n-th prime is odd.

Offset 1, canonical program `A200246.P185476321665765473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200246 (n : ℕ) : ℤ :=
  A200246.P185476321665765473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200246.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A201006.P1343337819579742184

`A004247(n)-3-A003056(n)`
-/

namespace A201006.P1343337819579742184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n - 3 - A003056 n

end

end A201006.P1343337819579742184

noncomputable section

/-- A201006: The Isis problem: Array a(i,j) (by antidiagonals) of differences between area and perimeter of rectangle with sides (i,j).

Offset 0, canonical program `A201006.P1343337819579742184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A201006 (n : ℕ) : ℤ :=
  A201006.P1343337819579742184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A201006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201498.P15700971035858144036

`A099407(n+1)+3`
-/

namespace A201498.P15700971035858144036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099407 (n + 1) + 3

end

end A201498.P15700971035858144036

noncomputable section

/-- A201498: a(n) = (prime(n) - 1)*(prime(n+1) - 1)/2 + 3.

Offset 1, canonical program `A201498.P15700971035858144036`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A201498 (n : ℕ) : ℤ :=
  A201498.P15700971035858144036.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A201498.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A201685.P14021662077219839221

`A008279(n)*A095888(n+1)`
-/

namespace A201685.P14021662077219839221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A095888 (n + 1)

end

end A201685.P14021662077219839221

noncomputable section

/-- A201685: Triangular array read by rows. T(n,k) is the number of connected endofunctions on {1,2,...,n} that have exactly k nodes in the unique cycle of its digraph representation.

Offset 1, canonical program `A201685.P14021662077219839221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A201685 (n : ℕ) : ℤ :=
  A201685.P14021662077219839221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A201685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202064.P18161165733883482011

`C(∑[A010054(n)], A158405(n+1))`
-/

namespace A202064.P18161165733883482011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A158405 (n + 1)).toNat

end

end A202064.P18161165733883482011

noncomputable section

/-- A202064: Triangle T(n,k), read by rows, given by (2, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (0, 1/2, -1/2, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A202064.P18161165733883482011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202064 (n : ℕ) : ℤ :=
  (A202064.P18161165733883482011.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202329.P17245974937698880964

`A081496(n+2)+2`
-/

namespace A202329.P17245974937698880964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081496 (n + 2) + 2

end

end A202329.P17245974937698880964

noncomputable section

/-- A202329: Number of (n+1)X(n+1) binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

Offset 1, canonical program `A202329.P17245974937698880964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A202329 (n : ℕ) : ℤ :=
  A202329.P17245974937698880964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A202329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204114.P7253496876444969193

`gcd(A104765(n+1), A108035(n+1))`
-/

namespace A204114.P7253496876444969193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104765 (n + 1)) (A108035 (n + 1))

end

end A204114.P7253496876444969193

noncomputable section

/-- A204114: Symmetric matrix based on f(i,j) = gcd(L(i), L(j)), where L=A000032 (Lucas numbers), by antidiagonals.

Offset 1, canonical program `A204114.P7253496876444969193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204114 (n : ℕ) : ℤ :=
  (A204114.P7253496876444969193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204114.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A204206.P854096699827338767

`∑[A074909(n)+A010054(n)]+1`
-/

namespace A204206.P854096699827338767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A204206.P854096699827338767

noncomputable section

/-- A204206: Triangle based on (1,3/2,2) averaging array.

Offset 1, canonical program `A204206.P854096699827338767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204206 (n : ℕ) : ℤ :=
  A204206.P854096699827338767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204259.P17158997028130791302

`27%dr(A055236(n))`
-/

namespace A204259.P17158997028130791302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 % SequenceMachineLib.digitalRoot (A055236 n)

end

end A204259.P17158997028130791302

noncomputable section

/-- A204259: Matrix given by f(i,j) = 1 + [(2i+j) mod 3], by antidiagonals.

Offset 1, canonical program `A204259.P17158997028130791302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204259 (n : ℕ) : ℤ :=
  (A204259.P17158997028130791302.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204260.P9423945729788135670

`A002260(n+1)-floor((A002262(n)+1)²/(A002024(n+1)+1))`
-/

namespace A204260.P9423945729788135670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - ⌊((A002262 n + 1) ^ 2 : ℚ) / (A002024 (n + 1) + 1 : ℚ)⌋

end

end A204260.P9423945729788135670

noncomputable section

/-- A204260: Symmetric matrix given by f(i,j)=ceiling(i*j/(i+j)) .

Offset 1, canonical program `A204260.P9423945729788135670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204260 (n : ℕ) : ℤ :=
  A204260.P9423945729788135670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204260.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A204423.P13069664451970027034

`dr(A051162(n)%3)`
-/

namespace A204423.P13069664451970027034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A051162 n) 3)

end

end A204423.P13069664451970027034

noncomputable section

/-- A204423: Infinite matrix: f(i,j)=(2i+j mod 3), by antidiagonals.

Offset 1, canonical program `A204423.P13069664451970027034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204423 (n : ℕ) : ℤ :=
  (A204423.P13069664451970027034.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204435.P6677339156414087726

`floor(sqrt(A204263(n+1)))`
-/

namespace A204435.P6677339156414087726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A204263 (n + 1))

end

end A204435.P6677339156414087726

noncomputable section

/-- A204435: Symmetric matrix: f(i,j)=((i+j)^2 mod 3), read by (constant) antidiagonals.

Offset 1, canonical program `A204435.P6677339156414087726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204435 (n : ℕ) : ℤ :=
  A204435.P6677339156414087726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204435.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A204930.P1941679494328108447

`A051949(A038722(n+1))`
-/

namespace A204930.P1941679494328108447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051949 (A038722 (n + 1)).toNat

end

end A204930.P1941679494328108447

noncomputable section

/-- A204930: Ordered differences of factorials.

Offset 1, canonical program `A204930.P1941679494328108447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A204930 (n : ℕ) : ℤ :=
  A204930.P1941679494328108447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A204930.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A205376.P17692013997868668621

`8*A049777(n+1)`
-/

namespace A205376.P17692013997868668621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A049777 (n + 1)

end

end A205376.P17692013997868668621

noncomputable section

/-- A205376: Ordered differences of distinct odd squares, stored in triangle.

Offset 1, canonical program `A205376.P17692013997868668621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205376 (n : ℕ) : ℤ :=
  A205376.P17692013997868668621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205556.P5027991820685192587

`lt[1, gcd(3, A049777(n+1))]+1`
-/

namespace A205556.P5027991820685192587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A049777 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A205556.P5027991820685192587

noncomputable section

/-- A205556: Positions of multiples of 2 in A204922 (differences of Fibonacci numbers).

Offset 1, canonical program `A205556.P5027991820685192587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5539 terms. -/
def A205556 (n : ℕ) : ℤ :=
  (A205556.P5027991820685192587.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5539 terms. -/
def A205556.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A206703.P5177746352387235024

`A000262(A025581(n))*A008279(n)`
-/

namespace A206703.P5177746352387235024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (A025581 n).toNat * A008279 n

end

end A206703.P5177746352387235024

noncomputable section

/-- A206703: Triangular array read by rows. T(n,k) is the number of partial permutations (injective partial functions) of {1,2,...,n} that have exactly k elements in a cycle. The k elements are not necessarily in the same cycle. A fixed point is considered to be in a cycle.

Offset 0, canonical program `A206703.P5177746352387235024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A206703 (n : ℕ) : ℤ :=
  A206703.P5177746352387235024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A206703.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A209404.P12353609741474841919

`a(n-1)+A006976(n)+a(n-1)` with `a(0)=1`
-/

namespace A209404.P12353609741474841919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A006976 n + a (n - 1))

end

end A209404.P12353609741474841919

noncomputable section

/-- A209404: Negated coefficients of Chebyshev T polynomials: a(n) = -A053120(n+14, n), n >= 0.

Offset 0, canonical program `A209404.P12353609741474841919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A209404 (n : ℕ) : ℤ :=
  A209404.P12353609741474841919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A209404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209518.P15211053160365626883

`A074909(comp[∑[n-1]])`
-/

namespace A209518.P15211053160365626883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A209518.P15211053160365626883

noncomputable section

/-- A209518: Triangle by rows, reversal of A104712.

Offset 0, canonical program `A209518.P15211053160365626883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209518 (n : ℕ) : ℤ :=
  A209518.P15211053160365626883.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209898.P13299415237245453239

`4*A209727(n+1)+3`
-/

namespace A209898.P13299415237245453239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A209727 (n + 1) + 3

end

end A209898.P13299415237245453239

noncomputable section

/-- A209898: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having one or four distinct clockwise edge differences.

Offset 1, canonical program `A209898.P13299415237245453239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1512 terms. -/
def A209898 (n : ℕ) : ℤ :=
  A209898.P13299415237245453239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1512 terms. -/
def A209898.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A213723.P16906504039314298671`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213723 (n : ℕ) : ℤ :=
  A213723.P16906504039314298671.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213723.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214292.P4475227448882697213

`Δ[A074909(n)]`
-/

namespace A214292.P4475227448882697213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214292.P4475227448882697213

noncomputable section

/-- A214292: Triangle read by rows: T(n,k) = T(n-1,k-1) + T(n-1,k), 0 < k < n with T(n,0) = n and T(n,n) = -n.

Offset 0, canonical program `A214292.P4475227448882697213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214292 (n : ℕ) : ℤ :=
  A214292.P4475227448882697213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214292.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A214661.P2084257495514736411

`(A051162(n)+1)²-A025581(n)`
-/

namespace A214661.P2084257495514736411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n + 1) ^ 2 - A025581 n

end

end A214661.P2084257495514736411

noncomputable section

/-- A214661: Odd numbers obtained by transposing the left half of A176271 into rows of a triangle: T(n,k) = A176271(n - 1 + k, k), 1 <= k <= n.

Offset 1, canonical program `A214661.P2084257495514736411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214661 (n : ℕ) : ℤ :=
  A214661.P2084257495514736411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214661.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A216755.P4154066162271594537

`A010888(A004090(n+1)*A216754(n+1))`
-/

namespace A216755.P4154066162271594537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A004090 (n + 1) * A216754 (n + 1)).toNat

end

end A216755.P4154066162271594537

noncomputable section

/-- A216755: Digital root of the fifth power of Fibonacci(n).

Offset 1, canonical program `A216755.P4154066162271594537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. -/
def A216755 (n : ℕ) : ℤ :=
  A216755.P4154066162271594537.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. -/
def A216755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217538.P14501556472145506747

`floor(∑[A001043(n+1)/A069482(n+1)])`
-/

namespace A217538.P14501556472145506747
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001043 (n + 1) : ℚ) / (A069482 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A217538.P14501556472145506747

noncomputable section

/-- A217538: Integer part of the n-th partial sum of the reciprocal primes gaps.

Offset 1, canonical program `A217538.P14501556472145506747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217538 (n : ℕ) : ℤ :=
  A217538.P14501556472145506747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217629.P16760759575641433960

`A008279(n)*A140303(n)`
-/

namespace A217629.P16760759575641433960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A140303 n

end

end A217629.P16760759575641433960

noncomputable section

/-- A217629: Triangle, read by rows, where T(n,k) = k!*C(n, k)*3^(n-k) for n>=0, k=0..n.

Offset 0, canonical program `A217629.P16760759575641433960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2549 terms. -/
def A217629 (n : ℕ) : ℤ :=
  A217629.P16760759575641433960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2549 terms. -/
def A217629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217762.P8328924004739686564

`2*A094570(n)-A141169(n)`
-/

namespace A217762.P8328924004739686564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094570 n - A141169 n

end

end A217762.P8328924004739686564

noncomputable section

/-- A217762: Square array T, read by antidiagonals: T(n,k) = F(n) + 2*F(k) where F(n) is the n-th Fibonacci number.

Offset 0, canonical program `A217762.P8328924004739686564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217762 (n : ℕ) : ℤ :=
  A217762.P8328924004739686564.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217762.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A217831.P14758969929507153265

`A063524(A109004(n))`
-/

namespace A217831.P14758969929507153265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A109004 n).toNat

end

end A217831.P14758969929507153265

noncomputable section

/-- A217831: Euclid's triangle read by rows. T(n, k) = 1 if k is prime to n, otherwise 0.

Offset 0, canonical program `A217831.P14758969929507153265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217831 (n : ℕ) : ℤ :=
  A217831.P14758969929507153265.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218016.P9045902732220407557

`A000351(A025581(n))*A008279(n)`
-/

namespace A218016.P9045902732220407557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A025581 n).toNat * A008279 n

end

end A218016.P9045902732220407557

noncomputable section

/-- A218016: Triangle, read by rows, where T(n,k) = k!*C(n, k)*5^(n-k) for n>=0, k=0..n.

Offset 0, canonical program `A218016.P9045902732220407557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2544 terms. -/
def A218016 (n : ℕ) : ℤ :=
  A218016.P9045902732220407557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2544 terms. -/
def A218016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218017.P15129306654931293900

`A000420(A025581(n))*A008279(n)`
-/

namespace A218017.P15129306654931293900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A025581 n).toNat * A008279 n

end

end A218017.P15129306654931293900

noncomputable section

/-- A218017: Triangle, read by rows, where T(n,k) = k!*C(n, k)*7^(n-k) for n>=0, k=0..n.

Offset 0, canonical program `A218017.P15129306654931293900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A218017 (n : ℕ) : ℤ :=
  A218017.P15129306654931293900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A218017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218018.P14217742859146876637

`A001020(A025581(n))*A008279(n)`
-/

namespace A218018.P14217742859146876637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A025581 n).toNat * A008279 n

end

end A218018.P14217742859146876637

noncomputable section

/-- A218018: Triangle, read by rows, where T(n,k) = k!*C(n, k)*11^(n-k) for n>=0, k=0..n.

Offset 0, canonical program `A218018.P14217742859146876637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A218018 (n : ℕ) : ℤ :=
  A218018.P14217742859146876637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A218018.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A219463.P16758991508588374760

`1-A047999(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A219463.P16758991508588374760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A047999 n

end

end A219463.P16758991508588374760

noncomputable section

/-- A219463: Triangle read by rows: T(n,k) = 1 - A047999(n,k), 0 <= k <= n.

Offset 0, canonical program `A219463.P16758991508588374760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219463 (n : ℕ) : ℤ :=
  A219463.P16758991508588374760.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219463.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A225743.P7700796070945028792

`val(A002260(n+1), 2)+1`
-/

namespace A225743.P7700796070945028792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002260 (n + 1)).toNat 2 + 1

end

end A225743.P7700796070945028792

noncomputable section

/-- A225743: Triangular array: row n is least squarefree word of length n using positive integers.

Offset 1, canonical program `A225743.P7700796070945028792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225743 (n : ℕ) : ℤ :=
  (A225743.P7700796070945028792.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225862.P12697072099318197817

`p?[A111333(2*n+1)+n]`
-/

namespace A225862.P12697072099318197817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225862.P12697072099318197817

noncomputable section

/-- A225862: Primes of the form (n + prime(n))/2.

Offset 1, canonical program `A225862.P12697072099318197817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 507 terms. -/
def A225862 (n : ℕ) : ℤ :=
  A225862.P12697072099318197817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 507 terms. -/
def A225862.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A227740.P16175359941041821370

`n-A173318(A227737(n+1)-1)`
-/

namespace A227740.P16175359941041821370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A173318 (A227737 (n + 1) - 1).toNat

end

end A227740.P16175359941041821370

noncomputable section

/-- A227740: Integers from 0 to A037834(n) followed by integers from 0 to A037834(n+1) and so on.

Offset 1, canonical program `A227740.P16175359941041821370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2272 terms. -/
def A227740 (n : ℕ) : ℤ :=
  A227740.P16175359941041821370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2272 terms. -/
def A227740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228178.P3911483444974939938

`∑[A071722(n)]`
-/

namespace A228178.P3911483444974939938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228178.P3911483444974939938

noncomputable section

/-- A228178: The number of boundary edges for all ordered trees with n edges.

Offset 0, canonical program `A228178.P3911483444974939938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A228178 (n : ℕ) : ℤ :=
  A228178.P3911483444974939938.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A228178.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A228339.P1397303470350323638

`Δ[A033434(n)]`
-/

namespace A228339.P1397303470350323638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228339.P1397303470350323638

noncomputable section

/-- A228339: Fourth differences of Catalan numbers (A000108).

Offset 0, canonical program `A228339.P1397303470350323638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A228339 (n : ℕ) : ℤ :=
  A228339.P1397303470350323638.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A228339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228836.P15547341409877915815

`C(A003056(n)², A004247(n))`
-/

namespace A228836.P15547341409877915815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A004247 n).toNat

end

end A228836.P15547341409877915815

noncomputable section

/-- A228836: Triangle defined by T(n,k) = binomial(n^2, (n-k)*k), for n>=0, k=0..n, as read by rows.

Offset 0, canonical program `A228836.P15547341409877915815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A228836 (n : ℕ) : ℤ :=
  (A228836.P15547341409877915815.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A228836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229062.P3765704353507649483

`char[A069011(n)]`
-/

namespace A229062.P3765704353507649483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A229062.P3765704353507649483

noncomputable section

/-- A229062: 1 if n is representable as sum of two nonnegative squares, otherwise 0.

Offset 0, canonical program `A229062.P3765704353507649483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229062 (n : ℕ) : ℤ :=
  (A229062.P3765704353507649483.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229496.P8914308033381578582

`p?[A069482(n+1)+1]`
-/

namespace A229496.P8914308033381578582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069482 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P8914308033381578582

noncomputable section

/-- A229496: Primes p of the form prime(n+1)^2-prime(n)^2+1.

Offset 1, canonical program `A229496.P8914308033381578582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A229496 (n : ℕ) : ℤ :=
  A229496.P8914308033381578582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A229496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230325.P914527918563684609

`A138423(n+1)-A008837(n+1)`
-/

namespace A230325.P914527918563684609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138423 (n + 1) - A008837 (n + 1)

end

end A230325.P914527918563684609

noncomputable section

/-- A230325: (prime(n)^2 -1)*(prime(n)^2 - prime(n))/2.

Offset 1, canonical program `A230325.P914527918563684609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230325 (n : ℕ) : ℤ :=
  A230325.P914527918563684609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230435.P7509191106752444484

`A001047(A002260(n+1))*A130321(n)`
-/

namespace A230435.P7509191106752444484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (A002260 (n + 1)).toNat * A130321 n

end

end A230435.P7509191106752444484

noncomputable section

/-- A230435: Triangle by rows, A001047 convolved with A000079.

Offset 0, canonical program `A230435.P7509191106752444484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230435 (n : ℕ) : ℤ :=
  A230435.P7509191106752444484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230435.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A232531.P11988305512953630965

`comp[A004247(n)+A069011(n)+A004247(n)]`
-/

namespace A232531.P11988305512953630965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (A069011 n + A004247 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A232531.P11988305512953630965

noncomputable section

/-- A232531: Numbers n such that the equation a^2 + 2*n*b^2 = 2*c^2 + n*d^2 has no solutions in positive integers for a, b, c, d.

Offset 1, canonical program `A232531.P11988305512953630965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232531 (n : ℕ) : ℤ :=
  (A232531.P11988305512953630965.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232646.P5976019983787370768

`A000351(A002262(n))*A130321(n)`
-/

namespace A232646.P5976019983787370768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A002262 n).toNat * A130321 n

end

end A232646.P5976019983787370768

noncomputable section

/-- A232646: Sequence (or tree or triangle) generated by these rules: 1 is in S, and if x is in S, then 2*x and 5*x are in S, and duplicates are deleted as they occur.

Offset 1, canonical program `A232646.P5976019983787370768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A232646 (n : ℕ) : ℤ :=
  A232646.P5976019983787370768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A232646.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A238156.P6367092869052855218

`Δ[∑[A054142(n)]-A172431(n+1)]`
-/

namespace A238156.P6367092869052855218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A172431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238156.P6367092869052855218

noncomputable section

/-- A238156: Triangle T(n,k), 0<=k<=n, read by rows, given by (0, 1, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (2, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A238156.P6367092869052855218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A238156 (n : ℕ) : ℤ :=
  A238156.P6367092869052855218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A238156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238455.P12384802579070016511

`(A201125(n+1)-A084188(n))/2`
-/

namespace A238455.P12384802579070016511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201125 (n + 1) - A084188 n : ℚ) / 2

end

end A238455.P12384802579070016511

noncomputable section

/-- A238455: Difference between 4^n and the nearest triangular number.

Offset 0, canonical program `A238455.P12384802579070016511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A238455 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A238455.P12384802579070016511.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A238455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240769.P16242250980846924409

`A080079(A051162(n)+1)`
-/

namespace A240769.P16242250980846924409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A051162 n + 1).toNat

end

end A240769.P16242250980846924409

noncomputable section

/-- A240769: Triangle read by rows: T(1,1) = 1; T(n+1,k) = T(n,k+1), 1 <= k < n; T(n+1,n) = 2*T(n,1); T(n+1,n+1) = 2*T(n,1) - 1.

Offset 1, canonical program `A240769.P16242250980846924409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. -/
def A240769 (n : ℕ) : ℤ :=
  A240769.P16242250980846924409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. -/
def A240769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240857.P5029173872357805458

`A048881(A051162(n))`
-/

namespace A240857.P5029173872357805458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A051162 n).toNat

end

end A240857.P5029173872357805458

noncomputable section

/-- A240857: Triangle read by rows: T(0,0) = 0; T(n+1,k) = T(n,k+1), 0 <= k < n; T(n+1,n) = T(n,0); T(n+1,n+1) = T(n,0)+1.

Offset 0, canonical program `A240857.P5029173872357805458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A240857 (n : ℕ) : ℤ :=
  A240857.P5029173872357805458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A240857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242286.P1527126420096053857

`lt[4, (n-2)*a(A002260(n+1)-1)]` with `a(0)=3, a(1)=4`
-/

namespace A242286.P1527126420096053857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f2 =>
  ((n : ℤ) - 2) * f2 (A002260 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242286.P1527126420096053857

noncomputable section

/-- A242286: Positive integers k for which the k-th triangular number is greedy-summable.

Offset 1, canonical program `A242286.P1527126420096053857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A242286 (n : ℕ) : ℤ :=
  (A242286.P1527126420096053857.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A242286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242312.P5495476097644624386

`A010888(A096145(n))`
-/

namespace A242312.P5495476097644624386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A096145 n).toNat

end

end A242312.P5495476097644624386

noncomputable section

/-- A242312: Digital roots in Pascal's triangle, triangle read by rows, 0 <= k <= n.

Offset 0, canonical program `A242312.P5495476097644624386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242312 (n : ℕ) : ℤ :=
  A242312.P5495476097644624386.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242312.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243866.P720417055199170297

`A008619(A002262(n))*A115514(n+1)`
-/

namespace A243866.P720417055199170297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002262 n).toNat * A115514 (n + 1)

end

end A243866.P720417055199170297

noncomputable section

/-- A243866: Table T(n,k), n>=1, k>=1, read by antidiagonals: T(n,k) = number of equivalence classes of ways of placing one 1 X 1 tile in an n X k rectangle under all symmetry operations of the rectangle.

Offset 1, canonical program `A243866.P720417055199170297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A243866 (n : ℕ) : ℤ :=
  A243866.P720417055199170297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A243866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244003.P6736194642983225577

`A025581(n)^A141169(n)`
-/

namespace A244003.P6736194642983225577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A141169 n : ℤ)

end

end A244003.P6736194642983225577

noncomputable section

/-- A244003: A(n,k) = k^Fibonacci(n); square array A(n,k), n>=0, k>=0, read by antidiagonals.

Offset 0, canonical program `A244003.P6736194642983225577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A244003 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A244003.P6736194642983225577.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A244003.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A244840.P8759654480892561535

`lcm(n+1, A002260(n+1))/(n+1)`
-/

namespace A244840.P8759654480892561535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A002260 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A244840.P8759654480892561535

noncomputable section

/-- A244840: Denominators of the triangle T(n,k) = (n*(n+1)/2+k+1)/(k+1) for n >= k >= 0.

Offset 0, canonical program `A244840.P8759654480892561535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244840 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A244840.P8759654480892561535.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245093.P1980232344723571166

`∑{d}[A002260(n+1), #]`
-/

namespace A245093.P1980232344723571166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A245093.P1980232344723571166

noncomputable section

/-- A245093: Triangle read by rows in which row n lists the first n terms of A000203.

Offset 1, canonical program `A245093.P1980232344723571166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245093 (n : ℕ) : ℤ :=
  (A245093.P1980232344723571166.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245334.P13115372009158419183

`A004736(n+1)*A008279(n)`
-/

namespace A245334.P13115372009158419183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A008279 n

end

end A245334.P13115372009158419183

noncomputable section

/-- A245334: A factorial-like triangle read by rows: T(0,0) = 1; T(n+1,0) = T(n,0)+1; T(n+1,k+1) = T(n,0)*T(n,k), k=0..n.

Offset 0, canonical program `A245334.P13115372009158419183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A245334 (n : ℕ) : ℤ :=
  A245334.P13115372009158419183.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A245334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245508.P16525106307191820182

`2*ceil(sqrt(A111333(n+1)))²`
-/

namespace A245508.P16525106307191820182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt (A111333 (n + 1) : ℝ)⌉ ^ 2

end

end A245508.P16525106307191820182

noncomputable section

/-- A245508: Smallest double square (cf. A001105) greater than n-th prime.

Offset 1, canonical program `A245508.P16525106307191820182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245508 (n : ℕ) : ℤ :=
  A245508.P16525106307191820182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246574.P7018235602097910141

`record[n*A099364(n)]`
-/

namespace A246574.P7018235602097910141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246574.P7018235602097910141

noncomputable section

/-- A246574: a(n) = 2*(n-1)*Catalan(n).

Offset 1, canonical program `A246574.P7018235602097910141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A246574 (n : ℕ) : ℤ :=
  A246574.P7018235602097910141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A246574.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A246601.P4678833771488351896

`∑{d}[n+1, #*A047999(A000217(n+1)+#)]`
-/

namespace A246601.P4678833771488351896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A047999 (A000217 (n + 1) + (d : ℤ)).toNat

end

end A246601.P4678833771488351896

noncomputable section

/-- A246601: Sum of divisors d of n with property that the binary representation of d can be obtained from the binary representation of n by changing any number of 1's to 0's.

Offset 1, canonical program `A246601.P4678833771488351896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A246601 (n : ℕ) : ℤ :=
  A246601.P4678833771488351896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A246601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246714.P14752145516247954975

`record[A126120(n)]%p?[A056847(n)]`
-/

namespace A246714.P14752145516247954975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A246714.P14752145516247954975

noncomputable section

/-- A246714: Catalan(n) mod prime(n).

Offset 1, canonical program `A246714.P14752145516247954975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A246714 (n : ℕ) : ℤ :=
  A246714.P14752145516247954975.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A246714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246846.P12987901032422717189

`∑[A071724(n)]%A000045(n+1)`
-/

namespace A246846.P12987901032422717189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000045 (n + 1))

end

end A246846.P12987901032422717189

noncomputable section

/-- A246846: a(n) = Catalan(n) mod Fibonacci(n).

Offset 1, canonical program `A246846.P12987901032422717189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A246846 (n : ℕ) : ℤ :=
  A246846.P12987901032422717189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A246846.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A253655.P5596096945801313869

`A138445(n+1)-A127920(n+1)`
-/

namespace A253655.P5596096945801313869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138445 (n + 1) - A127920 (n + 1)

end

end A253655.P5596096945801313869

noncomputable section

/-- A253655: Number of monic irreducible polynomials of degree 6 over GF(prime(n)).

Offset 1, canonical program `A253655.P5596096945801313869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253655 (n : ℕ) : ℤ :=
  A253655.P5596096945801313869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253655.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A256491.P3996259377148393977

`A084792(A006093(n+1))`
-/

namespace A256491.P3996259377148393977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084792 (A006093 (n + 1)).toNat

end

end A256491.P3996259377148393977

noncomputable section

/-- A256491: a(n) = prime(prime(n) + n - 2).

Offset 1, canonical program `A256491.P3996259377148393977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A256491 (n : ℕ) : ℤ :=
  A256491.P3996259377148393977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A256491.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A257888.P17485197680427452743

`4*A002055(n+5)`
-/

namespace A257888.P17485197680427452743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002055 (n + 5)

end

end A257888.P17485197680427452743

noncomputable section

/-- A257888: Number of nonintersecting (or self-avoiding) rook paths of length 2n+2 joining opposite corners of an n X n grid.

Offset 3, canonical program `A257888.P17485197680427452743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257888 (n : ℕ) : ℤ :=
  A257888.P17485197680427452743.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257888.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A258155.P7697194881725591398

`A046301(n+1)²`
-/

namespace A258155.P7697194881725591398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) ^ 2

end

end A258155.P7697194881725591398

noncomputable section

/-- A258155: Products of squares of three successive primes.

Offset 1, canonical program `A258155.P7697194881725591398`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258155 (n : ℕ) : ℤ :=
  A258155.P7697194881725591398.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258155.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258316.P5658510745853391097

`A020706(A025581(n))+A001911(A002260(n+1))`
-/

namespace A258316.P5658510745853391097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 (A025581 n).toNat + A001911 (A002260 (n + 1)).toNat

end

end A258316.P5658510745853391097

noncomputable section

/-- A258316: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 or 0011.

Offset 1, canonical program `A258316.P5658510745853391097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1104 terms. -/
def A258316 (n : ℕ) : ℤ :=
  A258316.P5658510745853391097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1104 terms. -/
def A258316.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A258877.P7623926527182171937`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A258876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A258877 (n : ℕ) : ℤ :=
  A258877.P7623926527182171937.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A258876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A258877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259525.P15603515225238104540

`Δ[A074909(n-A003056(n))]`
-/

namespace A259525.P15603515225238104540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 ((n : ℤ) - A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259525.P15603515225238104540

noncomputable section

/-- A259525: First differences of A007318, when Pascal's triangle is seen as flattened list.

Offset 0, canonical program `A259525.P15603515225238104540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259525 (n : ℕ) : ℤ :=
  A259525.P15603515225238104540.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259556.P7131408588609023786

`A001950(A004736(n+1))+A000201(A002260(n+1))`
-/

namespace A259556.P7131408588609023786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A004736 (n + 1)).toNat + A000201 (A002260 (n + 1)).toNat

end

end A259556.P7131408588609023786

noncomputable section

/-- A259556: Rectangular array, read by antidiagonals: T(h,k) = u(h) + v(k), where u = A000201 (lower Wythoff numbers), v = A001950 (upper Wythoff numbers), and h >= 1, k >= 1.

Offset 1, canonical program `A259556.P7131408588609023786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259556 (n : ℕ) : ℤ :=
  A259556.P7131408588609023786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259556.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A261363.P8906415515170921986

`∑[A047999(n)]-A006046(A003056(n))`
-/

namespace A261363.P8906415515170921986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006046 (A003056 n).toNat

end

end A261363.P8906415515170921986

noncomputable section

/-- A261363: Triangle read by rows: partial row sums of Sierpinski's triangle.

Offset 0, canonical program `A261363.P8906415515170921986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A261363 (n : ℕ) : ℤ :=
  A261363.P8906415515170921986.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A261363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262394.P1238905314786876986

`A165817(n+1)-A004319(n+1)`
-/

namespace A262394.P1238905314786876986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 (n + 1) - A004319 (n + 1)

end

end A262394.P1238905314786876986

noncomputable section

/-- A262394: a(n) = (1/n)*Sum_{k=1..n} k*binomial(n,k-1)*binomial(2*n,n-k).

Offset 1, canonical program `A262394.P1238905314786876986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A262394 (n : ℕ) : ℤ :=
  A262394.P1238905314786876986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A262394.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A262616.P8893903525069008966

`A130321(n)²`
-/

namespace A262616.P8893903525069008966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2

end

end A262616.P8893903525069008966

noncomputable section

/-- A262616: Triangle read by rows: T(n,k) = 4^(n-k), n>=0, 0<=k<=n.

Offset 0, canonical program `A262616.P8893903525069008966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262616 (n : ℕ) : ℤ :=
  A262616.P8893903525069008966.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262616.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A263827.P8673343635422957235

`∑{d}[n+1, A054785(#)]`
-/

namespace A263827.P8673343635422957235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054785 d

end

end A263827.P8673343635422957235

noncomputable section

/-- A263827: The number c_{Cc pi_1(B_1)}(2n) of the second amphicosm 2n-coverings over the first amphicosm.

Offset 1, canonical program `A263827.P8673343635422957235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263827 (n : ℕ) : ℤ :=
  A263827.P8673343635422957235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264802.P4268355736184422513

`A137688(n)+A130321(n)`
-/

namespace A264802.P4268355736184422513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + A130321 n

end

end A264802.P4268355736184422513

noncomputable section

/-- A264802: Position of the n largest occurrences of a shortest addition chain of length n in A003313, written as a triangle.

Offset 1, canonical program `A264802.P4268355736184422513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264802 (n : ℕ) : ℤ :=
  A264802.P4268355736184422513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264802.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A265157.P8146945990280447041`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265157 (n : ℕ) : ℤ :=
  A265157.P8146945990280447041.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265157.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A265583.P8899566206510853233

`A002260(n+1)*A004248(n)`
-/

namespace A265583.P8899566206510853233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A004248 n

end

end A265583.P8899566206510853233

noncomputable section

/-- A265583: Array T(n,k) = k*(k-1)^(n-1) read by ascending antidiagonals; k,n >= 1.

Offset 1, canonical program `A265583.P8899566206510853233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4676 terms. -/
def A265583 (n : ℕ) : ℤ :=
  A265583.P8899566206510853233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4676 terms. -/
def A265583.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A268231.P13230118980298299093

`lt[A000217(A080098(n)), n+1]`
-/

namespace A268231.P13230118980298299093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A080098 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268231.P13230118980298299093

noncomputable section

/-- A268231: Indices of 1's in A047999.

Offset 1, canonical program `A268231.P13230118980298299093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7699 terms. -/
def A268231 (n : ℕ) : ℤ :=
  (A268231.P13230118980298299093.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7699 terms. -/
def A268231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268232.P6386950122841436999

`lt[n, A000217(A080098(n))]`
-/

namespace A268232.P6386950122841436999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A080098 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268232.P6386950122841436999

noncomputable section

/-- A268232: Indices of 0's in A047999.

Offset 1, canonical program `A268232.P6386950122841436999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268232 (n : ℕ) : ℤ :=
  (A268232.P6386950122841436999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268233.P12398711489418578225

`∑[2*A047999(n)-1]`
-/

namespace A268233.P12398711489418578225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047999 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268233.P12398711489418578225

noncomputable section

/-- A268233: Excess of number of 1's over number of 0's in terms 0 through n of A047999.

Offset 0, canonical program `A268233.P12398711489418578225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268233 (n : ℕ) : ℤ :=
  A268233.P12398711489418578225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268234.P1711840315614425267

`∑[A047999(n)]`
-/

namespace A268234.P1711840315614425267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P1711840315614425267

noncomputable section

/-- A268234: Partial sums of A047999.

Offset 0, canonical program `A268234.P1711840315614425267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268234 (n : ℕ) : ℤ :=
  A268234.P1711840315614425267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268234.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A268759.P1414194246150000593

`C(A025581(n), 2)*A000217(A002260(n+1))`
-/

namespace A268759.P1414194246150000593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A025581 n).toNat 2 : ℤ) * A000217 (A002260 (n + 1)).toNat

end

end A268759.P1414194246150000593

noncomputable section

/-- A268759: Triangle T(n,k) read by rows: T(n,k) = (1/4)*(1 + k)*(2 + k)*(k - n)*(1 + k - n).

Offset 0, canonical program `A268759.P1414194246150000593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268759 (n : ℕ) : ℤ :=
  A268759.P1414194246150000593.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268759.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A269956.P6629693362323519986

`A074909(A083920(n)+A279891(n)²)`
-/

namespace A269956.P6629693362323519986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A083920 n + A279891 n ^ 2).toNat

end

end A269956.P6629693362323519986

noncomputable section

/-- A269956: Triangle read by rows, T(n,k) = binomial(3*n,n+k) for n>=0 and 0<=k<=n.

Offset 0, canonical program `A269956.P6629693362323519986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A269956 (n : ℕ) : ℤ :=
  A269956.P6629693362323519986.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A269956.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A272635.P7311207179197304679

`comp[A094570(n)%A094570(n+1)]`
-/

namespace A272635.P7311207179197304679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094570 n) (A094570 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272635.P7311207179197304679

noncomputable section

/-- A272635: Numbers that are not a sum or a difference of two Fibonacci numbers.

Offset 1, canonical program `A272635.P7311207179197304679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272635 (n : ℕ) : ℤ :=
  (A272635.P7311207179197304679.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272635.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A278317.P17917219794750219579

`a(n-A141419(n))+2` with `a(0)=0, a(1)=1`
-/

namespace A278317.P17917219794750219579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n : ℤ) - A141419 n).toNat + 2

end

end A278317.P17917219794750219579

noncomputable section

/-- A278317: Number of neighbors of each new term in a right triangle read by rows.

Offset 1, canonical program `A278317.P17917219794750219579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278317 (n : ℕ) : ℤ :=
  (A278317.P17917219794750219579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278480.P13399696177341259936

`a(n-A141419(n))+3` with `a(0)=2, a(1)=4`
-/

namespace A278480.P13399696177341259936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a ((n : ℤ) - A141419 n).toNat + 3

end

end A278480.P13399696177341259936

noncomputable section

/-- A278480: Number of neighbors of the n-th term in a full right triangle read by rows.

Offset 1, canonical program `A278480.P13399696177341259936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A278480 (n : ℕ) : ℤ :=
  (A278480.P13399696177341259936.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A278480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278597.P5436521184196426050

`round((a(A193592(n)-1)+3)/2)` with `a(0)=1`
-/

namespace A278597.P5436521184196426050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (A193592 n - 1).toNat + 3 : ℚ) / 2)

end

end A278597.P5436521184196426050

noncomputable section

/-- A278597: One half of A278481.

Offset 1, canonical program `A278597.P5436521184196426050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278597 (n : ℕ) : ℤ :=
  A278597.P5436521184196426050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278597.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A280172.P14429094366416205304

`A003987(n)+1`
-/

namespace A280172.P14429094366416205304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n + 1

end

end A280172.P14429094366416205304

noncomputable section

/-- A280172: Lexicographically earliest table of positive integers read by antidiagonals such that no row or column contains a repeated term.

Offset 1, canonical program `A280172.P14429094366416205304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280172 (n : ℕ) : ℤ :=
  A280172.P14429094366416205304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280172.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A281726.P3027863293111471843

`A109004(n)+1`
-/

namespace A281726.P3027863293111471843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n + 1

end

end A281726.P3027863293111471843

noncomputable section

/-- A281726: Triangular array read by rows: T(n,k) is the number of elements in an n X k matrix that will be assigned the same value whether the integers from 1 to n*k are assigned to elements in row-major order or column-major order.

Offset 1, canonical program `A281726.P3027863293111471843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281726 (n : ℕ) : ℤ :=
  A281726.P3027863293111471843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282743.P3046376019469978413

`A025581(eq[1, A002260(n+1)²%3])`
-/

namespace A282743.P3046376019469978413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282743.P3046376019469978413

noncomputable section

/-- A282743: Irregular triangle read by rows, giving coefficients arising when solving g(n) = f(n)+ f(n-1) + f(n-2) for f(n).

Offset 0, canonical program `A282743.P3046376019469978413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6714 terms. -/
def A282743 (n : ℕ) : ℤ :=
  A282743.P3046376019469978413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6714 terms. -/
def A282743.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A283681.P14959979996735667348

`a(A025581(n))*A002260(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A283681.P14959979996735667348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A025581 n).toNat * A002260 (n + 1)

end

end A283681.P14959979996735667348

noncomputable section

/-- A283681: Unique sequence with a(1)=1, a(2)=2, representing an array read by antidiagonals in which the i-th row is this sequence itself multiplied by i.

Offset 1, canonical program `A283681.P14959979996735667348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283681 (n : ℕ) : ℤ :=
  A283681.P14959979996735667348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283683.P9744256243260942993

`A020906(n+1)-1`
-/

namespace A283683.P9744256243260942993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020906 (n + 1) - 1

end

end A283683.P9744256243260942993

noncomputable section

/-- A283683: Unique sequence with a(1)=0, a(2)=1, representing an array T(i,j) read by antidiagonals in which every row is this sequence itself.

Offset 1, canonical program `A283683.P9744256243260942993`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283683 (n : ℕ) : ℤ :=
  A283683.P9744256243260942993.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283833.P14205388821880758029

`abs(1-A002260(A006697(abs(2*n-n))))+1`
-/

namespace A283833.P14205388821880758029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A002260 (A006697 |(2 * n : ℤ) - (n : ℤ)|.toNat).toNat)| + 1

end

end A283833.P14205388821880758029

noncomputable section

/-- A283833: For t >= 0, if 2^t + t - 3 <= n <= 2^t + t - 1 then a(n) = 2^t - 1, while if 2^t + t - 1 < n < 2^(t+1) + t - 3 then a(n) = 2^(t+1) + t - 2 - n.

Offset 0, canonical program `A283833.P14205388821880758029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A283833 (n : ℕ) : ℤ :=
  A283833.P14205388821880758029.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A283833.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A284115.P16117482239181993886

`A104764(n+1)*A104765(n+1)`
-/

namespace A284115.P16117482239181993886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104764 (n + 1) * A104765 (n + 1)

end

end A284115.P16117482239181993886

noncomputable section

/-- A284115: Hosoya triangle of Lucas type.

Offset 1, canonical program `A284115.P16117482239181993886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284115 (n : ℕ) : ℤ :=
  A284115.P16117482239181993886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284126.P15441816278525593705

`A002203(A002260(n+1))*A002203(A004736(n+1))`
-/

namespace A284126.P15441816278525593705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (A002260 (n + 1)).toNat * A002203 (A004736 (n + 1)).toNat

end

end A284126.P15441816278525593705

noncomputable section

/-- A284126: Hosoya triangle of Pell-Lucas type.

Offset 1, canonical program `A284126.P15441816278525593705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284126 (n : ℕ) : ℤ :=
  A284126.P15441816278525593705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284127.P6552234279612137804

`A215928(A002260(n+1))*A215928(A004736(n+1))`
-/

namespace A284127.P6552234279612137804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (A002260 (n + 1)).toNat * A215928 (A004736 (n + 1)).toNat

end

end A284127.P6552234279612137804

noncomputable section

/-- A284127: Hosoya triangle of Pell type, read by rows.

Offset 1, canonical program `A284127.P6552234279612137804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284127 (n : ℕ) : ℤ :=
  A284127.P6552234279612137804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284129.P6236670605657251769

`A014551(A002260(n+1))*A014551(A004736(n+1))`
-/

namespace A284129.P6236670605657251769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (A002260 (n + 1)).toNat * A014551 (A004736 (n + 1)).toNat

end

end A284129.P6236670605657251769

noncomputable section

/-- A284129: Hosoya triangle Jacobsthal Lucas type.

Offset 1, canonical program `A284129.P6236670605657251769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284129 (n : ℕ) : ℤ :=
  A284129.P6236670605657251769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284130.P7406166648093918569

`A001045(A002260(n+1))*A001045(A004736(n+1))`
-/

namespace A284130.P7406166648093918569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A002260 (n + 1)).toNat * A001045 (A004736 (n + 1)).toNat

end

end A284130.P7406166648093918569

noncomputable section

/-- A284130: Hosoya triangle of Jacobsthal type, read by rows.

Offset 1, canonical program `A284130.P7406166648093918569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284130 (n : ℕ) : ℤ :=
  A284130.P7406166648093918569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284938.P11691435844775853104

`A026729(n)-a(A083920(n))` with `a(0)=0`
-/

namespace A284938.P11691435844775853104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A026729 n - a (A083920 n).toNat

end

end A284938.P11691435844775853104

noncomputable section

/-- A284938: Triangle read by rows: coefficients of the edge cover polynomial for the n-path graph P_n.

Offset 1, canonical program `A284938.P11691435844775853104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284938 (n : ℕ) : ℤ :=
  A284938.P11691435844775853104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284938.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A286109.P13280078457702034505

`A057944(n)+A003987(n)`
-/

namespace A286109.P13280078457702034505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A003987 n

end

end A286109.P13280078457702034505

noncomputable section

/-- A286109: Square array read by antidiagonals: A(n,k) = T(n XOR k, 2*(n AND k)), where T(n,k) is sequence A001477 considered as a two-dimensional table, AND is bitwise-and (A004198) and XOR is bitwise-xor (A003987).

Offset 0, canonical program `A286109.P13280078457702034505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286109 (n : ℕ) : ℤ :=
  A286109.P13280078457702034505.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286145.P7193597459372370240

`A003987(n)+A000217(A025581(n)+A003987(n))`
-/

namespace A286145.P7193597459372370240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n + A000217 (A025581 n + A003987 n).toNat

end

end A286145.P7193597459372370240

noncomputable section

/-- A286145: Square array read by antidiagonals: A(n,k) = T(n XOR k, k), where T(n,k) is sequence A001477 considered as a two-dimensional table, and XOR is bitwise-xor (A003987).

Offset 0, canonical program `A286145.P7193597459372370240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286145 (n : ℕ) : ℤ :=
  A286145.P7193597459372370240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286145.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A288777.P1163062613546913329

`A002260(n+1)*A137948(n)`
-/

namespace A288777.P1163062613546913329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A137948 n

end

end A288777.P1163062613546913329

noncomputable section

/-- A288777: Triangle read by rows in which column k lists the positive multiples of the factorial of k, with 1 <= k <= n.

Offset 1, canonical program `A288777.P1163062613546913329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A288777 (n : ℕ) : ℤ :=
  A288777.P1163062613546913329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A288777.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A289869.P12188574629883902402

`A005836(A002260(n+1))+A005823(A004736(n+1))`
-/

namespace A289869.P12188574629883902402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A002260 (n + 1)).toNat + A005823 (A004736 (n + 1)).toNat

end

end A289869.P12188574629883902402

noncomputable section

/-- A289869: Square array T(n,k) (n>=0, k>=0) read by antidiagonals downwards: T(n,k) = A005836(n) + 2*A005836(k).

Offset 1, canonical program `A289869.P12188574629883902402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A289869 (n : ℕ) : ℤ :=
  A289869.P12188574629883902402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A289869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290021.P11662465135056403279

`A071673(n)+1`
-/

namespace A290021.P11662465135056403279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 n + 1

end

end A290021.P11662465135056403279

noncomputable section

/-- A290021: a(0) = 1; for n > 0, a(n) = a(k) + a(m) where binomial(k + m + 2, 2) - m = n and binomial(k + m + 2, 2) is the smallest triangular number larger than or equal to m.

Offset 0, canonical program `A290021.P11662465135056403279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290021 (n : ℕ) : ℤ :=
  A290021.P11662465135056403279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290021.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A290605.P11328133936199522296

`A000108(A002262(n))*A003992(n)`
-/

namespace A290605.P11328133936199522296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A003992 n

end

end A290605.P11328133936199522296

noncomputable section

/-- A290605: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of 2/(1 + sqrt(1 - 4*k*x)).

Offset 0, canonical program `A290605.P11328133936199522296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2758 terms. -/
def A290605 (n : ℕ) : ℤ :=
  A290605.P11328133936199522296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2758 terms. -/
def A290605.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A291662.P18141742761416750643

`A165817(n)-n`
-/

namespace A291662.P18141742761416750643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 n - (n : ℤ)

end

end A291662.P18141742761416750643

noncomputable section

/-- A291662: Number of ordered rooted trees with 2n non-root nodes such that the maximal outdegree equals n.

Offset 0, canonical program `A291662.P18141742761416750643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A291662 (n : ℕ) : ℤ :=
  A291662.P18141742761416750643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A291662.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A295584.P3807937795834831549

`eq[char[A182139(n+1)], A126120(n)]`
-/

namespace A295584.P3807937795834831549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182139 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A295584.P3807937795834831549

noncomputable section

/-- A295584: Odd numbers that are not a product of Mersenne numbers (A000225).

Offset 1, canonical program `A295584.P3807937795834831549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A295584 (n : ℕ) : ℤ :=
  (A295584.P3807937795834831549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A295584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296612.P17703809730803621848

`A002260(n+1)*A155038(n+1)`
-/

namespace A296612.P17703809730803621848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A155038 (n + 1)

end

end A296612.P17703809730803621848

noncomputable section

/-- A296612: Square array read by antidiagonals upwards: T(n,k) equals k times the number of compositions (ordered partitions) of n, with n >= 0 and k >= 1.

Offset 0, canonical program `A296612.P17703809730803621848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296612 (n : ℕ) : ℤ :=
  A296612.P17703809730803621848.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296612.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A299146.P13308450374639411893

`A074909(A014132(n+1))-A007401(n+1)+n`
-/

namespace A299146.P13308450374639411893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A014132 (n + 1)).toNat - A007401 (n + 1) + (n : ℤ)

end

end A299146.P13308450374639411893

noncomputable section

/-- A299146: Modified Pascal's triangle read by rows: T(n,k) = C(n+1,k) - n, 1 <= k <= n.

Offset 1, canonical program `A299146.P13308450374639411893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299146 (n : ℕ) : ℤ :=
  A299146.P13308450374639411893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300656.P11645637042434351895

`A158558(A004247(n))`
-/

namespace A300656.P11645637042434351895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158558 (A004247 n).toNat

end

end A300656.P11645637042434351895

noncomputable section

/-- A300656: Triangle read by rows: T(n,k) = 30*k^2*(n-k)^2 + 1; n >= 0, 0 <= k <= n.

Offset 0, canonical program `A300656.P11645637042434351895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300656 (n : ℕ) : ℤ :=
  A300656.P11645637042434351895.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301523.P361054495749073688

`A002260(n+1)!+A003057(n+2)!`
-/

namespace A301523.P361054495749073688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002260 (n + 1)).toNat + Nat.factorial (A003057 (n + 2)).toNat

end

end A301523.P361054495749073688

noncomputable section

/-- A301523: Integers which can be partitioned into two distinct factorials. 0! and 1! are not considered distinct.

Offset 1, canonical program `A301523.P361054495749073688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A301523 (n : ℕ) : ℤ :=
  (A301523.P361054495749073688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A301523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302445.P980944586648019814

`p?[A002260(A038722(n+1))+A002260(n+1)²]`
-/

namespace A302445.P980944586648019814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1)).toNat + A002260 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302445.P980944586648019814

noncomputable section

/-- A302445: Triangle read by rows: row n gives primes of form k^2 + n - k for 0 < k < n.

Offset 2, canonical program `A302445.P980944586648019814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1627 terms. -/
def A302445 (n : ℕ) : ℤ :=
  A302445.P980944586648019814.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1627 terms. -/
def A302445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302764.P1454018840970518205

`2*A074909(n)-A074909(A007401(n+1))`
-/

namespace A302764.P1454018840970518205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074909 n - A074909 (A007401 (n + 1)).toNat

end

end A302764.P1454018840970518205

noncomputable section

/-- A302764: Pascal-like triangle with A000012 as the left border and A080956 as the right border.

Offset 1, canonical program `A302764.P1454018840970518205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302764 (n : ℕ) : ℤ :=
  A302764.P1454018840970518205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302764.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A308504.P8854437065577094015

`∑{d}[A002260(n+1), #^A123578(n)]`
-/

namespace A308504.P8854437065577094015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A123578 n : ℤ)

end

end A308504.P8854437065577094015

noncomputable section

/-- A308504: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = Sum_{d|n} d^(n+k).

Offset 1, canonical program `A308504.P8854437065577094015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A308504 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308504.P8854437065577094015.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A308504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308813.P9690503853493089291

`∑{d}[A002260(n+1), A025581(n)^(#-1)]`
-/

namespace A308813.P9690503853493089291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A025581 n : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A308813.P9690503853493089291

noncomputable section

/-- A308813: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where A(n,k) is Sum_{d|n} k^(d-1).

Offset 1, canonical program `A308813.P9690503853493089291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. -/
def A308813 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308813.P9690503853493089291.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. -/
def A308813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309398.P9325976622887262783

`∑[A281814(n²)]`
-/

namespace A309398.P9325976622887262783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281814 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309398.P9325976622887262783

noncomputable section

/-- A309398: a(n) is the nearest integer to log(log(10^n)).

Offset 1, canonical program `A309398.P9325976622887262783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A309398 (n : ℕ) : ℤ :=
  A309398.P9325976622887262783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A309398.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A309831.P15864747999336176262

`∑[A029140(n)]-A001400(n)`
-/

namespace A309831.P15864747999336176262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001400 n

end

end A309831.P15864747999336176262

noncomputable section

/-- A309831: Number of even parts appearing among the smallest parts of the partitions of n into 5 parts.

Offset 0, canonical program `A309831.P15864747999336176262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309831 (n : ℕ) : ℤ :=
  A309831.P15864747999336176262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312682.P2011729354850800503

`A312205(n)+Δ[A011861(n)]`
-/

namespace A312682.P2011729354850800503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312205 n + (f1 (n + 1) - f1 n)

end

end A312682.P2011729354850800503

noncomputable section

/-- A312682: Coordination sequence Gal.5.112.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312682.P2011729354850800503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A312682 (n : ℕ) : ℤ :=
  A312682.P2011729354850800503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A312682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312903.P5186887365123370171

`A330025(n-A330025(n))+A311384(n)`
-/

namespace A312903.P5186887365123370171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A311384 n

end

end A312903.P5186887365123370171

noncomputable section

/-- A312903: Coordination sequence Gal.5.65.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312903.P5186887365123370171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2534 terms. -/
def A312903 (n : ℕ) : ℤ :=
  A312903.P5186887365123370171.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2534 terms. -/
def A312903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313116.P8612234978426201844

`A330025(n-A330025(n))+A312162(n)`
-/

namespace A313116.P8612234978426201844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A312162 n

end

end A313116.P8612234978426201844

noncomputable section

/-- A313116: Coordination sequence Gal.5.116.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313116.P8612234978426201844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A313116 (n : ℕ) : ℤ :=
  A313116.P8612234978426201844.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A313116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313144.P17775273712726456344

`A312620(n)+A004525(A087509(n))`
-/

namespace A313144.P17775273712726456344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 n + A004525 (A087509 n).toNat

end

end A313144.P17775273712726456344

noncomputable section

/-- A313144: Coordination sequence Gal.5.219.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313144.P17775273712726456344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A313144 (n : ℕ) : ℤ :=
  A313144.P17775273712726456344.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A313144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313154.P7910125893097236437

`A312162(n)+Δ[A011858(n)]`
-/

namespace A313154.P7910125893097236437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312162 n + (f1 (n + 1) - f1 n)

end

end A313154.P7910125893097236437

noncomputable section

/-- A313154: Coordination sequence Gal.6.252.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313154.P7910125893097236437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A313154 (n : ℕ) : ℤ :=
  A313154.P7910125893097236437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A313154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313246.P15329026928054582960

`A312620(n)+A004525(n-A004396(n))`
-/

namespace A313246.P15329026928054582960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313246.P15329026928054582960

noncomputable section

/-- A313246: Coordination sequence Gal.6.264.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313246.P15329026928054582960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A313246 (n : ℕ) : ℤ :=
  A313246.P15329026928054582960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A313246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313251.P8215173569806842908

`A312620(n)+A004396(n-A004525(n))`
-/

namespace A313251.P8215173569806842908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313251.P8215173569806842908

noncomputable section

/-- A313251: Coordination sequence Gal.6.203.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313251.P8215173569806842908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2371 terms. -/
def A313251 (n : ℕ) : ℤ :=
  A313251.P8215173569806842908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2371 terms. -/
def A313251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313292.P15392932412953787641

`A312205(n)+∑[A021913(n)]`
-/

namespace A313292.P15392932412953787641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312205 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313292.P15392932412953787641

noncomputable section

/-- A313292: Coordination sequence Gal.4.56.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313292.P15392932412953787641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313292 (n : ℕ) : ℤ :=
  A313292.P15392932412953787641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313837.P17641795558428794836

`A313213(n)+A004396(A004525(n))`
-/

namespace A313837.P17641795558428794836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313213 n + A004396 (A004525 n).toNat

end

end A313837.P17641795558428794836

noncomputable section

/-- A313837: Coordination sequence Gal.6.618.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313837.P17641795558428794836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A313837 (n : ℕ) : ℤ :=
  A313837.P17641795558428794836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A313837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313891.P9038549751761829655

`A313213(n)+A004525(n)`
-/

namespace A313891.P9038549751761829655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313213 n + A004525 n

end

end A313891.P9038549751761829655

noncomputable section

/-- A313891: Coordination sequence Gal.4.142.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313891.P9038549751761829655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A313891 (n : ℕ) : ℤ :=
  A313891.P9038549751761829655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A313891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313962.P258668997932417056

`A313835(n)+Δ[A011862(n)]`
-/

namespace A313962.P258668997932417056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313835 n + (f1 (n + 1) - f1 n)

end

end A313962.P258668997932417056

noncomputable section

/-- A313962: Coordination sequence Gal.3.53.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313962.P258668997932417056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A313962 (n : ℕ) : ℤ :=
  A313962.P258668997932417056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A313962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313979.P9481199202513523421

`A313894(n)+Δ[A011862(n)]`
-/

namespace A313979.P9481199202513523421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + (f1 (n + 1) - f1 n)

end

end A313979.P9481199202513523421

noncomputable section

/-- A313979: Coordination sequence Gal.6.654.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313979.P9481199202513523421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2222 terms. -/
def A313979 (n : ℕ) : ℤ :=
  A313979.P9481199202513523421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2222 terms. -/
def A313979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314066.P16209138057789803329

`2*A314043(n)-A314022(n)`
-/

namespace A314066.P16209138057789803329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314043 n - A314022 n

end

end A314066.P16209138057789803329

noncomputable section

/-- A314066: Coordination sequence Gal.4.144.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314066.P16209138057789803329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A314066 (n : ℕ) : ℤ :=
  A314066.P16209138057789803329.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A314066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314093.P5564140878793647355

`A313127(n)+A253262(n)`
-/

namespace A314093.P5564140878793647355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313127 n + A253262 n

end

end A314093.P5564140878793647355

noncomputable section

/-- A314093: Coordination sequence Gal.5.137.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314093.P5564140878793647355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A314093 (n : ℕ) : ℤ :=
  A314093.P5564140878793647355.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A314093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314097.P8368931035641708472

`A313510(n)+∑[A021913(n)]`
-/

namespace A314097.P8368931035641708472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314097.P8368931035641708472

noncomputable section

/-- A314097: Coordination sequence Gal.6.354.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314097.P8368931035641708472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. -/
def A314097 (n : ℕ) : ℤ :=
  A314097.P8368931035641708472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. -/
def A314097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314159.P9267206370846563594

`A310457(n)+A004525(n)`
-/

namespace A314159.P9267206370846563594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310457 n + A004525 n

end

end A314159.P9267206370846563594

noncomputable section

/-- A314159: Coordination sequence Gal.6.624.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314159.P9267206370846563594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A314159 (n : ℕ) : ℤ :=
  A314159.P9267206370846563594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A314159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314189.P7331010239298869687

`A313829(n)+∑[A022003(n)]`
-/

namespace A314189.P7331010239298869687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313829 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314189.P7331010239298869687

noncomputable section

/-- A314189: Coordination sequence Gal.6.636.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314189.P7331010239298869687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314189 (n : ℕ) : ℤ :=
  A314189.P7331010239298869687.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314205.P7191445224176703751

`A313860(n)+A004396(n-A004396(n))`
-/

namespace A314205.P7191445224176703751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313860 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A314205.P7191445224176703751

noncomputable section

/-- A314205: Coordination sequence Gal.5.133.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314205.P7191445224176703751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A314205 (n : ℕ) : ℤ :=
  A314205.P7191445224176703751.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A314205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314208.P13024500297364737836

`A313872(n)+A004525(n-A004396(n))`
-/

namespace A314208.P13024500297364737836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A314208.P13024500297364737836

noncomputable section

/-- A314208: Coordination sequence Gal.6.619.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314208.P13024500297364737836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A314208 (n : ℕ) : ℤ :=
  A314208.P13024500297364737836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A314208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314216.P14114423026474714885

`round(A313872(n)+n/3)`
-/

namespace A314216.P14114423026474714885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A313872 n : ℚ) + (n : ℚ) / 3)

end

end A314216.P14114423026474714885

noncomputable section

/-- A314216: Coordination sequence Gal.6.624.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314216.P14114423026474714885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A314216 (n : ℕ) : ℤ :=
  A314216.P14114423026474714885.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A314216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314227.P16301604767465595439

`2*A314161(n)-A314068(n)`
-/

namespace A314227.P16301604767465595439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314161 n - A314068 n

end

end A314227.P16301604767465595439

noncomputable section

/-- A314227: Coordination sequence Gal.4.146.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314227.P16301604767465595439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2223 terms. -/
def A314227 (n : ℕ) : ℤ :=
  A314227.P16301604767465595439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2223 terms. -/
def A314227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314841.P5099753023197914535

`A312620(n)+A128834(n)`
-/

namespace A314841.P5099753023197914535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 n + A128834 n

end

end A314841.P5099753023197914535

noncomputable section

/-- A314841: Coordination sequence Gal.6.151.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314841.P5099753023197914535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. -/
def A314841 (n : ℕ) : ℤ :=
  A314841.P5099753023197914535.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. -/
def A314841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314972.P7314181398495225486

`abs(A008592(n)-A314087(n))`
-/

namespace A314972.P7314181398495225486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314087 n|

end

end A314972.P7314181398495225486

noncomputable section

/-- A314972: Coordination sequence Gal.5.139.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314972.P7314181398495225486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A314972 (n : ℕ) : ℤ :=
  A314972.P7314181398495225486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A314972.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188019.P17014770103561860153

`comp[A188018(n+1)-1]+1`
-/

namespace A188019.P17014770103561860153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188019.P17014770103561860153

noncomputable section

/-- A188019: Positions of 1 in A188017; complement of A188018.

Offset 1, canonical program `A188019.P17014770103561860153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188019 (n : ℕ) : ℤ :=
  (A188019.P17014770103561860153.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188019.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A193291.P12186419772948378566`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193291 (n : ℕ) : ℤ :=
  A193291.P12186419772948378566.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193291.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A193334.P16944727795109553516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193334 (n : ℕ) : ℤ :=
  A193334.P16944727795109553516.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193334.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193634.P15265443196833601696

`A091042(A292564(n))`
-/

namespace A193634.P15265443196833601696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 (A292564 n).toNat

end

end A193634.P15265443196833601696

noncomputable section

/-- A193634: Triangle: T(n,k)=C(4n+1,2k), 0<=k<=n.

Offset 0, canonical program `A193634.P15265443196833601696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A193634 (n : ℕ) : ℤ :=
  A193634.P15265443196833601696.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A193634.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A199983.P4289186587475358336

`p?[A034051(n+1)]`
-/

namespace A199983.P4289186587475358336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199983.P4289186587475358336

noncomputable section

/-- A199983: Primes whose multiplicative digital root is 4.

Offset 1, canonical program `A199983.P4289186587475358336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A199983 (n : ℕ) : ℤ :=
  A199983.P4289186587475358336.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A199983.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A204270.P12797670132099192821

`A001511(n+1)*A209445(n+1)`
-/

namespace A204270.P12797670132099192821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A209445 (n + 1)

end

end A204270.P12797670132099192821

noncomputable section

/-- A204270: a(n) = tau(n)*Pell(n), where tau(n) = A000005(n), the number of divisors of n.

Offset 1, canonical program `A204270.P12797670132099192821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A204270 (n : ℕ) : ℤ :=
  A204270.P12797670132099192821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A204270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204342.P2124445064722088541

`A050468(2*n+1)`
-/

namespace A204342.P2124445064722088541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050468 (2 * n + 1)

end

end A204342.P2124445064722088541

noncomputable section

/-- A204342: a(n) = (-1)^n * Sum_{2*m + 1 | 2*n + 1} (-1)^m (2*m + 1)^4.

Offset 0, canonical program `A204342.P2124445064722088541`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204342 (n : ℕ) : ℤ :=
  A204342.P2124445064722088541.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204342.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A207480.P8782442893518964614

`A006254(n+1)-A176246(n+1)`
-/

namespace A207480.P8782442893518964614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) - A176246 (n + 1)

end

end A207480.P8782442893518964614

noncomputable section

/-- A207480: a(n) = (3/2)*(1+prime(n)) - prime(n+1).

Offset 2, canonical program `A207480.P8782442893518964614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207480 (n : ℕ) : ℤ :=
  A207480.P8782442893518964614.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207480.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A213595.P12443528902880694475`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048784, A213594, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A213595 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A213595.P12443528902880694475.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048784, A213594, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A214505.P12862525992075675400

`A214295(2*n+1)`
-/

namespace A214505.P12862525992075675400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214295 (2 * n + 1)

end

end A214505.P12862525992075675400

noncomputable section

/-- A214505: a(n) = 1 if n is four times a triangular number, -1 if one more than twelve times a triangular number else 0.

Offset 0, canonical program `A214505.P12862525992075675400`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214295, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214505 (n : ℕ) : ℤ :=
  A214505.P12862525992075675400.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214295, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214505.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 2, canonical program `A216244.P11756277930264745226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061066, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216244 (n : ℕ) : ℤ :=
  A216244.P11756277930264745226.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061066, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216244.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A217854.P9671442733473030747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062758, A158387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A217854 (n : ℕ) : ℤ :=
  A217854.P9671442733473030747.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062758, A158387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A217854.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A221058.P9952034035264355000

`A004526(n)*A107373(A028310(n))`
-/

namespace A221058.P9952034035264355000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A107373 (A028310 n).toNat

end

end A221058.P9952034035264355000

noncomputable section

/-- A221058: Number of inversions in all Dyck prefixes of length n.

Offset 0, canonical program `A221058.P9952034035264355000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A221058 (n : ℕ) : ℤ :=
  A221058.P9952034035264355000.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A221058.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A222565.P1816382862273423881

`∪[A158708(n+1), A158709(n+1)]`
-/

namespace A222565.P1816382862273423881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222565.P1816382862273423881

noncomputable section

/-- A222565: Primes that are the largest anti-divisor of primes.

Offset 1, canonical program `A222565.P1816382862273423881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A222565 (n : ℕ) : ℤ :=
  (A222565.P1816382862273423881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A222565.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A225202.P13080212404416054348

`A381936(n+1)+A007436(n+1)`
-/

namespace A225202.P13080212404416054348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381936 (n + 1) + A007436 (n + 1)

end

end A225202.P13080212404416054348

noncomputable section

/-- A225202: Number of aperiodic tilings of an n X 1 rectangle by tiles of dimension 1 X 1 and 2 X 1.

Offset 1, canonical program `A225202.P13080212404416054348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A225202 (n : ℕ) : ℤ :=
  A225202.P13080212404416054348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A225202.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A233666.P13838856336884360722

`A196678(n+1)-A002293(n+2)`
-/

namespace A233666.P13838856336884360722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196678 (n + 1) - A002293 (n + 2)

end

end A233666.P13838856336884360722

noncomputable section

/-- A233666: a(n) = 2*binomial(4*n + 8, n)/(n + 2).

Offset 0, canonical program `A233666.P13838856336884360722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A233666 (n : ℕ) : ℤ :=
  A233666.P13838856336884360722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A233666.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A235037.P2716469781095852394

`∑[C(2, A059288(n+1)²)]`
-/

namespace A235037.P2716469781095852394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A059288 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235037.P2716469781095852394

noncomputable section

/-- A235037: Number of terms of A014847 that are not greater than n.

Offset 1, canonical program `A235037.P2716469781095852394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A235037 (n : ℕ) : ℤ :=
  (A235037.P2716469781095852394.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A235037.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A238327.P3458075969013373814

`A151800(a(n-1))+2` with `a(0)=1`
-/

namespace A238327.P3458075969013373814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (a (n - 1)).toNat + 2

end

end A238327.P3458075969013373814

noncomputable section

/-- A238327: Recursively defined by a(0) = 1, a(n + 1) = p + 2, where p is the least prime greater than a(n).

Offset 0, canonical program `A238327.P3458075969013373814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8370 terms. -/
def A238327 (n : ℕ) : ℤ :=
  A238327.P3458075969013373814.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8370 terms. -/
def A238327.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A240839.P18193742884803591972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2466 terms. -/
def A240839 (n : ℕ) : ℤ :=
  (A240839.P18193742884803591972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2466 terms. -/
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

Offset 1, canonical program `A244576.P4626810035088509024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A244049, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244576 (n : ℕ) : ℤ :=
  A244576.P4626810035088509024.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A244049, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244576.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244670.P12427737104699753046

`A244668(A145551(n+1))`
-/

namespace A244670.P12427737104699753046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244668 (A145551 (n + 1)).toNat

end

end A244670.P12427737104699753046

noncomputable section

/-- A244670: Product of divisors of n / sum of divisors of n for n such that product of divisors of n is divisible by sum of divisors of n.

Offset 1, canonical program `A244670.P12427737104699753046`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145551, A244668, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244670 (n : ℕ) : ℤ :=
  A244670.P12427737104699753046.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145551, A244668, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244670.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A245200.P9972553082105733129

`3*A286679(n+3)%A004139(n+1)`
-/

namespace A245200.P9972553082105733129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.tmod (A286679 (n + 3)) (A004139 (n + 1))

end

end A245200.P9972553082105733129

noncomputable section

/-- A245200: Smallest positive solution to k == 0 mod 3 and k == 1 mod prime(n).

Offset 3, canonical program `A245200.P9972553082105733129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245200 (n : ℕ) : ℤ :=
  A245200.P9972553082105733129.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245200.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A245773.P11491610189230660149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, A245484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245773 (n : ℕ) : ℤ :=
  A245773.P11491610189230660149.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, A245484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246132.P14305279885904439507

`A246134(n+1)%(n+1)²`
-/

namespace A246132.P14305279885904439507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246134 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A246132.P14305279885904439507

noncomputable section

/-- A246132: Binomial(2n, n) - 2 mod n^2.

Offset 1, canonical program `A246132.P14305279885904439507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246132 (n : ℕ) : ℤ :=
  A246132.P14305279885904439507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246133.P2994070847171504684

`A246134(n+1)%∑[A003215(n)]`
-/

namespace A246133.P2994070847171504684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246134 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246133.P2994070847171504684

noncomputable section

/-- A246133: a(n) = (binomial(2n, n) - 2) mod n^3.

Offset 1, canonical program `A246133.P2994070847171504684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246133 (n : ℕ) : ℤ :=
  A246133.P2994070847171504684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246133.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A247515.P5212930640307927296

`eq[1, A067614(n+1)]+1`
-/

namespace A247515.P5212930640307927296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A247515.P5212930640307927296

noncomputable section

/-- A247515: Numbers k such that 2*floor(sqrt(prime(k))) < floor(2*sqrt(prime(k))).

Offset 1, canonical program `A247515.P5212930640307927296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A247515 (n : ℕ) : ℤ :=
  (A247515.P5212930640307927296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A247515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248365.P6680227823295661139

`A001704(4*(n+1))-1`
-/

namespace A248365.P6680227823295661139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (4 * (n + 1)) - 1

end

end A248365.P6680227823295661139

noncomputable section

/-- A248365: 4n concatenated with itself.

Offset 1, canonical program `A248365.P6680227823295661139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6250 terms. -/
def A248365 (n : ℕ) : ℤ :=
  A248365.P6680227823295661139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6250 terms. -/
def A248365.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A251984.P15569396119092136468

`A274206(A089186(n+1))`
-/

namespace A251984.P15569396119092136468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (A089186 (n + 1)).toNat

end

end A251984.P15569396119092136468

noncomputable section

/-- A251984: Smallest number such that a carry occurs when adding it to n in decimal representation.

Offset 1, canonical program `A251984.P15569396119092136468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A251984 (n : ℕ) : ℤ :=
  A251984.P15569396119092136468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A251984.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A254926.P1478616090771883199

`∑{d}[n+1, A007432(#)*A226602((n+1)/#)]`
-/

namespace A254926.P1478616090771883199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A226602 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254926.P1478616090771883199

noncomputable section

/-- A254926: There are a(n) numbers m such that 1 <= m <= n and gcd(m,n) is cubefree.

Offset 1, canonical program `A254926.P1478616090771883199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254926 (n : ℕ) : ℤ :=
  A254926.P1478616090771883199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254926.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A255174.P2578554358977319620

`A031336(n+1)-A031215(n+1)`
-/

namespace A255174.P2578554358977319620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1) - A031215 (n + 1)

end

end A255174.P2578554358977319620

noncomputable section

/-- A255174: a(n) = prime(3*n) - prime(2*n).

Offset 1, canonical program `A255174.P2578554358977319620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255174 (n : ℕ) : ℤ :=
  A255174.P2578554358977319620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255174.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A256736.P12741595308557860683

`A088680(n+1)-1`
-/

namespace A256736.P12741595308557860683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088680 (n + 1) - 1

end

end A256736.P12741595308557860683

noncomputable section

/-- A256736: Number of composites lying between successive pairs of primes, beginning with pair (3,5). Bisection of A046933.

Offset 1, canonical program `A256736.P12741595308557860683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256736 (n : ℕ) : ℤ :=
  A256736.P12741595308557860683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256736.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A258326.P2141171975313167105

`A093667(n+1)-1`
-/

namespace A258326.P2141171975313167105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1) - 1

end

end A258326.P2141171975313167105

noncomputable section

/-- A258326: a(1) = 3; for n > 1, a(n) = a(n-1) + prime(n+2) - 2*prime(n+1) + 2*prime(n) - prime(n-1).

Offset 1, canonical program `A258326.P2141171975313167105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258326 (n : ℕ) : ℤ :=
  A258326.P2141171975313167105.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258326.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A258977.P6713999893642362193`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258974, A258976, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A258977 (n : ℕ) : ℤ :=
  A258977.P6713999893642362193.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258974, A258976, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A258977.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A267676.P4684612888645743978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267676 (n : ℕ) : ℤ :=
  (A267676.P4684612888645743978.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
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

Offset 2, canonical program `A267896.P13651887793568132644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024675, A028334, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267896 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A267896.P13651887793568132644.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024675, A028334, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267896.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A270992.P11423849643885823458

`A001221(A063086(n+1))`
-/

namespace A270992.P11423849643885823458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A063086 (n + 1)).toNat

end

end A270992.P11423849643885823458

noncomputable section

/-- A270992: Number of distinct prime divisors of prime(n)+1 and prime(n+1)+1.

Offset 1, canonical program `A270992.P11423849643885823458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270992 (n : ℕ) : ℤ :=
  A270992.P11423849643885823458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272190.P4499530173300394129

`A030513(n+1)²`
-/

namespace A272190.P4499530173300394129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1) ^ 2

end

end A272190.P4499530173300394129

noncomputable section

/-- A272190: Either 6th power of a prime, or product of the square of two different primes.

Offset 1, canonical program `A272190.P4499530173300394129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272190 (n : ℕ) : ℤ :=
  A272190.P4499530173300394129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272190.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A274849.P17602630050161796661

`∩[A160007(n+1), A316100(n+1)]`
-/

namespace A274849.P17602630050161796661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274849.P17602630050161796661

noncomputable section

/-- A274849: Isolated deficient numbers.

Offset 1, canonical program `A274849.P17602630050161796661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 822 terms. -/
def A274849 (n : ℕ) : ℤ :=
  (A274849.P17602630050161796661.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 822 terms. -/
def A274849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275989.P8490521499288907832

`A072677(n+1)-A000040(n+1)`
-/

namespace A275989.P8490521499288907832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (n + 1) - A000040 (n + 1)

end

end A275989.P8490521499288907832

noncomputable section

/-- A275989: a(n) = prime(prime(n)+1) - prime(n).

Offset 1, canonical program `A275989.P8490521499288907832`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A072677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275989 (n : ℕ) : ℤ :=
  A275989.P8490521499288907832.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A072677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275991.P8659216433312454549

`A088982(n+1)-A000040(n+1)`
-/

namespace A275991.P8659216433312454549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (n + 1) - A000040 (n + 1)

end

end A275991.P8659216433312454549

noncomputable section

/-- A275991: a(n) = prime(composite(n)) - prime(n).

Offset 1, canonical program `A275991.P8659216433312454549`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A088982, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275991 (n : ℕ) : ℤ :=
  A275991.P8659216433312454549.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A088982, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275991.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A277169.P7870320882973460960`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277169 (n : ℕ) : ℤ :=
  A277169.P7870320882973460960.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277169.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277521.P5832681459461376919

`filter[A145551(n+1), A245656(#)]`
-/

namespace A277521.P5832681459461376919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A277521.P5832681459461376919

noncomputable section

/-- A277521: Numbers k such that number of divisors of k and sum of divisors of k divides product of divisors of k and the average of the divisors of k is an integer.

Offset 1, canonical program `A277521.P5832681459461376919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A277521 (n : ℕ) : ℤ :=
  A277521.P5832681459461376919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A277521.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A280728.P2681727417312641949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280728 (n : ℕ) : ℤ :=
  A280728.P2681727417312641949.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280728.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A283479.P8552650789036169488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283479 (n : ℕ) : ℤ :=
  A283479.P8552650789036169488.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283479.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A284059.P2785205054192742423

`abs(A275966(n+1))`
-/

namespace A284059.P2785205054192742423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A275966 (n + 1)|

end

end A284059.P2785205054192742423

noncomputable section

/-- A284059: The absolute values of A275966.

Offset 1, canonical program `A284059.P2785205054192742423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284059 (n : ℕ) : ℤ :=
  A284059.P2785205054192742423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284059.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A284566.P9813088326680274494`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284566 (n : ℕ) : ℤ :=
  A284566.P9813088326680274494.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284566.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A284883.P7296943405471408281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284883 (n : ℕ) : ℤ :=
  (A284883.P7296943405471408281.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
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

/-! ## A286057.P14495721961754591744

`filter[n+1, A286055(#)]`
-/

namespace A286057.P14495721961754591744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286055 (f1 j) = 1) n)

end

end A286057.P14495721961754591744

noncomputable section

/-- A286057: Positions of 1 in A286055; complement of A286056.

Offset 1, canonical program `A286057.P14495721961754591744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A286057 (n : ℕ) : ℤ :=
  (A286057.P14495721961754591744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A286057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286259.P4100999177015709443

`(2+(A001511(n+1)+A049820(n+1))²-A001511(n+1)-3*A049820(n+1))/2`
-/

namespace A286259.P4100999177015709443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + ((A001511 (n + 1) + A049820 (n + 1)) ^ 2 - A001511 (n + 1)) - 3 * A049820 (n + 1) : ℚ) / 2

end

end A286259.P4100999177015709443

noncomputable section

/-- A286259: Compound filter: a(n) = P(A001511(n), A049820(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286259.P4100999177015709443`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286259 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286259.P4100999177015709443.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286259.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A286530.P8332738514861168906`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A286529, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286530 (n : ℕ) : ℤ :=
  A286530.P8332738514861168906.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A286529, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286530.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A287896.P4517701552711881970`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287896 (n : ℕ) : ℤ :=
  A287896.P4517701552711881970.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287896.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289055.P6960658718910037824

`(1-C(∑[char[∑[n]]], 2)+n)*A028815(∑[char[∑[n+1]]])`
-/

namespace A289055.P6960658718910037824
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A028815 (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A289055.P6960658718910037824

noncomputable section

/-- A289055: Triangle read by rows: T(n,k) = (k+1)*A028815(n) for 0 <= k <= n.

Offset 0, canonical program `A289055.P6960658718910037824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A289055 (n : ℕ) : ℤ :=
  A289055.P6960658718910037824.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A289055.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A292918.P8931066894349998368

`2*A071917(n+1)+1`
-/

namespace A292918.P8931066894349998368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071917 (n + 1) + 1

end

end A292918.P8931066894349998368

noncomputable section

/-- A292918: Let A_n be a square n X n matrix with entries A_n(i,j)=1 if i+j is prime, and A_n(i,j)=0 otherwise. Then a(n) counts the 1's in A_n.

Offset 1, canonical program `A292918.P8931066894349998368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292918 (n : ℕ) : ℤ :=
  A292918.P8931066894349998368.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292918.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293643.P4507541113369721667

`A293642(n)+A011558(n)`
-/

namespace A293643.P4507541113369721667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293642 n + A011558 n

end

end A293643.P4507541113369721667

noncomputable section

/-- A293643: a(n) is the least integer k such that k/Fibonacci(n) > 3/5.

Offset 0, canonical program `A293643.P4507541113369721667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A293643 (n : ℕ) : ℤ :=
  A293643.P4507541113369721667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A293643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293644.P9174250443400626299

`A293640(n)+A004698(n)`
-/

namespace A293644.P9174250443400626299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n + A004698 n

end

end A293644.P9174250443400626299

noncomputable section

/-- A293644: a(n) is the integer k that minimizes |k/Fibonacci(n) - 3/5|.

Offset 0, canonical program `A293644.P9174250443400626299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A293644 (n : ℕ) : ℤ :=
  A293644.P9174250443400626299.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A293644.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A295505.P10874738563649779947

`∑{d}[n+1, A046692(#)*A359190((n+1)/#)]`
-/

namespace A295505.P10874738563649779947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A359190 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A295505.P10874738563649779947

noncomputable section

/-- A295505: a(n) = Sum_{d|n} mu(n/d)*4^(d-1).

Offset 1, canonical program `A295505.P10874738563649779947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A295505 (n : ℕ) : ℤ :=
  A295505.P10874738563649779947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A295505.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A301724.P3038787070238484686

`A330033(n)+A314209(n)`
-/

namespace A301724.P3038787070238484686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330033 n + A314209 n

end

end A301724.P3038787070238484686

noncomputable section

/-- A301724: Coordination sequence for node of type V1 in "kra" 2-D tiling (or net).

Offset 0, canonical program `A301724.P3038787070238484686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2256 terms. -/
def A301724 (n : ℕ) : ℤ :=
  A301724.P3038787070238484686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2256 terms. -/
def A301724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303120.P13190736090509542257

`record[A023855(n+1)*A214295(n+2)]`
-/

namespace A303120.P13190736090509542257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 1) * A214295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303120.P13190736090509542257

noncomputable section

/-- A303120: Total area of all rectangles of size p X q such that p + q = n^2 and p <= q.

Offset 1, canonical program `A303120.P13190736090509542257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A303120 (n : ℕ) : ℤ :=
  A303120.P13190736090509542257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A303120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304275.P15555862402224262054

`A069097(2*n+1)`
-/

namespace A304275.P15555862402224262054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069097 (2 * n + 1)

end

end A304275.P15555862402224262054

noncomputable section

/-- A304275: a(n) = Sum_{k = 1..n} gcd(k,n) / cos(Pi*k/n)^2 for odd n.

Offset 1, canonical program `A304275.P15555862402224262054`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304275 (n : ℕ) : ℤ :=
  A304275.P15555862402224262054.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304275.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A307120.P1673145710130968314

`A009005(A343005(n+2)+∏{e}[n, #+1])`
-/

namespace A307120.P1673145710130968314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A343005 (n + 2) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A307120.P1673145710130968314

noncomputable section

/-- A307120: a(1) = 3, for n>1, a(n) = A000005(n-1) + A000005(n) + A000005(n+1).

Offset 1, canonical program `A307120.P1673145710130968314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307120 (n : ℕ) : ℤ :=
  A307120.P1673145710130968314.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307120.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A309288.P1252972145664633864

`∑[A361984(A028310(n))]-1`
-/

namespace A309288.P1252972145664633864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361984 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A309288.P1252972145664633864

noncomputable section

/-- A309288: a(0) = 0, a(1) = 1, and for any n > 1, a(n) = Sum_{k > 1} (-1)^k * a(floor(n/k)).

Offset 0, canonical program `A309288.P1252972145664633864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309288 (n : ℕ) : ℤ :=
  A309288.P1252972145664633864.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309288.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A309732.P16927828332471193003

`(n+1)*A152211(n+1)/2`
-/

namespace A309732.P16927828332471193003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A152211 (n + 1) : ℚ) / 2

end

end A309732.P16927828332471193003

noncomputable section

/-- A309732: Expansion of Sum_{k>=1} k^2 * x^k/(1 - x^k)^3.

Offset 1, canonical program `A309732.P16927828332471193003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152211, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309732 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A309732.P16927828332471193003.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152211, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309732.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A310492.P3547860379058493254

`A315445(n)-A253262(A253262(n)+n)`
-/

namespace A310492.P3547860379058493254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315445 n - A253262 (A253262 n + (n : ℤ)).toNat

end

end A310492.P3547860379058493254

noncomputable section

/-- A310492: Coordination sequence Gal.6.249.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310492.P3547860379058493254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. -/
def A310492 (n : ℕ) : ℤ :=
  A310492.P3547860379058493254.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. -/
def A310492.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A312184.P16435784878311802560

`A004772(A312123(n)-n)+1`
-/

namespace A312184.P16435784878311802560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (A312123 n - (n : ℤ)).toNat + 1

end

end A312184.P16435784878311802560

noncomputable section

/-- A312184: Coordination sequence Gal.6.155.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312184.P16435784878311802560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312184 (n : ℕ) : ℤ :=
  A312184.P16435784878311802560.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312555.P10974015177557321906

`A311993(n)+Δ[A011862(n)]`
-/

namespace A312555.P10974015177557321906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311993 n + (f1 (n + 1) - f1 n)

end

end A312555.P10974015177557321906

noncomputable section

/-- A312555: Coordination sequence Gal.5.110.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312555.P10974015177557321906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312555 (n : ℕ) : ℤ :=
  A312555.P10974015177557321906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312669.P16662175868118744166

`2*A312100(n)-A008574(n)`
-/

namespace A312669.P16662175868118744166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312100 n - A008574 n

end

end A312669.P16662175868118744166

noncomputable section

/-- A312669: Coordination sequence Gal.5.111.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312669.P16662175868118744166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A312669 (n : ℕ) : ℤ :=
  A312669.P16662175868118744166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A312669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312935.P3936906225367747265

`abs(A008592(n)-A315521(n))`
-/

namespace A312935.P3936906225367747265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315521 n|

end

end A312935.P3936906225367747265

noncomputable section

/-- A312935: Coordination sequence Gal.4.105.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312935.P3936906225367747265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A312935 (n : ℕ) : ℤ :=
  A312935.P3936906225367747265.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A312935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313064.P10281981631680228567

`A311312(n)+∑[A021913(n)]`
-/

namespace A313064.P10281981631680228567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313064.P10281981631680228567

noncomputable section

/-- A313064: Coordination sequence Gal.6.195.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313064.P10281981631680228567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A313064 (n : ℕ) : ℤ :=
  A313064.P10281981631680228567.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A313064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313117.P16447127706921561156

`A312123(n)+A004396(n-A004525(n))`
-/

namespace A313117.P16447127706921561156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312123 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313117.P16447127706921561156

noncomputable section

/-- A313117: Coordination sequence Gal.6.134.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313117.P16447127706921561156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A313117 (n : ℕ) : ℤ :=
  A313117.P16447127706921561156.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A313117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313262.P4986091702170886326

`A312144(n)+∑[A021913(n)]`
-/

namespace A313262.P4986091702170886326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313262.P4986091702170886326

noncomputable section

/-- A313262: Coordination sequence Gal.6.205.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313262.P4986091702170886326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A313262 (n : ℕ) : ℤ :=
  A313262.P4986091702170886326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A313262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313283.P1676533140886781686

`abs(10*n-A315403(n))`
-/

namespace A313283.P1676533140886781686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315403 n|

end

end A313283.P1676533140886781686

noncomputable section

/-- A313283: Coordination sequence Gal.6.207.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313283.P1676533140886781686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A313283 (n : ℕ) : ℤ :=
  A313283.P1676533140886781686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A313283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313293.P9420717771788987788

`A313894(n)-A128834(A004396(n))`
-/

namespace A313293.P9420717771788987788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - A128834 (A004396 n).toNat

end

end A313293.P9420717771788987788

noncomputable section

/-- A313293: Coordination sequence Gal.5.89.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313293.P9420717771788987788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. -/
def A313293 (n : ℕ) : ℤ :=
  A313293.P9420717771788987788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. -/
def A313293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313297.P8971349673296799465

`abs(A008592(n)-A315395(n))`
-/

namespace A313297.P8971349673296799465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315395 n|

end

end A313297.P8971349673296799465

noncomputable section

/-- A313297: Coordination sequence Gal.6.210.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313297.P8971349673296799465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. -/
def A313297 (n : ℕ) : ℤ :=
  A313297.P8971349673296799465.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. -/
def A313297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313611.P14084562864274338654

`A004525(n)+A313540(n)-A004396(A004525(n))`
-/

namespace A313611.P14084562864274338654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313540 n - A004396 (A004525 n).toNat)

end

end A313611.P14084562864274338654

noncomputable section

/-- A313611: Coordination sequence Gal.6.337.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313611.P14084562864274338654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A313611 (n : ℕ) : ℤ :=
  A313611.P14084562864274338654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A313611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313619.P4479225662466088296

`A004525(n)+A313540(n)-A004525(A004396(n))`
-/

namespace A313619.P4479225662466088296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313540 n - A004525 (A004396 n).toNat)

end

end A313619.P4479225662466088296

noncomputable section

/-- A313619: Coordination sequence Gal.6.260.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313619.P4479225662466088296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2423 terms. -/
def A313619 (n : ℕ) : ℤ :=
  A313619.P4479225662466088296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2423 terms. -/
def A313619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313623.P10903003669249707041

`abs(A008592(n)-A313827(n))`
-/

namespace A313623.P10903003669249707041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313827 n|

end

end A313623.P10903003669249707041

noncomputable section

/-- A313623: Coordination sequence Gal.5.87.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313623.P10903003669249707041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A313623 (n : ℕ) : ℤ :=
  A313623.P10903003669249707041.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A313623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313704.P6800385676171828535

`A313560(n)+Δ[A011864(n)]`
-/

namespace A313704.P6800385676171828535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313560 n + (f1 (n + 1) - f1 n)

end

end A313704.P6800385676171828535

noncomputable section

/-- A313704: Coordination sequence Gal.6.323.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313704.P6800385676171828535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A313704 (n : ℕ) : ℤ :=
  A313704.P6800385676171828535.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A313704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313717.P15469880172162145756

`abs(9*n-A311312(n))`
-/

namespace A313717.P15469880172162145756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * n : ℤ) - A311312 n|

end

end A313717.P15469880172162145756

noncomputable section

/-- A313717: Coordination sequence Gal.6.151.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313717.P15469880172162145756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. -/
def A313717 (n : ℕ) : ℤ :=
  A313717.P15469880172162145756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. -/
def A313717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313719.P4530197353488080189

`A312195(n)+A253262(n)`
-/

namespace A313719.P4530197353488080189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312195 n + A253262 n

end

end A313719.P4530197353488080189

noncomputable section

/-- A313719: Coordination sequence Gal.5.116.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313719.P4530197353488080189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A313719 (n : ℕ) : ℤ :=
  A313719.P4530197353488080189.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A313719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313768.P5164488227941106115

`abs(A008592(n)-A313711(n))`
-/

namespace A313768.P5164488227941106115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313711 n|

end

end A313768.P5164488227941106115

noncomputable section

/-- A313768: Coordination sequence Gal.6.261.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313768.P5164488227941106115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A313768 (n : ℕ) : ℤ :=
  A313768.P5164488227941106115.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A313768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313794.P6065180597494154832

`abs(10*n-A313684(n))`
-/

namespace A313794.P6065180597494154832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313684 n|

end

end A313794.P6065180597494154832

noncomputable section

/-- A313794: Coordination sequence Gal.6.619.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313794.P6065180597494154832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A313794 (n : ℕ) : ℤ :=
  A313794.P6065180597494154832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A313794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313799.P9233664221489644288

`abs(A008592(n)-A313683(n))`
-/

namespace A313799.P9233664221489644288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313683 n|

end

end A313799.P9233664221489644288

noncomputable section

/-- A313799: Coordination sequence Gal.3.53.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313799.P9233664221489644288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A313799 (n : ℕ) : ℤ :=
  A313799.P9233664221489644288.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A313799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313876.P7091103484459184855

`abs(A008592(n)-A313560(n))`
-/

namespace A313876.P7091103484459184855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313560 n|

end

end A313876.P7091103484459184855

noncomputable section

/-- A313876: Coordination sequence Gal.6.342.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313876.P7091103484459184855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A313876 (n : ℕ) : ℤ :=
  A313876.P7091103484459184855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A313876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313895.P8605907711539961465

`A313873(n)+A313926(n)-A313916(n)`
-/

namespace A313895.P8605907711539961465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313873 n + (A313926 n - A313916 n)

end

end A313895.P8605907711539961465

noncomputable section

/-- A313895: Coordination sequence Gal.6.647.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313895.P8605907711539961465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313895 (n : ℕ) : ℤ :=
  A313895.P8605907711539961465.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313915.P8871065517544398615

`A008486(2*n)+A312140(n)-A313752(n)`
-/

namespace A313915.P8871065517544398615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) + (A312140 n - A313752 n)

end

end A313915.P8871065517544398615

noncomputable section

/-- A313915: Coordination sequence Gal.6.647.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313915.P8871065517544398615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A313915 (n : ℕ) : ℤ :=
  A313915.P8871065517544398615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A313915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313932.P4222521981908948703

`A315344(n)-A134667(n)`
-/

namespace A313932.P4222521981908948703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315344 n - A134667 n

end

end A313932.P4222521981908948703

noncomputable section

/-- A313932: Coordination sequence Gal.6.370.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313932.P4222521981908948703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A313932 (n : ℕ) : ℤ :=
  A313932.P4222521981908948703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A313932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313966.P14662508330527286566

`A028310(A313957(2*n)-A314123(n))`
-/

namespace A313966.P14662508330527286566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A313957 (2 * n) - A314123 n).toNat

end

end A313966.P14662508330527286566

noncomputable section

/-- A313966: Coordination sequence Gal.5.310.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313966.P14662508330527286566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. -/
def A313966 (n : ℕ) : ℤ :=
  A313966.P14662508330527286566.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. -/
def A313966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313978.P4030524710208457101

`A313836(n)+A315490(n)-A315413(n)`
-/

namespace A313978.P4030524710208457101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n + (A315490 n - A315413 n)

end

end A313978.P4030524710208457101

noncomputable section

/-- A313978: Coordination sequence Gal.6.653.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313978.P4030524710208457101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1997 terms. -/
def A313978 (n : ℕ) : ℤ :=
  A313978.P4030524710208457101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1997 terms. -/
def A313978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314029.P11928005688573589694

`abs(8*n-A004396(A312472(n)))`
-/

namespace A314029.P11928005688573589694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 * n : ℤ) - A004396 (A312472 n).toNat|

end

end A314029.P11928005688573589694

noncomputable section

/-- A314029: Coordination sequence Gal.6.328.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314029.P11928005688573589694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314029 (n : ℕ) : ℤ :=
  A314029.P11928005688573589694.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314038.P12633839293519020832

`abs(A008592(n)-A315034(n))`
-/

namespace A314038.P12633839293519020832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315034 n|

end

end A314038.P12633839293519020832

noncomputable section

/-- A314038: Coordination sequence Gal.6.616.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314038.P12633839293519020832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A314038 (n : ℕ) : ℤ :=
  A314038.P12633839293519020832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A314038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314054.P9922859689794149841

`A313754(n)+A128834(A142150(n))`
-/

namespace A314054.P9922859689794149841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313754 n + A128834 (A142150 n).toNat

end

end A314054.P9922859689794149841

noncomputable section

/-- A314054: Coordination sequence Gal.4.142.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314054.P9922859689794149841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A314054 (n : ℕ) : ℤ :=
  A314054.P9922859689794149841.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A314054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314057.P17750692989560915075

`A004396(A313620(n))+2*n`
-/

namespace A314057.P17750692989560915075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313620 n).toNat + (2 * n : ℤ)

end

end A314057.P17750692989560915075

noncomputable section

/-- A314057: Coordination sequence Gal.6.635.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314057.P17750692989560915075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314057 (n : ℕ) : ℤ :=
  A314057.P17750692989560915075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314088.P4296014599447221606

`A042965(A313683(n)+1-n)`
-/

namespace A314088.P4296014599447221606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A313683 n + (1 - (n : ℤ))).toNat

end

end A314088.P4296014599447221606

noncomputable section

/-- A314088: Coordination sequence Gal.5.111.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314088.P4296014599447221606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A314088 (n : ℕ) : ℤ :=
  A314088.P4296014599447221606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A314088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314121.P12858251584792299681

`abs(A134667(n)-A038608(A315475(n)))`
-/

namespace A314121.P12858251584792299681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134667 n - A038608 (A315475 n).toNat|

end

end A314121.P12858251584792299681

noncomputable section

/-- A314121: Coordination sequence Gal.6.657.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314121.P12858251584792299681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. -/
def A314121 (n : ℕ) : ℤ :=
  A314121.P12858251584792299681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. -/
def A314121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314133.P10587469180771269075

`A314052(n)+Δ[A011864(n)]`
-/

namespace A314133.P10587469180771269075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314052 n + (f1 (n + 1) - f1 n)

end

end A314133.P10587469180771269075

noncomputable section

/-- A314133: Coordination sequence Gal.6.623.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314133.P10587469180771269075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314133 (n : ℕ) : ℤ :=
  A314133.P10587469180771269075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314234.P3486160622524508479

`A004396(2*(A313869(n)-n))`
-/

namespace A314234.P3486160622524508479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313869 n - (n : ℤ))).toNat

end

end A314234.P3486160622524508479

noncomputable section

/-- A314234: Coordination sequence Gal.6.332.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314234.P3486160622524508479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1223 terms. -/
def A314234 (n : ℕ) : ℤ :=
  A314234.P3486160622524508479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1223 terms. -/
def A314234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314263.P7199020950879472314

`A315732(n)-A128834(n)`
-/

namespace A314263.P7199020950879472314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315732 n - A128834 n

end

end A314263.P7199020950879472314

noncomputable section

/-- A314263: Coordination sequence Gal.6.662.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314263.P7199020950879472314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. -/
def A314263 (n : ℕ) : ℤ :=
  A314263.P7199020950879472314.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. -/
def A314263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314364.P3264614006262536072

`A315943(n)-A006368(A004396(n))`
-/

namespace A314364.P3264614006262536072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315943 n - A006368 (A004396 n).toNat

end

end A314364.P3264614006262536072

noncomputable section

/-- A314364: Coordination sequence Gal.5.91.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314364.P3264614006262536072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A314364 (n : ℕ) : ℤ :=
  A314364.P3264614006262536072.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A314364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314671.P7548887448611647947

`A008458(n)+A008576(n)-A312100(n)`
-/

namespace A314671.P7548887448611647947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A312100 n)

end

end A314671.P7548887448611647947

noncomputable section

/-- A314671: Coordination sequence Gal.5.95.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314671.P7548887448611647947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A314671 (n : ℕ) : ℤ :=
  A314671.P7548887448611647947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A314671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314691.P8896103277328395044

`A311312(n)+A004525(A004396(n))`
-/

namespace A314691.P8896103277328395044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + A004525 (A004396 n).toNat

end

end A314691.P8896103277328395044

noncomputable section

/-- A314691: Coordination sequence Gal.6.256.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314691.P8896103277328395044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A314691 (n : ℕ) : ℤ :=
  A314691.P8896103277328395044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A314691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314737.P17028861215793571548

`A313583(n)-A004525(n-A004396(n))`
-/

namespace A314737.P17028861215793571548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A314737.P17028861215793571548

noncomputable section

/-- A314737: Coordination sequence Gal.6.260.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314737.P17028861215793571548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A314737 (n : ℕ) : ℤ :=
  A314737.P17028861215793571548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A314737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314961.P17305649603709339470

`A330033(n)+A310446(n)`
-/

namespace A314961.P17305649603709339470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330033 n + A310446 n

end

end A314961.P17305649603709339470

noncomputable section

/-- A314961: Coordination sequence Gal.5.137.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314961.P17305649603709339470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. -/
def A314961 (n : ℕ) : ℤ :=
  A314961.P17305649603709339470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. -/
def A314961.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188025.P8051068989946620211

`A188469(n+1)+A188013(n+1)`
-/

namespace A188025.P8051068989946620211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188469 (n + 1) + A188013 (n + 1)

end

end A188025.P8051068989946620211

noncomputable section

/-- A188025: Positions of 1 in A188020; complement of A188024.

Offset 1, canonical program `A188025.P8051068989946620211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188025 (n : ℕ) : ℤ :=
  A188025.P8051068989946620211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188025.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188061.P15782663309077621445

`filter[A346956(n+1), A325964(#)]`
-/

namespace A188061.P15782663309077621445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A188061.P15782663309077621445

noncomputable section

/-- A188061: Numbers k such that (product of divisors of k) == 1 (mod sum of divisors of k).

Offset 1, canonical program `A188061.P15782663309077621445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A188061 (n : ℕ) : ℤ :=
  A188061.P15782663309077621445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A188061.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A189835.P10100538785749668856`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A038040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189835 (n : ℕ) : ℤ :=
  A189835.P10100538785749668856.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A038040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A190597.P16179968402666617356

`A190598(A037477(n))`
-/

namespace A190597.P16179968402666617356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190598 (A037477 n).toNat

end

end A190597.P16179968402666617356

noncomputable section

/-- A190597: Maximal digit in base-8 expansion of n.

Offset 0, canonical program `A190597.P16179968402666617356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A190597 (n : ℕ) : ℤ :=
  A190597.P16179968402666617356.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A190597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190692.P17579498809585757927

`eq[A024548(A022838(n+1)), A327180(n)]`
-/

namespace A190692.P17579498809585757927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024548 (A022838 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190692.P17579498809585757927

noncomputable section

/-- A190692: Positions of 3 in A190688.

Offset 1, canonical program `A190692.P17579498809585757927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 893 terms. -/
def A190692 (n : ℕ) : ℤ :=
  (A190692.P17579498809585757927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 893 terms. -/
def A190692.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A193140.P15573877660645811182

`A086669(n+2)-1`
-/

namespace A193140.P15573877660645811182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (n + 2) - 1

end

end A193140.P15573877660645811182

noncomputable section

/-- A193140: Number of isonemal satins of exact period n.

Offset 2, canonical program `A193140.P15573877660645811182`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086669, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193140 (n : ℕ) : ℤ :=
  A193140.P15573877660645811182.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086669, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193140.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A197271.P6105395958063050445

`A000260(n)*5*(n+1)/(4*n+1)`
-/

namespace A197271.P6105395958063050445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000260 n : ℚ) * (5 * ((n + 1 : ℚ) / (4 * n + 1 : ℚ)))

end

end A197271.P6105395958063050445

noncomputable section

/-- A197271: a(n) = (10 / ((3*n+1)*(3*n+2))) * binomial(4*n, n).

Offset 0, canonical program `A197271.P6105395958063050445`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A197271 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A197271.P6105395958063050445.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A197271.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A199984.P4081988040001390195

`filter[A034051(n+1), A005171(#)]`
-/

namespace A199984.P4081988040001390195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A199984.P4081988040001390195

noncomputable section

/-- A199984: Composite numbers whose multiplicative digital root is 4.

Offset 1, canonical program `A199984.P4081988040001390195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A199984 (n : ℕ) : ℤ :=
  A199984.P4081988040001390195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A199984.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A221865.P10154145289672600813

`eq[A055671(n), A060278(n+2)]`
-/

namespace A221865.P10154145289672600813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060278 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221865.P10154145289672600813

noncomputable section

/-- A221865: The nonprimes k such that k + 2 is either a prime or a semiprime.

Offset 1, canonical program `A221865.P10154145289672600813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3221 terms. -/
def A221865 (n : ℕ) : ℤ :=
  (A221865.P10154145289672600813.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3221 terms. -/
def A221865.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A224525.P13517000376930982634

`6*(n+1)²+18*(n+1)+3+6*A002541(n+1)`
-/

namespace A224525.P13517000376930982634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) ^ 2 + 18 * (n + 1) : ℤ) + (3 + 6 * A002541 (n + 1))

end

end A224525.P13517000376930982634

noncomputable section

/-- A224525: Number of idempotent 3 X 3 0..n matrices of rank 1.

Offset 1, canonical program `A224525.P13517000376930982634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002541, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224525 (n : ℕ) : ℤ :=
  A224525.P13517000376930982634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002541, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224525.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226946.P9210141251982775955

`eq[0, A000086(n+2)]+2`
-/

namespace A226946.P9210141251982775955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A226946.P9210141251982775955

noncomputable section

/-- A226946: Numbers that can't be written as x^2 + x*y + y^2, with 0 <= x <= y and gcd(x,y) = 1.

Offset 1, canonical program `A226946.P9210141251982775955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8667 terms. -/
def A226946 (n : ℕ) : ℤ :=
  (A226946.P9210141251982775955.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8667 terms. -/
def A226946.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A228139.P2229959096761443829

`∩[A038618(n+1), A229221(n+1)]`
-/

namespace A228139.P2229959096761443829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228139.P2229959096761443829

noncomputable section

/-- A228139: Primes such that the product of their digits subtracted from the prime number is another prime.

Offset 1, canonical program `A228139.P2229959096761443829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228139 (n : ℕ) : ℤ :=
  (A228139.P2229959096761443829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228139.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A230295.P4156999236486821316

`A230294(2*n+3)-A230293(n+1)`
-/

namespace A230295.P4156999236486821316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230294 (2 * n + 3) - A230293 (n + 1)

end

end A230295.P4156999236486821316

noncomputable section

/-- A230295: a(n) = Sum_{i=1..n} d(8*i+5) - Sum_{i=1..n} d(4*i+3), where d(n) = A000005(n).

Offset 1, canonical program `A230295.P4156999236486821316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A230295 (n : ℕ) : ℤ :=
  A230295.P4156999236486821316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A230295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230476.P10377358832244411741

`A230293(n+1)+A230294(n+1)`
-/

namespace A230476.P10377358832244411741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230293 (n + 1) + A230294 (n + 1)

end

end A230476.P10377358832244411741

noncomputable section

/-- A230476: a(n) = Sum_{i=1..n} d(8*i+1) - Sum_{i=1..n} d(2*i+1), where d(n) = A000005(n) is the number of divisors of n.

Offset 1, canonical program `A230476.P10377358832244411741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230293, A230294, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A230476 (n : ℕ) : ℤ :=
  A230476.P10377358832244411741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230293, A230294, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A230476.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A235872.P17023247656904306328

`lcm(A118830(n+1), A358272(n+1))`
-/

namespace A235872.P17023247656904306328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A118830 (n + 1)) (A358272 (n + 1))

end

end A235872.P17023247656904306328

noncomputable section

/-- A235872: Number of solutions to the equation x^2=0 in the ring of Gaussian integers modulo n.

Offset 1, canonical program `A235872.P17023247656904306328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235872 (n : ℕ) : ℤ :=
  (A235872.P17023247656904306328.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237767.P18206314552424324483

`∩[A052382(n+1), A062372(n+1)]`
-/

namespace A237767.P18206314552424324483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237767.P18206314552424324483

noncomputable section

/-- A237767: Integers whose product of digits is a nonzero cube.

Offset 1, canonical program `A237767.P18206314552424324483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A237767 (n : ℕ) : ℤ :=
  (A237767.P18206314552424324483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A237767.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A243067.P4741052087000171941

`n-A000788(A100922(n)-1)`
-/

namespace A243067.P4741052087000171941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000788 (A100922 n - 1).toNat

end

end A243067.P4741052087000171941

noncomputable section

/-- A243067: Integers from 0 to A000120(n)-1 followed by integers from 0 to A000120(n+1)-1 and so on, starting with n=1.

Offset 1, canonical program `A243067.P4741052087000171941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A243067 (n : ℕ) : ℤ :=
  A243067.P4741052087000171941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A243067.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A257002.P4398903150053920676

`p?[A015922(n+5)-2]`
-/

namespace A257002.P4398903150053920676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 5) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257002.P4398903150053920676

noncomputable section

/-- A257002: Primes p such that p+2 divides p^p+2.

Offset 1, canonical program `A257002.P4398903150053920676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5700 terms. -/
def A257002 (n : ℕ) : ℤ :=
  A257002.P4398903150053920676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5700 terms. -/
def A257002.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A258776.P5594703475324302981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258774, A258775, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A258776 (n : ℕ) : ℤ :=
  A258776.P5594703475324302981.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258774, A258775, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A259186.P17881752095375684835`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259184, A259185, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A259186 (n : ℕ) : ℤ :=
  A259186.P17881752095375684835.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259184, A259185, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A261464.P8206708161756603330

`A030078(n+3)-A261465(n+1)`
-/

namespace A261464.P8206708161756603330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 3) - A261465 (n + 1)

end

end A261464.P8206708161756603330

noncomputable section

/-- A261464: a(n) = prime(n+2)^3 - prime(n+1)^2 + prime(n).

Offset 1, canonical program `A261464.P8206708161756603330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A261464 (n : ℕ) : ℤ :=
  A261464.P8206708161756603330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A261464.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A262685.P16456492644422870268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262685 (n : ℕ) : ℤ :=
  A262685.P16456492644422870268.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262685.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A268038.P13887345002917618489

`-A174344(A020703(n+1))`
-/

namespace A268038.P13887345002917618489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A174344 (A020703 (n + 1)).toNat

end

end A268038.P13887345002917618489

noncomputable section

/-- A268038: List of y-coordinates of point moving in clockwise square spiral.

Offset 1, canonical program `A268038.P13887345002917618489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268038 (n : ℕ) : ℤ :=
  A268038.P13887345002917618489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268038.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A276967.P14871204394231339155

`A015922(record[(n+1)/gcd(2, A015922(n+1))])`
-/

namespace A276967.P14871204394231339155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 2 (A015922 (n + 1)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A276967.P14871204394231339155

noncomputable section

/-- A276967: Odd integers n such that 2^n == 2^3 (mod n).

Offset 1, canonical program `A276967.P14871204394231339155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276967 (n : ℕ) : ℤ :=
  A276967.P14871204394231339155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276984.P773743727024063891

`A000330(n+1)-A001157(n+1)`
-/

namespace A276984.P773743727024063891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) - A001157 (n + 1)

end

end A276984.P773743727024063891

noncomputable section

/-- A276984: Sum of squares of numbers less than n that do not divide n.

Offset 1, canonical program `A276984.P773743727024063891`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276984 (n : ℕ) : ℤ :=
  A276984.P773743727024063891.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276984.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A283237.P17759055040848509895

`A001157(3*(n+1))`
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

Offset 1, canonical program `A303384.P10676162683554511722`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A064987, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A303384 (n : ℕ) : ℤ :=
  A303384.P10676162683554511722.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A064987, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A303384.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A311687.P12525606551040496369

`A004396(n)+A313057(n)-A047588(n+1)`
-/

namespace A311687.P12525606551040496369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313057 n - A047588 (n + 1))

end

end A311687.P12525606551040496369

noncomputable section

/-- A311687: Coordination sequence Gal.6.125.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311687.P12525606551040496369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2463 terms. -/
def A311687 (n : ℕ) : ℤ :=
  A311687.P12525606551040496369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2463 terms. -/
def A311687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312436.P6318237834392598981

`2*A313683(n)-A315634(n)`
-/

namespace A312436.P6318237834392598981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313683 n - A315634 n

end

end A312436.P6318237834392598981

noncomputable section

/-- A312436: Coordination sequence Gal.4.50.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312436.P6318237834392598981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A312436 (n : ℕ) : ℤ :=
  A312436.P6318237834392598981.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A312436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312902.P9477729746775064079

`(A310378(n)+A008574(n))/2`
-/

namespace A312902.P9477729746775064079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310378 n + A008574 n : ℚ) / 2

end

end A312902.P9477729746775064079

noncomputable section

/-- A312902: Coordination sequence Gal.6.129.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312902.P9477729746775064079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A312902 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A312902.P9477729746775064079.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A312902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312926.P704849189180626292

`A313540(n)-A004525(A004396(n))`
-/

namespace A312926.P704849189180626292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n - A004525 (A004396 n).toNat

end

end A312926.P704849189180626292

noncomputable section

/-- A312926: Coordination sequence Gal.6.118.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312926.P704849189180626292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. -/
def A312926 (n : ℕ) : ℤ :=
  A312926.P704849189180626292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. -/
def A312926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313136.P11916403924351243439

`A313540(n)-A128834(n)`
-/

namespace A313136.P11916403924351243439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n - A128834 n

end

end A313136.P11916403924351243439

noncomputable section

/-- A313136: Coordination sequence Gal.6.256.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313136.P11916403924351243439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A313136 (n : ℕ) : ℤ :=
  A313136.P11916403924351243439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A313136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313477.P9239923112402886863

`A313683(n)-Δ[A011862(n)]`
-/

namespace A313477.P9239923112402886863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n - (f1 (n + 1) - f1 n)

end

end A313477.P9239923112402886863

noncomputable section

/-- A313477: Coordination sequence Gal.5.54.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313477.P9239923112402886863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A313477 (n : ℕ) : ℤ :=
  A313477.P9239923112402886863.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A313477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313537.P8184197836610671294

`A330025(n-A330025(n))+A314725(n)`
-/

namespace A313537.P8184197836610671294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A314725 n

end

end A313537.P8184197836610671294

noncomputable section

/-- A313537: Coordination sequence Gal.5.66.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313537.P8184197836610671294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A313537 (n : ℕ) : ℤ :=
  A313537.P8184197836610671294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A313537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313615.P7259322333454390986

`(A315208(n)+A310413(n))/2`
-/

namespace A313615.P7259322333454390986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315208 n + A310413 n : ℚ) / 2

end

end A313615.P7259322333454390986

noncomputable section

/-- A313615: Coordination sequence Gal.6.323.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313615.P7259322333454390986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313615 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A313615.P7259322333454390986.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313846.P7134346169744339600

`A315033(n)+∑[A022003(n)]`
-/

namespace A313846.P7134346169744339600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315033 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313846.P7134346169744339600

noncomputable section

/-- A313846: Coordination sequence Gal.5.308.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313846.P7134346169744339600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A313846 (n : ℕ) : ℤ :=
  A313846.P7134346169744339600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A313846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313859.P12307385577830529968

`A314884(n)+∑[A021913(n)]`
-/

namespace A313859.P12307385577830529968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314884 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313859.P12307385577830529968

noncomputable section

/-- A313859: Coordination sequence Gal.6.340.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313859.P12307385577830529968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313859 (n : ℕ) : ℤ :=
  A313859.P12307385577830529968.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314039.P14436885910708461975

`abs(A008592(n)-A315033(n))`
-/

namespace A314039.P14436885910708461975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315033 n|

end

end A314039.P14436885910708461975

noncomputable section

/-- A314039: Coordination sequence Gal.5.299.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314039.P14436885910708461975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A314039 (n : ℕ) : ℤ :=
  A314039.P14436885910708461975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A314039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314069.P10164089610408818193

`A314061(n)+A314111(n)-A314100(n)`
-/

namespace A314069.P10164089610408818193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314061 n + (A314111 n - A314100 n)

end

end A314069.P10164089610408818193

noncomputable section

/-- A314069: Coordination sequence Gal.6.652.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314069.P10164089610408818193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2274 terms. -/
def A314069 (n : ℕ) : ℤ :=
  A314069.P10164089610408818193.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2274 terms. -/
def A314069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314684.P10439373234237939789

`abs(A008592(n)-A314239(n))`
-/

namespace A314684.P10439373234237939789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314239 n|

end

end A314684.P10439373234237939789

noncomputable section

/-- A314684: Coordination sequence Gal.6.149.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314684.P10439373234237939789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A314684 (n : ℕ) : ℤ :=
  A314684.P10439373234237939789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A314684.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A210848.P7386477562932695241

`(A048898(n)²+1)/5^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A210848.P7386477562932695241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048898 n ^ 2 + 1 : ℚ) / (5 ^ n : ℚ)

end

end A210848.P7386477562932695241

noncomputable section

/-- A210848: a(n) = (A048898(n)^2 + 1)/5^n, n >= 0.

Offset 0, canonical program `A210848.P7386477562932695241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048898, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210848 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A210848.P7386477562932695241.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048898, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210848.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A269590.P2969606302811492531

`(2*A048898(n))%A000351(n)`
-/

namespace A269590.P2969606302811492531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A048898 n) (A000351 n)

end

end A269590.P2969606302811492531

noncomputable section

/-- A269590: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(-4). These are the 4 mod 5 numbers (except for n=0).

Offset 0, canonical program `A269590.P2969606302811492531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A269590 (n : ℕ) : ℤ :=
  A269590.P2969606302811492531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A269590.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A312944.P10352977025746883391

`A004396(A314253(n)+n)`
-/

namespace A312944.P10352977025746883391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314253 n + (n : ℤ)).toNat

end

end A312944.P10352977025746883391

noncomputable section

/-- A312944: Coordination sequence Gal.6.245.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312944.P10352977025746883391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1467 terms. -/
def A312944 (n : ℕ) : ℤ :=
  A312944.P10352977025746883391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1467 terms. -/
def A312944.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A201146.P15453871938677034455

`A034386(A002024(n+1))/A034386(A002260(n+1))`
-/

namespace A201146.P15453871938677034455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (A002024 (n + 1)).toNat : ℚ) / (A034386 (A002260 (n + 1)).toNat : ℚ)

end

end A201146.P15453871938677034455

noncomputable section

/-- A201146: Triangle read by rows: T(n,k) = (n#)/(k#), 1 <= k <= n.

Offset 1, canonical program `A201146.P15453871938677034455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201146 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A201146.P15453871938677034455.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201146.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A221281.P3838035016409436131

`A221280(eq[1, A221280(n+2)-A221280(n+1)]+1)`
-/

namespace A221281.P3838035016409436131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221280 (n + 2) - A221280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A221281.P3838035016409436131

noncomputable section

/-- A221281: Numbers n such that lambda(n) = lambda(n+1) = lambda(n+2), where lambda(n) = A008836(n) is the Liouville function.

Offset 1, canonical program `A221281.P3838035016409436131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5059 terms. -/
def A221281 (n : ℕ) : ℤ :=
  A221281.P3838035016409436131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5059 terms. -/
def A221281.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A239968.P9247355313622841393`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005171, A062298, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239968 (n : ℕ) : ℤ :=
  A239968.P9247355313622841393.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005171, A062298, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239968.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A249727.P7086811440689773967

`A000720(p?[A002260(n+1)-5%(n+1)])`
-/

namespace A249727.P7086811440689773967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - ((5 % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A249727.P7086811440689773967

noncomputable section

/-- A249727: Start with a(1) = 1; then numbers 1 .. primepi(2), followed by numbers 1 .. primepi(3), and then numbers 1 .. primepi(4), ..., etc, where A000720 gives primepi.

Offset 1, canonical program `A249727.P7086811440689773967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2838 terms. -/
def A249727 (n : ℕ) : ℤ :=
  A249727.P7086811440689773967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2838 terms. -/
def A249727.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A275120.P14177389286466694945

`A057820(n+1)+C(2, n+2)`
-/

namespace A275120.P14177389286466694945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A275120.P14177389286466694945

noncomputable section

/-- A275120: List the least common multiples of {1, 2, ..., k} for k = 0, 1, ...; this sequence gives the length of the n-th block of consecutive equal numbers.

Offset 1, canonical program `A275120.P14177389286466694945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275120 (n : ℕ) : ℤ :=
  A275120.P14177389286466694945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275120.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A289279.P13969609369031638139

`Δ[n²]-A285786(n+1)`
-/

namespace A289279.P13969609369031638139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A285786 (n + 1)

end

end A289279.P13969609369031638139

noncomputable section

/-- A289279: Number of odd composite numbers in ]2*(n-1)^2, 2*n^2[.

Offset 1, canonical program `A289279.P13969609369031638139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289279 (n : ℕ) : ℤ :=
  A289279.P13969609369031638139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289279.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A305215.P4341798104762692550

`A000005(A051451(n+1)/A000961(n+1))`
-/

namespace A305215.P4341798104762692550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A051451 (n + 1) : ℚ) / (A000961 (n + 1) : ℚ))).toNat

end

end A305215.P4341798104762692550

noncomputable section

/-- A305215: a(n) is the number of numbers whose largest prime power factor equals A000961(n).

Offset 1, canonical program `A305215.P4341798104762692550`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000961, A051451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305215 (n : ℕ) : ℤ :=
  A305215.P4341798104762692550.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000961, A051451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305215.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A185189.P18053497688823494421

`A246655(2*(n+1)-floor(n²/(n+2)))`
-/

namespace A185189.P18053497688823494421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 ((2 * (n + 1) : ℤ) - ⌊(n ^ 2 : ℚ) / (n + 2 : ℚ)⌋).toNat

end

end A185189.P18053497688823494421

noncomputable section

/-- A185189: Powers of 2 >= 16 and powers of odd primes.

Offset 1, canonical program `A185189.P18053497688823494421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A185189 (n : ℕ) : ℤ :=
  A185189.P18053497688823494421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A185189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188467.P11511031436246779994

`char[A022414(n)-2]`
-/

namespace A188467.P11511031436246779994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022414 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188467.P11511031436246779994

noncomputable section

/-- A188467: [4r]-[nr]-[4r-nr], where r=(1+sqrt(5))/2 and [.]=floor.

Offset 1, canonical program `A188467.P11511031436246779994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188467 (n : ℕ) : ℤ :=
  (A188467.P11511031436246779994.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188467.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A198286.P8684758332373376771

`∑{d}[n+1, A061020(#)*A181797((n+1)/#)]`
-/

namespace A198286.P8684758332373376771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061020 d * A181797 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A198286.P8684758332373376771

noncomputable section

/-- A198286: a(n) = Sum_{d|n} (A053143(d) or smallest square divisible by d).

Offset 1, canonical program `A198286.P8684758332373376771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A198286 (n : ℕ) : ℤ :=
  A198286.P8684758332373376771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A198286.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A238898.P6484849418121387212

`(2-A000007(n))*A031218(A028310(n))`
-/

namespace A238898.P6484849418121387212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A031218 (A028310 n).toNat

end

end A238898.P6484849418121387212

noncomputable section

/-- A238898: Least number m such that lcm(1,2,3,...,m) = lcm(n,n+1,n+2,...,m).

Offset 1, canonical program `A238898.P6484849418121387212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238898 (n : ℕ) : ℤ :=
  A238898.P6484849418121387212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238898.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A247462.P12776908162959564945

`A000005(A323172(n+2)^A019425(n))`
-/

namespace A247462.P12776908162959564945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A019425 n : ℤ))).toNat

end

end A247462.P12776908162959564945

noncomputable section

/-- A247462: Number of iterations needed in A058977 to reach a result.

Offset 1, canonical program `A247462.P12776908162959564945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A247462 (n : ℕ) : ℤ :=
  A247462.P12776908162959564945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A247462.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A255500.P15062980389255917047

`A229740(A024620(n+1))`
-/

namespace A255500.P15062980389255917047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229740 (A024620 (n + 1)).toNat

end

end A255500.P15062980389255917047

noncomputable section

/-- A255500: a(n) = (p^9 + 5*p^8 + 4*p^7 - p^6 - 5*p^5 + 2*p^4)/6 where p is the n-th prime.

Offset 1, canonical program `A255500.P15062980389255917047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9890 terms. -/
def A255500 (n : ℕ) : ℤ :=
  A255500.P15062980389255917047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9890 terms. -/
def A255500.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A268714.P4144777170643476713

`A006068(A002262(n))+A006068(A025581(n))`
-/

namespace A268714.P4144777170643476713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A002262 n).toNat + A006068 (A025581 n).toNat

end

end A268714.P4144777170643476713

noncomputable section

/-- A268714: Square array A(i,j) = A006068(i) + A006068(j), read by antidiagonals.

Offset 0, canonical program `A268714.P4144777170643476713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268714 (n : ℕ) : ℤ :=
  A268714.P4144777170643476713.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268714.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A268724.P7737860794128686807

`A006068(A002260(n+1))*A006068(A004736(n+1))`
-/

namespace A268724.P7737860794128686807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A002260 (n + 1)).toNat * A006068 (A004736 (n + 1)).toNat

end

end A268724.P7737860794128686807

noncomputable section

/-- A268724: Square array A(i,j) = A006068(i) * A006068(j), read by antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

Offset 1, canonical program `A268724.P7737860794128686807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268724 (n : ℕ) : ℤ :=
  A268724.P7737860794128686807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268724.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A276781.P2604158077506703315

`2-A031218(n+1)+n`
-/

namespace A276781.P2604158077506703315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A031218 (n + 1) + (n : ℤ)

end

end A276781.P2604158077506703315

noncomputable section

/-- A276781: a(n) = 1+n-(nearest power of prime <= n); for n > 1, a(n) = minimal b such that the numbers binomial(n,k) for b <= k <= n-b have a common divisor greater than 1.

Offset 1, canonical program `A276781.P2604158077506703315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276781 (n : ℕ) : ℤ :=
  A276781.P2604158077506703315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276781.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A291167.P12219534965446572701

`record[A000027(n+1)*A214295(A001615(n+1))]`
-/

namespace A291167.P12219534965446572701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A214295 (A001615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291167.P12219534965446572701

noncomputable section

/-- A291167: Numbers k such that psi(k) is a perfect square where psi(k) = A001615(k).

Offset 1, canonical program `A291167.P12219534965446572701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A291167 (n : ℕ) : ℤ :=
  A291167.P12219534965446572701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A291167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292313.P3646741374803825771

`3*A134422(n+1)`
-/

namespace A292313.P3646741374803825771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A134422 (n + 1)

end

end A292313.P3646741374803825771

noncomputable section

/-- A292313: Numbers that are the sum of three squares in arithmetic progression.

Offset 1, canonical program `A292313.P3646741374803825771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292313 (n : ℕ) : ℤ :=
  A292313.P3646741374803825771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292313.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A305150.P11651088542396370948

`A348182(∑{p}[n+1, gcd(n, #)]^A262202(n+1))`
-/

namespace A305150.P11651088542396370948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348182 (SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℚ) ^ (A262202 (n + 1) : ℤ))).toNat

end

end A305150.P11651088542396370948

noncomputable section

/-- A305150: Number of factorizations of n into distinct, pairwise indivisible factors greater than 1.

Offset 1, canonical program `A305150.P11651088542396370948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A305150 (n : ℕ) : ℤ :=
  A305150.P11651088542396370948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A305150.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A307037.P8535599594476544073

`∑{d}[n+1, A074722(#)*A295295((n+1)/#)]`
-/

namespace A307037.P8535599594476544073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A295295 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307037.P8535599594476544073

noncomputable section

/-- A307037: The unitary analog of the alternating sum-of-divisors function (A206369).

Offset 1, canonical program `A307037.P8535599594476544073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307037 (n : ℕ) : ℤ :=
  A307037.P8535599594476544073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307037.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A248663.P4155660683917625723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A248663 (n : ℕ) : ℤ :=
  A248663.P4155660683917625723.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A248663.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A259913.P750605552926668623

`A037449(A049457(n+1))`
-/

namespace A259913.P750605552926668623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A049457 (n + 1)).toNat

end

end A259913.P750605552926668623

noncomputable section

/-- A259913: Discriminant of the number field containing the number with periodic continued fraction [1,n,1,n,1,n,...].

Offset 1, canonical program `A259913.P750605552926668623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A259913 (n : ℕ) : ℤ :=
  A259913.P750605552926668623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A259913.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A275082.P12631991313375267517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1384 terms. -/
def A275082 (n : ℕ) : ℤ :=
  A275082.P12631991313375267517.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1384 terms. -/
def A275082.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A306300.P13125878749927857730

`A007913(A003658(n+1))`
-/

namespace A306300.P13125878749927857730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A003658 (n + 1)).toNat

end

end A306300.P13125878749927857730

noncomputable section

/-- A306300: Discriminant D of real quadratic number field Q(sqrt(D)) associated with fundamental discriminant d = A003658(n).

Offset 1, canonical program `A306300.P13125878749927857730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003658, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306300 (n : ℕ) : ℤ :=
  A306300.P13125878749927857730.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003658, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306454.P17030169656322426236

`A261327(n+1)/A013946(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306454.P17030169656322426236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261327 (n + 1) : ℚ) / (A013946 (n + 1) : ℚ)

end

end A306454.P17030169656322426236

noncomputable section

/-- A306454: a(n) = A261327(n)/A013946(n).

Offset 1, canonical program `A306454.P17030169656322426236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306454 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306454.P17030169656322426236.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307150.P1332541620232911485

`A007913(6*(n+1))*A008833(n+1)`
-/

namespace A307150.P1332541620232911485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (6 * (n + 1)) * A008833 (n + 1)

end

end A307150.P1332541620232911485

noncomputable section

/-- A307150: Row 6 of array in A059897.

Offset 1, canonical program `A307150.P1332541620232911485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307150 (n : ℕ) : ℤ :=
  A307150.P1332541620232911485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308464.P993622485846860148

`record[A013946(n+1)]`
-/

namespace A308464.P993622485846860148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308464.P993622485846860148

noncomputable section

/-- A308464: Squarefree numbers of the form m^2 + 4.

Offset 1, canonical program `A308464.P993622485846860148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4472 terms. -/
def A308464 (n : ℕ) : ℤ :=
  A308464.P993622485846860148.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4472 terms. -/
def A308464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309081.P14085195362335014076

`∑[A344299(n+1)]`
-/

namespace A309081.P14085195362335014076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309081.P14085195362335014076

noncomputable section

/-- A309081: a(n) = n - floor(n/2^2) + floor(n/3^2) - floor(n/4^2) + ...

Offset 1, canonical program `A309081.P14085195362335014076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309081 (n : ℕ) : ℤ :=
  A309081.P14085195362335014076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309083.P4186422859926366372

`∑[A344299(sqrt(A008833(n+1)))]`
-/

namespace A309083.P4186422859926366372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344299 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309083.P4186422859926366372

noncomputable section

/-- A309083: a(n) = n - floor(n/2^4) + floor(n/3^4) - floor(n/4^4) + ...

Offset 1, canonical program `A309083.P4186422859926366372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309083 (n : ℕ) : ℤ :=
  A309083.P4186422859926366372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309083.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A194196.P7947729533032304729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A194196 (n : ℕ) : ℤ :=
  (A194196.P7947729533032304729.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A194196.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A300251.P13750012435361977920

`∑{d}[n+1, A007427(#)*A319684((n+1)/#)]`
-/

namespace A300251.P13750012435361977920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300251.P13750012435361977920

noncomputable section

/-- A300251: Möbius transform of arithmetic derivative (A003415).

Offset 1, canonical program `A300251.P13750012435361977920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300251 (n : ℕ) : ℤ :=
  A300251.P13750012435361977920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300251.provenance : SequenceMachineLib.Provenance := .conjectured

