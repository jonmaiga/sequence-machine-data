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
import Seq.B001.C010

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A090988.P5141419551860329845

`2^A004736(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A090988.P5141419551860329845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A090988.P5141419551860329845

noncomputable section

/-- A090988: a(n) = 2^A004736(n).

Offset 1, canonical program `A090988.P5141419551860329845`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090988 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090988.P5141419551860329845.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090988.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091090.P18330635638829780680

`A000120(n)+A070939(n)-A000120(n+1)-A070939(n+1)+2`
-/

namespace A091090.P18330635638829780680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A070939 n - A000120 (n + 1) - A070939 (n + 1) + 2

end

end A091090.P18330635638829780680

noncomputable section

/-- A091090: In binary representation: number of editing steps (delete, insert, or substitute) to transform n into n + 1.

Offset 0, canonical program `A091090.P18330635638829780680`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091090 (n : ℕ) : ℤ :=
  A091090.P18330635638829780680.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091804.P1802214969335969556

`2^(n*(n+1)/2)*A055209(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A091804.P1802214969335969556
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n : ℚ) * ((n + 1 : ℚ) / 2) : ℝ) * (A055209 n : ℝ)

end

end A091804.P1802214969335969556

noncomputable section

/-- A091804: a(n) = 2^(n*(n+1)/2)*A055209(n).

Offset 0, canonical program `A091804.P1802214969335969556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091804 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091804.P1802214969335969556.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092391.P1831081500129819331

`n+A000120(n)`
-/

namespace A092391.P1831081500129819331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A000120 n

end

end A092391.P1831081500129819331

noncomputable section

/-- A092391: a(n) = n + wt(n), where wt(n) = A000120(n) = binary weight of n.

Offset 0, canonical program `A092391.P1831081500129819331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092391 (n : ℕ) : ℤ :=
  A092391.P1831081500129819331.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092391.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093069.P11731830505759448299

`A092431(n+2)-A020522(n+1)`
-/

namespace A093069.P11731830505759448299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092431 (n + 2) - A020522 (n + 1)

end

end A093069.P11731830505759448299

noncomputable section

/-- A093069: a(n) = (2^n + 1)^2 - 2.

Offset 1, canonical program `A093069.P11731830505759448299`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093069 (n : ℕ) : ℤ :=
  A093069.P11731830505759448299.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093069.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093659.P5890510302390266350

`A000120(n)!`
-/

namespace A093659.P5890510302390266350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000120 n).toNat

end

end A093659.P5890510302390266350

noncomputable section

/-- A093659: First column of lower triangular matrix A093658; factorial of the number of 1's in binary expansion of n.

Offset 0, canonical program `A093659.P5890510302390266350`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093659 (n : ℕ) : ℤ :=
  (A093659.P5890510302390266350.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093659.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A098399.P8178371425787083130

`3^n*A001700(n)`
-/

namespace A098399.P8178371425787083130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A001700 n

end

end A098399.P8178371425787083130

noncomputable section

/-- A098399: a(n) = 3^n*binomial(2*n+1, n).

Offset 0, canonical program `A098399.P8178371425787083130`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098399 (n : ℕ) : ℤ :=
  A098399.P8178371425787083130.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098399.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098400.P17223447756612620311

`4^n*A001700(n)`
-/

namespace A098400.P17223447756612620311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A001700 n

end

end A098400.P17223447756612620311

noncomputable section

/-- A098400: a(n) = 4^n*binomial(2*n+1, n).

Offset 0, canonical program `A098400.P17223447756612620311`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098400 (n : ℕ) : ℤ :=
  A098400.P17223447756612620311.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098430.P1597171453298987001

`4^n*A000984(n)`
-/

namespace A098430.P1597171453298987001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000984 n

end

end A098430.P1597171453298987001

noncomputable section

/-- A098430: a(n) = 4^n*(2*n)!/(n!)^2.

Offset 0, canonical program `A098430.P1597171453298987001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098430 (n : ℕ) : ℤ :=
  A098430.P1597171453298987001.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098609.P2837981447297233555

`A098608(n)-1`
-/

namespace A098609.P2837981447297233555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098608 n - 1

end

end A098609.P2837981447297233555

noncomputable section

/-- A098609: a(n) = 100^n - 1.

Offset 0, canonical program `A098609.P2837981447297233555`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098609 (n : ℕ) : ℤ :=
  A098609.P2837981447297233555.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098658.P14881965061736061030

`3^n*A000984(n)`
-/

namespace A098658.P14881965061736061030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000984 n

end

end A098658.P14881965061736061030

noncomputable section

/-- A098658: a(n) = 3^n*(2*n)!/(n!)^2.

Offset 0, canonical program `A098658.P14881965061736061030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098658 (n : ℕ) : ℤ :=
  A098658.P14881965061736061030.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098658.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A102307.P5713174191708189843

`A000045(2*n+1)*A000984(n)`
-/

namespace A102307.P5713174191708189843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) * A000984 n

end

end A102307.P5713174191708189843

noncomputable section

/-- A102307: a(n) = Fibonacci(2n+1) * binomial(2n,n).

Offset 0, canonical program `A102307.P5713174191708189843`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102307 (n : ℕ) : ℤ :=
  A102307.P5713174191708189843.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102307.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A102389.P18440078432427521282

`(1+floor(n/2))*(1+(-1)^A000120(n))/2`
-/

namespace A102389.P18440078432427521282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + ⌊(n : ℚ) / 2⌋ : ℚ) * ((1 + (-1 : ℚ) ^ (A000120 n : ℤ)) / 2)

end

end A102389.P18440078432427521282

noncomputable section

/-- A102389: An evil count.

Offset 0, canonical program `A102389.P18440078432427521282`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102389 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102389.P18440078432427521282.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102390.P7831391285118689562

`(1+floor(n/2))*(1-(-1)^A000120(n))/2`
-/

namespace A102390.P7831391285118689562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + ⌊(n : ℚ) / 2⌋ : ℚ) * ((1 - (-1 : ℚ) ^ (A000120 n : ℤ)) / 2)

end

end A102390.P7831391285118689562

noncomputable section

/-- A102390: An odious count.

Offset 0, canonical program `A102390.P7831391285118689562`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102390 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102390.P7831391285118689562.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102390.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102393.P2823819576195353877

`(n+1)*(1+(-1)^A000120(n))/2`
-/

namespace A102393.P2823819576195353877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((1 + (-1 : ℚ) ^ (A000120 n : ℤ)) / 2)

end

end A102393.P2823819576195353877

noncomputable section

/-- A102393: A wicked evil sequence.

Offset 0, canonical program `A102393.P2823819576195353877`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102393 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102393.P2823819576195353877.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102393.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102394.P7384347515423375254

`(n+1)*(1-(-1)^A000120(n))/2`
-/

namespace A102394.P7384347515423375254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((1 - (-1 : ℚ) ^ (A000120 n : ℤ)) / 2)

end

end A102394.P7384347515423375254

noncomputable section

/-- A102394: A wicked odious sequence.

Offset 0, canonical program `A102394.P7384347515423375254`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102394 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102394.P7384347515423375254.a n)

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

/-! ## A109582.P6850575601531674303

`n!*A104769(n+1)`
-/

namespace A109582.P6850575601531674303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A104769 (n + 1)

end

end A109582.P6850575601531674303

noncomputable section

/-- A109582: Expansion of e.g.f.: -1/(1+x-x^3).

Offset 0, canonical program `A109582.P6850575601531674303`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109582 (n : ℕ) : ℤ :=
  A109582.P6850575601531674303.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110658.P2693442406700527854

`A110657(A028242(n))`
-/

namespace A110658.P2693442406700527854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A028242 n).toNat

end

end A110658.P2693442406700527854

noncomputable section

/-- A110658: a(n) = A028242(A028242(A028242(n))).

Offset 0, canonical program `A110658.P2693442406700527854`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110658 (n : ℕ) : ℤ :=
  A110658.P2693442406700527854.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110658.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111637.P4077454426385861453

`A000984(n)*A002416(n)`
-/

namespace A111637.P4077454426385861453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A002416 n

end

end A111637.P4077454426385861453

noncomputable section

/-- A111637: Number of labeled graphs having n blue nodes and n green ones, where edges join only nodes of different colors.

Offset 0, canonical program `A111637.P4077454426385861453`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111637 (n : ℕ) : ℤ :=
  A111637.P4077454426385861453.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111637.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A114121.P18027585346477581278

`(A000984(n)+A081294(n))/2`
-/

namespace A114121.P18027585346477581278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n + A081294 n : ℚ) / 2

end

end A114121.P18027585346477581278

noncomputable section

/-- A114121: Expansion of (sqrt(1 - 4*x) + (1 - 2*x))/(2*(1 - 4*x)).

Offset 0, canonical program `A114121.P18027585346477581278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114121 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A114121.P18027585346477581278.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114121.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A115384.P12809127359917049786

`floor((n+1)/2)+(1+(-1)^n)*(1-(-1)^A000120(n))/4`
-/

namespace A115384.P12809127359917049786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / 2⌋ : ℚ) + (1 + (-1) ^ n : ℚ) * ((1 - (-1 : ℚ) ^ (A000120 n : ℤ)) / 4)

end

end A115384.P12809127359917049786

noncomputable section

/-- A115384: Partial sums of Thue-Morse numbers A010060.

Offset 0, canonical program `A115384.P12809127359917049786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115384 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115384.P12809127359917049786.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115384.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A118016.P13608870388523236126

`4*A016031(n+1)`
-/

namespace A118016.P13608870388523236126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016031 (n + 1)

end

end A118016.P13608870388523236126

noncomputable section

/-- A118016: Integers of the form 2^k/(k-1).

Offset 1, canonical program `A118016.P13608870388523236126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118016 (n : ℕ) : ℤ :=
  A118016.P13608870388523236126.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119578.P16414005969838283328

`A000217(n)*A000984(n)`
-/

namespace A119578.P16414005969838283328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000984 n

end

end A119578.P16414005969838283328

noncomputable section

/-- A119578: a(n) = (n + n^2)*binomial(2*n,n)/2.

Offset 0, canonical program `A119578.P16414005969838283328`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119578 (n : ℕ) : ℤ :=
  A119578.P16414005969838283328.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119578.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119579.P9682905404342133756

`A002378(n)*A000984(n)`
-/

namespace A119579.P9682905404342133756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n * A000984 n

end

end A119579.P9682905404342133756

noncomputable section

/-- A119579: a(n) = (n + n^2)*(binomial(2*n, n)).

Offset 0, canonical program `A119579.P9682905404342133756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119579 (n : ℕ) : ℤ :=
  A119579.P9682905404342133756.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119581.P15688745875726880084

`A005563(n)*A000984(n)/2`
-/

namespace A119581.P15688745875726880084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005563 n * A000984 n : ℚ) / 2

end

end A119581.P15688745875726880084

noncomputable section

/-- A119581: a(n) = (2*n+n^2)*(binomial(2*n,n))/2.

Offset 0, canonical program `A119581.P15688745875726880084`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119581 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119581.P15688745875726880084.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119582.P16220204266755305550

`A011379(n)*A000984(n)/2`
-/

namespace A119582.P16220204266755305550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011379 n * A000984 n : ℚ) / 2

end

end A119582.P16220204266755305550

noncomputable section

/-- A119582: a(n) = (n^2+n^3)*(binomial(2*n,n))/2.

Offset 0, canonical program `A119582.P16220204266755305550`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119582 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119582.P16220204266755305550.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119582.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A124862.P890811880891312165

`A007583(n)*A000984(n)`
-/

namespace A124862.P890811880891312165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n * A000984 n

end

end A124862.P890811880891312165

noncomputable section

/-- A124862: a(n) = J(2*n+1) * C(2*n,n), where J(n) = A001045(n).

Offset 0, canonical program `A124862.P890811880891312165`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124862 (n : ℕ) : ℤ :=
  A124862.P890811880891312165.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124862.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A128014.P14973855882904292349

`A000984(floor(n/2))`
-/

namespace A128014.P14973855882904292349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 ⌊(n : ℚ) / 2⌋.toNat

end

end A128014.P14973855882904292349

noncomputable section

/-- A128014: Central binomial coefficients C(2k,k) repeated.

Offset 0, canonical program `A128014.P14973855882904292349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128014 (n : ℕ) : ℤ :=
  A128014.P14973855882904292349.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128014.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128015.P10514109544123234359

`A001700(floor(n/2))`
-/

namespace A128015.P10514109544123234359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 ⌊(n : ℚ) / 2⌋.toNat

end

end A128015.P10514109544123234359

noncomputable section

/-- A128015: Binomial coefficients C(2n+1,n) repeated.

Offset 0, canonical program `A128015.P10514109544123234359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128015 (n : ℕ) : ℤ :=
  A128015.P10514109544123234359.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128015.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A134007.P15403354731334604070

`A134006(n)+A001019(n)`
-/

namespace A134007.P15403354731334604070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134006 n + A001019 n

end

end A134007.P15403354731334604070

noncomputable section

/-- A134007: a(n) = 1^n + 3^n + 5^n + 7^n + 9^n.

Offset 0, canonical program `A134007.P15403354731334604070`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134007 (n : ℕ) : ℤ :=
  A134007.P15403354731334604070.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134007.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A134758.P3097203731672110701

`A000984(n)+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134758.P3097203731672110701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (n : ℤ)

end

end A134758.P3097203731672110701

noncomputable section

/-- A134758: a(n) = A000984(n) + n.

Offset 0, canonical program `A134758.P3097203731672110701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134758 (n : ℕ) : ℤ :=
  A134758.P3097203731672110701.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134759.P90257600578840069

`2*A000984(n)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134759.P90257600578840069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000984 n - (n + 1 : ℤ)

end

end A134759.P90257600578840069

noncomputable section

/-- A134759: a(n) = 2*A000984(n) - (n+1).

Offset 0, canonical program `A134759.P90257600578840069`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134759 (n : ℕ) : ℤ :=
  A134759.P90257600578840069.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134759.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134760.P5337587419616991528

`2*A000984(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134760.P5337587419616991528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000984 n - 1

end

end A134760.P5337587419616991528

noncomputable section

/-- A134760: a(n) = 2*A000984(n) - 1.

Offset 0, canonical program `A134760.P5337587419616991528`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134760 (n : ℕ) : ℤ :=
  A134760.P5337587419616991528.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134760.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134762.P15216652540126543409

`3*A000984(n)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134762.P15216652540126543409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000984 n - 2

end

end A134762.P15216652540126543409

noncomputable section

/-- A134762: a(n) = 3*A000984(n) - 2.

Offset 0, canonical program `A134762.P15216652540126543409`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134762 (n : ℕ) : ℤ :=
  A134762.P15216652540126543409.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134762.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134770.P14019126110980162082

`4*A000984(n)-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134770.P14019126110980162082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000984 n - 3

end

end A134770.P14019126110980162082

noncomputable section

/-- A134770: a(n) = 4*A000984(n) - 3.

Offset 0, canonical program `A134770.P14019126110980162082`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134770 (n : ℕ) : ℤ :=
  A134770.P14019126110980162082.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134770.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A135757.P12809230155386200644

`A000984(n*(n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135757.P12809230155386200644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A135757.P12809230155386200644

noncomputable section

/-- A135757: Central binomial coefficients at triangular positions: a(n) = A000984(n(n+1)/2).

Offset 0, canonical program `A135757.P12809230155386200644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135757 (n : ℕ) : ℤ :=
  A135757.P12809230155386200644.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135757.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A138331.P5527246032984825994

`(-1)^(n+1)*16*A040977(n)`
-/

namespace A138331.P5527246032984825994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (16 * A040977 n)

end

end A138331.P5527246032984825994

noncomputable section

/-- A138331: a(n) = C(n+5, 5)*(n+3)*(-1)^(n+1)*16/3.

Offset 0, canonical program `A138331.P5527246032984825994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138331 (n : ℕ) : ℤ :=
  A138331.P5527246032984825994.a n

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

/-! ## A104004.P194881169287195683

`A221719(n)+1`
-/

namespace A104004.P194881169287195683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221719 n + 1

end

end A104004.P194881169287195683

noncomputable section

/-- A104004: Expansion of (1-x) * (1+x) / ((1-2*x)*(1-x-x^2)).

Offset 0, canonical program `A104004.P194881169287195683`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104004 (n : ℕ) : ℤ :=
  A104004.P194881169287195683.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104004.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107660.P5646677120306872602

`A167993(n+2)+3*A167993(n+1)`
-/

namespace A107660.P5646677120306872602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 (n + 2) + 3 * A167993 (n + 1)

end

end A107660.P5646677120306872602

noncomputable section

/-- A107660: Sum 3^max(k,n-k),k=0..n.

Offset 0, canonical program `A107660.P5646677120306872602`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107660 (n : ℕ) : ℤ :=
  A107660.P5646677120306872602.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107660.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A112677.P5150274563826689285`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112677 (n : ℕ) : ℤ :=
  A112677.P5150274563826689285.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112677.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A118137.P7047369831656418636`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118137 (n : ℕ) : ℤ :=
  A118137.P7047369831656418636.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118137.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A118880.P13099714679656599745`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118880 (n : ℕ) : ℤ :=
  A118880.P13099714679656599745.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118880.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A118881.P8524186405013838056`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118881 (n : ℕ) : ℤ :=
  A118881.P8524186405013838056.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118881.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A128203.P9092795158549116467`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128203 (n : ℕ) : ℤ :=
  A128203.P9092795158549116467.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128203.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A139374.P15184791697190815955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139374 (n : ℕ) : ℤ :=
  A139374.P15184791697190815955.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090892.P11463110273139367639

`lt[A093178(A001951(n)), 2]`
-/

namespace A090892.P11463110273139367639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A001951 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A090892.P11463110273139367639

noncomputable section

/-- A090892: Solutions x to equation floor(x*r*floor(x/r)) = floor(x/r*floor(x*r)) when r = sqrt(2).

Offset 0, canonical program `A090892.P11463110273139367639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A090892 (n : ℕ) : ℤ :=
  (A090892.P11463110273139367639.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A090892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090996.P13241265871716609042

`A000120(n-A087734(n))`
-/

namespace A090996.P13241265871716609042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - A087734 n).toNat

end

end A090996.P13241265871716609042

noncomputable section

/-- A090996: Number of leading 1's in binary expansion of n.

Offset 0, canonical program `A090996.P13241265871716609042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090996 (n : ℕ) : ℤ :=
  A090996.P13241265871716609042.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091072.P3212609419497778136

`eq[1, A073089(2*n+1)]`
-/

namespace A091072.P3212609419497778136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091072.P3212609419497778136

noncomputable section

/-- A091072: Positive numbers k such that the Kronecker Symbol (-1 / k) > 0.

Offset 1, canonical program `A091072.P3212609419497778136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091072 (n : ℕ) : ℤ :=
  (A091072.P3212609419497778136.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091104.P978748769557164139

`A009117(n)*A059855(n+1)`
-/

namespace A091104.P978748769557164139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009117 n * A059855 (n + 1)

end

end A091104.P978748769557164139

noncomputable section

/-- A091104: Expansion of (1-4x+24x^2)/((1-4x)(1+4x)).

Offset 0, canonical program `A091104.P978748769557164139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A091104 (n : ℕ) : ℤ :=
  A091104.P978748769557164139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A091104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091177.P17069457608177262001

`lt[1, A039701(n+1)]+1`
-/

namespace A091177.P17069457608177262001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091177.P17069457608177262001

noncomputable section

/-- A091177: Numbers m such that the m-th prime is of the form 3*k-1.

Offset 1, canonical program `A091177.P17069457608177262001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A091177 (n : ℕ) : ℤ :=
  (A091177.P17069457608177262001.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A091177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091259.P8343096031813082680

`A001158(n+1)/gcd(A001158(n+1), A074400(n+1))`
-/

namespace A091259.P8343096031813082680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (Int.gcd (A001158 (n + 1)) (A074400 (n + 1)) : ℚ)

end

end A091259.P8343096031813082680

noncomputable section

/-- A091259: Numerator of sigma_3(n)/sigma(n).

Offset 1, canonical program `A091259.P8343096031813082680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091259 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091259.P8343096031813082680.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091265.P8966301234051174019

`A001748(∑[char[∑[n]]]²-n)/3`
-/

namespace A091265.P8966301234051174019
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) : ℚ) / 3

