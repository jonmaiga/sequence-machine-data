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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B001.C010
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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A179020.P13298888622046712416

`1-A095190(n)`
-/

namespace A179020.P13298888622046712416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A095190 n

end

end A179020.P13298888622046712416

noncomputable section

/-- A179020: Doubled Thue-Morse sequence: the A010059 sequence replacing 0 with 0,0 and 1 with 1,1.

Offset 0, canonical program `A179020.P13298888622046712416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179020 (n : ℕ) : ℤ :=
  A179020.P13298888622046712416.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179020.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A176642.P6068530808872968804

`8^A004247(n)`
-/

namespace A176642.P6068530808872968804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A004247 n : ℤ)

end

end A176642.P6068530808872968804

noncomputable section

/-- A176642: Triangle T(n, k) = 8^(k*(n-k)), read by rows.

Offset 0, canonical program `A176642.P6068530808872968804`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176642 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A176642.P6068530808872968804.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176642.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A167374.P10274264666879591430

`floor((A002260(n+1)+2)/(A003056(n)+2))*(-1)^(A002260(n+1)+A003056(n)+1)`
-/

namespace A167374.P10274264666879591430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A002260 (n + 1) + 2 : ℚ) / (A003056 n + 2 : ℚ)⌋ : ℚ) * (-1 : ℚ) ^ (A002260 (n + 1) + A003056 n + 1 : ℤ)

end

end A167374.P10274264666879591430

noncomputable section

/-- A167374: Triangle, read by rows, given by [ -1,1,0,0,0,0,0,0,0,...] DELTA [1,0,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A167374.P10274264666879591430`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167374 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A167374.P10274264666879591430.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173395.P11168662136326346855

`(A002260(n+1)+1)*(A004736(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173395.P11168662136326346855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) + 1) * (A004736 (n + 1) + 1)

end

end A173395.P11168662136326346855

noncomputable section

/-- A173395: a(n) = (A002260(n) + 1) * (A004736(n) + 1).

Offset 1, canonical program `A173395.P11168662136326346855`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173395 (n : ℕ) : ℤ :=
  A173395.P11168662136326346855.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173395.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A164931.P823030122328150337

`(n+1)*(A162177(n+1)+n+1)`
-/

namespace A164931.P823030122328150337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A162177 (n + 1) + (n + 1 : ℤ))

end

end A164931.P823030122328150337

noncomputable section

/-- A164931: n times the n-th noncomposite.

Offset 1, canonical program `A164931.P823030122328150337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164931 (n : ℕ) : ℤ :=
  A164931.P823030122328150337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165453.P13560885071597525990

`A022554(n)+A080344(n)`
-/

namespace A165453.P13560885071597525990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n + A080344 n

end

end A165453.P13560885071597525990

noncomputable section

/-- A165453: Linear interpolation of the sequence that maps an entry of A002378 to the corresponding entry of A006331.

Offset 0, canonical program `A165453.P13560885071597525990`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022554, A080344, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A165453 (n : ℕ) : ℤ :=
  A165453.P13560885071597525990.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022554, A080344, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A165453.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165684.P15035907269724094192

`A029143(n+1)-A103221(n+1)`
-/

namespace A165684.P15035907269724094192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029143 (n + 1) - A103221 (n + 1)

end

end A165684.P15035907269724094192

noncomputable section

/-- A165684: Dimension of the space of Siegel cusp forms of genus 2 and dimension 2n (associated with full modular group Gamma_2).

Offset 1, canonical program `A165684.P15035907269724094192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165684 (n : ℕ) : ℤ :=
  A165684.P15035907269724094192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166280.P7664272695179766507

`A054142(n)%2`
-/

namespace A166280.P7664272695179766507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054142 n) 2

end

end A166280.P7664272695179766507

noncomputable section

/-- A166280: Stirling2 triangle mod 2, T(n,k) = A008277(n,k) mod 2.

Offset 0, canonical program `A166280.P7664272695179766507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166280 (n : ℕ) : ℤ :=
  A166280.P7664272695179766507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166350.P17376879308644749140

`A002260(n+1)!`
-/

namespace A166350.P17376879308644749140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002260 (n + 1)).toNat

end

end A166350.P17376879308644749140

noncomputable section

/-- A166350: Triangle read by rows: T(n,m) = m!, n >= 1.

Offset 1, canonical program `A166350.P17376879308644749140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A166350 (n : ℕ) : ℤ :=
  (A166350.P17376879308644749140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A166350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166453.P9942445130292987402

`A001316(A025581(n))*A047999(n)`
-/

namespace A166453.P9942445130292987402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A025581 n).toNat * A047999 n

end

end A166453.P9942445130292987402

noncomputable section

/-- A166453: Triangle read by rows, square of Sierpinski's gasket, (A047999)^2.

Offset 0, canonical program `A166453.P9942445130292987402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166453 (n : ℕ) : ℤ :=
  A166453.P9942445130292987402.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167371.P11386683783594765593

`round(1/A130303(n+1))`
-/

namespace A167371.P11386683783594765593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A130303 (n + 1) : ℚ))

end

end A167371.P11386683783594765593

noncomputable section

/-- A167371: Triangle, read by rows, given by [0,1,-1,0,0,0,0,0,0,0,0,...] DELTA [1,0,-1,1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A167371.P11386683783594765593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167371 (n : ℕ) : ℤ :=
  A167371.P11386683783594765593.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167422.P17624924762505515996

`A104722(A004275(n))`
-/

namespace A167422.P17624924762505515996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A004275 n).toNat

end

end A167422.P17624924762505515996

noncomputable section

/-- A167422: Expansion of (1+x)*c(x), c(x) the g.f. of A000108.

Offset 0, canonical program `A167422.P17624924762505515996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A167422 (n : ℕ) : ℤ :=
  A167422.P17624924762505515996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A167422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168157.P3803105065153823946

`(n+1)*A035100(n+1)-A095375(n+1)`
-/

namespace A168157.P3803105065153823946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035100 (n + 1) - A095375 (n + 1)

end

end A168157.P3803105065153823946

noncomputable section

/-- A168157: Number of 0's in the matrix whose lines are the binary expansion of the first n primes.

Offset 1, canonical program `A168157.P3803105065153823946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168157 (n : ℕ) : ℤ :=
  A168157.P3803105065153823946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168508.P14657316585371629995

`ceil(ratio[A074909(n)]/2)`
-/

namespace A168508.P14657316585371629995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ) / 2⌉

end

end A168508.P14657316585371629995

noncomputable section

/-- A168508: Triangle read by rows: A101688 * A051731.

Offset 1, canonical program `A168508.P14657316585371629995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168508 (n : ℕ) : ℤ :=
  A168508.P14657316585371629995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169581.P5880074655837136645

`lt[gcd(A002260(n+1), A025581(n)), 2]+1`
-/

namespace A169581.P5880074655837136645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A025581 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A169581.P5880074655837136645

noncomputable section

/-- A169581: Positions in A002260(n) and A002024(n) when canonically enumerating A038566(n)/A038567(n), the positive rational numbers <= 1.

Offset 1, canonical program `A169581.P5880074655837136645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6085 terms. -/
def A169581 (n : ℕ) : ℤ :=
  (A169581.P5880074655837136645.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6085 terms. -/
def A169581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169582.P6669041080313841310

`lt[1, gcd(A002260(n+1), A025581(n))]+1`
-/

namespace A169582.P6669041080313841310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A025581 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A169582.P6669041080313841310

noncomputable section

/-- A169582: Complement of A169581.

Offset 1, canonical program `A169582.P6669041080313841310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A169582 (n : ℕ) : ℤ :=
  (A169582.P6669041080313841310.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A169582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169704.P14470906211956367627

`Δ[A169703(n)]`
-/

namespace A169704.P14470906211956367627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169704.P14470906211956367627

noncomputable section

/-- A169704: First differences of A169703.

Offset 0, canonical program `A169704.P14470906211956367627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3982 terms. -/
def A169704 (n : ℕ) : ℤ :=
  A169704.P14470906211956367627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3982 terms. -/
def A169704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170949.P7834340339358711823

`A048760(n)+A004741(n+1)`
-/

namespace A170949.P7834340339358711823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 n + A004741 (n + 1)

end

end A170949.P7834340339358711823

noncomputable section

/-- A170949: "Conway's Converger": a reordering of the integers (see Comments for definition).

Offset 1, canonical program `A170949.P7834340339358711823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170949 (n : ℕ) : ℤ :=
  A170949.P7834340339358711823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171614.P10728647847726673456

`eq[0, A224977(n)%2]`
-/

namespace A171614.P10728647847726673456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224977 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171614.P10728647847726673456

noncomputable section

/-- A171614: Numbers n with property that (n^2 + sum of the digits of n^2) is even.

Offset 1, canonical program `A171614.P10728647847726673456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5019 terms. -/
def A171614 (n : ℕ) : ℤ :=
  (A171614.P10728647847726673456.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5019 terms. -/
def A171614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171631.P14018756786574744483

`A055461(n+1)*A074909(n)`
-/

namespace A171631.P14018756786574744483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) * A074909 n

end

end A171631.P14018756786574744483

noncomputable section

/-- A171631: Triangle read by rows: T(n,k) = n*(binomial(n-2, k-1) + n*binomial(n-2, k)), n > 0 and 0 <= k <= n - 1.

Offset 1, canonical program `A171631.P14018756786574744483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171631 (n : ℕ) : ℤ :=
  A171631.P14018756786574744483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171639.P4220126091121494472

`A090178(n+1)+A073425(n)`
-/

namespace A171639.P4220126091121494472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) + A073425 n

end

end A171639.P4220126091121494472

noncomputable section

/-- A171639: Sum of n-th nonprime number and n-th noncomposite number.

Offset 1, canonical program `A171639.P4220126091121494472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171639 (n : ℕ) : ℤ :=
  A171639.P4220126091121494472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171747.P2976649016609342073

`A004139(A138969(n+1))`
-/

namespace A171747.P2976649016609342073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A138969 (n + 1)).toNat

end

end A171747.P2976649016609342073

noncomputable section

/-- A171747: Smallest prime > n-th prime of the form 3*k-1.

Offset 1, canonical program `A171747.P2976649016609342073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A171747 (n : ℕ) : ℤ :=
  A171747.P2976649016609342073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A171747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172064.P15345812233759413588

`Δ[A172063(n)]-A172061(n+1)`
-/

namespace A172064.P15345812233759413588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A172061 (n + 1)

end

end A172064.P15345812233759413588

noncomputable section

/-- A172064: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=7.

Offset 0, canonical program `A172064.P15345812233759413588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A172064 (n : ℕ) : ℤ :=
  A172064.P15345812233759413588.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A172064.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A173059.P8847239120286303274

`A153143(A028310(n))+A057427(n)`
-/

namespace A173059.P8847239120286303274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (A028310 n).toNat + A057427 n

end

end A173059.P8847239120286303274

noncomputable section

/-- A173059: Nonnegative numbers k such that 2*k + 17 is prime.

Offset 1, canonical program `A173059.P8847239120286303274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173059 (n : ℕ) : ℤ :=
  A173059.P8847239120286303274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173333.P257535221670975488

`A008279(A099375(n)+n)`
-/

namespace A173333.P257535221670975488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A099375 n + (n : ℤ)).toNat

end

end A173333.P257535221670975488

noncomputable section

/-- A173333: Triangle read by rows: T(n, k) = n! / k!, 1 <= k <= n.

Offset 1, canonical program `A173333.P257535221670975488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A173333 (n : ℕ) : ℤ :=
  A173333.P257535221670975488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A173333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173531.P13371912172200892370

`and(n, -n)*A212988(A038573(n))`
-/

namespace A173531.P13371912172200892370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) * A212988 (A038573 n).toNat

end

end A173531.P13371912172200892370

noncomputable section

/-- A173531: a(0)=0: For n>0, a(n) = A060632(n)*A060632(n-1).

Offset 0, canonical program `A173531.P13371912172200892370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173531 (n : ℕ) : ℤ :=
  A173531.P13371912172200892370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173755.P14170754971601433776

`A046161(A002262(n))*A097807(n)`
-/

namespace A173755.P14170754971601433776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (A002262 n).toNat * A097807 n

end

end A173755.P14170754971601433776

noncomputable section

/-- A173755: Table read by rows, T(n,k) = (-1)^(n-k)*2^(2*k-bw(k)), where bw(k) is the binary weight of k (A000120).

Offset 0, canonical program `A173755.P14170754971601433776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173755 (n : ℕ) : ℤ :=
  A173755.P14170754971601433776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173827.P8914770220511249519

`p?[A102781(n+1)+A004737(A111333(n+1))]`
-/

namespace A173827.P8914770220511249519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + A004737 (A111333 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173827.P8914770220511249519

noncomputable section

/-- A173827: Primes p such that p+(floor(Sqrt(p)))^2 is prime.

Offset 1, canonical program `A173827.P8914770220511249519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A173827 (n : ℕ) : ℤ :=
  A173827.P8914770220511249519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A173827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174028.P16821711735342796914

`2*A158405(n+1)`
-/

namespace A174028.P16821711735342796914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158405 (n + 1)

end

end A174028.P16821711735342796914

noncomputable section

/-- A174028: Triangle T(n,k) = 2+4k read by rows.

Offset 0, canonical program `A174028.P16821711735342796914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158405, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174028 (n : ℕ) : ℤ :=
  A174028.P16821711735342796914.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158405, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174199.P7796198072732732350

`A076984(2*(n+1))-A088722(2*(n+1))`
-/

namespace A174199.P7796198072732732350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (2 * (n + 1)) - A088722 (2 * (n + 1))

end

end A174199.P7796198072732732350

noncomputable section

/-- A174199: Bisection of A137921.

Offset 1, canonical program `A174199.P7796198072732732350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A174199 (n : ℕ) : ℤ :=
  A174199.P7796198072732732350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A174199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174430.P12043369159745599799

`A000045(A109004(n))`
-/

namespace A174430.P12043369159745599799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A109004 n).toNat

end

end A174430.P12043369159745599799

noncomputable section

/-- A174430: Triangle read by rows: T(n,m) = gcd(Fibonacci(n), Fibonacci(m)).

Offset 0, canonical program `A174430.P12043369159745599799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174430 (n : ℕ) : ℤ :=
  A174430.P12043369159745599799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174478.P5491345619256222170

`∑{d}[n+1, A034738(#)*A074400((n+1)/#)]`
-/

namespace A174478.P5491345619256222170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034738 d * A074400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174478.P5491345619256222170

noncomputable section

/-- A174478: a(n) = Sum_{d|n} d*2^(n/d)*tau(d).

Offset 1, canonical program `A174478.P5491345619256222170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A174478 (n : ℕ) : ℤ :=
  A174478.P5491345619256222170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A174478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176046.P15211126728486411991

`A094570(n)+1-A108037(n)`
-/

namespace A176046.P15211126728486411991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 n + (1 - A108037 n)

end

end A176046.P15211126728486411991

noncomputable section

/-- A176046: Triangle T(n,m) = 1 + F(m) + F(n-m) - F(n), read by rows, where F = A000045 is the Fibonacci sequence.

Offset 0, canonical program `A176046.P15211126728486411991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176046 (n : ℕ) : ℤ :=
  A176046.P15211126728486411991.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176123.P3152238103359249883

`A052553(lt[n, A052553(n+1)²])`
-/

namespace A176123.P3152238103359249883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A176123.P3152238103359249883

noncomputable section

/-- A176123: Irregular triangle, read by rows, T(n, k) = binomial(n-(k-1),k-1), 1 <= k <= floor(n/2-1).

Offset 4, canonical program `A176123.P3152238103359249883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A176123 (n : ℕ) : ℤ :=
  A176123.P3152238103359249883.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A176123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176284.P4705285900737383214

`A004247(n)*A008486(A003056(n))+1`
-/

namespace A176284.P4705285900737383214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n * A008486 (A003056 n).toNat + 1

end

end A176284.P4705285900737383214

noncomputable section

/-- A176284: Triangle T(n,k) = 1 + 3*n*k*(n-k) read by rows.

Offset 0, canonical program `A176284.P4705285900737383214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176284 (n : ℕ) : ℤ :=
  A176284.P4705285900737383214.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176625.P3813908032077722047

`1-3*A004247(n)`
-/

namespace A176625.P3813908032077722047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 3 * A004247 n

end

end A176625.P3813908032077722047

noncomputable section

/-- A176625: T(n,k) = 1 + 3*k*(k - n), triangle read by rows (n >= 0, 0 <= k <= n).

Offset 0, canonical program `A176625.P3813908032077722047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176625 (n : ℕ) : ℤ :=
  A176625.P3813908032077722047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176641.P3132728290557681569

`28^A004247(n)`
-/

namespace A176641.P3132728290557681569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (28 : ℚ) ^ (A004247 n : ℤ)

end

end A176641.P3132728290557681569

noncomputable section

/-- A176641: Triangle T(n, k) = 28^(k*(n-k)), read by rows.

Offset 0, canonical program `A176641.P3132728290557681569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A176641 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A176641.P3132728290557681569.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A176641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176643.P4462491862002902358

`A018105(4*A004247(n))`
-/

namespace A176643.P4462491862002902358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018105 (4 * A004247 n).toNat

end

end A176643.P4462491862002902358

noncomputable section

/-- A176643: Triangle T(n, k) = 21^(k*(n-k)), read by rows.

Offset 0, canonical program `A176643.P4462491862002902358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A176643 (n : ℕ) : ℤ :=
  A176643.P4462491862002902358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A176643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176718.P17709274811728577594

`∑[A004207(n)]`
-/

namespace A176718.P17709274811728577594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176718.P17709274811728577594

noncomputable section

/-- A176718: Partial sums of A004207.

Offset 0, canonical program `A176718.P17709274811728577594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176718 (n : ℕ) : ℤ :=
  A176718.P17709274811728577594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177424.P5885346958814520556

`A000120(C(n, 2))-A232243(n)`
-/

namespace A177424.P5885346958814520556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose n 2) - A232243 n

