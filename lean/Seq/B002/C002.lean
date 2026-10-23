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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A096143.P14316011638880613569

`ceil(A001008(n+1)/A002805(n+1))`
-/

namespace A096143.P14316011638880613569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001008 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)⌉

end

end A096143.P14316011638880613569

noncomputable section

/-- A096143: a(n) = ceiling(Sum_{i=1..n} 1/i).

Offset 1, canonical program `A096143.P14316011638880613569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096143 (n : ℕ) : ℤ :=
  A096143.P14316011638880613569.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096143.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096289.P10983530805932168913

`A000120(n)+A053824(n)`
-/

namespace A096289.P10983530805932168913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A053824 n

end

end A096289.P10983530805932168913

noncomputable section

/-- A096289: Sum of digits of n in bases 2 and 5.

Offset 0, canonical program `A096289.P10983530805932168913`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096289 (n : ℕ) : ℤ :=
  A096289.P10983530805932168913.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096289.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096662.P12573431005364411900

`A007501(n+1)`
-/

namespace A096662.P12573431005364411900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007501 (n + 1)

end

end A096662.P12573431005364411900

noncomputable section

/-- A096662: Least nontrivial n-tuply triangular number.

Offset 1, canonical program `A096662.P12573431005364411900`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096662 (n : ℕ) : ℤ :=
  A096662.P12573431005364411900.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097017.P15742144128177953416

`A084301(5*(n+1))`
-/

namespace A097017.P15742144128177953416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084301 (5 * (n + 1))

end

end A097017.P15742144128177953416

noncomputable section

/-- A097017: a(n) = sigma(5*n) modulo 6.

Offset 1, canonical program `A097017.P15742144128177953416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097017 (n : ℕ) : ℤ :=
  A097017.P15742144128177953416.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097017.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097022.P6513166181426899163

`(A065765(n+1)-3)/6`
-/

namespace A097022.P6513166181426899163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065765 (n + 1) - 3 : ℚ) / 6

end

end A097022.P6513166181426899163

noncomputable section

/-- A097022: a(n) = (sigma(2n^2)-3)/6.

Offset 1, canonical program `A097022.P6513166181426899163`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097022 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A097022.P6513166181426899163.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097022.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097508.P15482133836038292803

`A001951(n)-n`
-/

namespace A097508.P15482133836038292803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n - (n : ℤ)

end

end A097508.P15482133836038292803

noncomputable section

/-- A097508: a(n) = floor(n*(sqrt(2)-1)).

Offset 0, canonical program `A097508.P15482133836038292803`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097508 (n : ℕ) : ℤ :=
  A097508.P15482133836038292803.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097632.P14085746065119856610

`A000204(n+1)*A066318(n+1)`
-/

namespace A097632.P14085746065119856610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A066318 (n + 1)

end

end A097632.P14085746065119856610

noncomputable section

/-- A097632: a(n) = 2^n * Lucas(n) * (n-1)!.

Offset 1, canonical program `A097632.P14085746065119856610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097632 (n : ℕ) : ℤ :=
  A097632.P14085746065119856610.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097632.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097662.P16094723525980984548

`A002720(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A097662.P16094723525980984548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n - 1

end

end A097662.P16094723525980984548

noncomputable section

/-- A097662: a(n) = A002720(n) - 1.

Offset 0, canonical program `A097662.P16094723525980984548`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097662 (n : ℕ) : ℤ :=
  A097662.P16094723525980984548.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098219.P11141698969919353704

`floor(A051027(n+1)/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098219.P11141698969919353704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051027 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A098219.P11141698969919353704

noncomputable section

/-- A098219: a(n) = floor(sigma(sigma(n))/n) = floor(A051027(n)/n).

Offset 1, canonical program `A098219.P11141698969919353704`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098219 (n : ℕ) : ℤ :=
  A098219.P11141698969919353704.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098219.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098890.P17272869798312743783

`A098602(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098890.P17272869798312743783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098602 n + 1

end

end A098890.P17272869798312743783

noncomputable section

/-- A098890: a(n) = A001652(n)*A046090(n)+1 = A098602(n)+1.

Offset 0, canonical program `A098890.P17272869798312743783`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098890 (n : ℕ) : ℤ :=
  A098890.P17272869798312743783.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099244.P823863561371780859

`gcd(A070939(n+1), A000120(n+1))`
-/

namespace A099244.P823863561371780859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070939 (n + 1)) (A000120 (n + 1))

end

end A099244.P823863561371780859

noncomputable section

/-- A099244: Greatest common divisor of length of n in binary representation and its number of ones.

Offset 1, canonical program `A099244.P823863561371780859`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099244 (n : ℕ) : ℤ :=
  (A099244.P823863561371780859.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099246.P5806609912808460663

`A070939(n)/gcd(A070939(n), A000120(n))`
-/

namespace A099246.P5806609912808460663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 n : ℚ) / (Int.gcd (A070939 n) (A000120 n) : ℚ)

end

end A099246.P5806609912808460663

noncomputable section

/-- A099246: Denominator of relative frequency of number of ones in the binary representation of n.

Offset 0, canonical program `A099246.P5806609912808460663`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099246 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099246.P5806609912808460663.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099246.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099375.P13700148065993022910

`2*A004736(n+1)-1`
-/

namespace A099375.P13700148065993022910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004736 (n + 1) - 1

end

end A099375.P13700148065993022910

noncomputable section

/-- A099375: Sequence matrix for odd numbers.

Offset 0, canonical program `A099375.P13700148065993022910`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099375 (n : ℕ) : ℤ :=
  A099375.P13700148065993022910.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099638.P15899235441177012148

`A098210(n+1)/15`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099638.P15899235441177012148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098210 (n + 1) : ℚ) / 15

end

end A099638.P15899235441177012148

noncomputable section

/-- A099638: a(n) = A098210(n)/15.

Offset 1, canonical program `A099638.P15899235441177012148`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099638 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099638.P15899235441177012148.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099638.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100892.P5668575000177681908

`A088837(n+1)-1`
-/

namespace A100892.P5668575000177681908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088837 (n + 1) - 1

end

end A100892.P5668575000177681908

noncomputable section

/-- A100892: a(n) = (2*n-1) XOR (2*n+1), bitwise.

Offset 1, canonical program `A100892.P5668575000177681908`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100892 (n : ℕ) : ℤ :=
  A100892.P5668575000177681908.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100892.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101799.P18286270317429535391

`A055209(n)*A002720(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101799.P18286270317429535391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055209 n * A002720 (n + 1)

end

end A101799.P18286270317429535391

noncomputable section

/-- A101799: a(n)= det[A000522(i+j+1)], i,j=0...n, is the Hankel determinant of order n+1 of the arrangements numbers, s. A000522; a(n) = product( (p!)^2,p=0..n )*(n+1)!*LaguerreL(n+1,0,-1), n=0,1..., where LaguerreL(n,lambda,x) are generalized Laguerre polynomials; a(n)=A055209(n)*A002720(n+1);.

Offset 0, canonical program `A101799.P18286270317429535391`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101799 (n : ℕ) : ℤ :=
  A101799.P18286270317429535391.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101800.P11975487397842622249

`abs(A055209(n)*A009940(n+1))`
-/

namespace A101800.P11975487397842622249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055209 n * A009940 (n + 1)|

end

end A101800.P11975487397842622249

noncomputable section

/-- A101800: a(n)= abs(det[A000166(i+j+1)]), i,j=0...n, is the absolute value of the Hankel determinant of order n+1 of the derangements numbers, cf. A000166.

Offset 0, canonical program `A101800.P11975487397842622249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101800 (n : ℕ) : ℤ :=
  A101800.P11975487397842622249.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101800.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101926.P10081112457634097054

`2^A101925(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101926.P10081112457634097054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A101925 n : ℤ)

end

end A101926.P10081112457634097054

noncomputable section

/-- A101926: a(n) = 2^A101925(n).

Offset 0, canonical program `A101926.P10081112457634097054`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101926 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A101926.P10081112457634097054.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101926.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102376.P15707539213794308439

`4^A000120(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102376.P15707539213794308439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A000120 n : ℤ)

end

end A102376.P15707539213794308439

noncomputable section

/-- A102376: a(n) = 4^A000120(n).

Offset 0, canonical program `A102376.P15707539213794308439`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102376 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102376.P15707539213794308439.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102376.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102377.P13436876123217032879

`10^A000120(n)`
-/

namespace A102377.P13436876123217032879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A000120 n : ℤ)

end

end A102377.P13436876123217032879

noncomputable section

/-- A102377: Gould's sequence A001316 in binary.

Offset 0, canonical program `A102377.P13436876123217032879`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102377 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102377.P13436876123217032879.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102389.P14110874914439114042

`(1+floor(n/2))*(1+(-1)^A000120(n))/2`
-/

namespace A102389.P14110874914439114042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + ⌊(n : ℚ) / 2⌋ : ℚ) * (1 + (-1 : ℚ) ^ (A000120 n : ℤ)) / 2

end

end A102389.P14110874914439114042

noncomputable section

/-- A102389: An evil count.

Offset 0, canonical program `A102389.P14110874914439114042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102389 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102389.P14110874914439114042.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102390.P3960873466461559496

`(1+floor(n/2))*(1-(-1)^A000120(n))/2`
-/

namespace A102390.P3960873466461559496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + ⌊(n : ℚ) / 2⌋ : ℚ) * (1 - (-1 : ℚ) ^ (A000120 n : ℤ)) / 2

end

end A102390.P3960873466461559496

noncomputable section

/-- A102390: An odious count.

Offset 0, canonical program `A102390.P3960873466461559496`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102390 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102390.P3960873466461559496.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102390.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102393.P8577092184968738453

`(n+1)*(1+(-1)^A000120(n))/2`
-/

namespace A102393.P8577092184968738453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (1 + (-1 : ℚ) ^ (A000120 n : ℤ)) / 2

end

end A102393.P8577092184968738453

noncomputable section

/-- A102393: A wicked evil sequence.

Offset 0, canonical program `A102393.P8577092184968738453`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102393 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102393.P8577092184968738453.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102393.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102394.P12165741716525845284

`(n+1)*(1-(-1)^A000120(n))/2`
-/

namespace A102394.P12165741716525845284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (1 - (-1 : ℚ) ^ (A000120 n : ℤ)) / 2

end

end A102394.P12165741716525845284

noncomputable section

/-- A102394: A wicked odious sequence.

Offset 0, canonical program `A102394.P12165741716525845284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102394 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102394.P12165741716525845284.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102394.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102564.P14718973119229357206

`A000120(A078008(n))-A078008(A000120(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102564.P14718973119229357206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A078008 n).toNat - A078008 (A000120 n).toNat

end

end A102564.P14718973119229357206

noncomputable section

/-- A102564: A000120(A078008(n))-A078008(A000120(n)).

Offset 0, canonical program `A102564.P14718973119229357206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102564 (n : ℕ) : ℤ :=
  A102564.P14718973119229357206.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102564.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104792.P15780514001539090027

`A000330(A004736(n+1))`
-/

namespace A104792.P15780514001539090027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A004736 (n + 1)).toNat

end

end A104792.P15780514001539090027

noncomputable section

/-- A104792: Triangle T(n,k) = A000330(n-k), n>=1, 0<=k

Offset 1, canonical program `A104792.P15780514001539090027`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104792 (n : ℕ) : ℤ :=
  A104792.P15780514001539090027.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104792.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104793.P11127849527871265283

`A023537(A004736(n+1))`
-/

namespace A104793.P11127849527871265283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (A004736 (n + 1)).toNat

end

end A104793.P11127849527871265283

noncomputable section

/-- A104793: Triangle T(n,k) = A023537(n-k), n >= 1, 0 <= k < n, read by rows.

Offset 1, canonical program `A104793.P11127849527871265283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104793 (n : ℕ) : ℤ :=
  A104793.P11127849527871265283.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104793.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105220.P13322071171121659733

`2-A088917(n)`
-/

namespace A105220.P13322071171121659733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A088917 n

end

end A105220.P13322071171121659733

noncomputable section

/-- A105220: Trajectory of 1 under the morphism 1->{1,2,1}, 2->{2,2,2}.

Offset 0, canonical program `A105220.P13322071171121659733`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105220 (n : ℕ) : ℤ :=
  A105220.P13322071171121659733.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105220.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106271.P8734074727395476678

`1-A014138(n)`
-/

namespace A106271.P8734074727395476678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014138 n

end

end A106271.P8734074727395476678

noncomputable section

/-- A106271: Row sums of number triangle A106270.

Offset 0, canonical program `A106271.P8734074727395476678`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106271 (n : ℕ) : ℤ :=
  A106271.P8734074727395476678.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106640.P13671692357537978349

`A000108(n+1)-A005043(n+1)`
-/

namespace A106640.P13671692357537978349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A005043 (n + 1)

end

end A106640.P13671692357537978349

noncomputable section

/-- A106640: Row sums of A059346.

Offset 0, canonical program `A106640.P13671692357537978349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106640 (n : ℕ) : ℤ :=
  A106640.P13671692357537978349.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107251.P18036125735927967973

`A079478(n)/A000142(n+1)`
-/

namespace A107251.P18036125735927967973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079478 n : ℚ) / (A000142 (n + 1) : ℚ)

end

end A107251.P18036125735927967973

noncomputable section

/-- A107251: Supercatalan numbers SF(2n)/(SF(n)*SF(n+1)) where SF is the superfactorial function A000178.

Offset 0, canonical program `A107251.P18036125735927967973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107251 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107251.P18036125735927967973.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107681.P6693878412057773898

`A005836(A062050(n+2))`
-/

namespace A107681.P6693878412057773898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A062050 (n + 2)).toNat

end

end A107681.P6693878412057773898

noncomputable section

/-- A107681: Repeat(first 2^k numbers with no 2 in ternary representation) for k>0.

Offset 1, canonical program `A107681.P6693878412057773898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107681 (n : ℕ) : ℤ :=
  A107681.P6693878412057773898.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107681.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107891.P7884879305984148283

`(A000330(n+2)*A000538(n+2)-A000537(n+2)²)/4`
-/

namespace A107891.P7884879305984148283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000330 (n + 2) * A000538 (n + 2) - A000537 (n + 2) ^ 2 : ℚ) / 4

end

end A107891.P7884879305984148283

noncomputable section

/-- A107891: a(n) = (n+1)*(n+2)^2*(n+3)^2*(n+4)*(3n^2 + 15n + 20)/2880.

Offset 0, canonical program `A107891.P7884879305984148283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107891 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107891.P7884879305984148283.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107891.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108678.P8916393138229401493

`A000537(n+1)+A002415(n+1)`
-/

namespace A108678.P8916393138229401493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) + A002415 (n + 1)

end

end A108678.P8916393138229401493

noncomputable section

/-- A108678: a(n) = (n+1)^2*(n+2)*(2*n+3)/6.

Offset 0, canonical program `A108678.P8916393138229401493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108678 (n : ℕ) : ℤ :=
  A108678.P8916393138229401493.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108678.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108679.P9730175226178725277

`(A005585(n+2)²-A288876(n+1))/24`
-/

namespace A108679.P9730175226178725277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005585 (n + 2) ^ 2 - A288876 (n + 1) : ℚ) / 24

end

end A108679.P9730175226178725277

noncomputable section

/-- A108679: a(n) = (n+1)*(n+2)^2*(n+3)^2*(n+4)^2*(n+5)^2*(n+6)/86400.

Offset 0, canonical program `A108679.P9730175226178725277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108679 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A108679.P9730175226178725277.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108679.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109849.P1288347001958710852

`lcm(n+1, a(A080079(n-1)-1))` with `a(0)=1, a(1)=2`
-/

namespace A109849.P1288347001958710852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lcm (n + 1) (a (A080079 (n - 1) - 1).toNat)

end

end A109849.P1288347001958710852

noncomputable section

/-- A109849: a(1) = 1, a(2) = 2; a(n) = lcm(n, a(n-2)), a(n+1) = lcm((n+1), a(n-3)) and so on until a(2n-1) = lcm(2n-1, a(1)). Then a(2n) = lcm(2n, a(2n-2)) and so on.

Offset 1, canonical program `A109849.P1288347001958710852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109849 (n : ℕ) : ℤ :=
  (A109849.P1288347001958710852.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109849.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110257.P16520114715403784889

`(4*n+1)*A002894(n)/4^A000120(n)`
-/

namespace A110257.P16520114715403784889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n + 1 : ℤ) * A002894 n : ℚ) / (4 : ℚ) ^ (A000120 n : ℤ)

end

end A110257.P16520114715403784889

noncomputable section

/-- A110257: Numerators in the coefficients that form the odd-indexed partial quotients of the continued fraction representation of the inverse tangent of 1/x.

Offset 1, canonical program `A110257.P16520114715403784889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110257 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A110257.P16520114715403784889.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110257.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112008.P10946631168994066137

`(n+7)*a(n-1)+(n+1)*A002539(n)` with `a(0)=1`
-/

namespace A112008.P10946631168994066137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 7 : ℤ) * a (n - 1) + (n + 1 : ℤ) * A002539 n

end

end A112008.P10946631168994066137

noncomputable section

/-- A112008: Fourth diagonal of second-order Eulerian triangle A008517. Fourth column (m=3) of triangle A112007.

Offset 0, canonical program `A112008.P10946631168994066137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112008 (n : ℕ) : ℤ :=
  A112008.P10946631168994066137.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112367.P5378126856570841990

`A000217(n-A057944(n))`
-/

namespace A112367.P5378126856570841990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n : ℤ) - A057944 n).toNat

end

end A112367.P5378126856570841990

noncomputable section

/-- A112367: a(n) = A000217(n-k), where k is the largest triangular number less than n.

Offset 0, canonical program `A112367.P5378126856570841990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112367 (n : ℕ) : ℤ :=
  A112367.P5378126856570841990.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112489.P5073704333748817868

`(n+6)*a(n-1)+(n+5)*A112488(n+2)` with `a(0)=15`
-/

namespace A112489.P5073704333748817868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  (n + 6 : ℤ) * a (n - 1) + (n + 5 : ℤ) * A112488 (n + 2)

end

end A112489.P5073704333748817868

noncomputable section

/-- A112489: Fourth column of triangle A112486 used for e.g.f.s of |Stirling1|=|A008275| diagonals.

Offset 3, canonical program `A112489.P5073704333748817868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112489 (n : ℕ) : ℤ :=
  A112489.P5073704333748817868.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112489.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112497.P5345261462036478010

`5*a(n-1)+(n+7)*A112496(n)` with `a(0)=105`
-/

namespace A112497.P5345261462036478010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [105] fun n a =>
  5 * a (n - 1) + (n + 7 : ℤ) * A112496 n

end

end A112497.P5345261462036478010

noncomputable section

/-- A112497: Fifth column of triangle A112493 used for e.g.f.s of Stirling2 diagonals.

Offset 0, canonical program `A112497.P5345261462036478010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112497 (n : ℕ) : ℤ :=
  A112497.P5345261462036478010.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A114619.P14883267576841951743

`2*A079291(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114619.P14883267576841951743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079291 n

end

end A114619.P14883267576841951743

noncomputable section

/-- A114619: a(n) = 2*A079291(n) (twice squares of Pell numbers).

Offset 0, canonical program `A114619.P14883267576841951743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114619 (n : ℕ) : ℤ :=
  A114619.P14883267576841951743.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115384.P10033913726558094609

`floor((n+1)/2)+(1+(-1)^n)*(1-(-1)^A000120(n))/4`
-/

namespace A115384.P10033913726558094609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / 2⌋ : ℚ) + (1 + (-1) ^ n : ℚ) * (1 - (-1 : ℚ) ^ (A000120 n : ℤ)) / 4

end

end A115384.P10033913726558094609

noncomputable section

/-- A115384: Partial sums of Thue-Morse numbers A010060.

Offset 0, canonical program `A115384.P10033913726558094609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115384 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115384.P10033913726558094609.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115384.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115902.P2573848008066962846

`2^n*A002457(n)`
-/

namespace A115902.P2573848008066962846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002457 n

end

end A115902.P2573848008066962846

noncomputable section

/-- A115902: Expansion of (1-8*x)^(-3/2).

Offset 0, canonical program `A115902.P2573848008066962846`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115902 (n : ℕ) : ℤ :=
  A115902.P2573848008066962846.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115902.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115903.P5062678535628825191

`3^n*A002457(n)`
-/

namespace A115903.P5062678535628825191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A002457 n

end

end A115903.P5062678535628825191

noncomputable section

/-- A115903: Expansion of (1-12*x)^(-3/2).

Offset 0, canonical program `A115903.P5062678535628825191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115903 (n : ℕ) : ℤ :=
  A115903.P5062678535628825191.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115903.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117722.P14536613535452170244

`A000045(A003622(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117722.P14536613535452170244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003622 (n + 1)).toNat

end

end A117722.P14536613535452170244

noncomputable section

/-- A117722: a(n) = A000045(A003622(n)).

Offset 0, canonical program `A117722.P14536613535452170244`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117722 (n : ℕ) : ℤ :=
  A117722.P14536613535452170244.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117722.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117998.P3500614632528046177

`A048726(a(n-1))` with `a(0)=1`
-/

namespace A117998.P3500614632528046177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048726 (a (n - 1)).toNat

end

end A117998.P3500614632528046177

noncomputable section

/-- A117998: Decimal number generated by the binary bits of the n-th generation of the Rule 102 elementary cellular automaton.

Offset 0, canonical program `A117998.P3500614632528046177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117998 (n : ℕ) : ℤ :=
  A117998.P3500614632528046177.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117998.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119248.P9120946014621865842

`A075829(n+2)`
-/

namespace A119248.P9120946014621865842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075829 (n + 2)

end

end A119248.P9120946014621865842

noncomputable section

/-- A119248: a(n) is the difference between denominator and numerator of the n-th alternating harmonic number Sum_{k=1..n} (-1)^(k+1)/k = A058313(n)/A058312(n).

Offset 1, canonical program `A119248.P9120946014621865842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119248 (n : ℕ) : ℤ :=
  A119248.P9120946014621865842.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119248.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119697.P9446901935336878940

`n*A119694(n)`
-/

namespace A119697.P9446901935336878940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A119694 n

end

end A119697.P9446901935336878940

noncomputable section

/-- A119697: a(n) = Fibonacci(n)*n*binomial(2*n,n)/(n+1).

Offset 0, canonical program `A119697.P9446901935336878940`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119697 (n : ℕ) : ℤ :=
  A119697.P9446901935336878940.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119697.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A120079.P4461166114329905866

`(2-1/(n+1)²)*A051418(n+1)`
-/

namespace A120079.P4461166114329905866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - 1 / ((n + 1) ^ 2 : ℚ)) * (A051418 (n + 1) : ℚ)

end

end A120079.P4461166114329905866

noncomputable section

/-- A120079: Unsigned row sums of triangle A120078.

Offset 1, canonical program `A120079.P4461166114329905866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120079 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120079.P4461166114329905866.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120079.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120474.P16095270401045431404

`A093879(n+2)-A093879(n+1)`
-/

namespace A120474.P16095270401045431404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093879 (n + 2) - A093879 (n + 1)

end

end A120474.P16095270401045431404

noncomputable section

/-- A120474: Second differences of A004001.

Offset 1, canonical program `A120474.P16095270401045431404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120474 (n : ℕ) : ℤ :=
  A120474.P16095270401045431404.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120738.P9838444930846786751

`4*n-A000120(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A120738.P9838444930846786751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A000120 n

end

end A120738.P9838444930846786751

noncomputable section

/-- A120738: a(n) = 4*n - A000120(n).

Offset 0, canonical program `A120738.P9838444930846786751`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120738 (n : ℕ) : ℤ :=
  A120738.P9838444930846786751.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120738.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121613.P12497213193092273123

`(-1)^n*A008438(n)`
-/

namespace A121613.P12497213193092273123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A008438 n

end

end A121613.P12497213193092273123

noncomputable section

/-- A121613: Expansion of psi(-x)^4 in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A121613.P12497213193092273123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121613 (n : ℕ) : ℤ :=
  A121613.P12497213193092273123.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121613.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123057.P3491790178531440000

`2*A123056(n)`
-/

namespace A123057.P3491790178531440000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123056 n

end

end A123057.P3491790178531440000

noncomputable section

/-- A123057: Values x of solutions (x, y) to the Diophantine equation (x-y)^4 - 8*x*y = 0 with x >= y.

Offset 0, canonical program `A123057.P3491790178531440000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123057 (n : ℕ) : ℤ :=
  A123057.P3491790178531440000.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123116.P10623391634681793158

`2*A123115(n)`
-/

namespace A123116.P10623391634681793158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123115 n

end

end A123116.P10623391634681793158

noncomputable section

/-- A123116: Values y of solutions (x, y) to the Diophantine equation (x-y)^4 - 8*x*y = 0 with x >= y.

Offset 0, canonical program `A123116.P10623391634681793158`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123116 (n : ℕ) : ℤ :=
  A123116.P10623391634681793158.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123116.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123899.P16570814073594301494

`(n+1)!/(A093101(n)*A093101(n+1))`
-/

namespace A123899.P16570814073594301494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A093101 n * A093101 (n + 1) : ℚ)

end

end A123899.P16570814073594301494

noncomputable section

/-- A123899: a(n) = (n+1)!/(d(n)*d(n+1)) where d(n) = cancellation factor in reducing Sum_{k=0...n} 1/k! to lowest terms.

Offset 0, canonical program `A123899.P16570814073594301494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123899 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123899.P16570814073594301494.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123899.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123900.P8261275927121685626

`(n+3)!/(A093101(n)*A093101(n+1)*A093101(n+2))`
-/

namespace A123900.P8261275927121685626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℚ) / (A093101 n * A093101 (n + 1) * A093101 (n + 2) : ℚ)

end

end A123900.P8261275927121685626

noncomputable section

/-- A123900: a(n) = (n+3)!/(d(n)*d(n+1)*d(n+2)) where d(n) = cancellation factor in reducing Sum_{k=0...n} 1/k! to lowest terms.

Offset 0, canonical program `A123900.P8261275927121685626`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123900 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123900.P8261275927121685626.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123922.P8101883956895217603

`A047749(n)*A047749(n+1)`
-/

namespace A123922.P8101883956895217603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 n * A047749 (n + 1)

end

end A123922.P8101883956895217603

noncomputable section

/-- A123922: Number of 2143-avoiding Dumont paths of the 2nd kind of length 2n.

Offset 0, canonical program `A123922.P8101883956895217603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123922 (n : ℕ) : ℤ :=
  A123922.P8101883956895217603.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124781.P10088639858972442460

`gcd(A093101(n), A093101(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A124781.P10088639858972442460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093101 n) (A093101 (n + 2))

end

end A124781.P10088639858972442460

noncomputable section

/-- A124781: a(n) = gcd(A093101(n), A093101(n+2)) where A093101(n) = gcd(n!, A(n)) and A(n) = A000522(n) = Sum_{k=0..n} n!/k!.

Offset 0, canonical program `A124781.P10088639858972442460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124781 (n : ℕ) : ℤ :=
  (A124781.P10088639858972442460.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124781.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124782.P208028333149663752

`(n+3)/A124780(n)`
-/

namespace A124782.P208028333149663752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A124780 n : ℚ)

end

end A124782.P208028333149663752

noncomputable section

/-- A124782: a(n) = (n+3)/gcd(A(n), A(n+2)) where A(n) = A000522(n) = Sum_{k=0..n} n!/k!.

Offset 0, canonical program `A124782.P208028333149663752`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124782 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A124782.P208028333149663752.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124782.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A125652.P12154372188380910291

`sqrt(A125650(A125651(n+1)))`
-/

namespace A125652.P12154372188380910291
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A125650 (A125651 (n + 1)).toNat : ℝ)

end

end A125652.P12154372188380910291

noncomputable section

/-- A125652: Numbers m such that m^2=A125650(k) for some k (belonging A125651).

Offset 1, canonical program `A125652.P12154372188380910291`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125652 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125652.P12154372188380910291.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A125824.P17644202284966607848

`3^A089792(n)`
-/

namespace A125824.P17644202284966607848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A089792 n : ℤ)

end

end A125824.P17644202284966607848

noncomputable section

/-- A125824: Denominator of n!/3^n.

Offset 0, canonical program `A125824.P17644202284966607848`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125824 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125824.P17644202284966607848.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127595.P10869157516398669446

`A001906(n)*A004146(n)`
-/

namespace A127595.P10869157516398669446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A004146 n

end

end A127595.P10869157516398669446

noncomputable section

/-- A127595: a(n) = F(4n) - 2F(2n) where F(n) = Fibonacci numbers A000045.

Offset 0, canonical program `A127595.P10869157516398669446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127595 (n : ℕ) : ℤ :=
  A127595.P10869157516398669446.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127595.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128614.P4000369767337592701

`(n+2)!*A005043(n+1)`
-/

namespace A128614.P4000369767337592701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℤ) * A005043 (n + 1)

end

end A128614.P4000369767337592701

noncomputable section

/-- A128614: Number of labeled plane trees with n edges in which no vertex has outdegree one.

Offset 1, canonical program `A128614.P4000369767337592701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128614 (n : ℕ) : ℤ :=
  A128614.P4000369767337592701.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128650.P16731929856799845103

`4*A001791(n)`
-/

namespace A128650.P16731929856799845103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001791 n

end

end A128650.P16731929856799845103

noncomputable section

/-- A128650: Number of polygons on n vertices with exactly three faces.

Offset 2, canonical program `A128650.P16731929856799845103`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128650 (n : ℕ) : ℤ :=
  A128650.P16731929856799845103.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128650.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129184.P10440994507416109383

`A010054(n+2)`
-/

namespace A129184.P10440994507416109383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2)

end

end A129184.P10440994507416109383

noncomputable section

/-- A129184: Shift operator, right.

Offset 1, canonical program `A129184.P10440994507416109383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129184 (n : ℕ) : ℤ :=
  A129184.P10440994507416109383.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129184.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129202.P3619037989143956245

`A026741(n+1)*A051176(n+1)`
-/

namespace A129202.P3619037989143956245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) * A051176 (n + 1)

end

end A129202.P3619037989143956245

noncomputable section

/-- A129202: Denominator of 3*(3+(-1)^n) / (n+1)^2.

Offset 0, canonical program `A129202.P3619037989143956245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129202 (n : ℕ) : ℤ :=
  A129202.P3619037989143956245.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129588.P12646106946499544468

`16*A008438(n)`
-/

namespace A129588.P12646106946499544468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A008438 n

end

end A129588.P12646106946499544468

noncomputable section

/-- A129588: Expansion of q^-1 * theta_2(q)^4 in powers of q^2.

Offset 0, canonical program `A129588.P12646106946499544468`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129588 (n : ℕ) : ℤ :=
  A129588.P12646106946499544468.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130750.P14488460667816927176

`2^(n+1)+A128834(n+4)`
-/

namespace A130750.P14488460667816927176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) + A128834 (n + 4)

end

end A130750.P14488460667816927176

noncomputable section

/-- A130750: Binomial transform of A010882.

Offset 0, canonical program `A130750.P14488460667816927176`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130750 (n : ℕ) : ℤ :=
  A130750.P14488460667816927176.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130752.P9194626256441328904

`2^(n+1)+A128834(n)`
-/

namespace A130752.P9194626256441328904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) + A128834 n

end

end A130752.P9194626256441328904

noncomputable section

/-- A130752: Binomial transform of periodic sequence (2, 3, 1).

Offset 0, canonical program `A130752.P9194626256441328904`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130752 (n : ℕ) : ℤ :=
  A130752.P9194626256441328904.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130752.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130755.P8640777015960531994

`2^(n+1)+A128834(n+2)`
-/

namespace A130755.P8640777015960531994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) + A128834 (n + 2)

end

end A130755.P8640777015960531994

noncomputable section

/-- A130755: Binomial transform of periodic sequence (3, 1, 2).

Offset 0, canonical program `A130755.P8640777015960531994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130755 (n : ℕ) : ℤ :=
  A130755.P8640777015960531994.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130755.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131668.P2464046413389403191

`A051885(2*n+1)`
-/

namespace A131668.P2464046413389403191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (2 * n + 1)

end

end A131668.P2464046413389403191

noncomputable section

/-- A131668: Smallest number whose sum of digits is 2n+1.

Offset 0, canonical program `A131668.P2464046413389403191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131668 (n : ℕ) : ℤ :=
  A131668.P2464046413389403191.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131668.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131762.P2142285092514220910

`32-A000120(n)`
-/

namespace A131762.P2142285092514220910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - A000120 n

end

end A131762.P2142285092514220910

noncomputable section

/-- A131762: Number of 1s in the 1's complement of the 32-bit binary representation of n.

Offset 0, canonical program `A131762.P2142285092514220910`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131762 (n : ℕ) : ℤ :=
  A131762.P2142285092514220910.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131762.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133296.P4224983109469996391

`A051885(2*n)`
-/

namespace A133296.P4224983109469996391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (2 * n)

end

end A133296.P4224983109469996391

noncomputable section

/-- A133296: Smallest number whose sum of digits is 2n.

Offset 0, canonical program `A133296.P4224983109469996391`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133296 (n : ℕ) : ℤ :=
  A133296.P4224983109469996391.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133296.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133910.P7626543162645923989

`A064446(n+1)/(n+1)`
-/

namespace A133910.P7626543162645923989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064446 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A133910.P7626543162645923989

noncomputable section

/-- A133910: Period numbers of A133900 divided by n^2.

Offset 1, canonical program `A133910.P7626543162645923989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133910 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133910.P7626543162645923989.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134467.P13825419003851249081

`n*(n+1)-A000120(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134467.P13825419003851249081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) : ℤ) - A000120 n

end

end A134467.P13825419003851249081

noncomputable section

/-- A134467: a(n) = n(n+1) - A000120(n), where A000120(n) = number of 1's in binary expansion of n.

Offset 0, canonical program `A134467.P13825419003851249081`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134467 (n : ℕ) : ℤ :=
  A134467.P13825419003851249081.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134467.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134508.P12291140053637182191

`A000071(n+3)+A029907(n+1)-(n+1)`
-/

namespace A134508.P12291140053637182191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) + A029907 (n + 1) - (n + 1 : ℤ)

end

end A134508.P12291140053637182191

noncomputable section

/-- A134508: Row sums of triangle A134507.

Offset 1, canonical program `A134508.P12291140053637182191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134508 (n : ℕ) : ℤ :=
  A134508.P12291140053637182191.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135389.P8667978144181006220

`A001791(n+1)*A000984(n+1)`
-/

namespace A135389.P8667978144181006220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) * A000984 (n + 1)

end

end A135389.P8667978144181006220

noncomputable section

/-- A135389: Number of walks of length 2*n+2 from origin to (1,1) in a square lattice.

Offset 0, canonical program `A135389.P8667978144181006220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135389 (n : ℕ) : ℤ :=
  A135389.P8667978144181006220.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135540.P6682804189538680421

`2^(A000523(n+1)-A000120(n+1)+2)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135540.P6682804189538680421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000523 (n + 1) - A000120 (n + 1) + 2 : ℤ) - 1

end

end A135540.P6682804189538680421

noncomputable section

/-- A135540: a(n) = 2^(A000523(n) - A000120(n) + 2) - 1.

Offset 1, canonical program `A135540.P6682804189538680421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135540 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135540.P6682804189538680421.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135540.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135569.P11530090348024496574

`A000120(n)*2^n`
-/

namespace A135569.P11530090348024496574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * (2 ^ n : ℤ)

end

end A135569.P11530090348024496574

noncomputable section

/-- A135569: a(n) = S2(n)*2^n; where S2(n) is digit sum of n, n in binary notation.

Offset 0, canonical program `A135569.P11530090348024496574`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135569 (n : ℕ) : ℤ :=
  A135569.P11530090348024496574.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135941.P6187496771370470552

`floor((n+1)/A000120(n+1))`
-/

namespace A135941.P6187496771370470552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A000120 (n + 1) : ℚ)⌋

end

end A135941.P6187496771370470552

noncomputable section

/-- A135941: a(n) = floor(n/S2(n)), where S2(n) is the binary weight of n.

Offset 1, canonical program `A135941.P6187496771370470552`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135941 (n : ℕ) : ℤ :=
  A135941.P6187496771370470552.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136107.P13068712617901272684

`A001227(n+1)-A010054(n+1)`
-/

namespace A136107.P13068712617901272684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A010054 (n + 1)

end

end A136107.P13068712617901272684

noncomputable section

/-- A136107: Number of representations of n as the difference of two positive triangular numbers.

Offset 1, canonical program `A136107.P13068712617901272684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136107 (n : ℕ) : ℤ :=
  A136107.P13068712617901272684.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136107.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136496.P805941965056846939

`A136495(n+1)+A005374(n)+n+1`
-/

namespace A136496.P805941965056846939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + A005374 n + (n + 1 : ℤ)

end

end A136496.P805941965056846939

noncomputable section

/-- A136496: Solution of the complementary equation b(n)=a(a(n))+n; this is sequence b; sequence a is A136495.

Offset 1, canonical program `A136496.P805941965056846939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136496 (n : ℕ) : ℤ :=
  A136496.P805941965056846939.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137718.P18354280375618536243

`A137717(n)/2^floor(n/2)`
-/

namespace A137718.P18354280375618536243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137717 n : ℚ) / (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A137718.P18354280375618536243

noncomputable section

/-- A137718: A scaled Hankel transform.

Offset 0, canonical program `A137718.P18354280375618536243`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137718 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137718.P18354280375618536243.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137718.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138331.P9701934209222227417

`(-1)^(n+1)*16*A040977(n)`
-/

namespace A138331.P9701934209222227417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * 16 * A040977 n

end

end A138331.P9701934209222227417

noncomputable section

/-- A138331: a(n) = C(n+5, 5)*(n+3)*(-1)^(n+1)*16/3.

Offset 0, canonical program `A138331.P9701934209222227417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138331 (n : ℕ) : ℤ :=
  A138331.P9701934209222227417.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138331.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138552.P4734613694061573768

`(A000891(n)+A000108(n))/2`
-/

namespace A138552.P4734613694061573768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000891 n + A000108 n : ℚ) / 2

end

end A138552.P4734613694061573768

noncomputable section

/-- A138552: Returning walks of length 2n on the upper half of the square lattice, distinct under reflections about the y-axis.

Offset 0, canonical program `A138552.P4734613694061573768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138552 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138552.P4734613694061573768.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138552.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140513.P13579608035938851890

`2*A137688(n)`
-/

namespace A140513.P13579608035938851890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137688 n

end

end A140513.P13579608035938851890

noncomputable section

/-- A140513: Repeat 2^n n times.

Offset 0, canonical program `A140513.P13579608035938851890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140513 (n : ℕ) : ℤ :=
  A140513.P13579608035938851890.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140513.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141351.P15521239837132020654

`A000108(n)+A057427(n)`
-/

namespace A141351.P15521239837132020654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + A057427 n

end

end A141351.P15521239837132020654

noncomputable section

/-- A141351: a(n) = C(n) + 1 - 0^n where C(n) = A000108(n).

Offset 0, canonical program `A141351.P15521239837132020654`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141351 (n : ℕ) : ℤ :=
  A141351.P15521239837132020654.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141498.P12080205916971592544

`A010696(n)*A086892(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141498.P12080205916971592544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010696 n * A086892 (n + 1)

end

end A141498.P12080205916971592544

noncomputable section

/-- A141498: a(n) = A010696(n-1) * A086892(n).

Offset 1, canonical program `A141498.P12080205916971592544`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141498 (n : ℕ) : ℤ :=
  A141498.P12080205916971592544.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142883.P8119179199355655471

`A142590(n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142883.P8119179199355655471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142590 n : ℚ) / 3

end

end A142883.P8119179199355655471

noncomputable section

/-- A142883: a(n) = A142590(n)/3.

Offset 0, canonical program `A142883.P8119179199355655471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142883 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A142883.P8119179199355655471.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A146313.P15935100656203728412

`A146312(n+1)+1`
-/

namespace A146313.P15935100656203728412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146312 (n + 1) + 1

end

end A146313.P15935100656203728412

noncomputable section

/-- A146313: a(n) = cosh( (2n - 1)*arcsinh(sqrt(2)) )^2 = 1 - cos( (2n - 1)*arcsin(sqrt(3)) )^2.

Offset 1, canonical program `A146313.P15935100656203728412`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A146313 (n : ℕ) : ℤ :=
  A146313.P15935100656203728412.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A146313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152029.P2042950158805901060

`2^n*A001761(n)`
-/

namespace A152029.P2042950158805901060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001761 n

end

end A152029.P2042950158805901060

noncomputable section

/-- A152029: a(n) = 2^n*(2*n)!/((n+1)!).

Offset 0, canonical program `A152029.P2042950158805901060`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152029 (n : ℕ) : ℤ :=
  A152029.P2042950158805901060.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152029.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096288.P13797560073647368963

`A000120(n)+A053735(n)`
-/

namespace A096288.P13797560073647368963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A053735 n

end

end A096288.P13797560073647368963

noncomputable section

/-- A096288: Sum of digits of n in bases 2 and 3.

Offset 0, canonical program `A096288.P13797560073647368963`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096288 (n : ℕ) : ℤ :=
  A096288.P13797560073647368963.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096288.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097383.P11124350842977917727

`A123753(n+1)-floor(3*(n+2)/2)`
-/

namespace A097383.P11124350842977917727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123753 (n + 1) - ⌊(3 * (n + 2) : ℚ) / 2⌋

end

end A097383.P11124350842977917727

noncomputable section

/-- A097383: Minimum total number of comparisons to find each of the values 1 through n using a binary search with 3-way comparisons (less than, equal and greater than).

Offset 1, canonical program `A097383.P11124350842977917727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097383 (n : ℕ) : ℤ :=
  A097383.P11124350842977917727.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097383.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099885.P5795883260777038836

`2^floor((n+1)/2)*A001317(floor(n/2))`
-/

namespace A099885.P5795883260777038836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) * (A001317 ⌊(n : ℚ) / 2⌋.toNat : ℚ)

end

end A099885.P5795883260777038836

noncomputable section

/-- A099885: Central terms of the rows of the XOR difference triangle of the powers of 2 (A099884) so that a(n) = A099884(n, floor(n/2)).

Offset 0, canonical program `A099885.P5795883260777038836`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099885.P5795883260777038836.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099885.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101266.P11296860737574456655

`A101402(n+1)-A101402(n)`
-/

namespace A101266.P11296860737574456655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (n + 1) - A101402 n

end

end A101266.P11296860737574456655

noncomputable section

/-- A101266: First differences of A101402.

Offset 0, canonical program `A101266.P11296860737574456655`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101266 (n : ℕ) : ℤ :=
  A101266.P11296860737574456655.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101266.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105672.P2069037563154767662

`A064235(n+1)-a(n-A064235(n+1)/3)` with `a(0)=1`
-/

namespace A105672.P2069037563154767662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064235 (n + 1) - a (SequenceMachineLib.roundAway ((n : ℚ) - (A064235 (n + 1) : ℚ) / 3)).toNat

end

end A105672.P2069037563154767662

noncomputable section

/-- A105672: a(1)=1, then bracketing n with powers of 3 as f(t)=3^t for f(t) < n <= f(t+1), a(n) = f(t+1) - a(n-f(t)).

Offset 1, canonical program `A105672.P2069037563154767662`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105672 (n : ℕ) : ℤ :=
  A105672.P2069037563154767662.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115362.P12022203208950917127

`1/3*(4+A053737(n)-A053737(n+1))`
-/

namespace A115362.P12022203208950917127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (4 + A053737 n - A053737 (n + 1) : ℚ)

end

end A115362.P12022203208950917127

noncomputable section

/-- A115362: Row sums of ((1,x) + (x,x^2))^(-1)*((1,x)-(x,x^2))^(-1) (using Riordan array notation).

Offset 0, canonical program `A115362.P12022203208950917127`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115362 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115362.P12022203208950917127.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115362.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115607.P10089454494571849752

`(-1)^n*A000593(n+1)`
-/

namespace A115607.P10089454494571849752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000593 (n + 1)

end

end A115607.P10089454494571849752

noncomputable section

/-- A115607: Sum of odd divisors of n times (-1)^(n+1).

Offset 1, canonical program `A115607.P10089454494571849752`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115607 (n : ℕ) : ℤ :=
  A115607.P10089454494571849752.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115607.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116640.P12883575542746410889

`2*a(floor(n/2))-A033999(n)*A048883(n)` with `a(0)=1`
-/

namespace A116640.P12883575542746410889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat - A033999 n * A048883 n

end

end A116640.P12883575542746410889

noncomputable section

/-- A116640: a(n) = A116623(A059893(n)).

Offset 0, canonical program `A116640.P12883575542746410889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116640 (n : ℕ) : ℤ :=
  A116640.P12883575542746410889.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120777.P10380441015060415790

`2^A283208(n)`
-/

namespace A120777.P10380441015060415790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A283208 n : ℤ)

end

end A120777.P10380441015060415790

noncomputable section

/-- A120777: a(n) = 2^(2*n - valuation(CatalanNumber(n), 2)).

Offset 0, canonical program `A120777.P10380441015060415790`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120777 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120777.P10380441015060415790.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120777.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127427.P10470407826532983788

`(3*n+A053735(n)-A053735(6*n))/2`
-/

namespace A127427.P10470407826532983788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) + A053735 n - A053735 (6 * n) : ℚ) / 2

end

end A127427.P10470407826532983788

noncomputable section

/-- A127427: a(n) = v_3( (6n)! ) - v_3( (3n)! ), where v_3(N) is the 3-adic valuation A007949(N).

Offset 0, canonical program `A127427.P10470407826532983788`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127427 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127427.P10470407826532983788.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127427.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127943.P11415706920937421864

`2^A127944(n)`
-/

namespace A127943.P11415706920937421864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A127944 n : ℤ)

end

end A127943.P11415706920937421864

noncomputable section

/-- A127943: a(n) = 2^binomial(n+1,2)/A046161(n).

Offset 0, canonical program `A127943.P11415706920937421864`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127943 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127943.P11415706920937421864.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127943.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134451.P12605129592745265341

`a(A053735(n))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A134451.P12605129592745265341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (A053735 n).toNat

end

end A134451.P12605129592745265341

noncomputable section

/-- A134451: Ternary digital root of n.

Offset 0, canonical program `A134451.P12605129592745265341`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134451 (n : ℕ) : ℤ :=
  (A134451.P12605129592745265341.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135261.P1033303913802881261

`3*A131090(n)-A131090(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135261.P1033303913802881261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A131090 n - A131090 (n + 1)

end

end A135261.P1033303913802881261

noncomputable section

/-- A135261: a(n) = 3*A131090(n) - A131090(n+1).

Offset 0, canonical program `A135261.P1033303913802881261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135261 (n : ℕ) : ℤ :=
  A135261.P1033303913802881261.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135261.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139352.P2034447244462371406

`A053737(n)-A000120(n)`
-/

namespace A139352.P2034447244462371406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n - A000120 n

end

end A139352.P2034447244462371406

noncomputable section

/-- A139352: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives o(n).

Offset 0, canonical program `A139352.P2034447244462371406`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139352 (n : ℕ) : ℤ :=
  A139352.P2034447244462371406.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139352.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145222.P1301972767117422336

`(n+1)*A000387(n)`
-/

namespace A145222.P1301972767117422336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000387 n

end

end A145222.P1301972767117422336

noncomputable section

/-- A145222: a(n) is the number of odd permutations (of an n-set) with exactly 1 fixed point.

Offset 1, canonical program `A145222.P1301972767117422336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145222 (n : ℕ) : ℤ :=
  A145222.P1301972767117422336.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145223.P6606573860951849830

`(n+2)*(n+1)/2*A000387(n)`
-/

namespace A145223.P6606573860951849830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 1) : ℚ) / 2 * (A000387 n : ℚ)

end

end A145223.P6606573860951849830

noncomputable section

/-- A145223: a(n) is the number of odd permutations (of an n-set) with exactly 2 fixed points.

Offset 2, canonical program `A145223.P6606573860951849830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145223 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145223.P6606573860951849830.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145223.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A146076.P5513778411624192836

`A000203(n+1)-A000593(n+1)`
-/

namespace A146076.P5513778411624192836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000593 (n + 1)

end

end A146076.P5513778411624192836

noncomputable section

/-- A146076: Sum of even divisors of n.

Offset 1, canonical program `A146076.P5513778411624192836`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A146076 (n : ℕ) : ℤ :=
  A146076.P5513778411624192836.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A146076.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A147845.P9272741338971517792

`2*A033045(n)+1`
-/

namespace A147845.P9272741338971517792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033045 n + 1

end

end A147845.P9272741338971517792

noncomputable section

/-- A147845: Odd positive integers a(n) such that for every odd integer m>=7 there exists a unique representation of the form m=a(p)+2a(q)+4a(r).

Offset 1, canonical program `A147845.P9272741338971517792`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147845 (n : ℕ) : ℤ :=
  A147845.P9272741338971517792.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147845.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A151712.P17763347096143698757

`A048883(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151712.P17763347096143698757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n + 1

end

end A151712.P17763347096143698757

noncomputable section

/-- A151712: a(n) = A048883(n) + 1.

Offset 0, canonical program `A151712.P17763347096143698757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151712 (n : ℕ) : ℤ :=
  A151712.P17763347096143698757.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151712.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096197.P7059853987983990690

`A008864(n+1)%(n+1)`
-/

namespace A096197.P7059853987983990690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1)) (n + 1 : ℤ)

end

end A096197.P7059853987983990690

noncomputable section

/-- A096197: a(n) = (1+prime(n)) mod n.

Offset 1, canonical program `A096197.P7059853987983990690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096197 (n : ℕ) : ℤ :=
  A096197.P7059853987983990690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096218.P10209809842821438212

`p?[A000040(n+1)+2*A001043(n+1)]`
-/

namespace A096218.P10209809842821438212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096218.P10209809842821438212

noncomputable section

/-- A096218: Primes of the form 3*prime(n) + 2*prime(n+1).

Offset 1, canonical program `A096218.P10209809842821438212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A096218 (n : ℕ) : ℤ :=
  A096218.P10209809842821438212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A096218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096277.P17564688573804244660

`A001043(n+1)+A001043(n+2)`
-/

namespace A096277.P17564688573804244660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + A001043 (n + 2)

end

end A096277.P17564688573804244660

noncomputable section

/-- A096277: Sum of successive sums of successive primes: a(n) = s(n) + s(n+1) where s(n) = prime(n) + prime(n+1) (A001043).

Offset 1, canonical program `A096277.P17564688573804244660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096277 (n : ℕ) : ℤ :=
  A096277.P17564688573804244660.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096277.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096304.P11476468655270838725

`lt[0, A039969(n)]+1`
-/

namespace A096304.P11476468655270838725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A096304.P11476468655270838725

noncomputable section

/-- A096304: Numbers k such that 3k does not divide (6k-4)!/((3k-2)!*(3k-1)!).

Offset 1, canonical program `A096304.P11476468655270838725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A096304 (n : ℕ) : ℤ :=
  (A096304.P11476468655270838725.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A096304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096316.P161007698799923944

`A036439(n+2)%10`
-/

namespace A096316.P161007698799923944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036439 (n + 2)) 10

end

end A096316.P161007698799923944

noncomputable section

/-- A096316: Given the number wheel 0,1,2,3,4,5,6,7,8,9 then starting with 2, the next number is a prime p number of positions from the previous number found, for p=2,3,...

Offset 0, canonical program `A096316.P161007698799923944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A096316 (n : ℕ) : ℤ :=
  A096316.P161007698799923944.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A096316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096379.P11420595779051591420

`A001043(n+1)-A000040(n+3)`
-/

namespace A096379.P11420595779051591420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A000040 (n + 3)

end

end A096379.P11420595779051591420

noncomputable section

/-- A096379: a(n) = prime(n) + prime(n+1) - prime(n+2).

Offset 1, canonical program `A096379.P11420595779051591420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001043, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A096379 (n : ℕ) : ℤ :=
  A096379.P11420595779051591420.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001043, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A096379.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096766.P12794279211445644240

`A005181(abs(1-n))-A000045(n)`
-/

namespace A096766.P12794279211445644240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005181 |1 - (n : ℤ)|.toNat - A000045 n

end

end A096766.P12794279211445644240

noncomputable section

/-- A096766: Difference between ceiling(e^(n/2 - 1)) (A005181) and the n-th Fibonacci number (A000045).

Offset 0, canonical program `A096766.P12794279211445644240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A096766 (n : ℕ) : ℤ :=
  A096766.P12794279211445644240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A096766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097327.P3677544989114888276

`A097326(n+1)+1`
-/

namespace A097327.P3677544989114888276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097326 (n + 1) + 1

end

end A097327.P3677544989114888276

noncomputable section

/-- A097327: Least positive integer m such that m*n has greater decimal digit length than n.

Offset 1, canonical program `A097327.P3677544989114888276`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097326, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097327 (n : ℕ) : ℤ :=
  A097327.P3677544989114888276.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097326, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097331.P4426990625459901142

`A208355(n-2)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A097331.P4426990625459901142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A208355 (n - 2) - a (n - 1)

end

end A097331.P4426990625459901142

noncomputable section

/-- A097331: Expansion of 1 + 2x/(1 + sqrt(1 - 4x^2)).

Offset 0, canonical program `A097331.P4426990625459901142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A097331 (n : ℕ) : ℤ :=
  A097331.P4426990625459901142.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A097331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097361.P14403592286291128386

`p?[2*A001043(n+1)-1]`
-/

namespace A097361.P14403592286291128386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001043 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097361.P14403592286291128386

noncomputable section

/-- A097361: Primes of the form 2(p+q) - 1, where p and q are consecutive primes.

Offset 1, canonical program `A097361.P14403592286291128386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A097361 (n : ℕ) : ℤ :=
  A097361.P14403592286291128386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A097361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097415.P765900112222958148

`lt[8, A008952(n)]`
-/

namespace A097415.P765900112222958148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A097415.P765900112222958148

noncomputable section

/-- A097415: Values of k such that the first digit of 2^k is 9.

Offset 1, canonical program `A097415.P765900112222958148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A097415 (n : ℕ) : ℤ :=
  (A097415.P765900112222958148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A097415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097455.P7800846484876980294

`gcd(A008864(n+1), A018252(n+1))`
-/

namespace A097455.P7800846484876980294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008864 (n + 1)) (A018252 (n + 1))

end

end A097455.P7800846484876980294

noncomputable section

/-- A097455: a(n) = gcd(prime(n)+1, composite(n)).

Offset 1, canonical program `A097455.P7800846484876980294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A097455 (n : ℕ) : ℤ :=
  (A097455.P7800846484876980294.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A097455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097499.P17050933069722058923

`A053089(n+1)+A078422(n+1)`
-/

namespace A097499.P17050933069722058923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053089 (n + 1) + A078422 (n + 1)

end

end A097499.P17050933069722058923

noncomputable section

/-- A097499: Numbers of the form p^q + q^p where p and q are consecutive primes.

Offset 1, canonical program `A097499.P17050933069722058923`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053089, A078422, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097499 (n : ℕ) : ℤ :=
  A097499.P17050933069722058923.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053089, A078422, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097499.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097894.P17020405718607012267

`∑[A014531(n+1)]`
-/

namespace A097894.P17020405718607012267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097894.P17020405718607012267

noncomputable section

/-- A097894: Partial sums of A014531.

Offset 1, canonical program `A097894.P17020405718607012267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A097894 (n : ℕ) : ℤ :=
  A097894.P17020405718607012267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A097894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097913.P2756264875088054421

`A008718(floor(n/2))`
-/

namespace A097913.P2756264875088054421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008718 ⌊(n : ℚ) / 2⌋.toNat

end

end A097913.P2756264875088054421

noncomputable section

/-- A097913: G.f.: (1+x^18)/((1-x)*(1-x^8)*(1-x^12)*(1-x^24)).

Offset 0, canonical program `A097913.P2756264875088054421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097913 (n : ℕ) : ℤ :=
  A097913.P2756264875088054421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097974.P5758962285217898307

`∑{p}[A072504(n+1), #]`
-/

namespace A097974.P5758962285217898307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A097974.P5758962285217898307

noncomputable section

/-- A097974: Sum of distinct prime divisors of n which are <= sqrt(n).

Offset 1, canonical program `A097974.P5758962285217898307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097974 (n : ℕ) : ℤ :=
  (A097974.P5758962285217898307.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098002.P16795242418287850417

`∑{p}[A072504(n+1), #²]`
-/

namespace A098002.P16795242418287850417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A098002.P16795242418287850417

noncomputable section

/-- A098002: Sum of squares of distinct prime divisors p of n, where each p <= sqrt(n).

Offset 1, canonical program `A098002.P16795242418287850417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098002 (n : ℕ) : ℤ :=
  (A098002.P16795242418287850417.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098014.P11442637500900151086

`p?[Δ[A006254(n+1)]]`
-/

namespace A098014.P11442637500900151086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098014.P11442637500900151086

noncomputable section

/-- A098014: A098013/2.

Offset 1, canonical program `A098014.P11442637500900151086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098014 (n : ℕ) : ℤ :=
  A098014.P11442637500900151086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098033.P5764389216701661975

`A034953(n+1)%2`
-/

namespace A098033.P5764389216701661975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034953 (n + 1)) 2

end

end A098033.P5764389216701661975

noncomputable section

/-- A098033: Parity of p*(p+1)/2 for n-th prime p.

Offset 1, canonical program `A098033.P5764389216701661975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098033 (n : ℕ) : ℤ :=
  A098033.P5764389216701661975.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098137.P17122769462180348508

`A000312(n+1)+A062481(n+1)`
-/

namespace A098137.P17122769462180348508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) + A062481 (n + 1)

end

end A098137.P17122769462180348508

noncomputable section

/-- A098137: a(n) = n^n + n^prime(n).

Offset 1, canonical program `A098137.P17122769462180348508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098137 (n : ℕ) : ℤ :=
  A098137.P17122769462180348508.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098201.P3345256809965612835

`a(A082023(2*n+1))+1` with `a(0)=2`
-/

namespace A098201.P3345256809965612835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A082023 (2 * n + 1)).toNat + 1

end

end A098201.P3345256809965612835

noncomputable section

/-- A098201: Number of distinct terms in iteration-list when cototient-function[=A051953] is iterated and the initial value is odd number.

Offset 1, canonical program `A098201.P3345256809965612835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098201 (n : ℕ) : ℤ :=
  (A098201.P3345256809965612835.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098369.P15697729695012141091

`A095713(A038722(n+1))*A095713(n+1)`
-/

namespace A098369.P15697729695012141091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095713 (A038722 (n + 1)).toNat * A095713 (n + 1)

end

end A098369.P15697729695012141091

noncomputable section

/-- A098369: Multiplication table of the digits of the golden ratio read by antidiagonals.

Offset 0, canonical program `A098369.P15697729695012141091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A098369 (n : ℕ) : ℤ :=
  A098369.P15697729695012141091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A098369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098388.P2706974749827344533

`A035100(n+1)-1`
-/

namespace A098388.P2706974749827344533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (n + 1) - 1

end

end A098388.P2706974749827344533

noncomputable section

/-- A098388: a(n) = floor(log_2(prime(n))).

Offset 1, canonical program `A098388.P2706974749827344533`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098388 (n : ℕ) : ℤ :=
  A098388.P2706974749827344533.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098388.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098390.P10528936941133441852

`A035100(n+1)+A006093(n+1)`
-/

namespace A098390.P10528936941133441852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (n + 1) + A006093 (n + 1)

end

end A098390.P10528936941133441852

noncomputable section

/-- A098390: Prime(n)+Log2(prime(n)), where Log2=A000523.

Offset 1, canonical program `A098390.P10528936941133441852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098390 (n : ℕ) : ℤ :=
  A098390.P10528936941133441852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098649.P8053554610354284248

`p?[2*A001043(n+1)+1]`
-/

namespace A098649.P8053554610354284248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001043 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098649.P8053554610354284248

noncomputable section

/-- A098649: Primes of the form 2(p+q) + 1, where p and q are consecutive primes.

Offset 1, canonical program `A098649.P8053554610354284248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A098649 (n : ℕ) : ℤ :=
  A098649.P8053554610354284248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A098649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098764.P1450263935949736531

`A062234(n+1)+A000040(n+1)`
-/

namespace A098764.P1450263935949736531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) + A000040 (n + 1)

end

end A098764.P1450263935949736531

noncomputable section

/-- A098764: a(n) = 3p - q where p and q are consecutive primes.

Offset 1, canonical program `A098764.P1450263935949736531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A062234, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A098764 (n : ℕ) : ℤ :=
  A098764.P1450263935949736531.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A062234, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A098764.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098833.P11614478305007327553

`eq[0, A066628(A001414(n+1))]+1`
-/

namespace A098833.P11614478305007327553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (A001414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098833.P11614478305007327553

noncomputable section

/-- A098833: Numbers n such that the sum of primes dividing n (with repetition) is a Fibonacci number.

Offset 1, canonical program `A098833.P11614478305007327553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A098833 (n : ℕ) : ℤ :=
  (A098833.P11614478305007327553.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A098833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098999.P11172421746672696162

`∑[A030078(n+1)]`
-/

namespace A098999.P11172421746672696162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P11172421746672696162

noncomputable section

/-- A098999: Sum of cubes of the first n primes.

Offset 1, canonical program `A098999.P11172421746672696162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098999 (n : ℕ) : ℤ :=
  A098999.P11172421746672696162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099242.P10278770644118872281

`Δ[A371125(n)]`
-/

namespace A099242.P10278770644118872281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099242.P10278770644118872281

noncomputable section

/-- A099242: (6n+5)-th terms of expansion of 1/(1 - x - x^6).

Offset 0, canonical program `A099242.P10278770644118872281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A099242 (n : ℕ) : ℤ :=
  A099242.P10278770644118872281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A099242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099251.P14211630278922990924

`A005043(2*n)`
-/

namespace A099251.P14211630278922990924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (2 * n)

end

end A099251.P14211630278922990924

noncomputable section

/-- A099251: Bisection of Motzkin sums (A005043).

Offset 0, canonical program `A099251.P14211630278922990924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A099251 (n : ℕ) : ℤ :=
  A099251.P14211630278922990924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A099251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099252.P12031571717558512345

`A005043(Δ[n²])`
-/

namespace A099252.P12031571717558512345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099252.P12031571717558512345

noncomputable section

/-- A099252: Bisection of A005043.

Offset 0, canonical program `A099252.P12031571717558512345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A099252 (n : ℕ) : ℤ :=
  A099252.P12031571717558512345.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A099252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099253.P15001147378275106417

`Δ[A373907(n)]`
-/

namespace A099253.P15001147378275106417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099253.P15001147378275106417

noncomputable section

/-- A099253: (7*n+6)-th terms of expansion of 1/(1-x-x^7).

Offset 0, canonical program `A099253.P15001147378275106417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A099253 (n : ℕ) : ℤ :=
  A099253.P15001147378275106417.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A099253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099324.P10384757998136511703

`A168491(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A099324.P10384757998136511703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A168491 (n - 1) - a (n - 1)

end

end A099324.P10384757998136511703

noncomputable section

/-- A099324: Expansion of (1 + sqrt(1 + 4x))/(2(1 + x)).

Offset 0, canonical program `A099324.P10384757998136511703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A099324 (n : ℕ) : ℤ :=
  A099324.P10384757998136511703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A099324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099326.P18251766925370423032

`A099325(n)+A001787(n)`
-/

namespace A099326.P18251766925370423032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n + A001787 n

end

end A099326.P18251766925370423032

noncomputable section

/-- A099326: Expansion of ((1-2x)*sqrt(1+2x) + sqrt(1-2x))/(2*(1-2x)^(5/2)).

Offset 0, canonical program `A099326.P18251766925370423032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A099326 (n : ℕ) : ℤ :=
  A099326.P18251766925370423032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A099326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099477.P7976891423228945274

`lt[A099475(n+1), 1]+1`
-/

namespace A099477.P7976891423228945274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099475 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A099477.P7976891423228945274

noncomputable section

/-- A099477: Numbers having no divisors d such that also d+2 is a divisor.

Offset 1, canonical program `A099477.P7976891423228945274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4781 terms. -/
def A099477 (n : ℕ) : ℤ :=
  (A099477.P7976891423228945274.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4781 terms. -/
def A099477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099572.P17108190012056641786

`A099571(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A099572.P17108190012056641786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A099571 n + a (n - 2)

end

end A099572.P17108190012056641786

noncomputable section

/-- A099572: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k+4, k).

Offset 0, canonical program `A099572.P17108190012056641786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A099572 (n : ℕ) : ℤ :=
  A099572.P17108190012056641786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A099572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099576.P506028318455163076

`(n+1)*A047749(n+1)`
-/

namespace A099576.P506028318455163076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047749 (n + 1)

end

end A099576.P506028318455163076

noncomputable section

/-- A099576: Row sums of triangle A099575.

Offset 0, canonical program `A099576.P506028318455163076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A099576 (n : ℕ) : ℤ :=
  A099576.P506028318455163076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A099576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099584.P17919373969718200762

`A007949(A006093(n+1))`
-/

namespace A099584.P17919373969718200762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A006093 (n + 1)).toNat

end

end A099584.P17919373969718200762

noncomputable section

/-- A099584: Exponent of 3 in factorization of prime(n) - 1.

Offset 1, canonical program `A099584.P17919373969718200762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099584 (n : ℕ) : ℤ :=
  A099584.P17919373969718200762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099593.P12963312768206956457

`∑[A049419(n+1)]-1`
-/

namespace A099593.P12963312768206956457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099593.P12963312768206956457

noncomputable section

/-- A099593: Sum of the number of e-divisors of all numbers from 2 up to n.

Offset 1, canonical program `A099593.P12963312768206956457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099593 (n : ℕ) : ℤ :=
  A099593.P12963312768206956457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099850.P5992010022998124774

`∑[A004648(n+1)]`
-/

namespace A099850.P5992010022998124774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099850.P5992010022998124774

noncomputable section

/-- A099850: Partial sums of A004648.

Offset 1, canonical program `A099850.P5992010022998124774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099850 (n : ℕ) : ℤ :=
  A099850.P5992010022998124774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100279.P5782566387007979265

`A100107(A000032(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100279.P5782566387007979265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100107 (A000032 n).toNat

end

end A100279.P5782566387007979265

noncomputable section

/-- A100279: a(n) = A100107(A000032(n)).

Offset 0, canonical program `A100279.P5782566387007979265`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100107, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100279 (n : ℕ) : ℤ :=
  A100279.P5782566387007979265.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100107, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100279.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100479.P528344171557188665

`A001043(2*n+1)`
-/

namespace A100479.P528344171557188665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (2 * n + 1)

end

end A100479.P528344171557188665

noncomputable section

/-- A100479: a(n) = prime(2n-1) + prime(2n).

Offset 1, canonical program `A100479.P528344171557188665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100479 (n : ℕ) : ℤ :=
  A100479.P528344171557188665.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100479.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100566.P9068379759931913626

`(A006450(n+2)+A006450(2*(n+2)))/2`
-/

namespace A100566.P9068379759931913626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006450 (n + 2) + A006450 (2 * (n + 2)) : ℚ) / 2

end

end A100566.P9068379759931913626

noncomputable section

/-- A100566: 2*a(n) = prime(prime(n)) + prime(prime(2n)).

Offset 2, canonical program `A100566.P9068379759931913626`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100566 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100566.P9068379759931913626.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100566.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100567.P7524990123290842635

`A006450(A032766(n+1))`
-/

namespace A100567.P7524990123290842635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A032766 (n + 1)).toNat

end

end A100567.P7524990123290842635

noncomputable section

/-- A100567: Prime-indexed primes as n runs through the integers congruent to 0 or 1 mod 3.

Offset 1, canonical program `A100567.P7524990123290842635`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100567 (n : ℕ) : ℤ :=
  A100567.P7524990123290842635.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100567.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100661.P2879437187524638000

`A080468(n+2)+1`
-/

namespace A100661.P2879437187524638000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080468 (n + 2) + 1

end

end A100661.P2879437187524638000

noncomputable section

/-- A100661: Quet transform of A006519 (see A101387 for definition). Also, least k such that n+k has at most k ones in its binary representation.

Offset 1, canonical program `A100661.P2879437187524638000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100661 (n : ℕ) : ℤ :=
  A100661.P2879437187524638000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100672.P7497242759628255371

`A008837(n+1)%2`
-/

namespace A100672.P7497242759628255371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008837 (n + 1)) 2

end

end A100672.P7497242759628255371

noncomputable section

/-- A100672: a(1) = 1; thereafter, a(n) = 1 if n-th prime is 3 mod 4, 0 if n-th prime is 1 mod 4.

Offset 1, canonical program `A100672.P7497242759628255371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100672 (n : ℕ) : ℤ :=
  A100672.P7497242759628255371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100737.P7532990618770377108

`a(A004526(n))*A001317(n)` with `a(0)=1`
-/

namespace A100737.P7532990618770377108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * A001317 n

end

end A100737.P7532990618770377108

noncomputable section

/-- A100737: Inverse modulo 2 binomial transform of 4^n.

Offset 0, canonical program `A100737.P7532990618770377108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A100737 (n : ℕ) : ℤ :=
  A100737.P7532990618770377108.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A100737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100746.P5629646402280203876

`a(A004526(n))*A001317(A004526(n))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A100746.P5629646402280203876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  a (A004526 n).toNat * A001317 (A004526 n).toNat

end

end A100746.P5629646402280203876

noncomputable section

/-- A100746: Inverse modulo 2 binomial transform of Jacobsthal numbers J(n).

Offset 0, canonical program `A100746.P5629646402280203876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A100746 (n : ℕ) : ℤ :=
  A100746.P5629646402280203876.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A100746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100820.P11982638449188634560

`floor(A046933(n+1)/2)`
-/

namespace A100820.P11982638449188634560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046933 (n + 1) : ℚ) / 2⌋

end

end A100820.P11982638449188634560

noncomputable section

/-- A100820: Number of odd numbers between prime(n) and prime(n+1).

Offset 1, canonical program `A100820.P11982638449188634560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100820 (n : ℕ) : ℤ :=
  A100820.P11982638449188634560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101038.P1344624487250661860

`A065168(A004736(n+1))-A065164(A004736(n+1))`
-/

namespace A101038.P1344624487250661860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065168 (A004736 (n + 1)).toNat - A065164 (A004736 (n + 1)).toNat

end

end A101038.P1344624487250661860

noncomputable section

/-- A101038: Inverse to sequence matrix for odd numbers.

Offset 0, canonical program `A101038.P1344624487250661860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101038 (n : ℕ) : ℤ :=
  A101038.P1344624487250661860.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101098.P7047479912248879101

`∑[A101096(n+1)]`
-/

namespace A101098.P7047479912248879101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101098.P7047479912248879101

noncomputable section

/-- A101098: a(1)=1; thereafter, a(n+1) = 20*n^3 + 10*n.

Offset 1, canonical program `A101098.P7047479912248879101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101098 (n : ℕ) : ℤ :=
  A101098.P7047479912248879101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101306.P320530847100994328

`∑[A007652(n+1)]`
-/

namespace A101306.P320530847100994328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101306.P320530847100994328

noncomputable section

/-- A101306: a(n) = Sum_{i=1..n} {last digit of prime(i)}.

Offset 1, canonical program `A101306.P320530847100994328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101306 (n : ℕ) : ℤ :=
  A101306.P320530847100994328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101340.P17215631478577904943

`A051674(n+1)+A000040(n+1)`
-/

namespace A101340.P17215631478577904943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051674 (n + 1) + A000040 (n + 1)

end

end A101340.P17215631478577904943

noncomputable section

/-- A101340: a(n) = p^p + p, with p = prime(n).

Offset 1, canonical program `A101340.P17215631478577904943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A051674, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A101340 (n : ℕ) : ℤ :=
  A101340.P17215631478577904943.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A051674, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A101340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101369.P1559296949486113777

`A086377(A008619(n))+A001057(n)`
-/

namespace A101369.P1559296949486113777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (A008619 n).toNat + A001057 n

end

end A101369.P1559296949486113777

noncomputable section

/-- A101369: a(2n-1) = the smallest positive integer not occurring earlier in the sequence. a(2n) = the a(2n-1)th smallest positive integer among those not occurring earlier in the sequence.

Offset 1, canonical program `A101369.P1559296949486113777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101369 (n : ℕ) : ℤ :=
  A101369.P1559296949486113777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101436.P2181373059902386332

`val(A049599(n+1), 3)`
-/

namespace A101436.P2181373059902386332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A049599 (n + 1)).toNat 3

end

end A101436.P2181373059902386332

noncomputable section

/-- A101436: Number of exponents in prime factorization of n which are primes.

Offset 1, canonical program `A101436.P2181373059902386332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101436 (n : ℕ) : ℤ :=
  (A101436.P2181373059902386332.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101596.P1056686908292103334

`2^n*A002057(n)`
-/

namespace A101596.P1056686908292103334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002057 n

end

end A101596.P1056686908292103334

noncomputable section

/-- A101596: Expansion of g.f. c(2*x)^4, where c(x) is the g.f. of A000108.

Offset 0, canonical program `A101596.P1056686908292103334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A101596 (n : ℕ) : ℤ :=
  A101596.P1056686908292103334.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A101596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101638.P11906782754422928034

`∑{d}[n+1, A101637(#)]`
-/

namespace A101638.P11906782754422928034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101637 d

end

end A101638.P11906782754422928034

noncomputable section

/-- A101638: Number of distinct 4-almost primes A014613 which are factors of n.

Offset 1, canonical program `A101638.P11906782754422928034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101638 (n : ℕ) : ℤ :=
  A101638.P11906782754422928034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101681.P7450056971872264129

`lt[A056617(n), n]`
-/

namespace A101681.P7450056971872264129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A101681.P7450056971872264129

noncomputable section

/-- A101681: Numbers k such that gcd(C(2k,k), 2k+1) > 1.

Offset 1, canonical program `A101681.P7450056971872264129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A101681 (n : ℕ) : ℤ :=
  (A101681.P7450056971872264129.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A101681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101692.P8436950815142899831

`A001317(A006257(n+1)-1)`
-/

namespace A101692.P8436950815142899831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A006257 (n + 1) - 1).toNat

end

end A101692.P8436950815142899831

noncomputable section

/-- A101692: A modular binomial sum transform of 2^n.

Offset 0, canonical program `A101692.P8436950815142899831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 422 terms. -/
def A101692 (n : ℕ) : ℤ :=
  A101692.P8436950815142899831.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 422 terms. -/
def A101692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101864.P594561568129511261

`abs(3-A188438(n+1))`
-/

namespace A101864.P594561568129511261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A188438 (n + 1)|

end

end A101864.P594561568129511261

noncomputable section

/-- A101864: Wythoff BB numbers.

Offset 1, canonical program `A101864.P594561568129511261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A101864 (n : ℕ) : ℤ :=
  A101864.P594561568129511261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A101864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102318.P7695360913830832486

`(A005043(n)+∑[A002212(n)])/2`
-/

namespace A102318.P7695360913830832486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A005043 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A102318.P7695360913830832486

noncomputable section

/-- A102318: A mean binomial transform of the Catalan numbers.

Offset 0, canonical program `A102318.P7695360913830832486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A102318 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102318.P7695360913830832486.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A102318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102338.P67437949773924713

`A024913(n+1)-1`
-/

namespace A102338.P67437949773924713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024913 (n + 1) - 1

end

end A102338.P67437949773924713

noncomputable section

/-- A102338: Numbers k such that 10k+3 is prime.

Offset 1, canonical program `A102338.P67437949773924713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102338 (n : ℕ) : ℤ :=
  A102338.P67437949773924713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102493.P17760226261126790933

`A001281(A056143(n)+n)`
-/

namespace A102493.P17760226261126790933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A056143 n + (n : ℤ)).toNat

end

end A102493.P17760226261126790933

noncomputable section

/-- A102493: Numbers in base-60 representation that can be written with decimal digits.

Offset 1, canonical program `A102493.P17760226261126790933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A102493 (n : ℕ) : ℤ :=
  A102493.P17760226261126790933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A102493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102724.P16150721763580803239

`∑[A001043(n+1)]`
-/

namespace A102724.P16150721763580803239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102724.P16150721763580803239

noncomputable section

/-- A102724: Sum of the first n pairs of consecutive primes (for example, a(3) = (2+3) + (3+5) + (5+7) = 25).

Offset 1, canonical program `A102724.P16150721763580803239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102724 (n : ℕ) : ℤ :=
  A102724.P16150721763580803239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102781.P673049022325180502

`floor(A006005(n+1)/2)`
-/

namespace A102781.P673049022325180502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006005 (n + 1) : ℚ) / 2⌋

end

end A102781.P673049022325180502

noncomputable section

/-- A102781: Number of positive even numbers less than the n-th prime.

Offset 1, canonical program `A102781.P673049022325180502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102781 (n : ℕ) : ℤ :=
  A102781.P673049022325180502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103114.P15093904350537325420

`abs(A000045(A113655(n+1))-A102905(n))`
-/

namespace A103114.P15093904350537325420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000045 (A113655 (n + 1)).toNat - A102905 n|

end

end A103114.P15093904350537325420

noncomputable section

/-- A103114: a(n) = abs( f(Fibonacci(n)) - Fibonacci(f(n)) ), where f(n) = n-2 if (n mod 3) = 0, f(n) = n+2 if (n mod 3) = 1, otherwise f(n) = n.

Offset 1, canonical program `A103114.P15093904350537325420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A103114 (n : ℕ) : ℤ :=
  A103114.P15093904350537325420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A103114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103416.P11972475855525546389

`A103355(n+1)-1`
-/

namespace A103416.P11972475855525546389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103355 (n + 1) - 1

end

end A103416.P11972475855525546389

noncomputable section

/-- A103416: a(n) = n - ceiling(sqrt(prime(n))).

Offset 0, canonical program `A103416.P11972475855525546389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103416 (n : ℕ) : ℤ :=
  A103416.P11972475855525546389.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103440.P2264346228062661877

`∑{d}[n+1, #*A162397(#)]`
-/

namespace A103440.P2264346228062661877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A162397 d

end

end A103440.P2264346228062661877

noncomputable section

/-- A103440: a(n) = Sum[d|n, d==1 (mod 3), d^2] - Sum[d|n, d==2 (mod 3), d^2].

Offset 1, canonical program `A103440.P2264346228062661877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103440 (n : ℕ) : ℤ :=
  A103440.P2264346228062661877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103567.P12673763267061478434

`∑[A065091(n+3)%5]`
-/

namespace A103567.P12673763267061478434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 3)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103567.P12673763267061478434

noncomputable section

/-- A103567: Sum of the (primes > 5 modulo 5).

Offset 1, canonical program `A103567.P12673763267061478434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A103567 (n : ℕ) : ℤ :=
  A103567.P12673763267061478434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A103567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103633.P16299745658950574875

`C(A003056(floor(n/4)), A004736(n+1)-1)`
-/

namespace A103633.P16299745658950574875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 ⌊(n : ℚ) / 4⌋.toNat).toNat (A004736 (n + 1) - 1).toNat

end

end A103633.P16299745658950574875

noncomputable section

/-- A103633: Triangle read by rows: triangle of repeated stepped binomial coefficients.

Offset 0, canonical program `A103633.P16299745658950574875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103633 (n : ℕ) : ℤ :=
  (A103633.P16299745658950574875.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103636.P3747029318413453185

`∑{d}[n+1, (#-A091684(#))²]`
-/

namespace A103636.P3747029318413453185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A091684 d) ^ 2

end

end A103636.P3747029318413453185

noncomputable section

/-- A103636: a(n) = Sum_{d|n, d==0 mod 3} d^2.

Offset 1, canonical program `A103636.P3747029318413453185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A103636 (n : ℕ) : ℤ :=
  A103636.P3747029318413453185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A103636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103745.P6321366916771548531

`A103528(n+1)+2^n`
-/

namespace A103745.P6321366916771548531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103528 (n + 1) + (2 ^ n : ℤ)

end

end A103745.P6321366916771548531

noncomputable section

/-- A103745: a(n) = (A102371(n) + n)/2.

Offset 1, canonical program `A103745.P6321366916771548531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103745 (n : ℕ) : ℤ :=
  A103745.P6321366916771548531.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103745.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A103872.P2171439124764796495

`2*A005043(n+1)`
-/

namespace A103872.P2171439124764796495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005043 (n + 1)

end

end A103872.P2171439124764796495

noncomputable section

/-- A103872: a(n) = 3*trinomial(n+1,0) - trinomial(n+2,0).

Offset 0, canonical program `A103872.P2171439124764796495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A103872 (n : ℕ) : ℤ :=
  A103872.P2171439124764796495.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A103872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103976.P1403983906248291407

`∑[A040976(n+1)]`
-/

namespace A103976.P1403983906248291407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103976.P1403983906248291407

noncomputable section

/-- A103976: Partial sums of A040976 (= primes-2).

Offset 1, canonical program `A103976.P1403983906248291407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103976 (n : ℕ) : ℤ :=
  A103976.P1403983906248291407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104174.P256506782751078123

`A001008(n+1)%A002805(n+1)`
-/

namespace A104174.P256506782751078123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001008 (n + 1)) (A002805 (n + 1))

end

end A104174.P256506782751078123

noncomputable section

/-- A104174: Numerator of the fractional part of a harmonic number.

Offset 1, canonical program `A104174.P256506782751078123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A104174 (n : ℕ) : ℤ :=
  A104174.P256506782751078123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A104174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104181.P5219235661978751105

`C(37, A039710(n+1))`
-/

namespace A104181.P5219235661978751105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 37 (A039710 (n + 1)).toNat

end

end A104181.P5219235661978751105

noncomputable section

/-- A104181: Let f(n)=mod(prime(n),12); then a(n) = binomial(prime(12),f(n)).

Offset 1, canonical program `A104181.P5219235661978751105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104181 (n : ℕ) : ℤ :=
  (A104181.P5219235661978751105.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104553.P8611672560579935796

`∑[A047665(n+1)]`
-/

namespace A104553.P8611672560579935796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104553.P8611672560579935796

noncomputable section

/-- A104553: Sum of trapezoid weights of all Schroeder paths of length 2n.

Offset 1, canonical program `A104553.P8611672560579935796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A104553 (n : ℕ) : ℤ :=
  A104553.P8611672560579935796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A104553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104574.P11918091381051242592

`∑[a(n-2)+A002426(n)-A005043(n)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A104574.P11918091381051242592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 2) + (A002426 n - A005043 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104574.P11918091381051242592

noncomputable section

/-- A104574: Sum of trapezoid weights of all Motzkin paths of length n.

Offset 1, canonical program `A104574.P11918091381051242592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A104574 (n : ℕ) : ℤ :=
  A104574.P11918091381051242592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A104574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104682.P12791735047777628454

`n*A104376(n)+1`
-/

namespace A104682.P12791735047777628454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A104376 n + 1

end

end A104682.P12791735047777628454

noncomputable section

/-- A104682: a(n) = Sum_{j=0..14} n^j.

Offset 0, canonical program `A104682.P12791735047777628454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104682 (n : ℕ) : ℤ :=
  A104682.P12791735047777628454.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104796.P14992435901954674336

`A023607(A004736(n+1))`
-/

namespace A104796.P14992435901954674336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 (A004736 (n + 1)).toNat

end

end A104796.P14992435901954674336

noncomputable section

/-- A104796: Triangle read by rows: T(n,k) = (n+1-k)*Fibonacci(n+2-k), for n>=1, 1<=k<=n.

Offset 1, canonical program `A104796.P14992435901954674336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104796 (n : ℕ) : ℤ :=
  A104796.P14992435901954674336.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104797.P7553578064530354809

`A001924(A004736(n+1))`
-/

namespace A104797.P7553578064530354809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (A004736 (n + 1)).toNat

end

end A104797.P7553578064530354809

noncomputable section

/-- A104797: Triangle T(n,k) = Fib(n-k+4)-n-k-3, n>=1, 0<=k

Offset 1, canonical program `A104797.P7553578064530354809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104797 (n : ℕ) : ℤ :=
  A104797.P7553578064530354809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104887.P16520352266867439420

`A000040(A004736(n+1))`
-/

namespace A104887.P16520352266867439420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004736 (n + 1)).toNat

end

end A104887.P16520352266867439420

noncomputable section

/-- A104887: Triangle T(n,k) = (n-k+1)-th prime, read by rows.

Offset 1, canonical program `A104887.P16520352266867439420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104887 (n : ℕ) : ℤ :=
  A104887.P16520352266867439420.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104970.P3543221888348874227

`A004171(n)-A091520(n)`
-/

namespace A104970.P3543221888348874227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - A091520 n

end

end A104970.P3543221888348874227

noncomputable section

/-- A104970: Sum of squares of terms in even-indexed rows of triangle A104967.

Offset 0, canonical program `A104970.P3543221888348874227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A104970 (n : ℕ) : ℤ :=
  A104970.P3543221888348874227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A104970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104974.P15649431718787846236

`A036987(A004736(n+1))`
-/

namespace A104974.P15649431718787846236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A004736 (n + 1)).toNat

end

end A104974.P15649431718787846236

noncomputable section

/-- A104974: A Fredholm-Rueppel triangle.

Offset 0, canonical program `A104974.P15649431718787846236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104974 (n : ℕ) : ℤ :=
  A104974.P15649431718787846236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105089.P15788366358881064948

`Δ[A036439(A016777(3*n))]`
-/

namespace A105089.P15788366358881064948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (A016777 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105089.P15788366358881064948

noncomputable section

/-- A105089: Sum of the primes in ordered 3 X 3 prime squares.

Offset 1, canonical program `A105089.P15788366358881064948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A105089 (n : ℕ) : ℤ :=
  A105089.P15788366358881064948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A105089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105100.P7877407466230205485

`Δ[A036439(A016777(2*n))]`
-/

namespace A105100.P7877407466230205485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (A016777 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105100.P7877407466230205485

noncomputable section

/-- A105100: Sum of ordered 3 prime sided prime triangles.

Offset 1, canonical program `A105100.P7877407466230205485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A105100 (n : ℕ) : ℤ :=
  A105100.P7877407466230205485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A105100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105161.P5037065569945565347

`A065091(A064427(n+1)-n)-n`
-/

namespace A105161.P5037065569945565347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A064427 (n + 1) - (n : ℤ)).toNat - (n : ℤ)

end

end A105161.P5037065569945565347

noncomputable section

/-- A105161: Difference between n and the second-smallest prime larger than n.

Offset 0, canonical program `A105161.P5037065569945565347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105161 (n : ℕ) : ℤ :=
  A105161.P5037065569945565347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105203.P9148905778103150358

`A062756(n)%3+1`
-/

namespace A105203.P9148905778103150358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062756 n) 3 + 1

end

end A105203.P9148905778103150358

noncomputable section

/-- A105203: Trajectory of 1 under the morphism f: 1->{1,2,1}, 2->{2,3,2}, 3->{3,1,3}.

Offset 0, canonical program `A105203.P9148905778103150358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105203 (n : ℕ) : ℤ :=
  A105203.P9148905778103150358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105223.P13046729923239661957

`A105224(p?[xor(1, n)])`
-/

namespace A105223.P13046729923239661957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A105223.P13046729923239661957

noncomputable section

/-- A105223: Number of squares between prime(n) and 2*prime(n) inclusive.

Offset 1, canonical program `A105223.P13046729923239661957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A105223 (n : ℕ) : ℤ :=
  A105223.P13046729923239661957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A105223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105235.P366460928391636486

`∑[A105234(n)]`
-/

namespace A105235.P366460928391636486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105235.P366460928391636486

noncomputable section

/-- A105235: Partial sums of the central column of a Moebius-binomial triangle.

Offset 0, canonical program `A105235.P366460928391636486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105235 (n : ℕ) : ℤ :=
  A105235.P366460928391636486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105392.P5573371112045407339

`record[A215602(n)-A288219(n)]`
-/

namespace A105392.P5573371112045407339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 n - A288219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105392.P5573371112045407339

noncomputable section

/-- A105392: Frobenius number of the subsemigroup of the natural numbers generated by successive pairs of Lucas numbers.

Offset 1, canonical program `A105392.P5573371112045407339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A105392 (n : ℕ) : ℤ :=
  A105392.P5573371112045407339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A105392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105501.P5244751122571021061

`eq[1, A008963(n)]`
-/

namespace A105501.P5244751122571021061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105501.P5244751122571021061

noncomputable section

/-- A105501: Numbers n such that 1 is the leading digit of the n-th Fibonacci number in decimal representation.

Offset 1, canonical program `A105501.P5244751122571021061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3011 terms. -/
def A105501 (n : ℕ) : ℤ :=
  (A105501.P5244751122571021061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3011 terms. -/
def A105501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105502.P5982354816921253403

`eq[2, A008963(n)]`
-/

namespace A105502.P5982354816921253403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105502.P5982354816921253403

noncomputable section

/-- A105502: Numbers m such that 2 is the leading digit of the m-th Fibonacci number in decimal representation.

Offset 1, canonical program `A105502.P5982354816921253403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1762 terms. -/
def A105502 (n : ℕ) : ℤ :=
  (A105502.P5982354816921253403.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1762 terms. -/
def A105502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105503.P13182227572281853625

`eq[3, A008963(n)]`
-/

namespace A105503.P13182227572281853625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105503.P13182227572281853625

noncomputable section

/-- A105503: Numbers n such that 3 is the leading digit of the n-th Fibonacci number in decimal representation.

Offset 1, canonical program `A105503.P13182227572281853625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A105503 (n : ℕ) : ℤ :=
  (A105503.P13182227572281853625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A105503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105504.P12281381645323141339

`eq[4, A008963(n)]`
-/

namespace A105504.P12281381645323141339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105504.P12281381645323141339

noncomputable section

/-- A105504: Numbers m such that 4 is the leading digit of the n-th Fibonacci number in decimal representation.

Offset 1, canonical program `A105504.P12281381645323141339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 968 terms. -/
def A105504 (n : ℕ) : ℤ :=
  (A105504.P12281381645323141339.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 968 terms. -/
def A105504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105505.P6034328891926240916

`eq[5, A008963(n)]`
-/

namespace A105505.P6034328891926240916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105505.P6034328891926240916

noncomputable section

/-- A105505: Numbers n such that 5 is the leading digit of the n-th Fibonacci number in decimal representation.

Offset 1, canonical program `A105505.P6034328891926240916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A105505 (n : ℕ) : ℤ :=
  (A105505.P6034328891926240916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A105505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105506.P1349886026794230767

`eq[6, A008963(n)]`
-/

namespace A105506.P1349886026794230767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105506.P1349886026794230767

noncomputable section

/-- A105506: Numbers m such that 6 is the leading digit of the n-th Fibonacci number in decimal representation.

Offset 1, canonical program `A105506.P1349886026794230767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. -/
def A105506 (n : ℕ) : ℤ :=
  (A105506.P1349886026794230767.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. -/
def A105506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105507.P15299317297022117526

`eq[7, A008963(n)]`
-/

namespace A105507.P15299317297022117526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105507.P15299317297022117526

noncomputable section

/-- A105507: Numbers m such that 7 is the leading digit of the n-th Fibonacci number in decimal representation.

Offset 1, canonical program `A105507.P15299317297022117526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. -/
def A105507 (n : ℕ) : ℤ :=
  (A105507.P15299317297022117526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. -/
def A105507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105509.P8616086371887791814

`lt[8, A008963(n)]`
-/

namespace A105509.P8616086371887791814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A105509.P8616086371887791814

noncomputable section

/-- A105509: Numbers m such that 9 is the leading digit of the m-th Fibonacci number in decimal representation.

Offset 1, canonical program `A105509.P8616086371887791814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A105509 (n : ℕ) : ℤ :=
  (A105509.P8616086371887791814.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A105509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105515.P13688755755943163422

`∑[val(A008963(A028310(n)), 5)]`
-/

namespace A105515.P13688755755943163422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008963 (A028310 n).toNat).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105515.P13688755755943163422

noncomputable section

/-- A105515: Number of times 5 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105515.P13688755755943163422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105515 (n : ℕ) : ℤ :=
  (A105515.P13688755755943163422.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105516.P5711877861182647803

`∑[val(A008963(A028310(n)), 6)]`
-/

namespace A105516.P5711877861182647803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008963 (A028310 n).toNat).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105516.P5711877861182647803

noncomputable section

/-- A105516: Number of times 6 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105516.P5711877861182647803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105516 (n : ℕ) : ℤ :=
  (A105516.P5711877861182647803.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105517.P17288421911646567995

`∑[val(A008963(A028310(n)), 7)]`
-/

namespace A105517.P17288421911646567995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008963 (A028310 n).toNat).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105517.P17288421911646567995

noncomputable section

/-- A105517: Number of times 7 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105517.P17288421911646567995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105517 (n : ℕ) : ℤ :=
  (A105517.P17288421911646567995.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105518.P10973829342927970951

`∑[val(A008963(A028310(n)), 8)]`
-/

namespace A105518.P10973829342927970951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008963 (A028310 n).toNat).toNat 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105518.P10973829342927970951

noncomputable section

/-- A105518: Number of times 8 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105518.P10973829342927970951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105518 (n : ℕ) : ℤ :=
  (A105518.P10973829342927970951.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105519.P16876643181777690168

`∑[C(A008963(n), 9)]`
-/

namespace A105519.P16876643181777690168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008963 n).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105519.P16876643181777690168

noncomputable section

/-- A105519: Number of times 9 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105519.P16876643181777690168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105519 (n : ℕ) : ℤ :=
  (A105519.P16876643181777690168.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105598.P11298029730937636855

`∑[A105597(n)]`
-/

namespace A105598.P11298029730937636855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105598.P11298029730937636855

noncomputable section

/-- A105598: Partial sums of central numbers for a Moebius-binomial triangle.

Offset 0, canonical program `A105598.P11298029730937636855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105598 (n : ℕ) : ℤ :=
  A105598.P11298029730937636855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105720.P4544392983901701878

`A036439(2*n+3)-A036439(n+1)`
-/

namespace A105720.P4544392983901701878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (2 * n + 3) - A036439 (n + 1)

end

end A105720.P4544392983901701878

noncomputable section

/-- A105720: Triangular matchstick numbers in the class of prime numbers: sum of n-th and next n primes.

Offset 1, canonical program `A105720.P4544392983901701878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A105720 (n : ℕ) : ℤ :=
  A105720.P4544392983901701878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A105720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105755.P6113369147391080611

`A104144(n+10)+A104144(n)-A127193(n+1)`
-/

namespace A105755.P6113369147391080611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (n + 10) + (A104144 n - A127193 (n + 1))

end

end A105755.P6113369147391080611

noncomputable section

/-- A105755: Lucas 9-step numbers.

Offset 1, canonical program `A105755.P6113369147391080611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A105755 (n : ℕ) : ℤ :=
  A105755.P6113369147391080611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A105755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105772.P13562742460051906180

`round(A045392(n+1)/7)`
-/

namespace A105772.P13562742460051906180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A045392 (n + 1) : ℚ) / 7)

end

end A105772.P13562742460051906180

noncomputable section

/-- A105772: Numbers k such that 7*k + 2 is prime.

Offset 1, canonical program `A105772.P13562742460051906180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105772 (n : ℕ) : ℤ :=
  A105772.P13562742460051906180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106033.P11683275331328434839

`A080883(A033286(n+1))`
-/

namespace A106033.P11683275331328434839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (A033286 (n + 1)).toNat

end

end A106033.P11683275331328434839

noncomputable section

/-- A106033: a(n) is the least number k such that n*prime(n)+k is a perfect square.

Offset 1, canonical program `A106033.P11683275331328434839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033286, A080883, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A106033 (n : ℕ) : ℤ :=
  A106033.P11683275331328434839.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033286, A080883, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A106033.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106035.P16227525705012729151

`A006340(A049473(n+1)-A049473(n))`
-/

namespace A106035.P16227525705012729151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006340 (A049473 (n + 1) - A049473 n).toNat

end

end A106035.P16227525705012729151

noncomputable section

/-- A106035: The "Octanacci" sequence: Trajectory of 1 under the morphism 1->{1,2,1}, 2->{1}.

Offset 0, canonical program `A106035.P16227525705012729151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106035 (n : ℕ) : ℤ :=
  A106035.P16227525705012729151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106154.P17885719808567431841

`4-(A062756(n)-A062756(A061393(2*(n+2))))`
-/

namespace A106154.P17885719808567431841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (A062756 n - A062756 (A061393 (2 * (n + 2))).toNat)

end

end A106154.P17885719808567431841

noncomputable section

/-- A106154: Generation 5 of the substitution 1->{2, 1, 2}, 2->{3, 2, 3}, 3->{4, 3, 4}, 4->{5, 4, 5}, 5->{6, 5, 6}, 6->{1, 6, 1}, starting with 1.

Offset 0, canonical program `A106154.P17885719808567431841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A106154 (n : ℕ) : ℤ :=
  A106154.P17885719808567431841.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A106154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106269.P2701720384490681382

`ceil(A106188(n)/2)`
-/

namespace A106269.P2701720384490681382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A106188 n : ℚ) / 2⌉

end

end A106269.P2701720384490681382

noncomputable section

/-- A106269: Expansion of 1/((1 - x^2)*(2 - c(x))), where c(x) is the g.f. of A000108.

Offset 0, canonical program `A106269.P2701720384490681382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A106269 (n : ℕ) : ℤ :=
  A106269.P2701720384490681382.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A106269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106587.P10471474912979414832

`A001248(n+1)+(n+1)²`
-/

namespace A106587.P10471474912979414832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A106587.P10471474912979414832

noncomputable section

/-- A106587: Sum of n-th prime squared and n-th perfect square.

Offset 1, canonical program `A106587.P10471474912979414832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106587 (n : ℕ) : ℤ :=
  A106587.P10471474912979414832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106588.P17388053404201325295

`A001248(n+1)-(n+1)²`
-/

namespace A106588.P17388053404201325295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A106588.P17388053404201325295

noncomputable section

/-- A106588: Difference between n-th prime squared and n-th perfect square.

Offset 1, canonical program `A106588.P17388053404201325295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106588 (n : ℕ) : ℤ :=
  A106588.P17388053404201325295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106637.P9828308032645277911

`A004277(n)+gcd(6, A299255(n))`
-/

namespace A106637.P9828308032645277911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (Int.gcd 6 (A299255 n) : ℤ)

end

end A106637.P9828308032645277911

noncomputable section

/-- A106637: Accumulation of permutation sequence on three symbols such that a(n+2) - 2*a(n+1) - a(n) = 0 overall.

Offset 1, canonical program `A106637.P9828308032645277911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106637 (n : ℕ) : ℤ :=
  A106637.P9828308032645277911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106671.P17412400557065683852

`xor(1, A066116(n+3))%3`
-/

namespace A106671.P17412400557065683852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 1 (A066116 (n + 3))) 3

end

end A106671.P17412400557065683852

noncomputable section

/-- A106671: a(n) = ( prime(n + 2) * prime(n) - prime(n + 1)^2 ) modulo 3.

Offset 1, canonical program `A106671.P17412400557065683852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106671 (n : ℕ) : ℤ :=
  A106671.P17412400557065683852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106927.P1792570215804592626

`∩[A038894(n+1), A045373(n+1)]`
-/

namespace A106927.P1792570215804592626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P1792570215804592626

noncomputable section

/-- A106927: Primes of the form 2x^2+xy+8y^2, with x and y any integer.

Offset 1, canonical program `A106927.P1792570215804592626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A106927 (n : ℕ) : ℤ :=
  (A106927.P1792570215804592626.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A106927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107587.P2188899179976675921

`(A343773(n)+A001006(n))/2`
-/

namespace A107587.P2188899179976675921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343773 n + A001006 n : ℚ) / 2

end

end A107587.P2188899179976675921

noncomputable section

/-- A107587: Number of Motzkin n-paths with an even number of up steps.

Offset 0, canonical program `A107587.P2188899179976675921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A107587 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107587.P2188899179976675921.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A107587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107958.P8038566449556300179

`A107947(2^(n+1)-1)`
-/

namespace A107958.P8038566449556300179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107947 (2 ^ (n + 1) - 1)

end

end A107958.P8038566449556300179

noncomputable section

/-- A107958: a(n) = term at position 2^n in A107957.

Offset 0, canonical program `A107958.P8038566449556300179`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107958 (n : ℕ) : ℤ :=
  A107958.P8038566449556300179.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107968.P7358323612675776155

`2*A107956(n)-A107959(n)`
-/

namespace A107968.P7358323612675776155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107956 n - A107959 n

end

end A107968.P7358323612675776155

noncomputable section

/-- A107968: a(n) = (n+1)*(n+2)^3*(n+3)^2*(n+4)*(3n+5)/1440.

Offset 0, canonical program `A107968.P7358323612675776155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107968 (n : ℕ) : ℤ :=
  A107968.P7358323612675776155.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108079.P2571972727151902477

`A117671(n)-A001791(n)`
-/

namespace A108079.P2571972727151902477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117671 n - A001791 n

end

end A108079.P2571972727151902477

noncomputable section

/-- A108079: a(n) = Sum_{i=0..n} C(2n+i,n+i).

Offset 0, canonical program `A108079.P2571972727151902477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A108079 (n : ℕ) : ℤ :=
  A108079.P2571972727151902477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A108079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108524.P1272162441215940971

`(A047891(n+1)+a(n-1))/2` with `a(0)=1`
-/

namespace A108524.P1272162441215940971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A047891 (n + 1) : ℚ) + a (n - 1)) / 2

end

end A108524.P1272162441215940971

noncomputable section

/-- A108524: Number of ordered rooted trees with n generators.

Offset 1, canonical program `A108524.P1272162441215940971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A108524 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A108524.P1272162441215940971.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A108524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108584.P13995613551814768691

`A024913(n+1)+9`
-/

namespace A108584.P13995613551814768691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024913 (n + 1) + 9

end

end A108584.P13995613551814768691

noncomputable section

/-- A108584: Numbers k such that 10*k - 97 is prime.

Offset 1, canonical program `A108584.P13995613551814768691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108584 (n : ℕ) : ℤ :=
  A108584.P13995613551814768691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108670.P1203074175847195670

`2*A107956(n)-A107962(n)`
-/

namespace A108670.P1203074175847195670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107956 n - A107962 n

end

end A108670.P1203074175847195670

noncomputable section

/-- A108670: a(n) = (n+1)(n+2)^3*(n+3)(n+4)(5n^2 + 16n + 15)/1440.

Offset 0, canonical program `A108670.P1203074175847195670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108670 (n : ℕ) : ℤ :=
  A108670.P1203074175847195670.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108753.P3416941755188249955

`∑[A073497(n+1)]`
-/

namespace A108753.P3416941755188249955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108753.P3416941755188249955

noncomputable section

/-- A108753: Difference between the n-th partial sum of the squares (A000330) and the n-th partial sum of the primes (A007504).

Offset 1, canonical program `A108753.P3416941755188249955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108753 (n : ℕ) : ℤ :=
  A108753.P3416941755188249955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108855.P10922145306609028773

`A108588(n+3)-3`
-/

namespace A108855.P10922145306609028773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108588 (n + 3) - 3

end

end A108855.P10922145306609028773

noncomputable section

/-- A108855: Numbers n such that 10*n + 127 is prime.

Offset 1, canonical program `A108855.P10922145306609028773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A108855 (n : ℕ) : ℤ :=
  A108855.P10922145306609028773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A108855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108863.P15641938226968541285

`A027914(n)-A005717(n+1)`
-/

namespace A108863.P15641938226968541285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - A005717 (n + 1)

end

end A108863.P15641938226968541285

noncomputable section

/-- A108863: Number of Dyck paths containing exactly one UUUD.

Offset 0, canonical program `A108863.P15641938226968541285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A108863 (n : ℕ) : ℤ :=
  A108863.P15641938226968541285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A108863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108946.P7071863590462326529

`n%2-A097948(n)`
-/

namespace A108946.P7071863590462326529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - A097948 n

end

end A108946.P7071863590462326529

noncomputable section

/-- A108946: a(2n) = A001570(n), a(2n+1) = -A007654(n+1).

Offset 0, canonical program `A108946.P7071863590462326529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A108946 (n : ℕ) : ℤ :=
  A108946.P7071863590462326529.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A108946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109263.P13637171917933416295

`Δ[(A081696(abs(1-n))-1)/2]`
-/

namespace A109263.P13637171917933416295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081696 |1 - (n : ℤ)|.toNat - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109263.P13637171917933416295

noncomputable section

/-- A109263: A Catalan transform of F(n-1)-0^n.

Offset 0, canonical program `A109263.P13637171917933416295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A109263 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A109263.P13637171917933416295.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A109263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109386.P5253081201004666906

`∑{d}[n+1, A245579(#)]`
-/

namespace A109386.P5253081201004666906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245579 d

end

end A109386.P5253081201004666906

noncomputable section

/-- A109386: G.f. is the logarithm of the g.f. of A107742: Sum_{n>=1} (a(n)/n)*x^n = log( Sum_{n>=0} A107742(n)*x^n ).

Offset 1, canonical program `A109386.P5253081201004666906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109386 (n : ℕ) : ℤ :=
  A109386.P5253081201004666906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109554.P5451691980402463312

`(A046933(n+1)+1)*∑[∑{p}[n+1, val(#, n+1)]]`
-/

namespace A109554.P5451691980402463312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046933 (n + 1) + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A109554.P5451691980402463312

noncomputable section

/-- A109554: pi(n)[prime(n+1)-prime(n)], where pi(n) is the number of prime numbers less than or equal to n and prime(k) is the k-th prime.

Offset 1, canonical program `A109554.P5451691980402463312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109554 (n : ℕ) : ℤ :=
  A109554.P5451691980402463312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109555.P16983294411619929337

`p?[A006005(n+1)-A255270(A003056(n))]`
-/

namespace A109555.P16983294411619929337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) - A255270 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109555.P16983294411619929337

noncomputable section

/-- A109555: prime(k) for those k where floor(2*(((prime(k + 1) - prime(k))*PrimePi(k)) mod (8*k)) / k) = m with m = 0.

Offset 1, canonical program `A109555.P16983294411619929337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A109555 (n : ℕ) : ℤ :=
  A109555.P16983294411619929337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A109555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109654.P16432518686130582908

`A000040(A003622(n+1)+1)`
-/

namespace A109654.P16432518686130582908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003622 (n + 1) + 1).toNat

end

end A109654.P16432518686130582908

noncomputable section

/-- A109654: Primes A000040(i) such that A003849(i-1) = 1.

Offset 1, canonical program `A109654.P16432518686130582908`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109654 (n : ℕ) : ℤ :=
  A109654.P16432518686130582908.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109654.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109796.P12640784627107827928

`∑[A109791(n+1)]`
-/

namespace A109796.P12640784627107827928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P12640784627107827928

noncomputable section

/-- A109796: a(n) = prime(1^4) + prime(2^4) + ... + prime(n^4).

Offset 1, canonical program `A109796.P12640784627107827928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A109796 (n : ℕ) : ℤ :=
  A109796.P12640784627107827928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A109796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109805.P13473792619790468409

`A031131(n+1)*A065091(n+1)`
-/

namespace A109805.P13473792619790468409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1) * A065091 (n + 1)

end

end A109805.P13473792619790468409

noncomputable section

/-- A109805: a(n) = prime(n+2)*prime(n+1) - prime(n)*prime(n+1).

Offset 1, canonical program `A109805.P13473792619790468409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109805 (n : ℕ) : ℤ :=
  A109805.P13473792619790468409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109816.P1935135816132311895

`A109815(A064429(n)+1)`
-/

namespace A109816.P1935135816132311895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109815 (A064429 n + 1).toNat

end

end A109816.P1935135816132311895

noncomputable section

/-- A109816: n^2 followed by n followed by n^3.

Offset 1, canonical program `A109816.P1935135816132311895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109816 (n : ℕ) : ℤ :=
  A109816.P1935135816132311895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109847.P355230552138122519

`lcm(n+1, A061601(n+1))`
-/

namespace A109847.P355230552138122519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A061601 (n + 1))

end

end A109847.P355230552138122519

noncomputable section

/-- A109847: Least common multiple of n and its 9's complement.

Offset 1, canonical program `A109847.P355230552138122519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109847 (n : ℕ) : ℤ :=
  (A109847.P355230552138122519.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109848.P3242327494572458418

`gcd(n+1, A061601(n+1))`
-/

namespace A109848.P3242327494572458418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A061601 (n + 1))

end

end A109848.P3242327494572458418

noncomputable section

/-- A109848: Highest common factor of n and its 9's complement.

Offset 1, canonical program `A109848.P3242327494572458418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109848 (n : ℕ) : ℤ :=
  (A109848.P3242327494572458418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109940.P11561411005126974692

`(n+1)*A097326(n+1)`
-/

namespace A109940.P11561411005126974692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A097326 (n + 1)

end

end A109940.P11561411005126974692

noncomputable section

/-- A109940: Largest k-digit multiple of n where k is the number of digits in n.

Offset 1, canonical program `A109940.P11561411005126974692`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097326, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109940 (n : ℕ) : ℤ :=
  A109940.P11561411005126974692.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097326, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109940.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110003.P13048558525306348465

`A110001(A116966(n))`
-/

namespace A110003.P13048558525306348465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (A116966 n).toNat

end

end A110003.P13048558525306348465

noncomputable section

/-- A110003: n followed by n^3 followed by n^2 followed by n^4.

Offset 1, canonical program `A110003.P13048558525306348465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110003 (n : ℕ) : ℤ :=
  A110003.P13048558525306348465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110004.P6947858922265010117

`A110001(A056699(n+1))`
-/

namespace A110004.P6947858922265010117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (A056699 (n + 1)).toNat

end

end A110004.P6947858922265010117

noncomputable section

/-- A110004: n followed by n^3 followed by n^4 followed by n^2.

Offset 1, canonical program `A110004.P6947858922265010117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110004 (n : ℕ) : ℤ :=
  A110004.P6947858922265010117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110006.P5526033503692058386

`n+1-A066096(A003622(n+1)%(n+1))`
-/

namespace A110006.P5526033503692058386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A066096 (Int.tmod (A003622 (n + 1)) (n + 1 : ℤ)).toNat

end

end A110006.P5526033503692058386

noncomputable section

/-- A110006: a(n) = n-F(F(n)) where F(x)=A120613(x)=floor(phi*floor(x/phi)) and phi=(1+sqrt(5))/2.

Offset 1, canonical program `A110006.P5526033503692058386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110006 (n : ℕ) : ℤ :=
  A110006.P5526033503692058386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110099.P9542804570626657309

`A053141(n)-A047665(n)`
-/

namespace A110099.P9542804570626657309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n - A047665 n

end

end A110099.P9542804570626657309

noncomputable section

/-- A110099: Number of return steps to the line y = x from the line y = x+1 (i.e., E steps from the line y = x+1 to the line y = x) in all Delannoy paths of length n.

Offset 0, canonical program `A110099.P9542804570626657309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A110099 (n : ℕ) : ℤ :=
  A110099.P9542804570626657309.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A110099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110166.P3687076817918549492

`1/2*(5^n+A026375(n))`
-/

namespace A110166.P3687076817918549492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((5 ^ n : ℤ) + A026375 n : ℚ)

end

end A110166.P3687076817918549492

noncomputable section

/-- A110166: Row sums of Riordan array A110165.

Offset 0, canonical program `A110166.P3687076817918549492`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110166 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A110166.P3687076817918549492.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110166.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110212.P7093181171410648257

`A110211(n)+A110211(n)-A110210(n)`
-/

namespace A110212.P7093181171410648257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110211 n + (A110211 n - A110210 n)

end

end A110212.P7093181171410648257

noncomputable section

/-- A110212: a(n+3) = 6*a(n) - 5*a(n+2), a(0) = -1, a(1) = 5, a(2) = -25.

Offset 0, canonical program `A110212.P7093181171410648257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A110212 (n : ℕ) : ℤ :=
  A110212.P7093181171410648257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A110212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110226.P14766994178741570182

`∑[record[n*A101637(n+1)]+1]`
-/

namespace A110226.P14766994178741570182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A101637 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110226.P14766994178741570182

noncomputable section

/-- A110226: 1 + sum of first n 4-almost primes.

Offset 0, canonical program `A110226.P14766994178741570182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110226 (n : ℕ) : ℤ :=
  A110226.P14766994178741570182.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110228.P56886554202489931

`lt[1, A082299(n+1)*A101637(n+1)]+1`
-/

namespace A110228.P56886554202489931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1) * A101637 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A110228.P56886554202489931

noncomputable section

/-- A110228: 4-almost primes p * q * r * s not relatively prime to p + q + r + s.

Offset 1, canonical program `A110228.P56886554202489931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1783 terms. -/
def A110228 (n : ℕ) : ℤ :=
  (A110228.P56886554202489931.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1783 terms. -/
def A110228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110397.P12959332454578711254

`(A061601(n+1)+n+2)²-(n+1)²`
-/

namespace A110397.P12959332454578711254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061601 (n + 1) + (n + 2 : ℤ)) ^ 2 - ((n + 1) ^ 2 : ℤ)

end

end A110397.P12959332454578711254

noncomputable section

/-- A110397: a(n) = (10^k - n)(10^k + n), where k is the number of digits in n.

Offset 1, canonical program `A110397.P12959332454578711254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110397 (n : ℕ) : ℤ :=
  A110397.P12959332454578711254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110485.P11135789409240485846

`A110001(xor(1, n)+1)`
-/

namespace A110485.P11135789409240485846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (Nat.xor 1 n + 1)

end

end A110485.P11135789409240485846

noncomputable section

/-- A110485: n^2 followed by n followed by n^4 followed by n^3.

Offset 1, canonical program `A110485.P11135789409240485846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110485 (n : ℕ) : ℤ :=
  A110485.P11135789409240485846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110560.P3912990218243023519

`A090585(A131055(n+1))`
-/

namespace A110560.P3912990218243023519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090585 (A131055 (n + 1)).toNat

end

end A110560.P3912990218243023519

noncomputable section

/-- A110560: Numerators of T(n+1)/n! reduced to lowest terms, where T(n) are the triangular numbers A000217.

Offset 0, canonical program `A110560.P3912990218243023519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110560 (n : ℕ) : ℤ :=
  A110560.P3912990218243023519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110602.P5511609513092958212

`eq[2, ∑{e}[A007090(n), #]]`
-/

namespace A110602.P5511609513092958212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110602.P5511609513092958212

noncomputable section

/-- A110602: Numbers n whose base 4 representations, interpreted as base 10 integers, are semiprimes.

Offset 1, canonical program `A110602.P5511609513092958212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 828 terms. -/
def A110602 (n : ℕ) : ℤ :=
  (A110602.P5511609513092958212.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 828 terms. -/
def A110602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110671.P14702464879593556510

`∑[A110670(n)]`
-/

namespace A110671.P14702464879593556510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110671.P14702464879593556510

noncomputable section

/-- A110671: Sequence is {a(6,n)}, where a(m,n) is defined at sequence A110665.

Offset 0, canonical program `A110671.P14702464879593556510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110671 (n : ℕ) : ℤ :=
  A110671.P14702464879593556510.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110833.P8809668050970673234

`A008864(n+1)²`
-/

namespace A110833.P8809668050970673234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) ^ 2

end

end A110833.P8809668050970673234

noncomputable section

/-- A110833: a(n) = (prime(n)+1)^2.

Offset 1, canonical program `A110833.P8809668050970673234`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110833 (n : ℕ) : ℤ :=
  A110833.P8809668050970673234.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110833.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111020.P1849780843808022538

`eq[2, A039970(2*n+1)]`
-/

namespace A111020.P1849780843808022538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039970 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111020.P1849780843808022538

noncomputable section

/-- A111020: Indices of Catalan numbers (A000108) that are == 2 mod 3.

Offset 1, canonical program `A111020.P1849780843808022538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. -/
def A111020 (n : ℕ) : ℤ :=
  (A111020.P1849780843808022538.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. -/
def A111020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111037.P2009686031977942018

`A110916(n)+A111025(n)`
-/

namespace A111037.P2009686031977942018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110916 n + A111025 n

end

end A111037.P2009686031977942018

noncomputable section

/-- A111037: Number of squares plus number of cubes between 10n and 10n+9 (inclusive).

Offset 0, canonical program `A111037.P2009686031977942018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110916, A111025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111037 (n : ℕ) : ℤ :=
  A111037.P2009686031977942018.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110916, A111025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111037.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111071.P17768111592594357772

`A006094(n+1)-A000040(n+3)`
-/

namespace A111071.P17768111592594357772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A000040 (n + 3)

end

end A111071.P17768111592594357772

noncomputable section

/-- A111071: Difference between the product of two consecutive primes and the next prime.

Offset 1, canonical program `A111071.P17768111592594357772`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111071 (n : ℕ) : ℤ :=
  A111071.P17768111592594357772.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111071.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111102.P16224895778482294090

`∑[A000002(n+1)²]`
-/

namespace A111102.P16224895778482294090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111102.P16224895778482294090

noncomputable section

/-- A111102: Cumulative sum of squares of Kolakoski sequence (A000002).

Offset 1, canonical program `A111102.P16224895778482294090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111102 (n : ℕ) : ℤ :=
  A111102.P16224895778482294090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111213.P2402949892722593442

`p?[2*A104103(n+1)-1]`
-/

namespace A111213.P2402949892722593442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104103 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111213.P2402949892722593442

noncomputable section

/-- A111213: Difference between the closest squares surrounding prime p is prime.

Offset 1, canonical program `A111213.P2402949892722593442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3339 terms. -/
def A111213 (n : ℕ) : ℤ :=
  A111213.P2402949892722593442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3339 terms. -/
def A111213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111225.P11920097496532907882

`A087505(n+2)-1`
-/

namespace A111225.P11920097496532907882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087505 (n + 2) - 1

end

end A111225.P11920097496532907882

noncomputable section

/-- A111225: Numbers n such that 5*n + 8 is prime.

Offset 1, canonical program `A111225.P11920097496532907882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111225 (n : ℕ) : ℤ :=
  A111225.P11920097496532907882.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111226.P11734792993096453730

`A111224(n+2)-1`
-/

namespace A111226.P11734792993096453730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111224 (n + 2) - 1

end

end A111226.P11734792993096453730

noncomputable section

/-- A111226: Numbers n such that 5*n + 12 is prime.

Offset 1, canonical program `A111226.P11734792993096453730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111226 (n : ℕ) : ℤ :=
  A111226.P11734792993096453730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111250.P4066307919200103457

`A089033(n+2)-1`
-/

namespace A111250.P4066307919200103457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089033 (n + 2) - 1

end

end A111250.P4066307919200103457

noncomputable section

/-- A111250: Numbers n such that 7*n + 10 is prime.

Offset 1, canonical program `A111250.P4066307919200103457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111250 (n : ℕ) : ℤ :=
  A111250.P4066307919200103457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111255.P9134755311441869798

`p?[A008864(n+3)+A000040(n+1)]`
-/

namespace A111255.P9134755311441869798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 3) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111255.P9134755311441869798

noncomputable section

/-- A111255: Primes in A111254.

Offset 1, canonical program `A111255.P9134755311441869798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. -/
def A111255 (n : ℕ) : ℤ :=
  A111255.P9134755311441869798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. -/
def A111255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111408.P2533623690227406188

`A051027(n+1)-∑{d}[∑{d}[n, #], #]`
-/

namespace A111408.P2533623690227406188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A111408.P2533623690227406188

noncomputable section

/-- A111408: f(f(n+1))-f(f(n)), where f(0)=0, and for m>0, f(m) = sigma(m) = A000203(m).

Offset 0, canonical program `A111408.P2533623690227406188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111408 (n : ℕ) : ℤ :=
  A111408.P2533623690227406188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111489.P16863949455046068212

`p?[lt[0, A082023(n)]+A000040(n+1)]`
-/

namespace A111489.P16863949455046068212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P16863949455046068212

noncomputable section

/-- A111489: Primes of the form prime(k) + composite(k) for some k.

Offset 1, canonical program `A111489.P16863949455046068212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1095 terms. -/
def A111489 (n : ℕ) : ℤ :=
  A111489.P16863949455046068212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1095 terms. -/
def A111489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111517.P10858931416104658569

`floor(2*A045471(n+1)/7)`
-/

namespace A111517.P10858931416104658569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A045471 (n + 1) : ℚ) / 7)⌋

end

end A111517.P10858931416104658569

noncomputable section

/-- A111517: Numbers k such that (7*k + 1)/2 is prime.

Offset 1, canonical program `A111517.P10858931416104658569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111517 (n : ℕ) : ℤ :=
  A111517.P10858931416104658569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111708.P14227470248071541611

`(n+1)*(A061601(n)+n)`
-/

namespace A111708.P14227470248071541611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A061601 n + (n : ℤ))

end

end A111708.P14227470248071541611

noncomputable section

/-- A111708: a(n) = n concatenated with 9's complement of n.

Offset 0, canonical program `A111708.P14227470248071541611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111708 (n : ℕ) : ℤ :=
  A111708.P14227470248071541611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111851.P6379286893962933652

`∑[char[eq[1, A023961(n+1)]]]`
-/

namespace A111851.P6379286893962933652
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111851.P6379286893962933652

noncomputable section

/-- A111851: Number of numbers m <= n such that 1 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111851.P6379286893962933652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9840 terms. -/
def A111851 (n : ℕ) : ℤ :=
  (A111851.P6379286893962933652.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9840 terms. -/
def A111851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111852.P16125321229967938784

`∑[char[eq[2, A023961(n+1)]]]`
-/

namespace A111852.P16125321229967938784
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111852.P16125321229967938784

noncomputable section

/-- A111852: Number of numbers m <= n such that 2 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111852.P16125321229967938784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A111852 (n : ℕ) : ℤ :=
  (A111852.P16125321229967938784.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A111852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111853.P1744786022427487095

`∑[char[eq[3, A023961(n+1)]]]`
-/

namespace A111853.P1744786022427487095
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111853.P1744786022427487095

noncomputable section

/-- A111853: Number of numbers m <= n such that 3 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111853.P1744786022427487095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9880 terms. -/
def A111853 (n : ℕ) : ℤ :=
  (A111853.P1744786022427487095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9880 terms. -/
def A111853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111856.P3255611336082219841

`∑[val(A023961(Δ[n²]-n)+1, 7)]`
-/

namespace A111856.P3255611336082219841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A023961 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat + 1).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111856.P3255611336082219841

noncomputable section

/-- A111856: Number of numbers m <= n such that 6 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111856.P3255611336082219841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111856 (n : ℕ) : ℤ :=
  (A111856.P3255611336082219841.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111858.P11714212007858520479

`∑[char[eq[8, A023961(n+1)]]]`
-/

namespace A111858.P11714212007858520479
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111858.P11714212007858520479

noncomputable section

/-- A111858: Number of numbers m <= n such that 8 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111858.P11714212007858520479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9980 terms. -/
def A111858 (n : ℕ) : ℤ :=
  (A111858.P11714212007858520479.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9980 terms. -/
def A111858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111859.P11523082048664198437

`∑[C(A023961(n+1), 9)]`
-/

namespace A111859.P11523082048664198437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A023961 (n + 1)).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111859.P11523082048664198437

noncomputable section

/-- A111859: Number of numbers m <= n such that 9 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111859.P11523082048664198437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111859 (n : ℕ) : ℤ :=
  (A111859.P11523082048664198437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111862.P16889340879789303359

`A023961(10*10*(n+1))`
-/

namespace A111862.P16889340879789303359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (10 * (10 * (n + 1)))

end

end A111862.P16889340879789303359

noncomputable section

/-- A111862: Second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111862.P16889340879789303359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A111862 (n : ℕ) : ℤ :=
  A111862.P16889340879789303359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A111862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112251.P16085361699206159827

`∩[A112249(n+1)+1, A112250(n+1)]`
-/

namespace A112251.P16085361699206159827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112249 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112251.P16085361699206159827

noncomputable section

/-- A112251: Numbers m such that m mod floor(log_2(m)) = 1.

Offset 1, canonical program `A112251.P16085361699206159827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 975 terms. -/
def A112251 (n : ℕ) : ℤ :=
  (A112251.P16085361699206159827.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 975 terms. -/
def A112251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112456.P13854223494093207296

`C(A039915(n+1)+1, 2)`
-/

namespace A112456.P13854223494093207296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A039915 (n + 1) + 1).toNat 2

end

end A112456.P13854223494093207296

noncomputable section

/-- A112456: Least triangular number divisible by n-th prime.

Offset 1, canonical program `A112456.P13854223494093207296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112456 (n : ℕ) : ℤ :=
  (A112456.P13854223494093207296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112591.P881006363963480545

`xor(A000040(n+1), A065091(n+1))`
-/

namespace A112591.P881006363963480545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000040 (n + 1)) (A065091 (n + 1))

end

end A112591.P881006363963480545

noncomputable section

/-- A112591: a(n) = prime(n) XOR prime(n + 1).

Offset 1, canonical program `A112591.P881006363963480545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112591 (n : ℕ) : ℤ :=
  A112591.P881006363963480545.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112632.P1974851305689260056

`∑[1-A008864(n+1)%3]`
-/

namespace A112632.P1974851305689260056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A008864 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112632.P1974851305689260056

noncomputable section

/-- A112632: Excess of 3k - 1 primes over 3k + 1 primes, beginning with 2.

Offset 1, canonical program `A112632.P1974851305689260056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112632 (n : ℕ) : ℤ :=
  A112632.P1974851305689260056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112687.P16478719925873435881

`eq[1, A062108(a(A053186(n)))]` with `a(0)=25`
-/

namespace A112687.P16478719925873435881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [25] fun n f2 =>
  A062108 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112687.P16478719925873435881

noncomputable section

/-- A112687: Numbers n that cannot be decomposed into the sum of at most 4 square numbers when using the following algorithm: Repeat the following 2 steps 4 times: 1-find the largest square s smaller than n; 2-n=n-s Numbers that can be decomposed yield final values of n=0. The sequence presented is of those numbers where n is not 0 when this algorithm ends.

Offset 1, canonical program `A112687.P16478719925873435881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3605 terms. -/
def A112687 (n : ℕ) : ℤ :=
  (A112687.P16478719925873435881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3605 terms. -/
def A112687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112696.P14907744198856643035

`∑[A151374(n)]`
-/

namespace A112696.P14907744198856643035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P14907744198856643035

noncomputable section

/-- A112696: Partial sum of Catalan numbers A000108 multiplied by powers of 2.

Offset 0, canonical program `A112696.P14907744198856643035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A112696 (n : ℕ) : ℤ :=
  A112696.P14907744198856643035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A112696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112715.P9692264855410737718

`p?[2*A082662(n+1)-1]`
-/

namespace A112715.P9692264855410737718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082662 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112715.P9692264855410737718

noncomputable section

/-- A112715: Primes in A112714.

Offset 1, canonical program `A112715.P9692264855410737718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A112715 (n : ℕ) : ℤ :=
  A112715.P9692264855410737718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A112715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112849.P15650256239364234113

`A057427(n)+A001700(n)`
-/

namespace A112849.P15650256239364234113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A001700 n

end

end A112849.P15650256239364234113

noncomputable section

/-- A112849: Number of congruence classes (epimorphisms/vertex partitionings induced by graph endomorphisms) of undirected cycles of even length: |C(C_{2*n})|.

Offset 1, canonical program `A112849.P15650256239364234113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A112849 (n : ℕ) : ℤ :=
  A112849.P15650256239364234113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A112849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113215.P12781133178255026095

`∑[∏{e}[n, A027656(#)]]-1`
-/

namespace A113215.P12781133178255026095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A027656 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A113215.P12781133178255026095

noncomputable section

/-- A113215: Repeat A006218(n) 2n+1 times.

Offset 0, canonical program `A113215.P12781133178255026095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113215 (n : ℕ) : ℤ :=
  A113215.P12781133178255026095.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113250.P12128648228767955689

`(A079757(n+4)+1)*4^n`
-/

namespace A113250.P12128648228767955689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079757 (n + 4) + 1) * (4 ^ n : ℤ)

end

end A113250.P12128648228767955689

noncomputable section

/-- A113250: Expansion of g.f. -(1 - 48*x^2 - 256*x^3) / ((1 - 4*x)*(1 + 4*x)*(1 + 4*x + 16*x^2)).

Offset 0, canonical program `A113250.P12128648228767955689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A113250 (n : ℕ) : ℤ :=
  A113250.P12128648228767955689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A113250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113448.P12961173705019071715

`A049347(n)*A112848(n+1)`
-/

namespace A113448.P12961173705019071715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A112848 (n + 1)

end

end A113448.P12961173705019071715

noncomputable section

/-- A113448: Expansion of (eta(q^2)^2 * eta(q^9) * eta(q^18)) / (eta(q) * eta(q^6)) in powers of q.

Offset 1, canonical program `A113448.P12961173705019071715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113448 (n : ℕ) : ℤ :=
  A113448.P12961173705019071715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113728.P2802102494628422056

`A031131(n+1)*ceil(A000040(n+1)/A031131(n+1))`
-/

namespace A113728.P2802102494628422056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1) * ⌈(A000040 (n + 1) : ℚ) / (A031131 (n + 1) : ℚ)⌉

end

end A113728.P2802102494628422056

noncomputable section

/-- A113728: a(n) is the integer between p(n) and p(n+2) which is divisible by (p(n+2)-p(n)), where p(n) is the n-th prime.

Offset 1, canonical program `A113728.P2802102494628422056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A031131, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A113728 (n : ℕ) : ℤ :=
  A113728.P2802102494628422056.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A031131, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A113728.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113729.P14761420094418722741

`A006093(n+4)-A006093(n+1)%A031165(n+1)`
-/

namespace A113729.P14761420094418722741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 4) - Int.tmod (A006093 (n + 1)) (A031165 (n + 1))

end

end A113729.P14761420094418722741

noncomputable section

/-- A113729: a(n) is the integer between p(n) and p(n+3) which is divisible by (p(n+3)-p(n)), where p(n) is the n-th prime.

Offset 1, canonical program `A113729.P14761420094418722741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113729 (n : ℕ) : ℤ :=
  A113729.P14761420094418722741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113979.P12179664378347389896

`Δ[Δ[A056326(A028310(n))]]`
-/

namespace A113979.P12179664378347389896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113979.P12179664378347389896

noncomputable section

/-- A113979: Number of compositions of n with an even number of 1's.

Offset 0, canonical program `A113979.P12179664378347389896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A113979 (n : ℕ) : ℤ :=
  A113979.P12179664378347389896.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A113979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114114.P179079981037864306

`A103128(n+1)+A340507(n+1)-A003056(n)`
-/

namespace A114114.P179079981037864306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (n + 1) + (A340507 (n + 1) - A003056 n)

end

end A114114.P179079981037864306

noncomputable section

/-- A114114: An invertible partition matrix.

Offset 0, canonical program `A114114.P179079981037864306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114114 (n : ℕ) : ℤ :=
  A114114.P179079981037864306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114277.P12604113063236569068

`∑[A002057(n)]`
-/

namespace A114277.P12604113063236569068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114277.P12604113063236569068

noncomputable section

/-- A114277: Sum of the lengths of the second ascents in all Dyck paths of semilength n+2.

Offset 0, canonical program `A114277.P12604113063236569068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A114277 (n : ℕ) : ℤ :=
  A114277.P12604113063236569068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A114277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114590.P10090074978158621732

`A014301(n+2)-A114515(n+1)`
-/

namespace A114590.P10090074978158621732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (n + 2) - A114515 (n + 1)

end

end A114590.P10090074978158621732

noncomputable section

/-- A114590: Number of peaks at even levels in all hill-free Dyck paths of semilength n+2 (a hill in a Dyck path is a peak at level 1).

Offset 0, canonical program `A114590.P10090074978158621732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A114590 (n : ℕ) : ℤ :=
  A114590.P10090074978158621732.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A114590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114703.P7889097354654684052

`A000045(A166517(n))*A117647(n)`
-/

namespace A114703.P7889097354654684052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A166517 n).toNat * A117647 n

end

end A114703.P7889097354654684052

noncomputable section

/-- A114703: a(2*n) = F(3*n)*F(3*n+2), a(2*n+1) = F(3*n+1)*F(3*n+2), where F = A000045.

Offset 0, canonical program `A114703.P7889097354654684052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A114703 (n : ℕ) : ℤ :=
  A114703.P7889097354654684052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A114703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114890.P12766305809805665187

`Δ[A003278(A081611(n))]+1`
-/

namespace A114890.P12766305809805665187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A081611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A114890.P12766305809805665187

noncomputable section

/-- A114890: First differences of A114889.

Offset 1, canonical program `A114890.P12766305809805665187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A114890 (n : ℕ) : ℤ :=
  A114890.P12766305809805665187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A114890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115002.P12075642485037102992

`A059377(n+6)/240`
-/

namespace A115002.P12075642485037102992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 6) : ℚ) / 240

end

end A115002.P12075642485037102992

noncomputable section

/-- A115002: a(n) = J_4(n)/240.

Offset 6, canonical program `A115002.P12075642485037102992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115002 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115002.P12075642485037102992.a (n - 6))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115002.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115141.P16815087321721103220

`xor(A063524(n), A115140(n))`
-/

namespace A115141.P16815087321721103220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A115140 n)

end

end A115141.P16815087321721103220

noncomputable section

/-- A115141: Convolution of A115140 with itself.

Offset 0, canonical program `A115141.P16815087321721103220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A115141 (n : ℕ) : ℤ :=
  A115141.P16815087321721103220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A115141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115218.P16102747875881407431

`and(A062289(n+1), A092323(n+1))`
-/

namespace A115218.P16102747875881407431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062289 (n + 1)) (A092323 (n + 1))

end

end A115218.P16102747875881407431

noncomputable section

/-- A115218: Triangle read by rows: zeroth row is 0; to get row n >= 1, append next 2^n numbers to end of previous row.

Offset 0, canonical program `A115218.P16102747875881407431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115218 (n : ℕ) : ℤ :=
  A115218.P16102747875881407431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115224.P1763659109622953996

`(n+1)²*A059376(n+1)`
-/

namespace A115224.P1763659109622953996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A059376 (n + 1)

end

end A115224.P1763659109622953996

noncomputable section

/-- A115224: Number of 3 X 3 symmetric matrices over Z(n) having determinant 1.

Offset 1, canonical program `A115224.P1763659109622953996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115224 (n : ℕ) : ℤ :=
  A115224.P1763659109622953996.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115224.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115259.P8985701988596292915

`A055017(A000040(n+1))`
-/

namespace A115259.P8985701988596292915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A000040 (n + 1)).toNat

end

end A115259.P8985701988596292915

noncomputable section

/-- A115259: Difference between the sum of digits in odd positions and the sum of digits in even positions of prime numbers.

Offset 1, canonical program `A115259.P8985701988596292915`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A055017, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115259 (n : ℕ) : ℤ :=
  A115259.P8985701988596292915.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A055017, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115259.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115260.P9883255391846930332

`p?[abs(A055017(A000040(n+1)))]`
-/

namespace A115260.P9883255391846930332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 (A000040 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115260.P9883255391846930332

noncomputable section

/-- A115260: Prime numbers in the sequence of the absolute difference of the sum of digits in odd positions and the sum of digits in even positions of prime numbers.

Offset 1, canonical program `A115260.P9883255391846930332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. -/
def A115260 (n : ℕ) : ℤ :=
  A115260.P9883255391846930332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. -/
def A115260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115298.P2752483122679105280

`∑[A000040(n+2)-A109763(n+2)]`
-/

namespace A115298.P2752483122679105280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A109763 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115298.P2752483122679105280

noncomputable section

/-- A115298: Row sums of A115297.

Offset 1, canonical program `A115298.P2752483122679105280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A115298 (n : ℕ) : ℤ :=
  A115298.P2752483122679105280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A115298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115352.P3098449421283651552

`A087734(n)+A038554(n-A087734(n))`
-/

namespace A115352.P3098449421283651552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 n + A038554 ((n : ℤ) - A087734 n).toNat

end

end A115352.P3098449421283651552

noncomputable section

/-- A115352: Concatenation of finite strings S_0, S_1, S_2, ..., where S_0 = {0} and for k >= 1, S_k is obtained from S_{k-1} by inserting the numbers 2^(k-1) through 2^k-1 after the initial 0.

Offset 0, canonical program `A115352.P3098449421283651552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A115352 (n : ℕ) : ℤ :=
  A115352.P3098449421283651552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A115352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115953.P1207985049942794865

`A115714(n)%3`
-/

namespace A115953.P1207985049942794865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115714 n) 3

end

end A115953.P1207985049942794865

noncomputable section

/-- A115953: Periodic {1,-1,0,0,1,-2,1,0,0,-1,1,-1}.

Offset 0, canonical program `A115953.P1207985049942794865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115953 (n : ℕ) : ℤ :=
  A115953.P1207985049942794865.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116127.P9546234981588161604

`Δ[round(A006005(n+1)/3)]`
-/

namespace A116127.P9546234981588161604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006005 (n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116127.P9546234981588161604

noncomputable section

/-- A116127: Number of numbers that are congruent to {2, 4} mod 6 between prime(n) and prime(n+1) inclusive.

Offset 1, canonical program `A116127.P9546234981588161604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A116127 (n : ℕ) : ℤ :=
  A116127.P9546234981588161604.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A116127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116406.P2533668275764511831

`(A128014(n)+A011782(n))/2`
-/

namespace A116406.P2533668275764511831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128014 n + A011782 n : ℚ) / 2

end

end A116406.P2533668275764511831

noncomputable section

/-- A116406: Expansion of ((1 + x - 2x^2) + (1+x)*sqrt(1-4x^2))/(2(1-4x^2)).

Offset 0, canonical program `A116406.P2533668275764511831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A116406 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A116406.P2533668275764511831.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A116406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116410.P11469624891977256019

`A124302(n)+A097861(n)`
-/

namespace A116410.P11469624891977256019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n + A097861 n

end

end A116410.P11469624891977256019

noncomputable section

/-- A116410: Expansion of (1-x-2x^2+sqrt(1-2x-3x^2))/(2*(1-2x-3x^2)).

Offset 0, canonical program `A116410.P11469624891977256019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A116410 (n : ℕ) : ℤ :=
  A116410.P11469624891977256019.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A116410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116545.P9412331065592776354

`∑[A115568(n+1)]`
-/

namespace A116545.P9412331065592776354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116545.P9412331065592776354

noncomputable section

/-- A116545: Sum of the largest Fibonacci exponent of prime factorizations of k, k=1..n.

Offset 1, canonical program `A116545.P9412331065592776354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116545 (n : ℕ) : ℤ :=
  A116545.P9412331065592776354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116592.P5877210315008298987

`A285763(2*n+1)+A093879(n+1)`
-/

namespace A116592.P5877210315008298987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285763 (2 * n + 1) + A093879 (n + 1)

end

end A116592.P5877210315008298987

noncomputable section

/-- A116592: a(0)=1; a(n) = b(n+2) + b(n), where b(n) = A004001(n) is the Hofstadter-Conway sequence defined by b(1) = b(2) = 1, b(n) = b(b(n-1)) + b(n-b(n-1)) for n>2.

Offset 0, canonical program `A116592.P5877210315008298987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A116592 (n : ℕ) : ℤ :=
  A116592.P5877210315008298987.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A116592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116602.P13006145556663672467

`eq[5, A039710(2*(n+1))]+1`
-/

namespace A116602.P13006145556663672467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116602.P13006145556663672467

noncomputable section

/-- A116602: Values n such that prime(2*n) mod 12 == 5.

Offset 1, canonical program `A116602.P13006145556663672467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. -/
def A116602 (n : ℕ) : ℤ :=
  (A116602.P13006145556663672467.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. -/
def A116602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116610.P10738996274935709144

`eq[11, A039710(A004277(n))]`
-/

namespace A116610.P10738996274935709144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116610.P10738996274935709144

noncomputable section

/-- A116610: Values of n such that prime(2*n) mod 12 = 11.

Offset 1, canonical program `A116610.P10738996274935709144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1223 terms. -/
def A116610 (n : ℕ) : ℤ :=
  (A116610.P10738996274935709144.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1223 terms. -/
def A116610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116612.P6911931795379388631

`eq[1, A039710(2*n+1)]`
-/

namespace A116612.P6911931795379388631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116612.P6911931795379388631

noncomputable section

/-- A116612: Values of n such that p(2n+1) mod 12 = 1, where p(j) denotes the j-th prime.

Offset 1, canonical program `A116612.P6911931795379388631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1214 terms. -/
def A116612 (n : ℕ) : ℤ :=
  (A116612.P6911931795379388631.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1214 terms. -/
def A116612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116613.P9128618355075332114

`eq[5, A039710(2*n+1)]`
-/

namespace A116613.P9128618355075332114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116613.P9128618355075332114

noncomputable section

/-- A116613: Values of n such that prime(2n+1) mod 12 = 5.

Offset 1, canonical program `A116613.P9128618355075332114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. -/
def A116613 (n : ℕ) : ℤ :=
  (A116613.P9128618355075332114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. -/
def A116613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116616.P1011088262083713768

`eq[7, A039710(2*n+1)]`
-/

namespace A116616.P1011088262083713768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116616.P1011088262083713768

noncomputable section

/-- A116616: Values of n such that prime(2n+1) mod 12 = 7.

Offset 1, canonical program `A116616.P1011088262083713768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. -/
def A116616 (n : ℕ) : ℤ :=
  (A116616.P1011088262083713768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. -/
def A116616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116914.P14835137165361344811

`A114515(n)+A026641(n)`
-/

namespace A116914.P14835137165361344811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114515 n + A026641 n

end

end A116914.P14835137165361344811

noncomputable section

/-- A116914: Number of UUDD's, where U=(1,1) and D=(1,-1), in all hill-free Dyck paths of semilength n (a hill in a Dyck path is a peak at level 1).

Offset 2, canonical program `A116914.P14835137165361344811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A116914 (n : ℕ) : ℤ :=
  A116914.P14835137165361344811.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A116914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117120.P9394178660501111264

`A063946(A004756(n+1)-(2*n+3))`
-/

namespace A117120.P9394178660501111264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A004756 (n + 1) - (2 * n + 3 : ℤ)).toNat

end

end A117120.P9394178660501111264

noncomputable section

/-- A117120: a(1)=1. a(n) is smallest positive integer not occurring earlier in the sequence where a(n) is congruent to -1 (mod a(n-1)).

Offset 1, canonical program `A117120.P9394178660501111264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117120 (n : ℕ) : ℤ :=
  A117120.P9394178660501111264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117212.P1727424025659028873

`∑{d}[n+1, A101035(#)*A193356((n+1)/#)]`
-/

namespace A117212.P1727424025659028873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117212.P1727424025659028873

noncomputable section

/-- A117212: Sum_{d|n} a(d)/d = (-1)^(n-1)/n for n>=1; equals the logarithmic g.f. of A117210.

Offset 1, canonical program `A117212.P1727424025659028873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117212 (n : ℕ) : ℤ :=
  A117212.P1727424025659028873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117216.P14004553023379914469

`A152750(n)+A022146(n)`
-/

namespace A117216.P14004553023379914469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 n + A022146 n

end

end A117216.P14004553023379914469

noncomputable section

/-- A117216: Number of points in the standard root system version of the D_4 lattice having L_infinity norm n.

Offset 0, canonical program `A117216.P14004553023379914469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117216 (n : ℕ) : ℤ :=
  A117216.P14004553023379914469.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117300.P2175943187349720183

`p?[A004218(A008864(n+1))+A000040(n+1)]`
-/

namespace A117300.P2175943187349720183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A008864 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P2175943187349720183

noncomputable section

/-- A117300: Consider all pairs (p,q) of consecutive primes such that p and q both have k digits and q-p = k; sequence lists the values of q.

Offset 1, canonical program `A117300.P2175943187349720183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A117300 (n : ℕ) : ℤ :=
  A117300.P2175943187349720183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A117300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117301.P971532255739246842

`A090090(n+1)-A006094(n+2)`
-/

namespace A117301.P971532255739246842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090090 (n + 1) - A006094 (n + 2)

end

end A117301.P971532255739246842

noncomputable section

/-- A117301: a(n) = prime(n+3)*prime(n) - prime(n+1)*prime(n+2).

Offset 1, canonical program `A117301.P971532255739246842`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, A090090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A117301 (n : ℕ) : ℤ :=
  A117301.P971532255739246842.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, A090090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A117301.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117496.P6846209427400603046

`∩[A005823(n+1), A023709(n+1)]`
-/

namespace A117496.P6846209427400603046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117496.P6846209427400603046

noncomputable section

/-- A117496: Numbers with no 1's in base 3 & 4 expansions.

Offset 1, canonical program `A117496.P6846209427400603046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A117496 (n : ℕ) : ℤ :=
  (A117496.P6846209427400603046.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A117496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117712.P3082328782814083852

`Δ[A368088(n+1)+A057427(n)]`
-/

namespace A117712.P3082328782814083852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368088 (n + 1) + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117712.P3082328782814083852

noncomputable section

/-- A117712: Number of pentagonal numbers with n digits.

Offset 1, canonical program `A117712.P3082328782814083852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A117712 (n : ℕ) : ℤ :=
  A117712.P3082328782814083852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A117712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117837.P9488833130415737170

`A065091(eq[A053666(n+1), A053666(n+2)])`
-/

namespace A117837.P9488833130415737170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053666 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117837.P9488833130415737170

noncomputable section

/-- A117837: Smaller of two consecutive prime numbers with the same digital product.

Offset 1, canonical program `A117837.P9488833130415737170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A117837 (n : ℕ) : ℤ :=
  A117837.P9488833130415737170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A117837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117948.P2375411623940238769

`A262613(Δ[n²])`
-/

namespace A117948.P2375411623940238769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262613 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A117948.P2375411623940238769

noncomputable section

/-- A117948: Sum of the divisors of pentagonal numbers.

Offset 1, canonical program `A117948.P2375411623940238769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A117948 (n : ℕ) : ℤ :=
  A117948.P2375411623940238769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A117948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117962.P8235667469965270824

`∑[A117961(n+1)]`
-/

namespace A117962.P8235667469965270824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P8235667469965270824

noncomputable section

/-- A117962: Partial sums of hexagonal numbers with prime indices.

Offset 1, canonical program `A117962.P8235667469965270824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117962 (n : ℕ) : ℤ :=
  A117962.P8235667469965270824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118381.P10574708668957501424

`A060818(n+1)*A060828(n+1)`
-/

namespace A118381.P10574708668957501424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 (n + 1) * A060828 (n + 1)

end

end A118381.P10574708668957501424

noncomputable section

/-- A118381: Largest 3-smooth number dividing n!.

Offset 1, canonical program `A118381.P10574708668957501424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060828, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118381 (n : ℕ) : ℤ :=
  A118381.P10574708668957501424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060828, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118381.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118444.P13603770497566065766

`A118443(n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118444.P13603770497566065766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118443 n : ℚ) / (n + 1 : ℚ)

end

end A118444.P13603770497566065766

noncomputable section

/-- A118444: a(n) = A118443(n)/(n+1), where A118443 is the row sums of triangle A118441.

Offset 0, canonical program `A118444.P13603770497566065766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A118443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118444 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A118444.P13603770497566065766.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A118443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118499.P15079059931476377411

`eq[0, A106667(n+1)]+1`
-/

namespace A118499.P15079059931476377411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118499.P15079059931476377411

noncomputable section

/-- A118499: Numbers k such that the k-th prime number is not a Chen prime.

Offset 1, canonical program `A118499.P15079059931476377411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5615 terms. -/
def A118499 (n : ℕ) : ℤ :=
  (A118499.P15079059931476377411.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5615 terms. -/
def A118499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118885.P5821775642827842182

`∑[∑[A073778(n)]]`
-/

namespace A118885.P5821775642827842182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118885.P5821775642827842182

noncomputable section

/-- A118885: Number of binary sequences of length n containing exactly one subsequence 0011.

Offset 0, canonical program `A118885.P5821775642827842182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. -/
def A118885 (n : ℕ) : ℤ :=
  A118885.P5821775642827842182.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. -/
def A118885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118973.P16395577257869652124

`A000957(n+1)+A000958(n+1)-A000108(n)`
-/

namespace A118973.P16395577257869652124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 1) + (A000958 (n + 1) - A000108 n)

end

end A118973.P16395577257869652124

noncomputable section

/-- A118973: Number of hill-free Dyck paths of semilength n+2 and having length of first descent equal to 2 (a hill in a Dyck path is a peak at level 1).

Offset 0, canonical program `A118973.P16395577257869652124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A118973 (n : ℕ) : ℤ :=
  A118973.P16395577257869652124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A118973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119440.P10732176381343367218

`A098011(A082375(n)+2)`
-/

namespace A119440.P10732176381343367218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (A082375 n + 2).toNat

end

end A119440.P10732176381343367218

noncomputable section

/-- A119440: Triangle read by rows: T(n,k) is the number of binary sequences of length n that start with exactly k 01's (0 <= k <= floor(n/2)).

Offset 0, canonical program `A119440.P10732176381343367218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A119440 (n : ℕ) : ℤ :=
  A119440.P10732176381343367218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A119440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119658.P11667563093156553318

`A000040(A000040(n+1))*A000040(A065091(n+1))`
-/

namespace A119658.P11667563093156553318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 1)).toNat * A000040 (A065091 (n + 1)).toNat

end

end A119658.P11667563093156553318

noncomputable section

/-- A119658: Area of consecutive Prime-Indexed Prime rectangles.

Offset 1, canonical program `A119658.P11667563093156553318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119658 (n : ℕ) : ℤ :=
  A119658.P11667563093156553318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119976.P8860550643367457755

`(n+2)/2*A071356(n)`
-/

namespace A119976.P8860550643367457755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A071356 n : ℚ)

end

end A119976.P8860550643367457755

noncomputable section

/-- A119976: E.g.f. exp(2x)*(Bessel_I(0,2*sqrt(2)x) + Bessel_I(1,2*sqrt(2)x)/sqrt(2)).

Offset 0, canonical program `A119976.P8860550643367457755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A119976 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119976.P8860550643367457755.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A119976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119995.P10582924367548273706

`ceil(A062756(n)/(C(n%6, 5)+1))`
-/

namespace A119995.P10582924367548273706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062756 n : ℚ) / (Nat.choose (n % 6) 5 + 1 : ℚ)⌉

end

end A119995.P10582924367548273706

noncomputable section

/-- A119995: Fixed point of the morphism a -> {a, a + 1, Ceiling(Log(a + 1))}, beginning with 0.

Offset 0, canonical program `A119995.P10582924367548273706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A119995 (n : ℕ) : ℤ :=
  A119995.P10582924367548273706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A119995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120243.P8412210091431713488

`eq[1, A019426(A001951(2*n))]`
-/

namespace A120243.P8412210091431713488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A001951 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120243.P8412210091431713488

noncomputable section

/-- A120243: Numbers k such that {k*sqrt(2)} < 1/2, where { } = fractional part.

Offset 1, canonical program `A120243.P8412210091431713488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120243 (n : ℕ) : ℤ :=
  (A120243.P8412210091431713488.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120326.P1315719158318225091

`∑[A039701(n+1)]`
-/

namespace A120326.P1315719158318225091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P1315719158318225091

noncomputable section

/-- A120326: Cumulative sum of the remainders when dividing primes by 3.

Offset 1, canonical program `A120326.P1315719158318225091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120326 (n : ℕ) : ℤ :=
  A120326.P1315719158318225091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120537.P98384261132252796

`∑[A005248(n+2)-A022112(n+1)]`
-/

namespace A120537.P98384261132252796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 2) - A022112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120537.P98384261132252796

noncomputable section

/-- A120537: Sum of all matrix elements of n X n matrix M[i,j] = Lucas[i+j-1], (i,j = 1..n), where Lucas[n] = A000032[n] = Fibonacci[n-1] + Fibonacci[n+1].

Offset 1, canonical program `A120537.P98384261132252796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A120537 (n : ℕ) : ℤ :=
  A120537.P98384261132252796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A120537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120588.P13914353350146187734

`abs(A115140(n))`
-/

namespace A120588.P13914353350146187734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 n|

end

end A120588.P13914353350146187734

noncomputable section

/-- A120588: G.f. is 1 + x*c(x), where c(x) is the g.f. of the Catalan numbers (A000108).

Offset 0, canonical program `A120588.P13914353350146187734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A120588 (n : ℕ) : ℤ :=
  A120588.P13914353350146187734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A120588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120769.P14757464538390453997

`a(A035327(n))*A080079(n)` with `a(0)=1`
-/

namespace A120769.P14757464538390453997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A035327 n).toNat * A080079 n

end

end A120769.P14757464538390453997

noncomputable section

/-- A120769: Starting from a(0)=1, recursively a(2^k+r) = (2^k-r)*a(2^k-1-r), 0<=r < 2^(k+1).

Offset 0, canonical program `A120769.P14757464538390453997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120769 (n : ℕ) : ℤ :=
  A120769.P14757464538390453997.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120880.P15839126143348392204

`2^A062756(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A120880.P15839126143348392204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A062756 n : ℤ)

end

end A120880.P15839126143348392204

noncomputable section

/-- A120880: G.f. satisfies: A(x) = A(x^3)*(1 + 2*x + x^2); thus a(n) = 2^A062756(n), where A062756(n) is the number of 1's in the ternary expansion of n.

Offset 0, canonical program `A120880.P15839126143348392204`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120880 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120880.P15839126143348392204.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121002.P11480597165247636129

`A046714(n)/gcd(A000351(n), A046714(n))`
-/

namespace A121002.P11480597165247636129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046714 n : ℚ) / (Int.gcd (A000351 n) (A046714 n) : ℚ)

end

end A121002.P11480597165247636129

noncomputable section

/-- A121002: Numerators of partial sums of Catalan numbers scaled by powers of 1/5.

Offset 0, canonical program `A121002.P11480597165247636129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A121002 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121002.P11480597165247636129.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A121002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121003.P1301101587900139317

`A000351(n)/gcd(A000351(n), A046714(n))`
-/

namespace A121003.P1301101587900139317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n : ℚ) / (Int.gcd (A000351 n) (A046714 n) : ℚ)

end

end A121003.P1301101587900139317

noncomputable section

/-- A121003: Denominators of partial sums of Catalan numbers scaled by powers of 1/5.

Offset 0, canonical program `A121003.P1301101587900139317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A121003 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121003.P1301101587900139317.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A121003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121447.P1797565767739298032

`Δ[A006630(n)]-record[A000139(n)]`
-/

namespace A121447.P1797565767739298032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006630 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A121447.P1797565767739298032

noncomputable section

/-- A121447: Level of the first leaf (in preorder traversal) of a ternary tree, summed over all ternary trees with n edges. A ternary tree is a rooted tree in which each vertex has at most three children and each child of a vertex is designated as its left or middle or right child.

Offset 1, canonical program `A121447.P1797565767739298032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A121447 (n : ℕ) : ℤ :=
  A121447.P1797565767739298032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A121447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121456.P5897424446692227850

`(-1)^(n+2)*A111932(n+1)`
-/

namespace A121456.P5897424446692227850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 2) * A111932 (n + 1)

end

end A121456.P5897424446692227850

noncomputable section

/-- A121456: Expansion of q*(psi(-q)*psi(-q^3))^2 in powers of q where psi() is a Ramanujan theta function.

Offset 1, canonical program `A121456.P5897424446692227850`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121456 (n : ℕ) : ℤ :=
  A121456.P5897424446692227850.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121456.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121536.P6253262290429947505

`A077107(n)^(1/3)`
-/

namespace A121536.P6253262290429947505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077107 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A121536.P6253262290429947505

noncomputable section

/-- A121536: Smallest m such that m^3 >= n^2.

Offset 1, canonical program `A121536.P6253262290429947505`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077107, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121536 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121536.P6253262290429947505.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077107, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121699.P8887310455835328610

`floor(ratio[A001748(n+1)]^(n+1))`
-/

namespace A121699.P8887310455835328610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℚ) / (f1 n : ℚ)) ^ (n + 1)⌋

end

end A121699.P8887310455835328610

noncomputable section

/-- A121699: a(n) = floor((prime(n+1)/prime(n))^n).

Offset 1, canonical program `A121699.P8887310455835328610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121699 (n : ℕ) : ℤ :=
  A121699.P8887310455835328610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121840.P11802573148131771096

`A031922(1000*(n+1))`
-/

namespace A121840.P11802573148131771096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031922 (1000 * (n + 1))

end

end A121840.P11802573148131771096

noncomputable section

/-- A121840: (n*10^6)th prime.

Offset 1, canonical program `A121840.P11802573148131771096`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031922, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121840 (n : ℕ) : ℤ :=
  A121840.P11802573148131771096.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031922, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121858.P4793984350226281940

`3^A006093(n+1)`
-/

namespace A121858.P4793984350226281940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A006093 (n + 1) : ℤ)

end

end A121858.P4793984350226281940

noncomputable section

/-- A121858: Smallest odd number having prime(n) divisors, where prime(n) is the n-th prime=A000040(n).

Offset 1, canonical program `A121858.P4793984350226281940`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121858 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121858.P4793984350226281940.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121858.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122102.P3417295557102748477

`∑[A030514(n+1)]`
-/

namespace A122102.P3417295557102748477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P3417295557102748477

noncomputable section

/-- A122102: a(n) = Sum_{k=1..n} prime(k)^4.

Offset 1, canonical program `A122102.P3417295557102748477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122102 (n : ℕ) : ℤ :=
  A122102.P3417295557102748477.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122103.P17960088911727487436

`∑[A050997(n+1)]`
-/

namespace A122103.P17960088911727487436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122103.P17960088911727487436

noncomputable section

/-- A122103: Sum of the fifth powers of the first n primes.

Offset 1, canonical program `A122103.P17960088911727487436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122103 (n : ℕ) : ℤ :=
  A122103.P17960088911727487436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122155.P17533266698539878574

`or(A035327(abs(1-n)), A053644(n))`
-/

namespace A122155.P17533266698539878574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035327 |1 - (n : ℤ)|.toNat) (A053644 n)

end

end A122155.P17533266698539878574

noncomputable section

/-- A122155: Simple involution of natural numbers: List each block of (2^k)-1 numbers (from (2^k)+1 to 2^(k+1) - 1) in reverse order and fix the powers of 2.

Offset 0, canonical program `A122155.P17533266698539878574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122155 (n : ℕ) : ℤ :=
  A122155.P17533266698539878574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122188.P14169931470485161409

`Δ[-A010751(n+1)]`
-/

namespace A122188.P14169931470485161409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122188.P14169931470485161409

noncomputable section

/-- A122188: Triangle read by rows, formed from the coefficients of characteristic polynomials of the following sequence of matrices: 2 X 2 {{0, 1}, {1, 1}}, 3 X 3 {{0, 1, 0}, {0, 0, 1}, {1, 1, 1}}, 4 X 4 {{0, 1,0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}, {1, 1, 1, 1}}, 5 X 5 {{0, 1, 0, 0, 0}, {0, 0, 1, 0, 0}, {0, 0, 0, 1, 0}, {0, 0, 0, 0, 1}, {1, 1, 1, 1, 1}}, ...

Offset 1, canonical program `A122188.P14169931470485161409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A122188 (n : ℕ) : ℤ :=
  A122188.P14169931470485161409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A122188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122220.P15811966447984658883

`(A030516(n+1)-A001248(n+1))/20`
-/

namespace A122220.P15811966447984658883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030516 (n + 1) - A001248 (n + 1) : ℚ) / 20

end

end A122220.P15811966447984658883

noncomputable section

/-- A122220: a(n) = (prime(n)^6 - prime(n)^2)/20.

Offset 1, canonical program `A122220.P15811966447984658883`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030516, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122220 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A122220.P15811966447984658883.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030516, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122220.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122263.P12952156999036149536

`∑[2*A040976(n+2)-5]+5`
-/

namespace A122263.P12952156999036149536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040976 (n + 2) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A122263.P12952156999036149536

noncomputable section

/-- A122263: a(n) = 2*a(n-1) - a(n-2) + 2*(prime(n+1)-prime(n)); a(1) = 2, a(2) = 3.

Offset 1, canonical program `A122263.P12952156999036149536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A122263 (n : ℕ) : ℤ :=
  A122263.P12952156999036149536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A122263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122432.P16515211422386222308

`-A089594(A004736(n+1))`
-/

namespace A122432.P16515211422386222308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A089594 (A004736 (n + 1)).toNat

end

end A122432.P16515211422386222308

noncomputable section

/-- A122432: Riordan array (1/(1+x)^3,x).

Offset 0, canonical program `A122432.P16515211422386222308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122432 (n : ℕ) : ℤ :=
  A122432.P16515211422386222308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122491.P12480394804218549413

`A099920(n)-A001610(n)`
-/

namespace A122491.P12480394804218549413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n - A001610 n

end

end A122491.P12480394804218549413

noncomputable section

/-- A122491: a(n) = n * Fibonacci(n) - Sum_{i=0..n} Fibonacci(i).

Offset 0, canonical program `A122491.P12480394804218549413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A122491 (n : ℕ) : ℤ :=
  A122491.P12480394804218549413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A122491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122566.P3604941185684172171

`∪[A054553(n), A054568(n)]`
-/

namespace A122566.P3604941185684172171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054553 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054568 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122566.P3604941185684172171

noncomputable section

/-- A122566: a(n) = prime(n^2 + n + 1).

Offset 0, canonical program `A122566.P3604941185684172171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2876 terms. -/
def A122566 (n : ℕ) : ℤ :=
  (A122566.P3604941185684172171.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2876 terms. -/
def A122566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122601.P9678558963504782451

`A008864(n+1)%7`
-/

namespace A122601.P9678558963504782451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1)) 7

end

end A122601.P9678558963504782451

noncomputable section

/-- A122601: a(n)=(n-th prime +1) modulo 7.

Offset 1, canonical program `A122601.P9678558963504782451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122601 (n : ℕ) : ℤ :=
  A122601.P9678558963504782451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122800.P16993477240022882628

`A045928(n+1)-n`
-/

namespace A122800.P16993477240022882628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045928 (n + 1) - (n : ℤ)

end

end A122800.P16993477240022882628

noncomputable section

/-- A122800: A P_4-stuttered arithmetic progression with a(n+1)=a(n) if n is square, a(n+1)=a(n)+2 otherwise.

Offset 1, canonical program `A122800.P16993477240022882628`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122800 (n : ℕ) : ℤ :=
  A122800.P16993477240022882628.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122800.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122877.P10339492444474054042

`Δ[A025235(n)/2]`
-/

namespace A122877.P10339492444474054042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025235 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122877.P10339492444474054042

noncomputable section

/-- A122877: Expansion of (1-2*x-3*x^2-(1-x)*sqrt(1-2*x-7*x^2))/(8*x^3).

Offset 0, canonical program `A122877.P10339492444474054042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A122877 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A122877.P10339492444474054042.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A122877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123134.P8662972197791221738

`A000040(n+1)*A008864(n+2)`
-/

namespace A123134.P8662972197791221738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008864 (n + 2)

end

end A123134.P8662972197791221738

noncomputable section

/-- A123134: a(n) = prime(n)*(prime(n+1) + 1).

Offset 1, canonical program `A123134.P8662972197791221738`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A123134 (n : ℕ) : ℤ :=
  A123134.P8662972197791221738.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A123134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123157.P3168733411666123651

`∑{digits}[A001248(n+1), #]`
-/

namespace A123157.P3168733411666123651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P3168733411666123651

noncomputable section

/-- A123157: Sum of digits of the squares of prime numbers.

Offset 1, canonical program `A123157.P3168733411666123651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123157 (n : ℕ) : ℤ :=
  (A123157.P3168733411666123651.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123331.P9518979506076851162

`abs(A122860(n+1))`
-/

namespace A123331.P9518979506076851162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122860 (n + 1)|

end

end A123331.P9518979506076851162

noncomputable section

/-- A123331: Expansion of (c(q)^2/(3c(q^2))-1)/2 in powers of q where c(q) is a cubic AGM function.

Offset 1, canonical program `A123331.P9518979506076851162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123331 (n : ℕ) : ℤ :=
  A123331.P9518979506076851162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123530.P615654561327355968

`A112848(2*n+1)`
-/

namespace A123530.P615654561327355968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112848 (2 * n + 1)

end

end A123530.P615654561327355968

noncomputable section

/-- A123530: Expansion of q^(-1/2)*eta(q)^2*eta(q^6)^3/(eta(q^2)*eta(q^3)^2) in powers of q.

Offset 0, canonical program `A123530.P615654561327355968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112848, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123530 (n : ℕ) : ℤ :=
  A123530.P615654561327355968.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112848, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123530.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123554.P6569602096052592708

`A034870(eq[1, A010054(A000196(n))])`
-/

namespace A123554.P6569602096052592708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123554.P6569602096052592708

noncomputable section

/-- A123554: Triangle read by rows: T(n,k) = number of labeled loopless digraphs with n nodes and k arcs (n >= 1, 0 <= k <= n*(n-1)).

Offset 1, canonical program `A123554.P6569602096052592708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A123554 (n : ℕ) : ℤ :=
  A123554.P6569602096052592708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A123554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123564.P1394772909650347147

`A096270(Δ[n²])+Δ[A001965(n)]`
-/

namespace A123564.P1394772909650347147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (f2 (n + 1) - f2 n)

end

end A123564.P1394772909650347147

noncomputable section

/-- A123564: The infinite Fibonacci word reencoded by writing successive non-overlapping pairs of bits as decimal numbers.

Offset 1, canonical program `A123564.P1394772909650347147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A123564 (n : ℕ) : ℤ :=
  A123564.P1394772909650347147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A123564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123737.P586469183867328966

`n+1-2*A083036(n+1)`
-/

namespace A123737.P586469183867328966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A083036 (n + 1)

end

end A123737.P586469183867328966

noncomputable section

/-- A123737: Partial sums of (-1)^floor(n*sqrt(2)).

Offset 1, canonical program `A123737.P586469183867328966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123737 (n : ℕ) : ℤ :=
  A123737.P586469183867328966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123863.P1353437602911175689

`A010892(n)*A112848(n+1)`
-/

namespace A123863.P1353437602911175689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A112848 (n + 1)

end

end A123863.P1353437602911175689

noncomputable section

/-- A123863: Expansion of (c(q^3) - c(q^6) - 2*c(q^12)) / 3 in powers of q where c(q) is a cubic AGM theta function.

Offset 1, canonical program `A123863.P1353437602911175689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123863 (n : ℕ) : ℤ :=
  A123863.P1353437602911175689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123864.P5158556978074612341

`A035175(round(sqrt(n²+1)))`
-/

namespace A123864.P5158556978074612341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035175 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A123864.P5158556978074612341

noncomputable section

/-- A123864: Expansion of (eta(q^3) * eta(q^5))^2 / (eta(q) * eta(q^15)) in powers of q.

Offset 0, canonical program `A123864.P5158556978074612341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123864 (n : ℕ) : ℤ :=
  A123864.P5158556978074612341.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123907.P8393408210616074745

`A034953(n+1)-A011756(n+1)`
-/

namespace A123907.P8393408210616074745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - A011756 (n + 1)

end

end A123907.P8393408210616074745

noncomputable section

/-- A123907: a(n) = T(p(n)) - p(T(n)) = Commutator[triangular numbers, primes] at n.

Offset 1, canonical program `A123907.P8393408210616074745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011756, A034953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A123907 (n : ℕ) : ℤ :=
  A123907.P8393408210616074745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011756, A034953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A123907.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124115.P17459452921434440808

`A062234(n+1)+2`
-/

namespace A124115.P17459452921434440808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) + 2

end

end A124115.P17459452921434440808

noncomputable section

/-- A124115: a(n) = 2*prime(n) - prime(n+1) + 2.

Offset 1, canonical program `A124115.P17459452921434440808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124115 (n : ℕ) : ℤ :=
  A124115.P17459452921434440808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124203.P14562224082085473422

`3*n+2-A055945(n)`
-/

namespace A124203.P14562224082085473422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (2 - A055945 n)

end

end A124203.P14562224082085473422

noncomputable section

/-- A124203: a(n) = 2n + "reverse of n-written-in-binary" + 2.

Offset 0, canonical program `A124203.P14562224082085473422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A124203 (n : ℕ) : ℤ :=
  A124203.P14562224082085473422.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A124203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124258.P17147279065324572627

`A004737(n+1)²`
-/

namespace A124258.P17147279065324572627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) ^ 2

end

end A124258.P17147279065324572627

noncomputable section

/-- A124258: Triangle whose rows are sequences of increasing and decreasing squares: 1; 1,4,1; 1,4,9,4,1; ...

Offset 1, canonical program `A124258.P17147279065324572627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124258 (n : ℕ) : ℤ :=
  A124258.P17147279065324572627.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124296.P432976834230504907

`5*A262184(n)-4`
-/

namespace A124296.P432976834230504907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A262184 n - 4

end

end A124296.P432976834230504907

noncomputable section

/-- A124296: a(n) = 5*F(n)^2 - 5*F(n) + 1, where F(n) = Fibonacci(n).

Offset 0, canonical program `A124296.P432976834230504907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A124296 (n : ℕ) : ℤ :=
  A124296.P432976834230504907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A124296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124297.P2459816482307582739

`5*A059727(n)+1`
-/

namespace A124297.P2459816482307582739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A059727 n + 1

end

end A124297.P2459816482307582739

noncomputable section

/-- A124297: a(n) = 5*F(n)^2 + 5*F(n) + 1, where F(n) = Fibonacci(n).

Offset 0, canonical program `A124297.P2459816482307582739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A124297 (n : ℕ) : ℤ :=
  A124297.P2459816482307582739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A124297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124315.P11985262133393008342

`∏{e}[n+1, A025699(#)]`
-/

namespace A124315.P11985262133393008342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A025699 (Nat.factorization (f1 n) p)

end

end A124315.P11985262133393008342

noncomputable section

/-- A124315: a(n) = Sum_{d|n} tau(gcd(d,n/d)), where tau = sigma_0 = A000005.

Offset 1, canonical program `A124315.P11985262133393008342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124315 (n : ℕ) : ℤ :=
  A124315.P11985262133393008342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124434.P11531078883019543608

`A001043(n+1)*A008619(A046933(n+1))`
-/

namespace A124434.P11531078883019543608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) * A008619 (A046933 (n + 1)).toNat

end

end A124434.P11531078883019543608

noncomputable section

/-- A124434: LCM (least common multiple) of A001043 (sum of consecutive primes) and A001223 (difference of consecutive primes).

Offset 1, canonical program `A124434.P11531078883019543608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124434 (n : ℕ) : ℤ :=
  A124434.P11531078883019543608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124584.P4878718695736530326

`A045344(lt[7, A046933(n+1)])`
-/

namespace A124584.P4878718695736530326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124584.P4878718695736530326

noncomputable section

/-- A124584: Primes p such that q-p >= 10, where q is the next prime after p.

Offset 1, canonical program `A124584.P4878718695736530326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124584 (n : ℕ) : ℤ :=
  A124584.P4878718695736530326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124659.P412689728244301623

`abs(3-(p?[A040976(n+1)]+1)²)`
-/

namespace A124659.P412689728244301623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) ^ 2|

end

end A124659.P412689728244301623

noncomputable section

/-- A124659: Twin prime products minus 2.

Offset 1, canonical program `A124659.P412689728244301623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124659 (n : ℕ) : ℤ :=
  A124659.P412689728244301623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125072.P10935672453325630625

`∑{e}[n+1, A010054(#)]`
-/

namespace A125072.P10935672453325630625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A010054 (Nat.factorization (f1 n) p)

end

end A125072.P10935672453325630625

noncomputable section

/-- A125072: a(n) = number of exponents in the prime-factorization of n which are triangular numbers.

Offset 1, canonical program `A125072.P10935672453325630625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125072 (n : ℕ) : ℤ :=
  A125072.P10935672453325630625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125073.P701990710138125406

`∑{e}[n+1, #*A010054(#)]`
-/

namespace A125073.P701990710138125406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℤ) * A010054 (Nat.factorization (f1 n) p)

end

end A125073.P701990710138125406

noncomputable section

/-- A125073: a(n) = sum of the exponents in the prime factorization of n which are triangular numbers.

Offset 1, canonical program `A125073.P701990710138125406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125073 (n : ℕ) : ℤ :=
  A125073.P701990710138125406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125137.P4810731587468724038

`A051674(n+1)+1`
-/

namespace A125137.P4810731587468724038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051674 (n + 1) + 1

end

end A125137.P4810731587468724038

noncomputable section

/-- A125137: a(n) = p^p + 1, where p = prime(n).

Offset 1, canonical program `A125137.P4810731587468724038`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125137 (n : ℕ) : ℤ :=
  A125137.P4810731587468724038.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125575.P7635791061298922058

`A000030(A001248(n+1))`
-/

namespace A125575.P7635791061298922058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A001248 (n + 1)).toNat

end

end A125575.P7635791061298922058

noncomputable section

/-- A125575: Initial digit of squares of primes.

Offset 1, canonical program `A125575.P7635791061298922058`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, A001248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A125575 (n : ℕ) : ℤ :=
  A125575.P7635791061298922058.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, A001248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A125575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126180.P8482950412362727135

`A025238(n+3)+n*A045445(n+1)`
-/

namespace A126180.P8482950412362727135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025238 (n + 3) + (n : ℤ) * A045445 (n + 1)

end

end A126180.P8482950412362727135

noncomputable section

/-- A126180: Number of branches in all hex trees with n edges (n>=1).

Offset 1, canonical program `A126180.P8482950412362727135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A126180 (n : ℕ) : ℤ :=
  A126180.P8482950412362727135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A126180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126185.P11307840141715013085

`(n-2)*A045445(A028310(n))/2`
-/

namespace A126185.P11307840141715013085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * A045445 (A028310 n).toNat : ℚ) / 2

end

end A126185.P11307840141715013085

noncomputable section

/-- A126185: Number of nonroot nodes of outdegree 2 in all hex trees with n edges.

Offset 0, canonical program `A126185.P11307840141715013085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A126185 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126185.P11307840141715013085.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A126185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126187.P12367951474002921347

`A045445(n+3)-A002212(n+2)`
-/

namespace A126187.P12367951474002921347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (n + 3) - A002212 (n + 2)

end

end A126187.P12367951474002921347

noncomputable section

/-- A126187: Sum of the levels of the first leaf (in the preorder traversal) over all hex trees with n edges.

Offset 1, canonical program `A126187.P12367951474002921347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A126187 (n : ℕ) : ℤ :=
  A126187.P12367951474002921347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A126187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126208.P1909337783113813203

`∑{digits}[A000400(n), A011686(#)]`
-/

namespace A126208.P1909337783113813203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011686 x).sum

end

end A126208.P1909337783113813203

noncomputable section

/-- A126208: Number of 6's in decimal expansion of 6^n.

Offset 0, canonical program `A126208.P1909337783113813203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A126208 (n : ℕ) : ℤ :=
  A126208.P1909337783113813203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A126208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126329.P10461060411431134265

`p?[6*A008864(n+1)-1]`
-/

namespace A126329.P10461060411431134265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A008864 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126329.P10461060411431134265

noncomputable section

/-- A126329: Primes of the form 6p+5 where p is a prime.

Offset 1, canonical program `A126329.P10461060411431134265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A126329 (n : ℕ) : ℤ :=
  A126329.P10461060411431134265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A126329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126966.P12794021674090702556

`A028329(n)-A082590(n)`
-/

namespace A126966.P12794021674090702556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A082590 n

end

end A126966.P12794021674090702556

noncomputable section

/-- A126966: Expansion of sqrt(1 - 4*x)/(1 - 2*x).

Offset 0, canonical program `A126966.P12794021674090702556`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126966 (n : ℕ) : ℤ :=
  A126966.P12794021674090702556.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127064.P4202935063072874484

`a(A004648(n))+1` with `a(0)=1`
-/

namespace A127064.P4202935063072874484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A004648 n).toNat + 1

end

end A127064.P4202935063072874484

noncomputable section

/-- A127064: a(0)=1. a(n) = a(prime(n)(mod n)) + 1, where prime(n) is the n-th prime.

Offset 0, canonical program `A127064.P4202935063072874484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127064 (n : ℕ) : ℤ :=
  (A127064.P4202935063072874484.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127072.P15848589408681114756

`eq[A066601(n+1), A096196(n+1)]+1`
-/

namespace A127072.P15848589408681114756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A127072.P15848589408681114756

noncomputable section

/-- A127072: Numbers k that divide 3^k - 2^k - 1.

Offset 1, canonical program `A127072.P15848589408681114756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A127072 (n : ℕ) : ℤ :=
  (A127072.P15848589408681114756.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A127072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127118.P4587657049897229788

`A000040(n+1)*A018252(n+1)`
-/

namespace A127118.P4587657049897229788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A018252 (n + 1)

end

end A127118.P4587657049897229788

noncomputable section

/-- A127118: a(n) = n-th prime * n-th nonprime.

Offset 1, canonical program `A127118.P4587657049897229788`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A127118 (n : ℕ) : ℤ :=
  A127118.P4587657049897229788.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A127118.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127149.P11956640148928272579

`record[(A001748(n+1)/3)%(n+1)]`
-/

namespace A127149.P11956640148928272579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127149.P11956640148928272579

noncomputable section

/-- A127149: Records in A004648.

Offset 1, canonical program `A127149.P11956640148928272579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. -/
def A127149 (n : ℕ) : ℤ :=
  A127149.P11956640148928272579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. -/
def A127149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127341.P14709455034491234769

`p?[A036439(n+14)-A036439(n+1)]`
-/

namespace A127341.P14709455034491234769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 14) - A036439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127341.P14709455034491234769

noncomputable section

/-- A127341: Primes that can be written as the sum of 13 consecutive primes.

Offset 1, canonical program `A127341.P14709455034491234769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A127341 (n : ℕ) : ℤ :=
  A127341.P14709455034491234769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A127341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127367.P16713287783412300096

`abs(A259361(n)+Δ[A237420(n)])`
-/

namespace A127367.P16713287783412300096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A259361 n + (f1 (n + 1) - f1 n)|

end

end A127367.P16713287783412300096

noncomputable section

/-- A127367: Inverse permutation to A127366.

Offset 0, canonical program `A127367.P16713287783412300096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127367 (n : ℕ) : ℤ :=
  A127367.P16713287783412300096.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127526.P1101565126204537721

`Δ[A114185(n+3)-gcd(2, n)²]`
-/

namespace A127526.P1101565126204537721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114185 (n + 3) - (Nat.gcd 2 n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127526.P1101565126204537721

noncomputable section

/-- A127526: Sequence related to fifth roots of certain Fibonacci fractions.

Offset 1, canonical program `A127526.P1101565126204537721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A127526 (n : ℕ) : ℤ :=
  A127526.P1101565126204537721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A127526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127531.P14165418015592472488

`Δ[A000984(n)-A000778(n)]`
-/

namespace A127531.P14165418015592472488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A000778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127531.P14165418015592472488

noncomputable section

/-- A127531: Number of jumps in all binary trees with n edges.

Offset 1, canonical program `A127531.P14165418015592472488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A127531 (n : ℕ) : ℤ :=
  A127531.P14165418015592472488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A127531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127533.P9803744706263550024

`Δ[A000984(n)]-A002057(n)`
-/

namespace A127533.P9803744706263550024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002057 n

end

end A127533.P9803744706263550024

noncomputable section

/-- A127533: Sum of jump-lengths of all binary trees with n edges.

Offset 0, canonical program `A127533.P9803744706263550024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A127533 (n : ℕ) : ℤ :=
  A127533.P9803744706263550024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A127533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127540.P10408115391990332246

`Δ[A032357(n)+n%2]`
-/

namespace A127540.P10408115391990332246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032357 n + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127540.P10408115391990332246

noncomputable section

/-- A127540: Number of odd-length branches starting at the root in all ordered trees with n edges.

Offset 0, canonical program `A127540.P10408115391990332246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A127540 (n : ℕ) : ℤ :=
  A127540.P10408115391990332246.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A127540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127647.P9391719108574296925

`A103609(A198954(n+1))`
-/

namespace A127647.P9391719108574296925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A198954 (n + 1)).toNat

end

end A127647.P9391719108574296925

noncomputable section

/-- A127647: Triangle read by rows: row n consists of n-1 zeros followed by Fibonacci(n).

Offset 1, canonical program `A127647.P9391719108574296925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127647 (n : ℕ) : ℤ :=
  A127647.P9391719108574296925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127804.P1283349887769768592

`A045654(n+1)/2`
-/

namespace A127804.P1283349887769768592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045654 (n + 1) : ℚ) / 2

end

end A127804.P1283349887769768592

noncomputable section

/-- A127804: a(2n) = 2^(2n), a(2n+1) = 2^(2n+1) + a(n).

Offset 0, canonical program `A127804.P1283349887769768592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127804 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127804.P1283349887769768592.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127804.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127866.P7807827458110838021

`4*A073388(n)-a(n-1)` with `a(0)=4`
-/

namespace A127866.P7807827458110838021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  4 * A073388 n - a (n - 1)

end

end A127866.P7807827458110838021

noncomputable section

/-- A127866: Number of L-shaped tiles in all tilings of a 2 X n board with 1 X 1 and L-shaped tiles (where the L-shaped tiles cover 3 squares).

Offset 2, canonical program `A127866.P7807827458110838021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A127866 (n : ℕ) : ℤ :=
  A127866.P7807827458110838021.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A127866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127918.P3266468254548979396

`3*C(A008864(n+1), 3)`
-/

namespace A127918.P3266468254548979396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (A008864 (n + 1)).toNat 3

end

end A127918.P3266468254548979396

noncomputable section

/-- A127918: Half of product of three numbers: n-th prime, previous and following number.

Offset 1, canonical program `A127918.P3266468254548979396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127918 (n : ℕ) : ℤ :=
  (A127918.P3266468254548979396.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127919.P18153344495320485019

`2*C(A008864(n+1), 3)`
-/

namespace A127919.P18153344495320485019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A008864 (n + 1)).toNat 3

end

end A127919.P18153344495320485019

noncomputable section

/-- A127919: 1/3 of product of three numbers: the n-th prime, the previous number and the following number.

Offset 1, canonical program `A127919.P18153344495320485019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127919 (n : ℕ) : ℤ :=
  (A127919.P18153344495320485019.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128057.P8641986801379024060

`A057077(n)*A128014(n)`
-/

namespace A128057.P8641986801379024060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A128014 n

end

end A128057.P8641986801379024060

noncomputable section

/-- A128057: Expansion of (1+x)/sqrt(1+4x^2).

Offset 0, canonical program `A128057.P8641986801379024060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A128057 (n : ℕ) : ℤ :=
  A128057.P8641986801379024060.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A128057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128183.P4602037080132375084

`A049611(n)+A045891(n)`
-/

namespace A128183.P4602037080132375084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n + A045891 n

end

end A128183.P4602037080132375084

noncomputable section

/-- A128183: Row sums of triangle A128182.

Offset 0, canonical program `A128183.P4602037080132375084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. -/
def A128183 (n : ℕ) : ℤ :=
  A128183.P4602037080132375084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. -/
def A128183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128218.P17892042151444153462

`A186422(A198954(n))`
-/

namespace A128218.P17892042151444153462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186422 (A198954 n).toNat

end

end A128218.P17892042151444153462

noncomputable section

/-- A128218: First differences of A128217.

Offset 1, canonical program `A128218.P17892042151444153462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128218 (n : ℕ) : ℤ :=
  A128218.P17892042151444153462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128227.P3230400421110190082

`gcd(a(n-1)+1, Δ[A010054(n)])` with `a(0)=1`
-/

namespace A128227.P3230400421110190082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A128227.P3230400421110190082

noncomputable section

/-- A128227: Right border (1,1,1,...) added to A002260.

Offset 0, canonical program `A128227.P3230400421110190082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128227 (n : ℕ) : ℤ :=
  (A128227.P3230400421110190082.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128437.P14087954865165796878

`floor(A001008(n+1)/(n+1))`
-/

namespace A128437.P14087954865165796878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001008 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A128437.P14087954865165796878

noncomputable section

/-- A128437: a(n) = floor((numerator of H(n))/n), where H(n) = Sum_{k=1..n} 1/k is the n-th harmonic number.

Offset 1, canonical program `A128437.P14087954865165796878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A128437 (n : ℕ) : ℤ :=
  A128437.P14087954865165796878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A128437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128439.P1111506070197494639

`A146005(n+1)-and(1, n)`
-/

namespace A128439.P1111506070197494639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146005 (n + 1) - (Nat.land 1 n : ℤ)

end

end A128439.P1111506070197494639

noncomputable section

/-- A128439: a(n) = floor(n*t^n), where t=golden ratio=(1+sqrt(5))/2.

Offset 1, canonical program `A128439.P1111506070197494639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A128439 (n : ℕ) : ℤ :=
  A128439.P1111506070197494639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A128439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128499.P9117781422651886290

`A128498(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A128499.P9117781422651886290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A128498 n - a (n - 2)

end

end A128499.P9117781422651886290

noncomputable section

/-- A128499: Fifth column (m=4) of triangle A128494.

Offset 0, canonical program `A128499.P9117781422651886290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128499 (n : ℕ) : ℤ :=
  A128499.P9117781422651886290.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128508.P16546572692468515446

`A117143(A028310(n))-A117142(A028310(n))`
-/

namespace A128508.P16546572692468515446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117143 (A028310 n).toNat - A117142 (A028310 n).toNat

end

end A128508.P16546572692468515446

noncomputable section

/-- A128508: Number of partitions p of n such that max(p) - min(p) = 3.

Offset 0, canonical program `A128508.P16546572692468515446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2677 terms. -/
def A128508 (n : ℕ) : ℤ :=
  A128508.P16546572692468515446.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2677 terms. -/
def A128508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128743.P4794288623127083266

`A026376(A028310(n))-A026378(A028310(n))`
-/

namespace A128743.P4794288623127083266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026376 (A028310 n).toNat - A026378 (A028310 n).toNat

end

end A128743.P4794288623127083266

noncomputable section

/-- A128743: Number of UU's (i.e., doublerises) in all skew Dyck paths of semilength n.

Offset 0, canonical program `A128743.P4794288623127083266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A128743 (n : ℕ) : ℤ :=
  A128743.P4794288623127083266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A128743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129075.P4685079922332838573

`A001748(n+1)+4`
-/

namespace A129075.P4685079922332838573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + 4

end

end A129075.P4685079922332838573

noncomputable section

/-- A129075: Numbers k such that (k-4)/3 is prime.

Offset 1, canonical program `A129075.P4685079922332838573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129075 (n : ℕ) : ℤ :=
  A129075.P4685079922332838573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129230.P12651400722850919563

`A054347(n)-a(n-1)` with `a(0)=0`
-/

namespace A129230.P12651400722850919563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A054347 n - a (n - 1)

end

end A129230.P12651400722850919563

noncomputable section

/-- A129230: a(n) = floor(n*r) + floor((n-2)*r) + floor((n-4)*r) + ... + floor(k*r), where r = golden ratio = (1 + sqrt(5))/2 and k = n mod 2.

Offset 0, canonical program `A129230.P12651400722850919563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129230 (n : ℕ) : ℤ :=
  A129230.P12651400722850919563.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129231.P4429393398897307074

`Δ[A001951(n-1)+a(n-2)]` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A129231.P4429393398897307074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n f1 =>
  A001951 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129231.P4429393398897307074

noncomputable section

/-- A129231: a(n) = floor(n*r) - a(n-1), where r = sqrt(2) and a(0) = 0.

Offset 0, canonical program `A129231.P4429393398897307074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129231 (n : ℕ) : ℤ :=
  A129231.P4429393398897307074.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129232.P14690578308145464037

`A001951(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A129232.P14690578308145464037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A001951 n + a (n - 2)

end

end A129232.P14690578308145464037

noncomputable section

/-- A129232: a(n) = floor(n*r) + floor((n-2)*r) + floor((n-4)*r) + ... + floor(k*r), where r = 2^(1/2) and k = 0 if n is even, k = 1 if n is odd.

Offset 0, canonical program `A129232.P14690578308145464037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129232 (n : ℕ) : ℤ :=
  A129232.P14690578308145464037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129384.P14685954410445170800

`∑[A129383(n)]`
-/

namespace A129384.P14685954410445170800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129384.P14685954410445170800

noncomputable section

/-- A129384: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k, floor((n-k)/2)).

Offset 0, canonical program `A129384.P14685954410445170800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A129384 (n : ℕ) : ℤ :=
  A129384.P14685954410445170800.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A129384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129574.P17473948637287950129

`A091954(2*(n+1))+A091954(A092535(n+1))`
-/

namespace A129574.P17473948637287950129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (2 * (n + 1)) + A091954 (A092535 (n + 1)).toNat

end

end A129574.P17473948637287950129

noncomputable section

/-- A129574: Number of odd divisors of n plus the number of odd divisors of n - 1.

Offset 1, canonical program `A129574.P17473948637287950129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A129574 (n : ℕ) : ℤ :=
  A129574.P17473948637287950129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A129574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129701.P1906448276996329677

`A030078(n+2)-A030078(n+1)`
-/

namespace A129701.P1906448276996329677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 2) - A030078 (n + 1)

end

end A129701.P1906448276996329677

noncomputable section

/-- A129701: Difference between successive primes cubed: a(n) = prime(n+1)^3 - prime(n)^3.

Offset 1, canonical program `A129701.P1906448276996329677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129701 (n : ℕ) : ℤ :=
  A129701.P1906448276996329677.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129701.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129703.P4207746341817496301

`A057427(n)+A005773(n+1)`
-/

namespace A129703.P4207746341817496301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A005773 (n + 1)

end

end A129703.P4207746341817496301

noncomputable section

/-- A129703: Number of different walks generated by n steps that can only go in {east, southeast, southwest} directions on the 300-degree wedge in a 60-degree equilateral triangular lattice.

Offset 0, canonical program `A129703.P4207746341817496301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A129703 (n : ℕ) : ℤ :=
  A129703.P4207746341817496301.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A129703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129707.P6691558522275818141

`A010049(n+1)+A055243(n+1)-A023610(n+1)`
-/

namespace A129707.P6691558522275818141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) + (A055243 (n + 1) - A023610 (n + 1))

end

end A129707.P6691558522275818141

noncomputable section

/-- A129707: Number of inversions in all Fibonacci binary words of length n.

Offset 0, canonical program `A129707.P6691558522275818141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 458 terms. -/
def A129707 (n : ℕ) : ℤ :=
  A129707.P6691558522275818141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 458 terms. -/
def A129707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129750.P10984416320503325251

`abs(Δ[A007652(n+1)])`
-/

namespace A129750.P10984416320503325251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129750.P10984416320503325251

noncomputable section

/-- A129750: Absolute difference of final digits of consecutive primes.

Offset 1, canonical program `A129750.P10984416320503325251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A129750 (n : ℕ) : ℤ :=
  A129750.P10984416320503325251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A129750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129753.P16090277469071103604

`floor(A000040(n+1)/A018252(n+1))`
-/

namespace A129753.P16090277469071103604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (A018252 (n + 1) : ℚ)⌋

end

end A129753.P16090277469071103604

noncomputable section

/-- A129753: Floor(prime(n)/nonprime(n)).

Offset 1, canonical program `A129753.P16090277469071103604`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A129753 (n : ℕ) : ℤ :=
  A129753.P16090277469071103604.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A129753.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129812.P15062499110324960971

`A065091(eq[7, (A000040(n+1)*A000040(n+2))%10])`
-/

namespace A129812.P15062499110324960971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) * A000040 (n + 2)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129812.P15062499110324960971

noncomputable section

/-- A129812: Lesser of consecutive prime pairs whose last digits differ by 6.

Offset 2, canonical program `A129812.P15062499110324960971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A129812 (n : ℕ) : ℤ :=
  A129812.P15062499110324960971.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A129812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130194.P2127097529341530346

`A009531(A004736(n+1))`
-/

namespace A130194.P2127097529341530346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A004736 (n + 1)).toNat

end

end A130194.P2127097529341530346

noncomputable section

/-- A130194: Let M = lower triangular matrix with 1's on and below the main diagonal, with columns multiplied by +1, +1, -1, -1, repeated; form M^2; read across rows of resulting triangle.

Offset 1, canonical program `A130194.P2127097529341530346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130194 (n : ℕ) : ℤ :=
  A130194.P2127097529341530346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130243.P18068863741385529498

`(n+2)*A130241(n+1)-A000032(A130241(n+1)+2)+3`
-/

namespace A130243.P18068863741385529498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A130241 (n + 1) - A000032 (A130241 (n + 1) + 2).toNat + 3

end

end A130243.P18068863741385529498

noncomputable section

/-- A130243: Partial sums of the 'lower' Lucas Inverse A130241.

Offset 1, canonical program `A130243.P18068863741385529498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130243 (n : ℕ) : ℤ :=
  A130243.P18068863741385529498.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130243.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130244.P17329518017061737042

`∑[A130242(n)]`
-/

namespace A130244.P17329518017061737042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130244.P17329518017061737042

noncomputable section

/-- A130244: Partial sums of the 'upper' Lucas Inverse A130242.

Offset 0, canonical program `A130244.P17329518017061737042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130244 (n : ℕ) : ℤ :=
  A130244.P17329518017061737042.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130247.P7336442961275218768

`A130241(n+1)-A063524(n)`
-/

namespace A130247.P7336442961275218768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (n + 1) - A063524 n

end

end A130247.P7336442961275218768

noncomputable section

/-- A130247: Inverse Lucas (A000032) numbers: index k of a Lucas number such that Lucas(k)=n; max(k|Lucas(k) < n), if there is no such index.

Offset 1, canonical program `A130247.P7336442961275218768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130247 (n : ℕ) : ℤ :=
  A130247.P7336442961275218768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130252.P11183113605279075851

`∑[A130253(n)]-A130253(n)`
-/

namespace A130252.P11183113605279075851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A130253 n

end

end A130252.P11183113605279075851

noncomputable section

/-- A130252: Partial sums of A130250.

Offset 0, canonical program `A130252.P11183113605279075851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130252 (n : ℕ) : ℤ :=
  A130252.P11183113605279075851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130262.P6396722394106134302

`n*A130260(n)-A001519(A130260(n))+1`
-/

namespace A130262.P6396722394106134302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A130260 n - A001519 (A130260 n).toNat + 1

end

end A130262.P6396722394106134302

noncomputable section

/-- A130262: Partial sums of the 'upper' even Fibonacci Inverse A130260.

Offset 0, canonical program `A130262.P6396722394106134302`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130262 (n : ℕ) : ℤ :=
  A130262.P6396722394106134302.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130270.P2168121446390498421

`A080036(n)%A000124(∑[A010054(n)])`
-/

namespace A130270.P2168121446390498421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080036 n) (A000124 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A130270.P2168121446390498421

noncomputable section

/-- A130270: Triangle read by rows, T(n) followed by 1, 2, 3, ..., n-1.

Offset 1, canonical program `A130270.P2168121446390498421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130270 (n : ℕ) : ℤ :=
  A130270.P2168121446390498421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130878.P6854840787225791751

`∑{d}[n+1, A100107(#)]`
-/

namespace A130878.P6854840787225791751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A100107 d

end

end A130878.P6854840787225791751

noncomputable section

/-- A130878: Inverse Moebius transform of A100107.

Offset 1, canonical program `A130878.P6854840787225791751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A130878 (n : ℕ) : ℤ :=
  A130878.P6854840787225791751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A130878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131403.P2178113084188319012

`A119587(n+1)+n`
-/

namespace A131403.P2178113084188319012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119587 (n + 1) + (n : ℤ)

end

end A131403.P2178113084188319012

noncomputable section

/-- A131403: Row sums of triangle A131402.

Offset 0, canonical program `A131403.P2178113084188319012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A131403 (n : ℕ) : ℤ :=
  A131403.P2178113084188319012.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A131403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131425.P7307706375564196497

`∑[A090942(n+1)+A086801(n+1)]`
-/

namespace A131425.P7307706375564196497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1) + A086801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131425.P7307706375564196497

noncomputable section

/-- A131425: Row sums of triangle A131424.

Offset 1, canonical program `A131425.P7307706375564196497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131425 (n : ℕ) : ℤ :=
  A131425.P7307706375564196497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131430.P12639990675613689132

`A045992(n)+A014138(n)`
-/

namespace A131430.P12639990675613689132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045992 n + A014138 n

end

end A131430.P12639990675613689132

noncomputable section

/-- A131430: Row sums of triangle A131429.

Offset 0, canonical program `A131430.P12639990675613689132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A131430 (n : ℕ) : ℤ :=
  A131430.P12639990675613689132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A131430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131491.P5769807396979650766

`2*A039716(n+1)`
-/

namespace A131491.P5769807396979650766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039716 (n + 1)

end

end A131491.P5769807396979650766

noncomputable section

/-- A131491: a(n) = 2*prime(n)!.

Offset 1, canonical program `A131491.P5769807396979650766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131491 (n : ℕ) : ℤ :=
  A131491.P5769807396979650766.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131491.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131569.P3746553902045059040

`∑[A122931(n+1)-A000045(n)]`
-/

namespace A131569.P3746553902045059040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122931 (n + 1) - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131569.P3746553902045059040

noncomputable section

/-- A131569: a(n) = (1/2)*(F(n+2)-1)*(F(n+2)-2) + F(n), where F() are the Fibonacci numbers.

Offset 1, canonical program `A131569.P3746553902045059040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A131569 (n : ℕ) : ℤ :=
  A131569.P3746553902045059040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A131569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131694.P609237085651523433

`eq[1, ∏{e}[A008347(n), #+1]-1]`
-/

namespace A131694.P609237085651523433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1) : ℕ) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131694.P609237085651523433

noncomputable section

/-- A131694: Numbers k such that abs(S(k)) = A008347(k) is prime, where S(k) = S(k-1) + A000040(k)*(-1)^k; S(0) = 0.

Offset 1, canonical program `A131694.P609237085651523433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A131694 (n : ℕ) : ℤ :=
  (A131694.P609237085651523433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A131694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131860.P6113387829326523069

`∩[A131857(n+1), A131859(n+1)]`
-/

namespace A131860.P6113387829326523069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131860.P6113387829326523069

noncomputable section

/-- A131860: Numbers m such that z(m)=(1,1) with z as defined in A131851.

Offset 1, canonical program `A131860.P6113387829326523069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A131860 (n : ℕ) : ℤ :=
  (A131860.P6113387829326523069.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A131860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131914.P7427387489545977429

`∑[xor(1, A198954(n)-1)]`
-/

namespace A131914.P7427387489545977429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A198954 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131914.P7427387489545977429

noncomputable section

/-- A131914: 3*A002024 - 2*A051340.

Offset 1, canonical program `A131914.P7427387489545977429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131914 (n : ℕ) : ℤ :=
  A131914.P7427387489545977429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131991.P15493339468838761085

`(A030514(n+1)-1)/A006093(n+1)`
-/

namespace A131991.P15493339468838761085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030514 (n + 1) - 1 : ℚ) / (A006093 (n + 1) : ℚ)

end

end A131991.P15493339468838761085

noncomputable section

/-- A131991: a(n) = 1 + prime(n) + prime(n)^2 + prime(n)^3.

Offset 1, canonical program `A131991.P15493339468838761085`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A030514, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A131991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131991.P15493339468838761085.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A030514, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A131991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131992.P12424563035582050834

`(A050997(n+1)-1)/A006093(n+1)`
-/

namespace A131992.P12424563035582050834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050997 (n + 1) - 1 : ℚ) / (A006093 (n + 1) : ℚ)

end

end A131992.P12424563035582050834

noncomputable section

/-- A131992: a(n) = 1 + prime(n) + prime(n)^2 + prime(n)^3 + prime(n)^4.

Offset 1, canonical program `A131992.P12424563035582050834`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A131992 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131992.P12424563035582050834.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A131992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131993.P10903318436408516009

`(A030516(n+1)-1)/A006093(n+1)`
-/

namespace A131993.P10903318436408516009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030516 (n + 1) - 1 : ℚ) / (A006093 (n + 1) : ℚ)

end

end A131993.P10903318436408516009

noncomputable section

/-- A131993: a(n) = 1 + prime(n) + prime(n)^2 + prime(n)^3 + prime(n)^4 + prime(n)^5.

Offset 1, canonical program `A131993.P10903318436408516009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A030516, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A131993 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131993.P10903318436408516009.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A030516, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A131993.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131996.P6835226825695645018

`A081611(round(n/3))`
-/

namespace A131996.P6835226825695645018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A131996.P6835226825695645018

noncomputable section

/-- A131996: Number of partitions of n into distinct powers of 2 or of 3.

Offset 1, canonical program `A131996.P6835226825695645018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A131996 (n : ℕ) : ℤ :=
  A131996.P6835226825695645018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A131996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132227.P17780632896261134277

`A001748(n+1)-5`
-/

namespace A132227.P17780632896261134277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - 5

end

end A132227.P17780632896261134277

noncomputable section

/-- A132227: a(n) = 3*prime(n) - 5.

Offset 1, canonical program `A132227.P17780632896261134277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132227 (n : ℕ) : ℤ :=
  A132227.P17780632896261134277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132364.P17104137420631363421

`Δ[∑[A000108(n)]-A030238(n)]`
-/

namespace A132364.P17104137420631363421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A030238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132364.P17104137420631363421

noncomputable section

/-- A132364: Expansion of 1/(1-x^2*c(x)), c(x) the g.f. of A000108.

Offset 0, canonical program `A132364.P17104137420631363421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A132364 (n : ℕ) : ℤ :=
  A132364.P17104137420631363421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A132364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132790.P12556336917507910766

`∑[A000245(n)]-(n-2^n)`
-/

namespace A132790.P12556336917507910766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - (2 ^ n : ℤ))

end

end A132790.P12556336917507910766

noncomputable section

/-- A132790: Row sums of triangle A132789.

Offset 1, canonical program `A132790.P12556336917507910766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A132790 (n : ℕ) : ℤ :=
  A132790.P12556336917507910766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A132790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132889.P10837545302455266262

`A116385(2*n)+A005566(n)`
-/

namespace A132889.P10837545302455266262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 (2 * n) + A005566 n

end

end A132889.P10837545302455266262

noncomputable section

/-- A132889: Sum of the lengths of the longest increasing subsequence over all 321-avoiding permutations of [n].

Offset 1, canonical program `A132889.P10837545302455266262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A132889 (n : ℕ) : ℤ :=
  A132889.P10837545302455266262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A132889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133062.P15933548885244344016

`5*A050997(n+1)-3*A030078(n+1)+2*A001248(n+1)`
-/

namespace A133062.P15933548885244344016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A050997 (n + 1) - 3 * A030078 (n + 1) + 2 * A001248 (n + 1)

end

end A133062.P15933548885244344016

noncomputable section

/-- A133062: a(n) = 5*p^5 - 3*p^3 + 2*p^2 with p = prime(n).

Offset 1, canonical program `A133062.P15933548885244344016`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030078, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133062 (n : ℕ) : ℤ :=
  A133062.P15933548885244344016.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030078, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133062.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133131.P2286619293522263378

`Δ[Δ[A131742(n)]]`
-/

namespace A133131.P2286619293522263378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131742 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133131.P2286619293522263378

noncomputable section

/-- A133131: a(4n) = 3n+1, a(4n+1) = -3n, a(4n+2) = -3n-3, a(4n+3) = 3n+2.

Offset 0, canonical program `A133131.P2286619293522263378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133131 (n : ℕ) : ℤ :=
  A133131.P2286619293522263378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133162.P1830166414594627014

`A049320(n+1)+1`
-/

namespace A133162.P1830166414594627014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049320 (n + 1) + 1

end

end A133162.P1830166414594627014

noncomputable section

/-- A133162: Trajectory of 1 under the morphism 1 -> {1,1,2,1}, 2 -> {2}.

Offset 1, canonical program `A133162.P1830166414594627014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133162 (n : ℕ) : ℤ :=
  A133162.P1830166414594627014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133325.P15127350892995211202

`A077447(n+1)+A077443(n+1)`
-/

namespace A133325.P15127350892995211202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077447 (n + 1) + A077443 (n + 1)

end

end A133325.P15127350892995211202

noncomputable section

/-- A133325: Numbers such that 2*X^2-82 is a square.

Offset 1, canonical program `A133325.P15127350892995211202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A133325 (n : ℕ) : ℤ :=
  A133325.P15127350892995211202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A133325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133534.P8927698302002784896

`A030078(n+1)+A030078(n+2)`
-/

namespace A133534.P8927698302002784896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) + A030078 (n + 2)

end

end A133534.P8927698302002784896

noncomputable section

/-- A133534: Sum of third powers of two consecutive primes.

Offset 1, canonical program `A133534.P8927698302002784896`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133534 (n : ℕ) : ℤ :=
  A133534.P8927698302002784896.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133534.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133535.P17160611315986516138

`A030514(n+1)+A030514(n+2)`
-/

namespace A133535.P17160611315986516138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) + A030514 (n + 2)

end

end A133535.P17160611315986516138

noncomputable section

/-- A133535: Sum of fourth powers of two consecutive primes.

Offset 1, canonical program `A133535.P17160611315986516138`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030514, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133535 (n : ℕ) : ℤ :=
  A133535.P17160611315986516138.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030514, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133535.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133536.P9524943263663054428

`A050997(n+1)+A050997(n+2)`
-/

namespace A133536.P9524943263663054428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) + A050997 (n + 2)

end

end A133536.P9524943263663054428

noncomputable section

/-- A133536: Sum of fifth powers of two consecutive primes.

Offset 1, canonical program `A133536.P9524943263663054428`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133536 (n : ℕ) : ℤ :=
  A133536.P9524943263663054428.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133537.P14407544762296117018

`A030516(n+1)+A030516(n+2)`
-/

namespace A133537.P14407544762296117018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) + A030516 (n + 2)

end

end A133537.P14407544762296117018

noncomputable section

/-- A133537: Sum of sixth powers of two consecutive primes.

Offset 1, canonical program `A133537.P14407544762296117018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133537 (n : ℕ) : ℤ :=
  A133537.P14407544762296117018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133537.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133538.P15090665572470538733

`A092759(n+1)+A092759(n+2)`
-/

namespace A133538.P15090665572470538733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092759 (n + 1) + A092759 (n + 2)

end

end A133538.P15090665572470538733

noncomputable section

/-- A133538: Sum of seventh powers of two consecutive primes.

Offset 1, canonical program `A133538.P15090665572470538733`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133538 (n : ℕ) : ℤ :=
  A133538.P15090665572470538733.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133630.P3680023674435169334

`filter[A133621(n+1), A066247(#)]`
-/

namespace A133630.P3680023674435169334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A133630.P3680023674435169334

noncomputable section

/-- A133630: Nonprime numbers k such that binomial(k+p,k) mod k = 1, where p=10.

Offset 1, canonical program `A133630.P3680023674435169334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6243 terms. -/
def A133630 (n : ℕ) : ℤ :=
  A133630.P3680023674435169334.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6243 terms. -/
def A133630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133685.P12239145801004581258

`A001414(A130291(n+1))-A001414(A130290(n+1))`
-/

namespace A133685.P12239145801004581258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A130291 (n + 1)).toNat - A001414 (A130290 (n + 1)).toNat

end

end A133685.P12239145801004581258

noncomputable section

/-- A133685: Let p = prime(n); then a(n) = (sum of prime factors of p+1) - (sum of prime factors of p-1). a(1) = 2 by convention.

Offset 1, canonical program `A133685.P12239145801004581258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133685 (n : ℕ) : ℤ :=
  A133685.P12239145801004581258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133823.P6955847078214213763

`A004737(n+1)^3`
-/

namespace A133823.P6955847078214213763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) ^ 3

end

end A133823.P6955847078214213763

noncomputable section

/-- A133823: Triangle whose rows are sequences of increasing and decreasing cubes:1; 1,8,1; 1,8,27,8,1; ... .

Offset 0, canonical program `A133823.P6955847078214213763`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133823 (n : ℕ) : ℤ :=
  A133823.P6955847078214213763.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133823.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133825.P698855924864636132

`A004737(n+1)*(A004737(n+1)+1)/2`
-/

namespace A133825.P698855924864636132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004737 (n + 1) * (A004737 (n + 1) + 1) : ℚ) / 2

end

end A133825.P698855924864636132

noncomputable section

/-- A133825: Triangle whose rows are sequences of increasing and decreasing triangular numbers: 1; 1,3,1; 1,3,6,3,1; ... .

Offset 0, canonical program `A133825.P698855924864636132`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133825 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133825.P698855924864636132.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133825.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133826.P5294897765685283564

`C(A004737(n+1)+2, 3)`
-/

namespace A133826.P5294897765685283564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004737 (n + 1) + 2).toNat 3

end

end A133826.P5294897765685283564

noncomputable section

/-- A133826: Triangle whose rows are sequences of increasing and decreasing tetrahedral numbers: 1; 1,4,1; 1,4,10,4,1; ... .

Offset 0, canonical program `A133826.P5294897765685283564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A133826 (n : ℕ) : ℤ :=
  (A133826.P5294897765685283564.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A133826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133900.P11325494338453864124

`(n+1)*A064446(n+1)`
-/

namespace A133900.P11325494338453864124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064446 (n + 1)

end

end A133900.P11325494338453864124

noncomputable section

/-- A133900: a(n) = period of the sequence {b(m), m>=0}, defined by b(m):=binomial(m+n,n) mod n.

Offset 1, canonical program `A133900.P11325494338453864124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133900 (n : ℕ) : ℤ :=
  A133900.P11325494338453864124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133915.P1448036709764330606

`A120305(n)+A002450(n)`
-/

namespace A133915.P1448036709764330606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120305 n + A002450 n

end

end A133915.P1448036709764330606

noncomputable section

/-- A133915: a(n) = Sum_{i=0..n} C(2*n-i,n+i)*2^i.

Offset 0, canonical program `A133915.P1448036709764330606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A133915 (n : ℕ) : ℤ :=
  A133915.P1448036709764330606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A133915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134077.P3704379988218628143

`A131944(2*n+1)`
-/

namespace A134077.P3704379988218628143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131944 (2 * n + 1)

end

end A134077.P3704379988218628143

noncomputable section

/-- A134077: Expansion of psi(x) * phi(-x)^3 / chi(-x^3)^3 in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A134077.P3704379988218628143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134077 (n : ℕ) : ℤ :=
  A134077.P3704379988218628143.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134323.P18243565506168463264

`A008864(n+1)%3-1`
-/

namespace A134323.P18243565506168463264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1)) 3 - 1

end

end A134323.P18243565506168463264

noncomputable section

/-- A134323: a(n) = Legendre(-3, prime(n)).

Offset 1, canonical program `A134323.P18243565506168463264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134323 (n : ℕ) : ℤ :=
  A134323.P18243565506168463264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134408.P2913322129490497874

`A006336(∑[A005614(n)])`
-/

namespace A134408.P2913322129490497874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006336 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134408.P2913322129490497874

noncomputable section

/-- A134408: First differences of A006336.

Offset 1, canonical program `A134408.P2913322129490497874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134408 (n : ℕ) : ℤ :=
  A134408.P2913322129490497874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134409.P7633649844803624079

`Δ[A006336(A005206(n+1))]`
-/

namespace A134409.P7633649844803624079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006336 (A005206 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134409.P7633649844803624079

noncomputable section

/-- A134409: Second differences of A006336.

Offset 1, canonical program `A134409.P7633649844803624079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134409 (n : ℕ) : ℤ :=
  A134409.P7633649844803624079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134565.P8199638910073155165

`(-1)^n*A047749(ceil(sqrt(∑[2*n])))`
-/

namespace A134565.P8199638910073155165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A047749 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat

end

end A134565.P8199638910073155165

noncomputable section

/-- A134565: Expansion of reversion of (x - 2*x^2) / (1 - x)^3.

Offset 1, canonical program `A134565.P8199638910073155165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A134565 (n : ℕ) : ℤ :=
  A134565.P8199638910073155165.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A134565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134693.P17907923423065045904

`A133806(n)+A133806(n+6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134693.P17907923423065045904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133806 n + A133806 (n + 6)

end

end A134693.P17907923423065045904

noncomputable section

/-- A134693: a(n)=A133806(n)+A133806(n+6).

Offset 0, canonical program `A134693.P17907923423065045904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134693 (n : ℕ) : ℤ :=
  A134693.P17907923423065045904.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134693.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134757.P15787088376940040508

`Δ[A132894(n)]`
-/

namespace A134757.P15787088376940040508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134757.P15787088376940040508

noncomputable section

/-- A134757: A007318 * A100071.

Offset 1, canonical program `A134757.P15787088376940040508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A134757 (n : ℕ) : ℤ :=
  A134757.P15787088376940040508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A134757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134764.P7980750495168599662

`∑{d}[n+1, A007427(#)*A066768((n+1)/#)]`
-/

namespace A134764.P7980750495168599662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A066768 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A134764.P7980750495168599662

noncomputable section

/-- A134764: A054525 * A000984.

Offset 1, canonical program `A134764.P7980750495168599662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A134764 (n : ℕ) : ℤ :=
  A134764.P7980750495168599662.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A134764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134861.P12598962134347157448

`A035339(n)%A372302(n+1)`
-/

namespace A134861.P12598962134347157448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035339 n) (A372302 (n + 1))

end

end A134861.P12598962134347157448

noncomputable section

/-- A134861: Wythoff BAA numbers.

Offset 1, canonical program `A134861.P12598962134347157448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134861 (n : ℕ) : ℤ :=
  A134861.P12598962134347157448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134896.P9421466722066182485

`A134897(n+1)+A004736(record[C(n, 2)-n]+1)`
-/

namespace A134896.P9421466722066182485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134897 (n + 1) + A004736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A134896.P9421466722066182485

noncomputable section

/-- A134896: Ceiling(n*exp(cot n)).

Offset 1, canonical program `A134896.P9421466722066182485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A134896 (n : ℕ) : ℤ :=
  A134896.P9421466722066182485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A134896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135171.P10397032383344473501

`A057901(n+1)-A034785(n+1)`
-/

namespace A135171.P10397032383344473501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057901 (n + 1) - A034785 (n + 1)

end

end A135171.P10397032383344473501

noncomputable section

/-- A135171: 3^p - 2^p, where p = prime(n).

Offset 1, canonical program `A135171.P10397032383344473501`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034785, A057901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135171 (n : ℕ) : ℤ :=
  A135171.P10397032383344473501.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034785, A057901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135173.P4341705398435944029

`A057902(n+1)-A057901(n+1)-A034785(n+1)`
-/

namespace A135173.P4341705398435944029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057902 (n + 1) - A057901 (n + 1) - A034785 (n + 1)

end

end A135173.P4341705398435944029

noncomputable section

/-- A135173: a(n) = 5^p - 3^p - 2^p, where p = prime(n).

Offset 1, canonical program `A135173.P4341705398435944029`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034785, A057901, A057902, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135173 (n : ℕ) : ℤ :=
  A135173.P4341705398435944029.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034785, A057901, A057902, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135173.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135177.P13258641397500885273

`A030078(n+1)-A001248(n+1)`
-/

namespace A135177.P13258641397500885273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - A001248 (n + 1)

end

end A135177.P13258641397500885273

noncomputable section

/-- A135177: a(n) = p^2*(p-1), where p = prime(n).

Offset 1, canonical program `A135177.P13258641397500885273`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030078, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135177 (n : ℕ) : ℤ :=
  A135177.P13258641397500885273.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030078, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135177.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135178.P2117100385622879640

`A001248(n+1)+A030078(n+1)`
-/

namespace A135178.P2117100385622879640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + A030078 (n + 1)

end

end A135178.P2117100385622879640

noncomputable section

/-- A135178: a(n) = p^3 + p^2 where p = prime(n).

Offset 1, canonical program `A135178.P2117100385622879640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135178 (n : ℕ) : ℤ :=
  A135178.P2117100385622879640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135179.P4376560334268819902

`A050997(n+1)-A030078(n+1)-A001248(n+1)`
-/

namespace A135179.P4376560334268819902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) - A030078 (n + 1) - A001248 (n + 1)

end

end A135179.P4376560334268819902

noncomputable section

/-- A135179: p^5 - p^3 - p^2. Exponents are the prime numbers in decreasing order and p is the n-th prime.

Offset 1, canonical program `A135179.P4376560334268819902`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030078, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135179 (n : ℕ) : ℤ :=
  A135179.P4376560334268819902.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030078, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135179.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135182.P14277112270970235389

`A001248(n+1)+A030078(n+1)+A050997(n+1)`
-/

namespace A135182.P14277112270970235389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + A030078 (n + 1) + A050997 (n + 1)

end

end A135182.P14277112270970235389

noncomputable section

/-- A135182: p^5 + p^3 + p^2. Exponents are prime numbers and p = prime(n).

Offset 1, canonical program `A135182.P14277112270970235389`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030078, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135182 (n : ℕ) : ℤ :=
  A135182.P14277112270970235389.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030078, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135182.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135249.P6172404458566147260

`1+A070826(n+1)`
-/

namespace A135249.P6172404458566147260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A070826 (n + 1)

end

end A135249.P6172404458566147260

noncomputable section

/-- A135249: a(n) = number of bits in the binary expansion of A046967(n).

Offset 1, canonical program `A135249.P6172404458566147260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135249 (n : ℕ) : ℤ :=
  A135249.P6172404458566147260.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135499.P1507345973480139614

`lt[lcm(n, A055017(n)), n]`
-/

namespace A135499.P1507345973480139614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A055017 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135499.P1507345973480139614

noncomputable section

/-- A135499: Numbers for which Sum_digits(odd positions) = Sum_digits(even positions).

Offset 1, canonical program `A135499.P1507345973480139614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A135499 (n : ℕ) : ℤ :=
  (A135499.P1507345973480139614.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A135499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135618.P17133991811513535197

`A134718(n+1)/2`
-/

namespace A135618.P17133991811513535197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134718 (n + 1) : ℚ) / 2

end

end A135618.P17133991811513535197

noncomputable section

/-- A135618: Even Motzkin numbers divided by 2.

Offset 1, canonical program `A135618.P17133991811513535197`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134718, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135618 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135618.P17133991811513535197.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134718, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135775.P6442385644065745739

`eq[A057427(n)+A032741(n), A110592(n)]`
-/

namespace A135775.P6442385644065745739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135775.P6442385644065745739

noncomputable section

/-- A135775: Numbers having number of divisors equal to number of digits in base 5.

Offset 1, canonical program `A135775.P6442385644065745739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A135775 (n : ℕ) : ℤ :=
  (A135775.P6442385644065745739.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A135775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135840.P14133601689704318792

`ceil((A010054(n)+A004736(n+1))/2)`
-/

namespace A135840.P14133601689704318792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010054 n + A004736 (n + 1) : ℚ) / 2⌉

end

end A135840.P14133601689704318792

noncomputable section

/-- A135840: A135839 * A000012 as infinite lower triangular matrices.

Offset 1, canonical program `A135840.P14133601689704318792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A135840 (n : ℕ) : ℤ :=
  A135840.P14133601689704318792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A135840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135992.P8622314835539076635

`A098054(2*(n+2))`
-/

namespace A135992.P8622314835539076635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098054 (2 * (n + 2))

end

end A135992.P8622314835539076635

noncomputable section

/-- A135992: Positive Fibonacci numbers swapped in pairs.

Offset 1, canonical program `A135992.P8622314835539076635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A135992 (n : ℕ) : ℤ :=
  A135992.P8622314835539076635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A135992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136035.P15914414041268730617

`A128311(A008864(n+1))`
-/

namespace A136035.P15914414041268730617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128311 (A008864 (n + 1)).toNat

end

end A136035.P15914414041268730617

noncomputable section

/-- A136035: Remainder when dividing 2^q - 1 by q + 1 where q is the n-th prime.

Offset 1, canonical program `A136035.P15914414041268730617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 309 terms. -/
def A136035 (n : ℕ) : ℤ :=
  A136035.P15914414041268730617.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 309 terms. -/
def A136035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136063.P6007751385196214412

`p?[9*A006093(n+1)+1]`
-/

namespace A136063.P6007751385196214412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P6007751385196214412

noncomputable section

/-- A136063: Mother primes of order 4.

Offset 1, canonical program `A136063.P6007751385196214412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A136063 (n : ℕ) : ℤ :=
  A136063.P6007751385196214412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A136063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136064.P4369276691916224669

`p?[11*A006093(n+1)+1]`
-/

namespace A136064.P4369276691916224669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P4369276691916224669

noncomputable section

/-- A136064: Mother primes of order 5.

Offset 1, canonical program `A136064.P4369276691916224669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1373 terms. -/
def A136064 (n : ℕ) : ℤ :=
  A136064.P4369276691916224669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1373 terms. -/
def A136064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136068.P14960565714948340303

`p?[19*A006093(n+1)+1]`
-/

namespace A136068.P14960565714948340303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136068.P14960565714948340303

noncomputable section

/-- A136068: Mother primes of order 9.

Offset 1, canonical program `A136068.P14960565714948340303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1182 terms. -/
def A136068 (n : ℕ) : ℤ :=
  A136068.P14960565714948340303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1182 terms. -/
def A136068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136069.P239198590526988614

`p?[21*A006093(n+1)+1]`
-/

namespace A136069.P239198590526988614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P239198590526988614

noncomputable section

/-- A136069: Mother primes of order 10.

Offset 1, canonical program `A136069.P239198590526988614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1635 terms. -/
def A136069 (n : ℕ) : ℤ :=
  A136069.P239198590526988614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1635 terms. -/
def A136069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136070.P4483853176803871753

`p?[23*A006093(n+1)+1]`
-/

namespace A136070.P4483853176803871753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136070.P4483853176803871753

noncomputable section

/-- A136070: Mother primes of order 11.

Offset 1, canonical program `A136070.P4483853176803871753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 553 terms. -/
def A136070 (n : ℕ) : ℤ :=
  A136070.P4483853176803871753.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 553 terms. -/
def A136070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136072.P9164867386790231185

`p?[7*A008864(n+1)-1]`
-/

namespace A136072.P9164867386790231185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A008864 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P9164867386790231185

noncomputable section

/-- A136072: Primes of the form 7*p + 6 with p prime.

Offset 1, canonical program `A136072.P9164867386790231185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2600 terms. -/
def A136072 (n : ℕ) : ℤ :=
  A136072.P9164867386790231185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2600 terms. -/
def A136072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136076.P10771529814166551126

`p?[15*A008864(n+1)-1]`
-/

namespace A136076.P10771529814166551126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A008864 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136076.P10771529814166551126

noncomputable section

/-- A136076: Primes of the form 15*p + 14 with p prime.

Offset 1, canonical program `A136076.P10771529814166551126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2204 terms. -/
def A136076 (n : ℕ) : ℤ :=
  A136076.P10771529814166551126.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2204 terms. -/
def A136076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136079.P13389629835075669409

`p?[21*A008864(n+1)-1]`
-/

namespace A136079.P13389629835075669409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A008864 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136079.P13389629835075669409

noncomputable section

/-- A136079: Primes of the form 21*p + 20 with p prime.

Offset 1, canonical program `A136079.P13389629835075669409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1645 terms. -/
def A136079 (n : ℕ) : ℤ :=
  A136079.P13389629835075669409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1645 terms. -/
def A136079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136083.P9300838305206565208

`floor(A136075(n+1)/13)`
-/

namespace A136083.P9300838305206565208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136075 (n + 1) : ℚ) / 13⌋

end

end A136083.P9300838305206565208

noncomputable section

/-- A136083: Son primes of order 6.

Offset 1, canonical program `A136083.P9300838305206565208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136083 (n : ℕ) : ℤ :=
  A136083.P9300838305206565208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136088.P4566538024030285443

`floor(A136080(n+1)/23)`
-/

namespace A136088.P4566538024030285443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136080 (n + 1) : ℚ) / 23⌋

end

end A136088.P4566538024030285443

noncomputable section

/-- A136088: Son primes of order 11.

Offset 1, canonical program `A136088.P4566538024030285443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136088 (n : ℕ) : ℤ :=
  A136088.P4566538024030285443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136288.P6117601976786394949

`p?[A008347(n)]`
-/

namespace A136288.P6117601976786394949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136288.P6117601976786394949

noncomputable section

/-- A136288: Primes which are the absolute value of the alternating sum and difference of the first n primes.

Offset 1, canonical program `A136288.P6117601976786394949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2802 terms. -/
def A136288 (n : ℕ) : ℤ :=
  A136288.P6117601976786394949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2802 terms. -/
def A136288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136444.P17468755045038828291

`Δ[A118430(abs(1-n))]`
-/

namespace A136444.P17468755045038828291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118430 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136444.P17468755045038828291

noncomputable section

/-- A136444: a(n) = Sum_{k=0..n} k*binomial(n-k, 2*k).

Offset 0, canonical program `A136444.P17468755045038828291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 402 terms. -/
def A136444 (n : ℕ) : ℤ :=
  A136444.P17468755045038828291.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 402 terms. -/
def A136444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136521.P12057220829858395137

`A046698(A131431(n))`
-/

namespace A136521.P12057220829858395137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A131431 n).toNat

end

end A136521.P12057220829858395137

noncomputable section

/-- A136521: Triangle read by rows: (1, 2, 2, 2, ...) on the main diagonal and the rest zeros.

Offset 0, canonical program `A136521.P12057220829858395137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136521 (n : ℕ) : ℤ :=
  A136521.P12057220829858395137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136576.P9301730966538288022

`A062157(n)/2*A071356(n)`
-/

namespace A136576.P9301730966538288022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062157 n : ℚ) / 2 * (A071356 n : ℚ)

end

end A136576.P9301730966538288022

noncomputable section

/-- A136576: Series reversion of x*c(x)/(1 - 2*x), c(x) the g.f. of A000108.

Offset 0, canonical program `A136576.P9301730966538288022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A136576 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A136576.P9301730966538288022.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A136576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137389.P15135994414756883404

`A034785(n+1)+A034785(n+2)`
-/

namespace A137389.P15135994414756883404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1) + A034785 (n + 2)

end

end A137389.P15135994414756883404

noncomputable section

/-- A137389: a(n) = 2^prime(n) + 2^prime(n+1).

Offset 1, canonical program `A137389.P15135994414756883404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137389 (n : ℕ) : ℤ :=
  A137389.P15135994414756883404.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137389.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137521.P311171472292394913

`50*A100484(n+1)+45`
-/

namespace A137521.P311171472292394913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  50 * A100484 (n + 1) + 45

end

end A137521.P311171472292394913

noncomputable section

/-- A137521: Prime numbers concatenated with 45.

Offset 1, canonical program `A137521.P311171472292394913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137521 (n : ℕ) : ℤ :=
  A137521.P311171472292394913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137727.P5637515941323942506

`A010879(A006094(n+1))`
-/

namespace A137727.P5637515941323942506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A006094 (n + 1)).toNat

end

end A137727.P5637515941323942506

noncomputable section

/-- A137727: Final digit of prime(n)*prime(n+1).

Offset 1, canonical program `A137727.P5637515941323942506`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137727 (n : ℕ) : ℤ :=
  A137727.P5637515941323942506.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137727.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137735.P991700169822903993

`A000194(n+1-A384688(n))`
-/

namespace A137735.P991700169822903993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((n + 1 : ℤ) - A384688 n).toNat

end

end A137735.P991700169822903993

noncomputable section

/-- A137735: a(0)=1. a(n) = floor(n/b(n)), where b(n) is the largest value among (a(0),a(1),...,a(n-1)).

Offset 0, canonical program `A137735.P991700169822903993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137735 (n : ℕ) : ℤ :=
  A137735.P991700169822903993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137807.P2315973697329758852

`A010879(A001248(n+1))`
-/

namespace A137807.P2315973697329758852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A001248 (n + 1)).toNat

end

end A137807.P2315973697329758852

noncomputable section

/-- A137807: Final digit of prime(n)^2.

Offset 1, canonical program `A137807.P2315973697329758852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137807 (n : ℕ) : ℤ :=
  A137807.P2315973697329758852.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137807.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137992.P6858819124335204496

`∑[A039969(n)]%3`
-/

namespace A137992.P6858819124335204496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A137992.P6858819124335204496

noncomputable section

/-- A137992: A014137 (= partial sums of Catalan numbers A000108) mod 3.

Offset 0, canonical program `A137992.P6858819124335204496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137992 (n : ℕ) : ℤ :=
  A137992.P6858819124335204496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137993.P8968071889324067760

`∑[(-1)^n*A039964(n)]`
-/

namespace A137993.P8968071889324067760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A039964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137993.P8968071889324067760

noncomputable section

/-- A137993: A014138 (= partial sums of Catalan numbers starting with 1,2,5) mod 3.

Offset 0, canonical program `A137993.P8968071889324067760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137993 (n : ℕ) : ℤ :=
  A137993.P8968071889324067760.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138383.P12057680443366448035

`abs(Δ[A034953(abs(1-n)+1)])`
-/

namespace A138383.P12057680443366448035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A138383.P12057680443366448035

noncomputable section

/-- A138383: If prime(i) = i-th prime, a(n) = prime(n)+1 + prime(n)+2 + ... + prime(n+1). a(0) = 3 by convention.

Offset 0, canonical program `A138383.P12057680443366448035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138383 (n : ℕ) : ℤ :=
  A138383.P12057680443366448035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138401.P13607620194093775953

`A030514(n+1)-A000040(n+1)`
-/

namespace A138401.P13607620194093775953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) - A000040 (n + 1)

end

end A138401.P13607620194093775953

noncomputable section

/-- A138401: a(n) = prime(n)^4 - prime(n).

Offset 1, canonical program `A138401.P13607620194093775953`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A030514, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138401 (n : ℕ) : ℤ :=
  A138401.P13607620194093775953.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A030514, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138403.P9837002245501069480

`A030514(n+1)-A030078(n+1)`
-/

namespace A138403.P9837002245501069480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) - A030078 (n + 1)

end

end A138403.P9837002245501069480

noncomputable section

/-- A138403: a(n) = p^3*(p-1), where p = prime(n).

Offset 1, canonical program `A138403.P9837002245501069480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, A030514, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138403 (n : ℕ) : ℤ :=
  A138403.P9837002245501069480.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, A030514, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138404.P18212954728452226427

`A050997(n+1)-A000040(n+1)`
-/

namespace A138404.P18212954728452226427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) - A000040 (n + 1)

end

end A138404.P18212954728452226427

noncomputable section

/-- A138404: a(n) = prime(n)^5 - prime(n).

Offset 1, canonical program `A138404.P18212954728452226427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138404 (n : ℕ) : ℤ :=
  A138404.P18212954728452226427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138405.P13221542276001064548

`A050997(n+1)-A001248(n+1)`
-/

namespace A138405.P13221542276001064548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) - A001248 (n + 1)

end

end A138405.P13221542276001064548

noncomputable section

/-- A138405: a(n) = prime(n)^5 - prime(n)^2.

Offset 1, canonical program `A138405.P13221542276001064548`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138405 (n : ℕ) : ℤ :=
  A138405.P13221542276001064548.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138407.P5183959354295253319

`A050997(n+1)-A030514(n+1)`
-/

namespace A138407.P5183959354295253319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) - A030514 (n + 1)

end

end A138407.P5183959354295253319

noncomputable section

/-- A138407: a(n) = p^4*(p-1), where p = prime(n).

Offset 1, canonical program `A138407.P5183959354295253319`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030514, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138407 (n : ℕ) : ℤ :=
  A138407.P5183959354295253319.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030514, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138407.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138408.P11008888213463207663

`A030516(n+1)-A000040(n+1)`
-/

namespace A138408.P11008888213463207663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) - A000040 (n + 1)

end

end A138408.P11008888213463207663

noncomputable section

/-- A138408: a(n) = prime(n)^6 - prime(n).

Offset 1, canonical program `A138408.P11008888213463207663`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A030516, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138408 (n : ℕ) : ℤ :=
  A138408.P11008888213463207663.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A030516, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138408.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138409.P6579586944619133022

`A030516(n+1)-A001248(n+1)`
-/

namespace A138409.P6579586944619133022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) - A001248 (n + 1)

end

end A138409.P6579586944619133022

noncomputable section

/-- A138409: a(n) = prime(n)^6 - prime(n)^2.

Offset 1, canonical program `A138409.P6579586944619133022`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030516, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138409 (n : ℕ) : ℤ :=
  A138409.P6579586944619133022.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030516, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138410.P8096708165835411234

`2*C(A030078(n+1), 2)`
-/

namespace A138410.P8096708165835411234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A030078 (n + 1)).toNat 2

end

end A138410.P8096708165835411234

noncomputable section

/-- A138410: a(n) = prime(n)^6 - prime(n)^3.

Offset 1, canonical program `A138410.P8096708165835411234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138410 (n : ℕ) : ℤ :=
  (A138410.P8096708165835411234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138411.P5116142193877252063

`A030516(n+1)-A030514(n+1)`
-/

namespace A138411.P5116142193877252063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) - A030514 (n + 1)

end

end A138411.P5116142193877252063

noncomputable section

/-- A138411: a(n) = prime(n)^6 - prime(n)^4.

Offset 1, canonical program `A138411.P5116142193877252063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138411 (n : ℕ) : ℤ :=
  A138411.P5116142193877252063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138412.P9166921573337738631

`A030516(n+1)-A050997(n+1)`
-/

namespace A138412.P9166921573337738631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) - A050997 (n + 1)

end

end A138412.P9166921573337738631

noncomputable section

/-- A138412: a(n) = p^5*(p-1) where p = prime(n).

Offset 1, canonical program `A138412.P9166921573337738631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138412 (n : ℕ) : ℤ :=
  A138412.P9166921573337738631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138691.P362918012422747968

`A001248(n+1)+68`
-/

namespace A138691.P362918012422747968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + 68

end

end A138691.P362918012422747968

noncomputable section

/-- A138691: Numbers of the form 68+p^2 (where p is a prime).

Offset 1, canonical program `A138691.P362918012422747968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138691 (n : ℕ) : ℤ :=
  A138691.P362918012422747968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138693.P2674779579294356525

`110+A001248(n+1)`
-/

namespace A138693.P2674779579294356525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  110 + A001248 (n + 1)

end

end A138693.P2674779579294356525

noncomputable section

/-- A138693: Numbers of the form 110 + p^2. (where p is a prime).

Offset 1, canonical program `A138693.P2674779579294356525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138693 (n : ℕ) : ℤ :=
  A138693.P2674779579294356525.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138693.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138840.P8735630634193650490

`A073729(A000040(n+1))`
-/

namespace A138840.P8735630634193650490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A000040 (n + 1)).toNat

end

end A138840.P8735630634193650490

noncomputable section

/-- A138840: Concatenation of initial and final digits of n-th prime.

Offset 1, canonical program `A138840.P8735630634193650490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138840 (n : ℕ) : ℤ :=
  A138840.P8735630634193650490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138952.P8845093039142531308

`(-1)^n*A138950(n+1)`
-/

namespace A138952.P8845093039142531308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A138950 (n + 1)

end

end A138952.P8845093039142531308

noncomputable section

/-- A138952: Expansion of (eta(q^2)^7 * eta(q^3)^2 * eta(q^12) / (eta(q)^2 * eta(q^4)^3 * eta(q^6)^3) - 1) / 2 in powers of q.

Offset 1, canonical program `A138952.P8845093039142531308`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138952 (n : ℕ) : ℤ :=
  A138952.P8845093039142531308.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139159.P14708615725602417822

`A039716(n+1)+1`
-/

namespace A139159.P14708615725602417822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039716 (n + 1) + 1

end

end A139159.P14708615725602417822

noncomputable section

/-- A139159: a(n) = prime(n)! + 1.

Offset 1, canonical program `A139159.P14708615725602417822`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139159 (n : ℕ) : ℤ :=
  A139159.P14708615725602417822.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139159.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139189.P239424354536354143

`A039716(n+1)-1`
-/

namespace A139189.P239424354536354143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039716 (n + 1) - 1

end

end A139189.P239424354536354143

noncomputable section

/-- A139189: a(n) = prime(n)!-1.

Offset 1, canonical program `A139189.P239424354536354143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139189 (n : ℕ) : ℤ :=
  A139189.P239424354536354143.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139189.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139196.P8143982788016440248

`(A039716(n+3)-8)/8`
-/

namespace A139196.P8143982788016440248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039716 (n + 3) - 8 : ℚ) / 8

end

end A139196.P8143982788016440248

noncomputable section

/-- A139196: a(n) = (prime(n)!-8)/8.

Offset 3, canonical program `A139196.P8143982788016440248`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139196 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139196.P8143982788016440248.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139198.P1615369607652417229

`A039716(n+3)/10-1`
-/

namespace A139198.P1615369607652417229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039716 (n + 3) : ℚ) / 10 - 1

end

end A139198.P1615369607652417229

noncomputable section

/-- A139198: a(n) = prime(n)!/10 - 1.

Offset 3, canonical program `A139198.P1615369607652417229`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139198 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139198.P1615369607652417229.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139198.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139238.P2423314639559160566

`A001348(n+2)-A001348(n+1)`
-/

namespace A139238.P2423314639559160566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (n + 2) - A001348 (n + 1)

end

end A139238.P2423314639559160566

noncomputable section

/-- A139238: First differences of Mersenne numbers A001348.

Offset 1, canonical program `A139238.P2423314639559160566`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001348, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139238 (n : ℕ) : ℤ :=
  A139238.P2423314639559160566.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001348, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139270.P18097877948354523741

`A018252(n+1)*2`
-/

namespace A139270.P18097877948354523741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) * 2

end

end A139270.P18097877948354523741

noncomputable section

/-- A139270: Twice nonprime numbers.

Offset 1, canonical program `A139270.P18097877948354523741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139270 (n : ℕ) : ℤ :=
  A139270.P18097877948354523741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139270.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139291.P4704060389980798102

`A000225(A131426(n+1))`
-/

namespace A139291.P4704060389980798102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A131426 (n + 1)).toNat

end

end A139291.P4704060389980798102

noncomputable section

/-- A139291: a(n) = 2^(2*prime(n) - 3) - 1.

Offset 1, canonical program `A139291.P4704060389980798102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139291 (n : ℕ) : ℤ :=
  A139291.P4704060389980798102.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139291.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139379.P15890021872242137643

`A014318(n-1)-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A139379.P15890021872242137643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A014318 (n - 1) - a (n - 1)

end

end A139379.P15890021872242137643

noncomputable section

/-- A139379: A Jacobsthal Catalan convolution.

Offset 0, canonical program `A139379.P15890021872242137643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A139379 (n : ℕ) : ℤ :=
  A139379.P15890021872242137643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A139379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139548.P13919224620626575933

`A000079(floor(sqrt(n)))*A034870(n)`
-/

namespace A139548.P13919224620626575933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Nat.sqrt n) * A034870 n

end

end A139548.P13919224620626575933

noncomputable section

/-- A139548: Triangle T(n,k) with the coefficient of [x^k] of the polynomial (2*(x+1)^2)^n in row n, column k, 0<=k<=2n.

Offset 0, canonical program `A139548.P13919224620626575933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139548 (n : ℕ) : ℤ :=
  A139548.P13919224620626575933.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139672.P16331376886917432233

`∑[A115264(n)]`
-/

namespace A139672.P16331376886917432233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139672.P16331376886917432233

noncomputable section

/-- A139672: Convolution of A008619 and A001400.

Offset 1, canonical program `A139672.P16331376886917432233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139672 (n : ℕ) : ℤ :=
  A139672.P16331376886917432233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139848.P6895027528915671648

`∩[A139492(n+1), A139832(n+1)]`
-/

namespace A139848.P6895027528915671648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P6895027528915671648

noncomputable section

/-- A139848: Primes of the form 7x^2 + 15y^2.

Offset 1, canonical program `A139848.P6895027528915671648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A139848 (n : ℕ) : ℤ :=
  (A139848.P6895027528915671648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A139848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139852.P10236531295007452952

`∩[A045382(n+1), A107133(n+1)]`
-/

namespace A139852.P10236531295007452952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P10236531295007452952

noncomputable section

/-- A139852: Primes of the form 7x^2 + 16y^2.

Offset 1, canonical program `A139852.P10236531295007452952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A139852 (n : ℕ) : ℤ :=
  (A139852.P10236531295007452952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A139852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139857.P15412644130510987931

`p?[or(4, A107137(n+1))]`
-/

namespace A139857.P15412644130510987931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A107137 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139857.P15412644130510987931

noncomputable section

/-- A139857: Primes of the form 8x^2 + 15y^2.

Offset 1, canonical program `A139857.P15412644130510987931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4913 terms. -/
def A139857 (n : ℕ) : ℤ :=
  A139857.P15412644130510987931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4913 terms. -/
def A139857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139858.P3447086168202137661

`∩[A107137(n+1), A107181(n+1)]`
-/

namespace A139858.P3447086168202137661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P3447086168202137661

noncomputable section

/-- A139858: Primes of the form 8x^2+8xy+17y^2.

Offset 1, canonical program `A139858.P3447086168202137661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A139858 (n : ℕ) : ℤ :=
  (A139858.P3447086168202137661.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A139858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139874.P13463748736922216680

`∩[A106915(n+1), A107007(n+1)]`
-/

namespace A139874.P13463748736922216680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P13463748736922216680

noncomputable section

/-- A139874: Primes of the form 3x^2 + 56y^2.

Offset 1, canonical program `A139874.P13463748736922216680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. -/
def A139874 (n : ℕ) : ℤ :=
  (A139874.P13463748736922216680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. -/
def A139874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139877.P18183384045405049100

`∩[A107003(n+1), A139851(n+1)]`
-/

namespace A139877.P18183384045405049100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P18183384045405049100

noncomputable section

/-- A139877: Primes of the form 8x^2+21y^2.

Offset 1, canonical program `A139877.P18183384045405049100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A139877 (n : ℕ) : ℤ :=
  (A139877.P18183384045405049100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A139877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139880.P8297169787361859027

`∩[A068228(n+1), A106915(n+1)]`
-/

namespace A139880.P8297169787361859027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P8297169787361859027

noncomputable section

/-- A139880: Primes of the form 13x^2+2xy+13y^2.

Offset 1, canonical program `A139880.P8297169787361859027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A139880 (n : ℕ) : ℤ :=
  (A139880.P8297169787361859027.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A139880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139902.P17311505389906131483

`∩[A107168(n+1), A139829(n+1)]`
-/

namespace A139902.P17311505389906131483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P17311505389906131483

noncomputable section

/-- A139902: Primes of the form 16x^2+16xy+19y^2.

Offset 1, canonical program `A139902.P17311505389906131483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5009 terms. -/
def A139902 (n : ℕ) : ℤ :=
  (A139902.P17311505389906131483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5009 terms. -/
def A139902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139916.P4993580715478633109

`∩[A107178(n+1), A139830(n+1)]`
-/

namespace A139916.P4993580715478633109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P4993580715478633109

noncomputable section

/-- A139916: Primes of the form 7x^2+40y^2.

Offset 1, canonical program `A139916.P4993580715478633109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A139916 (n : ℕ) : ℤ :=
  (A139916.P4993580715478633109.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A139916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139919.P16813899981993222055

`∩[A007519(n+1), A107178(n+1)]`
-/

namespace A139919.P16813899981993222055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P16813899981993222055

noncomputable section

/-- A139919: Primes of the form 17x^2+6xy+17y^2.

Offset 1, canonical program `A139919.P16813899981993222055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A139919 (n : ℕ) : ℤ :=
  (A139919.P16813899981993222055.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A139919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140149.P6676264140885778980

`A136047(n+1)+A140145(n+1)-A000217(n+1)`
-/

namespace A140149.P6676264140885778980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (n + 1) + (A140145 (n + 1) - A000217 (n + 1))

end

end A140149.P6676264140885778980

noncomputable section

/-- A140149: a(1)=1, a(n)=a(n-1)+n^2 if n odd, a(n)=a(n-1)+ n^3 if n is even.

Offset 1, canonical program `A140149.P6676264140885778980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140149 (n : ℕ) : ℤ :=
  A140149.P6676264140885778980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140150.P5080303164108488707

`A136047(n+1)+A140146(n+1)-A000217(n+1)`
-/

namespace A140150.P5080303164108488707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (n + 1) + (A140146 (n + 1) - A000217 (n + 1))

end

end A140150.P5080303164108488707

noncomputable section

/-- A140150: a(1)=1, a(n)=a(n-1)+n^2 if n odd, a(n)=a(n-1)+ n^4 if n is even.

Offset 1, canonical program `A140150.P5080303164108488707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140150 (n : ℕ) : ℤ :=
  A140150.P5080303164108488707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140151.P653801514374288644

`A136047(n+1)+A140147(n+1)-A000217(n+1)`
-/

namespace A140151.P653801514374288644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (n + 1) + (A140147 (n + 1) - A000217 (n + 1))

end

end A140151.P653801514374288644

noncomputable section

/-- A140151: a(1)=1, a(n)=a(n-1)+n^2 if n odd, a(n)=a(n-1)+ n^5 if n is even.

Offset 1, canonical program `A140151.P653801514374288644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140151 (n : ℕ) : ℤ :=
  A140151.P653801514374288644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140159.P985911684354668683

`A000330(n+1)+A140158(n+1)-A136047(n+1)`
-/

namespace A140159.P985911684354668683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A140158 (n + 1) - A136047 (n + 1))

end

end A140159.P985911684354668683

noncomputable section

/-- A140159: a(1)=1, a(n) = a(n-1) + n^4 if n odd, a(n) = a(n-1) + n^2 if n is even.

Offset 1, canonical program `A140159.P985911684354668683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140159 (n : ℕ) : ℤ :=
  A140159.P985911684354668683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140434.P96571140770797263

`A004277(n-A016035(n+1))`
-/

namespace A140434.P96571140770797263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((n : ℤ) - A016035 (n + 1)).toNat

end

end A140434.P96571140770797263

noncomputable section

/-- A140434: Number of new visible points created at each step in an n X n grid.

Offset 1, canonical program `A140434.P96571140770797263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140434 (n : ℕ) : ℤ :=
  A140434.P96571140770797263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140442.P14828285863840832277

`A045392(n+2)`
-/

namespace A140442.P14828285863840832277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 2)

end

end A140442.P14828285863840832277

noncomputable section

/-- A140442: Primes congruent to 9 mod 14.

Offset 1, canonical program `A140442.P14828285863840832277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140442 (n : ℕ) : ℤ :=
  A140442.P14828285863840832277.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140511.P1395500853735429754

`(A001248(n+2)+A000040(n+3))/2`
-/

namespace A140511.P1395500853735429754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 2) + A000040 (n + 3) : ℚ) / 2

end

end A140511.P1395500853735429754

noncomputable section

/-- A140511: a(n) = (prime(n)^2 + prime(n+1))/2.

Offset 2, canonical program `A140511.P1395500853735429754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A140511 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140511.P1395500853735429754.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A140511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140633.P5719042277873821348

`p?[xor(6, A139832(n+1))+6]`
-/

namespace A140633.P5719042277873821348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A139832 (n + 1)) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140633.P5719042277873821348

noncomputable section

/-- A140633: Primes of the form 7x^2+4xy+52y^2.

Offset 1, canonical program `A140633.P5719042277873821348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4906 terms. -/
def A140633 (n : ℕ) : ℤ :=
  A140633.P5719042277873821348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4906 terms. -/
def A140633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140697.P6410494480729606754

`∑{d}[n+1, A007427(#)*A065764((n+1)/#)]`
-/

namespace A140697.P6410494480729606754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A065764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140697.P6410494480729606754

noncomputable section

/-- A140697: Mobius transform of A000082.

Offset 1, canonical program `A140697.P6410494480729606754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140697 (n : ℕ) : ℤ :=
  A140697.P6410494480729606754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140777.P17195144800070271988

`2*A040976(n+1)`
-/

namespace A140777.P17195144800070271988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040976 (n + 1)

end

end A140777.P17195144800070271988

noncomputable section

/-- A140777: a(n) = 2*prime(n) - 4.

Offset 1, canonical program `A140777.P17195144800070271988`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A040976, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140777 (n : ℕ) : ℤ :=
  A140777.P17195144800070271988.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A040976, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140777.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140856.P9183042723212956771

`∩[A089720(n+1), A140732(n+1)]`
-/

namespace A140856.P9183042723212956771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P9183042723212956771

noncomputable section

/-- A140856: Primes of the form 210n+71.

Offset 1, canonical program `A140856.P9183042723212956771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A140856 (n : ℕ) : ℤ :=
  (A140856.P9183042723212956771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A140856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141042.P18303656208202976629

`(n+1)*(1+A046933(n+1))`
-/

namespace A141042.P18303656208202976629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 + A046933 (n + 1))

end

end A141042.P18303656208202976629

noncomputable section

/-- A141042: Product of n and the n-th gap between primes: a(n) = n*A001223(n).

Offset 1, canonical program `A141042.P18303656208202976629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141042 (n : ℕ) : ℤ :=
  A141042.P18303656208202976629.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141053.P15553414134495763727

`A008963(5*n+3)`
-/

namespace A141053.P15553414134495763727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 (5 * n + 3)

end

end A141053.P15553414134495763727

noncomputable section

/-- A141053: Most-significant decimal digit of Fibonacci(5n+3).

Offset 0, canonical program `A141053.P15553414134495763727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A141053 (n : ℕ) : ℤ :=
  A141053.P15553414134495763727.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A141053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141105.P16209607723613337592

`A109613(A019446(n+1))+A005408(n)`
-/

namespace A141105.P16209607723613337592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A019446 (n + 1)).toNat + A005408 n

end

end A141105.P16209607723613337592

noncomputable section

/-- A141105: Upper Even Swappage of Upper Wythoff Sequence.

Offset 1, canonical program `A141105.P16209607723613337592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141105 (n : ℕ) : ℤ :=
  A141105.P16209607723613337592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141253.P13668534883310486471

`(n+1)*∑[A099376(abs(1-n))]`
-/

namespace A141253.P13668534883310486471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141253.P13668534883310486471

noncomputable section

/-- A141253: Number of permutations that lie in the cyclic closure of Av(132)--i.e., at least one cyclic rotation of the permutation avoids the pattern 132.

Offset 1, canonical program `A141253.P13668534883310486471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A141253 (n : ℕ) : ℤ :=
  A141253.P13668534883310486471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A141253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141274.P557557382975155527

`A018252(p?[A014692(n+1)-3]+2)`
-/

namespace A141274.P557557382975155527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2).toNat

end

end A141274.P557557382975155527

noncomputable section

/-- A141274: Composite numbers k such that k+1 is prime and the index in the composites is also prime.

Offset 1, canonical program `A141274.P557557382975155527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. -/
def A141274 (n : ℕ) : ℤ :=
  A141274.P557557382975155527.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. -/
def A141274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141436.P7162572235992512063

`∪[A006450(n+1), A018252(A018252(n+1))]`
-/

namespace A141436.P7162572235992512063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A018252 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141436.P7162572235992512063

noncomputable section

/-- A141436: Tisdale's sieve: generators for an infinite set of disjoint prime/nonprime sequences (see Comments for precise definition).

Offset 1, canonical program `A141436.P7162572235992512063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141436 (n : ℕ) : ℤ :=
  (A141436.P7162572235992512063.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141454.P14851454927162054000

`(5-A007652(n+1))%3`
-/

namespace A141454.P14851454927162054000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 - A007652 (n + 1)) 3

end

end A141454.P14851454927162054000

noncomputable section

/-- A141454: A Legendre symbol type assignment of the modulo ten primes to the polynomial: Expand[(x-1)*(x+1)*(x-2)*(x+2)*(x-0)]=4 x - 5 x^3 + x^5; c(n) = If[Mod[n, 10] == 1, 1, If[Mod[n, 10] == 9, -1, If[Mod[n, 10] == 3, 2, If[Mod[n, 10] == 7, -2, 0]]]] such that n is a prime[n].

Offset 1, canonical program `A141454.P14851454927162054000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A141454 (n : ℕ) : ℤ :=
  A141454.P14851454927162054000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A141454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141535.P16437882667195549549

`A127917(n+2)/8-A027480(n+1)`
-/

namespace A141535.P16437882667195549549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127917 (n + 2) : ℚ) / 8 - (A027480 (n + 1) : ℚ)

end

end A141535.P16437882667195549549

noncomputable section

/-- A141535: An eighth of the product of three integers surrounding the (n+1)-st prime, minus half of the product of the 3 numbers surrounding n+1.

Offset 1, canonical program `A141535.P16437882667195549549`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141535 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A141535.P16437882667195549549.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141535.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141784.P8518960646770701231

`p?[A018252(n+1)-(n+2)]`
-/

namespace A141784.P8518960646770701231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P8518960646770701231

noncomputable section

/-- A141784: Primes of the form A141468(n)-n, where A141468(n)=n-th nonprime.

Offset 1, canonical program `A141784.P8518960646770701231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A141784 (n : ℕ) : ℤ :=
  A141784.P8518960646770701231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A141784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141792.P16182169028404405002

`p?[A018252(n+1)-(n+1)]`
-/

namespace A141792.P16182169028404405002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P16182169028404405002

noncomputable section

/-- A141792: Primes of the form A018252(n)-n, where A018252(n)=n-th nonprime.

Offset 1, canonical program `A141792.P16182169028404405002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2787 terms. -/
def A141792 (n : ℕ) : ℤ :=
  A141792.P16182169028404405002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2787 terms. -/
def A141792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142710.P15116843330980903994

`A142585(n)+A142586(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142710.P15116843330980903994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142585 n + A142586 n

end

end A142710.P15116843330980903994

noncomputable section

/-- A142710: a(n) = A142585(n) + A142586(n).

Offset 0, canonical program `A142710.P15116843330980903994`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142585, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A142710 (n : ℕ) : ℤ :=
  A142710.P15116843330980903994.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142585, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A142710.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A142789.P14610620924255852265

`∩[A107168(n+1), A141887(n+1)]`
-/

namespace A142789.P14610620924255852265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P14610620924255852265

noncomputable section

/-- A142789: Primes congruent to 19 mod 60.

Offset 1, canonical program `A142789.P14610620924255852265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A142789 (n : ℕ) : ℤ :=
  (A142789.P14610620924255852265.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A142789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142934.P14016541385754084313

`A091968(eq[1, and(3, A092022(n+1))]+1)`
-/

namespace A142934.P14016541385754084313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A092022 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142934.P14016541385754084313

noncomputable section

/-- A142934: Primes congruent to 19 mod 64.

Offset 1, canonical program `A142934.P14016541385754084313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2496 terms. -/
def A142934 (n : ℕ) : ℤ :=
  A142934.P14016541385754084313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2496 terms. -/
def A142934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142940.P17418045244918883104

`A091968(eq[2, and(3, A092022(n+1))]+1)`
-/

namespace A142940.P17418045244918883104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A092022 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142940.P17418045244918883104

noncomputable section

/-- A142940: Primes congruent to 35 mod 64.

Offset 1, canonical program `A142940.P17418045244918883104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A142940 (n : ℕ) : ℤ :=
  A142940.P17418045244918883104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A142940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142948.P11630965134437301542

`A091968(eq[3, and(3, A092022(n+1))]+1)`
-/

namespace A142948.P11630965134437301542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A092022 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142948.P11630965134437301542

noncomputable section

/-- A142948: Primes congruent to 51 mod 64.

Offset 1, canonical program `A142948.P11630965134437301542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A142948 (n : ℕ) : ℤ :=
  A142948.P11630965134437301542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A142948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143037.P245684199888480199

`∑[A004736(n+1)]-C(A004736(n+1), 3)`
-/

namespace A143037.P245684199888480199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose (A004736 (n + 1)).toNat 3 : ℤ)

end

end A143037.P245684199888480199

noncomputable section

/-- A143037: Triangle read by rows, A000012 * A127773 * A000012. A000012 is an infinite lower triangular matrix with all 1's, A127773 = (1; 0,3; 0,0,6; 0,0,0,10; ...).

Offset 1, canonical program `A143037.P245684199888480199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143037 (n : ℕ) : ℤ :=
  A143037.P245684199888480199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143053.P16641876007468896160

`A143051(A143051(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143053.P16641876007468896160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A143051 n).toNat

end

end A143053.P16641876007468896160

noncomputable section

/-- A143053: a(n) = A143051(A143051(n)).

Offset 0, canonical program `A143053.P16641876007468896160`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143053 (n : ℕ) : ℤ :=
  A143053.P16641876007468896160.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143090.P16008400457537948654

`A001065(A028310(a(n-1)))` with `a(0)=12`
-/

namespace A143090.P16008400457537948654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143090.P16008400457537948654

noncomputable section

/-- A143090: Aliquot sequence starting at 12.

Offset 0, canonical program `A143090.P16008400457537948654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143090 (n : ℕ) : ℤ :=
  A143090.P16008400457537948654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143232.P2526893967125323833

`ceil(xor(1, n)/2)+2-A080677(n+1)`
-/

namespace A143232.P2526893967125323833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉ + (2 - A080677 (n + 1))

end

end A143232.P2526893967125323833

noncomputable section

/-- A143232: Sum of denominators of Egyptian fraction expansion of A004001(n) - n/2.

Offset 1, canonical program `A143232.P2526893967125323833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143232 (n : ℕ) : ℤ :=
  A143232.P2526893967125323833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143329.P17825903406367476627

`p?[A143292(n+1)]`
-/

namespace A143329.P17825903406367476627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143329.P17825903406367476627

noncomputable section

/-- A143329: Primes in A143292.

Offset 1, canonical program `A143329.P17825903406367476627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1063 terms. -/
def A143329 (n : ℕ) : ℤ :=
  A143329.P17825903406367476627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1063 terms. -/
def A143329.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143645.P16129284712906338068

`A001065(A028310(a(n-1)))` with `a(0)=24`
-/

namespace A143645.P16129284712906338068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [24] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143645.P16129284712906338068

noncomputable section

/-- A143645: Aliquot sequence starting at 24.

Offset 0, canonical program `A143645.P16129284712906338068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143645 (n : ℕ) : ℤ :=
  A143645.P16129284712906338068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143668.P5009634550339019748

`abs(A005614(n)-(-1)^n)`
-/

namespace A143668.P5009634550339019748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005614 n - (-1) ^ n|

end

end A143668.P5009634550339019748

noncomputable section

/-- A143668: Result of the morphing 01->01021212, 02->0102121201, 12->01021201, iterated from '01'. Sequence of the Fibonacci word fractal.

Offset 1, canonical program `A143668.P5009634550339019748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143668 (n : ℕ) : ℤ :=
  A143668.P5009634550339019748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143682.P1148182830602660333

`(A030514(n+1)-A109791(n+1))/2`
-/

namespace A143682.P1148182830602660333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030514 (n + 1) - A109791 (n + 1) : ℚ) / 2

end

end A143682.P1148182830602660333

noncomputable section

/-- A143682: a(n) = (prime(n)^4 - prime(n^4))/2, where prime(n) is the n-th prime.

Offset 1, canonical program `A143682.P1148182830602660333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A143682 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143682.P1148182830602660333.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A143682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143721.P7011217225613206170

`A001065(A028310(a(n-1)))` with `a(0)=38`
-/

namespace A143721.P7011217225613206170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [38] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143721.P7011217225613206170

noncomputable section

/-- A143721: Aliquot sequence starting at 38.

Offset 0, canonical program `A143721.P7011217225613206170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143721 (n : ℕ) : ℤ :=
  A143721.P7011217225613206170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143722.P17896220060263114756

`A001065(A028310(a(n-1)))` with `a(0)=48`
-/

namespace A143722.P17896220060263114756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [48] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143722.P17896220060263114756

noncomputable section

/-- A143722: Aliquot sequence starting at 48.

Offset 0, canonical program `A143722.P17896220060263114756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143722 (n : ℕ) : ℤ :=
  A143722.P17896220060263114756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143731.P1534349135649353055

`A057427(A079275(n+1))`
-/

namespace A143731.P1534349135649353055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A079275 (n + 1)).toNat

end

end A143731.P1534349135649353055

noncomputable section

/-- A143731: Characteristic function of numbers with at least two distinct prime factors (A024619).

Offset 1, canonical program `A143731.P1534349135649353055`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143731 (n : ℕ) : ℤ :=
  A143731.P1534349135649353055.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143731.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143733.P14942451708713840128

`A001065(A028310(a(n-1)))` with `a(0)=62`
-/

namespace A143733.P14942451708713840128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [62] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143733.P14942451708713840128

noncomputable section

/-- A143733: Aliquot sequence starting at 62.

Offset 0, canonical program `A143733.P14942451708713840128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143733 (n : ℕ) : ℤ :=
  A143733.P14942451708713840128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143737.P5154442546781460554

`A001065(A028310(a(n-1)))` with `a(0)=68`
-/

namespace A143737.P5154442546781460554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [68] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143737.P5154442546781460554

noncomputable section

/-- A143737: Aliquot sequence starting at 68.

Offset 0, canonical program `A143737.P5154442546781460554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143737 (n : ℕ) : ℤ :=
  A143737.P5154442546781460554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143741.P8770090365676448905

`A001065(A028310(a(n-1)))` with `a(0)=72`
-/

namespace A143741.P8770090365676448905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [72] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143741.P8770090365676448905

noncomputable section

/-- A143741: Aliquot sequence starting at 72.

Offset 0, canonical program `A143741.P8770090365676448905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143741 (n : ℕ) : ℤ :=
  A143741.P8770090365676448905.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143754.P2508071916945020361

`A001065(A028310(a(n-1)))` with `a(0)=75`
-/

namespace A143754.P2508071916945020361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [75] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143754.P2508071916945020361

noncomputable section

/-- A143754: Aliquot sequence starting at 75.

Offset 0, canonical program `A143754.P2508071916945020361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143754 (n : ℕ) : ℤ :=
  A143754.P2508071916945020361.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143755.P1843957366251075047

`A001065(A028310(a(n-1)))` with `a(0)=80`
-/

namespace A143755.P1843957366251075047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [80] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143755.P1843957366251075047

noncomputable section

/-- A143755: Aliquot sequence starting at 80.

Offset 0, canonical program `A143755.P1843957366251075047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143755 (n : ℕ) : ℤ :=
  A143755.P1843957366251075047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143757.P11374647760075091587

`A001065(A028310(a(n-1)))` with `a(0)=82`
-/

namespace A143757.P11374647760075091587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [82] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143757.P11374647760075091587

noncomputable section

/-- A143757: Aliquot sequence starting at 82.

Offset 0, canonical program `A143757.P11374647760075091587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143757 (n : ℕ) : ℤ :=
  A143757.P11374647760075091587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143758.P5003512289083084374

`A001065(A028310(a(n-1)))` with `a(0)=84`
-/

namespace A143758.P5003512289083084374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [84] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143758.P5003512289083084374

noncomputable section

/-- A143758: Aliquot sequence starting at 84.

Offset 0, canonical program `A143758.P5003512289083084374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143758 (n : ℕ) : ℤ :=
  A143758.P5003512289083084374.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143767.P13231538878095060477

`A001065(A028310(a(n-1)))` with `a(0)=87`
-/

namespace A143767.P13231538878095060477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [87] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143767.P13231538878095060477

noncomputable section

/-- A143767: Aliquot sequence starting at 87.

Offset 0, canonical program `A143767.P13231538878095060477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143767 (n : ℕ) : ℤ :=
  A143767.P13231538878095060477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143846.P9170851586254703169

`A001065(A028310(a(n-1)))` with `a(0)=88`
-/

namespace A143846.P9170851586254703169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [88] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143846.P9170851586254703169

noncomputable section

/-- A143846: Aliquot sequence starting at 88.

Offset 0, canonical program `A143846.P9170851586254703169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143846 (n : ℕ) : ℤ :=
  A143846.P9170851586254703169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143847.P819203088057460504

`A001065(A028310(a(n-1)))` with `a(0)=96`
-/

namespace A143847.P819203088057460504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [96] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143847.P819203088057460504

noncomputable section

/-- A143847: Aliquot sequence starting at 96.

Offset 0, canonical program `A143847.P819203088057460504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143847 (n : ℕ) : ℤ :=
  A143847.P819203088057460504.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143955.P2620701624282528188

`A000245(n)-A014138(n)`
-/

namespace A143955.P2620701624282528188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n - A014138 n

end

end A143955.P2620701624282528188

noncomputable section

/-- A143955: Sum of the altitudes of the leftmost valleys of all Dyck paths of semilength n (if path has no valley, then this altitude is taken to be 0).

Offset 0, canonical program `A143955.P2620701624282528188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A143955 (n : ℕ) : ℤ :=
  A143955.P2620701624282528188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A143955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144113.P8996339345414942979

`A144112(A038722(n+1))`
-/

namespace A144113.P8996339345414942979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (A038722 (n + 1)).toNat

end

end A144113.P8996339345414942979

noncomputable section

/-- A144113: Weight array W={w(i,j)} of the natural number array A038722.

Offset 1, canonical program `A144113.P8996339345414942979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144113 (n : ℕ) : ℤ :=
  A144113.P8996339345414942979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144408.P12771811640547746423

`A135266(n)%10`
-/

namespace A144408.P12771811640547746423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135266 n) 10

end

end A144408.P12771811640547746423

noncomputable section

/-- A144408: Last digit of A135266(n).

Offset 0, canonical program `A144408.P12771811640547746423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A144408 (n : ℕ) : ℤ :=
  A144408.P12771811640547746423.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A144408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145117.P14926614837438717936

`∑[∑[A104144(n+7)]]+1`
-/

namespace A145117.P14926614837438717936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A145117.P14926614837438717936

noncomputable section

/-- A145117: Numbers of length n binary words with fewer than 9 0-digits between any pair of consecutive 1-digits.

Offset 0, canonical program `A145117.P14926614837438717936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A145117 (n : ℕ) : ℤ :=
  A145117.P14926614837438717936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A145117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145353.P8451049038095436919

`∑[A049419(n+1)]`
-/

namespace A145353.P8451049038095436919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145353.P8451049038095436919

noncomputable section

/-- A145353: Sum of the number of e-divisors of all numbers from 1 up to n.

Offset 1, canonical program `A145353.P8451049038095436919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145353 (n : ℕ) : ℤ :=
  A145353.P8451049038095436919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145382.P14950422092557236085

`A080079(p?[xor(1, n)+1])-1`
-/

namespace A145382.P14950422092557236085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1

end

end A145382.P14950422092557236085

noncomputable section

/-- A145382: Write the n-th prime in binary. Change all 0's to 1's and all 1's to 0's. a(n) is the decimal equivalent of the result.

Offset 1, canonical program `A145382.P14950422092557236085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145382 (n : ℕ) : ℤ :=
  A145382.P14950422092557236085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145445.P2754052225407888285

`A104103(n+1)²`
-/

namespace A145445.P2754052225407888285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1) ^ 2

end

end A145445.P2754052225407888285

noncomputable section

/-- A145445: a(n) = the smallest square > n-th prime.

Offset 1, canonical program `A145445.P2754052225407888285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145445 (n : ℕ) : ℤ :=
  A145445.P2754052225407888285.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145472.P4180650491768818475

`p?[A100484(n+1)-7]`
-/

namespace A145472.P4180650491768818475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P4180650491768818475

noncomputable section

/-- A145472: Primes p such that (p+7)/2 is prime.

Offset 1, canonical program `A145472.P4180650491768818475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1470 terms. -/
def A145472 (n : ℕ) : ℤ :=
  A145472.P4180650491768818475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1470 terms. -/
def A145472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145473.P9926158279256282826

`p?[A100484(n+1)-11]`
-/

namespace A145473.P9926158279256282826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145473.P9926158279256282826

noncomputable section

/-- A145473: Primes p such that (11 + p)/2 is prime.

Offset 1, canonical program `A145473.P9926158279256282826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1309 terms. -/
def A145473 (n : ℕ) : ℤ :=
  A145473.P9926158279256282826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1309 terms. -/
def A145473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145475.P16725095266388124518

`p?[A100484(n+1)-17]`
-/

namespace A145475.P16725095266388124518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P16725095266388124518

noncomputable section

/-- A145475: Primes p such that (17+p)/2 is prime.

Offset 1, canonical program `A145475.P16725095266388124518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1311 terms. -/
def A145475 (n : ℕ) : ℤ :=
  A145475.P16725095266388124518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1311 terms. -/
def A145475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145477.P7650776150596688372

`p?[2*A006093(n+1)-21]`
-/

namespace A145477.P7650776150596688372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006093 (n + 1) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145477.P7650776150596688372

noncomputable section

/-- A145477: Primes p such that (23 + p)/2 is prime.

Offset 1, canonical program `A145477.P7650776150596688372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1283 terms. -/
def A145477 (n : ℕ) : ℤ :=
  A145477.P7650776150596688372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1283 terms. -/
def A145477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145610.P553506621032330798

`A002805(2*(n+1))`
-/

namespace A145610.P553506621032330798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (2 * (n + 1))

end

end A145610.P553506621032330798

noncomputable section

/-- A145610: Denominator of the polynomial A_l(x) = Sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=1.

Offset 1, canonical program `A145610.P553506621032330798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145610 (n : ℕ) : ℤ :=
  A145610.P553506621032330798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145909.P5620417034163878499

`8*A145911(n)`
-/

namespace A145909.P5620417034163878499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A145911 n

end

end A145909.P5620417034163878499

noncomputable section

/-- A145909: First 6-fold decimation of A061039. First bisection of A144454.

Offset 0, canonical program `A145909.P5620417034163878499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145909 (n : ℕ) : ℤ :=
  A145909.P5620417034163878499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A146533.P16673604564613569017

`A029651(n)+A144706(n)-A000984(n)`
-/

namespace A146533.P16673604564613569017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n + (A144706 n - A000984 n)

end

end A146533.P16673604564613569017

noncomputable section

/-- A146533: Catalan transform of A135092.

Offset 0, canonical program `A146533.P16673604564613569017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A146533 (n : ℕ) : ℤ :=
  A146533.P16673604564613569017.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A146533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147582.P8026772899085515765

`floor(12*A048883(n)/9)`
-/

namespace A147582.P8026772899085515765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(12 * A048883 n : ℚ) / 9⌋

end

end A147582.P8026772899085515765

noncomputable section

/-- A147582: First differences of A147562.

Offset 1, canonical program `A147582.P8026772899085515765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147582 (n : ℕ) : ℤ :=
  A147582.P8026772899085515765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147630.P14535170275121298868

`(n+1)!*A097188(n)`
-/

namespace A147630.P14535170275121298868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A097188 n

end

end A147630.P14535170275121298868

noncomputable section

/-- A147630: a(n) = Product_{k = 1..n-1} (9*k - 3).

Offset 1, canonical program `A147630.P14535170275121298868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147630 (n : ℕ) : ℤ :=
  A147630.P14535170275121298868.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147630.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147757.P12480497626968793521

`A000533(n)+∑[A011557(n)]-A138144(n+1)`
-/

namespace A147757.P12480497626968793521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 n + (∑ j ∈ Finset.range (n + 1), f1 j - A138144 (n + 1))

end

end A147757.P12480497626968793521

noncomputable section

/-- A147757: Palindromes formed from the reflected decimal expansion of the concatenation of 1, 0 and infinite digits 1.

Offset 1, canonical program `A147757.P12480497626968793521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A147757 (n : ℕ) : ℤ :=
  A147757.P12480497626968793521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A147757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147760.P15763218434351887986

`(n+2)*A060818(n+1)-1`
-/

namespace A147760.P15763218434351887986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A060818 (n + 1) - 1

end

end A147760.P15763218434351887986

noncomputable section

/-- A147760: a(n) is the smallest positive integer m with exactly n ones in its binary representation and with n represented in binary as a substring of the binary representation of m.

Offset 1, canonical program `A147760.P15763218434351887986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A147760 (n : ℕ) : ℤ :=
  A147760.P15763218434351887986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A147760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147965.P3324423489024112170

`n+1-A046933(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147965.P3324423489024112170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A046933 (n + 1)

end

end A147965.P3324423489024112170

noncomputable section

/-- A147965: a(n) = n + 1 - A001223(n) = n - A046933(n). In words, a(n) is the difference between n+1 and the n-th gap between primes.

Offset 1, canonical program `A147965.P3324423489024112170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147965 (n : ℕ) : ℤ :=
  A147965.P3324423489024112170.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147965.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147967.P11868943010124678636

`(n+1)*A046933(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147967.P11868943010124678636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A046933 (n + 1)

end

end A147967.P11868943010124678636

noncomputable section

/-- A147967: a(n) = n*(A001223(n)-1) = n*A046933(n).

Offset 1, canonical program `A147967.P11868943010124678636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147967 (n : ℕ) : ℤ :=
  A147967.P11868943010124678636.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147991.P1055187431059900303

`A137951(n)+1`
-/

namespace A147991.P1055187431059900303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137951 n + 1

end

end A147991.P1055187431059900303

noncomputable section

/-- A147991: Sequence S such that 1 is in S and if x is in S, then 3x-1 and 3x+1 are in S.

Offset 1, canonical program `A147991.P1055187431059900303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147991 (n : ℕ) : ℤ :=
  A147991.P1055187431059900303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147996.P1933238142574789408

`A001019(n)-A001555(n)`
-/

namespace A147996.P1933238142574789408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n - A001555 n

end

end A147996.P1933238142574789408

noncomputable section

/-- A147996: a(n) = 9^n-8^n-7^n-6^n-5^n-4^n-3^n-2^n-1.

Offset 1, canonical program `A147996.P1933238142574789408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A147996 (n : ℕ) : ℤ :=
  A147996.P1933238142574789408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A147996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151667.P15819438536939067945

`char[A033042(n)]`
-/

namespace A151667.P15819438536939067945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151667.P15819438536939067945

noncomputable section

/-- A151667: Number of partitions of n into distinct powers of 5.

Offset 0, canonical program `A151667.P15819438536939067945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151667 (n : ℕ) : ℤ :=
  (A151667.P15819438536939067945.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151763.P3762323269702521577

`A005094(A118136(n))`
-/

namespace A151763.P3762323269702521577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A118136 n).toNat

end

end A151763.P3762323269702521577

noncomputable section

/-- A151763: If n is a prime == 1 mod 4 then a(n) = 1, if n is a prime == 3 mod 4 then a(n) = -1, otherwise a(n) = 0.

Offset 1, canonical program `A151763.P3762323269702521577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151763 (n : ℕ) : ℤ :=
  A151763.P3762323269702521577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151779.P14955371846823112406

`A003948(A000120(n))`
-/

namespace A151779.P14955371846823112406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 (A000120 n).toNat

end

end A151779.P14955371846823112406

noncomputable section

/-- A151779: a(1)=1; for n > 1, a(n)=6*5^{wt(n-1)-1}.

Offset 1, canonical program `A151779.P14955371846823112406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151779 (n : ℕ) : ℤ :=
  A151779.P14955371846823112406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151792.P3133912318885071183

`∑[A151791(n+1)]`
-/

namespace A151792.P3133912318885071183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151792.P3133912318885071183

noncomputable section

/-- A151792: Partial sums of A151791.

Offset 1, canonical program `A151792.P3133912318885071183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151792 (n : ℕ) : ℤ :=
  A151792.P3133912318885071183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151793.P2092265182392595412

`∑[A151782(n+1)]`
-/

namespace A151793.P2092265182392595412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151793.P2092265182392595412

noncomputable section

/-- A151793: Partial sums of A151782.

Offset 1, canonical program `A151793.P2092265182392595412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151793 (n : ℕ) : ℤ :=
  A151793.P2092265182392595412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151902.P9395804359895518622

`A000120(floor(2*n/3))`
-/

namespace A151902.P9395804359895518622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ⌊2 * ((n : ℚ) / 3)⌋.toNat

end

end A151902.P9395804359895518622

noncomputable section

/-- A151902: a(n) = wt(k) + f(j) if n = 6k+j, 0 <= j < 6, where wt() = A000120(), f() = A151899().

Offset 0, canonical program `A151902.P9395804359895518622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151902 (n : ℕ) : ℤ :=
  A151902.P9395804359895518622.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151922.P1912274686757086494

`A079316(2*n)`
-/

namespace A151922.P1912274686757086494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079316 (2 * n)

end

end A151922.P1912274686757086494

noncomputable section

/-- A151922: Number of first-quadrant cells (including the two boundaries) that are "ON" after n-th stage of the Holladay-Ulam cellular automaton.

Offset 0, canonical program `A151922.P1912274686757086494`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151922 (n : ℕ) : ℤ :=
  A151922.P1912274686757086494.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151922.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A151923.P3934618073960995862

`A079316(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151923.P3934618073960995862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079316 (2 * n + 1)

end

end A151923.P3934618073960995862

noncomputable section

/-- A151923: a(n) = A079316(2n+1).

Offset 0, canonical program `A151923.P3934618073960995862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151923 (n : ℕ) : ℤ :=
  A151923.P3934618073960995862.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151923.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152084.P18358934088096042135

`p?[A006165(A045344(n+1))]`
-/

namespace A152084.P18358934088096042135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (A045344 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152084.P18358934088096042135

noncomputable section

/-- A152084: Primes p such that p + 2^floor(log_2(p)) is prime.

Offset 1, canonical program `A152084.P18358934088096042135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A152084 (n : ℕ) : ℤ :=
  A152084.P18358934088096042135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A152084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152099.P15152217081351497144

`A034785(n+1)²-1`
-/

namespace A152099.P15152217081351497144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1) ^ 2 - 1

end

end A152099.P15152217081351497144

noncomputable section

/-- A152099: a(n) = (2^prime(n) - 1)*(2^prime(n) + 1) = 2^(2*prime(n)) - 1.

Offset 1, canonical program `A152099.P15152217081351497144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152099 (n : ℕ) : ℤ :=
  A152099.P15152217081351497144.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152204.P767689205357383764

`2*A082375(n)+1`
-/

namespace A152204.P767689205357383764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082375 n + 1

end

end A152204.P767689205357383764

noncomputable section

/-- A152204: Triangle read by rows: T(n,k) = 2*n-4*k+5 (n >= 0, 1 <= k <= 1+floor(n/2)).

Offset 0, canonical program `A152204.P767689205357383764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152204 (n : ℕ) : ℤ :=
  A152204.P767689205357383764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152420.P2270128080283716414

`(1-A080883(n))*(3-A071797(n+1))`
-/

namespace A152420.P2270128080283716414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A080883 n) * (3 - A071797 (n + 1))

end

end A152420.P2270128080283716414

noncomputable section

/-- A152420: Irregular triangle read by rows: T(n,k) = n*(n-2) - (k-n)*(k-n-2), with 0 <= k <= 2*n.

Offset 0, canonical program `A152420.P2270128080283716414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152420 (n : ℕ) : ℤ :=
  A152420.P2270128080283716414.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096457.P17542329655028534865

`Δ[A013632(n)]+2+n`
-/

namespace A096457.P17542329655028534865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 + (n : ℤ)

end

end A096457.P17542329655028534865

noncomputable section

/-- A096457: If n is prime replace n with the next prime.

Offset 1, canonical program `A096457.P17542329655028534865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096457 (n : ℕ) : ℤ :=
  A096457.P17542329655028534865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096494.P552534159965664402

`2*A000006(n+1)`
-/

namespace A096494.P552534159965664402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000006 (n + 1)

end

end A096494.P552534159965664402

noncomputable section

/-- A096494: Largest value in the periodic part of the continued fraction of sqrt(prime(n)).

Offset 1, canonical program `A096494.P552534159965664402`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096494 (n : ℕ) : ℤ :=
  A096494.P552534159965664402.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096494.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097902.P17574819608236868466

`A138114(A038722(n+1))*A138114(n+1)`
-/

namespace A097902.P17574819608236868466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138114 (A038722 (n + 1)).toNat * A138114 (n + 1)

end

end A097902.P17574819608236868466

noncomputable section

/-- A097902: Multiplication table of the digits of Pi read by antidiagonals.

Offset 0, canonical program `A097902.P17574819608236868466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A097902 (n : ℕ) : ℤ :=
  A097902.P17574819608236868466.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A097902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098035.P3859201930447220096

`∑{d}[n+1, A007423(#+1)-1]`
-/

namespace A098035.P3859201930447220096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A007423 (d + 1) - 1)

end

end A098035.P3859201930447220096

noncomputable section

/-- A098035: a(n) = Sum_{d|n} mu(d+1), where mu() is the Moebius function.

Offset 1, canonical program `A098035.P3859201930447220096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A098035 (n : ℕ) : ℤ :=
  A098035.P3859201930447220096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A098035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098090.P13715726592348268082

`A113935(n+2)/2`
-/

namespace A098090.P13715726592348268082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113935 (n + 2) : ℚ) / 2

end

end A098090.P13715726592348268082

noncomputable section

/-- A098090: Numbers k such that 2k-3 is prime.

Offset 1, canonical program `A098090.P13715726592348268082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098090 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A098090.P13715726592348268082.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098368.P456142889449428924

`A139261(A038722(n+1))*A139261(n+1)`
-/

namespace A098368.P456142889449428924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139261 (A038722 (n + 1)).toNat * A139261 (n + 1)

end

end A098368.P456142889449428924

noncomputable section

/-- A098368: Multiplication table of the digits of the Euler-Mascheroni constant read by antidiagonals.

Offset 0, canonical program `A098368.P456142889449428924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A098368 (n : ℕ) : ℤ :=
  A098368.P456142889449428924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A098368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098394.P8766548074756510504

`A011540(n+1)+A000007(n)`
-/

namespace A098394.P8766548074756510504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1) + A000007 n

end

end A098394.P8766548074756510504

noncomputable section

/-- A098394: Next larger integer including the smallest digit of n.

Offset 1, canonical program `A098394.P8766548074756510504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098394 (n : ℕ) : ℤ :=
  A098394.P8766548074756510504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098488.P10933767284096351927

`A037213((A066568(n)+A053831(n))²)`
-/

namespace A098488.P10933767284096351927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((A066568 n + A053831 n) ^ 2).toNat

end

end A098488.P10933767284096351927

noncomputable section

/-- A098488: Decimal modular Gray code for n.

Offset 0, canonical program `A098488.P10933767284096351927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A098488 (n : ℕ) : ℤ :=
  A098488.P10933767284096351927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A098488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098736.P3684253920314267868

`n*A007954(n)`
-/

namespace A098736.P3684253920314267868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007954 n

end

end A098736.P3684253920314267868

noncomputable section

/-- A098736: a(n) = product of n and all its digits.

Offset 0, canonical program `A098736.P3684253920314267868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098736 (n : ℕ) : ℤ :=
  A098736.P3684253920314267868.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098736.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098905.P4396143342972297058

`lt[1, A349447(n+1)]+1`
-/

namespace A098905.P4396143342972297058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A098905.P4396143342972297058

noncomputable section

/-- A098905: Odd numbers whose number of distinct prime factors is positive and even.

Offset 1, canonical program `A098905.P4396143342972297058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A098905 (n : ℕ) : ℤ :=
  (A098905.P4396143342972297058.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A098905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098988.P773780292752232534

`gcd(n, n/A353688(n)*a(n-1))` with `a(0)=1`
-/

namespace A098988.P773780292752232534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / (A353688 n : ℚ) * (a (n - 1) : ℚ)))

end

end A098988.P773780292752232534

noncomputable section

/-- A098988: Denominators in series expansion of log(Product_{m>=1} (1+q^m)).

Offset 0, canonical program `A098988.P773780292752232534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098988 (n : ℕ) : ℤ :=
  (A098988.P773780292752232534.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099055.P11362990028236912789

`∑[A274010(2*n)]+2*n+1`
-/

namespace A099055.P11362990028236912789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A099055.P11362990028236912789

noncomputable section

/-- A099055: A bisection of A054519.

Offset 0, canonical program `A099055.P11362990028236912789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A099055 (n : ℕ) : ℤ :=
  A099055.P11362990028236912789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A099055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099265.P5234640297294895287

`∑[A056272(n+1)]`
-/

namespace A099265.P5234640297294895287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099265.P5234640297294895287

noncomputable section

/-- A099265: Partial sums of A056272.

Offset 1, canonical program `A099265.P5234640297294895287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A099265 (n : ℕ) : ℤ :=
  A099265.P5234640297294895287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A099265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099454.P307280843929096596

`A131322(2*n+1)+2*A192232(2*(n+1))`
-/

namespace A099454.P307280843929096596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 (2 * n + 1) + 2 * A192232 (2 * (n + 1))

end

end A099454.P307280843929096596

noncomputable section

/-- A099454: A Chebyshev transform of A099453 associated to the knot 8_12.

Offset 0, canonical program `A099454.P307280843929096596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A099454 (n : ℕ) : ℤ :=
  A099454.P307280843929096596.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A099454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099777.P11792433152824821401

`A000005(n+1)+A001227(n+1)`
-/

namespace A099777.P11792433152824821401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A001227 (n + 1)

end

end A099777.P11792433152824821401

noncomputable section

/-- A099777: Number of divisors of 2n.

Offset 1, canonical program `A099777.P11792433152824821401`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099777 (n : ℕ) : ℤ :=
  A099777.P11792433152824821401.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099777.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099812.P7682174187740935634

`A001221(2*(n+1))`
-/

namespace A099812.P7682174187740935634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (n + 1))

end

end A099812.P7682174187740935634

noncomputable section

/-- A099812: Number of distinct primes dividing 2n (i.e., omega(2n)).

Offset 1, canonical program `A099812.P7682174187740935634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099812 (n : ℕ) : ℤ :=
  A099812.P7682174187740935634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099849.P9992613573656940042

`a(n-1)+A008480(n+1)` with `a(0)=1`
-/

namespace A099849.P9992613573656940042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A008480 (n + 1)

end

end A099849.P9992613573656940042

noncomputable section

/-- A099849: Partial sums of A008480.

Offset 1, canonical program `A099849.P9992613573656940042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099849 (n : ℕ) : ℤ :=
  A099849.P9992613573656940042.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099849.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099861.P6004856047514362636

`filter[A377897(n+1), A066247(#)]`
-/

namespace A099861.P6004856047514362636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A099861.P6004856047514362636

noncomputable section

/-- A099861: a(n) = (2*n-1)-st composite number: a bisection of A002808.

Offset 1, canonical program `A099861.P6004856047514362636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8870 terms. -/
def A099861 (n : ℕ) : ℤ :=
  A099861.P6004856047514362636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8870 terms. -/
def A099861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099894.P11632390264748204457

`A048298(n+1)`
-/

namespace A099894.P11632390264748204457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (n + 1)

end

end A099894.P11632390264748204457

noncomputable section

/-- A099894: XOR BINOMIAL transform of A038712.

Offset 0, canonical program `A099894.P11632390264748204457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099894 (n : ℕ) : ℤ :=
  A099894.P11632390264748204457.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100313.P12289164920810252229

`record[A081913(n)-A129953(n)]`
-/

namespace A100313.P12289164920810252229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081913 n - A129953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100313.P12289164920810252229

noncomputable section

/-- A100313: Number of 4 X n binary matrices avoiding simultaneously the right angled numbered polyomino patterns (ranpp) (10;0) and (01;1).

Offset 0, canonical program `A100313.P12289164920810252229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 309 terms. -/
def A100313 (n : ℕ) : ℤ :=
  A100313.P12289164920810252229.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 309 terms. -/
def A100313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100577.P14492990794952470121

`2^(A000005(n+1)-1)`
-/

namespace A100577.P14492990794952470121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000005 (n + 1) - 1 : ℤ)

end

end A100577.P14492990794952470121

noncomputable section

/-- A100577: Number of sets of divisors of n with an odd sum.

Offset 1, canonical program `A100577.P14492990794952470121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100577 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100577.P14492990794952470121.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100577.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100817.P14953118249749826166

`A007954(n)*2^A055642(n)`
-/

namespace A100817.P14953118249749826166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007954 n : ℚ) * (2 : ℚ) ^ (A055642 n : ℤ)

end

end A100817.P14953118249749826166

noncomputable section

/-- A100817: Product of the digits of n, each doubled.

Offset 0, canonical program `A100817.P14953118249749826166`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100817 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100817.P14953118249749826166.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100961.P3793992329437476049

`A000032(A180160(n)^∑[A180160(n)])+1`
-/

namespace A100961.P3793992329437476049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((A180160 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat + 1

end

end A100961.P3793992329437476049

noncomputable section

/-- A100961: For a decimal string s, let f(s) = decimal string ijk, where i = number of even digits in s, j = number of odd digits in s, k=i+j (see A171797). Start with s = decimal expansion of n; a(n) = number of applications of f needed to reach the string 123.

Offset 0, canonical program `A100961.P3793992329437476049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A100961 (n : ℕ) : ℤ :=
  A100961.P3793992329437476049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A100961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100992.P6507978965781304571

`A123976(n+2)-1`
-/

namespace A100992.P6507978965781304571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123976 (n + 2) - 1

end

end A100992.P6507978965781304571

noncomputable section

/-- A100992: Indices k of Fibonacci numbers F(k) (A000045) that are divisible by k+1.

Offset 1, canonical program `A100992.P6507978965781304571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A100992 (n : ℕ) : ℤ :=
  A100992.P6507978965781304571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A100992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101256.P5238482961276576930

`A000217(n+1)-A034387(n+1)-1`
-/

namespace A101256.P5238482961276576930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A034387 (n + 1) - 1

end

end A101256.P5238482961276576930

noncomputable section

/-- A101256: Sum of composites <= n.

Offset 1, canonical program `A101256.P5238482961276576930`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101256 (n : ℕ) : ℤ :=
  A101256.P5238482961276576930.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101256.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101433.P9572966156324699386

`∑[∑[A164349(n)]]`
-/

namespace A101433.P9572966156324699386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101433.P9572966156324699386

noncomputable section

/-- A101433: Partial sums of A101402.

Offset 0, canonical program `A101433.P9572966156324699386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101433 (n : ℕ) : ℤ :=
  A101433.P9572966156324699386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102022.P4203008564041804460

`Δ[A109652(n+1)]`
-/

namespace A102022.P4203008564041804460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102022.P4203008564041804460

noncomputable section

/-- A102022: First differences of A109652.

Offset 1, canonical program `A102022.P4203008564041804460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A102022 (n : ℕ) : ℤ :=
  A102022.P4203008564041804460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A102022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102217.P13849092126645086030

`3*A289142(n+2)`
-/

namespace A102217.P13849092126645086030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A289142 (n + 2)

end

end A102217.P13849092126645086030

noncomputable section

/-- A102217: 3-Suzanne numbers; composite multiples of 3 whose sum of prime factors with multiplicity is a multiple of 3.

Offset 1, canonical program `A102217.P13849092126645086030`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289142, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102217 (n : ℕ) : ℤ :=
  A102217.P13849092126645086030.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289142, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102217.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A102319.P7762194831115780730

`A242586(n)+A097861(n)`
-/

namespace A102319.P7762194831115780730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n + A097861 n

end

end A102319.P7762194831115780730

noncomputable section

/-- A102319: A mean binomial transform of the central binomial numbers.

Offset 0, canonical program `A102319.P7762194831115780730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A102319 (n : ℕ) : ℤ :=
  A102319.P7762194831115780730.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A102319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102546.P3323875871467671533

`floor(A062800(n+1)/10)`
-/

namespace A102546.P3323875871467671533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062800 (n + 1) : ℚ) / 10⌋

end

end A102546.P3323875871467671533

noncomputable section

/-- A102546: Numbers t such that t1 is prime and t is a multiple of 10.

Offset 1, canonical program `A102546.P3323875871467671533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102546 (n : ℕ) : ℤ :=
  A102546.P3323875871467671533.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102553.P12254408032347522241

`eq[A001221(n+1), A102550(n+1)]+1`
-/

namespace A102553.P12254408032347522241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A102553.P12254408032347522241

noncomputable section

/-- A102553: Numbers k such that for all prime-factors p: p = (k AND p), bitwise.

Offset 1, canonical program `A102553.P12254408032347522241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1541 terms. -/
def A102553 (n : ℕ) : ℤ :=
  (A102553.P12254408032347522241.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1541 terms. -/
def A102553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102611.P8027776513147577979

`eq[2, A000005(A053743(n)+32)]`
-/

namespace A102611.P8027776513147577979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053743 n + 32).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102611.P8027776513147577979

noncomputable section

/-- A102611: Numbers k such that the number k77 is prime.

Offset 1, canonical program `A102611.P8027776513147577979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A102611 (n : ℕ) : ℤ :=
  (A102611.P8027776513147577979.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A102611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102721.P3616189499359060768

`A111312(n+2)-1`
-/

namespace A102721.P3616189499359060768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 2) - 1

end

end A102721.P3616189499359060768

noncomputable section

/-- A102721: Numbers n such that 11*n + 13 is prime.

Offset 1, canonical program `A102721.P3616189499359060768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A102721 (n : ℕ) : ℤ :=
  A102721.P3616189499359060768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A102721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102831.P13488618990207071454

`A216658(2*(n+1))+A216658(2*n+1)`
-/

namespace A102831.P13488618990207071454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216658 (2 * (n + 1)) + A216658 (2 * n + 1)

end

end A102831.P13488618990207071454

noncomputable section

/-- A102831: Number of n-digit 4th powers.

Offset 1, canonical program `A102831.P13488618990207071454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A102831 (n : ℕ) : ℤ :=
  A102831.P13488618990207071454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A102831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102885.P15050759352946611380

`abs(A086936(n+1)-A055672(n))`
-/

namespace A102885.P15050759352946611380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086936 (n + 1) - A055672 n|

end

end A102885.P15050759352946611380

noncomputable section

/-- A102885: Index of n in the primes A000040 or nonprimes A141468.

Offset 0, canonical program `A102885.P15050759352946611380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A102885 (n : ℕ) : ℤ :=
  A102885.P15050759352946611380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A102885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103164.P6788878018473161368

`∑[2*n]-A103390(n+1)`
-/

namespace A103164.P6788878018473161368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A103390 (n + 1)

end

end A103164.P6788878018473161368

noncomputable section

/-- A103164: Integers but with the primes squared.

Offset 0, canonical program `A103164.P6788878018473161368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103164 (n : ℕ) : ℤ :=
  A103164.P6788878018473161368.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103451.P2977452712529643699

`abs(A103452(n))`
-/

namespace A103451.P2977452712529643699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103452 n|

end

end A103451.P2977452712529643699

noncomputable section

/-- A103451: Triangular array T read by rows: T(n, 0) = T(n, n) = 1, T(n, k) = 0 for 0 < k < n.

Offset 0, canonical program `A103451.P2977452712529643699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103451 (n : ℕ) : ℤ :=
  A103451.P2977452712529643699.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103579.P11185176783327409651

`floor(p?[A294091(n+1)]/2)`
-/

namespace A103579.P11185176783327409651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A103579.P11185176783327409651

noncomputable section

/-- A103579: Sophie Germain primes that are not Lucasian primes: primes p not 3 (mod 4) such that 2p + 1 is prime.

Offset 1, canonical program `A103579.P11185176783327409651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A103579 (n : ℕ) : ℤ :=
  A103579.P11185176783327409651.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A103579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103664.P16967067740305570785

`p?[lt[A274010(n), A274010(n+1)]]`
-/

namespace A103664.P16967067740305570785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A103664.P16967067740305570785

noncomputable section

/-- A103664: Primes p such that the number of divisors of p-1 is less than the number of divisors of p+1.

Offset 1, canonical program `A103664.P16967067740305570785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A103664 (n : ℕ) : ℤ :=
  (A103664.P16967067740305570785.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A103664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103697.P1410882151425409104

`A103704(n+1)-abs(A187036(n))`
-/

namespace A103697.P1410882151425409104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103704 (n + 1) - |A187036 n|

end

end A103697.P1410882151425409104

noncomputable section

/-- A103697: Add 5 to each of the preceding digits, beginning with 0.

Offset 0, canonical program `A103697.P1410882151425409104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A103697 (n : ℕ) : ℤ :=
  A103697.P1410882151425409104.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A103697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103871.P16562096325091225650

`eq[2, A000005(A017377(10*n+6))]`
-/

namespace A103871.P16562096325091225650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017377 (10 * n + 6)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103871.P16562096325091225650

noncomputable section

/-- A103871: Numbers n such that 100n + 69 is prime.

Offset 1, canonical program `A103871.P16562096325091225650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A103871 (n : ℕ) : ℤ :=
  (A103871.P16562096325091225650.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A103871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104044.P9215107508309263018

`floor(A166547(n+1)/10)`
-/

namespace A104044.P9215107508309263018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166547 (n + 1) : ℚ) / 10⌋

end

end A104044.P9215107508309263018

noncomputable section

/-- A104044: Numbers k such that 10*k + 7 is prime and k is a multiple of ten.

Offset 1, canonical program `A104044.P9215107508309263018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104044 (n : ℕ) : ℤ :=
  A104044.P9215107508309263018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104048.P4278246881923550054

`∩[A101471(n+1), A008592(n)]`
-/

namespace A104048.P4278246881923550054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104048.P4278246881923550054

noncomputable section

/-- A104048: Numbers k such that k11 is prime and k is a multiple of ten.

Offset 1, canonical program `A104048.P4278246881923550054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1007 terms. -/
def A104048 (n : ℕ) : ℤ :=
  (A104048.P4278246881923550054.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1007 terms. -/
def A104048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104147.P7291418644979591770

`A263846(n+1)+1`
-/

namespace A104147.P7291418644979591770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (n + 1) + 1

end

end A104147.P7291418644979591770

noncomputable section

/-- A104147: Number of cubes <= n-th prime.

Offset 0, canonical program `A104147.P7291418644979591770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A104147 (n : ℕ) : ℤ :=
  A104147.P7291418644979591770.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A104147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104211.P8119416011438240202

`eq[0, A055672(∑{digits}[n+1, #])]+1`
-/

namespace A104211.P8119416011438240202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104211.P8119416011438240202

noncomputable section

/-- A104211: Integers n such that the sum of the digits of n is not prime.

Offset 1, canonical program `A104211.P8119416011438240202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6990 terms. -/
def A104211 (n : ℕ) : ℤ :=
  (A104211.P8119416011438240202.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6990 terms. -/
def A104211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104236.P4332644214263664855

`(n+1)*A001462(n+1)`
-/

namespace A104236.P4332644214263664855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001462 (n + 1)

end

end A104236.P4332644214263664855

noncomputable section

/-- A104236: n*Golomb's sequence.

Offset 1, canonical program `A104236.P4332644214263664855`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001462, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104236 (n : ℕ) : ℤ :=
  A104236.P4332644214263664855.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001462, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104248.P3887207961911586058

`A026465(2*(n+1))`
-/

namespace A104248.P3887207961911586058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (2 * (n + 1))

end

end A104248.P3887207961911586058

noncomputable section

/-- A104248: Lengths of successive runs of 1's in the Thue-Morse sequence A010060.

Offset 1, canonical program `A104248.P3887207961911586058`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104248 (n : ℕ) : ℤ :=
  A104248.P3887207961911586058.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104278.P9462042051971576230

`lt[3, A175851(2*n+1)]`
-/

namespace A104278.P9462042051971576230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A104278.P9462042051971576230

noncomputable section

/-- A104278: Numbers m such that 2m+1 and 2m-1 are not primes.

Offset 1, canonical program `A104278.P9462042051971576230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104278 (n : ℕ) : ℤ :=
  (A104278.P9462042051971576230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105106.P14951231802033951928

`eq[2, A105192(n)]`
-/

namespace A105106.P14951231802033951928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105192 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105106.P14951231802033951928

noncomputable section

/-- A105106: Numbers k such that the string k101 is prime.

Offset 1, canonical program `A105106.P14951231802033951928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1682 terms. -/
def A105106 (n : ℕ) : ℤ :=
  (A105106.P14951231802033951928.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1682 terms. -/
def A105106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105284.P487824979078133755

`A045690(2*n+2)`
-/

namespace A105284.P487824979078133755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045690 (2 * n + 2)

end

end A105284.P487824979078133755

noncomputable section

/-- A105284: a(n)/4^n is the measure of the subset of [0,1] remaining when all intervals of the form [b/2^m - 1/2^(2m+1), b/2^m + 1/2^(2m+1)] have been removed, with b and m positive integers, b

Offset 0, canonical program `A105284.P487824979078133755`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105284 (n : ℕ) : ℤ :=
  A105284.P487824979078133755.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105284.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105314.P11378633476736743267

`A117804((n+1)²)`
-/

namespace A105314.P11378633476736743267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 ((n + 1) ^ 2)

end

end A105314.P11378633476736743267

noncomputable section

/-- A105314: Write the natural numbers as an infinite sequence of digits, starting at the left; a(n) is the subset (i.e., the position in this sequence of the "counting digits") of the first digit of the n-th square.

Offset 1, canonical program `A105314.P11378633476736743267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A105314 (n : ℕ) : ℤ :=
  A105314.P11378633476736743267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A105314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105348.P15431712592980947353

`A130253(n)-A130250(n)`
-/

namespace A105348.P15431712592980947353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130253 n - A130250 n

end

end A105348.P15431712592980947353

noncomputable section

/-- A105348: An indicator sequence for the Jacobsthal numbers.

Offset 0, canonical program `A105348.P15431712592980947353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105348 (n : ℕ) : ℤ :=
  A105348.P15431712592980947353.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105348.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105470.P16886314090569139671

`A175191(n+1)%2`
-/

namespace A105470.P16886314090569139671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175191 (n + 1)) 2

end

end A105470.P16886314090569139671

noncomputable section

/-- A105470: a(n)=1 if there is number of the form 6k+3 with prime(n) <= 6k+3 <= prime(n+1), otherwise 0.

Offset 1, canonical program `A105470.P16886314090569139671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A105470 (n : ℕ) : ℤ :=
  A105470.P16886314090569139671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A105470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105551.P10952115211423103239

`A001221(n^3+n²+71)`
-/

namespace A105551.P10952115211423103239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n ^ 3 + n ^ 2 + 71)

end

end A105551.P10952115211423103239

noncomputable section

/-- A105551: Number of distinct prime factors of n^3 + n^2 + 71.

Offset 0, canonical program `A105551.P10952115211423103239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105551 (n : ℕ) : ℤ :=
  A105551.P10952115211423103239.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105555.P17886283271184042861

`A000040(A000005(n+1))`
-/

namespace A105555.P17886283271184042861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000005 (n + 1)).toNat

end

end A105555.P17886283271184042861

noncomputable section

/-- A105555: Let d = number of divisors of n; a(n) = d-th prime.

Offset 1, canonical program `A105555.P17886283271184042861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A105555 (n : ℕ) : ℤ :=
  A105555.P17886283271184042861.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A105555.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105696.P5414802746298820381

`A005774(A289207(n))+A005773(n)`
-/

namespace A105696.P5414802746298820381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 (A289207 n).toNat + A005773 n

end

end A105696.P5414802746298820381

noncomputable section

/-- A105696: Expansion of (1-x)/sqrt((1-3*x)/(1+x)).

Offset 0, canonical program `A105696.P5414802746298820381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A105696 (n : ℕ) : ℤ :=
  A105696.P5414802746298820381.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A105696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106060.P15162970793732190485

`∩[A015915(n+1), A023228(n+1)]`
-/

namespace A106060.P15162970793732190485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P15162970793732190485

noncomputable section

/-- A106060: Primes p such that 1*p + 8 and 8*p + 1 are primes.

Offset 1, canonical program `A106060.P15162970793732190485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A106060 (n : ℕ) : ℤ :=
  (A106060.P15162970793732190485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A106060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106270.P1693461683916901715

`A115140(C(comp[∑[n]]-n, 2)-n-char[∑[n-1]])`
-/

namespace A106270.P1693461683916901715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A106270.P1693461683916901715

noncomputable section

/-- A106270: Inverse of number triangle A106268; triangle T(n,k), 0 <= k <= n.

Offset 0, canonical program `A106270.P1693461683916901715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106270 (n : ℕ) : ℤ :=
  A106270.P1693461683916901715.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106760.P3707916924756019867

`∩[A061238(n+1), A062340(n+1)]`
-/

namespace A106760.P3707916924756019867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P3707916924756019867

noncomputable section

/-- A106760: Primes with digit sum = 20.

Offset 1, canonical program `A106760.P3707916924756019867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3130 terms. -/
def A106760 (n : ℕ) : ℤ :=
  (A106760.P3707916924756019867.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3130 terms. -/
def A106760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106763.P16920363089543575446

`∩[A061241(n+1), A062340(n+1)]`
-/

namespace A106763.P16920363089543575446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P16920363089543575446

noncomputable section

/-- A106763: Primes with digit sum = 25.

Offset 1, canonical program `A106763.P16920363089543575446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4321 terms. -/
def A106763 (n : ℕ) : ℤ :=
  (A106763.P16920363089543575446.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4321 terms. -/
def A106763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106972.P7111820639917467714

`∩[A040117(n+1), A141160(n+1)]`
-/

namespace A106972.P7111820639917467714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P7111820639917467714

noncomputable section

/-- A106972: Primes of the form 5x^2+4xy+5y^2, with x and y any integer.

Offset 1, canonical program `A106972.P7111820639917467714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A106972 (n : ℕ) : ℤ :=
  (A106972.P7111820639917467714.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A106972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107135.P2710238364664105918

`∪[A139856(n+1), A139859(n+1)]`
-/

namespace A107135.P2710238364664105918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107135.P2710238364664105918

noncomputable section

/-- A107135: Primes of the form 5x^2 + 6y^2.

Offset 1, canonical program `A107135.P2710238364664105918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107135 (n : ℕ) : ℤ :=
  (A107135.P2710238364664105918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107144.P11431327978363662706

`∩[A007521(n+1), A141179(n+1)]`
-/

namespace A107144.P11431327978363662706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107144.P11431327978363662706

noncomputable section

/-- A107144: Primes of the form 5x^2 + 8y^2.

Offset 1, canonical program `A107144.P11431327978363662706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A107144 (n : ℕ) : ℤ :=
  (A107144.P11431327978363662706.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A107144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107180.P2579341068721493242

`∩[A045373(n+1), A141179(n+1)]`
-/

namespace A107180.P2579341068721493242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107180.P2579341068721493242

noncomputable section

/-- A107180: Primes of the form 2x^2 + 35y^2.

Offset 1, canonical program `A107180.P2579341068721493242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A107180 (n : ℕ) : ℤ :=
  (A107180.P2579341068721493242.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A107180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107309.P11158848255490810356

`A001704(p?[A000040(n+1)+2])-3`
-/

namespace A107309.P11158848255490810356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 3

end

end A107309.P11158848255490810356

noncomputable section

/-- A107309: Concatenation of twin primes in reverse order.

Offset 0, canonical program `A107309.P11158848255490810356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A107309 (n : ℕ) : ℤ :=
  A107309.P11158848255490810356.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A107309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107579.P17257510932600595643

`∩[A061237(n+1), A062340(n+1)]`
-/

namespace A107579.P17257510932600595643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107579.P17257510932600595643

noncomputable section

/-- A107579: Primes with digit sum 10.

Offset 1, canonical program `A107579.P17257510932600595643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A107579 (n : ℕ) : ℤ :=
  (A107579.P17257510932600595643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A107579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107946.P13683536467666203313

`A107947(A065033(A006257(n)))`
-/

namespace A107946.P13683536467666203313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107947 (A065033 (A006257 n).toNat).toNat

end

end A107946.P13683536467666203313

noncomputable section

/-- A107946: Start with S(0)={1}, then S(k+1) equals the concatenation of S(k) with the partial sums of S(k); the limit gives this sequence.

Offset 1, canonical program `A107946.P13683536467666203313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A107946 (n : ℕ) : ℤ :=
  A107946.P13683536467666203313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A107946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108165.P8918085192420622400

`a(n-1)+A108173(n+2)-A108173(n+1)` with `a(0)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108165.P8918085192420622400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A108173 (n + 2) - A108173 (n + 1)

end

end A108165.P8918085192420622400

noncomputable section

/-- A108165: a(n) = a(n-1) + A108173(n+1) - A108173(n).

Offset 1, canonical program `A108165.P8918085192420622400`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108165 (n : ℕ) : ℤ :=
  A108165.P8918085192420622400.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108171.P3412130508276658526

`abs(Δ[A108173(n+1)])`
-/

namespace A108171.P3412130508276658526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A108171.P3412130508276658526

noncomputable section

/-- A108171: Tribonacci version of A076662 using the positive real Pisot root of x^3 - x^2 - x - 1.

Offset 0, canonical program `A108171.P3412130508276658526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108171 (n : ℕ) : ℤ :=
  A108171.P3412130508276658526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108269.P11596501751048516182

`2*A036554(n+1)`
-/

namespace A108269.P11596501751048516182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036554 (n + 1)

end

end A108269.P11596501751048516182

noncomputable section

/-- A108269: Numbers of the form (2*m - 1)*4^k where m >= 1, k >= 1.

Offset 1, canonical program `A108269.P11596501751048516182`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108269 (n : ℕ) : ℤ :=
  A108269.P11596501751048516182.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108269.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108906.P8516043697297774057

`Δ[A006899(n+1)]`
-/

namespace A108906.P8516043697297774057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108906.P8516043697297774057

noncomputable section

/-- A108906: First differences of A006899.

Offset 1, canonical program `A108906.P8516043697297774057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A108906 (n : ℕ) : ℤ :=
  A108906.P8516043697297774057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A108906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109181.P10536304723542597617

`A003132(A052034(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A109181.P10536304723542597617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A052034 (n + 1)).toNat

end

end A109181.P10536304723542597617

noncomputable section

/-- A109181: a(n) = A003132(A052034(n)).

Offset 1, canonical program `A109181.P10536304723542597617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, A052034, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109181 (n : ℕ) : ℤ :=
  A109181.P10536304723542597617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, A052034, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109181.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109595.P8129904845890612139

`gcd(A087508(n)², A006501(n))`
-/

namespace A109595.P8129904845890612139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087508 n ^ 2) (A006501 n)

end

end A109595.P8129904845890612139

noncomputable section

/-- A109595: n^3 followed by n^2 followed by n.

Offset 1, canonical program `A109595.P8129904845890612139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109595 (n : ℕ) : ℤ :=
  (A109595.P8129904845890612139.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110088.P8337879305070338118

`A000005(n+1)^A001221(n+1)`
-/

namespace A110088.P8337879305070338118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A110088.P8337879305070338118

noncomputable section

/-- A110088: a(n) = tau(n)^omega(n), where tau = A000005 and omega = A001221.

Offset 1, canonical program `A110088.P8337879305070338118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A110088 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A110088.P8337879305070338118.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A110088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110607.P8308537065448000621

`eq[2, ∑{e}[A007095(n), #]]`
-/

namespace A110607.P8308537065448000621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110607.P8308537065448000621

noncomputable section

/-- A110607: Numbers n whose base 9 representations, interpreted as base 10 integers, are semiprimes.

Offset 1, canonical program `A110607.P8308537065448000621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. -/
def A110607 (n : ℕ) : ℤ :=
  (A110607.P8308537065448000621.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. -/
def A110607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111142.P14739711800033483932

`gcd(n+1, A113222(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111142.P14739711800033483932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A113222 (n + 1))

end

end A111142.P14739711800033483932

noncomputable section

/-- A111142: a(n) = gcd(n, A113222(n)), where A113222(n) = Sum_{p^e || n} F(p^e), each p^e the highest power of prime p dividing n (with e > 0), and F(k) is the k-th Fibonacci number.

Offset 1, canonical program `A111142.P14739711800033483932`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111142 (n : ℕ) : ℤ :=
  (A111142.P14739711800033483932.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111142.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111249.P7340019097524648828

`A024905(n+1)-1`
-/

namespace A111249.P7340019097524648828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024905 (n + 1) - 1

end

end A111249.P7340019097524648828

noncomputable section

/-- A111249: Numbers k such that 7*k + 8 is prime.

Offset 1, canonical program `A111249.P7340019097524648828`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111249 (n : ℕ) : ℤ :=
  A111249.P7340019097524648828.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111707.P13894172564347898371

`A169669(n)+A000038(A047809(n))`
-/

namespace A111707.P13894172564347898371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169669 n + A000038 (A047809 n).toNat

end

end A111707.P13894172564347898371

noncomputable section

/-- A111707: a(n) = Sum_{k = 1..ceiling(w/2)} d(k) * d(w+1-k), where (d(1), ..., d(w)) is the decimal expansion of n.

Offset 0, canonical program `A111707.P13894172564347898371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A111707 (n : ℕ) : ℤ :=
  A111707.P13894172564347898371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A111707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111737.P5999545701186017771

`A013632(5*p?[xor(1, n)+1])`
-/

namespace A111737.P5999545701186017771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111737.P5999545701186017771

noncomputable section

/-- A111737: Distance between k*(n-th prime) and next prime, k=5 case.

Offset 1, canonical program `A111737.P5999545701186017771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A111737 (n : ℕ) : ℤ :=
  A111737.P5999545701186017771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A111737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111741.P6922834761270398492

`A013632(9*p?[xor(1, n)+1])`
-/

namespace A111741.P6922834761270398492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (9 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111741.P6922834761270398492

noncomputable section

/-- A111741: Distance between k*(n-th prime) and next prime, k=9 case.

Offset 1, canonical program `A111741.P6922834761270398492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A111741 (n : ℕ) : ℤ :=
  A111741.P6922834761270398492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A111741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112325.P16100179258016750283

`A055679(eq[2, A105700(n)])`
-/

namespace A112325.P16100179258016750283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112325.P16100179258016750283

noncomputable section

/-- A112325: Number of even semiprimes <= semiprime(n).

Offset 1, canonical program `A112325.P16100179258016750283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112325 (n : ℕ) : ℤ :=
  A112325.P16100179258016750283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112381.P16506309095590625013

`lt[A007954(n), A007954(n)*A105700(n)]`
-/

namespace A112381.P16506309095590625013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n * A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A112381.P16506309095590625013

noncomputable section

/-- A112381: Zero-free semiprimes.

Offset 1, canonical program `A112381.P16506309095590625013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2145 terms. -/
def A112381 (n : ℕ) : ℤ :=
  (A112381.P16506309095590625013.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2145 terms. -/
def A112381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112556.P12431749656610637596

`A120305(n-1)-or(-1, a(n-1))` with `a(0)=1`
-/

namespace A112556.P12431749656610637596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120305 (n - 1) - Int.lor (-1) (a (n - 1))

end

end A112556.P12431749656610637596

noncomputable section

/-- A112556: Sums of squared terms in rows of triangle A112555.

Offset 0, canonical program `A112556.P12431749656610637596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A112556 (n : ℕ) : ℤ :=
  A112556.P12431749656610637596.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A112556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112588.P10447318389527751841

`lt[A000005(A253909(n)), A254528(n)]`
-/

namespace A112588.P10447318389527751841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A253909 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254528 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A112588.P10447318389527751841

noncomputable section

/-- A112588: Numbers m such that phi(m) > 2*tau(m), where phi = A000010 and tau = A000005.

Offset 1, canonical program `A112588.P10447318389527751841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A112588 (n : ℕ) : ℤ :=
  (A112588.P10447318389527751841.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A112588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112660.P11454736749846847626

`A330526(n+1)%A001248(n+1)`
-/

namespace A112660.P11454736749846847626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330526 (n + 1)) (A001248 (n + 1))

end

end A112660.P11454736749846847626

noncomputable section

/-- A112660: a(n) = (p-1)! mod p^2 where p = n-th prime.

Offset 1, canonical program `A112660.P11454736749846847626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5367 terms. -/
def A112660 (n : ℕ) : ℤ :=
  A112660.P11454736749846847626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5367 terms. -/
def A112660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112714.P4485868673494609304

`A080075(n+1)-2`
-/

namespace A112714.P4485868673494609304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1) - 2

end

end A112714.P4485868673494609304

noncomputable section

/-- A112714: Numbers of the form k*2^m-1 with k

Offset 1, canonical program `A112714.P4485868673494609304`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112714 (n : ℕ) : ℤ :=
  A112714.P4485868673494609304.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112983.P5057447493853888811

`A005843(A015910(n+1))%A000027(n+1)`
-/

namespace A112983.P5057447493853888811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A015910 (n + 1)).toNat) (A000027 (n + 1))

end

end A112983.P5057447493853888811

noncomputable section

/-- A112983: a(n) = 2^(n+1) mod n.

Offset 1, canonical program `A112983.P5057447493853888811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112983 (n : ℕ) : ℤ :=
  A112983.P5057447493853888811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112984.P7561031540095205542

`lt[A064680(n), A015910(n+1)]+2`
-/

namespace A112984.P7561031540095205542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A112984.P7561031540095205542

noncomputable section

/-- A112984: Numbers k such that 2^k mod k-1 is odd.

Offset 1, canonical program `A112984.P7561031540095205542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A112984 (n : ℕ) : ℤ :=
  (A112984.P7561031540095205542.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A112984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113414.P14663272806087347822

`A001826(n+1)+(-1)^(n+1)*A001842(n+1)`
-/

namespace A113414.P14663272806087347822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (n + 1) + (-1) ^ (n + 1) * A001842 (n + 1)

end

end A113414.P14663272806087347822

noncomputable section

/-- A113414: Expansion of Sum_{k>0} x^k/(1-(-x^2)^k).

Offset 1, canonical program `A113414.P14663272806087347822`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, A001842, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A113414 (n : ℕ) : ℤ :=
  A113414.P14663272806087347822.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, A001842, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A113414.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113661.P7577629174354355755

`A033999(n)*A122860(n+1)`
-/

namespace A113661.P7577629174354355755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A122860 (n + 1)

end

end A113661.P7577629174354355755

noncomputable section

/-- A113661: Expansion of (phi(x)^3/phi(x^3) - 1)/6 where phi() is a Ramanujan theta function.

Offset 1, canonical program `A113661.P7577629174354355755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113661 (n : ℕ) : ℤ :=
  A113661.P7577629174354355755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114003.P1695342291946871726

`2*A000005(n+1)-1`
-/

namespace A114003.P1695342291946871726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1) - 1

end

end A114003.P1695342291946871726

noncomputable section

/-- A114003: Rows sums of triangle A114002.

Offset 1, canonical program `A114003.P1695342291946871726`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114003 (n : ℕ) : ℤ :=
  A114003.P1695342291946871726.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114208.P14089421638251111156

`∑[n]+1-(A114210(n+1)+A114209(n+1))`
-/

namespace A114208.P14089421638251111156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - (A114210 (n + 1) + A114209 (n + 1))

end

end A114208.P14089421638251111156

noncomputable section

/-- A114208: Number of permutations of [n] having exactly one fixed point and avoiding the patterns 123 and 231.

Offset 1, canonical program `A114208.P14089421638251111156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114208 (n : ℕ) : ℤ :=
  A114208.P14089421638251111156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114338.P14184367748492254408

`A000005(A006882(n))`
-/

namespace A114338.P14184367748492254408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006882 n).toNat

end

end A114338.P14184367748492254408

noncomputable section

/-- A114338: Number of divisors of n!! (double factorial = A006882(n)).

Offset 0, canonical program `A114338.P14184367748492254408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114338 (n : ℕ) : ℤ :=
  A114338.P14184367748492254408.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114495.P3391984248548370264

`A014301(n+2)-Δ[A114515(n+1)]`
-/

namespace A114495.P3391984248548370264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (n + 2) - (f1 (n + 1) - f1 n)

end

end A114495.P3391984248548370264

noncomputable section

/-- A114495: Number of returns to the x-axis in all hill-free Dyck paths of semilength n (a Dyck path is said to be hill-free if it has no peaks at level 1).

Offset 1, canonical program `A114495.P3391984248548370264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A114495 (n : ℕ) : ℤ :=
  A114495.P3391984248548370264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A114495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114707.P3298939068066820916

`A001221((n+1)*a(n-1))-A001221(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A114707.P3298939068066820916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001221 ((n + 1 : ℤ) * a (n - 1)).toNat - A001221 (a (n - 1)).toNat + a (n - 1)

end

end A114707.P3298939068066820916

noncomputable section

/-- A114707: a(1)=1. For n>1, a(n) = a(n-1) + (number of distinct primes dividing n but not a(n-1)).

Offset 1, canonical program `A114707.P3298939068066820916`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114707 (n : ℕ) : ℤ :=
  A114707.P3298939068066820916.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115240.P2043430779647816061

`A001672(n+1)-A115239(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A115240.P2043430779647816061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001672 (n + 1) - A115239 (n + 1)

end

end A115240.P2043430779647816061

noncomputable section

/-- A115240: a(n) = A001672(n) - A115239(n).

Offset 1, canonical program `A115240.P2043430779647816061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001672, A115239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115240 (n : ℕ) : ℤ :=
  A115240.P2043430779647816061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001672, A115239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115240.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115376.P8028506468420862594

`∑[∑[A165188(n+1)-a(n-1)]]` with `a(0)=1`
-/

namespace A115376.P8028506468420862594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A165188 (n + 1) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115376.P8028506468420862594

noncomputable section

/-- A115376: where h[d+1,d-1] is a homogeneous symmetric function, s[d,d] is a Schur function indexed by two parts, * represents the Kronecker product and <, > is the standard scalar product on symmetric functions.

Offset 2, canonical program `A115376.P8028506468420862594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115376 (n : ℕ) : ℤ :=
  A115376.P8028506468420862594.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115423.P7439849481679969083

`∩[A115422(n+1), A115795(n+1)]`
-/

namespace A115423.P7439849481679969083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115423.P7439849481679969083

noncomputable section

/-- A115423: Integers n > 0 such that n XOR 30*n = 31*n.

Offset 1, canonical program `A115423.P7439849481679969083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A115423 (n : ℕ) : ℤ :=
  (A115423.P7439849481679969083.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A115423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115635.P17810721979096127821

`A115714(A057300(n)+4)`
-/

namespace A115635.P17810721979096127821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115714 (A057300 n + 4).toNat

end

end A115635.P17810721979096127821

noncomputable section

/-- A115635: Periodic {1,1,-5,0,1,-3,-1,0,-3,1,-1,-4}.

Offset 0, canonical program `A115635.P17810721979096127821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5120 terms. -/
def A115635 (n : ℕ) : ℤ :=
  A115635.P17810721979096127821.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5120 terms. -/
def A115635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116204.P4596117724917585290

`A000005(n/gcd(n, A010805(a(n-1))))` with `a(0)=1`
-/

namespace A116204.P4596117724917585290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (SequenceMachineLib.roundAway ((n : ℚ) / (Int.gcd (n : ℤ) (A010805 (a (n - 1)).toNat) : ℚ))).toNat

end

end A116204.P4596117724917585290

noncomputable section

/-- A116204: a(0) = 1; for n >= 1, a(n) = the number of positive divisors of n which are coprime to a(n-1).

Offset 0, canonical program `A116204.P4596117724917585290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116204 (n : ℕ) : ℤ :=
  A116204.P4596117724917585290.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117682.P12609232638035276645

`p?[n*A010054(A007954(n))]`
-/

namespace A117682.P12609232638035276645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010054 (A007954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117682.P12609232638035276645

noncomputable section

/-- A117682: Prime numbers for which the product of the digits is a triangular number.

Offset 1, canonical program `A117682.P12609232638035276645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A117682 (n : ℕ) : ℤ :=
  A117682.P12609232638035276645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A117682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117767.P658102371895706340

`2*A000006(n+1)+1`
-/

namespace A117767.P658102371895706340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000006 (n + 1) + 1

end

end A117767.P658102371895706340

noncomputable section

/-- A117767: a(n) is the difference between the smallest square greater than prime(n) and the largest square less than prime(n), where prime(n) = A000040(n) is the n-th prime number.

Offset 1, canonical program `A117767.P658102371895706340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117767 (n : ℕ) : ℤ :=
  A117767.P658102371895706340.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117767.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117768.P14671149105729955350

`Δ[A184741(2*(n+3))]`
-/

namespace A117768.P14671149105729955350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184741 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117768.P14671149105729955350

noncomputable section

/-- A117768: Number of Lucas numbers with n digits.

Offset 0, canonical program `A117768.P14671149105729955350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A117768 (n : ℕ) : ℤ :=
  A117768.P14671149105729955350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A117768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118623.P9012952356885345567

`A000290(a(n-1))+A000005(a(n-1))` with `a(0)=1`
-/

namespace A118623.P9012952356885345567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000290 (a (n - 1)).toNat + A000005 (a (n - 1)).toNat

end

end A118623.P9012952356885345567

noncomputable section

/-- A118623: a(0) = 1, a(n+1) = a(n)^2 + number of divisors of a(n).

Offset 0, canonical program `A118623.P9012952356885345567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118623 (n : ℕ) : ℤ :=
  A118623.P9012952356885345567.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119462.P8715434688808793854

`(A057427(n)+1)*A034839(n)`
-/

namespace A119462.P8715434688808793854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A034839 n

end

end A119462.P8715434688808793854

noncomputable section

/-- A119462: Triangle read by rows: T(n,k) is the number of circular binary words of length n having k occurrences of 01 (0 <= k <= floor(n/2)).

Offset 0, canonical program `A119462.P8715434688808793854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119462 (n : ℕ) : ℤ :=
  A119462.P8715434688808793854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119791.P16998931998944088094

`A000005((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A119791.P16998931998944088094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A119791.P16998931998944088094

noncomputable section

/-- A119791: a(1) = 1, a(n) = number of divisors of n*a(n-1).

Offset 1, canonical program `A119791.P16998931998944088094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A119791 (n : ℕ) : ℤ :=
  A119791.P16998931998944088094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A119791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119885.P7055387291115707172

`eq[1, A102460(A000005(n+1))]+1`
-/

namespace A119885.P7055387291115707172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119885.P7055387291115707172

noncomputable section

/-- A119885: Natural numbers with number of divisors equal to a Lucas number.

Offset 1, canonical program `A119885.P7055387291115707172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119885 (n : ℕ) : ℤ :=
  (A119885.P7055387291115707172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119993.P13755993622550961966

`A000040(n+1+A001221(n+1))`
-/

namespace A119993.P13755993622550961966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1 : ℤ) + A001221 (n + 1)).toNat

end

end A119993.P13755993622550961966

noncomputable section

/-- A119993: a(n) = n-th prime from among those primes which are coprime to n.

Offset 1, canonical program `A119993.P13755993622550961966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A119993 (n : ℕ) : ℤ :=
  A119993.P13755993622550961966.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A119993.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120106.P17285156561798854868

`a(n-1)*A120114(n-1)+1` with `a(0)=1`
-/

namespace A120106.P17285156561798854868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A120114 (n - 1) + 1

end

end A120106.P17285156561798854868

noncomputable section

/-- A120106: a(n) = Sum_{k=0..n} lcm(1..2n+2)/lcm(1..2k+2).

Offset 0, canonical program `A120106.P17285156561798854868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A120106 (n : ℕ) : ℤ :=
  A120106.P17285156561798854868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A120106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120226.P13386215019223714269

`∩[A172367(n+1), A230076(n+1)]`
-/

namespace A120226.P13386215019223714269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120226.P13386215019223714269

noncomputable section

/-- A120226: Numbers k such that 4+k and 4*k+1 are prime.

Offset 1, canonical program `A120226.P13386215019223714269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3021 terms. -/
def A120226 (n : ℕ) : ℤ :=
  (A120226.P13386215019223714269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3021 terms. -/
def A120226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120327.P4710944750687290271

`A013929(A294234(2*n)+1)`
-/

namespace A120327.P4710944750687290271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (A294234 (2 * n) + 1).toNat

end

end A120327.P4710944750687290271

noncomputable section

/-- A120327: Smallest nonsquarefree number >= n.

Offset 1, canonical program `A120327.P4710944750687290271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120327 (n : ℕ) : ℤ :=
  A120327.P4710944750687290271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120503.P17912308022700772714

`A007844(n+1)/3`
-/

namespace A120503.P17912308022700772714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007844 (n + 1) : ℚ) / 3

end

end A120503.P17912308022700772714

noncomputable section

/-- A120503: Generalized meta-Fibonacci sequence a(n) with parameters s=0 and k=3.

Offset 1, canonical program `A120503.P17912308022700772714`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007844, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120503.P17912308022700772714.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007844, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120672.P7875415182769187562

`A283353(n)-A081668(n)`
-/

namespace A120672.P7875415182769187562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283353 n - A081668 n

end

end A120672.P7875415182769187562

noncomputable section

/-- A120672: a(n) = 2 * A285917(n) for n >=2, a(0) = a(1) = 0.

Offset 0, canonical program `A120672.P7875415182769187562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A120672 (n : ℕ) : ℤ :=
  A120672.P7875415182769187562.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A120672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120675.P7049044633339083279

`A001221(A056911(n+1))`
-/

namespace A120675.P7049044633339083279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A056911 (n + 1)).toNat

end

end A120675.P7049044633339083279

noncomputable section

/-- A120675: Number of prime factors of odd squarefree numbers A056911.

Offset 1, canonical program `A120675.P7049044633339083279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A120675 (n : ℕ) : ℤ :=
  A120675.P7049044633339083279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A120675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121025.P17073191121720962736

`∩[A011535(n+1), A008587(n)]`
-/

namespace A121025.P17073191121720962736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121025.P17073191121720962736

noncomputable section

/-- A121025: Multiples of 5 containing a 5 in their decimal representation.

Offset 1, canonical program `A121025.P17073191121720962736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3668 terms. -/
def A121025 (n : ℕ) : ℤ :=
  (A121025.P17073191121720962736.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3668 terms. -/
def A121025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121026.P3500916075753283321

`filter[A011536(n+1), A079979(#)]`
-/

namespace A121026.P3500916075753283321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A121026.P3500916075753283321

noncomputable section

/-- A121026: Multiples of 6 containing a 6 in their decimal representation.

Offset 1, canonical program `A121026.P3500916075753283321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2015 terms. -/
def A121026 (n : ℕ) : ℤ :=
  A121026.P3500916075753283321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2015 terms. -/
def A121026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121027.P4388213834179774910

`∩[A011537(n+1), 7*(n+1)]`
-/

namespace A121027.P4388213834179774910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A121027.P4388213834179774910

noncomputable section

/-- A121027: Multiples of 7 containing a 7 in their decimal representation.

Offset 1, canonical program `A121027.P4388213834179774910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A121027 (n : ℕ) : ℤ :=
  (A121027.P4388213834179774910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A121027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121028.P12208025731756267144

`∩[8*n, A011538(n+1)]`
-/

namespace A121028.P12208025731756267144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121028.P12208025731756267144

noncomputable section

/-- A121028: Multiples of 8 containing an 8 in their decimal representation.

Offset 1, canonical program `A121028.P12208025731756267144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1514 terms. -/
def A121028 (n : ℕ) : ℤ :=
  (A121028.P12208025731756267144.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1514 terms. -/
def A121028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121242.P3942440470820535273

`∑[A085976(n+1)]`
-/

namespace A121242.P3942440470820535273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121242.P3942440470820535273

noncomputable section

/-- A121242: Number of 2's in first n primes.

Offset 1, canonical program `A121242.P3942440470820535273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121242 (n : ℕ) : ℤ :=
  A121242.P3942440470820535273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121285.P9254393504255520703

`A131352(n)-2*A191386(n)-A100071(n)`
-/

namespace A121285.P9254393504255520703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 n - 2 * A191386 n - A100071 n

end

end A121285.P9254393504255520703

noncomputable section

/-- A121285: a(0) = 1; for n>0, a(n) = (n+3)*2^(n-2)-n*binomial(n-1, floor( (n-1)/2 ))-(n-1)*binomial(n-2,floor((n-2)/2)).

Offset 0, canonical program `A121285.P9254393504255520703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A121285 (n : ℕ) : ℤ :=
  A121285.P9254393504255520703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A121285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121842.P4729088766007939738

`A013632(n^3)`
-/

namespace A121842.P4729088766007939738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n ^ 3)

end

end A121842.P4729088766007939738

noncomputable section

/-- A121842: Difference between n^3 and next prime.

Offset 0, canonical program `A121842.P4729088766007939738`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121842 (n : ℕ) : ℤ :=
  A121842.P4729088766007939738.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121842.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121884.P5648599266500705925

`A175851(eq[2, A105700(n+1)])`
-/

namespace A121884.P5648599266500705925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121884.P5648599266500705925

noncomputable section

/-- A121884: Excess of n-th semiprime over previous prime.

Offset 1, canonical program `A121884.P5648599266500705925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121884 (n : ℕ) : ℤ :=
  A121884.P5648599266500705925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122895.P9639352825295012405

`A010056(A000005(n+1))`
-/

namespace A122895.P9639352825295012405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A000005 (n + 1)).toNat

end

end A122895.P9639352825295012405

noncomputable section

/-- A122895: Characteristic function of natural numbers with number of divisors equal to a Fibonacci number.

Offset 1, canonical program `A122895.P9639352825295012405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A010056, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122895 (n : ℕ) : ℤ :=
  A122895.P9639352825295012405.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A010056, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122895.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123071.P17796605501176789475

`A135401(n+1)*A135401(n)`
-/

namespace A123071.P17796605501176789475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135401 (n + 1) * A135401 n

end

end A123071.P17796605501176789475

noncomputable section

/-- A123071: Bishops on a 2n+1 X 2n+1 board (see Robinson paper for details).

Offset 0, canonical program `A123071.P17796605501176789475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A123071 (n : ℕ) : ℤ :=
  A123071.P17796605501176789475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A123071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123327.P12449877284529674263

`A000203(n+1)+A004125(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123327.P12449877284529674263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A004125 (n + 1)

end

end A123327.P12449877284529674263

noncomputable section

/-- A123327: a(n) = A000203(n) + A004125(n).

Offset 1, canonical program `A123327.P12449877284529674263`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123327 (n : ℕ) : ℤ :=
  A123327.P12449877284529674263.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123747.P11724577684491997392

`A144635(n)/gcd(A000351(n), A144635(n))`
-/

namespace A123747.P11724577684491997392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144635 n : ℚ) / (Int.gcd (A000351 n) (A144635 n) : ℚ)

end

end A123747.P11724577684491997392

noncomputable section

/-- A123747: Numerators of partial sums of a series for sqrt(5).

Offset 0, canonical program `A123747.P11724577684491997392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A123747 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123747.P11724577684491997392.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A123747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123748.P791566555730532304

`A000351(n)/gcd(A000351(n), A144635(n))`
-/

namespace A123748.P791566555730532304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n : ℚ) / (Int.gcd (A000351 n) (A144635 n) : ℚ)

end

end A123748.P791566555730532304

noncomputable section

/-- A123748: Denominators of partial sums of a series for sqrt(5).

Offset 0, canonical program `A123748.P791566555730532304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A123748 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123748.P791566555730532304.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A123748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123927.P16161483642695662520

`A102460(A000005(n+1))`
-/

namespace A123927.P16161483642695662520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (A000005 (n + 1)).toNat

end

end A123927.P16161483642695662520

noncomputable section

/-- A123927: Characteristic function of natural numbers with number of divisors equal to a Lucas number.

Offset 1, canonical program `A123927.P16161483642695662520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A102460, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A123927 (n : ℕ) : ℤ :=
  A123927.P16161483642695662520.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A102460, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A123927.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124192.P10155367062783563682

`floor(p?[A186301(n+1)]/8)`
-/

namespace A124192.P10155367062783563682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 8⌋

end

end A124192.P10155367062783563682

noncomputable section

/-- A124192: Numbers k for which 8*k + 3 and 8*k + 5 are twin primes.

Offset 1, canonical program `A124192.P10155367062783563682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A124192 (n : ℕ) : ℤ :=
  A124192.P10155367062783563682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A124192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124438.P3966376689597900397

`lt[A136176(n+1), A001221(n+1)]+1`
-/

namespace A124438.P3966376689597900397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A124438.P3966376689597900397

noncomputable section

/-- A124438: Numbers that are not divisible by at least one of the (positive) exponents in their prime factorization.

Offset 1, canonical program `A124438.P3966376689597900397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7645 terms. -/
def A124438 (n : ℕ) : ℤ :=
  (A124438.P3966376689597900397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7645 terms. -/
def A124438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124642.P17409428497958016739

`A210736(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A124642.P17409428497958016739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A210736 n + a (n - 2)

end

end A124642.P17409428497958016739

noncomputable section

/-- A124642: Antidiagonal sums of A096465.

Offset 0, canonical program `A124642.P17409428497958016739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A124642 (n : ℕ) : ℤ :=
  A124642.P17409428497958016739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A124642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125047.P17736773129357693532

`A343180(eq[A014707(n), A038189(n)])`
-/

namespace A125047.P17736773129357693532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343180 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A125047.P17736773129357693532

noncomputable section

/-- A125047: Infinite word generated by mapping 1->12, 2->13, 3->43, 4->42 starting at 1.

Offset 1, canonical program `A125047.P17736773129357693532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A125047 (n : ℕ) : ℤ :=
  A125047.P17736773129357693532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A125047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125115.P9586527931005899637

`A005101(n+2)-A005101(n+1)`
-/

namespace A125115.P9586527931005899637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 2) - A005101 (n + 1)

end

end A125115.P9586527931005899637

noncomputable section

/-- A125115: Differences between consecutive abundant numbers.

Offset 1, canonical program `A125115.P9586527931005899637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125115 (n : ℕ) : ℤ :=
  A125115.P9586527931005899637.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125115.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125238.P17761678390908912446

`A005100(n+2)-A005100(n+1)`
-/

namespace A125238.P17761678390908912446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 2) - A005100 (n + 1)

end

end A125238.P17761678390908912446

noncomputable section

/-- A125238: Differences between consecutive deficient numbers.

Offset 1, canonical program `A125238.P17761678390908912446`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125238 (n : ℕ) : ℤ :=
  A125238.P17761678390908912446.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125290.P9146773712146445150

`∩[A139819(n+1), A052382(n+1)]`
-/

namespace A125290.P9146773712146445150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125290.P9146773712146445150

noncomputable section

/-- A125290: Numbers with at least two distinct digits in decimal representation, none of which is 0.

Offset 1, canonical program `A125290.P9146773712146445150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7344 terms. -/
def A125290 (n : ℕ) : ℤ :=
  (A125290.P9146773712146445150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7344 terms. -/
def A125290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125499.P3483996585675288903

`filter[A005100(n+1), A120325(#)]`
-/

namespace A125499.P3483996585675288903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A125499.P3483996585675288903

noncomputable section

/-- A125499: Deficient even numbers.

Offset 1, canonical program `A125499.P3483996585675288903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3375 terms. -/
def A125499 (n : ℕ) : ℤ :=
  A125499.P3483996585675288903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3375 terms. -/
def A125499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127415.P2427589428552924877

`(A053818(n+1)+A023896(n+1))/2`
-/

namespace A127415.P2427589428552924877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053818 (n + 1) + A023896 (n + 1) : ℚ) / 2

end

end A127415.P2427589428552924877

noncomputable section

/-- A127415: a(n) = Sum_{1<=k<=n, gcd(k,n)=1}, A000217(k).

Offset 1, canonical program `A127415.P2427589428552924877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127415 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127415.P2427589428552924877.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127458.P1588143884690926353

`lt[n+1, A013632(n+1)^3]+1`
-/

namespace A127458.P1588143884690926353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A127458.P1588143884690926353

noncomputable section

/-- A127458: Numbers k such that there are no primes between k and k + k^(1/3).

Offset 1, canonical program `A127458.P1588143884690926353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 848 terms. -/
def A127458 (n : ℕ) : ℤ :=
  (A127458.P1588143884690926353.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 848 terms. -/
def A127458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127577.P11497758234224317345

`record[A057979(A127575(n+4))]`
-/

namespace A127577.P11497758234224317345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A127575 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127577.P11497758234224317345

noncomputable section

/-- A127577: Numbers n for which 32n+31 is prime.

Offset 1, canonical program `A127577.P11497758234224317345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 909 terms. -/
def A127577 (n : ℕ) : ℤ :=
  A127577.P11497758234224317345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 909 terms. -/
def A127577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127992.P16603493204352914741

`A001221(A127989(n+1))`
-/

namespace A127992.P16603493204352914741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A127989 (n + 1)).toNat

end

end A127992.P16603493204352914741

noncomputable section

/-- A127992: Number of distinct prime factors of 2*n^3 - 2*n + 9.

Offset 1, canonical program `A127992.P16603493204352914741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127992 (n : ℕ) : ℤ :=
  A127992.P16603493204352914741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128056.P4683975455215267477

`A011782(n)*A219233(A110654(n))`
-/

namespace A128056.P4683975455215267477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A219233 (A110654 n).toNat

end

end A128056.P4683975455215267477

noncomputable section

/-- A128056: Hankel transform of A128057.

Offset 0, canonical program `A128056.P4683975455215267477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A128056 (n : ℕ) : ℤ :=
  A128056.P4683975455215267477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A128056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128099.P4870284722196018582

`A000079(A055087(n))*A011973(n)`
-/

namespace A128099.P4870284722196018582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A055087 n).toNat * A011973 n

end

end A128099.P4870284722196018582

noncomputable section

/-- A128099: Triangle read by rows: T(n,k) is the number of ways to tile a 3 X n rectangle with k pieces of 2 X 2 tiles and 3n-4k pieces of 1 X 1 tiles (0 <= k <= floor(n/2)).

Offset 0, canonical program `A128099.P4870284722196018582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128099 (n : ℕ) : ℤ :=
  A128099.P4870284722196018582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128428.P12680153532119411941

`A001221((n+1)²+1)`
-/

namespace A128428.P12680153532119411941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1) ^ 2 + 1)

end

end A128428.P12680153532119411941

noncomputable section

/-- A128428: Number of distinct prime factors of n^2+1.

Offset 1, canonical program `A128428.P12680153532119411941`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128428 (n : ℕ) : ℤ :=
  A128428.P12680153532119411941.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128748.P7166467053256492629

`Δ[A242586(n)-∑[A033321(n)]]`
-/

namespace A128748.P7166467053256492629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128748.P7166467053256492629

noncomputable section

/-- A128748: Number of peaks at height >1 in all skew Dyck paths of semilength n.

Offset 1, canonical program `A128748.P7166467053256492629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A128748 (n : ℕ) : ℤ :=
  A128748.P7166467053256492629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A128748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129567.P3074375712733796166

`A000005(A002805(n+1))`
-/

namespace A129567.P3074375712733796166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002805 (n + 1)).toNat

end

end A129567.P3074375712733796166

noncomputable section

/-- A129567: a(n) = number of positive divisors of the denominator of the n-th harmonic number H(n) = Sum_{k=1..n} 1/k.

Offset 1, canonical program `A129567.P3074375712733796166`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129567 (n : ℕ) : ℤ :=
  A129567.P3074375712733796166.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129567.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129568.P17056387709866541555

`A000005(A001008(n+1))`
-/

namespace A129568.P17056387709866541555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001008 (n + 1)).toNat

end

end A129568.P17056387709866541555

noncomputable section

/-- A129568: a(n) is the number of positive divisors of the numerator of the n-th harmonic number H(n) = Sum_{k=1..n} 1/k.

Offset 1, canonical program `A129568.P17056387709866541555`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129568 (n : ℕ) : ℤ :=
  A129568.P17056387709866541555.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129568.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129720.P8695700237349023739

`A291241(n)-A000045(n+1)`
-/

namespace A129720.P8695700237349023739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291241 n - A000045 (n + 1)

end

end A129720.P8695700237349023739

noncomputable section

/-- A129720: Number of 0's in odd position in all Fibonacci binary words of length n. A Fibonacci binary word is a binary word having no 00 subword.

Offset 0, canonical program `A129720.P8695700237349023739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A129720 (n : ℕ) : ℤ :=
  A129720.P8695700237349023739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A129720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129904.P381992296892197459

`A004611(n+2)`
-/

namespace A129904.P381992296892197459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 2)

end

end A129904.P381992296892197459

noncomputable section

/-- A129904: Find the first two terms in A003215, say A003215(i) and A003215(j), that are divisible by a number in A016921 not 1, say by k = A016921(m). Then i + j + 1 = k and k is added to the sequence.

Offset 1, canonical program `A129904.P381992296892197459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A129904 (n : ℕ) : ℤ :=
  A129904.P381992296892197459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A129904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129983.P17535563486194149249

`∑[A129984(abs(1-n))]`
-/

namespace A129983.P17535563486194149249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129984 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129983.P17535563486194149249

noncomputable section

/-- A129983: Binomial transform of A129982.

Offset 0, canonical program `A129983.P17535563486194149249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A129983 (n : ℕ) : ℤ :=
  A129983.P17535563486194149249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A129983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129986.P6583462632365360205

`A129987(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A129986.P6583462632365360205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129987 (n - 1) + a (n - 1)

end

end A129986.P6583462632365360205

noncomputable section

/-- A129986: Second differences of A129983.

Offset 0, canonical program `A129986.P6583462632365360205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A129986 (n : ℕ) : ℤ :=
  A129986.P6583462632365360205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A129986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130047.P13624895427520759219

`A034868(n)%2`
-/

namespace A130047.P13624895427520759219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034868 n) 2

end

end A130047.P13624895427520759219

noncomputable section

/-- A130047: Left half of Pascal's triangle (A034868) modulo 2.

Offset 0, canonical program `A130047.P13624895427520759219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130047 (n : ℕ) : ℤ :=
  A130047.P13624895427520759219.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130239.P4605926808634395640

`A130233(floor(sqrt(n)))`
-/

namespace A130239.P4605926808634395640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (Nat.sqrt n)

end

end A130239.P4605926808634395640

noncomputable section

/-- A130239: Maximal index k of the square of a Fibonacci number such that Fib(k)^2 <= n (the 'lower' squared Fibonacci Inverse).

Offset 0, canonical program `A130239.P4605926808634395640`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130239 (n : ℕ) : ℤ :=
  A130239.P4605926808634395640.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130256.P8888391435086218073

`A130260(A005379(n))+A057427(A005379(n))`
-/

namespace A130256.P8888391435086218073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (A005379 n).toNat + A057427 (A005379 n).toNat

end

end A130256.P8888391435086218073

noncomputable section

/-- A130256: Minimal index k of an odd Fibonacci number A001519 such that A001519(k) = Fibonacci(2*k-1) >= n (the 'upper' odd Fibonacci Inverse).

Offset 0, canonical program `A130256.P8888391435086218073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130256 (n : ℕ) : ℤ :=
  A130256.P8888391435086218073.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130753.P6587758951476041366

`2*(A275437(n)+A240025(n))`
-/

namespace A130753.P6587758951476041366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A275437 n + A240025 n)

end

end A130753.P6587758951476041366

noncomputable section

/-- A130753: A folded-back triangular sequence based on symmetry of CnH2*n+2 straight chain alkanes and the number of hydrogen atoms of a given symmetry type: Besides methane at 4 there are only three symmetry types: two CH3's->6: a single CH2->2, two CH2's->4.

Offset 1, canonical program `A130753.P6587758951476041366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A130753 (n : ℕ) : ℤ :=
  A130753.P6587758951476041366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A130753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131323.P11558536358663034912

`2*A079523(n+1)+1`
-/

namespace A131323.P11558536358663034912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079523 (n + 1) + 1

end

end A131323.P11558536358663034912

noncomputable section

/-- A131323: Odd numbers whose binary expansion ends in an even number of 1's.

Offset 1, canonical program `A131323.P11558536358663034912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131323 (n : ℕ) : ℤ :=
  A131323.P11558536358663034912.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131853.P6901481179883769974

`∩[A378624(n+1), A008587(n)]`
-/

namespace A131853.P6901481179883769974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131853.P6901481179883769974

noncomputable section

/-- A131853: Numbers m such that z(m)=(0,0) with z as defined in A131851.

Offset 1, canonical program `A131853.P6901481179883769974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3750 terms. -/
def A131853 (n : ℕ) : ℤ :=
  (A131853.P6901481179883769974.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3750 terms. -/
def A131853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131856.P1766368326207610902

`∩[A131857(n+1), A016873(n)]`
-/

namespace A131856.P1766368326207610902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131856.P1766368326207610902

noncomputable section

/-- A131856: Numbers m such that z(m)=(0,1) with z as defined in A131851.

Offset 1, canonical program `A131856.P1766368326207610902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2748 terms. -/
def A131856 (n : ℕ) : ℤ :=
  (A131856.P1766368326207610902.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2748 terms. -/
def A131856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132143.P10521542141353229339

`∪[A038872(n+1), A045398(n+1)]`
-/

namespace A132143.P10521542141353229339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132143.P10521542141353229339

noncomputable section

/-- A132143: Prime numbers P such that (P^k-2) is not divisible by 35(=A119691(1)) for any value of k.

Offset 1, canonical program `A132143.P10521542141353229339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132143 (n : ℕ) : ℤ :=
  (A132143.P10521542141353229339.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132157.P13318743662329449319

`Δ[A202014(n+1)]`
-/

namespace A132157.P13318743662329449319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132157.P13318743662329449319

noncomputable section

/-- A132157: a(n) = number of times n occurs in A063882.

Offset 1, canonical program `A132157.P13318743662329449319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A132157 (n : ℕ) : ℤ :=
  A132157.P13318743662329449319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A132157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132665.P14542286321658660860

`A000045(A130233(n+2)+2)-(n+1)-3`
-/

namespace A132665.P14542286321658660860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A130233 (n + 2) + 2).toNat - (n + 1 : ℤ) - 3

end

end A132665.P14542286321658660860

noncomputable section

/-- A132665: a(1)=1, a(2)=3, a(n) = a(n-1) + n if the minimal positive integer not yet in the sequence is greater than a(n-1), else a(n) = a(n-1)-1.

Offset 1, canonical program `A132665.P14542286321658660860`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132665 (n : ℕ) : ℤ :=
  A132665.P14542286321658660860.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132665.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132885.P5107990570951772901

`A002426(A082375(n))*A011973(n)`
-/

namespace A132885.P5107990570951772901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (A082375 n).toNat * A011973 n

end

end A132885.P5107990570951772901

noncomputable section

/-- A132885: Triangle read by rows: T(n,k) is the number of paths in the right half-plane from (0,0) to (n,0), consisting of steps U=(1,1), D=(1,-1), h=(1,0) and H=(2,0), having k H=(2,0) steps (0 <= k <= floor(n/2)).

Offset 0, canonical program `A132885.P5107990570951772901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A132885 (n : ℕ) : ℤ :=
  A132885.P5107990570951772901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A132885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133290.P1520333583122382615

`filter[A004611(n+1), A069513(#)]`
-/

namespace A133290.P1520333583122382615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A133290.P1520333583122382615

noncomputable section

/-- A133290: Prime powers of the form (6n+1)^k.

Offset 1, canonical program `A133290.P1520333583122382615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. -/
def A133290 (n : ℕ) : ℤ :=
  A133290.P1520333583122382615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. -/
def A133290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133579.P16500229085264912069

`A000244(A253092(n))`
-/

namespace A133579.P16500229085264912069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A253092 n).toNat

end

end A133579.P16500229085264912069

noncomputable section

/-- A133579: a(0)=a(1)=1; for n > 1, a(n) = 3*a(n-1) if a(n-1) and n are coprime, otherwise a(n) = a(n-1)/gcd(a(n-1), n).

Offset 0, canonical program `A133579.P16500229085264912069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A133579 (n : ℕ) : ℤ :=
  A133579.P16500229085264912069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A133579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133635.P12044644420769387225

`filter[A133634(n+1), A011558(#)]`
-/

namespace A133635.P12044644420769387225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A133635.P12044644420769387225

noncomputable section

/-- A133635: Nonprime numbers k such that binomial(k+p,k) mod k = 1, where p=5.

Offset 1, canonical program `A133635.P12044644420769387225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 700 terms. -/
def A133635 (n : ℕ) : ℤ :=
  A133635.P12044644420769387225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 700 terms. -/
def A133635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133726.P3307844016044252173

`∑{d}[n+1, A007427(#)*A256281((n+1)/#)]`
-/

namespace A133726.P3307844016044252173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A256281 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133726.P3307844016044252173

noncomputable section

/-- A133726: Möbius transform of the Pell numbers (A000129).

Offset 1, canonical program `A133726.P3307844016044252173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A133726 (n : ℕ) : ℤ :=
  A133726.P3307844016044252173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A133726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134340.P8323735923062830065

`A214262(6*n+5)/24`
-/

namespace A134340.P8323735923062830065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214262 (6 * n + 5) : ℚ) / 24

end

end A134340.P8323735923062830065

noncomputable section

/-- A134340: Expansion of psi(x)^3 * f(-x^3)^3 / chi(-x)^2 in powers of x where psi(), chi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A134340.P8323735923062830065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1666 terms. -/
def A134340 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134340.P8323735923062830065.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1666 terms. -/
def A134340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134512.P14449246097379148271

`A291241(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A134512.P14449246097379148271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A291241 (n - 1) + a (n - 2)

end

end A134512.P14449246097379148271

noncomputable section

/-- A134512: Row sums of triangle A134511.

Offset 0, canonical program `A134512.P14449246097379148271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A134512 (n : ℕ) : ℤ :=
  A134512.P14449246097379148271.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A134512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135111.P10146640050812540402

`eq[A053735(n), A280167(A000120(n))]`
-/

namespace A135111.P10146640050812540402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280167 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135111.P10146640050812540402

noncomputable section

/-- A135111: Numbers such that the digital sum base 2 and the digital sum base 3 are in a ratio of 2:3.

Offset 1, canonical program `A135111.P10146640050812540402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 530 terms. -/
def A135111 (n : ℕ) : ℤ :=
  (A135111.P10146640050812540402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 530 terms. -/
def A135111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135323.P6195842534897767785

`(n+1)*A008480(n+1)`
-/

namespace A135323.P6195842534897767785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008480 (n + 1)

end

end A135323.P6195842534897767785

noncomputable section

/-- A135323: a(1)=1, a(n) = Sum_{p=prime, p|n} a(n/p)*p.

Offset 1, canonical program `A135323.P6195842534897767785`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135323 (n : ℕ) : ℤ :=
  A135323.P6195842534897767785.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135508.P13264437964193426359

`A370634(n+2)-2`
-/

namespace A135508.P13264437964193426359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370634 (n + 2) - 2

end

end A135508.P13264437964193426359

noncomputable section

/-- A135508: a(n) = x(n+1)/x(n) - 2 where x(1)=1 and x(n) = 2*x(n-1) + lcm(x(n-1),n).

Offset 1, canonical program `A135508.P13264437964193426359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A135508 (n : ℕ) : ℤ :=
  A135508.P13264437964193426359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A135508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135529.P639261192653949235

`A135533(n+1)+1-2^(A000120(n+1)-1)`
-/

namespace A135529.P639261192653949235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135533 (n + 1) + 1 : ℚ) - (2 : ℚ) ^ (A000120 (n + 1) - 1 : ℤ)

end

end A135529.P639261192653949235

noncomputable section

/-- A135529: Guy Steele's sequence GS(4,5) (see A135416).

Offset 1, canonical program `A135529.P639261192653949235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135533, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135529.P639261192653949235.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135533, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135568.P17812801388373794726

`floor((n+1)*∏[A158611(n+2)/(n+1)])`
-/

namespace A135568.P17812801388373794726
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158611 (n + 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A135568.P17812801388373794726

noncomputable section

/-- A135568: a(n) = floor( Product_{i=1..n} prime(i)/i ).

Offset 0, canonical program `A135568.P17812801388373794726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A135568 (n : ℕ) : ℤ :=
  A135568.P17812801388373794726.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A135568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135932.P7824624221458301450

`p?[A176864(n+1)]`
-/

namespace A135932.P7824624221458301450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135932.P7824624221458301450

noncomputable section

/-- A135932: Primes whose integer square root remainder is also prime.

Offset 1, canonical program `A135932.P7824624221458301450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1027 terms. -/
def A135932 (n : ℕ) : ℤ :=
  A135932.P7824624221458301450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1027 terms. -/
def A135932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135933.P13627273315557700751

`p?[comp[A176864(n+1)]]`
-/

namespace A135933.P13627273315557700751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A135933.P13627273315557700751

noncomputable section

/-- A135933: Primes whose integer square root remainder is not a prime.

Offset 1, canonical program `A135933.P13627273315557700751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1182 terms. -/
def A135933 (n : ℕ) : ℤ :=
  (A135933.P13627273315557700751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1182 terms. -/
def A135933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136056.P16665451693116353274

`ceil(A136066(n+1)/15)`
-/

namespace A136056.P16665451693116353274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136066 (n + 1) : ℚ) / 15⌉

end

end A136056.P16665451693116353274

noncomputable section

/-- A136056: Daughter primes of order 7.

Offset 1, canonical program `A136056.P16665451693116353274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136056 (n : ℕ) : ℤ :=
  A136056.P16665451693116353274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136084.P3655251885475289472

`p?[A004396(A102700(n+1)-1)]`
-/

namespace A136084.P3655251885475289472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A102700 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136084.P3655251885475289472

noncomputable section

/-- A136084: Son primes of order 7.

Offset 1, canonical program `A136084.P3655251885475289472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A136084 (n : ℕ) : ℤ :=
  A136084.P3655251885475289472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A136084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136208.P8175068401792268664

`p?[∪[A015915(n+1), A092402(n+1)]]`
-/

namespace A136208.P8175068401792268664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092402 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136208.P8175068401792268664

noncomputable section

/-- A136208: Primes p such that p-8 or p+8 is prime.

Offset 1, canonical program `A136208.P8175068401792268664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A136208 (n : ℕ) : ℤ :=
  (A136208.P8175068401792268664.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A136208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136333.P7255330385303398448

`eq[1, gcd(10, A007954(n))]`
-/

namespace A136333.P7255330385303398448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A007954 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136333.P7255330385303398448

noncomputable section

/-- A136333: Numbers containing only digits coprime to 10 in their decimal representation.

Offset 1, canonical program `A136333.P7255330385303398448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A136333 (n : ℕ) : ℤ :=
  (A136333.P7255330385303398448.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A136333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136655.P6898673837673144474

`A140210(n+1)*A140211(n+1)`
-/

namespace A136655.P6898673837673144474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140210 (n + 1) * A140211 (n + 1)

end

end A136655.P6898673837673144474

noncomputable section

/-- A136655: Product of odd divisors of n.

Offset 1, canonical program `A136655.P6898673837673144474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140210, A140211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A136655 (n : ℕ) : ℤ :=
  A136655.P6898673837673144474.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140210, A140211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A136655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137686.P2137066375668895625

`A081399(n)-A137687(n)`
-/

namespace A137686.P2137066375668895625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 n - A137687 n

end

end A137686.P2137066375668895625

noncomputable section

/-- A137686: a(n) = Bigomega(Catalan(n)) - round( 3 n /(2 log(n+2))) (= A081399 - A137687).

Offset 0, canonical program `A137686.P2137066375668895625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A137686 (n : ℕ) : ℤ :=
  A137686.P2137066375668895625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A137686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137709.P10048687972345600020

`2*A287775(n+1)-(n+1)`
-/

namespace A137709.P10048687972345600020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A287775 (n + 1) - (n + 1 : ℤ)

end

end A137709.P10048687972345600020

noncomputable section

/-- A137709: Secondary upper Wythoff sequence.

Offset 1, canonical program `A137709.P10048687972345600020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137709 (n : ℕ) : ℤ :=
  A137709.P10048687972345600020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137728.P9076727154508020560

`A056129(n+1)*A157928(n)`
-/

namespace A137728.P9076727154508020560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056129 (n + 1) * A157928 n

end

end A137728.P9076727154508020560

noncomputable section

/-- A137728: Second digit from the end of product of first n primes.

Offset 1, canonical program `A137728.P9076727154508020560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5787 terms. -/
def A137728 (n : ℕ) : ℤ :=
  A137728.P9076727154508020560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5787 terms. -/
def A137728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137734.P16570986701740849317

`A259361(A143051(n))+1`
-/

namespace A137734.P16570986701740849317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A143051 n).toNat + 1

end

end A137734.P16570986701740849317

noncomputable section

/-- A137734: a(0)=1. a(n) = ceiling(n/b(n)), where b(n) is the largest value among (a(0),a(1),...,a(n-1)).

Offset 0, canonical program `A137734.P16570986701740849317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137734 (n : ℕ) : ℤ :=
  A137734.P16570986701740849317.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137773.P5744758728077306555

`A247049(A131431(n))`
-/

namespace A137773.P5744758728077306555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A131431 n).toNat

end

end A137773.P5744758728077306555

noncomputable section

/-- A137773: Triangular sequence: The Fibonacci sequence on the diagonal, 1's at all other places.

Offset 1, canonical program `A137773.P5744758728077306555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137773 (n : ℕ) : ℤ :=
  A137773.P5744758728077306555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137877.P18443067678914737995

`∩[A111094(n+1), A138918(n+1)]`
-/

namespace A137877.P18443067678914737995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137877.P18443067678914737995

noncomputable section

/-- A137877: Numbers k such that 18*k - 1 and 18*k + 1 are twin primes.

Offset 1, canonical program `A137877.P18443067678914737995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2134 terms. -/
def A137877 (n : ℕ) : ℤ :=
  (A137877.P18443067678914737995.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2134 terms. -/
def A137877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138012.P10289845696173396267

`∑{d}[n+1, A000007((n+1)%A000005(#))]`
-/

namespace A138012.P10289845696173396267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (Int.tmod (n + 1 : ℤ) (A000005 d)).toNat

end

end A138012.P10289845696173396267

noncomputable section

/-- A138012: a(n) = number of positive divisors, k, of n where d(k) divides n (where d(k) = number of positive divisors of k, A000005).

Offset 1, canonical program `A138012.P10289845696173396267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138012 (n : ℕ) : ℤ :=
  A138012.P10289845696173396267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138172.P13850476572932011494

`lt[A000005(abs((n-1)%2+1-n)+2), A000005(n+1)]`
-/

namespace A138172.P13850476572932011494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|Int.tmod ((n : ℤ) - 1) 2 + 1 - (n : ℤ)| + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138172.P13850476572932011494

noncomputable section

/-- A138172: Even n where d(n) < d(n+1), where d(n) = number of positive divisors of n.

Offset 1, canonical program `A138172.P13850476572932011494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3657 terms. -/
def A138172 (n : ℕ) : ℤ :=
  (A138172.P13850476572932011494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3657 terms. -/
def A138172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138268.P13452783451208394077

`-A275858(2*(n+1))`
-/

namespace A138268.P13452783451208394077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A275858 (2 * (n + 1))

end

end A138268.P13452783451208394077

noncomputable section

/-- A138268: Negative of the Hankel transform of C(n) - C(n+2), where C = A000108.

Offset 0, canonical program `A138268.P13452783451208394077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A138268 (n : ℕ) : ℤ :=
  A138268.P13452783451208394077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A138268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138302.P16562127225600739451

`eq[1, A355823(n+1)]+1`
-/

namespace A138302.P16562127225600739451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355823 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138302.P16562127225600739451

noncomputable section

/-- A138302: Exponentially 2^n-numbers: 1 together with positive integers k such that all exponents in prime factorization of k are powers of 2.

Offset 1, canonical program `A138302.P16562127225600739451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138302 (n : ℕ) : ℤ :=
  (A138302.P16562127225600739451.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138624.P17333592088374729543

`floor(A138623(n+1)/17)`
-/

namespace A138624.P17333592088374729543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138623 (n + 1) : ℚ) / 17⌋

end

end A138624.P17333592088374729543

noncomputable section

/-- A138624: Nonnegative integers k such that 17*k+5 is prime.

Offset 1, canonical program `A138624.P17333592088374729543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138624 (n : ℕ) : ℤ :=
  A138624.P17333592088374729543.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138626.P1319008390697014529

`ceil(A138625(n+1)/17)`
-/

namespace A138626.P1319008390697014529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138625 (n + 1) : ℚ) / 17⌉

end

end A138626.P1319008390697014529

noncomputable section

/-- A138626: Nonnegative integers n such that 17*n-5 is prime.

Offset 1, canonical program `A138626.P1319008390697014529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138626 (n : ℕ) : ℤ :=
  A138626.P1319008390697014529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138628.P9747259890444117167

`ceil(A138627(n+1)/17)`
-/

namespace A138628.P9747259890444117167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138627 (n + 1) : ℚ) / 17⌉

end

end A138628.P9747259890444117167

noncomputable section

/-- A138628: Positive integers k such that 17*k-7 is prime.

Offset 1, canonical program `A138628.P9747259890444117167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138628 (n : ℕ) : ℤ :=
  A138628.P9747259890444117167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138630.P18334919423305993658

`floor(A138629(n+1)/17)`
-/

namespace A138630.P18334919423305993658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138629 (n + 1) : ℚ) / 17⌋

end

end A138630.P18334919423305993658

noncomputable section

/-- A138630: Nonnegative integers k such that 17*k+7 is prime.

Offset 1, canonical program `A138630.P18334919423305993658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138630 (n : ℕ) : ℤ :=
  A138630.P18334919423305993658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138632.P18181026254445876438

`floor(A138631(n+1)/17)`
-/

namespace A138632.P18181026254445876438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138631 (n + 1) : ℚ) / 17⌋

end

end A138632.P18181026254445876438

noncomputable section

/-- A138632: Nonnegative integers k such that 17*k+9 is prime.

Offset 1, canonical program `A138632.P18181026254445876438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138632 (n : ℕ) : ℤ :=
  A138632.P18181026254445876438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138634.P7859391578108386486

`ceil(A138633(n+1)/17)`
-/

namespace A138634.P7859391578108386486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138633 (n + 1) : ℚ) / 17⌉

end

end A138634.P7859391578108386486

noncomputable section

/-- A138634: Nonnegative integers k such that 17*k-9 is prime.

Offset 1, canonical program `A138634.P7859391578108386486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138634 (n : ℕ) : ℤ :=
  A138634.P7859391578108386486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138639.P4190226665619492302

`ceil(A138638(n+1)/19)`
-/

namespace A138639.P4190226665619492302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138638 (n + 1) : ℚ) / 19⌉

end

end A138639.P4190226665619492302

noncomputable section

/-- A138639: Nonnegative integers n such that 19*n-1 is prime.

Offset 1, canonical program `A138639.P4190226665619492302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138639 (n : ℕ) : ℤ :=
  A138639.P4190226665619492302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138641.P13288651267268791020

`ceil(A138640(n+1)/19)`
-/

namespace A138641.P13288651267268791020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138640 (n + 1) : ℚ) / 19⌉

end

end A138641.P13288651267268791020

noncomputable section

/-- A138641: Nonnegative integers n such that 19*n-2 is prime.

Offset 1, canonical program `A138641.P13288651267268791020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138641 (n : ℕ) : ℤ :=
  A138641.P13288651267268791020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138643.P5751644139118484023

`ceil(A138642(n+1)/19)`
-/

namespace A138643.P5751644139118484023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138642 (n + 1) : ℚ) / 19⌉

end

end A138643.P5751644139118484023

noncomputable section

/-- A138643: Nonnegative integers k such that 19*k-3 is prime.

Offset 1, canonical program `A138643.P5751644139118484023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138643 (n : ℕ) : ℤ :=
  A138643.P5751644139118484023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138666.P6051759932238396872

`A065475(A166602(n+1))`
-/

namespace A138666.P6051759932238396872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A166602 (n + 1)).toNat

end

end A138666.P6051759932238396872

noncomputable section

/-- A138666: Numbers n such that every sum of consecutive positive numbers ending in n is not prime.

Offset 1, canonical program `A138666.P6051759932238396872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138666 (n : ℕ) : ℤ :=
  A138666.P6051759932238396872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139333.P6431755698224016243

`floor(A192232(n+1)+A112576(n)*ϕ)`
-/

namespace A139333.P6431755698224016243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A192232 (n + 1) : ℝ) + (A112576 n : ℝ) * Real.goldenRatio⌋

end

end A139333.P6431755698224016243

noncomputable section

/-- A139333: Floor of entry (2,1) of [0,1; 1,phi]^n.

Offset 1, canonical program `A139333.P6431755698224016243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192232, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139333 (n : ℕ) : ℤ :=
  A139333.P6431755698224016243.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192232, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139333.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139367.P12848330086499471846

`A102700(n+1)-A102342(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139367.P12848330086499471846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1) - A102342 (n + 1)

end

end A139367.P12848330086499471846

noncomputable section

/-- A139367: a(n) = A102700(n) - A102342(n).

Offset 1, canonical program `A139367.P12848330086499471846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102342, A102700, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A139367 (n : ℕ) : ℤ :=
  A139367.P12848330086499471846.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102342, A102700, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A139367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139390.P2912127074114890688

`A034387(A000244(n))`
-/

namespace A139390.P2912127074114890688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A000244 n).toNat

end

end A139390.P2912127074114890688

noncomputable section

/-- A139390: Sum of primes <= 3^n.

Offset 0, canonical program `A139390.P2912127074114890688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139390 (n : ℕ) : ℤ :=
  A139390.P2912127074114890688.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139406.P4242831370835616806

`∩[A005123(n+1), A105133(n+1)]`
-/

namespace A139406.P4242831370835616806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139406.P4242831370835616806

noncomputable section

/-- A139406: Numbers k such that 8*k+1 and 8*k+5 are primes.

Offset 1, canonical program `A139406.P4242831370835616806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1084 terms. -/
def A139406 (n : ℕ) : ℤ :=
  (A139406.P4242831370835616806.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1084 terms. -/
def A139406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139422.P6616369610320219079

`a(n-1)+A000005(a(n-1))+A000005(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A139422.P6616369610320219079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A000005 (a (n - 1)).toNat + A000005 (a (n - 2)).toNat

end

end A139422.P6616369610320219079

noncomputable section

/-- A139422: a(1)=a(2)=1. For n >= 3, a(n) = a(n-1) + d(a(n-1)) + d(a(n-2)), where d(m) is the number of positive divisors of m.

Offset 1, canonical program `A139422.P6616369610320219079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4012 terms. -/
def A139422 (n : ℕ) : ℤ :=
  A139422.P6616369610320219079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4012 terms. -/
def A139422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139423.P3314553419540253664

`a(n-1)+A000005(a(n-1))+A000005(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A139423.P3314553419540253664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A000005 (a (n - 1)).toNat + A000005 (a (n - 2)).toNat

end

end A139423.P3314553419540253664

noncomputable section

/-- A139423: a(1)=1, a(2)=2. For n >= 3, a(n) = a(n-1) + d(a(n-1)) + d(a(n-2)), where d(m) is the number of positive divisors of m.

Offset 1, canonical program `A139423.P3314553419540253664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7595 terms. -/
def A139423 (n : ℕ) : ℤ :=
  A139423.P3314553419540253664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7595 terms. -/
def A139423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139528.P15347248445636500749

`eq[2*n+1, A295012(2*n+1)]`
-/

namespace A139528.P15347248445636500749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295012 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139528.P15347248445636500749

noncomputable section

/-- A139528: Numbers k such that 24*k + 11 is prime.

Offset 1, canonical program `A139528.P15347248445636500749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139528 (n : ℕ) : ℤ :=
  (A139528.P15347248445636500749.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139645.P1524683957140260505

`∩[A007519(n+1), A274675(n+1)]`
-/

namespace A139645.P1524683957140260505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P1524683957140260505

noncomputable section

/-- A139645: Primes of the form x^2 + 112*y^2.

Offset 1, canonical program `A139645.P1524683957140260505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4975 terms. -/
def A139645 (n : ℕ) : ℤ :=
  (A139645.P1524683957140260505.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4975 terms. -/
def A139645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139827.P12561689821490357478

`∩[A191060(n+1), A243183(n+1)]`
-/

namespace A139827.P12561689821490357478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P12561689821490357478

noncomputable section

/-- A139827: Primes of the form 2x^2 + 2xy + 17y^2.

Offset 1, canonical program `A139827.P12561689821490357478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A139827 (n : ℕ) : ℤ :=
  (A139827.P12561689821490357478.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A139827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139887.P8075278152614741056

`∩[A106859(n+1), A141190(n+1)]`
-/

namespace A139887.P8075278152614741056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139887.P8075278152614741056

noncomputable section

/-- A139887: Primes of the form 2x^2+105y^2.

Offset 1, canonical program `A139887.P8075278152614741056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A139887 (n : ℕ) : ℤ :=
  (A139887.P8075278152614741056.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A139887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139915.P6958585210119532422

`∩[A033205(n+1), A141191(n+1)]`
-/

namespace A139915.P6958585210119532422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P6958585210119532422

noncomputable section

/-- A139915: Primes of the form 5x^2+56y^2.

Offset 1, canonical program `A139915.P6958585210119532422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A139915 (n : ℕ) : ℤ :=
  (A139915.P6958585210119532422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A139915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140098.P3927488538195493875

`A184821(n+1)-A158919(n+1)`
-/

namespace A140098.P3927488538195493875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184821 (n + 1) - A158919 (n + 1)

end

end A140098.P3927488538195493875

noncomputable section

/-- A140098: A Beatty sequence: a(n) = [n*(1+1/t)], where t = tribonacci constant (A058265); complement of A140099.

Offset 1, canonical program `A140098.P3927488538195493875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140098 (n : ℕ) : ℤ :=
  A140098.P3927488538195493875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140298.P6130233779866552396

`∑[A140313(n+2)]+1`
-/

namespace A140298.P6130233779866552396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A140298.P6130233779866552396

noncomputable section

/-- A140298: a(0)=1; a(3n+1) = a(3n)+1, a(3n+2) = a(3n+1) + a(3n) (=3*A000244), a(3n+3) = a(3n+2) + a(3n) (=A003462(n+2)).

Offset 0, canonical program `A140298.P6130233779866552396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A140298 (n : ℕ) : ℤ :=
  A140298.P6130233779866552396.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A140298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140390.P5860684244642945090

`filter[A215146(n), A373977(#)]`
-/

namespace A140390.P5860684244642945090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A140390.P5860684244642945090

noncomputable section

/-- A140390: Nonprimes of the form 21k+1.

Offset 1, canonical program `A140390.P5860684244642945090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3975 terms. -/
def A140390 (n : ℕ) : ℤ :=
  A140390.P5860684244642945090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3975 terms. -/
def A140390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140459.P6193242358392747816

`eq[0, and(n+1, A000005(n+1))]+1`
-/

namespace A140459.P6193242358392747816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A000005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A140459.P6193242358392747816

noncomputable section

/-- A140459: A positive integer n is included if n can be added to d(n) in binary without any carries, where d(n) is the number of positive divisors of n. In other words, no 1 in the binary representation of n is in the same position as any 1 in the binary representation of d(n).

Offset 1, canonical program `A140459.P6193242358392747816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140459 (n : ℕ) : ℤ :=
  (A140459.P6193242358392747816.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140616.P17621141678928507057

`∩[A040117(n+1), A141191(n+1)]`
-/

namespace A140616.P17621141678928507057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P17621141678928507057

noncomputable section

/-- A140616: Primes of the form 5x^2+4xy+68y^2.

Offset 1, canonical program `A140616.P17621141678928507057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2496 terms. -/
def A140616 (n : ℕ) : ℤ :=
  (A140616.P17621141678928507057.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2496 terms. -/
def A140616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140653.P6821184278077143935

`(C(2, n)-char[A193732(n+1)])²`
-/

namespace A140653.P6821184278077143935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193732 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A140653.P6821184278077143935

noncomputable section

/-- A140653: A triangular sequence of cyclotomic polynomial doubling: For cyclotomic polynomial:c(x,n) p(x,n)=c(x,Prime[n])*c(x,2*Prime[n]).

Offset 1, canonical program `A140653.P6821184278077143935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A140653 (n : ℕ) : ℤ :=
  A140653.P6821184278077143935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A140653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140843.P9580371541351845501

`∩[A140569(n+1), A141897(n+1)]`
-/

namespace A140843.P9580371541351845501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P9580371541351845501

noncomputable section

/-- A140843: Primes of the form 210k + 19.

Offset 1, canonical program `A140843.P9580371541351845501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A140843 (n : ℕ) : ℤ :=
  (A140843.P9580371541351845501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A140843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140844.P12090693961516773908

`∩[A140572(n+1), A142091(n+1)]`
-/

namespace A140844.P12090693961516773908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P12090693961516773908

noncomputable section

/-- A140844: Primes of the form 210k + 23.

Offset 1, canonical program `A140844.P12090693961516773908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A140844 (n : ℕ) : ℤ :=
  (A140844.P12090693961516773908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A140844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140846.P12576340371996529633

`∩[A140587(n+1), A142096(n+1)]`
-/

namespace A140846.P12576340371996529633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P12576340371996529633

noncomputable section

/-- A140846: Primes of the form 210k + 31.

Offset 1, canonical program `A140846.P12576340371996529633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A140846 (n : ℕ) : ℤ :=
  (A140846.P12576340371996529633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A140846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140847.P3135573964198693593

`∩[A140593(n+1), A142077(n+1)]`
-/

namespace A140847.P3135573964198693593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P3135573964198693593

noncomputable section

/-- A140847: Primes of the form 210k + 37.

Offset 1, canonical program `A140847.P3135573964198693593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A140847 (n : ℕ) : ℤ :=
  (A140847.P3135573964198693593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A140847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140849.P15281982838425384881

`∩[A140640(n+1), A142081(n+1)]`
-/

namespace A140849.P15281982838425384881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P15281982838425384881

noncomputable section

/-- A140849: Primes of the form 210k + 43.

Offset 1, canonical program `A140849.P15281982838425384881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. -/
def A140849 (n : ℕ) : ℤ :=
  (A140849.P15281982838425384881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. -/
def A140849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140850.P1912603944725706303

`∩[A140641(n+1), A142084(n+1)]`
-/

namespace A140850.P1912603944725706303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P1912603944725706303

noncomputable section

/-- A140850: Primes of the form 210k + 47.

Offset 1, canonical program `A140850.P1912603944725706303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A140850 (n : ℕ) : ℤ :=
  (A140850.P1912603944725706303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A140850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140851.P6553668124277126355

`∩[A140655(n+1), A142088(n+1)]`
-/

namespace A140851.P6553668124277126355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P6553668124277126355

noncomputable section

/-- A140851: Primes of the form 210k + 53.

Offset 1, canonical program `A140851.P6553668124277126355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4975 terms. -/
def A140851 (n : ℕ) : ℤ :=
  (A140851.P6553668124277126355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4975 terms. -/
def A140851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140852.P12170253662013968918

`∩[A140687(n+1), A142092(n+1)]`
-/

namespace A140852.P12170253662013968918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P12170253662013968918

noncomputable section

/-- A140852: Primes of the form 210k + 59.

Offset 1, canonical program `A140852.P12170253662013968918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5042 terms. -/
def A140852 (n : ℕ) : ℤ :=
  (A140852.P12170253662013968918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5042 terms. -/
def A140852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140854.P16545780512389553731

`∩[A140726(n+1), A142093(n+1)]`
-/

namespace A140854.P16545780512389553731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P16545780512389553731

noncomputable section

/-- A140854: Primes of the form 210k + 61.

Offset 1, canonical program `A140854.P16545780512389553731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A140854 (n : ℕ) : ℤ :=
  (A140854.P16545780512389553731.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A140854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140855.P12155307500454723385

`∩[A140731(n+1), A142097(n+1)]`
-/

namespace A140855.P12155307500454723385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P12155307500454723385

noncomputable section

/-- A140855: Primes of the form 210k + 67.

Offset 1, canonical program `A140855.P12155307500454723385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A140855 (n : ℕ) : ℤ :=
  (A140855.P12155307500454723385.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A140855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140857.P17096779143594867496

`∩[A140742(n+1), A142078(n+1)]`
-/

namespace A140857.P17096779143594867496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P17096779143594867496

noncomputable section

/-- A140857: Primes of the form 210k + 73.

Offset 1, canonical program `A140857.P17096779143594867496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4988 terms. -/
def A140857 (n : ℕ) : ℤ :=
  (A140857.P17096779143594867496.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4988 terms. -/
def A140857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141113.P12877220988294223017

`eq[0, (n+1)%A000005(A000005(n+1))]+1`
-/

namespace A141113.P12877220988294223017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000005 (A000005 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A141113.P12877220988294223017

noncomputable section

/-- A141113: Positive integers k such that d(d(k)) divides k, where d(k) is the number of divisors of k.

Offset 1, canonical program `A141113.P12877220988294223017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141113 (n : ℕ) : ℤ :=
  (A141113.P12877220988294223017.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141570.P17933169272359299398

`∩[A140771(n+1), A141898(n+1)]`
-/

namespace A141570.P17933169272359299398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P17933169272359299398

noncomputable section

/-- A141570: Primes of the form 2*3*5*7*n+83.

Offset 1, canonical program `A141570.P17933169272359299398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. -/
def A141570 (n : ℕ) : ℤ :=
  (A141570.P17933169272359299398.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. -/
def A141570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141777.P6795889752722178215

`∩[A045355(n+1), A191060(n+1)]`
-/

namespace A141777.P6795889752722178215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P6795889752722178215

noncomputable section

/-- A141777: Primes of the form -3*x^2 + 4*x*y + 6*y^2 (as well as of the form 7*x^2 + 12*x*y + 2*y^2).

Offset 1, canonical program `A141777.P6795889752722178215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A141777 (n : ℕ) : ℤ :=
  (A141777.P6795889752722178215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A141777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141866.P14888924645696795511

`∩[A140772(n+1), A141890(n+1)]`
-/

namespace A141866.P14888924645696795511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P14888924645696795511

noncomputable section

/-- A141866: Primes of the form 2*3*5*7*k+89, k >= 0.

Offset 1, canonical program `A141866.P14888924645696795511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A141866 (n : ℕ) : ℤ :=
  (A141866.P14888924645696795511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A141866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142295.P4010947513429565633

`A141854(eq[2, and(2, A141854(n+1))]+1)`
-/

namespace A142295.P4010947513429565633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A141854 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142295.P4010947513429565633

noncomputable section

/-- A142295: Primes congruent to 7 mod 44.

Offset 1, canonical program `A142295.P4010947513429565633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4989 terms. -/
def A142295 (n : ℕ) : ℤ :=
  A142295.P4010947513429565633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4989 terms. -/
def A142295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142305.P14501484807531580135

`A141854(eq[1, and(3, A141854(n+1))]+1)`
-/

namespace A142305.P14501484807531580135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A141854 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142305.P14501484807531580135

noncomputable section

/-- A142305: Primes congruent to 29 mod 44.

Offset 1, canonical program `A142305.P14501484807531580135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A142305 (n : ℕ) : ℤ :=
  A142305.P14501484807531580135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A142305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142515.P6396351685030339680

`record[A093191(n+1)/A093191(n+1)%4]`
-/

namespace A142515.P6396351685030339680
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093191 (n + 1) : ℚ) / (Int.tmod (A093191 (n + 1)) 4 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142515.P6396351685030339680

noncomputable section

/-- A142515: Primes congruent to 17 mod 52.

Offset 1, canonical program `A142515.P6396351685030339680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A142515 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A142515.P6396351685030339680.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A142515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142517.P2418825759442637778

`A092178(eq[1, A092178(n+1)%4]+1)`
-/

namespace A142517.P2418825759442637778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092178 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142517.P2418825759442637778

noncomputable section

/-- A142517: Primes congruent to 21 mod 52.

Offset 1, canonical program `A142517.P2418825759442637778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5017 terms. -/
def A142517 (n : ℕ) : ℤ :=
  A142517.P2418825759442637778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5017 terms. -/
def A142517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142600.P14886303188790276877

`A174325(n+2)`
-/

namespace A142600.P14886303188790276877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174325 (n + 2)

end

end A142600.P14886303188790276877

noncomputable section

/-- A142600: Third trisection of A061037.

Offset 1, canonical program `A142600.P14886303188790276877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A142600 (n : ℕ) : ℤ :=
  A142600.P14886303188790276877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A142600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143331.P16828638926480326570

`A026465(2*n+1)`
-/

namespace A143331.P16828638926480326570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (2 * n + 1)

end

end A143331.P16828638926480326570

noncomputable section

/-- A143331: Lengths of successive runs of 0's in the Thue-Morse sequence A010060.

Offset 1, canonical program `A143331.P16828638926480326570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143331 (n : ℕ) : ℤ :=
  A143331.P16828638926480326570.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144291.P10227368257690352592

`A000217(record[n*A323162(n+1)])`
-/

namespace A144291.P10227368257690352592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A323162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144291.P10227368257690352592

noncomputable section

/-- A144291: Triangular numbers n*(n-1)/2 with n and n -1 nonprime.

Offset 1, canonical program `A144291.P10227368257690352592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144291 (n : ℕ) : ℤ :=
  A144291.P10227368257690352592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144976.P4719089841805348065

`filter[A336064(n+1), A087049(#)]`
-/

namespace A144976.P4719089841805348065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A144976.P4719089841805348065

noncomputable section

/-- A144976: Nonsquarefree numbers k such that k is divisible by the maximal exponent in the prime factorization of k.

Offset 1, canonical program `A144976.P4719089841805348065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2838 terms. -/
def A144976 (n : ℕ) : ℤ :=
  A144976.P4719089841805348065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2838 terms. -/
def A144976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145016.P7226238084777437609

`p?[A263651(n+2)]`
-/

namespace A145016.P7226238084777437609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145016.P7226238084777437609

noncomputable section

/-- A145016: Primes p of the form 4k+1 for which p - floor(sqrt(p))^2 is a square.

Offset 1, canonical program `A145016.P7226238084777437609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145016 (n : ℕ) : ℤ :=
  A145016.P7226238084777437609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145312.P5025964341216795

`(n+1)*A145094(n+2)`
-/

namespace A145312.P5025964341216795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A145094 (n + 2)

end

end A145312.P5025964341216795

noncomputable section

/-- A145312: Coefficients in expansion of E''_4(q), where E_4 is the Eisenstein series in A004009.

Offset 0, canonical program `A145312.P5025964341216795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2077 terms. -/
def A145312 (n : ℕ) : ℤ :=
  A145312.P5025964341216795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2077 terms. -/
def A145312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145488.P501580674884008196

`(A145474(n+1)-13)/12`
-/

namespace A145488.P501580674884008196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145474 (n + 1) - 13 : ℚ) / 12

end

end A145488.P501580674884008196

noncomputable section

/-- A145488: Numbers k such that 6k+13 is prime and 12k+13 is also prime.

Offset 1, canonical program `A145488.P501580674884008196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145488 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145488.P501580674884008196.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145488.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147594.P14715063837161271747

`A000005(n+1+a(n-1))` with `a(0)=1`
-/

namespace A147594.P14715063837161271747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 ((n + 1 : ℤ) + a (n - 1)).toNat

end

end A147594.P14715063837161271747

noncomputable section

/-- A147594: a(n) = sigma_0(n + a(n-1)), with a(1) = 1.

Offset 1, canonical program `A147594.P14715063837161271747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147594 (n : ℕ) : ℤ :=
  A147594.P14715063837161271747.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147594.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147809.P5104423033747113126

`A000005(A002522(n+1))/2-1`
-/

namespace A147809.P5104423033747113126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A002522 (n + 1)).toNat : ℚ) / 2 - 1

end

end A147809.P5104423033747113126

noncomputable section

/-- A147809: Half the number of proper divisors (> 1) of n^2 + 1, i.e., tau(n^2 + 1)/2 - 1.

Offset 1, canonical program `A147809.P5104423033747113126`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147809 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A147809.P5104423033747113126.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147809.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147814.P6067598058715786826

`A292046(A008864(n+1))-p?[A005100(n+1)]`
-/

namespace A147814.P6067598058715786826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292046 (A008864 (n + 1)).toNat - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A147814.P6067598058715786826

noncomputable section

/-- A147814: a(n) is the number of bits in the Elias omega-coded value of prime(n).

Offset 1, canonical program `A147814.P6067598058715786826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A147814 (n : ℕ) : ℤ :=
  A147814.P6067598058715786826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A147814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147956.P1737531422126429600

`eq[1, A005092(n+1)]+1`
-/

namespace A147956.P1737531422126429600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A147956.P1737531422126429600

noncomputable section

/-- A147956: All positive integers that are not multiples of any Fibonacci numbers >= 2.

Offset 1, canonical program `A147956.P1737531422126429600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4843 terms. -/
def A147956 (n : ℕ) : ℤ :=
  (A147956.P1737531422126429600.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4843 terms. -/
def A147956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151948.P7561616037466402958

`A000005(A062402(n+1))`
-/

namespace A151948.P7561616037466402958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A062402 (n + 1)).toNat

end

end A151948.P7561616037466402958

noncomputable section

/-- A151948: a(n) = tau(sigma(phi(n))).

Offset 1, canonical program `A151948.P7561616037466402958`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A062402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A151948 (n : ℕ) : ℤ :=
  A151948.P7561616037466402958.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A062402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A151948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152528.P1727933196065479593

`A152532(n+1)-p?[a(n-1)+2]` with `a(0)=1`
-/

namespace A152528.P1727933196065479593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152532 (n + 1) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A152528.P1727933196065479593

noncomputable section

/-- A152528: a(n) = p(n)*p(n+2) - 3*p(n+1), where p(n) is the n-th prime.

Offset 1, canonical program `A152528.P1727933196065479593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152528 (n : ℕ) : ℤ :=
  A152528.P1727933196065479593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104637.P9162351111245222730

`A196563(A000040(n+1))`
-/

namespace A104637.P9162351111245222730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A000040 (n + 1)).toNat

end

end A104637.P9162351111245222730

noncomputable section

/-- A104637: Number of even digits in n-th prime.

Offset 1, canonical program `A104637.P9162351111245222730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A196563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104637 (n : ℕ) : ℤ :=
  A104637.P9162351111245222730.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A196563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104639.P5236722509912022066

`A196563((n+1)^3)`
-/

namespace A104639.P5236722509912022066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 ((n + 1) ^ 3)

end

end A104639.P5236722509912022066

noncomputable section

/-- A104639: Number of even digits in n^3.

Offset 1, canonical program `A104639.P5236722509912022066`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A196563, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104639 (n : ℕ) : ℤ :=
  A104639.P5236722509912022066.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A196563, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104639.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105126.P17832281701404375684

`∪[A142038(n+1), A142045(n+1)]`
-/

namespace A105126.P17832281701404375684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A105126.P17832281701404375684

noncomputable section

/-- A105126: Primes of the form 16n+9.

Offset 1, canonical program `A105126.P17832281701404375684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105126 (n : ℕ) : ℤ :=
  (A105126.P17832281701404375684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105131.P10156080793421485626

`∩[A158231(2*n+1), A133870(n+2)]`
-/

namespace A105131.P10156080793421485626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133870 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105131.P10156080793421485626

noncomputable section

/-- A105131: Primes of the form 512n+257.

Offset 1, canonical program `A105131.P10156080793421485626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A105131 (n : ℕ) : ℤ :=
  (A105131.P10156080793421485626.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A105131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106104.P9737292907009489359

`p?[A284065(n+1)]`
-/

namespace A106104.P9737292907009489359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106104.P9737292907009489359

noncomputable section

/-- A106104: Primes with minimal digit = 4.

Offset 1, canonical program `A106104.P9737292907009489359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A106104 (n : ℕ) : ℤ :=
  A106104.P9737292907009489359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A106104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106105.P11111167386212144028

`p?[A284066(n+1)]`
-/

namespace A106105.P11111167386212144028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106105.P11111167386212144028

noncomputable section

/-- A106105: Primes with minimal digit = 5.

Offset 1, canonical program `A106105.P11111167386212144028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. -/
def A106105 (n : ℕ) : ℤ :=
  A106105.P11111167386212144028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. -/
def A106105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106106.P2162882083934937386

`p?[A284067(n+1)]`
-/

namespace A106106.P2162882083934937386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106106.P2162882083934937386

noncomputable section

/-- A106106: Primes with minimal digit = 6.

Offset 1, canonical program `A106106.P2162882083934937386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A106106 (n : ℕ) : ℤ :=
  A106106.P2162882083934937386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A106106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107305.P9243721585746097380

`(A141856(n+1)+2)/11+1`
-/

namespace A107305.P9243721585746097380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141856 (n + 1) + 2 : ℚ) / 11 + 1

end

end A107305.P9243721585746097380

noncomputable section

/-- A107305: Numbers k such that 11*k - 13 is prime.

Offset 1, canonical program `A107305.P9243721585746097380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107305 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107305.P9243721585746097380.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107306.P10736151722270908272

`(A140543(n+1)+19)/17`
-/

namespace A107306.P10736151722270908272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140543 (n + 1) + 19 : ℚ) / 17

end

end A107306.P10736151722270908272

noncomputable section

/-- A107306: Numbers k such that (17*k - 19) is prime.

Offset 1, canonical program `A107306.P10736151722270908272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107306 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107306.P10736151722270908272.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107960.P3984212502500301092

`ceil(A141857(n+1)/11)`
-/

namespace A107960.P3984212502500301092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141857 (n + 1) : ℚ) / 11⌉

end

end A107960.P3984212502500301092

noncomputable section

/-- A107960: Numbers n such that 11*n - 1 is prime.

Offset 1, canonical program `A107960.P3984212502500301092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107960 (n : ℕ) : ℤ :=
  A107960.P3984212502500301092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107992.P639525701864077716

`ceil(A141855(n+1)/11)`
-/

namespace A107992.P639525701864077716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141855 (n + 1) : ℚ) / 11⌉

end

end A107992.P639525701864077716

noncomputable section

/-- A107992: Numbers n such that 11*n - 3 is prime.

Offset 1, canonical program `A107992.P639525701864077716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107992 (n : ℕ) : ℤ :=
  A107992.P639525701864077716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107994.P14297671034442261939

`(A141856(n+1)+2)/11`
-/

namespace A107994.P14297671034442261939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141856 (n + 1) + 2 : ℚ) / 11

end

end A107994.P14297671034442261939

noncomputable section

/-- A107994: Numbers n such that 11*n - 2 is prime.

Offset 1, canonical program `A107994.P14297671034442261939`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141856, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107994 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107994.P14297671034442261939.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141856, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108232.P12864365856612306352

`ceil(A141851(n+1)/11)`
-/

namespace A108232.P12864365856612306352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141851 (n + 1) : ℚ) / 11⌉

end

end A108232.P12864365856612306352

noncomputable section

/-- A108232: Numbers n such that 11*n - 7 is prime.

Offset 1, canonical program `A108232.P12864365856612306352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108232 (n : ℕ) : ℤ :=
  A108232.P12864365856612306352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109066.P12295407533363932252

`A193238(A000040(n+1))`
-/

namespace A109066.P12295407533363932252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A000040 (n + 1)).toNat

end

end A109066.P12295407533363932252

noncomputable section

/-- A109066: Number of prime digits in n-th prime.

Offset 1, canonical program `A109066.P12295407533363932252`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A193238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109066 (n : ℕ) : ℤ :=
  A109066.P12295407533363932252.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A193238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109066.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111369.P14796522210221468630

`floor(A140373(n+1)/13)`
-/

namespace A111369.P14796522210221468630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140373 (n + 1) : ℚ) / 13⌋

end

end A111369.P14796522210221468630

noncomputable section

/-- A111369: Numbers k such that 13*k + 11 is prime.

Offset 1, canonical program `A111369.P14796522210221468630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111369 (n : ℕ) : ℤ :=
  A111369.P14796522210221468630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119431.P16119249505349426533

`eq[1, A318875(n+1)]+1`
-/

namespace A119431.P16119249505349426533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318875 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119431.P16119249505349426533

noncomputable section

/-- A119431: Primitive elements of A054741.

Offset 1, canonical program `A119431.P16119249505349426533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2830 terms. -/
def A119431 (n : ℕ) : ℤ :=
  (A119431.P16119249505349426533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2830 terms. -/
def A119431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124759.P11258392673958110948

`A285097(n)+a(A004526(n))` with `a(0)=0`
-/

namespace A124759.P11258392673958110948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A285097 n + a (A004526 n).toNat

end

end A124759.P11258392673958110948

noncomputable section

/-- A124759: Sum of products of consecutive terms for compositions in standard order.

Offset 0, canonical program `A124759.P11258392673958110948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A124759 (n : ℕ) : ℤ :=
  A124759.P11258392673958110948.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A124759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127576.P6805997865159069615

`∪[A142041(n+1), A127578(n+1)]`
-/

namespace A127576.P6805997865159069615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P6805997865159069615

noncomputable section

/-- A127576: Primes of the form 16n+15.

Offset 1, canonical program `A127576.P6805997865159069615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127576 (n : ℕ) : ℤ :=
  (A127576.P6805997865159069615.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127589.P13683201596712911778

`∪[A142036(n+1), A142043(n+1)]`
-/

namespace A127589.P13683201596712911778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P13683201596712911778

noncomputable section

/-- A127589: Primes of the form 16k + 5.

Offset 1, canonical program `A127589.P13683201596712911778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127589 (n : ℕ) : ℤ :=
  (A127589.P13683201596712911778.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131651.P2612238070486693050

`eq[4, A318874(n+1)]+1`
-/

namespace A131651.P2612238070486693050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131651.P2612238070486693050

noncomputable section

/-- A131651: Positive integers obtained as the difference of two triangular numbers in exactly 4 ways.

Offset 1, canonical program `A131651.P2612238070486693050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131651 (n : ℕ) : ℤ :=
  (A131651.P2612238070486693050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133869.P3744791445234372630

`floor(A133870(n+1)/32)`
-/

namespace A133869.P3744791445234372630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133870 (n + 1) : ℚ) / 32⌋

end

end A133869.P3744791445234372630

noncomputable section

/-- A133869: Numbers k such that 32*k + 1 is prime.

Offset 1, canonical program `A133869.P3744791445234372630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133869 (n : ℕ) : ℤ :=
  A133869.P3744791445234372630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140012.P3091804146325170739

`∩[A139854(n+1), A140619(n+1)]`
-/

namespace A140012.P3091804146325170739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P3091804146325170739

noncomputable section

/-- A140012: Primes of the form 40x^2+40xy+43y^2.

Offset 1, canonical program `A140012.P3091804146325170739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5019 terms. -/
def A140012 (n : ℕ) : ℤ :=
  (A140012.P3091804146325170739.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5019 terms. -/
def A140012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144922.P10627848105805684585

`eq[0, (n+1)%A158275(n+1)]+1`
-/

namespace A144922.P10627848105805684585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A158275 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A144922.P10627848105805684585

noncomputable section

/-- A144922: Numbers k such that k*sigma_2(k)/sigma_1(k) is an integer.

Offset 1, canonical program `A144922.P10627848105805684585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 570 terms. -/
def A144922 (n : ℕ) : ℤ :=
  (A144922.P10627848105805684585.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 570 terms. -/
def A144922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147648.P4961228732914761023

`round(log2(A284389(val(3*n-(n-2), 2))))`
-/

namespace A147648.P4961228732914761023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A284389 (SequenceMachineLib.valuation ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat 2) : ℝ))

end

end A147648.P4961228732914761023

noncomputable section

/-- A147648: Number of distinct even superperfect numbers dividing n.

Offset 1, canonical program `A147648.P4961228732914761023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147648 (n : ℕ) : ℤ :=
  A147648.P4961228732914761023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096215.P7687908874337330203

`A007917(A001043(n+1))`
-/

namespace A096215.P7687908874337330203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A001043 (n + 1)).toNat

end

end A096215.P7687908874337330203

noncomputable section

/-- A096215: Greatest primes not greater than the sum of two succeeding primes.

Offset 1, canonical program `A096215.P7687908874337330203`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, A007917, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A096215 (n : ℕ) : ℤ :=
  A096215.P7687908874337330203.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, A007917, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A096215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096936.P4269923552205250814

`A002324(n+1)*A010684(n)`
-/

namespace A096936.P4269923552205250814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) * A010684 n

end

end A096936.P4269923552205250814

noncomputable section

/-- A096936: Half of number of integer solutions to the equation x^2 + 3y^2 = n.

Offset 1, canonical program `A096936.P4269923552205250814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096936 (n : ℕ) : ℤ :=
  A096936.P4269923552205250814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099378.P9213895567346836025

`A057020(n+1)/gcd(A057020(n+1), A131738(n))`
-/

namespace A099378.P9213895567346836025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057020 (n + 1) : ℚ) / (Int.gcd (A057020 (n + 1)) (A131738 n) : ℚ)

end

end A099378.P9213895567346836025

noncomputable section

/-- A099378: Denominators of the harmonic means of the divisors of the positive integers.

Offset 1, canonical program `A099378.P9213895567346836025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099378 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099378.P9213895567346836025.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099637.P7631160485541919359

`lt[A099636(n+1), A099635(n+1)]+1`
-/

namespace A099637.P7631160485541919359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A099637.P7631160485541919359

noncomputable section

/-- A099637: Numbers such that gcd(Sum,n) = A099635 and gcd(Sum,Product) = A099636 are not identical. Sum and Product here are the sum and product of all distinct prime factors of n.

Offset 1, canonical program `A099637.P7631160485541919359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A099637 (n : ℕ) : ℤ :=
  (A099637.P7631160485541919359.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A099637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101264.P18132826973570150985

`A057427(A085090(n+1))`
-/

namespace A101264.P18132826973570150985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A085090 (n + 1)).toNat

end

end A101264.P18132826973570150985

noncomputable section

/-- A101264: a(n) = 1 if 2*n + 1 is prime, otherwise a(n) = 0.

Offset 0, canonical program `A101264.P18132826973570150985`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101264 (n : ℕ) : ℤ :=
  A101264.P18132826973570150985.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104089.P11213303609795102587

`A007917(A000302(n+1))`
-/

namespace A104089.P11213303609795102587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A000302 (n + 1)).toNat

end

end A104089.P11213303609795102587

noncomputable section

/-- A104089: Largest prime <= 4^n.

Offset 1, canonical program `A104089.P11213303609795102587`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104089 (n : ℕ) : ℤ :=
  A104089.P11213303609795102587.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104090.P14849277082735369052

`A007917(A000351(n+1))`
-/

namespace A104090.P14849277082735369052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A000351 (n + 1)).toNat

end

end A104090.P14849277082735369052

noncomputable section

/-- A104090: Largest prime <= 5^n.

Offset 1, canonical program `A104090.P14849277082735369052`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104090 (n : ℕ) : ℤ :=
  A104090.P14849277082735369052.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104588.P1591008191025370823

`A034386(A000196(n+1))`
-/

namespace A104588.P1591008191025370823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A000196 (n + 1)).toNat

end

end A104588.P1591008191025370823

noncomputable section

/-- A104588: Product of primes less than or equal to sqrt(n).

Offset 1, canonical program `A104588.P1591008191025370823`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104588 (n : ℕ) : ℤ :=
  A104588.P1591008191025370823.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104588.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106404.P11986901570279237370

`A001221(gcd(xor(1, -n), ∑[n]))`
-/

namespace A106404.P11986901570279237370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A106404.P11986901570279237370

noncomputable section

/-- A106404: Number of even semiprimes dividing n.

Offset 1, canonical program `A106404.P11986901570279237370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106404 (n : ℕ) : ℤ :=
  A106404.P11986901570279237370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108622.P357414125879417223

`A102669(A054899(n+1))+A055640(n+1)`
-/

namespace A108622.P357414125879417223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A054899 (n + 1)).toNat + A055640 (n + 1)

end

end A108622.P357414125879417223

noncomputable section

/-- A108622: Number of numerals to represent n in a base b multiplicative grouping numeral system where b=10.

Offset 1, canonical program `A108622.P357414125879417223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A108622 (n : ℕ) : ℤ :=
  A108622.P357414125879417223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A108622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108958.P4019298651770441770

`A088218(n+1)-A011782(n+1)`
-/

namespace A108958.P4019298651770441770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) - A011782 (n + 1)

end

end A108958.P4019298651770441770

noncomputable section

/-- A108958: Number of unordered pairs of distinct length-n binary words having the same number of 1's.

Offset 1, canonical program `A108958.P4019298651770441770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108958 (n : ℕ) : ℤ :=
  A108958.P4019298651770441770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110423.P17077668433318161995

`(n+2+A007917(n+2))!/(n+2)!`
-/

namespace A110423.P17077668433318161995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n + 2 : ℤ) + A007917 (n + 2)).toNat : ℚ) / (Nat.factorial (n + 2) : ℚ)

end

end A110423.P17077668433318161995

noncomputable section

/-- A110423: a(n) = (n+1)(n+2)...(n+prime(k)) where prime(k) <= n < prime(k+1).

Offset 2, canonical program `A110423.P17077668433318161995`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110423 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A110423.P17077668433318161995.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110423.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110556.P1180683033628972392

`A088218(n)*(-1)^n`
-/

namespace A110556.P1180683033628972392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * (-1) ^ n

end

end A110556.P1180683033628972392

noncomputable section

/-- A110556: a(n) = binomial(2*n-1, n)*(-1)^n.

Offset 0, canonical program `A110556.P1180683033628972392`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110556 (n : ℕ) : ℤ :=
  A110556.P1180683033628972392.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110556.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111199.P3819509222948216455

`A005098(n+2)-2`
-/

namespace A111199.P3819509222948216455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 2) - 2

end

end A111199.P3819509222948216455

noncomputable section

/-- A111199: Numbers k such that 4k + 9 is prime.

Offset 1, canonical program `A111199.P3819509222948216455`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111199 (n : ℕ) : ℤ :=
  A111199.P3819509222948216455.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111199.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111215.P14583532471026945765

`A005098(n+1)-1`
-/

namespace A111215.P14583532471026945765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) - 1

end

end A111215.P14583532471026945765

noncomputable section

/-- A111215: Numbers k such that 4k + 5 is prime.

Offset 1, canonical program `A111215.P14583532471026945765`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111215 (n : ℕ) : ℤ :=
  A111215.P14583532471026945765.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111290.P9757641411941966186

`A074372(a(n-1))+n` with `a(0)=1`
-/

namespace A111290.P9757641411941966186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074372 (a (n - 1)).toNat + (n : ℤ)

end

end A111290.P9757641411941966186

noncomputable section

/-- A111290: a(1)=1, a(n) = n + (sum of distinct primes dividing a(n-1)).

Offset 1, canonical program `A111290.P9757641411941966186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A111290 (n : ℕ) : ℤ :=
  A111290.P9757641411941966186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A111290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111499.P11538712920671782061

`floor(10^(n+1)/A006880(n+1))-1`
-/

namespace A111499.P11538712920671782061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ (n + 1) : ℚ) / (A006880 (n + 1) : ℚ)⌋ - 1

end

end A111499.P11538712920671782061

noncomputable section

/-- A111499: a(n) = floor(10^n/PrimePi(10^n)) - 1.

Offset 1, canonical program `A111499.P11538712920671782061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111499 (n : ℕ) : ℤ :=
  A111499.P11538712920671782061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111499.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112605.P15074569082545500884

`A002324(4*n+3)`
-/

namespace A112605.P15074569082545500884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (4 * n + 3)

end

end A112605.P15074569082545500884

noncomputable section

/-- A112605: Number of representations of n as a sum of a square and six times a triangular number.

Offset 0, canonical program `A112605.P15074569082545500884`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112605 (n : ℕ) : ℤ :=
  A112605.P15074569082545500884.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112605.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112608.P8858731485303109573

`A002324(8*n+3)`
-/

namespace A112608.P8858731485303109573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (8 * n + 3)

end

end A112608.P8858731485303109573

noncomputable section

/-- A112608: Number of representations of n as a sum of a twice a square and three times a triangular number.

Offset 0, canonical program `A112608.P8858731485303109573`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112608 (n : ℕ) : ℤ :=
  A112608.P8858731485303109573.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112608.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112930.P7126053726691172401

`A112929(n+1)+2`
-/

namespace A112930.P7126053726691172401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112929 (n + 1) + 2

end

end A112930.P7126053726691172401

noncomputable section

/-- A112930: a(n) = order of n-th term of A112926 among squarefree integers.

Offset 1, canonical program `A112930.P7126053726691172401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112930 (n : ℕ) : ℤ :=
  A112930.P7126053726691172401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116941.P12886605417078057976

`A074147(n+1)-1`
-/

namespace A116941.P12886605417078057976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074147 (n + 1) - 1

end

end A116941.P12886605417078057976

noncomputable section

/-- A116941: Permutation of the natural numbers in conjunction with A116939 and A003056.

Offset 0, canonical program `A116941.P12886605417078057976`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116941 (n : ℕ) : ℤ :=
  A116941.P12886605417078057976.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116941.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117735.P13796720657671421151

`A000142(n)-A034386(n)`
-/

namespace A117735.P13796720657671421151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A034386 n

end

end A117735.P13796720657671421151

noncomputable section

/-- A117735: a(n) = n! - primorial(n).

Offset 0, canonical program `A117735.P13796720657671421151`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117735 (n : ℕ) : ℤ :=
  A117735.P13796720657671421151.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117735.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118749.P4807308167964345133

`A007917(A008585(n+1))`
-/

namespace A118749.P4807308167964345133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A008585 (n + 1)).toNat

end

end A118749.P4807308167964345133

noncomputable section

/-- A118749: Largest prime <= 3*n.

Offset 1, canonical program `A118749.P4807308167964345133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118749 (n : ℕ) : ℤ :=
  A118749.P4807308167964345133.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119692.P17893808569584347138

`(n+1)*A119694(n)`
-/

namespace A119692.P17893808569584347138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A119694 n

end

end A119692.P17893808569584347138

noncomputable section

/-- A119692: a(n) = binomial(2*n,n) * Fibonacci(n).

Offset 0, canonical program `A119692.P17893808569584347138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A119692 (n : ℕ) : ℤ :=
  A119692.P17893808569584347138.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A119692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120941.P1519152944059217125

`A000720(A006094(n+1))+1-(n+1)`
-/

namespace A120941.P1519152944059217125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006094 (n + 1)).toNat + 1 - (n + 1 : ℤ)

end

end A120941.P1519152944059217125

noncomputable section

/-- A120941: a(n)=k-n where prime(k) is the smallest prime greater than prime(n)*prime(n+1).

Offset 1, canonical program `A120941.P1519152944059217125`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A120941 (n : ℕ) : ℤ :=
  A120941.P1519152944059217125.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A120941.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121566.P11132643645040493819

`A034386(n)/round(atan(n+11))`
-/

namespace A121566.P11132643645040493819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (SequenceMachineLib.roundAway (Real.arctan (n + 11 : ℝ)) : ℚ)

end

end A121566.P11132643645040493819

noncomputable section

/-- A121566: a(n) is the denominator of Sum_{i=1..n} i!/(i^2).

Offset 0, canonical program `A121566.P11132643645040493819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A121566 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121566.P11132643645040493819.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A121566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130517.P17548095738158104865

`abs(A056951(n+1))`
-/

namespace A130517.P17548095738158104865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056951 (n + 1)|

end

end A130517.P17548095738158104865

noncomputable section

/-- A130517: Triangle read by rows: row n counts down from n in steps of 2, then counts up the remaining elements in the set {1,2,...,n}, again in steps of 2.

Offset 1, canonical program `A130517.P17548095738158104865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130517 (n : ℕ) : ℤ :=
  A130517.P17548095738158104865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130726.P14698602818690093839

`A000142(A007917(n+2))`
-/

namespace A130726.P14698602818690093839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A007917 (n + 2)).toNat

end

end A130726.P14698602818690093839

noncomputable section

/-- A130726: Factorial of the largest prime less than or equal to n.

Offset 1, canonical program `A130726.P14698602818690093839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130726 (n : ℕ) : ℤ :=
  A130726.P14698602818690093839.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130726.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131099.P17198853455723490305

`(n+1)*A002324(n+1)`
-/

namespace A131099.P17198853455723490305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002324 (n + 1)

end

end A131099.P17198853455723490305

noncomputable section

/-- A131099: a(n) = n times number of divisors of n of form 3m+1 - n times number of divisors of form 3m+2.

Offset 1, canonical program `A131099.P17198853455723490305`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131099 (n : ℕ) : ℤ :=
  A131099.P17198853455723490305.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133225.P6560289750139441964

`A007917(A017910(n+2))`
-/

namespace A133225.P6560289750139441964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A017910 (n + 2)).toNat

end

end A133225.P6560289750139441964

noncomputable section

/-- A133225: Largest prime <= 2^((n+1)/2).

Offset 1, canonical program `A133225.P6560289750139441964`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133225 (n : ℕ) : ℤ :=
  A133225.P6560289750139441964.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133225.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135619.P12431492879390114788

`A134720(n+1)/2`
-/

namespace A135619.P12431492879390114788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134720 (n + 1) : ℚ) / 2

end

end A135619.P12431492879390114788

noncomputable section

/-- A135619: Even Padovan numbers divided by 2.

Offset 1, canonical program `A135619.P12431492879390114788`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135619 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135619.P12431492879390114788.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135619.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137490.P3679708091584043787

`(eq[7, A056595(n+1)]+1)²`
-/

namespace A137490.P3679708091584043787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A137490.P3679708091584043787

noncomputable section

/-- A137490: Numbers with 27 divisors.

Offset 1, canonical program `A137490.P3679708091584043787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137490 (n : ℕ) : ℤ :=
  (A137490.P3679708091584043787.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138609.P859534551479299323

`A116966(A074147(n+1)-1)`
-/

namespace A138609.P859534551479299323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (A074147 (n + 1) - 1).toNat

end

end A138609.P859534551479299323

noncomputable section

/-- A138609: List the first term from A042963, then 2 terms from A014601 (starting from 3), 3 terms from A042963, 4 terms from A014601, etc.

Offset 1, canonical program `A138609.P859534551479299323`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138609 (n : ℕ) : ℤ :=
  A138609.P859534551479299323.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138609.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140208.P2719107758714154914

`floor(A128913(n+1)/2)`
-/

namespace A140208.P2719107758714154914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A128913 (n + 1) : ℚ) / 2⌋

end

end A140208.P2719107758714154914

noncomputable section

/-- A140208: a(n) = floor(n*pi(n)/2) where pi(n) is the number of primes <= n.

Offset 1, canonical program `A140208.P2719107758714154914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140208 (n : ℕ) : ℤ :=
  A140208.P2719107758714154914.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140208.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141459.P15198710371829255089

`∏{d}[n, A090585(#)]`
-/

namespace A141459.P15198710371829255089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A090585 d

end

end A141459.P15198710371829255089

noncomputable section

/-- A141459: a(n) = Product_{p-1 divides n} p, where p is an odd prime.

Offset 0, canonical program `A141459.P15198710371829255089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141459 (n : ℕ) : ℤ :=
  A141459.P15198710371829255089.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141677.P12769491184657216177

`A000005(n+1)*A000720(n+1)`
-/

namespace A141677.P12769491184657216177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000720 (n + 1)

end

end A141677.P12769491184657216177

noncomputable section

/-- A141677: Number of divisors of n times the number of primes <= n.

Offset 1, canonical program `A141677.P12769491184657216177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A141677 (n : ℕ) : ℤ :=
  A141677.P12769491184657216177.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A141677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143299.P15563677956109418683

`a(A066628(n))+1` with `a(0)=1`
-/

namespace A143299.P15563677956109418683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A066628 n).toNat + 1

end

end A143299.P15563677956109418683

noncomputable section

/-- A143299: Number of terms in the Zeckendorf representation of every number in row n of the Wythoff array.

Offset 1, canonical program `A143299.P15563677956109418683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143299 (n : ℕ) : ℤ :=
  (A143299.P15563677956109418683.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143433.P568368968491830476

`round(A010054(n)/A228826(n))`
-/

namespace A143433.P568368968491830476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A010054 n : ℚ) / (A228826 n : ℚ))

end

end A143433.P568368968491830476

noncomputable section

/-- A143433: Expansion of f(-x, x^3) in powers of x where f(,) is Ramanujan's general theta function.

Offset 0, canonical program `A143433.P568368968491830476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143433 (n : ℕ) : ℤ :=
  A143433.P568368968491830476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143520.P7922226448334733284

`(n+1)*A112329(n+1)`
-/

namespace A143520.P7922226448334733284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112329 (n + 1)

end

end A143520.P7922226448334733284

noncomputable section

/-- A143520: a(n) is n times number of divisors of n if n is odd, zero if n is twice odd, n times number of divisors of n/4 if n is divisible by 4.

Offset 1, canonical program `A143520.P7922226448334733284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143520 (n : ℕ) : ℤ :=
  A143520.P7922226448334733284.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144943.P9912739384439111059

`A048785(n+1)+A000007(n)-2`
-/

namespace A144943.P9912739384439111059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (n + 1) + (A000007 n - 2)

end

end A144943.P9912739384439111059

noncomputable section

/-- A144943: a(n) = number of divisors of n^3 (excluding 1 and n^3).

Offset 1, canonical program `A144943.P9912739384439111059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144943 (n : ℕ) : ℤ :=
  A144943.P9912739384439111059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145377.P12032856002733329322

`A002324(n+1)%2`
-/

namespace A145377.P12032856002733329322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002324 (n + 1)) 2

end

end A145377.P12032856002733329322

noncomputable section

/-- A145377: a(n) = A002324(n) mod 2.

Offset 1, canonical program `A145377.P12032856002733329322`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145377 (n : ℕ) : ℤ :=
  A145377.P12032856002733329322.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145377.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145394.P404841157394091667

`(A000203(n+1)+2*A002324(n+1))/3`
-/

namespace A145394.P404841157394091667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + 2 * A002324 (n + 1) : ℚ) / 3

end

end A145394.P404841157394091667

noncomputable section

/-- A145394: Number of inequivalent sublattices of index n in hexagonal lattice, where two sublattices are considered equivalent if one can be rotated by a multiple of Pi/3 to give the other.

Offset 1, canonical program `A145394.P404841157394091667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145394 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145394.P404841157394091667.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152235.P232875130101871600

`A007947(A000005(n+1))`
-/

namespace A152235.P232875130101871600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000005 (n + 1)).toNat

end

end A152235.P232875130101871600

noncomputable section

/-- A152235: Largest squarefree number dividing the number of divisors n.

Offset 1, canonical program `A152235.P232875130101871600`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A152235 (n : ℕ) : ℤ :=
  A152235.P232875130101871600.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A152235.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097945.P10305260904060648773

`A008966(n+1)*A023900(n+1)`
-/

namespace A097945.P10305260904060648773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A023900 (n + 1)

end

end A097945.P10305260904060648773

noncomputable section

/-- A097945: a(n) = mu(n)*phi(n) where mu(n) is the Mobius function (A008683) and phi(n) is the Euler totient function (A000010).

Offset 1, canonical program `A097945.P10305260904060648773`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A023900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097945 (n : ℕ) : ℤ :=
  A097945.P10305260904060648773.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A023900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097945.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098871.P11206898626946488056

`A000695(n)+1`
-/

namespace A098871.P11206898626946488056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n + 1

end

end A098871.P11206898626946488056

noncomputable section

/-- A098871: Sums of distinct powers of 4 plus 1.

Offset 0, canonical program `A098871.P11206898626946488056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098871 (n : ℕ) : ℤ :=
  A098871.P11206898626946488056.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098871.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099820.P9969869862672452089

`A007088(2*n)`
-/

namespace A099820.P9969869862672452089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * n)

end

end A099820.P9969869862672452089

noncomputable section

/-- A099820: Even nonnegative integers in base 2 (bisection of A007088).

Offset 0, canonical program `A099820.P9969869862672452089`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099820 (n : ℕ) : ℤ :=
  A099820.P9969869862672452089.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099821.P15875521690874164687

`10*A007088(n)+1`
-/

namespace A099821.P15875521690874164687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A007088 n + 1

end

end A099821.P15875521690874164687

noncomputable section

/-- A099821: Odd positive integers in base 2 (bisection of A007088).

Offset 1, canonical program `A099821.P15875521690874164687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099821 (n : ℕ) : ℤ :=
  A099821.P15875521690874164687.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100112.P5701663947279075001

`(A013928(n+1)+1)*A008966(n+1)`
-/

namespace A100112.P5701663947279075001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013928 (n + 1) + 1) * A008966 (n + 1)

end

end A100112.P5701663947279075001

noncomputable section

/-- A100112: If n is the k-th squarefree number then a(n) = k, otherwise a(n) = 0.

Offset 1, canonical program `A100112.P5701663947279075001`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100112 (n : ℕ) : ℤ :=
  A100112.P5701663947279075001.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100112.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100791.P13433836889308004350

`Δ[A000217(A212013(n+1)-A004736(n+1))]`
-/

namespace A100791.P13433836889308004350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A212013 (n + 1) - A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100791.P13433836889308004350

noncomputable section

/-- A100791: Group the natural numbers so that the n-th group contains n(n+1)/2 = T(n) terms: (1), (2,3,4), (5,6,7,8,9,10), (11,12,13,14,15,16,17,18,19,20),(21,22,23,24,25,26,27,28,29,30,31,32,33,34,35),... The n-th row of the following triangle is formed from the sum of first n terms, next n-1 terms,next n-2 terms ... of the n-th group; e.g. third row is (5+6+7), (8+9), (10) or 18,17,10. Sequence contains the triangle read by rows.

Offset 1, canonical program `A100791.P13433836889308004350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. -/
def A100791 (n : ℕ) : ℤ :=
  A100791.P13433836889308004350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. -/
def A100791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103581.P9200771845542336394

`A007088(A102371(n+1))`
-/

namespace A103581.P9200771845542336394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A102371 (n + 1)).toNat

end

end A103581.P9200771845542336394

noncomputable section

/-- A103581: A102371 written in base 2.

Offset 1, canonical program `A103581.P9200771845542336394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A102371, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A103581 (n : ℕ) : ℤ :=
  A103581.P9200771845542336394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A102371, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A103581.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104490.P4559893148070478827

`A007088(A104489(n+1))`
-/

namespace A104490.P4559893148070478827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A104489 (n + 1)).toNat

end

end A104490.P4559893148070478827

noncomputable section

/-- A104490: Read central column in Table 3 in reference from right to left.

Offset 1, canonical program `A104490.P4559893148070478827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104490 (n : ℕ) : ℤ :=
  A104490.P4559893148070478827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105026.P13435274364244972713

`A007088(A105025(n))`
-/

namespace A105026.P13435274364244972713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A105025 n).toNat

end

end A105026.P13435274364244972713

noncomputable section

/-- A105026: Binary equivalents of A105025.

Offset 0, canonical program `A105026.P13435274364244972713`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A105025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A105026 (n : ℕ) : ℤ :=
  A105026.P13435274364244972713.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A105025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A105026.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107078.P17495564514640749054

`1-A008966(n+1)`
-/

namespace A107078.P17495564514640749054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008966 (n + 1)

end

end A107078.P17495564514640749054

noncomputable section

/-- A107078: Whether n has non-unitary prime divisors.

Offset 1, canonical program `A107078.P17495564514640749054`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107078 (n : ℕ) : ℤ :=
  A107078.P17495564514640749054.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107078.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110728.P2872517974975332487

`n*A007953(a(n-1))` with `a(0)=1`
-/

namespace A110728.P2872517974975332487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A007953 (a (n - 1)).toNat

end

end A110728.P2872517974975332487

noncomputable section

/-- A110728: Digital factorial: a(0) = 1, a(n) = n * (the sum of the digits of a(n-1)).

Offset 0, canonical program `A110728.P2872517974975332487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. -/
def A110728 (n : ℕ) : ℤ :=
  A110728.P2872517974975332487.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. -/
def A110728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112661.P14649977540274646719

`A007953(a(n-1)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A112661.P14649977540274646719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A007953 (a (n - 1) + (a (n - 2) + a (n - 3))).toNat

end

end A112661.P14649977540274646719

noncomputable section

/-- A112661: Sum of digits of sum of previous 3 terms.

Offset 0, canonical program `A112661.P14649977540274646719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112661 (n : ℕ) : ℤ :=
  A112661.P14649977540274646719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112677.P5150274563826689285

`A007953(a(n-1)+a(n-2)+a(n-3)+a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A112677.P5150274563826689285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A007953 (a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4)).toNat

end

end A112677.P5150274563826689285

noncomputable section

/-- A112677: Sum of digits of the sum of the previous 4 terms.

Offset 0, canonical program `A112677.P5150274563826689285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112677 (n : ℕ) : ℤ :=
  A112677.P5150274563826689285.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115637.P3484073724344734124

`A000695(A035327(n+2))`
-/

namespace A115637.P3484073724344734124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A035327 (n + 2)).toNat

end

end A115637.P3484073724344734124

noncomputable section

/-- A115637: In the binary expansion of n+2, transform 0->1 and 1->0 then interpret as base 4.

Offset 0, canonical program `A115637.P3484073724344734124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115637 (n : ℕ) : ℤ :=
  A115637.P3484073724344734124.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115794.P4559744070722464181

`record[gcd(and(n, 10*n), A007088(n))]`
-/

namespace A115794.P4559744070722464181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.land n (10 * n) : ℤ) (A007088 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115794.P4559744070722464181

noncomputable section

/-- A115794: Sequence A115793 in binary.

Offset 0, canonical program `A115794.P4559744070722464181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1144 terms. -/
def A115794 (n : ℕ) : ℤ :=
  (A115794.P4559744070722464181.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1144 terms. -/
def A115794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115796.P9825240409534695713

`record[gcd(and(2*n, 9*n), A007088(n))]`
-/

namespace A115796.P9825240409534695713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.land (2 * n) (9 * n) : ℤ) (A007088 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115796.P9825240409534695713

noncomputable section

/-- A115796: Sequence A115795 in binary.

Offset 1, canonical program `A115796.P9825240409534695713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A115796 (n : ℕ) : ℤ :=
  (A115796.P9825240409534695713.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A115796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115798.P14531436441237878101

`A007088(A115797(n+1))`
-/

namespace A115798.P14531436441237878101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115797 (n + 1)).toNat

end

end A115798.P14531436441237878101

noncomputable section

/-- A115798: Sequence A115797 in binary.

Offset 1, canonical program `A115798.P14531436441237878101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115797, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115798 (n : ℕ) : ℤ :=
  A115798.P14531436441237878101.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115797, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115798.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115800.P12968421985045041583

`A007088(eq[0, and(4*n, 7*n)])`
-/

namespace A115800.P12968421985045041583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (4 * n) (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115800.P12968421985045041583

noncomputable section

/-- A115800: Sequence A115799 in binary.

Offset 0, canonical program `A115800.P12968421985045041583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A115800 (n : ℕ) : ℤ :=
  A115800.P12968421985045041583.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A115800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115814.P15307000509231881468

`A007088(A115813(n))`
-/

namespace A115814.P15307000509231881468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115813 n).toNat

end

end A115814.P15307000509231881468

noncomputable section

/-- A115814: Sequence A115813 in binary.

Offset 0, canonical program `A115814.P15307000509231881468`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115814 (n : ℕ) : ℤ :=
  A115814.P15307000509231881468.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115814.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115816.P6728982517791538173

`A007088(A115815(n))`
-/

namespace A115816.P6728982517791538173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115815 n).toNat

end

end A115816.P6728982517791538173

noncomputable section

/-- A115816: Sequence A115815 in binary.

Offset 0, canonical program `A115816.P6728982517791538173`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115815, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115816 (n : ℕ) : ℤ :=
  A115816.P6728982517791538173.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115815, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115816.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115818.P8141254646774440608

`A007088(A115817(n))`
-/

namespace A115818.P8141254646774440608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115817 n).toNat

end

end A115818.P8141254646774440608

noncomputable section

/-- A115818: Sequence A115817 in binary.

Offset 0, canonical program `A115818.P8141254646774440608`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115817, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115818 (n : ℕ) : ℤ :=
  A115818.P8141254646774440608.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115817, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115818.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115820.P5339563733588952292

`A007088(A115819(n+1))`
-/

namespace A115820.P5339563733588952292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115819 (n + 1)).toNat

end

end A115820.P5339563733588952292

noncomputable section

/-- A115820: Sequence A115819 in binary.

Offset 0, canonical program `A115820.P5339563733588952292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115820 (n : ℕ) : ℤ :=
  A115820.P5339563733588952292.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115822.P17871558408820840963

`A007088(A115821(n))`
-/

namespace A115822.P17871558408820840963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115821 n).toNat

end

end A115822.P17871558408820840963

noncomputable section

/-- A115822: Sequence A115821 in binary.

Offset 0, canonical program `A115822.P17871558408820840963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115822 (n : ℕ) : ℤ :=
  A115822.P17871558408820840963.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115824.P7796633499277232802

`A007088(eq[0, and(8*n, 13*n)])`
-/

namespace A115824.P7796633499277232802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (8 * n) (13 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115824.P7796633499277232802

noncomputable section

/-- A115824: Sequence A115823 in binary.

Offset 0, canonical program `A115824.P7796633499277232802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A115824 (n : ℕ) : ℤ :=
  A115824.P7796633499277232802.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A115824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115828.P3340096945707249904

`A007088(A115827(n))`
-/

namespace A115828.P3340096945707249904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115827 n).toNat

end

end A115828.P3340096945707249904

noncomputable section

/-- A115828: Sequence A115827 in binary.

Offset 0, canonical program `A115828.P3340096945707249904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115828 (n : ℕ) : ℤ :=
  A115828.P3340096945707249904.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115828.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115848.P4587930052848723337

`A007088(A115847(n))`
-/

namespace A115848.P4587930052848723337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115847 n).toNat

end

end A115848.P4587930052848723337

noncomputable section

/-- A115848: Sequence A115847 in binary.

Offset 0, canonical program `A115848.P4587930052848723337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A115848 (n : ℕ) : ℤ :=
  A115848.P4587930052848723337.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A115848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117490.P2835594176829251939

`A291440(n+1)+A000720(n+1)*A033270(n+1)`
-/

namespace A117490.P2835594176829251939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291440 (n + 1) + A000720 (n + 1) * A033270 (n + 1)

end

end A117490.P2835594176829251939

noncomputable section

/-- A117490: Number of primes between n and n^2 (with n and n^2 excluded).

Offset 1, canonical program `A117490.P2835594176829251939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117490 (n : ℕ) : ℤ :=
  A117490.P2835594176829251939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118137.P7047369831656418636

`A007953(n)+A007953(n+1)`
-/

namespace A118137.P7047369831656418636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + A007953 (n + 1)

end

end A118137.P7047369831656418636

noncomputable section

/-- A118137: Sum of decimal digits of two successive natural numbers.

Offset 0, canonical program `A118137.P7047369831656418636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118137 (n : ℕ) : ℤ :=
  A118137.P7047369831656418636.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118880.P13099714679656599745

`A007953(n)^3`
-/

namespace A118880.P13099714679656599745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 3

end

end A118880.P13099714679656599745

noncomputable section

/-- A118880: a(n) is the cube of the sum of digits of n.

Offset 0, canonical program `A118880.P13099714679656599745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118880 (n : ℕ) : ℤ :=
  A118880.P13099714679656599745.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118881.P8524186405013838056

`A007953(n)²`
-/

namespace A118881.P8524186405013838056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2

end

end A118881.P8524186405013838056

noncomputable section

/-- A118881: Square of sum of decimal digits of n.

Offset 0, canonical program `A118881.P8524186405013838056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118881 (n : ℕ) : ℤ :=
  A118881.P8524186405013838056.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118881.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119281.P4500062069654907476

`A007953(n)-4*A102677(n)`
-/

namespace A119281.P4500062069654907476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - 4 * A102677 n

end

end A119281.P4500062069654907476

noncomputable section

/-- A119281: Number of counting rods to represent n in the ancient Chinese rod numeral system.

Offset 0, canonical program `A119281.P4500062069654907476`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A102677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A119281 (n : ℕ) : ℤ :=
  A119281.P4500062069654907476.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A102677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A119281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123001.P475860141615088738

`A007088(lt[n, xor(n, floor(n/2))])`
-/

namespace A123001.P475860141615088738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A123001.P475860141615088738

noncomputable section

/-- A123001: Binary numbers that start 10...

Offset 1, canonical program `A123001.P475860141615088738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A123001 (n : ℕ) : ℤ :=
  A123001.P475860141615088738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A123001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127271.P1641139788662325747

`eq[0, (n+1)%(A007953(n+2)+A007953(n))]`
-/

namespace A127271.P1641139788662325747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A007953 (n + 2) + A007953 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127271.P1641139788662325747

noncomputable section

/-- A127271: Numbers n such that sum of the digits of n and n+2 divides n+1, n >= 1.

Offset 1, canonical program `A127271.P1641139788662325747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 687 terms. -/
def A127271 (n : ℕ) : ℤ :=
  (A127271.P1641139788662325747.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 687 terms. -/
def A127271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127318.P4194245990836492332

`A128936(n+1)%A007953(n+1)`
-/

namespace A127318.P4194245990836492332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128936 (n + 1)) (A007953 (n + 1))

end

end A127318.P4194245990836492332

noncomputable section

/-- A127318: a(n) = binomial(n, sd) mod sd, with sd = sum of decimal digits of n.

Offset 1, canonical program `A127318.P4194245990836492332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A127318 (n : ℕ) : ℤ :=
  A127318.P4194245990836492332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A127318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127906.P12019539335536084683

`n*A007088(n)`
-/

namespace A127906.P12019539335536084683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007088 n

end

end A127906.P12019539335536084683

noncomputable section

/-- A127906: a(n) = (n in base 10) * (n in base 2).

Offset 0, canonical program `A127906.P12019539335536084683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127906 (n : ℕ) : ℤ :=
  A127906.P12019539335536084683.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127988.P16825810271688874760

`8*A000695(n)`
-/

namespace A127988.P16825810271688874760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000695 n

end

end A127988.P16825810271688874760

noncomputable section

/-- A127988: Sequence determining the parity of A025748.

Offset 0, canonical program `A127988.P16825810271688874760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127988 (n : ℕ) : ℤ :=
  A127988.P16825810271688874760.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128203.P9092795158549116467

`A007953(A002378(n))`
-/

namespace A128203.P9092795158549116467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A002378 n).toNat

end

end A128203.P9092795158549116467

noncomputable section

/-- A128203: Sum of the digits of n*(n+1).

Offset 0, canonical program `A128203.P9092795158549116467`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128203 (n : ℕ) : ℤ :=
  A128203.P9092795158549116467.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128203.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128212.P12226177893353124099

`A007953(A007954(n+1))`
-/

namespace A128212.P12226177893353124099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007954 (n + 1)).toNat

end

end A128212.P12226177893353124099

noncomputable section

/-- A128212: a(n) = Sum_digits(p), where p is the product of the digits of n.

Offset 1, canonical program `A128212.P12226177893353124099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A128212 (n : ℕ) : ℤ :=
  A128212.P12226177893353124099.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A128212.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128244.P376771842225601192

`A007954(A007953(n+1))`
-/

namespace A128244.P376771842225601192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007953 (n + 1)).toNat

end

end A128244.P376771842225601192

noncomputable section

/-- A128244: Let s be the sum of the digits of n; a(n) is the product of the digits of s.

Offset 1, canonical program `A128244.P376771842225601192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A128244 (n : ℕ) : ℤ :=
  A128244.P376771842225601192.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A128244.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132189.P8063069834652726525

`2*A132345(n+1)`
-/

namespace A132189.P8063069834652726525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132345 (n + 1)

end

end A132189.P8063069834652726525

noncomputable section

/-- A132189: Number of non-constant 3-term geometric progressions with no term exceeding n.

Offset 1, canonical program `A132189.P8063069834652726525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132189 (n : ℕ) : ℤ :=
  A132189.P8063069834652726525.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132189.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132628.P1682638940278180444

`lt[A000203(n+1)%A007953(n+1), 1]+1`
-/

namespace A132628.P1682638940278180444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A007953 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A132628.P1682638940278180444

noncomputable section

/-- A132628: Numbers k for which the sum of their digits divides sigma(k).

Offset 1, canonical program `A132628.P1682638940278180444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132628 (n : ℕ) : ℤ :=
  (A132628.P1682638940278180444.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135124.P15966436925166688135

`A033045(A000695(n+1))`
-/

namespace A135124.P15966436925166688135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (A000695 (n + 1)).toNat

end

end A135124.P15966436925166688135

noncomputable section

/-- A135124: Numbers such that the digital sums in base 2, base 4 and base 8 are all equal.

Offset 1, canonical program `A135124.P15966436925166688135`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135124 (n : ℕ) : ℤ :=
  A135124.P15966436925166688135.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136613.P13511050304393903560

`10^A055642(n)*A007953(n)+n`
-/

namespace A136613.P13511050304393903560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A055642 n : ℤ) * (A007953 n : ℚ) + (n : ℚ)

end

end A136613.P13511050304393903560

noncomputable section

/-- A136613: Concatenation of (sum of digits of n) and n.

Offset 0, canonical program `A136613.P13511050304393903560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136613 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A136613.P13511050304393903560.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139374.P15184791697190815955

`A007953(A000032(n))`
-/

namespace A139374.P15184791697190815955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000032 n).toNat

end

end A139374.P15184791697190815955

noncomputable section

/-- A139374: Digit sum of Lucas numbers.

Offset 0, canonical program `A139374.P15184791697190815955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139374 (n : ℕ) : ℤ :=
  A139374.P15184791697190815955.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139374.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139707.P12191564313970735729

`A007088(A139706(n+1))`
-/

namespace A139707.P12191564313970735729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A139706 (n + 1)).toNat

end

end A139707.P12191564313970735729

noncomputable section

/-- A139707: Take n in binary. Rotate the binary digits to the right until a 1 once again appears as the leftmost digit. a(n) is result written in binary.

Offset 1, canonical program `A139707.P12191564313970735729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139707 (n : ℕ) : ℤ :=
  A139707.P12191564313970735729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139762.P8061600169167864390

`A007953(a(n-1))+A007953(n)` with `a(0)=0`
-/

namespace A139762.P8061600169167864390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007953 (a (n - 1)).toNat + A007953 n

end

end A139762.P8061600169167864390

noncomputable section

/-- A139762: a(n)=Sum_digits_of_a(n-1)+Sum_digits_of(n).

Offset 0, canonical program `A139762.P8061600169167864390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A139762 (n : ℕ) : ℤ :=
  A139762.P8061600169167864390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A139762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140105.P12886462540237060989

`A007088(A049606(n))`
-/

namespace A140105.P12886462540237060989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A049606 n).toNat

end

end A140105.P12886462540237060989

noncomputable section

/-- A140105: Trailing zeros removed from n! in binary.

Offset 0, canonical program `A140105.P12886462540237060989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140105 (n : ℕ) : ℤ :=
  A140105.P12886462540237060989.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140105.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147568.P4088074706858455040

`2*A000695(n)+3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147568.P4088074706858455040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000695 n + 3

end

end A147568.P4088074706858455040

noncomputable section

/-- A147568: a(n) = 2*A000695(n)+3.

Offset 0, canonical program `A147568.P4088074706858455040`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147568 (n : ℕ) : ℤ :=
  A147568.P4088074706858455040.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147568.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147848.P5380392809057908469

`∑{d}[n+1, A008966(#)*A093148((n+1)/#-1)]`
-/

namespace A147848.P5380392809057908469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A093148 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A147848.P5380392809057908469

noncomputable section

/-- A147848: Number (up to isomorphism) of groups of order 2n that have Z/nZ as a subgroup (that is, that have an element of order n).

Offset 1, canonical program `A147848.P5380392809057908469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147848 (n : ℕ) : ℤ :=
  A147848.P5380392809057908469.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128173.P11177856239651542119

`A244042(n)+2*A244042(A004526(n))`
-/

namespace A128173.P11177856239651542119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n + 2 * A244042 (A004526 n).toNat

end

end A128173.P11177856239651542119

noncomputable section

/-- A128173: Numbers in ternary reflected Gray code order.

Offset 0, canonical program `A128173.P11177856239651542119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128173 (n : ℕ) : ℤ :=
  A128173.P11177856239651542119.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128173.provenance : SequenceMachineLib.Provenance := .conjectured