end

end A091265.P8966301234051174019

noncomputable section

/-- A091265: Take sequence of prime numbers (A000040) and reverse successive subsequences of lengths 1,2,3,4,...

Offset 1, canonical program `A091265.P8966301234051174019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091265 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091265.P8966301234051174019.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091369.P3969440163011087150

`(n+1)²-A063985(n+1)`
-/

namespace A091369.P3969440163011087150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A063985 (n + 1)

end

end A091369.P3969440163011087150

noncomputable section

/-- A091369: a(n) = Sum_{i=1..n} phi(i)*ceiling(n/i).

Offset 1, canonical program `A091369.P3969440163011087150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091369 (n : ℕ) : ℤ :=
  A091369.P3969440163011087150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091453.P13154820347663244878

`ceil(A068527(n)/A028310(A053186(n)))`
-/

namespace A091453.P13154820347663244878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068527 n : ℚ) / (A028310 (A053186 n).toNat : ℚ)⌉

end

end A091453.P13154820347663244878

noncomputable section

/-- A091453: Triangular array T(n,k) read by rows in which row n consists of the numbers floor(2n/k), k=1,2,...,2n+1.

Offset 0, canonical program `A091453.P13154820347663244878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091453 (n : ℕ) : ℤ :=
  A091453.P13154820347663244878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091627.P11525409587579561723

`A091626(n)-(n+1)`
-/

namespace A091627.P11525409587579561723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091626 n - (n + 1 : ℤ)

end

end A091627.P11525409587579561723

noncomputable section

/-- A091627: Number of ordered integer pairs (b,c) with 1 <= b,c <= n such that both roots of x^2+bx+c=0 are integers.

Offset 0, canonical program `A091627.P11525409587579561723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091627 (n : ℕ) : ℤ :=
  A091627.P11525409587579561723.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091931.P13188532409164898325

`A000040(n+1)-2^(A035100(n+1)-1)`
-/

namespace A091931.P13188532409164898325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) - (2 : ℚ) ^ (A035100 (n + 1) - 1 : ℤ)

end

end A091931.P13188532409164898325

noncomputable section

/-- A091931: Change the first bit to 0 in binary notation for the n-th prime.

Offset 1, canonical program `A091931.P13188532409164898325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A035100, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A091931 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091931.P13188532409164898325.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A035100, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A091931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091971.P3439782580531750982

`∑[A004277(A047263(n+1))-A047342(n+1)]`
-/

namespace A091971.P3439782580531750982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047263 (n + 1)).toNat - A047342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091971.P3439782580531750982

noncomputable section

/-- A091971: G.f.: (1+x^3)*(1+x^5)*(1+x^6)/((1-x^4)*(1-x^5)*(1-x^6)).

Offset 0, canonical program `A091971.P3439782580531750982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8334 terms. -/
def A091971 (n : ℕ) : ℤ :=
  A091971.P3439782580531750982.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8334 terms. -/
def A091971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092053.P2839003773739220658

`A001901(n+1)-A001902(n+1)`
-/

namespace A092053.P2839003773739220658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001901 (n + 1) - A001902 (n + 1)

end

end A092053.P2839003773739220658

noncomputable section

/-- A092053: Denominators of the convergents of the continued fraction expansion [1;1/2,1/3,1/4,...,1/n,...].

Offset 1, canonical program `A092053.P2839003773739220658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A092053 (n : ℕ) : ℤ :=
  A092053.P2839003773739220658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A092053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092282.P13197973545267408509

`A048760(n+1)-A000578(A048766(n+1))`
-/

namespace A092282.P13197973545267408509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (n + 1) - A000578 (A048766 (n + 1)).toNat

end

end A092282.P13197973545267408509

noncomputable section

/-- A092282: Difference between largest square number and largest cube number less than n.

Offset 1, canonical program `A092282.P13197973545267408509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092282 (n : ℕ) : ℤ :=
  A092282.P13197973545267408509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092308.P14534356518420386647

`A067513(A006093(n+1))`
-/

namespace A092308.P14534356518420386647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A006093 (n + 1)).toNat

end

end A092308.P14534356518420386647

noncomputable section

/-- A092308: For p=prime(n), a(n) = the number of primes q such that q-1 divides p-1.

Offset 1, canonical program `A092308.P14534356518420386647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A092308 (n : ℕ) : ℤ :=
  A092308.P14534356518420386647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A092308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092543.P4363946767756583020

`A110654(A002024(n+1))+A010751(n)`
-/

namespace A092543.P4363946767756583020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002024 (n + 1)).toNat + A010751 n

end

end A092543.P4363946767756583020

noncomputable section

/-- A092543: Table below read by antidiagonals alternately upwards and downwards.

Offset 1, canonical program `A092543.P4363946767756583020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092543 (n : ℕ) : ℤ :=
  A092543.P4363946767756583020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092570.P1782335382594658961

`p?[A092569(p?[A092569(n)])]`
-/

namespace A092570.P1782335382594658961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092570.P1782335382594658961

noncomputable section

/-- A092570: Primes p which become a prime q under transformation of inner bits of binary representation in A092569. In binary representation of p, transformation of inner bits, 1 <-> 0, gives binary representation of q.

Offset 1, canonical program `A092570.P1782335382594658961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A092570 (n : ℕ) : ℤ :=
  A092570.P1782335382594658961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A092570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092690.P2634630127419684393

`A132894(n)+A002426(n)`
-/

namespace A092690.P2634630127419684393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132894 n + A002426 n

end

end A092690.P2634630127419684393

noncomputable section

/-- A092690: Row sums of triangle A092689, which is related to the central trinomial coefficients (A002426).

Offset 0, canonical program `A092690.P2634630127419684393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A092690 (n : ℕ) : ℤ :=
  A092690.P2634630127419684393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A092690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092695.P10644607240594613429

`n-∑[char[A080672(n+1)]]`
-/

namespace A092695.P10644607240594613429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080672 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A092695.P10644607240594613429

noncomputable section

/-- A092695: Number of positive integers less than or equal to n which are not divisible by the primes 2,3,5,7.

Offset 0, canonical program `A092695.P10644607240594613429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092695 (n : ℕ) : ℤ :=
  A092695.P10644607240594613429.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092738.P4329942104001365839

`p?[A001043(n+1)+1]`
-/

namespace A092738.P4329942104001365839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092738.P4329942104001365839

noncomputable section

/-- A092738: Primes of the form prime(x)+prime(x+1)+1.

Offset 1, canonical program `A092738.P4329942104001365839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A092738 (n : ℕ) : ℤ :=
  A092738.P4329942104001365839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A092738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092757.P8927034307755694679

`∑[A004257(n+1)]%A080335(n)`
-/

namespace A092757.P8927034307755694679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A080335 n)

end

end A092757.P8927034307755694679

noncomputable section

/-- A092757: Partial sums of round(log_2(n)).

Offset 1, canonical program `A092757.P8927034307755694679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092757 (n : ℕ) : ℤ :=
  A092757.P8927034307755694679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092777.P6149524983879065548

`∑[A029836(n)]`
-/

namespace A092777.P6149524983879065548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092777.P6149524983879065548

noncomputable section

/-- A092777: a(n) = Sum_{k=1..n} round(log(prime(k))).

Offset 1, canonical program `A092777.P6149524983879065548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092777 (n : ℕ) : ℤ :=
  A092777.P6149524983879065548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092847.P13850959851202236546

`∑[A002036(n+1)]`
-/

namespace A092847.P13850959851202236546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092847.P13850959851202236546

noncomputable section

/-- A092847: a(n) = Sum_{k=1..n} round(prime(k) / log(prime(k))).

Offset 1, canonical program `A092847.P13850959851202236546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092847 (n : ℕ) : ℤ :=
  A092847.P13850959851202236546.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092930.P3879885614855203798

`Δ[n*A018252(n+1)]`
-/

namespace A092930.P3879885614855203798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092930.P3879885614855203798

noncomputable section

/-- A092930: n-th partial arithmetic mean is equal to the n-th composite number.

Offset 1, canonical program `A092930.P3879885614855203798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092930 (n : ℕ) : ℤ :=
  A092930.P3879885614855203798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092949.P1382492647621219255

`A001043(n+1)+1`
-/

namespace A092949.P1382492647621219255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + 1

end

end A092949.P1382492647621219255

noncomputable section

/-- A092949: Numbers of the form prime(n+1) + prime(n) + 1.

Offset 1, canonical program `A092949.P1382492647621219255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092949 (n : ℕ) : ℤ :=
  A092949.P1382492647621219255.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092949.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092984.P11196949858830115087

`char[∑{d}[A071726(n)+1, #]+n]+1`
-/

namespace A092984.P11196949858830115087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071726 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A092984.P11196949858830115087

noncomputable section

/-- A092984: a(n) = the least k >= 1 such that n! + k is squarefree.

Offset 1, canonical program `A092984.P11196949858830115087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A092984 (n : ℕ) : ℤ :=
  (A092984.P11196949858830115087.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A092984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093338.P12790822210776350752

`p?[A077648(n+1)]`
-/

namespace A093338.P12790822210776350752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093338.P12790822210776350752

noncomputable section

/-- A093338: Scan primes, write down initial digit if it is a prime.

Offset 2, canonical program `A093338.P12790822210776350752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A093338 (n : ℕ) : ℤ :=
  A093338.P12790822210776350752.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A093338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093722.P2292201294812047524

`∑[A077814(n)+A026741(A026741(n))]`
-/

namespace A093722.P2292201294812047524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 n + A026741 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093722.P2292201294812047524

noncomputable section

/-- A093722: Integers of the form (k^2 - 1) / 120.

Offset 1, canonical program `A093722.P2292201294812047524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093722 (n : ℕ) : ℤ :=
  A093722.P2292201294812047524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093995.P6642512022906989204

`∑[A198954(n)]`
-/

namespace A093995.P6642512022906989204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093995.P6642512022906989204

noncomputable section

/-- A093995: n^2 appears n times, triangle read by rows.

Offset 1, canonical program `A093995.P6642512022906989204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093995 (n : ℕ) : ℤ :=
  A093995.P6642512022906989204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094064.P17439103977011875938

`A057427(A004442(n))+A020703(A028310(n))`
-/

namespace A094064.P17439103977011875938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A004442 n).toNat + A020703 (A028310 n).toNat

end

end A094064.P17439103977011875938

noncomputable section

/-- A094064: Sequences has the properties shown in the Comments lines.

Offset 0, canonical program `A094064.P17439103977011875938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094064 (n : ℕ) : ℤ :=
  A094064.P17439103977011875938.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094102.P5158071478824962528

`A000045(A004737(n+1))`
-/

namespace A094102.P5158071478824962528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004737 (n + 1)).toNat

end

end A094102.P5158071478824962528

noncomputable section

/-- A094102: Triangle read by rows in which row n contains Fib(1), ..., Fib(n-1), Fib(n), Fib(n-1), ..., Fib(1).

Offset 1, canonical program `A094102.P5158071478824962528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094102 (n : ℕ) : ℤ :=
  A094102.P5158071478824962528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094586.P12809241488552262600

`A129361(Δ[n²])`
-/

namespace A094586.P12809241488552262600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129361 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A094586.P12809241488552262600

noncomputable section

/-- A094586: Central numbers of the triangle T of all positive differences of distinct Fibonacci numbers.

Offset 1, canonical program `A094586.P12809241488552262600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A094586 (n : ℕ) : ℤ :=
  A094586.P12809241488552262600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A094586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094632.P854567659462447146

`A093044(n)+A093045(n)/2`
-/

namespace A094632.P854567659462447146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093044 n : ℚ) + (A093045 n : ℚ) / 2

end

end A094632.P854567659462447146

noncomputable section

/-- A094632: A trace sequence for a Napoleon graph.

Offset 0, canonical program `A094632.P854567659462447146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A094632 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094632.P854567659462447146.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A094632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094717.P15065802490078978138

`ceil(A092236(n)/2)`
-/

namespace A094717.P15065802490078978138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092236 n : ℚ) / 2⌉

end

end A094717.P15065802490078978138

noncomputable section

/-- A094717: a(n) = n! * Sum_{i+2j+3k=n} 1/(i!*(2j)!*(3k)!).

Offset 0, canonical program `A094717.P15065802490078978138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A094717 (n : ℕ) : ℤ :=
  A094717.P15065802490078978138.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A094717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094743.P3700161173286017778

`p?[xor(1, A008864(n+1))]`
-/

namespace A094743.P3700161173286017778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A008864 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094743.P3700161173286017778

noncomputable section

/-- A094743: Beginning with 2, increasing primes such that the sum of successive differences is also prime.

Offset 1, canonical program `A094743.P3700161173286017778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A094743 (n : ℕ) : ℤ :=
  A094743.P3700161173286017778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A094743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094795.P16070469547281652501

`∑[6*A094794(n)]+1`
-/

namespace A094795.P16070469547281652501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A094794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A094795.P16070469547281652501

noncomputable section

/-- A094795: a(n) = (1/n!)*A023043(n).

Offset 0, canonical program `A094795.P16070469547281652501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094795 (n : ℕ) : ℤ :=
  A094795.P16070469547281652501.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095098.P13291382261606550439

`A003622(A026274(n+1)-n)`
-/

namespace A095098.P13291382261606550439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A026274 (n + 1) - (n : ℤ)).toNat

end

end A095098.P13291382261606550439

noncomputable section

/-- A095098: Fib001 numbers: those k for which the Zeckendorf expansion A014417(k) ends with two zeros and a final one.

Offset 1, canonical program `A095098.P13291382261606550439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095098 (n : ℕ) : ℤ :=
  A095098.P13291382261606550439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095126.P545149050355798677

`∑[3*A095125(n+1)]+1`
-/

namespace A095126.P545149050355798677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A095125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095126.P545149050355798677

noncomputable section

/-- A095126: Expansion of x*(4+5*x-x^2)/ (1-2*x-3*x^2+x^3).