end

end A177424.P5885346958814520556

noncomputable section

/-- A177424: Exponent of the highest power of 2 dividing binomial(n^2,n).

Offset 0, canonical program `A177424.P5885346958814520556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A177424 (n : ℕ) : ℤ :=
  A177424.P5885346958814520556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A177424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177452.P7115906065145340262

`∑[A002055(n+5)]`
-/

namespace A177452.P7115906065145340262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002055 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177452.P7115906065145340262

noncomputable section

/-- A177452: Partial sums of A002055.

Offset 5, canonical program `A177452.P7115906065145340262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A177452 (n : ℕ) : ℤ :=
  A177452.P7115906065145340262.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A177452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177687.P13636215687742854353

`A178244(A000040(n+1))`
-/

namespace A177687.P13636215687742854353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 (A000040 (n + 1)).toNat

end

end A177687.P13636215687742854353

noncomputable section

/-- A177687: Number of distinct transpositions of digits (zeros and units) in n-th prime written in base 2.

Offset 1, canonical program `A177687.P13636215687742854353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177687 (n : ℕ) : ℤ :=
  A177687.P13636215687742854353.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177687.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177718.P13912368437558654364

`abs(A014499(n+1)-A035103(n+1))`
-/

namespace A177718.P13912368437558654364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014499 (n + 1) - A035103 (n + 1)|

end

end A177718.P13912368437558654364

noncomputable section

/-- A177718: a(n) = |(number of 1's in binary representation of prime(n)) - (number of 0's in binary representation of prime(n))|.

Offset 1, canonical program `A177718.P13912368437558654364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014499, A035103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A177718 (n : ℕ) : ℤ :=
  A177718.P13912368437558654364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014499, A035103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A177718.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177796.P16609661293602541890

`eq[A014499(n+1), A035103(n+1)]+1`
-/

namespace A177796.P16609661293602541890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A177796.P16609661293602541890

noncomputable section

/-- A177796: Numbers n such that number of 1's in binary representation of n-th prime = number of 0's in binary representation of n-th prime.

Offset 1, canonical program `A177796.P16609661293602541890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 772 terms. -/
def A177796 (n : ℕ) : ℤ :=
  (A177796.P16609661293602541890.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 772 terms. -/
def A177796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177959.P3892879503494814762

`A000040(n+1)-A035103(n+1)`
-/

namespace A177959.P3892879503494814762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A035103 (n + 1)

end

end A177959.P3892879503494814762

noncomputable section

/-- A177959: n-th prime minus number of 0's in binary representation of n-th prime.

Offset 1, canonical program `A177959.P3892879503494814762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A035103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A177959 (n : ℕ) : ℤ :=
  A177959.P3892879503494814762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A035103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A177959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177994.P15086551177914327657

`A115514(n*C(2, A004277(a(n-1)))+1)` with `a(0)=1`
-/

namespace A177994.P15086551177914327657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115514 (n * Nat.choose 2 (A004277 (a (n - 1)).toNat).toNat + 1)

end

end A177994.P15086551177914327657

noncomputable section

/-- A177994: Triangle read by rows, A177990 * A070909.

Offset 0, canonical program `A177994.P15086551177914327657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177994 (n : ℕ) : ℤ :=
  A177994.P15086551177914327657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178226.P2137882765149959903

`1-A178225(n)`
-/

namespace A178226.P2137882765149959903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A178225 n

end

end A178226.P2137882765149959903

noncomputable section

/-- A178226: Characteristic function of A154809 (numbers that are not binary palindromes).

Offset 0, canonical program `A178226.P2137882765149959903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178226 (n : ℕ) : ℤ :=
  A178226.P2137882765149959903.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178226.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178570.P12530827425225912041

`eq[1, A130291(n+1)%A162345(n+1)]`
-/

namespace A178570.P12530827425225912041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130291 (n + 1)) (A162345 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178570.P12530827425225912041

noncomputable section

/-- A178570: Numbers k such that prime(k+1) == 1 (mod (prime(k+2) - prime(k))).

Offset 1, canonical program `A178570.P12530827425225912041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1574 terms. -/
def A178570 (n : ℕ) : ℤ :=
  (A178570.P12530827425225912041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1574 terms. -/
def A178570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178820.P2891871680583135745

`A000292(A002260(n+1))*A104713(n+3)`
-/

namespace A178820.P2891871680583135745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002260 (n + 1)).toNat * A104713 (n + 3)

end

end A178820.P2891871680583135745

noncomputable section

/-- A178820: Triangle read by rows: T(n,k) = C(n+3,3) * C(n,k), 0 <= k <= n.

Offset 0, canonical program `A178820.P2891871680583135745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178820 (n : ℕ) : ℤ :=
  A178820.P2891871680583135745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179437.P9182085906867531157

`abs(1-A131733(n+1))`
-/

namespace A179437.P9182085906867531157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A131733 (n + 1)|

end

end A179437.P9182085906867531157

noncomputable section

/-- A179437: a(n) = |2n - prime(n)|.

Offset 1, canonical program `A179437.P9182085906867531157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179437 (n : ℕ) : ℤ :=
  A179437.P9182085906867531157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179546.P4255107128031221534

`A138416(n+1)+A079704(n+1)`
-/

namespace A179546.P4255107128031221534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138416 (n + 1) + A079704 (n + 1)

end

end A179546.P4255107128031221534

noncomputable section

/-- A179546: a(n) = p^2*(p + 3)/2, where p = prime(n).

Offset 1, canonical program `A179546.P4255107128031221534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179546 (n : ℕ) : ℤ :=
  A179546.P4255107128031221534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180397.P16163096444392367855

`C(A004736(n+1)!, A002260(n+1))`
-/

namespace A180397.P16163096444392367855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A004736 (n + 1)).toNat) (A002260 (n + 1)).toNat

end

end A180397.P16163096444392367855

noncomputable section

/-- A180397: T(n,m) = binomial(m!,n).

Offset 1, canonical program `A180397.P16163096444392367855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A180397 (n : ℕ) : ℤ :=
  (A180397.P16163096444392367855.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A180397.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A180663.P4613963120806556599

`round(A158753(n+2)/5)`
-/

namespace A180663.P4613963120806556599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A158753 (n + 2) : ℚ) / 5)

end

end A180663.P4613963120806556599

noncomputable section

/-- A180663: Mirror image of the Golden Triangle: T(n,k) = A001654(n-k) for n>=0 and 0<=k<=n.

Offset 0, canonical program `A180663.P4613963120806556599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180663 (n : ℕ) : ℤ :=
  A180663.P4613963120806556599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180955.P4740219006034679306

`A001790(A025581(n))`
-/

namespace A180955.P4740219006034679306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (A025581 n).toNat

end

end A180955.P4740219006034679306

noncomputable section

/-- A180955: Triangle read by rows T(n,k) = numerators of A180955/A180956.

Offset 0, canonical program `A180955.P4740219006034679306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180955 (n : ℕ) : ℤ :=
  A180955.P4740219006034679306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181511.P3145964658862366487

`A002262(n)!*A074909(n)`
-/

namespace A181511.P3145964658862366487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A074909 n

end

end A181511.P3145964658862366487

noncomputable section

/-- A181511: Triangle T(n,k) = n!/(n-k)! read by rows, 0 <= k < n.

Offset 1, canonical program `A181511.P3145964658862366487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A181511 (n : ℕ) : ℤ :=
  A181511.P3145964658862366487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A181511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182062.P751900248150404470

`A098361(n)*A169803(n)`
-/

namespace A182062.P751900248150404470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A169803 n

end

end A182062.P751900248150404470

noncomputable section

/-- A182062: T(n,k) = C(n+1-k,k)*k!*(n-k)!, the number of ways for k men and n-k women to form a queue in which no man is next to another man.

Offset 0, canonical program `A182062.P751900248150404470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A182062 (n : ℕ) : ℤ :=
  A182062.P751900248150404470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A182062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182186.P12738141047028338382

`A000302(n+1)+Δ[A153337(n+2)]`
-/

namespace A182186.P12738141047028338382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153337 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) + (f1 (n + 1) - f1 n)

end

end A182186.P12738141047028338382

noncomputable section

/-- A182186: Number b(n) of basic ideals in the Borel subalgebra of the untwisted affine Lie algebra of type B.

Offset 2, canonical program `A182186.P12738141047028338382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A182186 (n : ℕ) : ℤ :=
  A182186.P12738141047028338382.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A182186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182459.P4868126971592246376

`∑[abs(Δ[A081615(n)])]`
-/

namespace A182459.P4868126971592246376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182459.P4868126971592246376

noncomputable section

/-- A182459: a(n) is the number of initial persons such that the n-th person survives in the duck-duck-goose game.

Offset 1, canonical program `A182459.P4868126971592246376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A182459 (n : ℕ) : ℤ :=
  A182459.P4868126971592246376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A182459.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A182772.P3620426259727945793

`A074065(n+1)+1+n`
-/

namespace A182772.P3620426259727945793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074065 (n + 1) + 1 + (n : ℤ)

end

end A182772.P3620426259727945793

noncomputable section

/-- A182772: Beatty sequence for (5-sqrt(3))/2.

Offset 1, canonical program `A182772.P3620426259727945793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182772 (n : ℕ) : ℤ :=
  A182772.P3620426259727945793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182828.P15134771102316213058

`A016777(A002262(n))*A140303(n)`
-/

namespace A182828.P15134771102316213058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A002262 n).toNat * A140303 n

end

end A182828.P15134771102316213058

noncomputable section

/-- A182828: Array of the numbers (3*i+1)*3^j, i>=0, j>=0, read by antidiagonals.

Offset 1, canonical program `A182828.P15134771102316213058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182828 (n : ℕ) : ℤ :=
  A182828.P15134771102316213058.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182945.P12591486644408387893

`A000040(A004736(n+1))^A002260(n+1)`
-/

namespace A182945.P12591486644408387893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A004736 (n + 1)).toNat : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A182945.P12591486644408387893

noncomputable section

/-- A182945: Array of prime powers p^j, as transpose of A182944.

Offset 1, canonical program `A182945.P12591486644408387893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2682 terms. -/
def A182945 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A182945.P12591486644408387893.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2682 terms. -/
def A182945.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A183144.P18038817372177583572

`∑[n]-A183143(n+1)`
-/

namespace A183144.P18038817372177583572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A183143 (n + 1)

end

end A183144.P18038817372177583572

noncomputable section

/-- A183144: [1/s]+[2/s]+...+[n/s], where s=(3+sqrt(3))/2, []=floor.

Offset 1, canonical program `A183144.P18038817372177583572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183144 (n : ℕ) : ℤ :=
  A183144.P18038817372177583572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183144.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A185782.P9206641103907000175

`A144257(n+1)+A025581(n)`
-/

namespace A185782.P9206641103907000175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1) + A025581 n

end

end A185782.P9206641103907000175

noncomputable section

/-- A185782: Weight array of A185780, by antidiagonals.

Offset 1, canonical program `A185782.P9206641103907000175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185782 (n : ℕ) : ℤ :=
  A185782.P9206641103907000175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185782.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A186219.P17802241554341594580

`A080820(n+1)+n`
-/

namespace A186219.P17802241554341594580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080820 (n + 1) + (n : ℤ)

end

end A186219.P17802241554341594580

noncomputable section

/-- A186219: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and squares. Complement of A186220.

Offset 1, canonical program `A186219.P17802241554341594580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186219 (n : ℕ) : ℤ :=
  A186219.P17802241554341594580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186219.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A186326.P9660484515861953398

`A186324(n+1)+char[A251963(n+1)]`
-/

namespace A186326.P9660484515861953398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186324 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186326.P9660484515861953398

noncomputable section

/-- A186326: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the squares and octagonal numbers. Complement of A186327.

Offset 1, canonical program `A186326.P9660484515861953398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186326 (n : ℕ) : ℤ :=
  A186326.P9660484515861953398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187263.P3388945961355388323

`A092249(n+1)+n`
-/

namespace A187263.P3388945961355388323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) + (n : ℤ)

end

end A187263.P3388945961355388323

noncomputable section

/-- A187263: Number of nonempty subsets of {1, 2, ..., n} with <=2 pairwise coprime elements.

Offset 1, canonical program `A187263.P3388945961355388323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187263 (n : ℕ) : ℤ :=
  A187263.P3388945961355388323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187263.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188044.P4047038708681566993

`and(1, Δ[n-A187969(a(n-1)+1)])` with `a(0)=2`
-/

namespace A188044.P4047038708681566993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℤ) - A187969 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A188044.P4047038708681566993

noncomputable section

/-- A188044: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=sqrt(2), k=4, [ ]=floor.

Offset 1, canonical program `A188044.P4047038708681566993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188044 (n : ℕ) : ℤ :=
  A188044.P4047038708681566993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188300.P13558209889286680429

`A188297(A083035(n+1)+n)`
-/

namespace A188300.P13558209889286680429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (A083035 (n + 1) + (n : ℤ)).toNat

end

end A188300.P13558209889286680429

noncomputable section

/-- A188300: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=3, [ ]=floor.

Offset 1, canonical program `A188300.P13558209889286680429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188300 (n : ℕ) : ℤ :=
  A188300.P13558209889286680429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188376.P9064116058586987445

`A188299(n+1)-2`
-/

namespace A188376.P9064116058586987445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1) - 2

end

end A188376.P9064116058586987445

noncomputable section

/-- A188376: Positions of 1 in A188374; complement of A188375.

Offset 1, canonical program `A188376.P9064116058586987445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188376 (n : ℕ) : ℤ :=
  A188376.P9064116058586987445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188376.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189162.P9403461465680936043

`A182555(n)+A001787(n)`
-/

namespace A189162.P9403461465680936043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182555 n + A001787 n

end

end A189162.P9403461465680936043

noncomputable section

/-- A189162: The maximum possible value for the apex of a triangle of numbers whose base consists of a permutation of the numbers 1 to n, and each number in a higher row is the sum of the two numbers directly below it.

Offset 1, canonical program `A189162.P9403461465680936043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A189162 (n : ℕ) : ℤ :=
  A189162.P9403461465680936043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A189162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189364.P1162490950237657858

`floor(A000201(n+1)+(A140868(n+1)-n)/2)`
-/

namespace A189364.P1162490950237657858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000201 (n + 1) : ℚ) + (A140868 (n + 1) - (n : ℤ) : ℚ) / 2⌋

end

end A189364.P1162490950237657858

noncomputable section

/-- A189364: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sqrt(2), t=(1+sqrt(5))/2.

Offset 1, canonical program `A189364.P1162490950237657858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189364 (n : ℕ) : ℤ :=
  A189364.P1162490950237657858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189378.P12164205168119732610

`A184901(n+1)+2*(n+1)`
-/

namespace A189378.P12164205168119732610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184901 (n + 1) + (2 * (n + 1) : ℤ)

end

end A189378.P12164205168119732610

noncomputable section

/-- A189378: a(n) = n + [nr/s] + [nt/s]; r=2, s=(-1+sqrt(5))/2, t=(1+sqrt(5))/2.

Offset 1, canonical program `A189378.P12164205168119732610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189378 (n : ℕ) : ℤ :=
  A189378.P12164205168119732610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189406.P16545699037991193201

`A000027(A003512(n+1)+A188070(n+1)+n)`
-/

namespace A189406.P16545699037991193201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A003512 (n + 1) + (A188070 (n + 1) + (n : ℤ))).toNat

end

end A189406.P16545699037991193201

noncomputable section

/-- A189406: n+[nr/s]+[nt/s]; r=1, s=-1+sqrt(3), t=1+sqrt(3).

Offset 1, canonical program `A189406.P16545699037991193201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189406 (n : ℕ) : ℤ :=
  A189406.P16545699037991193201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189717.P172169761651832299

`∑[A156595(n)]`
-/

namespace A189717.P172169761651832299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189717.P172169761651832299

noncomputable section

/-- A189717: Partial sums of A156595.

Offset 1, canonical program `A189717.P172169761651832299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189717 (n : ℕ) : ℤ :=
  A189717.P172169761651832299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189717.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190243.P17259696739340890064

`eq[0, A190242(n+1)]+1`
-/

namespace A190243.P17259696739340890064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190243.P17259696739340890064

noncomputable section

/-- A190243: Positions of 0 in A190242; complement of A190244.

Offset 1, canonical program `A190243.P17259696739340890064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A190243 (n : ℕ) : ℤ :=
  (A190243.P17259696739340890064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A190243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190244.P3424383486157346576

`filter[n+1, A190242(#)]`
-/

namespace A190244.P3424383486157346576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190242 (f1 j) = 1) n)

end

end A190244.P3424383486157346576

noncomputable section

/-- A190244: Positions of 1 in A190242; complement of A190243.