Offset 1, canonical program `A095126.P545149050355798677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A095126 (n : ℕ) : ℤ :=
  A095126.P545149050355798677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A095126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095141.P4772791411093758458

`C(A003056(n), A004736(n+1)-1)%6`
-/

namespace A095141.P4772791411093758458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat % 6

end

end A095141.P4772791411093758458

noncomputable section

/-- A095141: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 6.

Offset 0, canonical program `A095141.P4772791411093758458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095141 (n : ℕ) : ℤ :=
  (A095141.P4772791411093758458.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095143.P1118439668127152806

`C(A003056(n), A004736(n+1)-1)%9`
-/

namespace A095143.P1118439668127152806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat % 9

end

end A095143.P1118439668127152806

noncomputable section

/-- A095143: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 9.

Offset 0, canonical program `A095143.P1118439668127152806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095143 (n : ℕ) : ℤ :=
  (A095143.P1118439668127152806.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095144.P5778679899475753494

`C(A003056(n), A004736(n+1)-1)%11`
-/

namespace A095144.P5778679899475753494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat % 11

end

end A095144.P5778679899475753494

noncomputable section

/-- A095144: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 11.

Offset 0, canonical program `A095144.P5778679899475753494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095144 (n : ℕ) : ℤ :=
  (A095144.P5778679899475753494.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095402.P3275104742656262928

`∑{p}[n+1, A007953(#)]`
-/

namespace A095402.P3275104742656262928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A007953 p

end

end A095402.P3275104742656262928

noncomputable section

/-- A095402: Sum of digits of all distinct prime factors of n.

Offset 1, canonical program `A095402.P3275104742656262928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095402 (n : ℕ) : ℤ :=
  A095402.P3275104742656262928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095404.P9061338840450113737

`lt[∑{p}[n, A007953(#)], A007953(n)]`
-/

namespace A095404.P9061338840450113737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A007953 p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A095404.P9061338840450113737

noncomputable section

/-- A095404: Numbers whose sum of digits is greater than the sum of the digits of all of its distinct prime factors.

Offset 1, canonical program `A095404.P9061338840450113737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4371 terms. -/
def A095404 (n : ℕ) : ℤ :=
  (A095404.P9061338840450113737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4371 terms. -/
def A095404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095408.P2538879780517524759

`A095407(n+1)-A055642(n+1)`
-/

namespace A095408.P2538879780517524759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (n + 1) - A055642 (n + 1)

end

end A095408.P2538879780517524759

noncomputable section

/-- A095408: Total number of decimal digits in all distinct prime factors of n minus number of digits in n.

Offset 1, canonical program `A095408.P2538879780517524759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095408 (n : ℕ) : ℤ :=
  A095408.P2538879780517524759.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095715.P4979844699181308193

`A023532(n)*A095713(n+1)`
-/

namespace A095715.P4979844699181308193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n * A095713 (n + 1)

end

end A095715.P4979844699181308193

noncomputable section

/-- A095715: Triangle of numbers obtained by reversing the first n digits of 1/phi and juxtaposing (phi denotes the golden ratio: A001622).

Offset 1, canonical program `A095715.P4979844699181308193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095715 (n : ℕ) : ℤ :=
  A095715.P4979844699181308193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095775.P3833551508889081788

`A003160(eq[1, A095774(n+1)+1]+1)`
-/

namespace A095775.P3833551508889081788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095774 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003160 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A095775.P3833551508889081788

noncomputable section

/-- A095775: n/2 when 2*A003160(n) = n.

Offset 1, canonical program `A095775.P3833551508889081788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A095775 (n : ℕ) : ℤ :=
  A095775.P3833551508889081788.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A095775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095864.P7106599436942101963

`A068093(n+2)-A068092(n+2)`
-/

namespace A095864.P7106599436942101963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068093 (n + 2) - A068092 (n + 2)

end

end A095864.P7106599436942101963

noncomputable section

/-- A095864: Largest n-digit triangular number.

Offset 1, canonical program `A095864.P7106599436942101963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095864 (n : ℕ) : ℤ :=
  A095864.P7106599436942101963.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095864.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095865.P3428909612435295110

`A068093(n+1)-10^n`
-/

namespace A095865.P3428909612435295110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068093 (n + 1) - (10 ^ n : ℤ)

end

end A095865.P3428909612435295110

noncomputable section

/-- A095865: Smallest n-digit triangular number - smallest n-digit number.

Offset 1, canonical program `A095865.P3428909612435295110`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095865 (n : ℕ) : ℤ :=
  A095865.P3428909612435295110.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095865.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095891.P7182405041341655823

`A000312(A004736(n+1))`
-/

namespace A095891.P7182405041341655823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A004736 (n + 1)).toNat

end

end A095891.P7182405041341655823

noncomputable section

/-- A095891: Triangle read by rows: T(n,k) = (n-k+1)^(n-k+1), n>=1, 1<=k<=n.

Offset 1, canonical program `A095891.P7182405041341655823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A095891 (n : ℕ) : ℤ :=
  A095891.P7182405041341655823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A095891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096140.P8299260409315623569

`A094292(n)+A049681(n)`
-/

namespace A096140.P8299260409315623569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094292 n + A049681 n

end

end A096140.P8299260409315623569

noncomputable section

/-- A096140: a(n) = sum of n Fibonacci numbers starting from F(n).

Offset 0, canonical program `A096140.P8299260409315623569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A096140 (n : ℕ) : ℤ :=
  A096140.P8299260409315623569.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A096140.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A098021.P982520956619515438

`∑[A000040(Δ[A001951(n)]+2)]`
-/

namespace A098021.P982520956619515438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098021.P982520956619515438

noncomputable section

/-- A098021: Positions of 0's in the zero-one sequence [n*r+2*r]-[n*r]-[2*r], where r=sqrt(2) and [ ]=floor; see A187967.

Offset 1, canonical program `A098021.P982520956619515438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098021 (n : ℕ) : ℤ :=
  A098021.P982520956619515438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098021.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A098037.P13374323077564953075

`∑{e}[A001043(n+1), #]`
-/

namespace A098037.P13374323077564953075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A098037.P13374323077564953075

noncomputable section

/-- A098037: Number of prime divisors, counted with multiplicity, of the sum of two consecutive primes.

Offset 1, canonical program `A098037.P13374323077564953075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098037 (n : ℕ) : ℤ :=
  (A098037.P13374323077564953075.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098096.P6910848486707273898

`A001248(n+1)*A034785(n+1)`
-/

namespace A098096.P6910848486707273898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A034785 (n + 1)

end

end A098096.P6910848486707273898

noncomputable section

/-- A098096: Numbers of the form p^2 * 2^p for p prime.

Offset 1, canonical program `A098096.P6910848486707273898`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A034785, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A098096 (n : ℕ) : ℤ :=
  A098096.P6910848486707273898.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A034785, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A098096.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A098228.P18298445085309649262

`floor((n+2)²/A053650(n+2))`
-/

namespace A098228.P18298445085309649262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 2) ^ 2 : ℚ) / (A053650 (n + 2) : ℚ)⌋

end

end A098228.P18298445085309649262

noncomputable section

/-- A098228: a(n) = floor(n/(n-phi(n))) = floor(n/cototient(n)).

Offset 2, canonical program `A098228.P18298445085309649262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A098228 (n : ℕ) : ℤ :=
  A098228.P18298445085309649262.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A098228.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A098893.P17595365160274203739

`∑{e}[A067080(n+1), #]`
-/

namespace A098893.P17595365160274203739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A098893.P17595365160274203739

noncomputable section

/-- A098893: Sum of number of prime-factors of all prefixes in decimal representation of n.

Offset 1, canonical program `A098893.P17595365160274203739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098893 (n : ℕ) : ℤ :=
  (A098893.P17595365160274203739.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098893.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A099111.P13506567770673264388

`∑[A004058(n)]`
-/

namespace A099111.P13506567770673264388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099111.P13506567770673264388

noncomputable section

/-- A099111: Expansion of 1 / ((1+x)*(1-2*x)*(1-3*x)*(1-4*x)*(1-5*x)).

Offset 0, canonical program `A099111.P13506567770673264388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A099111 (n : ℕ) : ℤ :=
  A099111.P13506567770673264388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A099111.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A099244.P17531829888969145965

`gcd(A000120(n+1), A070939(n))`
-/

namespace A099244.P17531829888969145965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (n + 1)) (A070939 n)

end

end A099244.P17531829888969145965

noncomputable section

/-- A099244: Greatest common divisor of length of n in binary representation and its number of ones.

Offset 1, canonical program `A099244.P17531829888969145965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099244 (n : ℕ) : ℤ :=
  (A099244.P17531829888969145965.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099244.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A099399.P16739772945462951370

`A038845(n)/gcd(A000984(n), A038845(n))`
-/

namespace A099399.P16739772945462951370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038845 n : ℚ) / (Int.gcd (A000984 n) (A038845 n) : ℚ)

end

end A099399.P16739772945462951370

noncomputable section

/-- A099399: Denominators of rationals (in lowest terms) used in a certain high temperature expansion.

Offset 0, canonical program `A099399.P16739772945462951370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A099399 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099399.P16739772945462951370.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A099399.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A099584.P16058587877554094154

`val(A006093(n+1), 3)`
-/

namespace A099584.P16058587877554094154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006093 (n + 1)).toNat 3

end

end A099584.P16058587877554094154

noncomputable section

/-- A099584: Exponent of 3 in factorization of prime(n) - 1.

Offset 1, canonical program `A099584.P16058587877554094154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099584 (n : ℕ) : ℤ :=
  (A099584.P16058587877554094154.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099584.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A099908.P50245235317994

`A001700(n)%(n+1)²²`
-/

namespace A099908.P50245235317994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001700 n) (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A099908.P50245235317994

noncomputable section

/-- A099908: a(n) = C(2n-1,n-1) mod n^4.

Offset 1, canonical program `A099908.P50245235317994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A099908 (n : ℕ) : ℤ :=
  A099908.P50245235317994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A099908.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100321.P14654763514196518351

`A119282(n)+A084247(n)`
-/

namespace A100321.P14654763514196518351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n + A084247 n

end

end A100321.P14654763514196518351

noncomputable section

/-- A100321: The trinomial transform (A027907) gives powers of 2, while the trinomial transform of this sequence shift one place left gives powers of 3.

Offset 0, canonical program `A100321.P14654763514196518351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A100321 (n : ℕ) : ℤ :=
  A100321.P14654763514196518351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A100321.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100511.P14890745469557340545

`n*A032443(n)`
-/

namespace A100511.P14890745469557340545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032443 n

end

end A100511.P14890745469557340545

noncomputable section

/-- A100511: a(n) = Sum_{j=0..n} Sum_{k=0..n} binomial(n,j)*binomial(n,k)*max(j,k).

Offset 0, canonical program `A100511.P14890745469557340545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A100511 (n : ℕ) : ℤ :=
  A100511.P14890745469557340545.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A100511.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A101301.P12325208145575005874

`∑[A006093(n+1)]`
-/

namespace A101301.P12325208145575005874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101301.P12325208145575005874

noncomputable section

/-- A101301: The sum of the first n primes, minus n.

Offset 1, canonical program `A101301.P12325208145575005874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101301 (n : ℕ) : ℤ :=
  A101301.P12325208145575005874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101301.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A101349.P7339435361473560082

`Δ[A048766(A000040(n+1))]`
-/

namespace A101349.P7339435361473560082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101349.P7339435361473560082

noncomputable section

/-- A101349: Numbers of cubes between prime(n) and prime(n+1).

Offset 1, canonical program `A101349.P7339435361473560082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A101349 (n : ℕ) : ℤ :=
  A101349.P7339435361473560082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A101349.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A102071.P7678750906343688346

`A002026(n+1)+A002026(n)`
-/

namespace A102071.P7678750906343688346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (n + 1) + A002026 n

end

end A102071.P7678750906343688346

noncomputable section

/-- A102071: Pairwise sums of general ballot numbers (A002026).

Offset 1, canonical program `A102071.P7678750906343688346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A102071 (n : ℕ) : ℤ :=
  A102071.P7678750906343688346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A102071.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A103938.P6046974057312831276

`A001764(n)+A000139(n)`
-/

namespace A103938.P6046974057312831276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n + A000139 n

end

end A103938.P6046974057312831276

noncomputable section

/-- A103938: Number of rooted non-separable n-edge maps in the plane (planar with a distinguished outside face).

Offset 1, canonical program `A103938.P6046974057312831276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A103938 (n : ℕ) : ℤ :=
  A103938.P6046974057312831276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A103938.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104555.P5752961705743609917

`∑[ceil(n/3)]*A128834(n)`
-/

namespace A104555.P5752961705743609917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A128834 n

end

end A104555.P5752961705743609917

noncomputable section

/-- A104555: Expansion of x*(1 - x)/(1 - x + x^2)^3.

Offset 0, canonical program `A104555.P5752961705743609917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104555 (n : ℕ) : ℤ :=
  A104555.P5752961705743609917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104555.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104641.P16051552740361381644

`eq[A104639(n+1), A104640(n+1)]+1`
-/

namespace A104641.P16051552740361381644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A104641.P16051552740361381644

noncomputable section

/-- A104641: Numbers n such that n^3 has equal number of odd and even digits.

Offset 1, canonical program `A104641.P16051552740361381644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1500 terms. -/
def A104641 (n : ℕ) : ℤ :=
  (A104641.P16051552740361381644.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1500 terms. -/
def A104641.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104692.P14109630690310913269

`lt[A104640(n+1), A104639(n+1)]+1`
-/

namespace A104692.P14109630690310913269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A104692.P14109630690310913269

noncomputable section

/-- A104692: Numbers n such that in n^3, number of odd digits is less than number of even digits.

Offset 1, canonical program `A104692.P14109630690310913269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4292 terms. -/
def A104692 (n : ℕ) : ℤ :=
  (A104692.P14109630690310913269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4292 terms. -/
def A104692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104693.P4864952721135800102

`lt[A104639(n+1), A104640(n+1)]+1`
-/

namespace A104693.P4864952721135800102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A104693.P4864952721135800102

noncomputable section

/-- A104693: Numbers n such that in n^3, number of odd digits is larger than number of even digits.

Offset 1, canonical program `A104693.P4864952721135800102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A104693 (n : ℕ) : ℤ :=
  (A104693.P4864952721135800102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A104693.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A104793.P11127849527871265283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104793 (n : ℕ) : ℤ :=
  A104793.P11127849527871265283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104793.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A104887.P16520352266867439420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104887 (n : ℕ) : ℤ :=
  A104887.P16520352266867439420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104887.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A105450.P271644177565389064

`∑[A027658(n)+A000124(n)]-2`
-/

namespace A105450.P271644177565389064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027658 n + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A105450.P271644177565389064

noncomputable section

/-- A105450: a(n) = binomial(n+5,6) + binomial(n+3,3) + binomial(n+2,3) + binomial(n-1,1).

Offset 0, canonical program `A105450.P271644177565389064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105450 (n : ℕ) : ℤ :=
  A105450.P271644177565389064.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105450.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A105673.P14538287794614071707

`2*A002654(n+1)`
-/

namespace A105673.P14538287794614071707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002654 (n + 1)

end

end A105673.P14538287794614071707

noncomputable section

/-- A105673: One-half of theta series of square lattice (or half the number of ways of writing n > 0 as a sum of 2 squares), without the constant term, which is 1/2.

Offset 1, canonical program `A105673.P14538287794614071707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105673 (n : ℕ) : ℤ :=
  A105673.P14538287794614071707.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105673.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A106188.P159440762461777532

`A000984(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A106188.P159440762461777532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000984 n + a (n - 2)

end

end A106188.P159440762461777532

noncomputable section

/-- A106188: Expansion of 1/((1-x^2)*sqrt(1-4*x)).

Offset 0, canonical program `A106188.P159440762461777532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A106188 (n : ℕ) : ℤ :=
  A106188.P159440762461777532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A106188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106189.P10544988817194664811

`A000984(n)+2*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A106189.P10544988817194664811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000984 n + 2 * a (n - 2)

end

end A106189.P10544988817194664811

noncomputable section

/-- A106189: Expansion of 1/((1-2x^2)sqrt(1-4x)).

Offset 0, canonical program `A106189.P10544988817194664811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A106189 (n : ℕ) : ℤ :=
  A106189.P10544988817194664811.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A106189.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A106791.P12633589256046058990

`abs(Δ[A073817(n)*A074081(n)])`
-/

namespace A106791.P12633589256046058990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 n * A074081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A106791.P12633589256046058990

noncomputable section

/-- A106791: Sum of two consecutive squares of Lucas 4-step numbers (A073817).

Offset 0, canonical program `A106791.P12633589256046058990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A106791 (n : ℕ) : ℤ :=
  A106791.P12633589256046058990.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A106791.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107233.P5492131324559239441

`A042948(n)*A100071(n)`
-/

namespace A107233.P5492131324559239441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n * A100071 n

end

end A107233.P5492131324559239441

noncomputable section

/-- A107233: An inverse Chebyshev transform of n^3.

Offset 0, canonical program `A107233.P5492131324559239441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A107233 (n : ℕ) : ℤ :=
  A107233.P5492131324559239441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A107233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107395.P16982620292742118873

`∑[A027802(n+2)+A027791(n+3)]-A027791(n+3)`
-/

namespace A107395.P16982620292742118873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027802 (n + 2) + A027791 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027791 (n + 3)

end

end A107395.P16982620292742118873

noncomputable section

/-- A107395: a(n) = binomial(n+4,4)*binomial(n+6,4).

Offset 0, canonical program `A107395.P16982620292742118873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107395 (n : ℕ) : ℤ :=
  A107395.P16982620292742118873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107395.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A108958.P12750011732414327214

`abs(2^n-A001700(n))`
-/

namespace A108958.P12750011732414327214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A001700 n|

end

end A108958.P12750011732414327214

noncomputable section

/-- A108958: Number of unordered pairs of distinct length-n binary words having the same number of 1's.

Offset 1, canonical program `A108958.P12750011732414327214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A108958 (n : ℕ) : ℤ :=
  A108958.P12750011732414327214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A108958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109250.P6190560470805892054

`floor(A001953(n+1)/A006337(n+1))`
-/

namespace A109250.P6190560470805892054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001953 (n + 1) : ℚ) / (A006337 (n + 1) : ℚ)⌋

end

end A109250.P6190560470805892054

noncomputable section

/-- A109250: Self-inverse integer permutation induced by Beatty sequences for 1+sqrt(2) and 1+1/sqrt(2).

Offset 1, canonical program `A109250.P6190560470805892054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109250 (n : ℕ) : ℤ :=
  A109250.P6190560470805892054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109512.P2454362305134620450

`A095114(A028310(n))-1+n`
-/

namespace A109512.P2454362305134620450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (A028310 n).toNat - 1 + (n : ℤ)

end

end A109512.P2454362305134620450

noncomputable section

/-- A109512: Integers which are not the sum of n and A001462(n).

Offset 0, canonical program `A109512.P2454362305134620450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109512 (n : ℕ) : ℤ :=
  A109512.P2454362305134620450.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109512.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A109940.P9250474267491841312

`A061601(A061601(n+1)%(n+1)+n)+n`
-/

namespace A109940.P9250474267491841312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (Int.tmod (A061601 (n + 1)) (n + 1 : ℤ) + (n : ℤ)).toNat + (n : ℤ)

end

end A109940.P9250474267491841312

noncomputable section

/-- A109940: Largest k-digit multiple of n where k is the number of digits in n.

Offset 1, canonical program `A109940.P9250474267491841312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109940 (n : ℕ) : ℤ :=
  A109940.P9250474267491841312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109940.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A110494.P10384537411605052210

`or(1, A084921(n+1))`
-/

namespace A110494.P10384537411605052210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084921 (n + 1))

end

end A110494.P10384537411605052210

noncomputable section

/-- A110494: Least k such that prime(n)^2 divides binomial(2k,k).

Offset 1, canonical program `A110494.P10384537411605052210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110494 (n : ℕ) : ℤ :=
  A110494.P10384537411605052210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110494.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A111132.P3156700422900394139

`∑[A003893(Δ[n²])]`
-/

namespace A111132.P3156700422900394139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111132.P3156700422900394139

noncomputable section

/-- A111132: a(n+1) = a(n) + (a(n) - a(n-1) + a(n) mod 10) mod 10 with a(0)=0 and a(1)=1.

Offset 0, canonical program `A111132.P3156700422900394139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A111132 (n : ℕ) : ℤ :=
  A111132.P3156700422900394139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A111132.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A111642.P14055578616394844448

`Δ[A077985(n)-A125905(n)]`
-/

namespace A111642.P14055578616394844448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n - A125905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111642.P14055578616394844448

noncomputable section

/-- A111642: Expansion of 2*(x-1)*(x+1)/((x^2+4*x+1)*(x^2-2*x-1)).

Offset 0, canonical program `A111642.P14055578616394844448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A111642 (n : ℕ) : ℤ :=
  A111642.P14055578616394844448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A111642.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A111854.P12628893320528606972

`∑[char[A034100(n+1)-1]]`
-/

namespace A111854.P12628893320528606972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034100 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111854.P12628893320528606972

noncomputable section

/-- A111854: Number of numbers m <= n such that 4 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111854.P12628893320528606972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111854 (n : ℕ) : ℤ :=
  (A111854.P12628893320528606972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111855.P445997609701663267

`∑[char[A034101(n+1)-1]]`
-/

namespace A111855.P445997609701663267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034101 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111855.P445997609701663267

noncomputable section

/-- A111855: Number of numbers m <= n such that 5 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111855.P445997609701663267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111855 (n : ℕ) : ℤ :=
  (A111855.P445997609701663267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111891.P17105270251826689763

`∑[char[eq[1, A111862(n+1)]]]`
-/

namespace A111891.P17105270251826689763
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111891.P17105270251826689763

noncomputable section

/-- A111891: Number of numbers m <= n such that 1 equals the second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111891.P17105270251826689763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111891 (n : ℕ) : ℤ :=
  (A111891.P17105270251826689763.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111892.P4463741140269884913

`∑[char[eq[2, A111862(n+1)]]]`
-/

namespace A111892.P4463741140269884913
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111892.P4463741140269884913

noncomputable section

/-- A111892: Number of numbers m <= n such that 2 equals the second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111892.P4463741140269884913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111892 (n : ℕ) : ℤ :=
  (A111892.P4463741140269884913.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111893.P6816337927118764059

`∑[char[eq[3, A111862(n+1)]]]`
-/

namespace A111893.P6816337927118764059
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111893.P6816337927118764059

noncomputable section

/-- A111893: Number of numbers m <= n such that 3 equals the second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111893.P6816337927118764059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111893 (n : ℕ) : ℤ :=
  (A111893.P6816337927118764059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111895.P24504582110756803

`∑[char[eq[5, A111862(n+1)]]]`
-/

namespace A111895.P24504582110756803
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111895.P24504582110756803

noncomputable section

/-- A111895: Number of numbers m <= n such that 5 equals the second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111895.P24504582110756803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111895 (n : ℕ) : ℤ :=
  (A111895.P24504582110756803.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111896.P11288438565352945554

`∑[char[eq[6, A111862(n+1)]]]`
-/

namespace A111896.P11288438565352945554
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111896.P11288438565352945554

noncomputable section

/-- A111896: Number of numbers m <= n such that 6 equals the second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111896.P11288438565352945554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111896 (n : ℕ) : ℤ :=
  (A111896.P11288438565352945554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111897.P18341532371278709385

`∑[char[eq[7, A111862(n+1)]]]`
-/

namespace A111897.P18341532371278709385
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111897.P18341532371278709385

noncomputable section

/-- A111897: Number of numbers m <= n such that 7 equals the second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111897.P18341532371278709385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111897 (n : ℕ) : ℤ :=
  (A111897.P18341532371278709385.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111898.P9714464059355174536

`∑[char[eq[8, A111862(n+1)]]]`
-/

namespace A111898.P9714464059355174536
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111898.P9714464059355174536

noncomputable section

/-- A111898: Number of numbers m <= n such that 8 equals the second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111898.P9714464059355174536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111898 (n : ℕ) : ℤ :=
  (A111898.P9714464059355174536.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111899.P5822750478645287811

`∑[C(A111862(n+1), 9)]`
-/

namespace A111899.P5822750478645287811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A111862 (n + 1)).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111899.P5822750478645287811

noncomputable section

/-- A111899: Number of numbers m <= n such that 9 equals the second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111899.P5822750478645287811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111899 (n : ℕ) : ℤ :=
  (A111899.P5822750478645287811.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111938.P12344735915851261426

`(n+1)*A002654(n+1)`
-/

namespace A111938.P12344735915851261426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002654 (n + 1)

end

end A111938.P12344735915851261426

noncomputable section

/-- A111938: a(n) = n times number of divisors of n of form 4m+1 - n times number of divisors of form 4m+3.

Offset 1, canonical program `A111938.P12344735915851261426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111938 (n : ℕ) : ℤ :=
  A111938.P12344735915851261426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111938.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A112577.P5405651547640153875

`A291227(n)%A077985(n)`
-/

namespace A112577.P5405651547640153875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291227 n) (A077985 n)

end

end A112577.P5405651547640153875

noncomputable section

/-- A112577: A Chebyshev-related transform of the Jacobsthal numbers.

Offset 0, canonical program `A112577.P5405651547640153875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A112577 (n : ℕ) : ℤ :=
  A112577.P5405651547640153875.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A112577.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A113142.P14929086156183231685

`(A336705(n)-2)*A062157(n)`
-/

namespace A113142.P14929086156183231685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336705 n - 2) * A062157 n

end

end A113142.P14929086156183231685

noncomputable section

/-- A113142: Expansion of x(1-3x+x^2+x^3)/(1+x)^2.

Offset 0, canonical program `A113142.P14929086156183231685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113142 (n : ℕ) : ℤ :=
  A113142.P14929086156183231685.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113184.P18058107093625804020

`∑{d}[n+1, #*A152822(#)]`
-/

namespace A113184.P18058107093625804020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A152822 d

end

end A113184.P18058107093625804020

noncomputable section

/-- A113184: Absolute difference between sum of odd divisors of n and sum of even divisors of n.

Offset 1, canonical program `A113184.P18058107093625804020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113184 (n : ℕ) : ℤ :=
  A113184.P18058107093625804020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113184.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A113406.P10368065744675413005

`C(2, and(3, n+2))*A002654(n+1)`
-/

namespace A113406.P10368065744675413005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (Nat.land 3 (n + 2)) : ℤ) * A002654 (n + 1)

end

end A113406.P10368065744675413005

noncomputable section

/-- A113406: Half the number of integer solutions to x^2 + 4 * y^2 = n.

Offset 1, canonical program `A113406.P10368065744675413005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1008 terms. -/
def A113406 (n : ℕ) : ℤ :=
  A113406.P10368065744675413005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1008 terms. -/
def A113406.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A113652.P8497104966869689107

`(-1)^n*A002654(n+1)`
-/

namespace A113652.P8497104966869689107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002654 (n + 1)

end

end A113652.P8497104966869689107

noncomputable section

/-- A113652: Expansion of (1 - theta_4(q)^2) / 4 in powers of q.

Offset 1, canonical program `A113652.P8497104966869689107`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113652 (n : ℕ) : ℤ :=
  A113652.P8497104966869689107.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113652.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A113754.P4054510766768615700

`(n+1)*A052459(n+1)`
-/

namespace A113754.P4054510766768615700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052459 (n + 1)

end

end A113754.P4054510766768615700

noncomputable section

/-- A113754: Number of possible squares on an n^2 X n^2 grid.

Offset 1, canonical program `A113754.P4054510766768615700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113754 (n : ℕ) : ℤ :=
  A113754.P4054510766768615700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113754.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A114322.P5707945490578015361

`A018074(n+1)-1`
-/

namespace A114322.P5707945490578015361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018074 (n + 1) - 1

end

end A114322.P5707945490578015361

noncomputable section

/-- A114322: Largest number whose 4th power has n digits.

Offset 1, canonical program `A114322.P5707945490578015361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A114322 (n : ℕ) : ℤ :=
  A114322.P5707945490578015361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A114322.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115132.P4697064797982571806

`∑[A064059(n)]`
-/

namespace A115132.P4697064797982571806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115132.P4697064797982571806

noncomputable section

/-- A115132: Partial sums of A064059.

Offset 0, canonical program `A115132.P4697064797982571806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115132 (n : ℕ) : ℤ :=
  A115132.P4697064797982571806.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115132.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115240.P2043430779647816061

`A001672(n+1)-A115239(n+1)`
-/

namespace A115240.P2043430779647816061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001672 (n + 1) - A115239 (n + 1)

end

end A115240.P2043430779647816061

noncomputable section

/-- A115240: a(n) = A001672(n) - A115239(n).

Offset 1, canonical program `A115240.P2043430779647816061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A115240 (n : ℕ) : ℤ :=
  A115240.P2043430779647816061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A115240.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115605.P17610745474942676090

`round(A056570(n+1)/4)`
-/

namespace A115605.P17610745474942676090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A056570 (n + 1) : ℚ) / 4)

end

end A115605.P17610745474942676090

noncomputable section

/-- A115605: Expansion of -x^2*(2 + x - 2*x^2 - x^3 + 2*x^4) / ( (x-1)*(1+x)*(1 + x + x^2)*(x^2 - x + 1)*(x^2 + 4*x - 1)*(x^2 - x - 1) ).

Offset 0, canonical program `A115605.P17610745474942676090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A115605 (n : ℕ) : ℤ :=
  A115605.P17610745474942676090.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A115605.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A116589.P5380934516052577718

`∑[Δ[A038760(n)]+n]`
-/

namespace A116589.P5380934516052577718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038760 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116589.P5380934516052577718

noncomputable section

/-- A116589: a(n) = Sum{sqrt(n) < i <= n} i - Sum{1 <= i < sqrt(n)} i.

Offset 1, canonical program `A116589.P5380934516052577718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116589 (n : ℕ) : ℤ :=
  A116589.P5380934516052577718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116589.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A116850.P8068182614875240101

`∑[A049611(n)-A000295(n)]+1`
-/

namespace A116850.P8068182614875240101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n - A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116850.P8068182614875240101

noncomputable section

/-- A116850: Number of permutations of length n which avoid the patterns 231, 12354.

Offset 1, canonical program `A116850.P8068182614875240101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A116850 (n : ℕ) : ℤ :=
  A116850.P8068182614875240101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A116850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116851.P8576912490128033266

`A000325(n+1)+∑[2*A002663(n+1)]`
-/

namespace A116851.P8576912490128033266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116851.P8576912490128033266

noncomputable section

/-- A116851: Number of permutations of length n which avoid the patterns 321, 31245.

Offset 1, canonical program `A116851.P8576912490128033266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A116851 (n : ℕ) : ℤ :=
  A116851.P8576912490128033266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A116851.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A117762.P18433976159916290446

`A000040(n+1)*A084921(n+1)`
-/

namespace A117762.P18433976159916290446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A084921 (n + 1)

end

end A117762.P18433976159916290446

noncomputable section

/-- A117762: a(1) = 6; for n>1, a(n) = prime(n)*(prime(n)^2 - 1)/2.

Offset 1, canonical program `A117762.P18433976159916290446`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A084921, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A117762 (n : ℕ) : ℤ :=
  A117762.P18433976159916290446.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A084921, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A117762.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A118114.P17803072872865847372

`A005809(n+1)%A002378(n+2)`
-/

namespace A118114.P17803072872865847372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005809 (n + 1)) (A002378 (n + 2))

end

end A118114.P17803072872865847372

noncomputable section

/-- A118114: a(n) = binomial(3n,n) mod((n+1)(n+2)).

Offset 1, canonical program `A118114.P17803072872865847372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A118114 (n : ℕ) : ℤ :=
  A118114.P17803072872865847372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A118114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118392.P8089354987028530930

`A014695(n)*A027626(n)`
-/

namespace A118392.P8089354987028530930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 n * A027626 n

end

end A118392.P8089354987028530930

noncomputable section

/-- A118392: Denominator of sum of reciprocals of first n tetrahedral numbers A000292.

Offset 1, canonical program `A118392.P8089354987028530930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118392 (n : ℕ) : ℤ :=
  A118392.P8089354987028530930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118392.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A119281.P4500062069654907476`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119281 (n : ℕ) : ℤ :=
  A119281.P4500062069654907476.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119380.P3462034748689167672

`A000149(n+1)%p?[A006370(n)]`
-/

namespace A119380.P3462034748689167672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000149 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A119380.P3462034748689167672

noncomputable section

/-- A119380: Remainder when the integer part of e^n is divided by the n-th prime number.

Offset 1, canonical program `A119380.P3462034748689167672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A119380 (n : ℕ) : ℤ :=
  A119380.P3462034748689167672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A119380.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A120474.P16095270401045431404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093879, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120474 (n : ℕ) : ℤ :=
  A120474.P16095270401045431404.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093879, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120530.P7873409400076462526

`Δ[A120508(A028310(n))]^n`
-/

namespace A120530.P7873409400076462526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120508 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A120530.P7873409400076462526

noncomputable section

/-- A120530: First differences of successive generalized meta-Fibonacci numbers A120508.

Offset 1, canonical program `A120530.P7873409400076462526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120530 (n : ℕ) : ℤ :=
  A120530.P7873409400076462526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120530.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A120581.P14531339546796847337

`4^n*4^C(n, 2)*(-1)^n*A087168(n)`
-/

namespace A120581.P14531339546796847337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n * 4 ^ Nat.choose n 2 : ℤ) * (-1) ^ n * A087168 n

end

end A120581.P14531339546796847337

noncomputable section

/-- A120581: Hankel transform of sum{k=0..n, C(2k,k)*2^k}.

Offset 0, canonical program `A120581.P14531339546796847337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120581 (n : ℕ) : ℤ :=
  A120581.P14531339546796847337.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120581.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A120614.P9863577410631039700

`Δ[A120613(n+1)]`
-/

namespace A120614.P9863577410631039700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120614.P9863577410631039700

noncomputable section

/-- A120614: a(n) = g(n+1) - g(n) where g(k) = floor(phi*floor(k/phi)) and phi = (1+sqrt(5))/2.

Offset 1, canonical program `A120614.P9863577410631039700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120614 (n : ℕ) : ℤ :=
  A120614.P9863577410631039700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120615.P7512124784620845121

`∑[A120613(n+1)]`
-/

namespace A120615.P7512124784620845121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120615.P7512124784620845121

noncomputable section

/-- A120615: a(n) = Sum_{k=0..n} floor(phi*floor(k/phi)) where phi = (1+sqrt(5))/2.

Offset 1, canonical program `A120615.P7512124784620845121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120615 (n : ℕ) : ℤ :=
  A120615.P7512124784620845121.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120864.P6170511930668319101

`3*(n+1)²-A022838(n+1)²`
-/

namespace A120864.P6170511930668319101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) ^ 2 : ℤ) - A022838 (n + 1) ^ 2

end

end A120864.P6170511930668319101

noncomputable section

/-- A120864: a(n) is the number j for which there exists a unique pair (j,k) of positive integers such that (j + k + 1)^2 - 4*k = 12*n^2.

Offset 1, canonical program `A120864.P6170511930668319101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120864 (n : ℕ) : ℤ :=
  A120864.P6170511930668319101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120865.P2031921682378064138

`(n+1)²%(A003512(n+1)+1)`
-/

namespace A120865.P2031921682378064138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A003512 (n + 1) + 1)

end

end A120865.P2031921682378064138

noncomputable section

/-- A120865: a(n) is the number k for which there exists a unique pair (j,k) of positive integers such that (j + k + 1)^2 - 4*k = 12*n^2.

Offset 1, canonical program `A120865.P2031921682378064138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120865 (n : ℕ) : ℤ :=
  A120865.P2031921682378064138.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120866.P7809339818810666601

`((n+1)*A001961(n+1))%A001962(n+1)`
-/

namespace A120866.P7809339818810666601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A001961 (n + 1)) (A001962 (n + 1))

end

end A120866.P7809339818810666601

noncomputable section

/-- A120866: a(n) is the number j for which there exists a unique pair (j,k) of positive integers such that (j + k + 1)^2 - 4*k = 20*n^2.

Offset 1, canonical program `A120866.P7809339818810666601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120866 (n : ℕ) : ℤ :=
  A120866.P7809339818810666601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120867.P17303152158714817452

`A005843(n+1)²%(A001962(n+1)+1)`
-/

namespace A120867.P17303152158714817452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (n + 1) ^ 2) (A001962 (n + 1) + 1)

end

end A120867.P17303152158714817452

noncomputable section

/-- A120867: a(n) is the number k for which there exists a unique pair (j,k) of positive integers such that (j + k + 1)^2 - 4*k = 20*n^2.

Offset 1, canonical program `A120867.P17303152158714817452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120867 (n : ℕ) : ℤ :=
  A120867.P17303152158714817452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120867.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A121343.P4155292252380405521

`(A001611(n)-1)%A000217(A028310(n))`
-/

namespace A121343.P4155292252380405521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001611 n - 1) (A000217 (A028310 n).toNat)

end

end A121343.P4155292252380405521

noncomputable section

/-- A121343: a(n) = Fibonacci(n) mod n(n+1)/2.

Offset 0, canonical program `A121343.P4155292252380405521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A121343 (n : ℕ) : ℤ :=
  A121343.P4155292252380405521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A121343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121456.P11211268522460520936

`A033999(n)*A111932(n+1)`
-/

namespace A121456.P11211268522460520936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A111932 (n + 1)

end

end A121456.P11211268522460520936

noncomputable section

/-- A121456: Expansion of q*(psi(-q)*psi(-q^3))^2 in powers of q where psi() is a Ramanujan theta function.

Offset 1, canonical program `A121456.P11211268522460520936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121456 (n : ℕ) : ℤ :=
  A121456.P11211268522460520936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121488.P122503888271819747

`8*(n+1)²-A022842(n+1)²`
-/

namespace A121488.P122503888271819747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) ^ 2 : ℤ) - A022842 (n + 1) ^ 2

end

end A121488.P122503888271819747

noncomputable section

/-- A121488: a(n) = 8*n^2 - floor(n*sqrt(8))^2.

Offset 1, canonical program `A121488.P122503888271819747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121488 (n : ℕ) : ℤ :=
  A121488.P122503888271819747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121488.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A122795.P9852274582566200938

`∑[A045929(n+1)]`
-/

namespace A122795.P9852274582566200938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122795.P9852274582566200938

noncomputable section

/-- A122795: Connell (5,3)-sum sequence (partial sums of the (5,3)-Connell sequence).

Offset 1, canonical program `A122795.P9852274582566200938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122795 (n : ℕ) : ℤ :=
  A122795.P9852274582566200938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122798.P2287833048270803522

`A045929(n+1)-n`
-/

namespace A122798.P2287833048270803522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045929 (n + 1) - (n : ℤ)

end

end A122798.P2287833048270803522

noncomputable section

/-- A122798: A P_5-stuttered arithmetic progression with a(n+1) = a(n) if n is a pentagonal number, a(n+1) = a(n)+4 otherwise.

Offset 1, canonical program `A122798.P2287833048270803522`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122798 (n : ℕ) : ℤ :=
  A122798.P2287833048270803522.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122798.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A122856.P16127170756745905991

`A002654(3*n+2)`
-/

namespace A122856.P16127170756745905991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (3 * n + 2)

end

end A122856.P16127170756745905991

noncomputable section

/-- A122856: Expansion of f(x, x^5)^2 in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A122856.P16127170756745905991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122856 (n : ℕ) : ℤ :=
  A122856.P16127170756745905991.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122856.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122865.P3452293728173949375

`A002654(3*n+1)`
-/

namespace A122865.P3452293728173949375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (3 * n + 1)

end

end A122865.P3452293728173949375

noncomputable section

/-- A122865: Expansion of chi(x) * phi(x^3) * psi(-x^3) in powers of x where chi(), phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A122865.P3452293728173949375`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122865 (n : ℕ) : ℤ :=
  A122865.P3452293728173949375.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122865.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A122880.P14828169542987276280

`∑[A000245(n)-A001906(n)]`
-/

namespace A122880.P14828169542987276280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n - A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122880.P14828169542987276280

noncomputable section

/-- A122880: Catalan numbers minus odd-indexed Fibonacci numbers.

Offset 1, canonical program `A122880.P14828169542987276280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A122880 (n : ℕ) : ℤ :=
  A122880.P14828169542987276280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A122880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122931.P4957509264869241440

`A027994(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A122931.P4957509264869241440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A027994 n + a (n - 2)

end

end A122931.P4957509264869241440

noncomputable section

/-- A122931: Row sums of triangular array A122930.

Offset 1, canonical program `A122931.P4957509264869241440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A122931 (n : ℕ) : ℤ :=
  A122931.P4957509264869241440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A122931.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A123128.P5321797860006007375

`A046933(n+1)+2+n`
-/

namespace A123128.P5321797860006007375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) + 2 + (n : ℤ)

end

end A123128.P5321797860006007375

noncomputable section

/-- A123128: Add n to the n-th difference between consecutive primes.

Offset 1, canonical program `A123128.P5321797860006007375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123128 (n : ℕ) : ℤ :=
  A123128.P5321797860006007375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123128.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A123658.P13680945071514415852

`A123657(n+1)+(n+1)^10`
-/

namespace A123658.P13680945071514415852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123657 (n + 1) + ((n + 1) ^ 10 : ℤ)

end

end A123658.P13680945071514415852

noncomputable section

/-- A123658: a(n) = 1 + n^4 + n^6 + n^9 + n^10.

Offset 1, canonical program `A123658.P13680945071514415852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123658 (n : ℕ) : ℤ :=
  A123658.P13680945071514415852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123753.P15676585840177218925

`A003314(n+1)+1`
-/

namespace A123753.P15676585840177218925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003314 (n + 1) + 1

end

end A123753.P15676585840177218925

noncomputable section

/-- A123753: Partial sums of A070941.

Offset 0, canonical program `A123753.P15676585840177218925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123753 (n : ℕ) : ℤ :=
  A123753.P15676585840177218925.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123753.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A124230.P12948993916857171241

`A124229(A065033(n))`
-/

namespace A124230.P12948993916857171241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124229 (A065033 n).toNat

end

end A124230.P12948993916857171241

noncomputable section

/-- A124230: Denominator of g(n) defined by g(1)=1, g(2n)=1/g(n)+1, g(2n+1)=g(2n).

Offset 1, canonical program `A124230.P12948993916857171241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124230 (n : ℕ) : ℤ :=
  A124230.P12948993916857171241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124230.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A124512.P14580783143758700310

`∏{e}[A124511(n+1), A007283(#)]`
-/

namespace A124512.P14580783143758700310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007283 (Nat.factorization (f1 n).natAbs p)

end

end A124512.P14580783143758700310

noncomputable section

/-- A124512: a(n) = A124508(A124508(A124508(n))).

Offset 1, canonical program `A124512.P14580783143758700310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124512 (n : ℕ) : ℤ :=
  A124512.P14580783143758700310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124512.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A125586.P9385725487738589463

`Δ[A083586(n)]`
-/

namespace A125586.P9385725487738589463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125586.P9385725487738589463

noncomputable section

/-- A125586: a(n) = 2^(2n-1) - (n+2)*3^(n-2).

Offset 1, canonical program `A125586.P9385725487738589463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A125586 (n : ℕ) : ℤ :=
  A125586.P9385725487738589463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A125586.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A126596.P10511034239323337704

`A005810(n)*A005408(n)/A016777(n)`
-/

namespace A126596.P10511034239323337704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005810 n * A005408 n : ℚ) / (A016777 n : ℚ)

end

end A126596.P10511034239323337704

noncomputable section

/-- A126596: a(n) = binomial(4*n,n)*(2*n+1)/(3*n+1).

Offset 0, canonical program `A126596.P10511034239323337704`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126596 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126596.P10511034239323337704.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126596.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A127227.P7497525466077651672

`36*A105939(n)-1`
-/

namespace A127227.P7497525466077651672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A105939 n - 1

end

end A127227.P7497525466077651672

noncomputable section

/-- A127227: a(n)= numerator of ((n + 3)! - (n - 3)!)/(n!).

Offset 3, canonical program `A127227.P7497525466077651672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127227 (n : ℕ) : ℤ :=
  A127227.P7497525466077651672.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127267.P11390009319995840991

`A097456(n+2)+1`
-/

namespace A127267.P11390009319995840991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097456 (n + 2) + 1

end

end A127267.P11390009319995840991

noncomputable section

/-- A127267: a(n) = floor(n/pi(n)), where pi(n)=A000720(n) is the number of primes <=n.

Offset 2, canonical program `A127267.P11390009319995840991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127267 (n : ℕ) : ℤ :=
  A127267.P11390009319995840991.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127267.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A127275.P8872795402174168779

`A000984(n)-floor(4^(n-1))`
-/

namespace A127275.P8872795402174168779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - ⌊(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A127275.P8872795402174168779

noncomputable section

/-- A127275: Expansion of (sqrt(1-4x)-x)/(1-4x).

Offset 0, canonical program `A127275.P8872795402174168779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A127275 (n : ℕ) : ℤ :=
  A127275.P8872795402174168779.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A127275.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127421.P896464406934962232

`n*A061601(n+1)+(n+1)²+n`
-/

namespace A127421.P896464406934962232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061601 (n + 1) + ((n + 1) ^ 2 + n : ℤ)

end

end A127421.P896464406934962232

noncomputable section

/-- A127421: Numbers whose decimal expansion is a concatenation of 2 consecutive increasing nonnegative numbers.

Offset 1, canonical program `A127421.P896464406934962232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127421 (n : ℕ) : ℤ :=
  A127421.P896464406934962232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127469.P12093166883106809300

`(n+1)*∑{d}[n+1, #*A047994((n+1)/#)]`
-/

namespace A127469.P12093166883106809300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A047994 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A127469.P12093166883106809300

noncomputable section

/-- A127469: a(n) = n * A062949(n).

Offset 1, canonical program `A127469.P12093166883106809300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127469 (n : ℕ) : ℤ :=
  A127469.P12093166883106809300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127469.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127534.P14912111782927258290

`A045721(n)-A001764(n+1)`
-/

namespace A127534.P14912111782927258290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n - A001764 (n + 1)

end

end A127534.P14912111782927258290

noncomputable section

/-- A127534: Number of jumps in all even trees with 2n edges.

Offset 1, canonical program `A127534.P14912111782927258290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A127534 (n : ℕ) : ℤ :=
  A127534.P14912111782927258290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A127534.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A128076.P7177073460386788445

`A377809(n+1)-(n+1)`
-/

namespace A128076.P7177073460386788445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377809 (n + 1) - (n + 1 : ℤ)

end

end A128076.P7177073460386788445

noncomputable section

/-- A128076: Triangle T(n,k) = 2*n-k, read by rows.

Offset 1, canonical program `A128076.P7177073460386788445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128076 (n : ℕ) : ℤ :=
  A128076.P7177073460386788445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128105.P10844903870599358021

`A045650(n+1)-A045650(n+1)%(n+1)`
-/

namespace A128105.P10844903870599358021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045650 (n + 1) - Int.tmod (A045650 (n + 1)) (n + 1 : ℤ)

end

end A128105.P10844903870599358021

noncomputable section

/-- A128105: a(n) = smallest multiple of n which is > exp(n).

Offset 1, canonical program `A128105.P10844903870599358021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A128105 (n : ℕ) : ℤ :=
  A128105.P10844903870599358021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A128105.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A129272.P10695781945809431084

`val(dr(A061418(n+2)), 6)`
-/

namespace A129272.P10695781945809431084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.digitalRoot (A061418 (n + 2))) 6

end

end A129272.P10695781945809431084

noncomputable section

/-- A129272: a(n)=(1/2)*(2*b(n+1)-3*b(n)+(1-(-1)^b(n))/2) where b(n)=A073941(n).

Offset 1, canonical program `A129272.P10695781945809431084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A129272 (n : ℕ) : ℤ :=
  (A129272.P10695781945809431084.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A129272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129448.P6699059258803862870

`A002654(n+1)*A049347(n)`
-/

namespace A129448.P6699059258803862870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A049347 n

end

end A129448.P6699059258803862870

noncomputable section

/-- A129448: Expansion of q * psi(-q) * chi(q^3)^2 * psi(-q^9) in powers of q where psi(), chi() are Ramanujan theta functions.

Offset 1, canonical program `A129448.P6699059258803862870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129448 (n : ℕ) : ℤ :=
  A129448.P6699059258803862870.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129448.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130030.P6469709480114364342

`∑{d}[n+1, A007445(#)*A055615((n+1)/#)]`
-/

namespace A130030.P6469709480114364342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007445 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130030.P6469709480114364342

noncomputable section

/-- A130030: a(n) = Sum_{d|n} (-1)^omega(n/d) * phi(rad(n/d)) * prime(d).

Offset 1, canonical program `A130030.P6469709480114364342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130030 (n : ℕ) : ℤ :=
  A130030.P6469709480114364342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130030.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130243.P3803746983901524538

`∑[A130241(n+1)]`
-/

namespace A130243.P3803746983901524538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130243.P3803746983901524538

noncomputable section

/-- A130243: Partial sums of the 'lower' Lucas Inverse A130241.

Offset 1, canonical program `A130243.P3803746983901524538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130243 (n : ℕ) : ℤ :=
  A130243.P3803746983901524538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130243.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130473.P15345965032547921568

`∑[A087172(n+1)]`
-/

namespace A130473.P15345965032547921568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130473.P15345965032547921568

noncomputable section

/-- A130473: Partial sums of A087172.

Offset 1, canonical program `A130473.P15345965032547921568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130473 (n : ℕ) : ℤ :=
  A130473.P15345965032547921568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130473.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131381.P16531883904404227531

`A065346(n+1)%(n+3)`
-/

namespace A131381.P16531883904404227531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065346 (n + 1)) (n + 3 : ℤ)

end

end A131381.P16531883904404227531

noncomputable section

/-- A131381: a(n) = binomial(2*n,n) mod (n+2), with n>=1.

Offset 1, canonical program `A131381.P16531883904404227531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131381 (n : ℕ) : ℤ :=
  A131381.P16531883904404227531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131381.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131428.P9432219154056895874

`A383251(n)-2`
-/

namespace A131428.P9432219154056895874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383251 n - 2

end

end A131428.P9432219154056895874

noncomputable section

/-- A131428: a(n) = 2*C(n) - 1, where C(n) = A000108(n) are the Catalan numbers.

Offset 0, canonical program `A131428.P9432219154056895874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A131428 (n : ℕ) : ℤ :=
  A131428.P9432219154056895874.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A131428.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A132296.P4288883772330583834

`∑[(n+1)*(1-Δ[A048766(n)])]`
-/

namespace A132296.P4288883772330583834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132296.P4288883772330583834

noncomputable section

/-- A132296: Sum of the noncube numbers less than or equal to n.

Offset 1, canonical program `A132296.P4288883772330583834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132296 (n : ℕ) : ℤ :=
  A132296.P4288883772330583834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132310.P15225947479458849798

`A000984(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A132310.P15225947479458849798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 n + 3 * a (n - 1)

end

end A132310.P15225947479458849798

noncomputable section

/-- A132310: a(n) = 3^n*Sum_{ k=0..n } binomial(2*k,k)/3^k.

Offset 0, canonical program `A132310.P15225947479458849798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A132310 (n : ℕ) : ℤ :=
  A132310.P15225947479458849798.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A132310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132345.P8362820634276258103

`A132188(n+1)-A120486(n+1)`
-/

namespace A132345.P8362820634276258103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132188 (n + 1) - A120486 (n + 1)

end

end A132345.P8362820634276258103

noncomputable section

/-- A132345: Number of increasing three-term geometric sequences from the integers {1,2,...,n}.

Offset 1, canonical program `A132345.P8362820634276258103`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120486, A132188, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A132345 (n : ℕ) : ℤ :=
  A132345.P8362820634276258103.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120486, A132188, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A132345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132359.P12708232628398117809

`eq[lcm(n, A010879(n)²), A028310(n)]`
-/

namespace A132359.P12708232628398117809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A010879 n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132359.P12708232628398117809

noncomputable section

/-- A132359: Numbers divisible by the square of their last decimal digit.

Offset 1, canonical program `A132359.P12708232628398117809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A132359 (n : ℕ) : ℤ :=
  (A132359.P12708232628398117809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A132359.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A132788.P5460146612030926731

`∑[A071721(n)]-n`
-/

namespace A132788.P5460146612030926731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A132788.P5460146612030926731

noncomputable section

/-- A132788: a(n) = 2*binomial(2*n,n)/(n+1) - n.

Offset 1, canonical program `A132788.P5460146612030926731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A132788 (n : ℕ) : ℤ :=
  A132788.P5460146612030926731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A132788.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A133039.P11109720896804741336

`A133038(n)-A133037(n)`
-/

namespace A133039.P11109720896804741336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133038 n - A133037 n

end

end A133039.P11109720896804741336

noncomputable section

/-- A133039: a(n) = P(n)^3 - P(n)^2 where P(n) = A000931(n).

Offset 0, canonical program `A133039.P11109720896804741336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A133039 (n : ℕ) : ℤ :=
  A133039.P11109720896804741336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A133039.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A133155.P9703523718405720926

`∑[A061285(n+2)]`
-/

namespace A133155.P9703523718405720926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061285 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133155.P9703523718405720926

noncomputable section

/-- A133155: Numbers formed by setting bits representing odd primes, where bit_no = (prime - 1)/2. Setting bit number b is the same as OR-ing with 2^b (i.e., bit numbers start at zero).

Offset 1, canonical program `A133155.P9703523718405720926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A133155 (n : ℕ) : ℤ :=
  A133155.P9703523718405720926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A133155.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A133825.P14528658947434775562

`A004737(n+1)*(A004737(n+1)+1)/2`
-/

namespace A133825.P14528658947434775562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004737 (n + 1) : ℚ) * ((A004737 (n + 1) + 1 : ℚ) / 2)

end

end A133825.P14528658947434775562

noncomputable section

/-- A133825: Triangle whose rows are sequences of increasing and decreasing triangular numbers: 1; 1,3,1; 1,3,6,3,1; ... .

Offset 0, canonical program `A133825.P14528658947434775562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133825 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133825.P14528658947434775562.a n)

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

/-! ## A134422.P8034551626620170611

`A009003(n+1)²`
-/

namespace A134422.P8034551626620170611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1) ^ 2

end

end A134422.P8034551626620170611

noncomputable section

/-- A134422: Square numbers which are sums of 2 distinct nonzero squares.

Offset 1, canonical program `A134422.P8034551626620170611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134422 (n : ℕ) : ℤ :=
  A134422.P8034551626620170611.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134422.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A134863.P11100616616193240304

`abs(6-A101870(n+1))`
-/

namespace A134863.P11100616616193240304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - A101870 (n + 1)|

end

end A134863.P11100616616193240304

noncomputable section

/-- A134863: Wythoff BAB numbers.

Offset 1, canonical program `A134863.P11100616616193240304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134863 (n : ℕ) : ℤ :=
  A134863.P11100616616193240304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134864.P10998116107234469360

`A101870(A000201(n+1))`
-/

namespace A134864.P10998116107234469360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101870 (A000201 (n + 1)).toNat

end

end A134864.P10998116107234469360

noncomputable section

/-- A134864: Wythoff BBB numbers.

Offset 1, canonical program `A134864.P10998116107234469360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A134864 (n : ℕ) : ℤ :=
  A134864.P10998116107234469360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A134864.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A135512.P3370857288940514799

`Δ[A000302(n)]-A126223(n+1)`
-/

namespace A135512.P3370857288940514799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A126223 (n + 1)

end

end A135512.P3370857288940514799

noncomputable section

/-- A135512: Number A(Bn,K) of all D-invariant ideals of the algebra NBn(K) of classical type over a field K if 2K=0.

Offset 1, canonical program `A135512.P3370857288940514799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A135512 (n : ℕ) : ℤ :=
  A135512.P3370857288940514799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A135512.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A135676.P7127123423952500326

`A135672(n+1)+A135675(n+1)-A135671(n+1)`
-/

namespace A135676.P7127123423952500326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135672 (n + 1) + (A135675 (n + 1) - A135671 (n + 1))

end

end A135676.P7127123423952500326

noncomputable section

/-- A135676: a(n) = floor(n^(4/3) - n).

Offset 1, canonical program `A135676.P7127123423952500326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135676 (n : ℕ) : ℤ :=
  A135676.P7127123423952500326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135676.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A135973.P4285315424816824839

`A066645(n)+A057427(n)`
-/

namespace A135973.P4285315424816824839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066645 n + A057427 n

end

end A135973.P4285315424816824839

noncomputable section

/-- A135973: Ceiling(4/3*Pi*n^3).

Offset 0, canonical program `A135973.P4285315424816824839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135973 (n : ℕ) : ℤ :=
  A135973.P4285315424816824839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135973.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A136107.P14920644040256529241

`A069283(n+1)+1-A010054(n+1)`
-/

namespace A136107.P14920644040256529241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 1) + (1 - A010054 (n + 1))

end

end A136107.P14920644040256529241

noncomputable section

/-- A136107: Number of representations of n as the difference of two positive triangular numbers.

Offset 1, canonical program `A136107.P14920644040256529241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136107 (n : ℕ) : ℤ :=
  A136107.P14920644040256529241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136107.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A137234.P15298802636189913566

`∑[A137229(n+1)]`
-/

namespace A137234.P15298802636189913566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137234.P15298802636189913566

noncomputable section

/-- A137234: Expansion of g.f. 1/((1-x)^2*(1 - 3*x + 2*x^2 - x^3)).

Offset 0, canonical program `A137234.P15298802636189913566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A137234 (n : ℕ) : ℤ :=
  A137234.P15298802636189913566.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A137234.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A137803.P8502537861975816864

`floor((A022842(n+1)+1+n)/2)`
-/

namespace A137803.P8502537861975816864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022842 (n + 1) + 1 + (n : ℤ) : ℚ) / 2⌋

end

end A137803.P8502537861975816864

noncomputable section

/-- A137803: a(n) = floor(n*(sqrt(2) + 1/2)).

Offset 1, canonical program `A137803.P8502537861975816864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137803 (n : ℕ) : ℤ :=
  A137803.P8502537861975816864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137803.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A138222.P16088204697107012078

`A070939(and(A034729(n+1), A100587(n+1)))`
-/

namespace A138222.P16088204697107012078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.land (A034729 (n + 1)) (A100587 (n + 1))).toNat