Offset 1, canonical program `A190244.P3424383486157346576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A190244 (n : ℕ) : ℤ :=
  (A190244.P3424383486157346576.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A190244.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190447.P2203967122028496358

`eq[1, A190445(n+1)]+1`
-/

namespace A190447.P2203967122028496358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190447.P2203967122028496358

noncomputable section

/-- A190447: Positions of 1 in A190445.

Offset 1, canonical program `A190447.P2203967122028496358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190447 (n : ℕ) : ℤ :=
  (A190447.P2203967122028496358.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190448.P14897104130546086455

`eq[2, A190445(n+1)]+1`
-/

namespace A190448.P14897104130546086455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190448.P14897104130546086455

noncomputable section

/-- A190448: Positions of 2 in A190445.

Offset 1, canonical program `A190448.P14897104130546086455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A190448 (n : ℕ) : ℤ :=
  (A190448.P14897104130546086455.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A190448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190449.P920406239164713884

`eq[3, A190445(n+1)]+1`
-/

namespace A190449.P920406239164713884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190449.P920406239164713884

noncomputable section

/-- A190449: Positions of 3 in A190445.

Offset 1, canonical program `A190449.P920406239164713884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190449 (n : ℕ) : ℤ :=
  (A190449.P920406239164713884.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190449.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190498.P8014090296767776643

`eq[1, A190496(n+1)]+1`
-/

namespace A190498.P8014090296767776643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190498.P8014090296767776643

noncomputable section

/-- A190498: Positions of 1 in A190496.

Offset 1, canonical program `A190498.P8014090296767776643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190498 (n : ℕ) : ℤ :=
  (A190498.P8014090296767776643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190499.P17084223217155803669

`eq[2, A190496(n+1)]+1`
-/

namespace A190499.P17084223217155803669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190499.P17084223217155803669

noncomputable section

/-- A190499: Positions of 2 in A190496.

Offset 1, canonical program `A190499.P17084223217155803669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A190499 (n : ℕ) : ℤ :=
  (A190499.P17084223217155803669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A190499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190500.P16667843591126288485

`lt[2, A190496(n+1)]+1`
-/

namespace A190500.P16667843591126288485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A190500.P16667843591126288485

noncomputable section

/-- A190500: Positions of 3 in A190496.

Offset 1, canonical program `A190500.P16667843591126288485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A190500 (n : ℕ) : ℤ :=
  (A190500.P16667843591126288485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A190500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190509.P14903933930852301014

`A000201(n+1)+A003623(n+1)`
-/

namespace A190509.P14903933930852301014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) + A003623 (n + 1)

end

end A190509.P14903933930852301014

noncomputable section

/-- A190509: a(n) = n + [nr/s] + [nt/s] + [nu/s] where r=golden ratio, s=r^2, t=r^3, u=r^4, and [] represents the floor function.

Offset 1, canonical program `A190509.P14903933930852301014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000201, A003623, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190509 (n : ℕ) : ℤ :=
  A190509.P14903933930852301014.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000201, A003623, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190509.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190550.P14132498748582534910

`lt[A190549(n+1), 1]+1`
-/

namespace A190550.P14132498748582534910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190549 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A190550.P14132498748582534910

noncomputable section

/-- A190550: Positions of 0 in A190549.

Offset 1, canonical program `A190550.P14132498748582534910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1465 terms. -/
def A190550 (n : ℕ) : ℤ :=
  (A190550.P14132498748582534910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1465 terms. -/
def A190550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190551.P17730107267419017797

`eq[1, A190549(n+1)]+1`
-/

namespace A190551.P17730107267419017797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190549 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190551.P17730107267419017797

noncomputable section

/-- A190551: Positions of 1 in A190549.

Offset 1, canonical program `A190551.P17730107267419017797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190551 (n : ℕ) : ℤ :=
  (A190551.P17730107267419017797.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190552.P8550911056888575151

`eq[2, A190549(n+1)]+1`
-/

namespace A190552.P8550911056888575151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190549 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190552.P8550911056888575151

noncomputable section

/-- A190552: Positions of 2 in A190549.

Offset 1, canonical program `A190552.P8550911056888575151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190552 (n : ℕ) : ℤ :=
  (A190552.P8550911056888575151.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190553.P15220881830285851837

`eq[3, A190549(n+1)]+1`
-/

namespace A190553.P15220881830285851837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190549 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190553.P15220881830285851837

noncomputable section

/-- A190553: Positions of 3 in A190549.

Offset 1, canonical program `A190553.P15220881830285851837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190553 (n : ℕ) : ℤ :=
  (A190553.P15220881830285851837.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190553.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190765.P11397888185412396491

`2*A190486(n+1)-A190763(n+1)`
-/

namespace A190765.P11397888185412396491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190486 (n + 1) - A190763 (n + 1)

end

end A190765.P11397888185412396491

noncomputable section

/-- A190765: Positions of 2 in A190762.

Offset 1, canonical program `A190765.P11397888185412396491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190765 (n : ℕ) : ℤ :=
  A190765.P11397888185412396491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190772.P9944616738065135873

`eq[1, A190770(n+1)]+1`
-/

namespace A190772.P9944616738065135873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190772.P9944616738065135873

noncomputable section

/-- A190772: Positions of 1 in A190770.

Offset 1, canonical program `A190772.P9944616738065135873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A190772 (n : ℕ) : ℤ :=
  (A190772.P9944616738065135873.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A190772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190773.P3973003824351940995

`eq[2, A190770(n+1)]+1`
-/

namespace A190773.P3973003824351940995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190773.P3973003824351940995

noncomputable section

/-- A190773: Positions of 2 in A190770.

Offset 1, canonical program `A190773.P3973003824351940995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190773 (n : ℕ) : ℤ :=
  (A190773.P3973003824351940995.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191337.P12212658348506033970

`eq[0, A191336(n+2)]+2`
-/

namespace A191337.P12212658348506033970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191336 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A191337.P12212658348506033970

noncomputable section

/-- A191337: Positions of 0 in A191336.

Offset 1, canonical program `A191337.P12212658348506033970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A191337 (n : ℕ) : ℤ :=
  (A191337.P12212658348506033970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A191337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191338.P15959979912852935596

`eq[1, A191336(n+1)]+1`
-/

namespace A191338.P15959979912852935596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191338.P15959979912852935596

noncomputable section

/-- A191338: Positions of 1 in A191336.

Offset 1, canonical program `A191338.P15959979912852935596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A191338 (n : ℕ) : ℤ :=
  (A191338.P15959979912852935596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A191338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191339.P16789462610040793669

`lt[1, A191336(n+1)]+1`
-/

namespace A191339.P16789462610040793669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A191339.P16789462610040793669

noncomputable section

/-- A191339: Positions of 2 in A191336.

Offset 1, canonical program `A191339.P16789462610040793669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A191339 (n : ℕ) : ℤ :=
  (A191339.P16789462610040793669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A191339.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A191524.P4442675164963678049

`A000079(n)+A191309(n)-A050168(n)`
-/

namespace A191524.P4442675164963678049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A191309 n - A050168 n)

end

end A191524.P4442675164963678049

noncomputable section

/-- A191524: Number of double rises in all left factors of Dyck paths of length n (a double rise consists of two consecutive (1,1)-steps).

Offset 0, canonical program `A191524.P4442675164963678049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191524 (n : ℕ) : ℤ :=
  A191524.P4442675164963678049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191524.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A194117.P2853746433077659524

`∑[A188070(n+1)]-(n+1)`
-/

namespace A194117.P2853746433077659524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A194117.P2853746433077659524

noncomputable section

/-- A194117: a(n) = Sum_{j=1..n} floor(j*(1+sqrt(3))/2); n-th partial sum of Beatty sequence A003511.

Offset 1, canonical program `A194117.P2853746433077659524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194117 (n : ℕ) : ℤ :=
  A194117.P2853746433077659524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194143.P5634458808628739583

`∑[A188070(n+1)]+∑[n]`
-/

namespace A194143.P5634458808628739583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194143.P5634458808628739583

noncomputable section

/-- A194143: Sum{floor(j*(3+sqrt(3))/2) : 1<=j<=n}; n-th partial sum of Beatty sequence for (3+sqrt(3))/2.

Offset 1, canonical program `A194143.P5634458808628739583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194143 (n : ℕ) : ℤ :=
  A194143.P5634458808628739583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194143.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A204164.P4258946437764065738

`val(A098354(n+1), 4)`
-/

namespace A204164.P4258946437764065738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A098354 (n + 1)).toNat 4

end

end A204164.P4258946437764065738

noncomputable section

/-- A204164: Symmetric matrix based on f(i,j) = floor((i+j)/2), by antidiagonals.

Offset 1, canonical program `A204164.P4258946437764065738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204164 (n : ℕ) : ℤ :=
  (A204164.P4258946437764065738.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204164.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A205593.P16905158844139717774

`log2(A205592(n+2))`
-/

namespace A205593.P16905158844139717774
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A205592 (n + 2) : ℝ)

end

end A205593.P16905158844139717774

noncomputable section

/-- A205593: a(2) = 0, a(3k) = a(3k+1) = a(2k), a(3k+2) = a(2k+1) + 1 for k >= 1.

Offset 2, canonical program `A205593.P16905158844139717774`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205592, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A205593 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A205593.P16905158844139717774.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205592, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A205593.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A209635.P4190612729854027480

`A099990(A025480(n))`
-/

namespace A209635.P4190612729854027480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099990 (A025480 n).toNat

end

end A209635.P4190612729854027480

noncomputable section

/-- A209635: Möbius mu-function applied to the odd part of n: a(n) = A008683(A000265(n)).

Offset 1, canonical program `A209635.P4190612729854027480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209635 (n : ℕ) : ℤ :=
  A209635.P4190612729854027480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209675.P18293820105630241232

`A003485(A001511(n+1))`
-/

namespace A209675.P18293820105630241232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A001511 (n + 1)).toNat

end

end A209675.P18293820105630241232

noncomputable section

/-- A209675: Radon function at even positions: a(n) = A003484(2*n).

Offset 1, canonical program `A209675.P18293820105630241232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209675 (n : ℕ) : ℤ :=
  A209675.P18293820105630241232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209675.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A211261.P16177848292609839620

`floor(A069930(n+1)/2)`
-/

namespace A211261.P16177848292609839620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A069930 (n + 1) : ℚ) / 2⌋

end

end A211261.P16177848292609839620

noncomputable section

/-- A211261: Number of integer pairs (x,y) such that 0

Offset 1, canonical program `A211261.P16177848292609839620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211261 (n : ℕ) : ℤ :=
  A211261.P16177848292609839620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211270.P6587730718144839583

`ceil(A069930(n+1)/2)`
-/

namespace A211270.P6587730718144839583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A069930 (n + 1) : ℚ) / 2⌉

end

end A211270.P6587730718144839583

noncomputable section

/-- A211270: Number of integer pairs (x,y) such that 0 < x <= y <= n and x*y = 2n.

Offset 1, canonical program `A211270.P6587730718144839583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211270 (n : ℕ) : ℤ :=
  A211270.P6587730718144839583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211270.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A212450.P5589044596154153166

`A004233(n+1)+1+n`
-/

namespace A212450.P5589044596154153166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (n + 1) + 1 + (n : ℤ)

end

end A212450.P5589044596154153166

noncomputable section

/-- A212450: a(n) = ceiling(n + log(n)).

Offset 1, canonical program `A212450.P5589044596154153166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212450 (n : ℕ) : ℤ :=
  A212450.P5589044596154153166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212450.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A214955.P9665466944390652785

`record[(n+1)*A099364(n)]`
-/

namespace A214955.P9665466944390652785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A099364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214955.P9665466944390652785

noncomputable section

/-- A214955: Number of solid standard Young tableaux of shape [[n,n-1],[1]].

Offset 1, canonical program `A214955.P9665466944390652785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A214955 (n : ℕ) : ℤ :=
  A214955.P9665466944390652785.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A214955.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A217865.P6976035578713182164

`A050504(n+2)-A050504(n+1)`
-/

namespace A217865.P6976035578713182164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 2) - A050504 (n + 1)

end

end A217865.P6976035578713182164

noncomputable section

/-- A217865: First differences of A050504.

Offset 1, canonical program `A217865.P6976035578713182164`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217865 (n : ℕ) : ℤ :=
  A217865.P6976035578713182164.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217865.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A218828.P498474312992821161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218828 (n : ℕ) : ℤ :=
  A218828.P498474312992821161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218828.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A220280.P8469677914056541657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220280 (n : ℕ) : ℤ :=
  A220280.P8469677914056541657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220280.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A237424.P11989314284916062246`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052216, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A237424 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A237424.P11989314284916062246.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052216, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A237424.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A237881.P16345207362817268487

`val(Δ[A061802(n)], 2)`
-/

namespace A237881.P16345207362817268487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A237881.P16345207362817268487

noncomputable section

/-- A237881: a(n) = 2-adic valuation of prime(n)+prime(n+1).

Offset 1, canonical program `A237881.P16345207362817268487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237881 (n : ℕ) : ℤ :=
  (A237881.P16345207362817268487.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237881.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A239442.P5456459887707133884

`(n+1)²*A238533(n+1)`
-/

namespace A239442.P5456459887707133884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A238533 (n + 1)

end

end A239442.P5456459887707133884

noncomputable section

/-- A239442: a(n) = phi(n^7).

Offset 1, canonical program `A239442.P5456459887707133884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239442 (n : ℕ) : ℤ :=
  A239442.P5456459887707133884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240568.P1788290503370142704

`A117495(n+1)-A061802(n)`
-/

namespace A240568.P1788290503370142704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117495 (n + 1) - A061802 n

end

end A240568.P1788290503370142704

noncomputable section

/-- A240568: Difference between n times the n-th prime and twice the sum of the first n primes.

Offset 1, canonical program `A240568.P1788290503370142704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240568 (n : ℕ) : ℤ :=
  A240568.P1788290503370142704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240568.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A244417.P18318086271130608872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244417 (n : ℕ) : ℤ :=
  A244417.P18318086271130608872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244417.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A246930.P593150270541776600

`A031339(2*(n+1))`
-/

namespace A246930.P593150270541776600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031339 (2 * (n + 1))

end

end A246930.P593150270541776600

noncomputable section

/-- A246930: a(n) = prime(12*n).

Offset 1, canonical program `A246930.P593150270541776600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246930 (n : ℕ) : ℤ :=
  A246930.P593150270541776600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247420.P16728551476557445126

`A075318(A242094(n+1))+n`
-/

namespace A247420.P16728551476557445126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075318 (A242094 (n + 1)).toNat + (n : ℤ)

end

end A247420.P16728551476557445126

noncomputable section

/-- A247420: Complement of A247419.

Offset 1, canonical program `A247420.P16728551476557445126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8946 terms. -/
def A247420 (n : ℕ) : ℤ :=
  A247420.P16728551476557445126.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8946 terms. -/
def A247420.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A248184.P16797326836110857965

`record[n+1-A248183(n+1)%A248183(n+2)]`
-/

namespace A248184.P16797326836110857965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A248183 (n + 1)) (A248183 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248184.P16797326836110857965

noncomputable section

/-- A248184: Numbers k such that A248183(k+1) = A248183(k).

Offset 1, canonical program `A248184.P16797326836110857965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248184 (n : ℕ) : ℤ :=
  A248184.P16797326836110857965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248184.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A253158.P13523813419419974154

`A253157(n+1)+2*A124512(A004139(n+1))`
-/

namespace A253158.P13523813419419974154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253157 (n + 1) + 2 * A124512 (A004139 (n + 1)).toNat

end

end A253158.P13523813419419974154

noncomputable section

/-- A253158: Number of (n+1) X (7+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

Offset 1, canonical program `A253158.P13523813419419974154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253158 (n : ℕ) : ℤ :=
  A253158.P13523813419419974154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253434.P11124431302743939012

`A253433(n+1)+2*A124512(A000040(n+1))`
-/

namespace A253434.P11124431302743939012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253433 (n + 1) + 2 * A124512 (A000040 (n + 1)).toNat

end

end A253434.P11124431302743939012

noncomputable section

/-- A253434: Number of (n+1) X (7+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

Offset 1, canonical program `A253434.P11124431302743939012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253434 (n : ℕ) : ℤ :=
  A253434.P11124431302743939012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253440.P4273520143167882441

`A253157(n+1)+A253438(n+1)-A253155(n+1)`
-/

namespace A253440.P4273520143167882441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253157 (n + 1) + (A253438 (n + 1) - A253155 (n + 1))

end

end A253440.P4273520143167882441

noncomputable section

/-- A253440: Number of (6+1) X (n+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

Offset 1, canonical program `A253440.P4273520143167882441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253440 (n : ℕ) : ℤ :=
  A253440.P4273520143167882441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253440.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A253709.P15907870004999877611

`A253708(n+1)²`
-/

namespace A253709.P15907870004999877611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253708 (n + 1) ^ 2

end

end A253709.P15907870004999877611

noncomputable section

/-- A253709: Integer squares c^2 that are equal to the sums of M (A253707) consecutive cubed integers equaling a squared integer, b^3 + (b+1)^3 + ... + (b+M-1)^3 = c^2, for a first term b(n) being an odd squared integer (A016754).

Offset 1, canonical program `A253709.P15907870004999877611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253709 (n : ℕ) : ℤ :=
  A253709.P15907870004999877611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253709.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A262720.P7657853626115152366

`A014531(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A262720.P7657853626115152366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014531 (n + 1) - a (n - 1)

end

end A262720.P7657853626115152366

noncomputable section

/-- A262720: a(n) = Sum_{k=0..n/2} binomial(n+3,k)*binomial(n+1-k,k+1).

Offset 0, canonical program `A262720.P7657853626115152366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A262720 (n : ℕ) : ℤ :=
  A262720.P7657853626115152366.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A262720.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A268733.P14598221901413426913

`(A065091(n+1)+1)*A060800(n+1)`
-/

namespace A268733.P14598221901413426913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) + 1) * A060800 (n + 1)

end

end A268733.P14598221901413426913

noncomputable section

/-- A268733: a(n) = A000203(A251720(n)).

Offset 1, canonical program `A268733.P14598221901413426913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268733 (n : ℕ) : ℤ :=
  A268733.P14598221901413426913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268733.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A277156.P10138368382409887168

`val(A014132(A034856(n+1)), 17)`
-/

namespace A277156.P10138368382409887168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014132 (A034856 (n + 1)).toNat).toNat 17

end

end A277156.P10138368382409887168

noncomputable section

/-- A277156: Lexicographically least sequence of nonnegative integers that avoids 12/7-powers.

Offset 0, canonical program `A277156.P10138368382409887168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A277156 (n : ℕ) : ℤ :=
  (A277156.P10138368382409887168.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A277156.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A283363.P9051439283470971273`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090396, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283363 (n : ℕ) : ℤ :=
  A283363.P9051439283470971273.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090396, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283363.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A164570.P17997441851036447944

`∩[A005125(n+1), A023229(n+1)]`
-/

namespace A164570.P17997441851036447944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164570.P17997441851036447944

noncomputable section

/-- A164570: Primes p such that 8*p-3 and 8*p+3 are also prime numbers.

Offset 1, canonical program `A164570.P17997441851036447944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A164570 (n : ℕ) : ℤ :=
  (A164570.P17997441851036447944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A164570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164738.P7688680176698315187

`A057334(A233280(n+1))`
-/

namespace A164738.P7688680176698315187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057334 (A233280 (n + 1)).toNat

end

end A164738.P7688680176698315187

noncomputable section

/-- A164738: Triangle read by rows. Row 0 = {2}; left half of row n+1 = row n, right half = row n reversed with each term replaced by the next prime.

Offset 0, canonical program `A164738.P7688680176698315187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9471 terms. -/
def A164738 (n : ℕ) : ℤ :=
  A164738.P7688680176698315187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9471 terms. -/
def A164738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164901.P6900817320331422055

`A151800(A065170(a(n-1)-2)+1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A164901.P6900817320331422055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A151800 (A065170 (a (n - 1) - 2).toNat + 1).toNat

end

end A164901.P6900817320331422055

noncomputable section

/-- A164901: a(1)=1, a(2) = 2. For n >=3, a(n) = the smallest integer > a(n-1) that is coprime to every sum of any two distinct earlier terms of this sequence.

Offset 1, canonical program `A164901.P6900817320331422055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A164901 (n : ℕ) : ℤ :=
  A164901.P6900817320331422055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A164901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164921.P16552518991080890067

`A151800(a(n-1)+2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A164921.P16552518991080890067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A151800 (a (n - 1) + 2).toNat

end

end A164921.P16552518991080890067

noncomputable section

/-- A164921: a(1)=0, a(2)=1. For n >=3, a(n) = the smallest integer > a(n-1) that is coprime to every sum of any two distinct earlier terms of this sequence.

Offset 1, canonical program `A164921.P16552518991080890067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2773 terms. -/
def A164921 (n : ℕ) : ℤ :=
  A164921.P16552518991080890067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2773 terms. -/
def A164921.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A166160.P15900755279161251971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005097, A047845, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166160 (n : ℕ) : ℤ :=
  A166160.P15900755279161251971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005097, A047845, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166574.P5760661758022436118

`p?[A013635(n+3)]`
-/

namespace A166574.P5760661758022436118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166574.P5760661758022436118

noncomputable section

/-- A166574: If p, q are successive primes, and there is a number k with p < k <= q such that r = p+k is a prime, then r is in the sequence.

Offset 1, canonical program `A166574.P5760661758022436118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166574 (n : ℕ) : ℤ :=
  A166574.P5760661758022436118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166587.P9407171212140652662

`A000007(n)-Δ[A099323(n)]`
-/

namespace A166587.P9407171212140652662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (f1 (n + 1) - f1 n)

end

end A166587.P9407171212140652662

noncomputable section

/-- A166587: A signed variant of the Motzkin numbers.

Offset 0, canonical program `A166587.P9407171212140652662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A166587 (n : ℕ) : ℤ :=
  A166587.P9407171212140652662.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A166587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166712.P7902075081343021312

`Δ[A230980(A050504(n+1))]`
-/

namespace A166712.P7902075081343021312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A050504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166712.P7902075081343021312

noncomputable section

/-- A166712: Number of primes in (n*log(n)..(n+1)*log(n+1)] semi-open intervals, n >= 1.

Offset 1, canonical program `A166712.P7902075081343021312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A166712 (n : ℕ) : ℤ :=
  A166712.P7902075081343021312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A166712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167022.P9505370295991698775

`A000007(n)-A007971(n)`
-/

namespace A167022.P9505370295991698775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A007971 n

end

end A167022.P9505370295991698775

noncomputable section

/-- A167022: Expansion of sqrt(1 - 2*x - 3*x^2) in powers of x.

Offset 0, canonical program `A167022.P9505370295991698775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A167022 (n : ℕ) : ℤ :=
  A167022.P9505370295991698775.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A167022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167657.P13884500863494241506

`n^A075526(n)`
-/

namespace A167657.P13884500863494241506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A075526 n : ℤ)

end

end A167657.P13884500863494241506

noncomputable section

/-- A167657: Product of n-th block of identical consecutive values of A000720.

Offset 1, canonical program `A167657.P13884500863494241506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1059 terms. -/
def A167657 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A167657.P13884500863494241506.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1059 terms. -/
def A167657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168141.P17618216875258990548

`A090406(abs(2-n)+1)`
-/

namespace A168141.P17618216875258990548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (|2 - (n : ℤ)| + 1).toNat

end

end A168141.P17618216875258990548

noncomputable section

/-- A168141: a(n) = pi(n + 1) - pi(n - 2), where pi is the prime counting function.

Offset 1, canonical program `A168141.P17618216875258990548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168141 (n : ℕ) : ℤ :=
  A168141.P17618216875258990548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169683.P18438697268812114690

`A007089(eq[A081603(n), A189640(n+1)])`
-/

namespace A169683.P18438697268812114690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A169683.P18438697268812114690

noncomputable section

/-- A169683: The canonical skew-binary numbers.

Offset 0, canonical program `A169683.P18438697268812114690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1020 terms. -/
def A169683 (n : ℕ) : ℤ :=
  A169683.P18438697268812114690.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1020 terms. -/
def A169683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171176.P17322365115208506390

`A253515(n+1)+A053186(n*A005369(n))`
-/

namespace A171176.P17322365115208506390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253515 (n + 1) + A053186 ((n : ℤ) * A005369 n).toNat

end

end A171176.P17322365115208506390

noncomputable section

/-- A171176: Triangle read by rows in which row n lists 3n-1 together with the first 2n-1 positive integers, in reverse order.

Offset 1, canonical program `A171176.P17322365115208506390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A171176 (n : ℕ) : ℤ :=
  A171176.P17322365115208506390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A171176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171503.P13940415937448439247

`A002246(n)+a(n-1)` with `a(0)=0`
-/

namespace A171503.P13940415937448439247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002246 n + a (n - 1)

end

end A171503.P13940415937448439247

noncomputable section

/-- A171503: Number of 2 X 2 integer matrices with entries from {0,1,...,n} having determinant 1.

Offset 0, canonical program `A171503.P13940415937448439247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A171503 (n : ℕ) : ℤ :=
  A171503.P13940415937448439247.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A171503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172048.P1924917802631505532

`A104275(n+1)+A014076(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172048.P1924917802631505532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1) + A014076 (n + 1)

end

end A172048.P1924917802631505532

noncomputable section

/-- A172048: a(n) = A104275(n) + A014076(n).

Offset 1, canonical program `A172048.P1924917802631505532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, A104275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172048 (n : ℕ) : ℤ :=
  A172048.P1924917802631505532.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, A104275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172048.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A173476.P1773901459906689721

`(A119502(n)-A233543(n))²+1`
-/

namespace A173476.P1773901459906689721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A119502 n - A233543 n) ^ 2 + 1

end

end A173476.P1773901459906689721

noncomputable section

/-- A173476: Triangle T(n, k) = 1 + (k!)^2 - 2*k!*(n-k)! + ((n-k)!)^2, read by rows.

Offset 0, canonical program `A173476.P1773901459906689721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 903 terms. -/
def A173476 (n : ℕ) : ℤ :=
  A173476.P1773901459906689721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 903 terms. -/
def A173476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173589.P18260503600219272099

`A003714(eq[3, A007895(n)])`
-/

namespace A173589.P18260503600219272099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173589.P18260503600219272099

noncomputable section

/-- A173589: Integers whose binary representation contains exactly three 1's, no two 1's being adjacent.

Offset 1, canonical program `A173589.P18260503600219272099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 679 terms. -/
def A173589 (n : ℕ) : ℤ :=
  A173589.P18260503600219272099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 679 terms. -/
def A173589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173826.P17218421421297169468

`∩[A086085(n+1), A086086(n+1)]`
-/

namespace A173826.P17218421421297169468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173826.P17218421421297169468

noncomputable section

/-- A173826: Primes p such that p-+floor(Sqrt(p)) are primes.

Offset 1, canonical program `A173826.P17218421421297169468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173826 (n : ℕ) : ℤ :=
  (A173826.P17218421421297169468.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173826.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174433.P15299318551043333282

`A005145(n+1)%A001223(A002260(n+1))`
-/

namespace A174433.P15299318551043333282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005145 (n + 1)) (A001223 (A002260 (n + 1)).toNat)

end

end A174433.P15299318551043333282

noncomputable section

/-- A174433: Triangle read by rows: T(n,k) = prime(n) mod A001223(k), where A001223 are differences between consecutive primes.

Offset 1, canonical program `A174433.P15299318551043333282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174433 (n : ℕ) : ℤ :=
  A174433.P15299318551043333282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174648.P6169375116423577086

`∑[A000452(n+1)]`
-/

namespace A174648.P6169375116423577086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174648.P6169375116423577086

noncomputable section

/-- A174648: Partial sums of A000452.

Offset 1, canonical program `A174648.P6169375116423577086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174648 (n : ℕ) : ℤ :=
  A174648.P6169375116423577086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174883.P7247587892834711161

`A000045(n+1)/A060865(n+1)`
-/

namespace A174883.P7247587892834711161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A060865 (n + 1) : ℚ)

end

end A174883.P7247587892834711161

noncomputable section

/-- A174883: Largest odd divisors of Fibonacci numbers.

Offset 1, canonical program `A174883.P7247587892834711161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A174883 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174883.P7247587892834711161.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A174883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174940.P16857254554969626556

`∑{d}[n+1, A046692(#)*A174932((n+1)/#)]`
-/

namespace A174940.P16857254554969626556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A174932 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174940.P16857254554969626556

noncomputable section

/-- A174940: a(n) = Sum_{d|n} A007955(d) * A008683(n/d) = Sum_{d|n} A007955(d) * mu(n/d), where A007955(m) = number of divisors of m.

Offset 1, canonical program `A174940.P16857254554969626556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A174940 (n : ℕ) : ℤ :=
  A174940.P16857254554969626556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A174940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175057.P10451494009119504139

`A025480(eq[A069010(n+1), A135523(n+1)+1])`
-/

namespace A175057.P10451494009119504139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175057.P10451494009119504139

noncomputable section

/-- A175057: a(n) = decimal equivalent of {A175054(n) written in binary, and each run of 0's reduced in length by one digit}.

Offset 1, canonical program `A175057.P10451494009119504139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A175057 (n : ℕ) : ℤ :=
  A175057.P10451494009119504139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A175057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175090.P1060197383972460167

`eq[or(2, A175078(n+1)), A072491(n)]`
-/

namespace A175090.P1060197383972460167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A175078 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175090.P1060197383972460167

noncomputable section

/-- A175090: Composites c with result 0 under iterations of {r mod (max prime p <= r)} starting at r = c.

Offset 1, canonical program `A175090.P1060197383972460167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5264 terms. -/
def A175090 (n : ℕ) : ℤ :=
  (A175090.P1060197383972460167.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5264 terms. -/
def A175090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175242.P1893256833223553790

`∑{d}[n+1, A178225(#)]`
-/

namespace A175242.P1893256833223553790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A178225 d

end

end A175242.P1893256833223553790

noncomputable section

/-- A175242: a(n) = the number of divisors of n that are palindromes when written in binary.

Offset 1, canonical program `A175242.P1893256833223553790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175242 (n : ℕ) : ℤ :=
  A175242.P1893256833223553790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175621.P12008567735738258258

`A294390(Δ[A053767(n)])`
-/

namespace A175621.P12008567735738258258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (f1 (n + 1) - f1 n).toNat

end

end A175621.P12008567735738258258

noncomputable section

/-- A175621: a(n) = 2^(composite(n)-4) mod composite(n).

Offset 1, canonical program `A175621.P12008567735738258258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175621 (n : ℕ) : ℤ :=
  A175621.P12008567735738258258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175634.P10918917663715960839

`lt[A105560(n+4), A105700(n)²]`
-/

namespace A175634.P10918917663715960839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175634.P10918917663715960839

noncomputable section

/-- A175634: Chen semiprimes: semiprimes m such that m+4 is either a prime or a semiprime.

Offset 1, canonical program `A175634.P10918917663715960839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175634 (n : ℕ) : ℤ :=
  (A175634.P10918917663715960839.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176496.P13167462002184165574

`A073718(n)+a(n-1)` with `a(0)=2`
-/

namespace A176496.P13167462002184165574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A073718 n + a (n - 1)

end

end A176496.P13167462002184165574

noncomputable section

/-- A176496: a(n) = Sum_{k=1..n} 2^nonprime(k).

Offset 1, canonical program `A176496.P13167462002184165574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A176496 (n : ℕ) : ℤ :=
  A176496.P13167462002184165574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A176496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176811.P7244811370246192382

`A090406(2*p?[A040976(n+1)])`
-/

namespace A176811.P7244811370246192382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A176811.P7244811370246192382

noncomputable section

/-- A176811: Number of primes between 2*(lesser of n-th twin prime pair) and 2*(greater of n-th twin prime pair).

Offset 1, canonical program `A176811.P7244811370246192382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A176811 (n : ℕ) : ℤ :=
  A176811.P7244811370246192382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A176811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176831.P10048569203297585884

`p?[A147846(n+3)-A147846(n+1)]`
-/

namespace A176831.P10048569203297585884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147846 (n + 3) - A147846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176831.P10048569203297585884

noncomputable section

/-- A176831: List of all primes p such that 2*A099609(2n-1)

Offset 1, canonical program `A176831.P10048569203297585884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A176831 (n : ℕ) : ℤ :=
  A176831.P10048569203297585884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A176831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176865.P3555741230070737167

`eq[0, A007920(A055400(n))]`
-/

namespace A176865.P3555741230070737167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A055400 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176865.P3555741230070737167

noncomputable section

/-- A176865: Numbers n such that n-LargestCube is prime, (LargestCube <= n).

Offset 1, canonical program `A176865.P3555741230070737167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176865 (n : ℕ) : ℤ :=
  (A176865.P3555741230070737167.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177017.P2945231276214916138

`p?[eq[1, A010051(A151800(n)+1+n)]]`
-/

namespace A177017.P2945231276214916138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A151800 n + 1 + (n : ℤ)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A177017.P2945231276214916138

noncomputable section

/-- A177017: Primes prime(n) such that prime(n) + prime(n+1) + 1 is also prime.

Offset 1, canonical program `A177017.P2945231276214916138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1258 terms. -/
def A177017 (n : ℕ) : ℤ :=
  (A177017.P2945231276214916138.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1258 terms. -/
def A177017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177262.P5115816299917708865

`(C(comp[∑[n]]-n, 2)-(n+1))!*A193592(n+1)`
-/

namespace A177262.P5115816299917708865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A193592 (n + 1)

end

end A177262.P5115816299917708865

noncomputable section

/-- A177262: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} starting with exactly k consecutive integers (1<=k<=n).

Offset 1, canonical program `A177262.P5115816299917708865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A177262 (n : ℕ) : ℤ :=
  A177262.P5115816299917708865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A177262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177962.P6701287130762036600

`A008480(Δ[A053767(n)])`
-/

namespace A177962.P6701287130762036600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (f1 (n + 1) - f1 n).toNat

end

end A177962.P6701287130762036600

noncomputable section

/-- A177962: Number of distinct transpositions of prime factors of n-th composite number.

Offset 1, canonical program `A177962.P6701287130762036600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A177962 (n : ℕ) : ℤ :=
  A177962.P6701287130762036600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A177962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178549.P1842072267796147829

`1+A070866(n+2)`
-/

namespace A178549.P1842072267796147829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A070866 (n + 2)

end

end A178549.P1842072267796147829

noncomputable section

/-- A178549: a(n) is a composite number at the start of an interval of consecutive integers, ending in a prime, and non-overlapping with and at least as long as the interval addressed by a(n-1).

Offset 1, canonical program `A178549.P1842072267796147829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070866, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178549 (n : ℕ) : ℤ :=
  A178549.P1842072267796147829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070866, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178636.P5283396583048980149

`A167515(n+1)-1`
-/

namespace A178636.P5283396583048980149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167515 (n + 1) - 1

end

end A178636.P5283396583048980149

noncomputable section

/-- A178636: If n = Product (p_i^k_i) for i = 1, ..., j then a(n) is the sum of the divisors d that are not in the set {1, p_1^k_1, p_2^k_2, ..., p_j^k_j}.

Offset 1, canonical program `A178636.P5283396583048980149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178636 (n : ℕ) : ℤ :=
  A178636.P5283396583048980149.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178636.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179012.P1284403483129430649

`p?[A163631(n+4)-A163631(n+1)]`
-/

namespace A179012.P1284403483129430649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163631 (n + 4) - A163631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179012.P1284403483129430649

noncomputable section

/-- A179012: Primes that are the sum of three consecutive composite odd numbers.

Offset 1, canonical program `A179012.P1284403483129430649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179012 (n : ℕ) : ℤ :=
  A179012.P1284403483129430649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179882.P5657720540902415124

`record[gcd(A179873(n+1), A179873(n+2))]`
-/

namespace A179882.P5657720540902415124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A179873 (n + 1)) (A179873 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179882.P5657720540902415124

noncomputable section

/-- A179882: a(n) is the corresponding value of contraharmonic mean B(h) of numbers k such that gcd(k, h) = 1 (k < h) for numbers h from A179877(n) and A179878(n).

Offset 1, canonical program `A179882.P5657720540902415124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1519 terms. -/
def A179882 (n : ℕ) : ℤ :=
  (A179882.P5657720540902415124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1519 terms. -/
def A179882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180061.P17462486290347262264

`1+eq[4, A180060(n+1)]`
-/

namespace A180061.P17462486290347262264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180060 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180061.P17462486290347262264

noncomputable section

/-- A180061: Numbers k such that (2^(2^k mod k) mod k) = 4.

Offset 1, canonical program `A180061.P17462486290347262264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A180061 (n : ℕ) : ℤ :=
  (A180061.P17462486290347262264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A180061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180204.P4441902306548619371

`eq[n, abs(A055945(A055944(n)))]`
-/

namespace A180204.P4441902306548619371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055945 (A055944 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180204.P4441902306548619371

noncomputable section

/-- A180204: Base-10 representation of numbers k which, in base 2, satisfy abs(k + reverse(k) - reverse(k + reverse(k))) = k.

Offset 1, canonical program `A180204.P4441902306548619371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A180204 (n : ℕ) : ℤ :=
  (A180204.P4441902306548619371.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A180204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180634.P5853872101969493959

`eq[A103131(n+1)², A103131(n+1)]+1`
-/

namespace A180634.P5853872101969493959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103131 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A180634.P5853872101969493959

noncomputable section

/-- A180634: Numbers n such that the discriminant of the n-th cyclotomic polynomial is a square.

Offset 1, canonical program `A180634.P5853872101969493959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180634 (n : ℕ) : ℤ :=
  (A180634.P5853872101969493959.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180634.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A181563.P14177458731541688462

`∑{d}[n+1, A328373(#)*A349341((n+1)/#)]`
-/

namespace A181563.P14177458731541688462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328373 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A181563.P14177458731541688462

noncomputable section

/-- A181563: Almost-Liouville function.

Offset 1, canonical program `A181563.P14177458731541688462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181563 (n : ℕ) : ℤ :=
  A181563.P14177458731541688462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181563.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A181712.P14593440475887828698

`A190504(n+1)%2`
-/

namespace A181712.P14593440475887828698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190504 (n + 1)) 2

end

end A181712.P14593440475887828698

noncomputable section

/-- A181712: a(n) = floor(3*n*phi) - floor(2*n*phi) - floor(n*phi), where phi = (1+sqrt(5))/2, the golden ratio.

Offset 1, canonical program `A181712.P14593440475887828698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181712 (n : ℕ) : ℤ :=
  A181712.P14593440475887828698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181712.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A181938.P3732360409968739230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 828 terms. -/
def A181938 (n : ℕ) : ℤ :=
  (A181938.P3732360409968739230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 828 terms. -/
def A181938.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A182535.P17468542528139783195`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182535 (n : ℕ) : ℤ :=
  A182535.P17468542528139783195.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182535.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182921.P272631166531236110

`A317531(n)+a(n-1)` with `a(0)=0`
-/

namespace A182921.P272631166531236110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A317531 n + a (n - 1)

end

end A182921.P272631166531236110

noncomputable section

/-- A182921: Sum of exponents in prime-power factorization of the swinging factorial (A056040) n$ = n!/floor(n/2)!^2; also bigomega(n$).

Offset 0, canonical program `A182921.P272631166531236110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182921 (n : ℕ) : ℤ :=
  A182921.P272631166531236110.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182921.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A184655.P3941700814691838186

`ceil((A188070(3*n+5)+A008585(n))/3)`
-/

namespace A184655.P3941700814691838186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A188070 (3 * n + 5) + A008585 n : ℚ) / 3⌉

end

end A184655.P3941700814691838186

noncomputable section

/-- A184655: floor(n*s+h-h*s), where s=(3+sqrt(3))/2, h=-2/3; complement of A184654.

Offset 1, canonical program `A184655.P3941700814691838186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A184655 (n : ℕ) : ℤ :=
  A184655.P3941700814691838186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A184655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184658.P12444542043360374571

`A005206(A003622(n+1)+A140397(n+1)-1)`
-/

namespace A184658.P12444542043360374571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003622 (n + 1) + (A140397 (n + 1) - 1)).toNat

end

end A184658.P12444542043360374571

noncomputable section

/-- A184658: floor(nr+h), where r=(1+sqrt(5))/2, h=-1/3; complement of A184659.

Offset 1, canonical program `A184658.P12444542043360374571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7639 terms. -/
def A184658 (n : ℕ) : ℤ :=
  A184658.P12444542043360374571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7639 terms. -/
def A184658.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A186345.P12100612166486790659

`A186343(n+1)-A036987(A186349(n+1))`
-/

namespace A186345.P12100612166486790659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186343 (n + 1) - A036987 (A186349 (n + 1)).toNat

end

end A186345.P12100612166486790659

noncomputable section

/-- A186345: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the octagonal numbers. Complement of A186344.

Offset 1, canonical program `A186345.P12100612166486790659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 720 terms. -/
def A186345 (n : ℕ) : ℤ :=
  A186345.P12100612166486790659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 720 terms. -/
def A186345.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A187947.P11780904534146498966

`∪[A187485(n+1), A035337(n)]`
-/

namespace A187947.P11780904534146498966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187947.P11780904534146498966

noncomputable section

/-- A187947: Positions of 0 in A187946; complement of A134862.

Offset 1, canonical program `A187947.P11780904534146498966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187947 (n : ℕ) : ℤ :=
  (A187947.P11780904534146498966.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187949.P1867237293283503002

`A003622(A187485(n+1))+1`
-/

namespace A187949.P1867237293283503002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A187485 (n + 1)).toNat + 1

end

end A187949.P1867237293283503002

noncomputable section

/-- A187949: Positions of 0 in A187948; complement of A187953.

Offset 1, canonical program `A187949.P1867237293283503002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187949 (n : ℕ) : ℤ :=
  A187949.P1867237293283503002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187949.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188090.P33254598537910454

`A188082(n+1)*A188082(n+5)`
-/

namespace A188090.P33254598537910454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188082 (n + 1) * A188082 (n + 5)

end

end A188090.P33254598537910454

noncomputable section

/-- A188090: [nr+kr]-[nr]-[kr], where r=sqrt(3), k=5, [ ]=floor.

Offset 1, canonical program `A188090.P33254598537910454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A188090 (n : ℕ) : ℤ :=
  A188090.P33254598537910454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A188090.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190006.P17635641996214856473

`A190053(2*(n+1))-(n+1)`
-/

namespace A190006.P17635641996214856473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190053 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A190006.P17635641996214856473

noncomputable section

/-- A190006: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sin(Pi/3), t=csc(Pi/3).

Offset 1, canonical program `A190006.P17635641996214856473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190006 (n : ℕ) : ℤ :=
  A190006.P17635641996214856473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190247.P4317102354749526185

`filter[n+1, A190245(#)]`
-/

namespace A190247.P4317102354749526185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190245 (f1 j) = 1) n)

end

end A190247.P4317102354749526185

noncomputable section

/-- A190247: Positions of 1 in A190245; complement of A190246.

Offset 1, canonical program `A190247.P4317102354749526185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A190247 (n : ℕ) : ℤ :=
  (A190247.P4317102354749526185.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A190247.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190493.P8493265097139754522

`eq[1, A190491(n+1)]+1`
-/

namespace A190493.P8493265097139754522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190493.P8493265097139754522

noncomputable section

/-- A190493: Positions of 1 in A190491.

Offset 1, canonical program `A190493.P8493265097139754522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A190493 (n : ℕ) : ℤ :=
  (A190493.P8493265097139754522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A190493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190494.P15760637447860569934

`eq[2, A190491(n+1)]+1`
-/

namespace A190494.P15760637447860569934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190494.P15760637447860569934

noncomputable section

/-- A190494: Positions of 2 in A190491.

Offset 1, canonical program `A190494.P15760637447860569934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190494 (n : ℕ) : ℤ :=
  (A190494.P15760637447860569934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190545.P8293175414529383674

`∩[A080754(n+1), A327257(n+1)]`
-/

namespace A190545.P8293175414529383674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P8293175414529383674

noncomputable section

/-- A190545: Positions of 0 in A190544.

Offset 1, canonical program `A190545.P8293175414529383674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A190545 (n : ℕ) : ℤ :=
  (A190545.P8293175414529383674.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A190545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190554.P12672851784276818239

`A080754(∩[A080754(n+1), A327257(n+1)])-1`
-/

namespace A190554.P12672851784276818239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) - 1

end

end A190554.P12672851784276818239

noncomputable section

/-- A190554: Positions of 4 in A190549.

Offset 1, canonical program `A190554.P12672851784276818239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190554 (n : ℕ) : ℤ :=
  A190554.P12672851784276818239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190561.P4029972441182331676

`A080754(4*n+7)%A285075(n+2)`
-/

namespace A190561.P4029972441182331676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080754 (4 * n + 7)) (A285075 (n + 2))

end

end A190561.P4029972441182331676

noncomputable section

/-- A190561: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(2),4,3) and []=floor.

Offset 1, canonical program `A190561.P4029972441182331676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190561 (n : ℕ) : ℤ :=
  A190561.P4029972441182331676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190674.P7150787188508338340

`∪[A190706(n+1), A190707(n+1)]`
-/

namespace A190674.P7150787188508338340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190674.P7150787188508338340

noncomputable section

/-- A190674: Positions of 1 in A190672.

Offset 1, canonical program `A190674.P7150787188508338340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190674 (n : ℕ) : ℤ :=
  (A190674.P7150787188508338340.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190698.P11569126701504910814

`A190672(2*(n+1))+A005843(val(A022847(n+1), A198081(n+1)))`
-/

namespace A190698.P11569126701504910814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190672 (2 * (n + 1)) + A005843 (SequenceMachineLib.valuation (A022847 (n + 1)).toNat (A198081 (n + 1)).toNat)

end

end A190698.P11569126701504910814

noncomputable section

/-- A190698: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),4,1) and [ ]=floor.

Offset 1, canonical program `A190698.P11569126701504910814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190698 (n : ℕ) : ℤ :=
  A190698.P11569126701504910814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190714.P2012202855424019024

`eq[1, A190672(2*n+1)*A190672(n+2)]`
-/

namespace A190714.P2012202855424019024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190672 (2 * n + 1) * A190672 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190714.P2012202855424019024

noncomputable section

/-- A190714: Positions of 3 in A190710.

Offset 1, canonical program `A190714.P2012202855424019024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A190714 (n : ℕ) : ℤ :=
  (A190714.P2012202855424019024.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A190714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193139.P843827855032153670

`floor(A155828(n+3)/2)`
-/

namespace A193139.P843827855032153670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155828 (n + 3) : ℚ) / 2⌋

end

end A193139.P843827855032153670

noncomputable section

/-- A193139: Number of symmetric satins of order n.

Offset 3, canonical program `A193139.P843827855032153670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A193139 (n : ℕ) : ℤ :=
  A193139.P843827855032153670.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A193139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193454.P6823783162339104265

`A000593(A055034(n+1))`
-/

namespace A193454.P6823783162339104265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A055034 (n + 1)).toNat

end

end A193454.P6823783162339104265

noncomputable section

/-- A193454: Sum of odd divisors of phi(n).

Offset 1, canonical program `A193454.P6823783162339104265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193454 (n : ℕ) : ℤ :=
  A193454.P6823783162339104265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193454.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A202342.P5796561117243952660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136496, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202342 (n : ℕ) : ℤ :=
  A202342.P5796561117243952660.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136496, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202342.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A206802.P14524499921720756306

`∑[(n+1)*A028334(n+2)]`
-/

namespace A206802.P14524499921720756306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206802.P14524499921720756306

noncomputable section

/-- A206802: a(n) = (1/2)*A185382(n).

Offset 2, canonical program `A206802.P14524499921720756306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206802 (n : ℕ) : ℤ :=
  A206802.P14524499921720756306.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206802.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A211487.P12285411552525472944

`C(n, C(n, A072273(n+1)))`
-/

namespace A211487.P12285411552525472944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose n (A072273 (n + 1)).toNat)

end

end A211487.P12285411552525472944

noncomputable section

/-- A211487: Characteristic sequence of numbers n having a primitive root modulo n.

Offset 1, canonical program `A211487.P12285411552525472944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211487 (n : ℕ) : ℤ :=
  (A211487.P12285411552525472944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211487.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A216784.P9078993099628633723

`∑{p}[(n+1)²+1, A266974(#)]`
-/

namespace A216784.P9078993099628633723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A266974 p

end

end A216784.P9078993099628633723

noncomputable section

/-- A216784: a(n) is the number of distinct prime divisors of n^2 + 1 of the form m^2 + 1.

Offset 1, canonical program `A216784.P9078993099628633723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A216784 (n : ℕ) : ℤ :=
  A216784.P9078993099628633723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A216784.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A220400.P6456087209133966610

`A110654(abs(A335021(A028310(n))))`
-/

namespace A220400.P6456087209133966610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 |A335021 (A028310 n).toNat|.toNat

end

end A220400.P6456087209133966610

noncomputable section

/-- A220400: Number of ways to write n as sum of at least 2 consecutive odd positive integers.

Offset 0, canonical program `A220400.P6456087209133966610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220400 (n : ℕ) : ℤ :=
  A220400.P6456087209133966610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220400.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A224139.P389130663444024273

`A038502(A048678(Δ[n²]))`
-/

namespace A224139.P389130663444024273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A048678 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A224139.P389130663444024273

noncomputable section

/-- A224139: Double 1's in binary representations of 2*n-1, converting to decimal and dividing by maximal possible power of 3.

Offset 1, canonical program `A224139.P389130663444024273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A224139 (n : ℕ) : ℤ :=
  A224139.P389130663444024273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A224139.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A225101.P2374010593562037560

`A000918(n+1)/A214606(n+1)`
-/

namespace A225101.P2374010593562037560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000918 (n + 1) : ℚ) / (A214606 (n + 1) : ℚ)

end

end A225101.P2374010593562037560

noncomputable section

/-- A225101: Numerator of (2^n - 2)/n.

Offset 1, canonical program `A225101.P2374010593562037560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A225101 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A225101.P2374010593562037560.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A225101.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A226983.P3787028722453726426

`A307989(n+1)-ceil(n/2)`
-/

namespace A226983.P3787028722453726426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307989 (n + 1) - ⌈(n : ℚ) / 2⌉

end

end A226983.P3787028722453726426

noncomputable section

/-- A226983: a(n) = ceiling(n/2) - pi(2n) + pi(n-1).

Offset 1, canonical program `A226983.P3787028722453726426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226983 (n : ℕ) : ℤ :=
  A226983.P3787028722453726426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226983.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A227499.P775430752148590656

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A208895(n+1)`
-/

namespace A227499.P775430752148590656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A208895 (n + 1) : ℚ)

end

end A227499.P775430752148590656

noncomputable section

/-- A227499: Number of the Lipschitz quaternions in a reduced system modulo n.

Offset 1, canonical program `A227499.P775430752148590656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227499 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227499.P775430752148590656.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227499.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A230404.P3760350599277947129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A230404 (n : ℕ) : ℤ :=
  A230404.P3760350599277947129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A230404.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A234648.P13374418247733756106

`A225822(n+1)-A033999(n)`
-/

namespace A234648.P13374418247733756106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225822 (n + 1) - A033999 n

end

end A234648.P13374418247733756106

noncomputable section

/-- A234648: Even sums of 2 consecutive odious numbers (A000069).

Offset 1, canonical program `A234648.P13374418247733756106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234648 (n : ℕ) : ℤ :=
  A234648.P13374418247733756106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234648.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A239201.P12977593979021015894

`3*A242586(n)-1`
-/

namespace A239201.P12977593979021015894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A242586 n - 1

end

end A239201.P12977593979021015894

noncomputable section

/-- A239201: Expansion of -(x * sqrt(5*x^2 -6*x +1) -2*x^3 +3*x^2 -x) / ((3*x^2 -4*x +1) * sqrt(5*x^2 -6*x +1) +5*x^3 -11*x^2 +7*x -1).

Offset 1, canonical program `A239201.P12977593979021015894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A239201 (n : ℕ) : ℤ :=
  A239201.P12977593979021015894.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A239201.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A239462.P13720970013237140629

`A055436(n+1)-n`
-/

namespace A239462.P13720970013237140629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055436 (n + 1) - (n : ℤ)

end

end A239462.P13720970013237140629

noncomputable section

/-- A239462: A239459(n) / n.

Offset 1, canonical program `A239462.P13720970013237140629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239462 (n : ℕ) : ℤ :=
  A239462.P13720970013237140629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239462.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A243627.P2516176984596093208

`p?[A240603(n+1)]`
-/

namespace A243627.P2516176984596093208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243627.P2516176984596093208

noncomputable section

/-- A243627: Primes which are the sum of two consecutive squarefree numbers.

Offset 1, canonical program `A243627.P2516176984596093208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A243627 (n : ℕ) : ℤ :=
  A243627.P2516176984596093208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A243627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244149.P42596727420393069

`floor(Δ[n²]/A214606(n+1))`
-/

namespace A244149.P42596727420393069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A214606 (n + 1) : ℚ)⌋

end

end A244149.P42596727420393069

noncomputable section

/-- A244149: a(n) = 2*(n*denominator(((n-1)*(n^2)+2^(n+1)-4)/(2*n))-n)/n+1.

Offset 1, canonical program `A244149.P42596727420393069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244149 (n : ℕ) : ℤ :=
  A244149.P42596727420393069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244149.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A244342.P2243790264769858575

`A053191(n+1)/(n+1)²*A092089(n+1)`
-/

namespace A244342.P2243790264769858575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053191 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ) * (A092089 (n + 1) : ℚ)

end

end A244342.P2243790264769858575

noncomputable section

/-- A244342: a(n) = phi(n)*h(n) where phi() is the Euler totient function, A000010, and h() is A092089.

Offset 1, canonical program `A244342.P2243790264769858575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244342 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A244342.P2243790264769858575.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244342.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A245289.P17095845750979976021

`A144338(eq[A076259(n+1), A076259(n+2)]+1)`
-/

namespace A245289.P17095845750979976021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A245289.P17095845750979976021

noncomputable section

/-- A245289: Balanced squarefrees (of order one): squarefree numbers which are the average of the previous squarefree number and the following squarefree number.

Offset 1, canonical program `A245289.P17095845750979976021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3158 terms. -/
def A245289 (n : ℕ) : ℤ :=
  A245289.P17095845750979976021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3158 terms. -/
def A245289.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A247068.P6299063819757752497

`p?[A003714(n)]`
-/

namespace A247068.P6299063819757752497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247068.P6299063819757752497

noncomputable section

/-- A247068: Primes whose base-2 expansion has no two consecutive 1's.

Offset 1, canonical program `A247068.P6299063819757752497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A247068 (n : ℕ) : ℤ :=
  A247068.P6299063819757752497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A247068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247122.P6428135620263079881

`∩[A104213(n+1), A119450(n+1)]`
-/

namespace A247122.P6428135620263079881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247122.P6428135620263079881

noncomputable section

/-- A247122: Primes p such that the digit sum of p is an odd composite number.

Offset 1, canonical program `A247122.P6428135620263079881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1761 terms. -/
def A247122 (n : ℕ) : ℤ :=
  (A247122.P6428135620263079881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1761 terms. -/
def A247122.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A252895.P12324510163407338421

`filter[A337050(n+1), A353519(#)]`
-/

namespace A252895.P12324510163407338421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A252895.P12324510163407338421

noncomputable section

/-- A252895: Numbers with an odd number of square divisors.

Offset 1, canonical program `A252895.P12324510163407338421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8784 terms. -/
def A252895 (n : ℕ) : ℤ :=
  A252895.P12324510163407338421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8784 terms. -/
def A252895.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A254955.P9954194267601651593

`A031215(∑[n+1])`
-/

namespace A254955.P9954194267601651593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254955.P9954194267601651593

noncomputable section

/-- A254955: Prime numbers indexed by oblong numbers.

Offset 1, canonical program `A254955.P9954194267601651593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A254955 (n : ℕ) : ℤ :=
  A254955.P9954194267601651593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A254955.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A258977.P10372231788193796274

`A000203(A258976(n+1))²+1`
-/

namespace A258977.P10372231788193796274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A258976 (n + 1)).toNat ^ 2 + 1

end

end A258977.P10372231788193796274

noncomputable section

/-- A258977: Primes in A258974.

Offset 1, canonical program `A258977.P10372231788193796274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258977 (n : ℕ) : ℤ :=
  A258977.P10372231788193796274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258977.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A264772.P6309471126076613792

`C(A294317(n)+A025581(n), A025581(n))`
-/

namespace A264772.P6309471126076613792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 n + A025581 n).toNat (A025581 n).toNat

end

end A264772.P6309471126076613792

noncomputable section

/-- A264772: Triangle T(n,k) = binomial(3*n - 2*k, 2*n - k), 0 <= k <= n.

Offset 0, canonical program `A264772.P6309471126076613792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. -/
def A264772 (n : ℕ) : ℤ :=
  (A264772.P6309471126076613792.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. -/
def A264772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264847.P10430912638818153852

`∑[∑[A059939(A080686(n+2))]]`
-/

namespace A264847.P10430912638818153852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (A080686 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264847.P10430912638818153852

noncomputable section

/-- A264847: Pluritriangular numbers: a(0) = 0; a(n+1) = a(n) + the number of digits in terms a(0)..a(n).

Offset 0, canonical program `A264847.P10430912638818153852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A264847 (n : ℕ) : ℤ :=
  A264847.P10430912638818153852.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A264847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265026.P16061672059679295881

`Δ[A055944(n)+n*A003817(n)]`
-/

namespace A265026.P16061672059679295881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n + (n : ℤ) * A003817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265026.P16061672059679295881

noncomputable section

/-- A265026: First differences of A048701.

Offset 1, canonical program `A265026.P16061672059679295881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265026 (n : ℕ) : ℤ :=
  A265026.P16061672059679295881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265026.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A265754.P4130730414674830697

`A266640(A054429(n+1))`
-/

namespace A265754.P4130730414674830697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266640 (A054429 (n + 1)).toNat

end

end A265754.P4130730414674830697

noncomputable section

/-- A265754: Reduced frequency counts for A004001: a(n) = A265332(n+1) - A036987(n).

Offset 1, canonical program `A265754.P4130730414674830697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A265754 (n : ℕ) : ℤ :=
  A265754.P4130730414674830697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A265754.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A267999.P17200874336229400487

`eq[1, A214606(n+2)]+2`
-/

namespace A267999.P17200874336229400487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214606 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A267999.P17200874336229400487

noncomputable section

/-- A267999: Numbers n > 1 such that gcd(n, 2^n - 2) = 1.

Offset 1, canonical program `A267999.P17200874336229400487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. -/
def A267999 (n : ℕ) : ℤ :=
  (A267999.P17200874336229400487.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. -/
def A267999.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A273165.P13382101339597188664

`A078703(A045752(n+1))`
-/

namespace A273165.P13382101339597188664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (A045752 (n + 1)).toNat

end

end A273165.P13382101339597188664

noncomputable section

/-- A273165: One half the number of divisors of nonprime numbers that are 3 (mod 4).

Offset 1, canonical program `A273165.P13382101339597188664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7883 terms. -/
def A273165 (n : ℕ) : ℤ :=
  A273165.P13382101339597188664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7883 terms. -/
def A273165.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 2, canonical program `A273283.P12673250565840435264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A273283 (n : ℕ) : ℤ :=
  A273283.P12673250565840435264.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A273283.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A277335.P13601565206693033398

`3*A003714(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277335.P13601565206693033398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003714 n

end

end A277335.P13601565206693033398

noncomputable section

/-- A277335: Fibbinary numbers multiplied by three: a(n) = 3*A003714(n); Numbers where all 1-bits occur in runs of even length.

Offset 0, canonical program `A277335.P13601565206693033398`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277335 (n : ℕ) : ℤ :=
  A277335.P13601565206693033398.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277335.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A277547.P10267142650359561416

`((n+1)%(4*A038502(n+1)))%9`
-/

namespace A277547.P10267142650359561416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (n + 1 : ℤ) (4 * A038502 (n + 1))) 9

end

end A277547.P10267142650359561416

noncomputable section

/-- A277547: a(n) = n/9^m mod 9, where 9^m is the greatest power of 9 that divides n.

Offset 1, canonical program `A277547.P10267142650359561416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277547 (n : ℕ) : ℤ :=
  A277547.P10267142650359561416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277547.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A281702.P5613369963216576044

`eq[2, A000095(3*n+2)]+1`
-/

namespace A281702.P5613369963216576044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A281702.P5613369963216576044

noncomputable section

/-- A281702: Numbers k such that A001221(k) = A001221(A000326(k)).

Offset 1, canonical program `A281702.P5613369963216576044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A281702 (n : ℕ) : ℤ :=
  (A281702.P5613369963216576044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A281702.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A284775.P6819391964900779243

`char[A285307(n+1)]`
-/

namespace A284775.P6819391964900779243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284775.P6819391964900779243

noncomputable section

/-- A284775: Fixed point of the morphism 0 -> 01, 1 -> 0011.

Offset 1, canonical program `A284775.P6819391964900779243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284775 (n : ℕ) : ℤ :=
  (A284775.P6819391964900779243.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284775.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A284921.P2849752813632733205

`A284293(n+1)+A256077(n+1)`
-/

namespace A284921.P2849752813632733205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (n + 1) + A256077 (n + 1)

end

end A284921.P2849752813632733205

noncomputable section

/-- A284921: Numbers with digits 2 and 7 only.

Offset 1, canonical program `A284921.P2849752813632733205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284921 (n : ℕ) : ℤ :=
  A284921.P2849752813632733205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284921.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A285305.P17795015097415860108

`char[A285307(n+1)-1]`
-/

namespace A285305.P17795015097415860108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285305.P17795015097415860108

noncomputable section

/-- A285305: Fixed point of the morphism 0 -> 10, 1 -> 1001.

Offset 1, canonical program `A285305.P17795015097415860108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285305 (n : ℕ) : ℤ :=
  (A285305.P17795015097415860108.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285305.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A285351.P1220081497491024285

`7%A326420(n+1)`
-/

namespace A285351.P1220081497491024285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A326420 (n + 1))

end

end A285351.P1220081497491024285

noncomputable section

/-- A285351: a(n) = 2n + 1 - A285346(n).

Offset 1, canonical program `A285351.P1220081497491024285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285351 (n : ℕ) : ℤ :=
  A285351.P1220081497491024285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285406.P13392758496350615043

`A056220(n+1)-A285717(n+1)`
-/

namespace A285406.P13392758496350615043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (n + 1) - A285717 (n + 1)

end

end A285406.P13392758496350615043

noncomputable section

/-- A285406: Base-2 logarithm of denominator of Sum_{k=0..n^2-1} (-1)^k*sqrt(Pi)/(Gamma(1/2-k)*Gamma(1+k)*n).

Offset 1, canonical program `A285406.P13392758496350615043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285406 (n : ℕ) : ℤ :=
  A285406.P13392758496350615043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285406.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A166251.P5903260242460627242

`A059788(eq[1, A102820(n+1)]+2)`
-/

namespace A166251.P5903260242460627242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A166251.P5903260242460627242

noncomputable section

/-- A166251: Isolated primes: Primes p such that there is no other prime in the interval [2*prevprime(p/2), 2*nextprime(p/2)].

Offset 1, canonical program `A166251.P5903260242460627242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2948 terms. -/
def A166251 (n : ℕ) : ℤ :=
  A166251.P5903260242460627242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2948 terms. -/
def A166251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166307.P3691920292756503376

`p?[A059786(n+1)%A059788(n+2)]`
-/

namespace A166307.P3691920292756503376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059786 (n + 1)) (A059788 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166307.P3691920292756503376

noncomputable section

/-- A166307: The smallest prime in some interval of the form (2*prime(k),2*prime(k+1)) if this interval contains at least 2 primes.

Offset 1, canonical program `A166307.P3691920292756503376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166307 (n : ℕ) : ℤ :=
  A166307.P3691920292756503376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166718.P1751264215358538003

`∪[A014613(n+1), A037144(n+1)]`
-/

namespace A166718.P1751264215358538003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166718.P1751264215358538003

noncomputable section

/-- A166718: Numbers with at most 4 prime factors (counted with multiplicity).

Offset 1, canonical program `A166718.P1751264215358538003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166718 (n : ℕ) : ℤ :=
  (A166718.P1751264215358538003.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167134.P1934329230293337295

`∪[A141850(n+1), A215210(n+1)]`
-/

namespace A167134.P1934329230293337295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167134.P1934329230293337295

noncomputable section

/-- A167134: Primes congruent to {2, 3, 5, 7} mod 11.

Offset 1, canonical program `A167134.P1934329230293337295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167134 (n : ℕ) : ℤ :=
  (A167134.P1934329230293337295.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167915.P5019087640857283714

`A060254(n%a(n-1))` with `a(0)=5`
-/

namespace A167915.P5019087640857283714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A060254 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A167915.P5019087640857283714

noncomputable section

/-- A167915: Primes which are the sums of two consecutive nonprimes (A141468).

Offset 1, canonical program `A167915.P5019087640857283714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167915 (n : ℕ) : ℤ :=
  A167915.P5019087640857283714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168044.P11925367810076855045

`A167692(n+1)/2`
-/

namespace A168044.P11925367810076855045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167692 (n + 1) : ℚ) / 2

end

end A168044.P11925367810076855045

noncomputable section

/-- A168044: Half of the even nonisolated nonprimes A167692.

Offset 1, canonical program `A168044.P11925367810076855045`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168044 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A168044.P11925367810076855045.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168044.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171153.P4763760712593806838

`A308833(n+1)+A057428(n)`
-/

namespace A171153.P4763760712593806838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308833 (n + 1) + A057428 n

end

end A171153.P4763760712593806838

noncomputable section

/-- A171153: Numbers that are not in A169606.

Offset 1, canonical program `A171153.P4763760712593806838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171153 (n : ℕ) : ℤ :=
  A171153.P4763760712593806838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172181.P7608232075966226173

`filter[A047270(n+1), A005171(#)]`
-/

namespace A172181.P7608232075966226173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A172181.P7608232075966226173

noncomputable section

/-- A172181: Odd composites not of the form 6k + 1.

Offset 1, canonical program `A172181.P7608232075966226173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8366 terms. -/
def A172181 (n : ℕ) : ℤ :=
  A172181.P7608232075966226173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8366 terms. -/
def A172181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172182.P2648138099945174090

`filter[A047239(n+1), A005171(#)]`
-/

namespace A172182.P2648138099945174090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A172182.P2648138099945174090

noncomputable section

/-- A172182: Nonprimes of the form 6k + 1 or 6k + 2.

Offset 1, canonical program `A172182.P2648138099945174090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8389 terms. -/
def A172182 (n : ℕ) : ℤ :=
  A172182.P2648138099945174090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8389 terms. -/
def A172182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174680.P4657429536262417677

`A225948(n)/gcd(4, A225948(n))`
-/

namespace A174680.P4657429536262417677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225948 n : ℚ) / (Int.gcd 4 (A225948 n) : ℚ)

end

end A174680.P4657429536262417677

noncomputable section

/-- A174680: Numerator of 1/16 - 1/n^2, using -1 at the pole where n=0.

Offset 0, canonical program `A174680.P4657429536262417677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174680 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174680.P4657429536262417677.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175152.P2272878857478968243

`∩[A102656(n+1), A107960(n+1)]`
-/

namespace A175152.P2272878857478968243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175152.P2272878857478968243

noncomputable section

/-- A175152: Numbers k such that 11*k-1 and 11*k+1 are twin primes.

Offset 1, canonical program `A175152.P2272878857478968243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1137 terms. -/
def A175152 (n : ℕ) : ℤ :=
  (A175152.P2272878857478968243.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1137 terms. -/
def A175152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175212.P6570222214537579537

`filter[A176176(n+1), A373154(#)]`
-/

namespace A175212.P6570222214537579537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A175212.P6570222214537579537

noncomputable section

/-- A175212: Numbers n such that A000975(n-1)/n is an integer. Also numbers n such that arithmetic mean of the first n Jacobsthal numbers is an integer.

Offset 1, canonical program `A175212.P6570222214537579537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9655 terms. -/
def A175212 (n : ℕ) : ℤ :=
  A175212.P6570222214537579537.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9655 terms. -/
def A175212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175341.P6465404727987718190

`A304651(n²)`
-/

namespace A175341.P6465404727987718190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304651 (n ^ 2)

end

end A175341.P6465404727987718190

noncomputable section

/-- A175341: Number of coprime pairs (x,y) with x^2+y^2 <= n^2.

Offset 0, canonical program `A175341.P6465404727987718190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304651, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175341 (n : ℕ) : ℤ :=
  A175341.P6465404727987718190.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304651, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175442.P4363524815792533233

`A045344(A270189(n+2))-C(3, (n+1)²)`
-/

namespace A175442.P4363524815792533233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A270189 (n + 2)).toNat - (Nat.choose 3 ((n + 1) ^ 2) : ℤ)

end

end A175442.P4363524815792533233

noncomputable section

/-- A175442: a(n)>a(n-1), a(n) = smallest prime such that a(n)+a(n-1) is multiple of m, a(1)=2, m=3.

Offset 1, canonical program `A175442.P4363524815792533233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5980 terms. -/
def A175442 (n : ℕ) : ℤ :=
  A175442.P4363524815792533233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5980 terms. -/
def A175442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175461.P7243031227193031304

`filter[A004770(n+1), A340370(#)]`
-/

namespace A175461.P7243031227193031304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A175461.P7243031227193031304

noncomputable section

/-- A175461: Semiprimes of form 8n+5.

Offset 1, canonical program `A175461.P7243031227193031304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175461 (n : ℕ) : ℤ :=
  A175461.P7243031227193031304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175942.P12736010176665163979

`p?[-A187307(A015921(n+1))]`
-/

namespace A175942.P12736010176665163979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A187307 (A015921 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175942.P12736010176665163979

noncomputable section

/-- A175942: Odd numbers k such that 4^k == 4 (mod 3*k) and 2^(k-1) == 4 (mod 3*(k-1)).

Offset 1, canonical program `A175942.P12736010176665163979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A175942 (n : ℕ) : ℤ :=
  A175942.P12736010176665163979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A175942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176562.P7798059674671749075

`A305117(n²)`
-/

namespace A176562.P7798059674671749075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n ^ 2)

end

end A176562.P7798059674671749075

noncomputable section

/-- A176562: a(n) = A175341(n)/4.

Offset 0, canonical program `A176562.P7798059674671749075`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176562 (n : ℕ) : ℤ :=
  A176562.P7798059674671749075.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179445.P5484428261871917909

`floor(p?[A005171(n+1)+10*(n+1)]/10)`
-/

namespace A179445.P5484428261871917909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + (10 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 10⌋

end

end A179445.P5484428261871917909

noncomputable section

/-- A179445: Nonprimes m such that 10m + 1 are primes.

Offset 1, canonical program `A179445.P5484428261871917909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179445 (n : ℕ) : ℤ :=
  A179445.P5484428261871917909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179446.P7289325605206415384

`p?[A005171(n+1)+10*(n+1)]`
-/

namespace A179446.P7289325605206415384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + (10 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179446.P7289325605206415384

noncomputable section

/-- A179446: Primes p of form p = 10k + 1, where k is nonprime.

Offset 1, canonical program `A179446.P7289325605206415384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179446 (n : ℕ) : ℤ :=
  A179446.P7289325605206415384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179887.P13528417586907878350

`filter[A179871(n+1), A005171(#)]`
-/

namespace A179887.P13528417586907878350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A179887.P13528417586907878350

noncomputable section

/-- A179887: Nonprimes q such that antiharmonic mean B(q) of the numbers k < q such that gcd(k, q) = 1 is an integer, where B(q) = A053818(q) / A023896(q) = A175505(q) / A175506(q).

Offset 1, canonical program `A179887.P13528417586907878350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7706 terms. -/
def A179887 (n : ℕ) : ℤ :=
  A179887.P13528417586907878350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7706 terms. -/
def A179887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180868.P7115571650315980028

`A085155(eq[1, A085155(n+2)-A085155(n+1)]+1)`
-/

namespace A180868.P7115571650315980028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 2) - A085155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A180868.P7115571650315980028

noncomputable section

/-- A180868: Numbers n such that n and n+1 are semiprime powers.

Offset 1, canonical program `A180868.P7115571650315980028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A180868 (n : ℕ) : ℤ :=
  A180868.P7115571650315980028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A180868.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A181343.P14848600219606950203

`A181342(n+2)-A008383(n+1)`
-/

namespace A181343.P14848600219606950203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181342 (n + 2) - A008383 (n + 1)

end

end A181343.P14848600219606950203

noncomputable section

/-- A181343: a(n) = (35*n^4 - 35*n^3 + 55*n^2 - 25*n + 6)/6.

Offset 1, canonical program `A181343.P14848600219606950203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A181343 (n : ℕ) : ℤ :=
  A181343.P14848600219606950203.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A181343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183217.P17290192021715052783

`eq[0, A255849(n)]`
-/

namespace A183217.P17290192021715052783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183217.P17290192021715052783

noncomputable section

/-- A183217: Complement of the pentagonal numbers.

Offset 1, canonical program `A183217.P17290192021715052783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183217 (n : ℕ) : ℤ :=
  (A183217.P17290192021715052783.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186342.P568721468802834445

`comp[A186343(n+1)-1]+1`
-/

namespace A186342.P568721468802834445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186343 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186342.P568721468802834445

noncomputable section

/-- A186342: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the octagonal numbers. Complement of A186343.

Offset 1, canonical program `A186342.P568721468802834445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186342 (n : ℕ) : ℤ :=
  (A186342.P568721468802834445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186342.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189371.P7053851831812294228

`A003152(n+1)+A184812(n+1)-A184809(n+1)`
-/

namespace A189371.P7053851831812294228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) + (A184812 (n + 1) - A184809 (n + 1))

end

end A189371.P7053851831812294228

noncomputable section

/-- A189371: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=sqrt(2), t=sqrt(5).

Offset 1, canonical program `A189371.P7053851831812294228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189371 (n : ℕ) : ℤ :=
  A189371.P7053851831812294228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189371.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A191414.P14543827223812260222

`A034448(n+1)*A047994(n+1)`
-/

namespace A191414.P14543827223812260222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) * A047994 (n + 1)

end

end A191414.P14543827223812260222

noncomputable section

/-- A191414: Unitary Jordan function J_2^*(n).

Offset 1, canonical program `A191414.P14543827223812260222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A191414 (n : ℕ) : ℤ :=
  A191414.P14543827223812260222.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A191414.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 2, canonical program `A193140.P15573877660645811182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A193140 (n : ℕ) : ℤ :=
  A193140.P15573877660645811182.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A193140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193336.P4671642988780716037

`A051027(n+1)-A193337(n+1)`
-/

namespace A193336.P4671642988780716037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - A193337 (n + 1)

end

end A193336.P4671642988780716037

noncomputable section

/-- A193336: Sum of even divisors of sigma(n).

Offset 1, canonical program `A193336.P4671642988780716037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193336 (n : ℕ) : ℤ :=
  A193336.P4671642988780716037.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193336.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A209061.P8943037496521672999

`filter[n+1, A370598(#)]`
-/

namespace A209061.P8943037496521672999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j) = 1) n)

end

end A209061.P8943037496521672999

noncomputable section

/-- A209061: Exponentially squarefree numbers.

Offset 1, canonical program `A209061.P8943037496521672999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9560 terms. -/
def A209061 (n : ℕ) : ℤ :=
  (A209061.P8943037496521672999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9560 terms. -/
def A209061.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A225680.P11244675384131354868

`A319677(2*A005117(n+1)-A005117(n+1))`
-/

namespace A225680.P11244675384131354868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319677 (2 * A005117 (n + 1) - A005117 (n + 1)).toNat

end

end A225680.P11244675384131354868

noncomputable section

/-- A225680: Denominators of phi(k)/k, as k runs through the squarefree numbers (A005117).

Offset 1, canonical program `A225680.P11244675384131354868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225680 (n : ℕ) : ℤ :=
  A225680.P11244675384131354868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225680.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A228382.P1375136025872469721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228382 (n : ℕ) : ℤ :=
  A228382.P1375136025872469721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228382.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A240923.P7245222179821891144

`A017665(n+1)-A000203(A017666(n+1))`
-/

namespace A240923.P7245222179821891144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) - A000203 (A017666 (n + 1)).toNat

end

end A240923.P7245222179821891144

noncomputable section

/-- A240923: a(n) = numerator(sigma(n)/n) - sigma(denominator(sigma(n)/n)).

Offset 1, canonical program `A240923.P7245222179821891144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240923 (n : ℕ) : ℤ :=
  A240923.P7245222179821891144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240923.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A243473.P145029483165858518

`A017665(n+1)-A017666(n+1)`
-/

namespace A243473.P145029483165858518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) - A017666 (n + 1)

end

end A243473.P145029483165858518

noncomputable section

/-- A243473: a(n) = numerator(sigma(n)/n) - denominator(sigma(n)/n) where sigma(n) = sum of divisors of n.

Offset 1, canonical program `A243473.P145029483165858518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243473 (n : ℕ) : ℤ :=
  A243473.P145029483165858518.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243473.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A248663.P4155660683917625723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A248663 (n : ℕ) : ℤ :=
  A248663.P4155660683917625723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A248663.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A249670.P6555047459186973760

`A017665(n+1)*A017666(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249670.P6555047459186973760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) * A017666 (n + 1)

end

end A249670.P6555047459186973760

noncomputable section

/-- A249670: a(n) = A017665(n)*A017666(n).

Offset 1, canonical program `A249670.P6555047459186973760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249670 (n : ℕ) : ℤ :=
  A249670.P6555047459186973760.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249670.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A258776.P5594703475324302981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2122 terms. -/
def A258776 (n : ℕ) : ℤ :=
  A258776.P5594703475324302981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2122 terms. -/
def A258776.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A259186.P17881752095375684835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1737 terms. -/
def A259186 (n : ℕ) : ℤ :=
  A259186.P17881752095375684835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1737 terms. -/
def A259186.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A260626.P15351941485670242193

`A014491(A018252(n+1))`
-/

namespace A260626.P15351941485670242193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (A018252 (n + 1)).toNat

end

end A260626.P15351941485670242193

noncomputable section

/-- A260626: a(n) = gcd(m, 2^m-1) where m is the n-th nonprime positive integer.

Offset 1, canonical program `A260626.P15351941485670242193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8771 terms. -/
def A260626 (n : ℕ) : ℤ :=
  A260626.P15351941485670242193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8771 terms. -/
def A260626.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A266400.P10626207752406824023

`A020900(A072192(n+1))`
-/

namespace A266400.P10626207752406824023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020900 (A072192 (n + 1)).toNat

end

end A266400.P10626207752406824023

noncomputable section

/-- A266400: Indices of primes in A005097.

Offset 1, canonical program `A266400.P10626207752406824023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1222 terms. -/
def A266400 (n : ℕ) : ℤ :=
  A266400.P10626207752406824023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1222 terms. -/
def A266400.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A277802.P14535280603892177794

`A011262(A004709(n+1))`
-/

namespace A277802.P14535280603892177794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A004709 (n + 1)).toNat

end

end A277802.P14535280603892177794

noncomputable section

/-- A277802: The least k > 0 such that k*A004709(n) is a cube.

Offset 1, canonical program `A277802.P14535280603892177794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A277802 (n : ℕ) : ℤ :=
  A277802.P14535280603892177794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A277802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281926.P17761781644500305404

`∩[2*A014613(n+1), A001043(n+1)]`
-/

namespace A281926.P17761781644500305404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281926.P17761781644500305404

noncomputable section

/-- A281926: Numbers that are the product of exactly 5 primes and are of the form prime(k) + prime(k + 1).

Offset 1, canonical program `A281926.P17761781644500305404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. -/
def A281926 (n : ℕ) : ℤ :=
  (A281926.P17761781644500305404.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. -/
def A281926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283479.P9458400494979520689

`A283474(A284013(n+1)+floor(acot(n)))`
-/

namespace A283479.P9458400494979520689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283474 (A284013 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A283479.P9458400494979520689

noncomputable section

/-- A283479: First differences of A283474.

Offset 1, canonical program `A283479.P9458400494979520689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2559 terms. -/
def A283479 (n : ℕ) : ℤ :=
  A283479.P9458400494979520689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2559 terms. -/
def A283479.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A283670.P1865209332245731642

`A071327(A190641(n+1))`
-/

namespace A283670.P1865209332245731642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071327 (A190641 (n + 1)).toNat

end

end A283670.P1865209332245731642

noncomputable section

/-- A283670: The single square referenced in A190641.

Offset 1, canonical program `A283670.P1865209332245731642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283670 (n : ℕ) : ℤ :=
  A283670.P1865209332245731642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283670.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A285335.P13559979395462859715

`A048675(Δ[n²])/2`
-/

namespace A285335.P13559979395462859715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048675 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A285335.P13559979395462859715

noncomputable section

/-- A285335: Odd bisection of A048675 divided by two: a(n) = A048675((2*n)-1)/2.

Offset 1, canonical program `A285335.P13559979395462859715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1121 terms. -/
def A285335 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285335.P13559979395462859715.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1121 terms. -/
def A285335.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A285800.P7588634103840983572

`eq[0, A340372(n+1)]+1`
-/

namespace A285800.P7588634103840983572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285800.P7588634103840983572

noncomputable section

/-- A285800: Numbers having more than one odd prime factor to an odd power in their prime factorization.

Offset 1, canonical program `A285800.P7588634103840983572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285800 (n : ℕ) : ℤ :=
  (A285800.P7588634103840983572.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285801.P12013862398410093951

`eq[1, A340372(n+1)]+1`
-/

namespace A285801.P12013862398410093951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285801.P12013862398410093951

noncomputable section

/-- A285801: Numbers having at most one odd prime factor to an odd power in their prime factorization.

Offset 1, canonical program `A285801.P12013862398410093951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285801 (n : ℕ) : ℤ :=
  (A285801.P12013862398410093951.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174916.P15451532924887177754

`p?[A023218(n+1)+2]-2`
-/

namespace A174916.P15451532924887177754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A174916.P15451532924887177754

noncomputable section

/-- A174916: Lesser of twin primes p1 such that p1 + p2^2 - p1^2 is a prime number.

Offset 1, canonical program `A174916.P15451532924887177754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A174916 (n : ℕ) : ℤ :=
  A174916.P15451532924887177754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A174916.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190723.P6473342380060936674

`a(n-1)+a(A284749(n))` with `a(0)=1`
-/

namespace A190723.P6473342380060936674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A284749 n).toNat

end

end A190723.P6473342380060936674

noncomputable section

/-- A190723: Numbers m for which A055778(m) > A055778(m-1).

Offset 1, canonical program `A190723.P6473342380060936674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190723 (n : ℕ) : ℤ :=
  (A190723.P6473342380060936674.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190723.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A211410.P5242894833094007403

`∩[A014612(n+1), A221865(n+1)]`
-/

namespace A211410.P5242894833094007403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211410.P5242894833094007403

noncomputable section

/-- A211410: Chen triprimes, triprimes (A014612) m such that m+2 is either prime or semiprime.

Offset 1, canonical program `A211410.P5242894833094007403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2947 terms. -/
def A211410 (n : ℕ) : ℤ :=
  (A211410.P5242894833094007403.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2947 terms. -/
def A211410.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A225520.P8131934353027779697

`2*∑{d}[n+1, A259936(#)]`
-/

namespace A225520.P8131934353027779697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A259936 d)

end

end A225520.P8131934353027779697

noncomputable section

/-- A225520: The number of subsets of the set of divisors of n in which elements are pairwise coprime.

Offset 1, canonical program `A225520.P8131934353027779697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A225520 (n : ℕ) : ℤ :=
  A225520.P8131934353027779697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A225520.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A245588.P14787650861621797003

`A291711(A026351(n))-1`
-/

namespace A245588.P14787650861621797003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291711 (A026351 n).toNat - 1

end

end A245588.P14787650861621797003

noncomputable section

/-- A245588: The minimal number of coins needed to make change for n units in a currency system with coins of value 1,2,5,13,34,89,...,Fibonacci(2k-1).

Offset 0, canonical program `A245588.P14787650861621797003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6181 terms. -/
def A245588 (n : ℕ) : ℤ :=
  A245588.P14787650861621797003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6181 terms. -/
def A245588.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171453.P4881999374342782724

`A008475(n+1)-A067240(n+1)`
-/

namespace A171453.P4881999374342782724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) - A067240 (n + 1)

end

end A171453.P4881999374342782724

noncomputable section

/-- A171453: a(n) = sum_i p_i^(e_i-1) where n = product_i p_i^e_i is the prime number decomposition of n.

Offset 1, canonical program `A171453.P4881999374342782724`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, A067240, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171453 (n : ℕ) : ℤ :=
  A171453.P4881999374342782724.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, A067240, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171453.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174321.P612213315116284694

`A000720(A151800(A016922(n)))`
-/

namespace A174321.P612213315116284694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 (A016922 n).toNat).toNat

end

end A174321.P612213315116284694

noncomputable section

/-- A174321: Index of the smallest prime greater than (6n+1)^2.

Offset 0, canonical program `A174321.P612213315116284694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A174321 (n : ℕ) : ℤ :=
  A174321.P612213315116284694.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A174321.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A184815.P17423450562420843

`A000720(p?[A184812(n+1)])`
-/

namespace A184815.P17423450562420843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184815.P17423450562420843

noncomputable section

/-- A184815: Numbers m such that prime(m) is of the form k+floor(ks/r)+floor(kt/r), where r=sqrt(2), s=sqrt(3), t=sqrt(5).

Offset 1, canonical program `A184815.P17423450562420843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1067 terms. -/
def A184815 (n : ℕ) : ℤ :=
  A184815.P17423450562420843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1067 terms. -/
def A184815.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A212177.P3563866381432259569

`A001221(A084936(n+1))`
-/

namespace A212177.P3563866381432259569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A084936 (n + 1)).toNat

end

end A212177.P3563866381432259569

noncomputable section

/-- A212177: Number of exponents >= 2 in the canonical prime factorization of the n-th nonsquarefree number (A013929(n)).

Offset 1, canonical program `A212177.P3563866381432259569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212177 (n : ℕ) : ℤ :=
  A212177.P3563866381432259569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212177.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A232438.P17320831510734793226

`∩[A028982(n+1), A084646(n+1)]`
-/

namespace A232438.P17320831510734793226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P17320831510734793226

noncomputable section

/-- A232438: Squares or double-squares that are the sum of two distinct nonzero squares in exactly one way.

Offset 1, canonical program `A232438.P17320831510734793226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 534 terms. -/
def A232438 (n : ℕ) : ℤ :=
  (A232438.P17320831510734793226.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 534 terms. -/
def A232438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236678.P11070967660282356039

`a(n-1)+A236677(n)` with `a(0)=1`
-/

namespace A236678.P11070967660282356039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A236677 n

end

end A236678.P11070967660282356039

noncomputable section

/-- A236678: Partial sums of the characteristic function of A079599.

Offset 0, canonical program `A236678.P11070967660282356039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A236677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236678 (n : ℕ) : ℤ :=
  A236678.P11070967660282356039.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A236677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236678.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A240473.P18421913364524954093

`A000040(n+1)-A112925(n+1)`
-/

namespace A240473.P18421913364524954093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A112925 (n + 1)

end

end A240473.P18421913364524954093

noncomputable section

/-- A240473: Distance from prime(n) to the closest smaller squarefree number.

Offset 1, canonical program `A240473.P18421913364524954093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A112925, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A240473 (n : ℕ) : ℤ :=
  A240473.P18421913364524954093.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A112925, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A240473.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A258456.P9693069320443912273

`∪[A030140(n+1), A182358(n+1)]`
-/

namespace A258456.P9693069320443912273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A258456.P9693069320443912273

noncomputable section

/-- A258456: Product of divisors of n is not a square.

Offset 1, canonical program `A258456.P9693069320443912273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258456 (n : ℕ) : ℤ :=
  (A258456.P9693069320443912273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258456.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A271342.P3433703997216414430`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A078471, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A271342 (n : ℕ) : ℤ :=
  A271342.P3433703997216414430.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A078471, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A271342.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A283988.P2207824751527369544

`A283986(n+1)-A283987(n+1)`
-/

namespace A283988.P2207824751527369544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283986 (n + 1) - A283987 (n + 1)

end

end A283988.P2207824751527369544

noncomputable section

/-- A283988: a(n) = A002487(n-1) AND A002487(n), where AND is bitwise-and (A004198).

Offset 1, canonical program `A283988.P2207824751527369544`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283986, A283987, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283988 (n : ℕ) : ℤ :=
  A283988.P2207824751527369544.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283986, A283987, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165406.P12134847753010490514

`A007088(A165404(n))`
-/

namespace A165406.P12134847753010490514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A165404 n).toNat

end

end A165406.P12134847753010490514

noncomputable section

/-- A165406: Sequence A165404 shown in binary, or equivalently, sequence A163901 in quaternary base.

Offset 0, canonical program `A165406.P12134847753010490514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A165406 (n : ℕ) : ℤ :=
  A165406.P12134847753010490514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A165406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165930.P10363881907716294125

`A028310(Δ[A064491(A028310(n))])`
-/

namespace A165930.P10363881907716294125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A165930.P10363881907716294125

noncomputable section

/-- A165930: a(1) = 1, for n > 1: a(n) = tau(sum of the previous terms) where tau(k) = number of the divisors of k.

Offset 1, canonical program `A165930.P10363881907716294125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165930 (n : ℕ) : ℤ :=
  A165930.P10363881907716294125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166698.P12793159027236630514

`A353557(n+1)-A353558(n+1)`
-/

namespace A166698.P12793159027236630514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (n + 1) - A353558 (n + 1)

end

end A166698.P12793159027236630514

noncomputable section

/-- A166698: Totally multiplicative sequence with a(p) = a(p-1) - 1 for prime p.

Offset 1, canonical program `A166698.P12793159027236630514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353557, A353558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166698 (n : ℕ) : ℤ :=
  A166698.P12793159027236630514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353557, A353558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166698.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167343.P6110866401223025561

`A003958(n+1)²`
-/

namespace A167343.P6110866401223025561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) ^ 2

end

end A167343.P6110866401223025561

noncomputable section

/-- A167343: Totally multiplicative sequence with a(p) = (p-1)^2 = p^2-2p+1 for prime p.

Offset 1, canonical program `A167343.P6110866401223025561`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167343 (n : ℕ) : ℤ :=
  A167343.P6110866401223025561.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171743.P15561868395415999019

`A000010(Δ[A061802(n)])`
-/

namespace A171743.P15561868395415999019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A171743.P15561868395415999019

noncomputable section

/-- A171743: a(n) = A000010(A001043(n)).

Offset 1, canonical program `A171743.P15561868395415999019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A171743 (n : ℕ) : ℤ :=
  A171743.P15561868395415999019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A171743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172969.P13289703455094161202

`eq[A016789(A032741(n)), A114003(n+1)]`
-/

namespace A172969.P13289703455094161202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172969.P13289703455094161202

noncomputable section

/-- A172969: Numbers k such that 3*A000005(k) = 2*A000005(k+1).

Offset 1, canonical program `A172969.P13289703455094161202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A172969 (n : ℕ) : ℤ :=
  (A172969.P13289703455094161202.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A172969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174875.P13371474732863424214

`A245092(A131507(n))%A000005(A002260(n+1))`
-/

namespace A174875.P13371474732863424214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245092 (A131507 n).toNat) (A000005 (A002260 (n + 1)).toNat)

end

end A174875.P13371474732863424214

noncomputable section

/-- A174875: Triangle read by rows: T(n,k) = sigma(n) mod tau(k), where sigma(.) is the sum of divisors and tau(.) is the number of divisors.

Offset 1, canonical program `A174875.P13371474732863424214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A174875 (n : ℕ) : ℤ :=
  A174875.P13371474732863424214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A174875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175116.P9810145318194581764

`eq[A014681(A092517(n+1)), A032741(n)]`
-/

namespace A175116.P9810145318194581764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A092517 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175116.P9810145318194581764

noncomputable section

/-- A175116: A positive integer k is included if d(k) = d(k+1) * d(k+2), where d(k) is the number of divisors of k.

Offset 1, canonical program `A175116.P9810145318194581764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A175116 (n : ℕ) : ℤ :=
  (A175116.P9810145318194581764.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A175116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175926.P9140002761882308950

`∑{d}[n+1, #*A160889(#)]`
-/

namespace A175926.P9140002761882308950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A160889 d

end

end A175926.P9140002761882308950

noncomputable section

/-- A175926: Sum of divisors of cubes.

Offset 1, canonical program `A175926.P9140002761882308950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175926 (n : ℕ) : ℤ :=
  A175926.P9140002761882308950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177236.P14113996674392224070

`A049820(n+1)-A177235(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177236.P14113996674392224070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A177235 (n + 1)

end

end A177236.P14113996674392224070

noncomputable section

/-- A177236: a(n) = A049820(n) - A177235(n).

Offset 1, canonical program `A177236.P14113996674392224070`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, A177235, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A177236 (n : ℕ) : ℤ :=
  A177236.P14113996674392224070.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, A177235, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A177236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179019.P4552771100310599832

`(A179017(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179019.P4552771100310599832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179017 (n + 1) + 1 : ℚ) / 2

end

end A179019.P4552771100310599832

noncomputable section

/-- A179019: a(n) = (A179017(n)+1)/2.

Offset 1, canonical program `A179019.P4552771100310599832`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179019 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A179019.P4552771100310599832.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179019.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A182817.P14309563797210267358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8771 terms. -/
def A182817 (n : ℕ) : ℤ :=
  A182817.P14309563797210267358.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8771 terms. -/
def A182817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183063.P14549643650991336837

`A062011(n+1)-A099777(n+1)`
-/

namespace A183063.P14549643650991336837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) - A099777 (n + 1)

end

end A183063.P14549643650991336837

noncomputable section

/-- A183063: Number of even divisors of n.

Offset 1, canonical program `A183063.P14549643650991336837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062011, A099777, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183063 (n : ℕ) : ℤ :=
  A183063.P14549643650991336837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062011, A099777, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183063.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A183095.P16118821317782953757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183095 (n : ℕ) : ℤ :=
  A183095.P16118821317782953757.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190355.P15183790579650426373

`∩[A030630(n+1)+1, A030630(n+1)-1]`
-/

namespace A190355.P15183790579650426373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190355.P15183790579650426373

noncomputable section

/-- A190355: Numbers n such that d(n-1)=d(n+1)=12 where d(k)=A000005(k) (number of divisors of k).

Offset 1, canonical program `A190355.P15183790579650426373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 809 terms. -/
def A190355 (n : ℕ) : ℤ :=
  (A190355.P15183790579650426373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 809 terms. -/
def A190355.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A193495.P4686144499966697871

`A001227(A000032(n))`
-/

namespace A193495.P4686144499966697871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A000032 n).toNat

end

end A193495.P4686144499966697871

noncomputable section

/-- A193495: Number of odd divisors of Lucas(n), Lucas numbers beginning at 2.

Offset 0, canonical program `A193495.P4686144499966697871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193495 (n : ℕ) : ℤ :=
  A193495.P4686144499966697871.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193495.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194532.P2568676926494303915

`A069091(n+1)/A007434(n+1)`
-/

namespace A194532.P2568676926494303915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069091 (n + 1) : ℚ) / (A007434 (n + 1) : ℚ)

end

end A194532.P2568676926494303915

noncomputable section

/-- A194532: Jordan function ratio J_6(n)/J_2(n).

Offset 1, canonical program `A194532.P2568676926494303915`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, A069091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A194532 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A194532.P2568676926494303915.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, A069091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A194532.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A195150.P8159304006399446490

`A137921(n+1)-1`
-/

namespace A195150.P8159304006399446490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137921 (n + 1) - 1

end

end A195150.P8159304006399446490

noncomputable section

/-- A195150: Number of divisors d of n such that d-1 does not divide n.

Offset 1, canonical program `A195150.P8159304006399446490`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137921, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195150 (n : ℕ) : ℤ :=
  A195150.P8159304006399446490.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137921, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A202994.P1913166836536099714

`∑{d}[n+1, #*A160891(#)]`
-/

namespace A202994.P1913166836536099714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A160891 d

end

end A202994.P1913166836536099714

noncomputable section

/-- A202994: a(n) = sigma(n^4).

Offset 1, canonical program `A202994.P1913166836536099714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202994 (n : ℕ) : ℤ :=
  A202994.P1913166836536099714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203556.P11660705081824917351

`∑{d}[n+1, #*A160893(#)]`
-/

namespace A203556.P11660705081824917351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A160893 d

end

end A203556.P11660705081824917351

noncomputable section

/-- A203556: a(n) = sigma(n^5).

Offset 1, canonical program `A203556.P11660705081824917351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203556 (n : ℕ) : ℤ :=
  A203556.P11660705081824917351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203556.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A211432.P3080294099686376554

`2*A349538(n)-1`
-/

namespace A211432.P3080294099686376554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A349538 n - 1

end

end A211432.P3080294099686376554

noncomputable section

/-- A211432: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^2=x^2+y^2.

Offset 0, canonical program `A211432.P3080294099686376554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 583 terms. -/
def A211432 (n : ℕ) : ℤ :=
  A211432.P3080294099686376554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 583 terms. -/
def A211432.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A216412.P4166279177706564649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A216412 (n : ℕ) : ℤ :=
  A216412.P4166279177706564649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A216412.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A226384.P3146837539781542249

`eq[A003958(n+1), A007947(A000010(n+1))]+1`
-/

namespace A226384.P3146837539781542249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226384.P3146837539781542249

noncomputable section

/-- A226384: Numbers k such that rad(phi(k)) = phi(rad(k)).

Offset 1, canonical program `A226384.P3146837539781542249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4268 terms. -/
def A226384 (n : ℕ) : ℤ :=
  (A226384.P3146837539781542249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4268 terms. -/
def A226384.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A227184.P3484603111831403944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243499, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227184 (n : ℕ) : ℤ :=
  A227184.P3484603111831403944.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243499, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227184.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A232626.P4533820239225470968

`A055035(A060819(n+1))`
-/

namespace A232626.P4533820239225470968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (A060819 (n + 1)).toNat

end

end A232626.P4533820239225470968

noncomputable section

/-- A232626: Degree of the algebraic number 2*sin(4*Pi/n).

Offset 1, canonical program `A232626.P4533820239225470968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232626 (n : ℕ) : ℤ :=
  A232626.P4533820239225470968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232626.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A236288.P3577133205354347482`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236288.P3577133205354347482.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236288.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A236627.P10038142205825407156`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236627 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236627.P10038142205825407156.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236627.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A243747.P6224960804244215047

`A035184(A259445(n+2))-A002325(n+2)`
-/

namespace A243747.P6224960804244215047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (A259445 (n + 2)).toNat - A002325 (n + 2)

end

end A243747.P6224960804244215047

noncomputable section

/-- A243747: Expansion of (phi(q) - phi(q^2))^2 / 4 in powers of q where phi() is a Ramanujan theta function.

Offset 2, canonical program `A243747.P6224960804244215047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A243747 (n : ℕ) : ℤ :=
  A243747.P6224960804244215047.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A243747.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A245742.P1630487989177979838

`p?[A095824(n+1)]`
-/

namespace A245742.P1630487989177979838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245742.P1630487989177979838

noncomputable section

/-- A245742: Primes p such that p + d is also prime, where d is the largest digit of p.

Offset 1, canonical program `A245742.P1630487989177979838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. -/
def A245742 (n : ℕ) : ℤ :=
  A245742.P1630487989177979838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. -/
def A245742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247074.P11215480859319137546

`(A109606(n+1)+1)/A063994(n+1)`
-/

namespace A247074.P11215480859319137546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) / (A063994 (n + 1) : ℚ)

end

end A247074.P11215480859319137546

noncomputable section

/-- A247074: a(n) = phi(n)/(Product_{primes p dividing n } gcd(p - 1, n - 1)).

Offset 1, canonical program `A247074.P11215480859319137546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247074 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A247074.P11215480859319137546.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247074.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A249140.P13605386914329055997

`A003958(A002808(n+1))`
-/

namespace A249140.P13605386914329055997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A002808 (n + 1)).toNat

end

end A249140.P13605386914329055997

noncomputable section

/-- A249140: To obtain a(n), write the n-th composite number as a product of primes, subtract 1 from each prime and multiply.

Offset 1, canonical program `A249140.P13605386914329055997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249140 (n : ℕ) : ℤ :=
  A249140.P13605386914329055997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249140.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A262676.P18432955920466000923`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262676 (n : ℕ) : ℤ :=
  A262676.P18432955920466000923.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262676.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A262677.P4700777990299745989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262677 (n : ℕ) : ℤ :=
  A262677.P4700777990299745989.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262677.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A262680.P1054294860154401112`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A049820, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A262680 (n : ℕ) : ℤ :=
  A262680.P1054294860154401112.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A049820, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A262680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262902.P17755329208628960078

`A045765(n+1)-A000005(A045765(n+1))`
-/

namespace A262902.P17755329208628960078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1) - A000005 (A045765 (n + 1)).toNat

end

end A262902.P17755329208628960078

noncomputable section

/-- A262902: a(n) = A049820(A045765(n)); parent-nodes of the leaves of the tree generated by edge-relation A049820(child) = parent.

Offset 1, canonical program `A262902.P17755329208628960078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262902 (n : ℕ) : ℤ :=
  A262902.P17755329208628960078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262902.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A274359.P5756310034310855443

`∩[A005237(n+1), A030634(n+1)]`
-/

namespace A274359.P5756310034310855443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274359.P5756310034310855443

noncomputable section

/-- A274359: Numbers k such that k and k+1 both have 16 divisors.

Offset 1, canonical program `A274359.P5756310034310855443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 661 terms. -/
def A274359 (n : ℕ) : ℤ :=
  (A274359.P5756310034310855443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 661 terms. -/
def A274359.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A279436.P15978742674708459391`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, A062298, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A279436 (n : ℕ) : ℤ :=
  A279436.P15978742674708459391.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, A062298, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A280184.P6105905186965531621

`∑{d}[n+1, A160891(#)]`
-/

namespace A280184.P6105905186965531621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160891 d

end

end A280184.P6105905186965531621

noncomputable section

/-- A280184: Number of cyclic subgroups of the group C_n x C_n x C_n x C_n, where C_n is the cyclic group of order n.

Offset 1, canonical program `A280184.P6105905186965531621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280184 (n : ℕ) : ℤ :=
  A280184.P6105905186965531621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280184.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A169968.P10176697459246325094

`comp[A169884(n+1)]`
-/

namespace A169968.P10176697459246325094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A169968.P10176697459246325094

noncomputable section

/-- A169968: Positive integers not in A169884.

Offset 1, canonical program `A169968.P10176697459246325094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169968 (n : ℕ) : ℤ :=
  (A169968.P10176697459246325094.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172186.P17237444168487211502

`(A179017(n+1)-1)/2`
-/

namespace A172186.P17237444168487211502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179017 (n + 1) - 1 : ℚ) / 2

end

end A172186.P17237444168487211502

noncomputable section

/-- A172186: Numbers k such that k, k+1 and 2*k+1 are squarefree.

Offset 1, canonical program `A172186.P17237444168487211502`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172186 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A172186.P17237444168487211502.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172186.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173971.P2217788028575188822

`A000040(A175893(n+1))`
-/

namespace A173971.P2217788028575188822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A175893 (n + 1)).toNat

end

end A173971.P2217788028575188822

noncomputable section

/-- A173971: Primes p such that 2*p+q is prime, where q is the prime following p.

Offset 1, canonical program `A173971.P2217788028575188822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173971 (n : ℕ) : ℤ :=
  A173971.P2217788028575188822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175496.P16856827143371470346

`filter[A336593(n+1), A359473(#)]`
-/

namespace A175496.P16856827143371470346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P16856827143371470346

noncomputable section

/-- A175496: Positive integers k where k is not squarefree but the number of divisors of k is a power of 2.

Offset 1, canonical program `A175496.P16856827143371470346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7997 terms. -/
def A175496 (n : ℕ) : ℤ :=
  A175496.P16856827143371470346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7997 terms. -/
def A175496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176892.P325327665077823368

`A305989(n)+A002276(A070939(n))`
-/

namespace A176892.P325327665077823368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 n + A002276 (A070939 n).toNat

end

end A176892.P325327665077823368

noncomputable section

/-- A176892: Decimal representation of the reverted binary representation of n followed by digits substitution 0->2, 1->3.

Offset 0, canonical program `A176892.P325327665077823368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176892 (n : ℕ) : ℤ :=
  A176892.P325327665077823368.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176892.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A180783.P7782268968714750835

`A000010(n+1)%(n+1)-A329152(n+1)`
-/

namespace A180783.P7782268968714750835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (n + 1 : ℤ) - A329152 (n + 1)

end

end A180783.P7782268968714750835

noncomputable section

/-- A180783: Number of distinct solutions of Sum_{i=1..1} (x(2i-1)*x(2i)) == 1 (mod n), with x() in {1,2,...,n-1}.

Offset 1, canonical program `A180783.P7782268968714750835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180783 (n : ℕ) : ℤ :=
  A180783.P7782268968714750835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180783.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A271329.P16519031655475004611

`∑{d}[A007304(n+1), #]`
-/

namespace A271329.P16519031655475004611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A271329.P16519031655475004611

noncomputable section

/-- A271329: a(n) is the sum of the divisors of the n-th sphenic number (A007304).

Offset 1, canonical program `A271329.P16519031655475004611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271329 (n : ℕ) : ℤ :=
  (A271329.P16519031655475004611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271329.provenance : SequenceMachineLib.Provenance := .conjectured

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