end

end A138222.P16088204697107012078

noncomputable section

/-- A138222: a(n) = the largest divisor of n that is <= the number of positive divisors of n.

Offset 1, canonical program `A138222.P16088204697107012078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A138222 (n : ℕ) : ℤ :=
  A138222.P16088204697107012078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A138222.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A138611.P16171131123845880623

`2^n*A002380(n)`
-/

namespace A138611.P16171131123845880623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002380 n

end

end A138611.P16171131123845880623

noncomputable section

/-- A138611: 6^n mod 4^n.

Offset 0, canonical program `A138611.P16171131123845880623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A138611 (n : ℕ) : ℤ :=
  A138611.P16171131123845880623.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A138611.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A138986.P8104151595934593560

`∑[A138997(A028310(n))]`
-/

namespace A138986.P8104151595934593560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138986.P8104151595934593560

noncomputable section

/-- A138986: a(n) = Frobenius number for 6 successive numbers = F(n+1, n+2, n+3, n+4, n+5, n+6).

Offset 1, canonical program `A138986.P8104151595934593560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138986 (n : ℕ) : ℤ :=
  A138986.P8104151595934593560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138998.P12745784219772685873

`A002380(n)²%(2^n)`
-/

namespace A138998.P12745784219772685873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002380 n ^ 2) (2 ^ n : ℤ)

end

end A138998.P12745784219772685873

noncomputable section

/-- A138998: 9^n mod 2^n.

Offset 0, canonical program `A138998.P12745784219772685873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A138998 (n : ℕ) : ℤ :=
  A138998.P12745784219772685873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A138998.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A139262.P8524009422663711179

`A097070(n+1)-A081294(n)`
-/

namespace A139262.P8524009422663711179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097070 (n + 1) - A081294 n

end

end A139262.P8524009422663711179

noncomputable section

/-- A139262: Total number of two-element anti-chains over all ordered trees on n edges.

Offset 0, canonical program `A139262.P8524009422663711179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A139262 (n : ℕ) : ℤ :=
  A139262.P8524009422663711179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A139262.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A139729.P2377778251800148753

`A002380(2*n)`
-/

namespace A139729.P2377778251800148753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 (2 * n)

end

end A139729.P2377778251800148753

noncomputable section

/-- A139729: a(n) = 9^n mod 4^n.

Offset 0, canonical program `A139729.P2377778251800148753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A139729 (n : ℕ) : ℤ :=
  A139729.P2377778251800148753.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A139729.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140128.P9211484001941945419

`eq[0, Δ[A010553(A000038(n)+n)]]`
-/

namespace A140128.P9211484001941945419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140128.P9211484001941945419

noncomputable section

/-- A140128: A positive integer k is included if d(d(k)) = d(d(k+1)), where d(k) is the number of divisors of k.

Offset 1, canonical program `A140128.P9211484001941945419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1679 terms. -/
def A140128 (n : ℕ) : ℤ :=
  (A140128.P9211484001941945419.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1679 terms. -/
def A140128.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140211.P16537942396198288479

`∏{d}[n+1, A028310(#%A062828(#))]`
-/

namespace A140211.P16537942396198288479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A028310 (Int.tmod (d : ℤ) (A062828 d)).toNat

end

end A140211.P16537942396198288479

noncomputable section

/-- A140211: a(n) = Product_{d == 3 (mod 4) and d|n} d.

Offset 1, canonical program `A140211.P16537942396198288479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140211 (n : ℕ) : ℤ :=
  A140211.P16537942396198288479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140211.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A091237.P6770545350464896014

`Δ[eq[0, A088705(A181346(n))]]`
-/

namespace A091237.P6770545350464896014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A181346 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091237.P6770545350464896014

noncomputable section

/-- A091237: Lengths of runs in A039702.

Offset 1, canonical program `A091237.P6770545350464896014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5861 terms. -/
def A091237 (n : ℕ) : ℤ :=
  A091237.P6770545350464896014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5861 terms. -/
def A091237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091290.P4448066283075349517

`lt[A092403(A028310(n)), A088580(2*n+1)]`
-/

namespace A091290.P4448066283075349517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092403 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091290.P4448066283075349517

noncomputable section

/-- A091290: Numbers k such that sigma(k) + sigma(k+1) <= sigma(2*k+1).

Offset 1, canonical program `A091290.P4448066283075349517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 908 terms. -/
def A091290 (n : ℕ) : ℤ :=
  (A091290.P4448066283075349517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 908 terms. -/
def A091290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091699.P9918362873456629507

`xor(-A138415(n), A033999(n))`
-/

namespace A091699.P9918362873456629507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A138415 n) (A033999 n)

end

end A091699.P9918362873456629507

noncomputable section

/-- A091699: Row sums of triangle A091698.

Offset 0, canonical program `A091699.P9918362873456629507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A091699 (n : ℕ) : ℤ :=
  A091699.P9918362873456629507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A091699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091801.P17201142241564417705

`A004643(A005843(n+1))-A091802(n+1)`
-/

namespace A091801.P17201142241564417705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 (A005843 (n + 1)).toNat - A091802 (n + 1)

end

end A091801.P17201142241564417705

noncomputable section

/-- A091801: Largest n-digit multiple of the n-th prime.

Offset 1, canonical program `A091801.P17201142241564417705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A091801 (n : ℕ) : ℤ :=
  A091801.P17201142241564417705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A091801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091921.P1800414580042850367

`A005069(n+1)%(n+1)`
-/

namespace A091921.P1800414580042850367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005069 (n + 1)) (n + 1 : ℤ)

end

end A091921.P1800414580042850367

noncomputable section

/-- A091921: Sum of odd proper distinct prime divisors of n. That is, the sum of odd distinct prime divisors of n that are less than n.

Offset 1, canonical program `A091921.P1800414580042850367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091921 (n : ℕ) : ℤ :=
  A091921.P1800414580042850367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092344.P13515634055615059972

`A092347(n)-∑{d}[n, #]`
-/

namespace A092344.P13515634055615059972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092347 n - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A092344.P13515634055615059972

noncomputable section

/-- A092344: a(0)=1; a(n) = sigma_2(n) + sigma_3(n).

Offset 0, canonical program `A092344.P13515634055615059972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092344 (n : ℕ) : ℤ :=
  A092344.P13515634055615059972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092401.P10773884446493401631

`A007417(A008619(n))*A010684(n)`
-/

namespace A092401.P10773884446493401631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (A008619 n).toNat * A010684 n

end

end A092401.P10773884446493401631

noncomputable section

/-- A092401: List of pairs n, 3n, where n is the least unused number so far.

Offset 1, canonical program `A092401.P10773884446493401631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092401 (n : ℕ) : ℤ :=
  A092401.P10773884446493401631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092410.P15769336470797877174

`A007423(n+1)+∑[A127440(n+1)]`
-/

namespace A092410.P15769336470797877174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092410.P15769336470797877174

noncomputable section

/-- A092410: a(n) = moebius(n)+moebius(n+1).

Offset 1, canonical program `A092410.P15769336470797877174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092410 (n : ℕ) : ℤ :=
  A092410.P15769336470797877174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092433.P2656392453258521260

`∪[A011537(n+1), 7*(n+1)]`
-/

namespace A092433.P2656392453258521260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A092433.P2656392453258521260

noncomputable section

/-- A092433: Positive numbers from the children's game "Buzz" or "Sevens": positive integers which are divisible by seven, or which contain a seven as a digit.

Offset 1, canonical program `A092433.P2656392453258521260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092433 (n : ℕ) : ℤ :=
  (A092433.P2656392453258521260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092451.P11472134814657966417

`comp[or(1, A052404(n+1))]`
-/

namespace A092451.P11472134814657966417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A052404 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092451.P11472134814657966417

noncomputable section

/-- A092451: Numbers that either contain the digit 2 or are divisible by 2.

Offset 0, canonical program `A092451.P11472134814657966417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092451 (n : ℕ) : ℤ :=
  (A092451.P11472134814657966417.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092454.P5847463884604930939

`∪[5*n, A011535(n+1)]`
-/

namespace A092454.P5847463884604930939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092454.P5847463884604930939

noncomputable section

/-- A092454: Numbers that either contain the digit 5 or are divisible by 5.

Offset 0, canonical program `A092454.P5847463884604930939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092454 (n : ℕ) : ℤ :=
  (A092454.P5847463884604930939.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092455.P1329306576228413859

`∪[A011536(n+1), 6*n]`
-/

namespace A092455.P1329306576228413859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A092455.P1329306576228413859

noncomputable section

/-- A092455: Numbers that either contain the digit 6 or are divisible by 6.

Offset 0, canonical program `A092455.P1329306576228413859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092455 (n : ℕ) : ℤ :=
  (A092455.P1329306576228413859.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092456.P17302602622088378195

`∪[8*n, A011538(n+1)]`
-/

namespace A092456.P17302602622088378195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092456.P17302602622088378195

noncomputable section

/-- A092456: Numbers that either contain the digit 8 or are divisible by 8.

Offset 0, canonical program `A092456.P17302602622088378195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092456 (n : ℕ) : ℤ :=
  (A092456.P17302602622088378195.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092579.P16567581240661558732

`eq[1, A293435(n+1)]+1`
-/

namespace A092579.P16567581240661558732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092579.P16567581240661558732

noncomputable section

/-- A092579: A sieve using the Fibonacci sequence over the integers >=2. Any multiple of a Fibonacci number, F(n)*m, such that F(n)>=2 and m>=2 is excluded and what is left is included.

Offset 1, canonical program `A092579.P16567581240661558732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2657 terms. -/
def A092579 (n : ℕ) : ℤ :=
  (A092579.P16567581240661558732.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2657 terms. -/
def A092579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093348.P9820017468597884023

`a(n-1)+A060904(n)*A062157(n)` with `a(0)=0`
-/

namespace A093348.P9820017468597884023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A060904 n * A062157 n

end

end A093348.P9820017468597884023

noncomputable section

/-- A093348: A 5-fractal "castle" starting with 0.

Offset 1, canonical program `A093348.P9820017468597884023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093348 (n : ℕ) : ℤ :=
  A093348.P9820017468597884023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093515.P4013259352811988212

`lt[A323162(n+2), 1]+2`
-/

namespace A093515.P4013259352811988212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A093515.P4013259352811988212

noncomputable section

/-- A093515: Numbers k such that either k or k-1 is a prime.

Offset 1, canonical program `A093515.P4013259352811988212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093515 (n : ℕ) : ℤ :=
  (A093515.P4013259352811988212.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093811.P2245103281644187700

`∑{d}[n+1, A007954(#)]`
-/

namespace A093811.P2245103281644187700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007954 d

end

end A093811.P2245103281644187700

noncomputable section

/-- A093811: Sum of the digital products of the divisors of n.

Offset 1, canonical program `A093811.P2245103281644187700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093811 (n : ℕ) : ℤ :=
  A093811.P2245103281644187700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094405.P3151932794600885057

`floor(A066910(n+2)+acot(n))`
-/

namespace A094405.P3151932794600885057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066910 (n + 2) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A094405.P3151932794600885057

noncomputable section

/-- A094405: a(1) = 1; a(n) = (sum of previous terms) mod n.

Offset 1, canonical program `A094405.P3151932794600885057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A094405 (n : ℕ) : ℤ :=
  A094405.P3151932794600885057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A094405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094538.P4112405845201570244

`3^n-A019308(n)`
-/

namespace A094538.P4112405845201570244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A019308 n

end

end A094538.P4112405845201570244

noncomputable section

/-- A094538: Number of ternary words of length n that are not "bifix-free".

Offset 0, canonical program `A094538.P4112405845201570244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094538 (n : ℕ) : ℤ :=
  A094538.P4112405845201570244.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095199.P4703236704014739621

`A060156(n+1)/gcd(A056969(n+1), A060156(n+1))`
-/

namespace A095199.P4703236704014739621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060156 (n + 1) : ℚ) / (Int.gcd (A056969 (n + 1)) (A060156 (n + 1)) : ℚ)

end

end A095199.P4703236704014739621

noncomputable section

/-- A095199: Least integer multiple of f(1/n) where f(1/n) is the number obtained by retaining only n digits after decimal and deleting the rest.

Offset 1, canonical program `A095199.P4703236704014739621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A095199 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A095199.P4703236704014739621.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A095199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095345.P17455423609397731554

`gcd(3, A108103(n+1))`
-/

namespace A095345.P17455423609397731554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A108103 (n + 1))

end

end A095345.P17455423609397731554

noncomputable section

/-- A095345: a(n) is the length of the n-th run in A095346.

Offset 1, canonical program `A095345.P17455423609397731554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095345 (n : ℕ) : ℤ :=
  (A095345.P17455423609397731554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095691.P1004978988256556663

`∏{e}[n+1, A230774(#²+1)]`
-/

namespace A095691.P1004978988256556663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A230774 (Nat.factorization (f1 n) p ^ 2 + 1)

end

end A095691.P1004978988256556663

noncomputable section

/-- A095691: Multiplicative with a(p^e) = A000720(e)+1.

Offset 1, canonical program `A095691.P1004978988256556663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095691 (n : ℕ) : ℤ :=
  A095691.P1004978988256556663.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095694.P5628103100685329826

`A243212(n+2)+A058195(n+1)`
-/

namespace A095694.P5628103100685329826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243212 (n + 2) + A058195 (n + 1)

end

end A095694.P5628103100685329826

noncomputable section

/-- A095694: T(n,3) diagonal of triangle in A095693.

Offset 2, canonical program `A095694.P5628103100685329826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095694 (n : ℕ) : ℤ :=
  A095694.P5628103100685329826.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095815.P14387125408819555274

`∑[Δ[A054055(n)]+1]`
-/

namespace A095815.P14387125408819555274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095815.P14387125408819555274

noncomputable section

/-- A095815: a(n) = n + largest digit of n.

Offset 1, canonical program `A095815.P14387125408819555274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095815 (n : ℕ) : ℤ :=
  A095815.P14387125408819555274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095942.P15034568882361005307

`Δ[A138115(∑[n+1])]`
-/

namespace A095942.P15034568882361005307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138115 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095942.P15034568882361005307

noncomputable section

/-- A095942: Differences between adjacent digits of e.

Offset 1, canonical program `A095942.P15034568882361005307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A095942 (n : ℕ) : ℤ :=
  A095942.P15034568882361005307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A095942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096026.P10109195778755460978

`A166931(record[A106612(n+1)])+4`
-/

namespace A096026.P10109195778755460978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 4

end

end A096026.P10109195778755460978

noncomputable section

/-- A096026: Numbers k such that (k+j) mod (2+j) = 1 for j from 0 to 8 and (k+9) mod 11 <> 1.

Offset 1, canonical program `A096026.P10109195778755460978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9091 terms. -/
def A096026 (n : ℕ) : ℤ :=
  A096026.P10109195778755460978.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9091 terms. -/
def A096026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096067.P16179009666601499113

`Δ[∪[A022330(n), A022331(n)]]-1`
-/

namespace A096067.P16179009666601499113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022330 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022331 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A096067.P16179009666601499113

noncomputable section

/-- A096067: Number of 3-smooth numbers between successive numbers that are powers of 2 or of 3.

Offset 1, canonical program `A096067.P16179009666601499113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096067 (n : ℕ) : ℤ :=
  A096067.P16179009666601499113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096196.P3881709190125399747

`(A015910(n+1)+1)%(n+1)`
-/

namespace A096196.P3881709190125399747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015910 (n + 1) + 1) (n + 1 : ℤ)

end

end A096196.P3881709190125399747

noncomputable section

/-- A096196: a(n) = (1 + 2^n) mod n.

Offset 1, canonical program `A096196.P3881709190125399747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096196 (n : ℕ) : ℤ :=
  A096196.P3881709190125399747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096311.P16491752530489229289

`eq[A032741(n)+1, A054055(n)]`
-/

namespace A096311.P16491752530489229289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096311.P16491752530489229289

noncomputable section

/-- A096311: Numbers whose number of divisors equals the largest digit.

Offset 1, canonical program `A096311.P16491752530489229289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 717 terms. -/
def A096311 (n : ℕ) : ℤ :=
  (A096311.P16491752530489229289.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 717 terms. -/
def A096311.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A097195.P12342509602906900209

`A359309(n+1)-A359327(n+1)`
-/

namespace A097195.P12342509602906900209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359309 (n + 1) - A359327 (n + 1)

end

end A097195.P12342509602906900209

noncomputable section

/-- A097195: Expansion of s(12)^3*s(18)^2/(s(6)^2*s(36)), where s(k) = eta(q^k) and eta(q) is Dedekind's function, cf. A010815. Then replace q^6 with q.

Offset 0, canonical program `A097195.P12342509602906900209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097195 (n : ℕ) : ℤ :=
  A097195.P12342509602906900209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097377.P4336530497269463132

`A007948(n+1)+1`
-/

namespace A097377.P4336530497269463132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1) + 1

end

end A097377.P4336530497269463132

noncomputable section

/-- A097377: a(n) = CubeFreeKernel(n) + 1.

Offset 1, canonical program `A097377.P4336530497269463132`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007948, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097377 (n : ℕ) : ℤ :=
  A097377.P4336530497269463132.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007948, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097377.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097378.P12310079244189164866

`A007947(n+1)*A007948(n+1)+1`
-/

namespace A097378.P12310079244189164866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A007948 (n + 1) + 1

end

end A097378.P12310079244189164866

noncomputable section

/-- A097378: a(n) = SquareFreeKernel(n)*CubeFreeKernel(n) + 1.

Offset 1, canonical program `A097378.P12310079244189164866`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A007948, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097378 (n : ℕ) : ℤ :=
  A097378.P12310079244189164866.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A007948, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097948.P5859470112091419350

`xor(2, 3*(A097947(n)+1))`
-/

namespace A097948.P5859470112091419350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (3 * (A097947 n + 1))

end

end A097948.P5859470112091419350

noncomputable section

/-- A097948: G.f.: -(1-3*x^2-x^3)/(1+4*x-4*x^3-x^4).

Offset 0, canonical program `A097948.P5859470112091419350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A097948 (n : ℕ) : ℤ :=
  A097948.P5859470112091419350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A097948.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A098902.P3075038170163946825

`filter[A030231(n+1), A353672(#)]`
-/

namespace A098902.P3075038170163946825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A098902.P3075038170163946825

noncomputable section

/-- A098902: Even numbers whose number of distinct prime factors is also even.

Offset 1, canonical program `A098902.P3075038170163946825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4844 terms. -/
def A098902 (n : ℕ) : ℤ :=
  A098902.P3075038170163946825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4844 terms. -/
def A098902.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100240.P1376351240416722442

`A036453(n+1)*A100223(n)-A159075(n)`
-/

namespace A100240.P1376351240416722442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A100223 n - A159075 n

end

end A100240.P1376351240416722442

noncomputable section

/-- A100240: G.f. A(x) satisfies: 4^n/2 = Sum_{k=0..n} [x^k]A(x)^n and also satisfies: ((4+z)^n + z^n)/2 = Sum_{k=0..n} [x^k](A(x)+z*x)^n for all z, where [x^k]A(x)^n denotes the coefficient of x^k in A(x)^n.

Offset 0, canonical program `A100240.P1376351240416722442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A100240 (n : ℕ) : ℤ :=
  A100240.P1376351240416722442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A100240.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A103638.P17610773162151623303

`A103637(n+1)-A103440(n+1)`
-/

namespace A103638.P17610773162151623303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103637 (n + 1) - A103440 (n + 1)

end

end A103638.P17610773162151623303

noncomputable section

/-- A103638: a(n) = Sum_{d|n, d==2 mod 3} d^2.

Offset 1, canonical program `A103638.P17610773162151623303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103638 (n : ℕ) : ℤ :=
  A103638.P17610773162151623303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103638.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A104236.P4332644214263664855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104236 (n : ℕ) : ℤ :=
  A104236.P4332644214263664855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104236.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A105309.P13426581789959634764

`A119749(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A105309.P13426581789959634764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A119749 n + a (n - 2)

end

end A105309.P13426581789959634764

noncomputable section

/-- A105309: a(n) = |b(n)|^2 = x^2 + 3*y^2 where (x,y,y,y) is the quaternion b(n) of the sequence b of quaternions defined by b(0)=1,b(1)=1, b(n) = b(n-1) + b(n-2)*(0,c,c,c) where c = 1/sqrt(3).

Offset 0, canonical program `A105309.P13426581789959634764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A105309 (n : ℕ) : ℤ :=
  A105309.P13426581789959634764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A105309.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A105369.P4820477332670777235

`(A289388(n)+A289306(n))*(-1)^n-a(n-1)` with `a(0)=1`
-/

namespace A105369.P4820477332670777235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A289388 n + A289306 n) * (-1) ^ n - a (n - 1)

end

end A105369.P4820477332670777235

noncomputable section

/-- A105369: Expansion of ((1+x)^3 - x^3)/((1+x)^5 - x^5).

Offset 0, canonical program `A105369.P4820477332670777235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 357 terms. -/
def A105369 (n : ℕ) : ℤ :=
  A105369.P4820477332670777235.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 357 terms. -/
def A105369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105370.P10789276244737778422

`(A289388(n)+A289306(n))*(-1)^n`
-/

namespace A105370.P10789276244737778422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A289388 n + A289306 n) * (-1) ^ n

end

end A105370.P10789276244737778422

noncomputable section

/-- A105370: Expansion of ((1+x)^4-(1+x)x^3)/((1+x)^5-x^5).

Offset 0, canonical program `A105370.P10789276244737778422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 357 terms. -/
def A105370 (n : ℕ) : ℤ :=
  A105370.P10789276244737778422.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 357 terms. -/
def A105370.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A105940.P939618144586281253

`A027814(n+4)-A027804(n+4)`
-/

namespace A105940.P939618144586281253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027814 (n + 4) - A027804 (n + 4)

end

end A105940.P939618144586281253

noncomputable section

/-- A105940: a(n) = binomial(n+5, 5)*binomial(n+8, 5).

Offset 0, canonical program `A105940.P939618144586281253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105940 (n : ℕ) : ℤ :=
  A105940.P939618144586281253.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105944.P16448099565116522181

`165*A030648(n)`
-/

namespace A105944.P16448099565116522181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  165 * A030648 n

end

end A105944.P16448099565116522181

noncomputable section

/-- A105944: a(n) = binomial(n+8,n)*binomial(n+11,8).

Offset 0, canonical program `A105944.P16448099565116522181`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030648, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105944 (n : ℕ) : ℤ :=
  A105944.P16448099565116522181.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030648, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105944.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A106844.P13822521553176252927

`val(A093641(n+1), 2)`
-/

namespace A106844.P13822521553176252927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A093641 (n + 1)).toNat 2

end

end A106844.P13822521553176252927

noncomputable section

/-- A106844: Exponent of 2 in the prime factorization of A093641(n).

Offset 1, canonical program `A106844.P13822521553176252927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106844 (n : ℕ) : ℤ :=
  (A106844.P13822521553176252927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106844.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107085.P11711300005954803242

`eq[dr(n), A054055(n)]`
-/

namespace A107085.P11711300005954803242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107085.P11711300005954803242

noncomputable section

/-- A107085: Numbers whose largest digit in its decimal representation is equal to its digital root.

Offset 1, canonical program `A107085.P11711300005954803242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1089 terms. -/
def A107085 (n : ℕ) : ℤ :=
  (A107085.P11711300005954803242.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1089 terms. -/
def A107085.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107436.P9710796603648669771

`A002024(A028310(n))%A301718(n+1)`
-/

namespace A107436.P9710796603648669771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (A028310 n).toNat) (A301718 (n + 1))

end

end A107436.P9710796603648669771

noncomputable section

/-- A107436: a(n) = (a^5)(n-1) + a(n-a(n-1)) = a(a(a(a(a(n-1))))) + a(n-a(n-1)), a(1) = a(2) = 1.

Offset 1, canonical program `A107436.P9710796603648669771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A107436 (n : ℕ) : ℤ :=
  A107436.P9710796603648669771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A107436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107473.P616088054207537606

`lcm(n+1, A121048(n+1))/(n+1)`
-/

namespace A107473.P616088054207537606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A121048 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A107473.P616088054207537606

noncomputable section

/-- A107473: Sum of numerator and denominator of Product_{p|n, p prime} (1 - 1/p).

Offset 1, canonical program `A107473.P616088054207537606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107473 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107473.P616088054207537606.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107505.P17292139217277476554

`(2-A000007(n))*A284587(A028310(n))`
-/

namespace A107505.P17292139217277476554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A284587 (A028310 n).toNat

end

end A107505.P17292139217277476554

noncomputable section

/-- A107505: Theta series of quadratic form with Gram matrix [ 2, 1, 0, 1; 1, 4, 1, 0; 0, 1, 4, -2; 1, 0, -2, 8].

Offset 0, canonical program `A107505.P17292139217277476554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6879 terms. -/
def A107505 (n : ℕ) : ℤ :=
  A107505.P17292139217277476554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6879 terms. -/
def A107505.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A108144.P14357558413651915361

`2*A093641(n+2)+1`
-/

namespace A108144.P14357558413651915361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093641 (n + 2) + 1

end

end A108144.P14357558413651915361

noncomputable section

/-- A108144: Numbers n such that (n-1)/P(n-1) is a power of two > 1, where P(n) is the largest prime factor of n.

Offset 1, canonical program `A108144.P14357558413651915361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108144 (n : ℕ) : ℤ :=
  A108144.P14357558413651915361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108144.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A108700.P4519987503324844312

`∑{d}[n+1, A000045(#)*A087003((n+1)/#)]`
-/

namespace A108700.P4519987503324844312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A108700.P4519987503324844312

noncomputable section

/-- A108700: Number of compositions of n into odd and relatively prime parts.

Offset 1, canonical program `A108700.P4519987503324844312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A108700 (n : ℕ) : ℤ :=
  A108700.P4519987503324844312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A108700.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A109395.P3549841257025425684

`1-A331176(n+1)+n`
-/

namespace A109395.P3549841257025425684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A331176 (n + 1) + (n : ℤ)

end

end A109395.P3549841257025425684

noncomputable section

/-- A109395: Denominator of phi(n)/n = Product_{p|n} (1 - 1/p); phi(n)=A000010(n), the Euler totient function.

Offset 1, canonical program `A109395.P3549841257025425684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109395 (n : ℕ) : ℤ :=
  A109395.P3549841257025425684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109395.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A110146.P224130093011189366

`(n*A213381(n))%(n+2)`
-/

namespace A110146.P224130093011189366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A213381 n) (n + 2 : ℤ)

end

end A110146.P224130093011189366

noncomputable section

/-- A110146: a(n) = n^(n+1) mod (n+2).

Offset 0, canonical program `A110146.P224130093011189366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110146 (n : ℕ) : ℤ :=
  A110146.P224130093011189366.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110475.P12090647268886317470

`A252736(A007948(n+1))`
-/

namespace A110475.P12090647268886317470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A007948 (n + 1)).toNat

end

end A110475.P12090647268886317470

noncomputable section

/-- A110475: Number of symbols '*' and '^' to write the canonical prime factorization of n.

Offset 1, canonical program `A110475.P12090647268886317470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110475 (n : ℕ) : ℤ :=
  A110475.P12090647268886317470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110475.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A111142.P14739711800033483932

`gcd(n+1, A113222(n+1))`
-/

namespace A111142.P14739711800033483932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A113222 (n + 1))

end

end A111142.P14739711800033483932

noncomputable section

/-- A111142: a(n) = gcd(n, A113222(n)), where A113222(n) = Sum_{p^e || n} F(p^e), each p^e the highest power of prime p dividing n (with e > 0), and F(k) is the k-th Fibonacci number.

Offset 1, canonical program `A111142.P14739711800033483932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A111142 (n : ℕ) : ℤ :=
  (A111142.P14739711800033483932.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A111142.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A111661.P12974684241340383549

`∑{d}[n+1, A103440(#)*A154955((n+1)/#)]`
-/

namespace A111661.P12974684241340383549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A103440 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111661.P12974684241340383549

noncomputable section

/-- A111661: Expansion of eta(q)^4 * eta(q^2) * eta(q^6)^5 / eta(q^3)^4 in powers of q.

Offset 1, canonical program `A111661.P12974684241340383549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111661 (n : ℕ) : ℤ :=
  A111661.P12974684241340383549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111661.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A112385.P10988565838459756148

`2*A006632(n+1)`
-/

namespace A112385.P10988565838459756148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006632 (n + 1)

end

end A112385.P10988565838459756148

noncomputable section

/-- A112385: a(n) = 6*binomial(4*n-1,n-1)/(4*n-1).

Offset 1, canonical program `A112385.P10988565838459756148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A112385 (n : ℕ) : ℤ :=
  A112385.P10988565838459756148.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A112385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112400.P2366853602604330834

`∑{e}[n+1, A219009(#)]`
-/

namespace A112400.P2366853602604330834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A219009 (Nat.factorization (f1 n) p)

end

end A112400.P2366853602604330834

noncomputable section

/-- A112400: a(n) = Sum_{p|n, p prime} mu(b(p,n)), where mu(k) = A008683(k) (the Moebius function) and p^b(p,n) is the highest power of the prime p dividing n.

Offset 1, canonical program `A112400.P2366853602604330834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112400 (n : ℕ) : ℤ :=
  A112400.P2366853602604330834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112400.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A114092.P14494973868737545162

`A117142(A152271(n))*A175686(A158416(n))`
-/

namespace A114092.P14494973868737545162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117142 (A152271 n).toNat * A175686 (A158416 n).toNat

end

end A114092.P14494973868737545162

noncomputable section

/-- A114092: Number of partitions of n into parts that are distinct mod 4.

Offset 0, canonical program `A114092.P14494973868737545162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6055 terms. -/
def A114092 (n : ℕ) : ℤ :=
  A114092.P14494973868737545162.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6055 terms. -/
def A114092.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A115637.P3484073724344734124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, A035327, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115637 (n : ℕ) : ℤ :=
  A115637.P3484073724344734124.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, A035327, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115952.P13887102095914468109

`Δ[-A266502(A133280(n))]`
-/

namespace A115952.P13887102095914468109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A266502 (A133280 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115952.P13887102095914468109

noncomputable section

/-- A115952: Expansion of (1-x+x*y)/(1-x^2*y^2) - x^2/(1-x^2*y).

Offset 0, canonical program `A115952.P13887102095914468109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A115952 (n : ℕ) : ℤ :=
  A115952.P13887102095914468109.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A115952.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A119450.P1201503489056625598

`A065091(eq[1, A104638(n+1)%2])`
-/

namespace A119450.P1201503489056625598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104638 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119450.P1201503489056625598

noncomputable section

/-- A119450: Primes with odd digit sum.

Offset 1, canonical program `A119450.P1201503489056625598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5075 terms. -/
def A119450 (n : ℕ) : ℤ :=
  A119450.P1201503489056625598.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5075 terms. -/
def A119450.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A119969.P5782052722859838512

`C(A277267(n+1), A035327(A078881(n+1)))`
-/

namespace A119969.P5782052722859838512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A277267 (n + 1)).toNat (A035327 (A078881 (n + 1)).toNat).toNat

end

end A119969.P5782052722859838512

noncomputable section

/-- A119969: Sum{k>=0, C(2^k-1,n-2*(2^k-1))}.

Offset 0, canonical program `A119969.P5782052722859838512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1104 terms. -/
def A119969 (n : ℕ) : ℤ :=
  (A119969.P5782052722859838512.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1104 terms. -/
def A119969.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A120522.P16891830647218488241

`Δ[A006949(n)]^n`
-/

namespace A120522.P16891830647218488241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A120522.P16891830647218488241

noncomputable section

/-- A120522: First differences of successive meta-Fibonacci numbers A006949.

Offset 1, canonical program `A120522.P16891830647218488241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120522 (n : ℕ) : ℤ :=
  A120522.P16891830647218488241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120675.P469706796805572066

`∑{e}[A056911(n+1), #]`
-/

namespace A120675.P469706796805572066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A120675.P469706796805572066

noncomputable section

/-- A120675: Number of prime factors of odd squarefree numbers A056911.

Offset 1, canonical program `A120675.P469706796805572066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120675 (n : ℕ) : ℤ :=
  (A120675.P469706796805572066.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120936.P11581610779573346111

`A230980(A212445(n+1))-A230980(n)`
-/

namespace A120936.P11581610779573346111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A212445 (n + 1)).toNat - A230980 n

end

end A120936.P11581610779573346111

noncomputable section

/-- A120936: Number of primes in the interval [n,n+log(n)].

Offset 1, canonical program `A120936.P11581610779573346111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A120936 (n : ℕ) : ℤ :=
  A120936.P11581610779573346111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A120936.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A122566.P3604941185684172171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2877 terms. -/
def A122566 (n : ℕ) : ℤ :=
  (A122566.P3604941185684172171.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2877 terms. -/
def A122566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122796.P14610223443420944346

`∑[A045930(n+1)]`
-/

namespace A122796.P14610223443420944346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122796.P14610223443420944346

noncomputable section

/-- A122796: Connell (3,5)-sum sequence (partial sums of the (3,5)-Connell sequence).

Offset 1, canonical program `A122796.P14610223443420944346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122796 (n : ℕ) : ℤ :=
  A122796.P14610223443420944346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122799.P10680246314926975861

`A045930(n+1)-n`
-/

namespace A122799.P10680246314926975861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045930 (n + 1) - (n : ℤ)

end

end A122799.P10680246314926975861

noncomputable section

/-- A122799: A P_7-stuttered arithmetic progression with a(n+1)=a(n) if n is not a heptagonal number, a(n+1)=a(n)+2 otherwise.

Offset 1, canonical program `A122799.P10680246314926975861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122799 (n : ℕ) : ℤ :=
  A122799.P10680246314926975861.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122799.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A124626.P17806241570464093679

`filter[A125494(n+2), A378550(#)]`
-/

namespace A124626.P17806241570464093679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125494 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A124626.P17806241570464093679

noncomputable section

/-- A124626: Abundant evil numbers. (Abundant numbers that have an even number of ones in their binary representation).

Offset 1, canonical program `A124626.P17806241570464093679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3134 terms. -/
def A124626 (n : ℕ) : ℤ :=
  A124626.P17806241570464093679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3134 terms. -/
def A124626.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A126246.P16910619274962634977

`∑{d}[n+1, A086831(#)*A214682((n+1)/#)]`
-/

namespace A126246.P16910619274962634977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A086831 d * A214682 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A126246.P16910619274962634977

noncomputable section

/-- A126246: a(n) is the number of Fibonacci numbers among (F(1),F(2),F(3),...,F(n)) which are coprime to F(n), where F(n) is the n-th Fibonacci number.

Offset 1, canonical program `A126246.P16910619274962634977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126246 (n : ℕ) : ℤ :=
  A126246.P16910619274962634977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126246.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127896.P344767944556219001

`(n-A004442(n))*Δ[A185963(n)]`
-/

namespace A127896.P344767944556219001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004442 n) * (f1 (n + 1) - f1 n)

end

end A127896.P344767944556219001

noncomputable section

/-- A127896: Expansion of 1/(1 + 2*x + 3*x^2 + x^3).

Offset 0, canonical program `A127896.P344767944556219001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 547 terms. -/
def A127896 (n : ℕ) : ℤ :=
  A127896.P344767944556219001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 547 terms. -/
def A127896.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A128245.P15864719787506353209

`A002264(p?[A101203(n+5)-A101203(n+1)])-1`
-/

namespace A128245.P15864719787506353209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (n + 5) - A101203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A128245.P15864719787506353209

noncomputable section

/-- A128245: Smallest of three consecutive composite numbers whose sum is prime.

Offset 1, canonical program `A128245.P15864719787506353209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. -/
def A128245 (n : ℕ) : ℤ :=
  A128245.P15864719787506353209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. -/
def A128245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128311.P14775993148478219053

`(A062173(n+1)+n)%(n+1)`
-/

namespace A128311.P14775993148478219053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062173 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A128311.P14775993148478219053

noncomputable section

/-- A128311: Remainder upon division of 2^(n-1)-1 by n.

Offset 1, canonical program `A128311.P14775993148478219053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A128311 (n : ℕ) : ℤ :=
  A128311.P14775993148478219053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A128311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128766.P6440368289916836038

`∑[A100789(n)]-A337896(n+1)`
-/

namespace A128766.P6440368289916836038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A337896 (n + 1)

end

end A128766.P6440368289916836038

noncomputable section

/-- A128766: Number of inequivalent n-colorings of the vertices of the 3D cube under full orthogonal group of the cube (of order 48).

Offset 1, canonical program `A128766.P6440368289916836038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128766 (n : ℕ) : ℤ :=
  A128766.P6440368289916836038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128766.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A129565.P15275435627333648511

`A183301(n+1)+1-A183300(n+1)`
-/

namespace A129565.P15275435627333648511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183301 (n + 1) + (1 - A183300 (n + 1))

end

end A129565.P15275435627333648511

noncomputable section

/-- A129565: A115359 * A000012 as infinite lower triangular matrices.

Offset 1, canonical program `A129565.P15275435627333648511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129565 (n : ℕ) : ℤ :=
  A129565.P15275435627333648511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129565.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A129787.P14763568988567591034

`A092763(n+1)+A057427(A066601(n+1))`
-/

namespace A129787.P14763568988567591034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092763 (n + 1) + A057427 (A066601 (n + 1)).toNat

end

end A129787.P14763568988567591034

noncomputable section

/-- A129787: Ceiling(3^n/n).

Offset 1, canonical program `A129787.P14763568988567591034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A129787 (n : ℕ) : ℤ :=
  A129787.P14763568988567591034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A129787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129788.P4558889519046091133

`A129794(n+1)+A043545(n)`
-/

namespace A129788.P4558889519046091133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129794 (n + 1) + A043545 n

end

end A129788.P4558889519046091133

noncomputable section

/-- A129788: a(n) = ceiling(4^n/n).

Offset 1, canonical program `A129788.P4558889519046091133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A129788 (n : ℕ) : ℤ :=
  A129788.P4558889519046091133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A129788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129792.P5110914794199871870

`A129798(n+1)+A043545(n)`
-/

namespace A129792.P5110914794199871870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129798 (n + 1) + A043545 n

end

end A129792.P5110914794199871870

noncomputable section

/-- A129792: a(n) = ceiling(8^n/n).

Offset 1, canonical program `A129792.P5110914794199871870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A129792 (n : ℕ) : ℤ :=
  A129792.P5110914794199871870.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A129792.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130638.P11945976620762067139

`A000007(A051950(n+2)²)`
-/

namespace A130638.P11945976620762067139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A051950 (n + 2) ^ 2).toNat

end

end A130638.P11945976620762067139

noncomputable section

/-- A130638: a(n) = 1 iff d(n) = d(n+1), otherwise a(n)=0, where d(n) is the number of divisors of n, A000005.

Offset 1, canonical program `A130638.P11945976620762067139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130638 (n : ℕ) : ℤ :=
  A130638.P11945976620762067139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130638.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131187.P4191835423792268718

`3-A092405(n+1)+n`
-/

namespace A131187.P4191835423792268718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A092405 (n + 1) + (n : ℤ)

end

end A131187.P4191835423792268718

noncomputable section

/-- A131187: a(n) = the number of positive integers < n that are neither a divisor of n nor a divisor of (n+1).

Offset 1, canonical program `A131187.P4191835423792268718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131187 (n : ℕ) : ℤ :=
  A131187.P4191835423792268718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131210.P7610683956886271610

`eq[n+1, A280098(n+1)]+1`
-/

namespace A131210.P7610683956886271610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131210.P7610683956886271610

noncomputable section

/-- A131210: Numbers k such that 24k - 1 is prime.

Offset 1, canonical program `A131210.P7610683956886271610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2659 terms. -/
def A131210 (n : ℕ) : ℤ :=
  (A131210.P7610683956886271610.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2659 terms. -/
def A131210.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131947.P4717626785366615297

`(-1)^n*A113262(n+1)`
-/

namespace A131947.P4717626785366615297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113262 (n + 1)

end

end A131947.P4717626785366615297

noncomputable section

/-- A131947: Expansion of (1 - (phi(-q) * phi(-q^3))^2)/4 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A131947.P4717626785366615297`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113262, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131947 (n : ℕ) : ℤ :=
  A131947.P4717626785366615297.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113262, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131947.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A132196.P17347026632687300166

`A160588(n)+A092323(n+2)`
-/

namespace A132196.P17347026632687300166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160588 n + A092323 (n + 2)

end

end A132196.P17347026632687300166

noncomputable section

/-- A132196: a(2n+1) = 2a(2n)-n for the odd indices. Smallest strictly positive integer not yet in the list for the even indices, a(2n).

Offset 0, canonical program `A132196.P17347026632687300166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132196 (n : ℕ) : ℤ :=
  A132196.P17347026632687300166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132337.P8651020091429480329

`∑[(n+1)*(A135660(n+1)-A135661(n+1))]`
-/

namespace A132337.P8651020091429480329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A135660 (n + 1) - A135661 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132337.P8651020091429480329

noncomputable section

/-- A132337: Sum of the integers from 1 to n, excluding the perfect sixth powers.

Offset 1, canonical program `A132337.P8651020091429480329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132337 (n : ℕ) : ℤ :=
  A132337.P8651020091429480329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132337.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A132999.P9364533411470026189

`record[(n+1)%(A033879(n+1)²+n+1)]`
-/

namespace A132999.P9364533411470026189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A033879 (n + 1) ^ 2 + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132999.P9364533411470026189

noncomputable section

/-- A132999: Imperfect numbers: Not equal to sum of proper divisors.

Offset 1, canonical program `A132999.P9364533411470026189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132999 (n : ℕ) : ℤ :=
  A132999.P9364533411470026189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133111.P10615281622924144025

`∑[∑[A241205(C(n, n²)+n)]]`
-/

namespace A133111.P10615281622924144025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241205 (Nat.choose n (n ^ 2) + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133111.P10615281622924144025

noncomputable section

/-- A133111: a(n) = (1/(1!*2!*3!*4!))*Sum_{1 <= x_1, x_2, x_3, x_4 <= n} |det V(x_1,x_2,x_3,x_4)|, where V(x_1,x_2,x_3,x_4) is the Vandermonde matrix of order 4.

Offset 1, canonical program `A133111.P10615281622924144025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133111 (n : ℕ) : ℤ :=
  A133111.P10615281622924144025.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133111.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A135019.P3349662854402200536

`A062157(n)*A141685(n+1)`
-/

namespace A135019.P3349662854402200536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A141685 (n + 1)

end

end A135019.P3349662854402200536

noncomputable section

/-- A135019: a(n) = -a(n-1) + 2*a(n-2) - a(n-3), with a(0) = 0, a(1) = 1, a(2) = -3.

Offset 0, canonical program `A135019.P3349662854402200536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. -/
def A135019 (n : ℕ) : ℤ :=
  A135019.P3349662854402200536.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. -/
def A135019.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A135323.P12123563018584813955

`(n+1)*A028310(A168324(n+1))`
-/

namespace A135323.P12123563018584813955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028310 (A168324 (n + 1)).toNat

end

end A135323.P12123563018584813955

noncomputable section

/-- A135323: a(1)=1, a(n) = Sum_{p=prime, p|n} a(n/p)*p.

Offset 1, canonical program `A135323.P12123563018584813955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135323 (n : ℕ) : ℤ :=
  A135323.P12123563018584813955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135323.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A136566.P5628416057949265605

`A136567(n+1)+a(floor(n/∏{p}[n+1, #]))` with `a(0)=0`
-/

namespace A136566.P5628416057949265605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A136567 (n + 1) + a ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋.toNat

end

end A136566.P5628416057949265605

noncomputable section

/-- A136566: a(n) = sum of the exponents occurring only once each in the prime-factorization of n.

Offset 1, canonical program `A136566.P5628416057949265605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136566 (n : ℕ) : ℤ :=
  A136566.P5628416057949265605.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136694.P15990081866710796202

`A277545(n*a(n-1))` with `a(0)=1`
-/

namespace A136694.P15990081866710796202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277545 ((n : ℤ) * a (n - 1)).toNat

end

end A136694.P15990081866710796202

noncomputable section

/-- A136694: Final nonzero digit of n! in base 7.

Offset 0, canonical program `A136694.P15990081866710796202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1676 terms. -/
def A136694 (n : ℕ) : ℤ :=
  A136694.P15990081866710796202.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1676 terms. -/
def A136694.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A138503.P12556879654800362698

`(-1)^n*A008457(n+1)`
-/

namespace A138503.P12556879654800362698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A008457 (n + 1)

end

end A138503.P12556879654800362698

noncomputable section

/-- A138503: a(n) = Sum_{d|n} (-1)^(d-1)*d^3.

Offset 1, canonical program `A138503.P12556879654800362698`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008457, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138503 (n : ℕ) : ℤ :=
  A138503.P12556879654800362698.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008457, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138503.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A140041.P6970467857517644391

`∩[A107201(n+1), A139875(n+1)]`
-/

namespace A140041.P6970467857517644391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P6970467857517644391

noncomputable section

/-- A140041: Primes of the form 43x^2+2xy+43y^2.

Offset 1, canonical program `A140041.P6970467857517644391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2505 terms. -/
def A140041 (n : ℕ) : ℤ :=
  (A140041.P6970467857517644391.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2505 terms. -/
def A140041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140101.P15800623837645593610

`comp[A140100(n+1)]`
-/

namespace A140101.P15800623837645593610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140101.P15800623837645593610

noncomputable section

/-- A140101: Start with Y(0)=0, X(1)=1, Y(1)=2. For n > 1, choose least positive integers Y(n) > X(n) such that neither Y(n) nor X(n) appear in {Y(k), 1 <= k < n} or {X(k), 1 <= k < n} and such that Y(n)-X(n) does not appear in {Y(k)-X(k), 1 <= k < n} or {Y(k)+X(k), 1 <= k < n}; sequence gives Y(n) (for X(n) see A140100).

Offset 0, canonical program `A140101.P15800623837645593610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140101 (n : ℕ) : ℤ :=
  (A140101.P15800623837645593610.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090894.P5043155219363739056

`A091995(n+1)-1`
-/

namespace A090894.P5043155219363739056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (n + 1) - 1

end

end A090894.P5043155219363739056

noncomputable section

/-- A090894: Numbers in n-th downward diagonal of triangle T : 0; 1, 2; 3, 4, 5; 6, 7, 8, 9; ...

Offset 0, canonical program `A090894.P5043155219363739056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090894 (n : ℕ) : ℤ :=
  A090894.P5043155219363739056.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091069.P3313354712061999408

`Δ[xor(n, floor(n/4))]*A318608(n+1)`
-/

namespace A091069.P3313354712061999408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A318608 (n + 1)

end

end A091069.P3313354712061999408

noncomputable section

/-- A091069: Moebius mu sequence for real quadratic extension sqrt(2).

Offset 1, canonical program `A091069.P3313354712061999408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091069 (n : ℕ) : ℤ :=
  A091069.P3313354712061999408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092625.P14121284793211722884

`eq[3, A193238(n)]`
-/

namespace A092625.P14121284793211722884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092625.P14121284793211722884

noncomputable section

/-- A092625: Numbers with exactly three prime digits.

Offset 1, canonical program `A092625.P14121284793211722884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1536 terms. -/
def A092625 (n : ℕ) : ℤ :=
  (A092625.P14121284793211722884.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1536 terms. -/
def A092625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095080.P7709350697235318281

`∪[A095082(n+1), A095281(n+1)]`
-/

namespace A095080.P7709350697235318281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095080.P7709350697235318281

noncomputable section

/-- A095080: Fibeven primes, i.e., primes p whose Zeckendorf-expansion A014417(p) ends with zero.

Offset 1, canonical program `A095080.P7709350697235318281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095080 (n : ℕ) : ℤ :=
  (A095080.P7709350697235318281.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099848.P408237094223669535

`∑[char[A099849(n+1)]]+1`
-/

namespace A099848.P408237094223669535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099849 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099848.P408237094223669535

noncomputable section

/-- A099848: All natural numbers occur in their order as many times as they have ordered prime factorizations.

Offset 1, canonical program `A099848.P408237094223669535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099848 (n : ℕ) : ℤ :=
  (A099848.P408237094223669535.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099848.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A106649.P7217166007482486765

`A241158(A017341(n)+1)-A017341(n)-A217657(n)`
-/

namespace A106649.P7217166007482486765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241158 (A017341 n + 1).toNat - A017341 n - A217657 n

end

end A106649.P7217166007482486765

noncomputable section

/-- A106649: Replace each digit d (except the leading one) of n with 9-d.

Offset 0, canonical program `A106649.P7217166007482486765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A106649 (n : ℕ) : ℤ :=
  A106649.P7217166007482486765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A106649.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A114439.P10768737933069284621

`eq[4, A276678(n+1)]+1`
-/

namespace A114439.P10768737933069284621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114439.P10768737933069284621

noncomputable section

/-- A114439: Indices of semiprime pentagonal numbers.

Offset 1, canonical program `A114439.P10768737933069284621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A114439 (n : ℕ) : ℤ :=
  (A114439.P10768737933069284621.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A114439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115424.P2393217423443762188

`A115805(n+2)/3`
-/

namespace A115424.P2393217423443762188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115805 (n + 2) : ℚ) / 3

end

end A115424.P2393217423443762188

noncomputable section

/-- A115424: Integers n > 0 such that n XOR 62*n = 63*n.

Offset 1, canonical program `A115424.P2393217423443762188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6235 terms. -/
def A115424 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115424.P2393217423443762188.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6235 terms. -/
def A115424.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127450.P739528444793282018

`comp[A127451(n+1)-1]+1`
-/

namespace A127450.P739528444793282018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127451 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A127450.P739528444793282018

noncomputable section

/-- A127450: Beatty sequence for 1/(e^Pi - Pi^e), complement of A127451.

Offset 1, canonical program `A127450.P739528444793282018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127450 (n : ℕ) : ℤ :=
  (A127450.P739528444793282018.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127450.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A092494.P17574960425768699571

`A048865(n+1)+A013939(n+1)`
-/

namespace A092494.P17574960425768699571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + A013939 (n + 1)

end

end A092494.P17574960425768699571

noncomputable section

/-- A092494: a(n) = Sum_{p prime and p<=n} ceiling(n/p).

Offset 1, canonical program `A092494.P17574960425768699571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092494 (n : ℕ) : ℤ :=
  A092494.P17574960425768699571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093653.P8111767769754106682

`∑{d}[n+1, A000120(#)]`
-/

namespace A093653.P8111767769754106682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000120 d

end

end A093653.P8111767769754106682

noncomputable section

/-- A093653: Total number of 1's in binary expansion of all divisors of n.

Offset 1, canonical program `A093653.P8111767769754106682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093653 (n : ℕ) : ℤ :=
  A093653.P8111767769754106682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093653.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A097254.P2784501537540303654

`7*A033045(n)`
-/

namespace A097254.P2784501537540303654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A033045 n

end

end A097254.P2784501537540303654

noncomputable section

/-- A097254: Numbers whose set of base 8 digits is {0,7}.

Offset 1, canonical program `A097254.P2784501537540303654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033045, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097254 (n : ℕ) : ℤ :=
  A097254.P2784501537540303654.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033045, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097254.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097326.P16866254985556149033

`floor(A061601(n+1)/(n+1))+1`
-/

namespace A097326.P16866254985556149033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061601 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A097326.P16866254985556149033

noncomputable section

/-- A097326: Largest integer m such that m*n has the same decimal digit length as n.

Offset 1, canonical program `A097326.P16866254985556149033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097326 (n : ℕ) : ℤ :=
  A097326.P16866254985556149033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097326.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100613.P7468063633472476903

`2*A063985(n+1)-n`
-/

namespace A100613.P7468063633472476903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063985 (n + 1) - (n : ℤ)

end

end A100613.P7468063633472476903

noncomputable section

/-- A100613: Number of elements in the set {(x,y): 1 <= x,y <= n, gcd(x,y) > 1}.

Offset 1, canonical program `A100613.P7468063633472476903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100613 (n : ℕ) : ℤ :=
  A100613.P7468063633472476903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104771.P3549521955747714606

`A104769(n)+A104770(n)`
-/

namespace A104771.P3549521955747714606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 n + A104770 n

end

end A104771.P3549521955747714606

noncomputable section

/-- A104771: Expansion of g.f. (1-x+x^2)/(1+x-x^3).

Offset 0, canonical program `A104771.P3549521955747714606`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104771 (n : ℕ) : ℤ :=
  A104771.P3549521955747714606.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104771.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106843.P9879990537790880483

`lt[A035191(n+2), 3]+2`
-/

namespace A106843.P9879990537790880483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A106843.P9879990537790880483

noncomputable section

/-- A106843: Numbers of form 3^i * prime(j), i>=0, j>0.

Offset 1, canonical program `A106843.P9879990537790880483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2009 terms. -/
def A106843 (n : ℕ) : ℤ :=
  (A106843.P9879990537790880483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2009 terms. -/
def A106843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107800.P17763331353586871153

`A001221(A006049(n+1)+1)`
-/

namespace A107800.P17763331353586871153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006049 (n + 1) + 1).toNat

end

end A107800.P17763331353586871153

noncomputable section

/-- A107800: a(n) = number of distinct primes dividing A006049(n) (and dividing A006049(n)+1).

Offset 1, canonical program `A107800.P17763331353586871153`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A006049, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A107800 (n : ℕ) : ℤ :=
  A107800.P17763331353586871153.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A006049, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A107800.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A115224.P1763659109622953996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115224 (n : ℕ) : ℤ :=
  A115224.P1763659109622953996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115224.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A122198.P6463846619944974187

`A122155(A053644(n)+a(A053645(n)))` with `a(0)=0`
-/

namespace A122198.P6463846619944974187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A122155 (A053644 n + a (A053645 n).toNat).toNat

end

end A122198.P6463846619944974187

noncomputable section

/-- A122198: Permutation of natural numbers: a recursed variant of A122155.

Offset 0, canonical program `A122198.P6463846619944974187`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, A122155, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122198 (n : ℕ) : ℤ :=
  A122198.P6463846619944974187.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, A122155, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122198.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122199.P17065714589425841115

`A053644(A122155(n))+a(A053645(A122155(n)))` with `a(0)=0`
-/

namespace A122199.P17065714589425841115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A053644 (A122155 n).toNat + a (A053645 (A122155 n).toNat).toNat

end

end A122199.P17065714589425841115

noncomputable section

/-- A122199: Permutation of natural numbers: a recursed variant of A122155.

Offset 0, canonical program `A122199.P17065714589425841115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, A122155, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122199 (n : ℕ) : ℤ :=
  A122199.P17065714589425841115.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, A122155, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122199.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123575.P4742146334013980851

`∑[A056558(abs(1-n))]`
-/

namespace A123575.P4742146334013980851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123575.P4742146334013980851

noncomputable section

/-- A123575: The Kruskal-Macaulay function L_3(n).

Offset 0, canonical program `A123575.P4742146334013980851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123575 (n : ℕ) : ℤ :=
  A123575.P4742146334013980851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123575.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A126080.P8574941834857366715

`A003557(n+1)*A055631(n+1)`
-/

namespace A126080.P8574941834857366715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A055631 (n + 1)

end

end A126080.P8574941834857366715

noncomputable section

/-- A126080: a(n) = number of positive integers < n that are coprime to exactly one prime divisor of n.

Offset 1, canonical program `A126080.P8574941834857366715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126080 (n : ℕ) : ℤ :=
  A126080.P8574941834857366715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128853.P13378743803710917072

`A034444(n+1)/A034444(A009195(n+1))`
-/

namespace A128853.P13378743803710917072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) / (A034444 (A009195 (n + 1)).toNat : ℚ)

end

end A128853.P13378743803710917072

noncomputable section

/-- A128853: a(n) is the number of positive divisors of n which are coprime to phi(n) = A000010(n).

Offset 1, canonical program `A128853.P13378743803710917072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128853 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128853.P13378743803710917072.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134023.P10471742780946936654

`A134021(n)-A005812(n)`
-/

namespace A134023.P10471742780946936654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 n - A005812 n

end

end A134023.P10471742780946936654

noncomputable section

/-- A134023: Number of zeros in balanced ternary representation of n.

Offset 0, canonical program `A134023.P10471742780946936654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005812, A134021, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A134023 (n : ℕ) : ℤ :=
  A134023.P10471742780946936654.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005812, A134021, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A134023.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A137324.P11217824832515856372

`A105221(n+3)+A048865(n+3)`
-/

namespace A137324.P11217824832515856372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105221 (n + 3) + A048865 (n + 3)

end

end A137324.P11217824832515856372

noncomputable section

/-- A137324: a(n) = Sum_{prime p < n} gcd(n,p).

Offset 3, canonical program `A137324.P11217824832515856372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A137324 (n : ℕ) : ℤ :=
  A137324.P11217824832515856372.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A137324.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A091178.P17670734462985012813

`∪[A160592(n+1), A160594(n+1)]`
-/

namespace A091178.P17670734462985012813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091178.P17670734462985012813

noncomputable section

/-- A091178: Numbers k such that k-th prime is of the form 6*m+1.

Offset 1, canonical program `A091178.P17670734462985012813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091178 (n : ℕ) : ℤ :=
  (A091178.P17670734462985012813.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091178.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A101266.P11296860737574456655`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101266 (n : ℕ) : ℤ :=
  A101266.P11296860737574456655.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101266.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A105032.P9866371612079488807

`A007088(A103745(n+1))`
-/

namespace A105032.P9866371612079488807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A103745 (n + 1)).toNat

end

end A105032.P9866371612079488807

noncomputable section

/-- A105032: Binary equivalents of A103745.

Offset 1, canonical program `A105032.P9866371612079488807`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A103745, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A105032 (n : ℕ) : ℤ :=
  A105032.P9866371612079488807.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A103745, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A105032.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A122260.P1226289541384129242

`lt[A173557(A173557(n+1)), 3]+1`
-/

namespace A122260.P1226289541384129242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A173557 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A122260.P1226289541384129242

noncomputable section

/-- A122260: Multiplicative closure of Pierpont primes.

Offset 1, canonical program `A122260.P1226289541384129242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3535 terms. -/
def A122260 (n : ℕ) : ℤ :=
  (A122260.P1226289541384129242.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3535 terms. -/
def A122260.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134022.P16948364718600787196

`A005812(A117966(2*n)+A117966(n))`
-/

namespace A134022.P16948364718600787196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A117966 (2 * n) + A117966 n).toNat

end

end A134022.P16948364718600787196

noncomputable section

/-- A134022: Number of negative trits in balanced ternary representation of n.

Offset 0, canonical program `A134022.P16948364718600787196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134022 (n : ℕ) : ℤ :=
  A134022.P16948364718600787196.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139140.P15434870677707820248

`Δ[A253769(A028310(n))%A001844(n)]`
-/

namespace A139140.P15434870677707820248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253769 (A028310 n).toNat) (A001844 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139140.P15434870677707820248

noncomputable section

/-- A139140: For n>=1, a(n) = d(prime(n)+1) + d(prime(n)+2) + d(prime(n)+3) + ... + d(prime(n+1)), where d(m) is the number of positive divisors of m and prime(n) is the n-th prime. a(0) = d(1) + d(2).

Offset 0, canonical program `A139140.P15434870677707820248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A139140 (n : ℕ) : ℤ :=
  A139140.P15434870677707820248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A139140.provenance : SequenceMachineLib.Provenance := .conjectured

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

