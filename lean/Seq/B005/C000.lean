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
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A020985.P937884151096334327

`(-1)^A014081(n)`
-/

namespace A020985.P937884151096334327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A014081 n : ℤ)

end

end A020985.P937884151096334327

noncomputable section

/-- A020985: The Rudin-Shapiro or Golay-Rudin-Shapiro sequence (coefficients of the Shapiro polynomials).

Offset 0, canonical program `A020985.P937884151096334327`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020985 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020985.P937884151096334327.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020985.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055941.P14455058881262499734

`A161511(n)-A000120(n)`
-/

namespace A055941.P14455058881262499734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 n - A000120 n

end

end A055941.P14455058881262499734

noncomputable section

/-- A055941: a(n) = Sum_{j=0..k-1} (i(j) - j) where n = Sum_{j=0..k-1} 2^i(j).

Offset 0, canonical program `A055941.P14455058881262499734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055941 (n : ℕ) : ℤ :=
  A055941.P14455058881262499734.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037227.P1481052513991100259

`2*A007814(n+1)+1`
-/

namespace A037227.P1481052513991100259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1) + 1

end

end A037227.P1481052513991100259

noncomputable section

/-- A037227: If n = 2^m*k, k odd, then a(n) = 2*m+1.

Offset 1, canonical program `A037227.P1481052513991100259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037227 (n : ℕ) : ℤ :=
  A037227.P1481052513991100259.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037227.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039963.P7442074612233397869

`A035263(1+floor(n/2))`
-/

namespace A039963.P7442074612233397869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (1 + ⌊(n : ℚ) / 2⌋).toNat

end

end A039963.P7442074612233397869

noncomputable section

/-- A039963: The period-doubling sequence A035263 repeated.

Offset 0, canonical program `A039963.P7442074612233397869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039963 (n : ℕ) : ℤ :=
  A039963.P7442074612233397869.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039963.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050603.P12712608073834541420

`A007814(n+1)+A007814(n+2)`
-/

namespace A050603.P12712608073834541420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (n + 2)

end

end A050603.P12712608073834541420

noncomputable section

/-- A050603: A001511 with every term repeated.

Offset 0, canonical program `A050603.P12712608073834541420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050603 (n : ℕ) : ℤ :=
  A050603.P12712608073834541420.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050605.P11206776989193119858

`A007814(n+1)+A007814(n+2)-1`
-/

namespace A050605.P11206776989193119858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (n + 2) - 1

end

end A050605.P11206776989193119858

noncomputable section

/-- A050605: Column/row 2 of A050602: a(n) = add3c(n,2).

Offset 0, canonical program `A050605.P11206776989193119858`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050605 (n : ℕ) : ℤ :=
  A050605.P11206776989193119858.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050605.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056832.P3449662837231089589

`2-A035263(n+1)`
-/

namespace A056832.P3449662837231089589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A035263 (n + 1)

end

end A056832.P3449662837231089589

noncomputable section

/-- A056832: All a(n) = 1 or 2; a(1) = 1; get next 2^k terms by repeating first 2^k terms and changing last element so sum of first 2^(k+1) terms is odd.

Offset 1, canonical program `A056832.P3449662837231089589`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056832 (n : ℕ) : ℤ :=
  A056832.P3449662837231089589.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056832.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059132.P10830951508121782954

`4+6*A007814(n+1)`
-/

namespace A059132.P10830951508121782954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + 6 * A007814 (n + 1)

end

end A059132.P10830951508121782954

noncomputable section

/-- A059132: A hierarchical sequence (W2{2}c - see A059126).

Offset 0, canonical program `A059132.P10830951508121782954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059132 (n : ℕ) : ℤ :=
  A059132.P10830951508121782954.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059139.P8007015464797935688

`4+3*A007814(n+1)`
-/

namespace A059139.P8007015464797935688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + 3 * A007814 (n + 1)

end

end A059139.P8007015464797935688

noncomputable section

/-- A059139: A hierarchical sequence (W2{2}*c - see A059126).

Offset 0, canonical program `A059139.P8007015464797935688`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059139 (n : ℕ) : ℤ :=
  A059139.P8007015464797935688.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059139.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059152.P1141809837012285539

`4*4^A007814(n+1)`
-/

namespace A059152.P1141809837012285539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (4 : ℚ) ^ (A007814 (n + 1) : ℤ)

end

end A059152.P1141809837012285539

noncomputable section

/-- A059152: A hierarchical sequence (W'2{2}c - see A059126).

Offset 0, canonical program `A059152.P1141809837012285539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059152 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059152.P1141809837012285539.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059152.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059154.P4388372018061316421

`12*8^A007814(n+1)`
-/

namespace A059154.P4388372018061316421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 * (8 : ℚ) ^ (A007814 (n + 1) : ℤ)

end

end A059154.P4388372018061316421

noncomputable section

/-- A059154: A hierarchical sequence (W'2{3}c - see A059126).

Offset 0, canonical program `A059154.P4388372018061316421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059154 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059154.P4388372018061316421.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059154.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059157.P6751361432800768077

`24*16^A007814(n+1)`
-/

namespace A059157.P6751361432800768077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  24 * (16 : ℚ) ^ (A007814 (n + 1) : ℤ)

end

end A059157.P6751361432800768077

noncomputable section

/-- A059157: A hierarchical sequence (W'3{2,2}cc - see A059126).

Offset 0, canonical program `A059157.P6751361432800768077`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059157 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059157.P6751361432800768077.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059157.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078734.P4094134609094270230

`1+A010872(A007814(n+1))`
-/

namespace A078734.P4094134609094270230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A010872 (A007814 (n + 1)).toNat

end

end A078734.P4094134609094270230

noncomputable section

/-- A078734: Start with 1,2, concatenate 2^k previous terms and change last term as follows: 1->2, 2->3, 3->1.

Offset 1, canonical program `A078734.P4094134609094270230`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078734 (n : ℕ) : ℤ :=
  A078734.P4094134609094270230.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078734.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080791.P6131873509789506769

`a(n-1)+A007814(n)+A036987(n-1)-1` with `a(0)=0, a(1)=0`
-/

namespace A080791.P6131873509789506769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + A007814 n + A036987 (n - 1) - 1

end

end A080791.P6131873509789506769

noncomputable section

/-- A080791: Number of nonleading 0's in binary expansion of n.

Offset 0, canonical program `A080791.P6131873509789506769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080791 (n : ℕ) : ℤ :=
  A080791.P6131873509789506769.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080791.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084623.P2915288955471641731

`2^(n-A007814(n+1))`
-/

namespace A084623.P2915288955471641731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A007814 (n + 1) : ℤ)

end

end A084623.P2915288955471641731

noncomputable section

/-- A084623: Numerator of 2^(n-1)/n.

Offset 1, canonical program `A084623.P2915288955471641731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084623 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084623.P2915288955471641731.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084623.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085060.P3128455452568235012

`(3/2)^A085058(n)*(2*n+2)-3/2`
-/

namespace A085060.P3128455452568235012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2) ^ (A085058 n : ℤ) * (2 * n + 2 : ℚ) - (3 : ℚ) / 2

end

end A085060.P3128455452568235012

noncomputable section

/-- A085060: Integer reached in A085058.

Offset 0, canonical program `A085060.P3128455452568235012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085060 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085060.P3128455452568235012.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085296.P17068606846671607086

`(9*3^A007814(n+1)-1)/2-1`
-/

namespace A085296.P17068606846671607086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * (3 : ℚ) ^ (A007814 (n + 1) : ℤ) - 1) / 2 - 1

end

end A085296.P17068606846671607086

noncomputable section

/-- A085296: Runs of zeros in Catalan sequence modulo 3: consecutive occurrences of binomial(2*k,k)/(k+1) == 0 (mod 3).

Offset 1, canonical program `A085296.P17068606846671607086`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085296 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085296.P17068606846671607086.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085296.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087229.P9926633542854857690

`A007814(A017569(n))`
-/

namespace A087229.P9926633542854857690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A017569 n).toNat

end

end A087229.P9926633542854857690

noncomputable section

/-- A087229: Exponent of p=2 in 12n+4 = 3(4n+1)+1.

Offset 0, canonical program `A087229.P9926633542854857690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087229 (n : ℕ) : ℤ :=
  A087229.P9926633542854857690.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087229.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087230.P12877807738838144473

`A007814(A016957(n))`
-/

namespace A087230.P12877807738838144473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A016957 n).toNat

end

end A087230.P12877807738838144473

noncomputable section

/-- A087230: a(n) is the 2-adic valuation of 6*n + 4.

Offset 0, canonical program `A087230.P12877807738838144473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087230 (n : ℕ) : ℤ :=
  A087230.P12877807738838144473.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087230.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088840.P2952349459098341905

`A213243(A007814(n+1)+1)`
-/

namespace A088840.P2952349459098341905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213243 (A007814 (n + 1) + 1).toNat

end

end A088840.P2952349459098341905

noncomputable section

/-- A088840: Denominator of sigma(4n)/sigma(n).

Offset 1, canonical program `A088840.P2952349459098341905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088840 (n : ℕ) : ℤ :=
  A088840.P2952349459098341905.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089265.P11891266049107648867

`A007814(n+1)+2*A025480(n)`
-/

namespace A089265.P11891266049107648867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 2 * A025480 n

end

end A089265.P11891266049107648867

noncomputable section

/-- A089265: a(1) = 0; thereafter a(2*n) = a(n) + 1, a(2*n+1) = 2*n.

Offset 1, canonical program `A089265.P11891266049107648867`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089265 (n : ℕ) : ℤ :=
  A089265.P11891266049107648867.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089608.P1685059396836438671

`5-4*A035263(n+1)`
-/

namespace A089608.P1685059396836438671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - 4 * A035263 (n + 1)

end

end A089608.P1685059396836438671

noncomputable section

/-- A089608: a(n) = ((-1)^(n+1)*A002425(n)) modulo 6.

Offset 1, canonical program `A089608.P1685059396836438671`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089608 (n : ℕ) : ℤ :=
  A089608.P1685059396836438671.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090739.P11795774143711516918

`A007814(n+1)+3`
-/

namespace A090739.P11795774143711516918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 3

end

end A090739.P11795774143711516918

noncomputable section

/-- A090739: Exponent of 2 in 9^n - 1.

Offset 1, canonical program `A090739.P11795774143711516918`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090739 (n : ℕ) : ℤ :=
  A090739.P11795774143711516918.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090739.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096268.P10327595005272142114

`1-A035263(n+1)`
-/

namespace A096268.P10327595005272142114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035263 (n + 1)

end

end A096268.P10327595005272142114

noncomputable section

/-- A096268: Period-doubling sequence (or period-doubling word): fixed point of the morphism 0 -> 01, 1 -> 00.

Offset 0, canonical program `A096268.P10327595005272142114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096268 (n : ℕ) : ℤ :=
  A096268.P10327595005272142114.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098352.P3707437164941693741

`4*A003991(n+1)`
-/

namespace A098352.P3707437164941693741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003991 (n + 1)

end

end A098352.P3707437164941693741

noncomputable section

/-- A098352: Multiplication table of the even numbers read by antidiagonals.

Offset 1, canonical program `A098352.P3707437164941693741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098352 (n : ℕ) : ℤ :=
  A098352.P3707437164941693741.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098352.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098360.P9364813063052634446

`A003991(n+1)^3`
-/

namespace A098360.P9364813063052634446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) ^ 3

end

end A098360.P9364813063052634446

noncomputable section

/-- A098360: Multiplication table of the cube numbers read by antidiagonals.

Offset 1, canonical program `A098360.P9364813063052634446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098360 (n : ℕ) : ℤ :=
  A098360.P9364813063052634446.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101651.P2336243589466442413

`2^A245710(n)`
-/

namespace A101651.P2336243589466442413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A245710 n : ℤ)

end

end A101651.P2336243589466442413

noncomputable section

/-- A101651: a(n) = Product_{k=0..n} (1 + 0^A010060(k))/2.

Offset 0, canonical program `A101651.P2336243589466442413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101651 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A101651.P2336243589466442413.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003484.P6209277204586873753

`A003485(A007814(n+1))`
-/

namespace A003484.P6209277204586873753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A007814 (n + 1)).toNat

end

end A003484.P6209277204586873753

noncomputable section

/-- A003484: Radon function, also called Hurwitz-Radon numbers.

Offset 1, canonical program `A003484.P6209277204586873753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003484 (n : ℕ) : ℤ :=
  A003484.P6209277204586873753.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003484.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001283.P9612674106324682864

`(A108872(n+1)+1)*A003057(n+2)`
-/

namespace A001283.P9612674106324682864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) + 1) * A003057 (n + 2)

end

end A001283.P9612674106324682864

noncomputable section

/-- A001283: Triangle read by rows, in which row n consists of n(n+m) for m = 1 .. n-1.

Offset 2, canonical program `A001283.P9612674106324682864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001283 (n : ℕ) : ℤ :=
  A001283.P9612674106324682864.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003989.P4304575530733865990

`gcd(abs(A114327(n)), A004736(n+1))`
-/

namespace A003989.P4304575530733865990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A114327 n| (A004736 (n + 1))

end

end A003989.P4304575530733865990

noncomputable section

/-- A003989: Triangle T from the array A(x, y) = gcd(x,y), for x >= 1, y >= 1, read by antidiagonals.

Offset 1, canonical program `A003989.P4304575530733865990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003989 (n : ℕ) : ℤ :=
  (A003989.P4304575530733865990.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005681.P11362584673414120459

`A268676(n)+A010060(n+1)`
-/

namespace A005681.P11362584673414120459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n + A010060 (n + 1)

end

end A005681.P11362584673414120459

noncomputable section

/-- A005681: A squarefree quaternary sequence.

Offset 1, canonical program `A005681.P11362584673414120459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005681 (n : ℕ) : ℤ :=
  A005681.P11362584673414120459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006287.P6441187741628273080

`2*A053735(n)-A007814(A006047(n))`
-/

namespace A006287.P6441187741628273080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053735 n - A007814 (A006047 n).toNat

end

end A006287.P6441187741628273080

noncomputable section

/-- A006287: Sum of squares of digits of ternary representation of n.

Offset 0, canonical program `A006287.P6441187741628273080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006287 (n : ℕ) : ℤ :=
  A006287.P6441187741628273080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008417.P12539990022854185462

`∑[A008416(n)]`
-/

namespace A008417.P12539990022854185462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008417.P12539990022854185462

noncomputable section

/-- A008417: Crystal ball sequence for 8-dimensional cubic lattice.

Offset 0, canonical program `A008417.P12539990022854185462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008417 (n : ℕ) : ℤ :=
  A008417.P12539990022854185462.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008419.P5285812897450645151

`∑[A008418(n)]`
-/

namespace A008419.P5285812897450645151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008419.P5285812897450645151

noncomputable section

/-- A008419: Crystal ball sequence for 9-dimensional cubic lattice.

Offset 0, canonical program `A008419.P5285812897450645151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008419 (n : ℕ) : ℤ :=
  A008419.P5285812897450645151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008420.P15915323523869300231

`A008416(n)+2*A035603(n)`
-/

namespace A008420.P15915323523869300231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 n + 2 * A035603 n

end

end A008420.P15915323523869300231

noncomputable section

/-- A008420: Coordination sequence for 10-dimensional cubic lattice.

Offset 0, canonical program `A008420.P15915323523869300231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008420 (n : ℕ) : ℤ :=
  A008420.P15915323523869300231.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008862.P15109180093103356418

`A008861(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A008862.P15109180093103356418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008861 (n - 1) + a (n - 1)

end

end A008862.P15109180093103356418

noncomputable section

/-- A008862: a(n) = Sum_{k=0..9} binomial(n,k).

Offset 0, canonical program `A008862.P15109180093103356418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008862 (n : ℕ) : ℤ :=
  A008862.P15109180093103356418.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008867.P9313319048555575930

`∑[A114327(n)]+1+n`
-/

namespace A008867.P9313319048555575930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A008867.P9313319048555575930

noncomputable section

/-- A008867: Triangle of truncated triangular numbers: k-th term in n-th row is number of dots in hexagon of sides k, n-k, k, n-k, k, n-k.

Offset 2, canonical program `A008867.P9313319048555575930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008867 (n : ℕ) : ℤ :=
  A008867.P9313319048555575930.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010992.P13125257527859976178

`∑[A010991(n)]`
-/

namespace A010992.P13125257527859976178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010991 (n + 38)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010992.P13125257527859976178

noncomputable section

/-- A010992: Binomial coefficient C(n,39).

Offset 39, canonical program `A010992.P13125257527859976178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5624 terms. -/
def A010992 (n : ℕ) : ℤ :=
  A010992.P13125257527859976178.a (n - 39)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5624 terms. -/
def A010992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011585.P5061405384106382312

`A062157(A070481(n)+A007814(2*n+1))`
-/

namespace A011585.P5061405384106382312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A070481 n + A007814 (2 * n + 1)).toNat

end

end A011585.P5061405384106382312

noncomputable section

/-- A011585: Legendre symbol (n,19).

Offset 0, canonical program `A011585.P5061405384106382312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A011585 (n : ℕ) : ℤ :=
  A011585.P5061405384106382312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A011585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014082.P16446960074050354385

`A014081(and(n, 2*n))`
-/

namespace A014082.P16446960074050354385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Nat.land n (2 * n))

end

end A014082.P16446960074050354385

noncomputable section

/-- A014082: Number of occurrences of '111' in binary expansion of n.

Offset 0, canonical program `A014082.P16446960074050354385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014082 (n : ℕ) : ℤ :=
  A014082.P16446960074050354385.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019564.P17251219287643129102

`A008416(2*n)`
-/

namespace A019564.P17251219287643129102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 (2 * n)

end

end A019564.P17251219287643129102

noncomputable section

/-- A019564: Coordination sequence for C_8 lattice.

Offset 0, canonical program `A019564.P17251219287643129102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008416, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019564 (n : ℕ) : ℤ :=
  A019564.P17251219287643129102.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008416, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019564.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020904.P1504925668642329860

`lt[1, A020903(A002260(n+1))]`
-/

namespace A020904.P1504925668642329860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020903 (A002260 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020904.P1504925668642329860

noncomputable section

/-- A020904: Positions of 2 in A020903; complement of A191777.

Offset 1, canonical program `A020904.P1504925668642329860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4730 terms. -/
def A020904 (n : ℕ) : ℤ :=
  (A020904.P1504925668642329860.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4730 terms. -/
def A020904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020987.P9597873820712649968

`A014081(n)%2`
-/

namespace A020987.P9597873820712649968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014081 n) 2

end

end A020987.P9597873820712649968

noncomputable section

/-- A020987: Zero-one version of Golay-Rudin-Shapiro sequence (or word).

Offset 0, canonical program `A020987.P9597873820712649968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020987 (n : ℕ) : ℤ :=
  A020987.P9597873820712649968.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022156.P8060597449158036699

`A276391(n+1)+A276391(n+2)-A115716(n)`
-/

namespace A022156.P8060597449158036699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (n + 1) + (A276391 (n + 2) - A115716 n)

end

end A022156.P8060597449158036699

noncomputable section

/-- A022156: Difference sequence of A020991.

Offset 0, canonical program `A022156.P8060597449158036699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A022156 (n : ℕ) : ℤ :=
  A022156.P8060597449158036699.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A022156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022423.P3878848537184093492

`A374359(n+1)+A022421(n)`
-/

namespace A022423.P3878848537184093492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374359 (n + 1) + A022421 n

end

end A022423.P3878848537184093492

noncomputable section

/-- A022423: Kim-sums: "Kimberling sums" K_n + K_12.

Offset 0, canonical program `A022423.P3878848537184093492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022423 (n : ℕ) : ℤ :=
  A022423.P3878848537184093492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023546.P15832084740815402753

`∑[A028242(∑[A097806(n)])]`
-/

namespace A023546.P15832084740815402753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023546.P15832084740815402753

noncomputable section

/-- A023546: Convolution of natural numbers >= 2 and A023531.

Offset 1, canonical program `A023546.P15832084740815402753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023546 (n : ℕ) : ℤ :=
  A023546.P15832084740815402753.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023562.P8681614604525983552

`∑[∑[A097806(n)]-1]`
-/

namespace A023562.P8681614604525983552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023562.P8681614604525983552

noncomputable section

/-- A023562: Convolution of A023531 and odd numbers.

Offset 1, canonical program `A023562.P8681614604525983552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023562 (n : ℕ) : ℤ :=
  A023562.P8681614604525983552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023696.P1765320762815526595

`eq[5, A007814(A006047(n))]`
-/

namespace A023696.P1765320762815526595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023696.P1765320762815526595

noncomputable section

/-- A023696: Numbers with exactly 5 1's in ternary expansion.

Offset 1, canonical program `A023696.P1765320762815526595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1568 terms. -/
def A023696 (n : ℕ) : ℤ :=
  (A023696.P1765320762815526595.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1568 terms. -/
def A023696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023697.P3220481640824258587

`eq[6, A007814(A006047(n))]`
-/

namespace A023697.P3220481640824258587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023697.P3220481640824258587

noncomputable section

/-- A023697: Numbers with exactly 6 1's in their ternary expansion.

Offset 1, canonical program `A023697.P3220481640824258587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. -/
def A023697 (n : ℕ) : ℤ :=
  (A023697.P3220481640824258587.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. -/
def A023697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024504.P7320462618331347679

`floor(A024502(n)/2)`
-/

namespace A024504.P7320462618331347679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024502 n : ℚ) / 2⌋

end

end A024504.P7320462618331347679

noncomputable section

/-- A024504: a(n) = floor(C(2n,n)/2^(n+1)).

Offset 0, canonical program `A024504.P7320462618331347679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A024504 (n : ℕ) : ℤ :=
  A024504.P7320462618331347679.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A024504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024875.P2931421296640362932

`2*A024869(n+2)-A024854(n+2)`
-/

namespace A024875.P2931421296640362932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024869 (n + 2) - A024854 (n + 2)

end

end A024875.P2931421296640362932

noncomputable section

/-- A024875: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = floor( n/2 ), s = natural numbers >= 3.

Offset 2, canonical program `A024875.P2931421296640362932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024875 (n : ℕ) : ℤ :=
  A024875.P2931421296640362932.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024877.P16584012869159844224

`A024315(n+1)+2*A024313(n+1)`
-/

namespace A024877.P16584012869159844224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024315 (n + 1) + 2 * A024313 (n + 1)

end

end A024877.P16584012869159844224

noncomputable section

/-- A024877: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers >= 3), t = (Lucas numbers).

Offset 2, canonical program `A024877.P16584012869159844224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A024877 (n : ℕ) : ℤ :=
  A024877.P16584012869159844224.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A024877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024878.P13264414261582248090

`A024315(n+1)+A024313(n+1)`
-/

namespace A024878.P13264414261582248090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024315 (n + 1) + A024313 (n + 1)

end

end A024878.P13264414261582248090

noncomputable section

/-- A024878: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers >= 3), t = (F(2), F(3), F(4), ...).

Offset 2, canonical program `A024878.P13264414261582248090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A024878 (n : ℕ) : ℤ :=
  A024878.P13264414261582248090.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A024878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025920.P15830034220356691648

`A025865(A014682(n)%A052938(n))`
-/

namespace A025920.P15830034220356691648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025865 (Int.tmod (A014682 n) (A052938 n)).toNat

end

end A025920.P15830034220356691648

noncomputable section

/-- A025920: Expansion of 1/((1-x^8)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A025920.P15830034220356691648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025920 (n : ℕ) : ℤ :=
  A025920.P15830034220356691648.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026031.P15128004399576730173

`A026027(n+3)-A026030(n+2)`
-/

namespace A026031.P15128004399576730173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026027 (n + 3) - A026030 (n + 2)

end

end A026031.P15128004399576730173

noncomputable section

/-- A026031: a(n) = number of (s(0), s(1), ..., s(2n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 3, s(2n) = 7. Also a(n) = T(2n,n-2), where T is defined in A026022.

Offset 2, canonical program `A026031.P15128004399576730173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026031 (n : ℕ) : ℤ :=
  A026031.P15128004399576730173.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027798.P3178799117509613712

`∑[A027797(n+9)+A027785(n)]`
-/

namespace A027798.P3178799117509613712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027797 (n + 9) + A027785 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027798.P3178799117509613712

noncomputable section

/-- A027798: a(n) = 26*(n+1)*binomial(n+3,13).

Offset 10, canonical program `A027798.P3178799117509613712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027798 (n : ℕ) : ℤ :=
  A027798.P3178799117509613712.a (n - 10)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027808.P7674354172885343020

`(n+1)/3*A027807(n+8)/3`
-/

namespace A027808.P7674354172885343020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A027807 (n + 8) : ℚ) / 3

end

end A027808.P7674354172885343020

noncomputable section

/-- A027808: a(n) = 55*(n+1)*binomial(n+4,12).

Offset 8, canonical program `A027808.P7674354172885343020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A027808 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027808.P7674354172885343020.a (n - 8))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A027808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027933.P2138915729023418697

`A027932(n+4)+a(n-1)` with `a(0)=1`
-/

namespace A027933.P2138915729023418697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027932 (n + 4) + a (n - 1)

end

end A027933.P2138915729023418697

noncomputable section

/-- A027933: a(n) = T(n, 2*n-10), T given by A027926.

Offset 5, canonical program `A027933.P2138915729023418697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027933 (n : ℕ) : ℤ :=
  A027933.P2138915729023418697.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027972.P3797829496454005148

`A027971(n+4)+a(n-1)` with `a(0)=1`
-/

namespace A027972.P3797829496454005148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027971 (n + 4) + a (n - 1)

end

end A027972.P3797829496454005148

noncomputable section

/-- A027972: T(n, 2n-10), T given by A027960.

Offset 5, canonical program `A027972.P3797829496454005148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027972 (n : ℕ) : ℤ :=
  A027972.P3797829496454005148.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029066.P9719720827509354257

`∑[A025861(n)]`
-/

namespace A029066.P9719720827509354257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029066.P9719720827509354257

noncomputable section

/-- A029066: Expansion of 1/((1-x)*(1-x^4)*(1-x^5)*(1-x^9)).

Offset 0, canonical program `A029066.P9719720827509354257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029066 (n : ℕ) : ℤ :=
  A029066.P9719720827509354257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029071.P7762703672727769565

`∑[A025865(n)]`
-/

namespace A029071.P7762703672727769565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029071.P7762703672727769565

noncomputable section

/-- A029071: Expansion of 1/((1-x)*(1-x^4)*(1-x^6)*(1-x^9)).

Offset 0, canonical program `A029071.P7762703672727769565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029071 (n : ℕ) : ℤ :=
  A029071.P7762703672727769565.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029111.P18190003655687312260

`∑[A025902(n)]`
-/

namespace A029111.P18190003655687312260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029111.P18190003655687312260

noncomputable section

/-- A029111: Expansion of 1/((1-x)(1-x^6)(1-x^8)(1-x^9)).

Offset 0, canonical program `A029111.P18190003655687312260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029111 (n : ℕ) : ℤ :=
  A029111.P18190003655687312260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029114.P3228547095557846636

`∑[A025905(n)]`
-/

namespace A029114.P3228547095557846636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029114.P3228547095557846636

noncomputable section

/-- A029114: Expansion of 1/((1-x)*(1-x^6)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029114.P3228547095557846636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029114 (n : ℕ) : ℤ :=
  A029114.P3228547095557846636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029137.P7048144239765514684

`A029033(n)-a(n-1)` with `a(0)=1`
-/

namespace A029137.P7048144239765514684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029033 n - a (n - 1)

end

end A029137.P7048144239765514684

noncomputable section

/-- A029137: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^4)*(1-x^7)).

Offset 0, canonical program `A029137.P7048144239765514684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029137 (n : ℕ) : ℤ :=
  A029137.P7048144239765514684.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029139.P14340650104495804196

`A029035(n)-a(n-1)` with `a(0)=1`
-/

namespace A029139.P14340650104495804196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029035 n - a (n - 1)

end

end A029139.P14340650104495804196

noncomputable section

/-- A029139: Expansion of 1/((1-x^2)(1-x^3)(1-x^4)(1-x^9)).

Offset 0, canonical program `A029139.P14340650104495804196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029139 (n : ℕ) : ℤ :=
  A029139.P14340650104495804196.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029149.P5062923561193490487

`A029090(n)-A025881(abs(A023443(n)))`
-/

namespace A029149.P5062923561193490487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029090 n - A025881 |A023443 n|.toNat

end

end A029149.P5062923561193490487

noncomputable section

/-- A029149: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^5)*(1-x^12)).

Offset 0, canonical program `A029149.P5062923561193490487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029149 (n : ℕ) : ℤ :=
  A029149.P5062923561193490487.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029161.P12244907669660074842

`A029054(n)-a(n-1)` with `a(0)=1`
-/

namespace A029161.P12244907669660074842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029054 n - a (n - 1)

end

end A029161.P12244907669660074842

noncomputable section

/-- A029161: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029161.P12244907669660074842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029161 (n : ℕ) : ℤ :=
  A029161.P12244907669660074842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029166.P10852139919608764401

`A029059(n)-a(n-1)` with `a(0)=1`
-/

namespace A029166.P10852139919608764401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029059 n - a (n - 1)

end

end A029166.P10852139919608764401

noncomputable section

/-- A029166: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029166.P10852139919608764401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029166 (n : ℕ) : ℤ :=
  A029166.P10852139919608764401.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029173.P5401055336084168647

`A029065(n)-a(n-1)` with `a(0)=1`
-/

namespace A029173.P5401055336084168647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029065 n - a (n - 1)

end

end A029173.P5401055336084168647

noncomputable section

/-- A029173: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^5)*(1-x^8)).

Offset 0, canonical program `A029173.P5401055336084168647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029173 (n : ℕ) : ℤ :=
  A029173.P5401055336084168647.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029181.P402436439018266049

`A029073(n)-a(n-1)` with `a(0)=1`
-/

namespace A029181.P402436439018266049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029073 n - a (n - 1)

end

end A029181.P402436439018266049

noncomputable section

/-- A029181: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^7)*(1-x^8)).

Offset 0, canonical program `A029181.P402436439018266049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029181 (n : ℕ) : ℤ :=
  A029181.P402436439018266049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029186.P6782394421883097105

`A029078(n)-a(n-1)` with `a(0)=1`
-/

namespace A029186.P6782394421883097105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029078 n - a (n - 1)

end

end A029186.P6782394421883097105

noncomputable section

/-- A029186: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029186.P6782394421883097105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029186 (n : ℕ) : ℤ :=
  A029186.P6782394421883097105.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029195.P11890290906593188320

`A029087(n)-a(n-1)` with `a(0)=1`
-/

namespace A029195.P11890290906593188320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029087 n - a (n - 1)

end

end A029195.P11890290906593188320

noncomputable section

/-- A029195: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^6)*(1-x^9)).

Offset 0, canonical program `A029195.P11890290906593188320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029195 (n : ℕ) : ℤ :=
  A029195.P11890290906593188320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029198.P17340044344010173099

`A029090(n)-a(n-1)` with `a(0)=1`
-/

namespace A029198.P17340044344010173099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029090 n - a (n - 1)

end

end A029198.P17340044344010173099

noncomputable section

/-- A029198: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^6)*(1-x^12)).

Offset 0, canonical program `A029198.P17340044344010173099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029198 (n : ℕ) : ℤ :=
  A029198.P17340044344010173099.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029205.P13285390600069634873

`A029097(n)-a(n-1)` with `a(0)=1`
-/

namespace A029205.P13285390600069634873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029097 n - a (n - 1)

end

end A029205.P13285390600069634873

noncomputable section

/-- A029205: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^8)*(1-x^10)).

Offset 0, canonical program `A029205.P13285390600069634873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029205 (n : ℕ) : ℤ :=
  A029205.P13285390600069634873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029227.P4896199220607575330

`A029118(n)-a(n-1)` with `a(0)=1`
-/

namespace A029227.P4896199220607575330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029118 n - a (n - 1)

end

end A029227.P4896199220607575330

noncomputable section

/-- A029227: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^8)*(1-x^10)).

Offset 0, canonical program `A029227.P4896199220607575330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029227 (n : ℕ) : ℤ :=
  A029227.P4896199220607575330.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029247.P3576117638533204583

`A029146(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029247.P3576117638533204583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029146 n - a (n - 2)

end

end A029247.P3576117638533204583

noncomputable section

/-- A029247: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^5)*(1-x^9)).

Offset 0, canonical program `A029247.P3576117638533204583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029247 (n : ℕ) : ℤ :=
  A029247.P3576117638533204583.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029252.P18007763040697263764

`A029151(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029252.P18007763040697263764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029151 n - a (n - 2)

end

end A029252.P18007763040697263764

noncomputable section

/-- A029252: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^6)*(1-x^8)).

Offset 0, canonical program `A029252.P18007763040697263764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029252 (n : ℕ) : ℤ :=
  A029252.P18007763040697263764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029253.P12350371559057343419

`A029152(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029253.P12350371559057343419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029152 n - a (n - 2)

end

end A029253.P12350371559057343419

noncomputable section

/-- A029253: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^6)*(1-x^9)).

Offset 0, canonical program `A029253.P12350371559057343419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029253 (n : ℕ) : ℤ :=
  A029253.P12350371559057343419.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029265.P2324824630409492359

`A029164(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029265.P2324824630409492359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029164 n - a (n - 2)

end

end A029265.P2324824630409492359

noncomputable section

/-- A029265: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029265.P2324824630409492359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029265 (n : ℕ) : ℤ :=
  A029265.P2324824630409492359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029270.P14159109481119659441

`A029169(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029270.P14159109481119659441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029169 n - a (n - 2)

end

end A029270.P14159109481119659441

noncomputable section

/-- A029270: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029270.P14159109481119659441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029270 (n : ℕ) : ℤ :=
  A029270.P14159109481119659441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029297.P14716766731016212801

`A025902(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029297.P14716766731016212801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025902 n + a (n - 3)

end

end A029297.P14716766731016212801

noncomputable section

/-- A029297: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029297.P14716766731016212801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029297 (n : ℕ) : ℤ :=
  A029297.P14716766731016212801.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029300.P14221668752805489008

`A025853(n)+A029155(n)-A029164(n)`
-/

namespace A029300.P14221668752805489008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 n + (A029155 n - A029164 n)

end

end A029300.P14221668752805489008

noncomputable section

/-- A029300: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029300.P14221668752805489008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029300 (n : ℕ) : ℤ :=
  A029300.P14221668752805489008.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029302.P7773887882283839256

`A025905(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029302.P7773887882283839256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025905 n + a (n - 3)

end

end A029302.P7773887882283839256

noncomputable section

/-- A029302: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029302.P7773887882283839256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029302 (n : ℕ) : ℤ :=
  A029302.P7773887882283839256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029330.P667323074417046602

`A029197(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029330.P667323074417046602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029197 n - a (n - 2)

end

end A029330.P667323074417046602

noncomputable section

/-- A029330: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^6)*(1-x^11)).

Offset 0, canonical program `A029330.P667323074417046602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029330 (n : ℕ) : ℤ :=
  A029330.P667323074417046602.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029332.P5866904758425921540

`A029199(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029332.P5866904758425921540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029199 n - a (n - 2)

end

end A029332.P5866904758425921540

noncomputable section

/-- A029332: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^7)*(1-x^8)).

Offset 0, canonical program `A029332.P5866904758425921540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029332 (n : ℕ) : ℤ :=
  A029332.P5866904758425921540.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029340.P5110672663290039049

`A029207(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029340.P5110672663290039049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029207 n - a (n - 2)

end

end A029340.P5110672663290039049

noncomputable section

/-- A029340: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029340.P5110672663290039049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029340 (n : ℕ) : ℤ :=
  A029340.P5110672663290039049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029343.P15602731285430216918

`A029210(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029343.P15602731285430216918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029210 n - a (n - 2)

end

end A029343.P15602731285430216918

noncomputable section

/-- A029343: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029343.P15602731285430216918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029343 (n : ℕ) : ℤ :=
  A029343.P15602731285430216918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029347.P16692074911667362737

`A029214(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029347.P16692074911667362737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029214 n - a (n - 2)

end

end A029347.P16692074911667362737

noncomputable section

/-- A029347: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^7)*(1-x^8)).

Offset 0, canonical program `A029347.P16692074911667362737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029347 (n : ℕ) : ℤ :=
  A029347.P16692074911667362737.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029349.P3958036498362969889

`A029216(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029349.P3958036498362969889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029216 n - a (n - 2)

end

end A029349.P3958036498362969889

noncomputable section

/-- A029349: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^7)*(1-x^10)).

Offset 0, canonical program `A029349.P3958036498362969889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029349 (n : ℕ) : ℤ :=
  A029349.P3958036498362969889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029362.P11804372412846034763

`A029229(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029362.P11804372412846034763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029229 n - a (n - 2)

end

end A029362.P11804372412846034763

noncomputable section

/-- A029362: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029362.P11804372412846034763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029362 (n : ℕ) : ℤ :=
  A029362.P11804372412846034763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029384.P5607878437325388803

`A029283(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029384.P5607878437325388803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029283 n - a (n - 3)

end

end A029384.P5607878437325388803

noncomputable section

/-- A029384: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^8)*(1-x^10)).

Offset 0, canonical program `A029384.P5607878437325388803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029384 (n : ℕ) : ℤ :=
  A029384.P5607878437325388803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029387.P14372817239229268115

`A029286(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029387.P14372817239229268115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029286 n - a (n - 3)

end

end A029387.P14372817239229268115

noncomputable section

/-- A029387: Expansion of g.f. 1/((1 - x^5)*(1 - x^6)*(1 - x^9)*(1 - x^10)).

Offset 0, canonical program `A029387.P14372817239229268115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029387 (n : ℕ) : ℤ :=
  A029387.P14372817239229268115.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029396.P16962163078031394161

`A029207(n+5)-A029229(n+5)`
-/

namespace A029396.P16962163078031394161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029207 (n + 5) - A029229 (n + 5)

end

end A029396.P16962163078031394161

noncomputable section

/-- A029396: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029396.P16962163078031394161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A029396 (n : ℕ) : ℤ :=
  A029396.P16962163078031394161.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A029396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029414.P9882378605437634280

`A029307(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029414.P9882378605437634280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029307 n - a (n - 3)

end

end A029414.P9882378605437634280

noncomputable section

/-- A029414: Expansion of 1/((1-x^6)(1-x^7)(1-x^8)(1-x^10)).

Offset 0, canonical program `A029414.P9882378605437634280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029414 (n : ℕ) : ℤ :=
  A029414.P9882378605437634280.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029423.P3269653636500518624

`A029316(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029423.P3269653636500518624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029316 n - a (n - 3)

end

end A029423.P3269653636500518624

noncomputable section

/-- A029423: Expansion of 1/((1-x^6)(1-x^8)(1-x^9)(1-x^10)).

Offset 0, canonical program `A029423.P3269653636500518624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029423 (n : ℕ) : ℤ :=
  A029423.P3269653636500518624.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029887.P13365086827215929725

`4*a(n-1)+A000531(n+1)` with `a(0)=1`
-/

namespace A029887.P13365086827215929725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + A000531 (n + 1)

end

end A029887.P13365086827215929725

noncomputable section

/-- A029887: A sum over scaled A000531 related to Catalan numbers C(n).

Offset 0, canonical program `A029887.P13365086827215929725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000531, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A029887 (n : ℕ) : ℤ :=
  A029887.P13365086827215929725.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000531, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A029887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A030130.P14159575509811306268

`xor(A010054(n), A081118(n+1))`
-/

namespace A030130.P14159575509811306268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010054 n) (A081118 (n + 1))

end

end A030130.P14159575509811306268

noncomputable section

/-- A030130: Binary expansion contains a single 0.

Offset 1, canonical program `A030130.P14159575509811306268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030130 (n : ℕ) : ℤ :=
  A030130.P14159575509811306268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031451.P5833261908256610895

`eq[2, A124754(A003188(n))-2]`
-/

namespace A031451.P5833261908256610895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A003188 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031451.P5833261908256610895

noncomputable section

/-- A031451: Numbers whose base-2 representation has 4 fewer 0's than 1's.

Offset 1, canonical program `A031451.P5833261908256610895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1728 terms. -/
def A031451 (n : ℕ) : ℤ :=
  (A031451.P5833261908256610895.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1728 terms. -/
def A031451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031970.P16426183550128537138

`A000531(n+1)-A026023(2*n)`
-/

namespace A031970.P16426183550128537138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000531 (n + 1) - A026023 (2 * n)

end

end A031970.P16426183550128537138

noncomputable section

/-- A031970: Tennis ball problem: Balls 1 and 2 are thrown into a room; you throw one on lawn; then balls 3 and 4 are thrown in and you throw any of the 3 balls onto the lawn; then balls 5 and 6 are thrown in and you throw one of the 4 balls onto the lawn; after n turns, consider all possible collections on lawn and add all the values.

Offset 0, canonical program `A031970.P16426183550128537138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A031970 (n : ℕ) : ℤ :=
  A031970.P16426183550128537138.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A031970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035041.P5013102862860512790

`A000079(n)-A008861(n)`
-/

namespace A035041.P5013102862860512790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A008861 n

end

end A035041.P5013102862860512790

noncomputable section

/-- A035041: a(n) = 2^n - C(n,0) - C(n,1) - ... - C(n,8).

Offset 0, canonical program `A035041.P5013102862860512790`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035041 (n : ℕ) : ℤ :=
  A035041.P5013102862860512790.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035041.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035488.P7581911865808934078

`A007067(A035487(n+1))`
-/

namespace A035488.P7581911865808934078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A035487 (n + 1)).toNat

end

end A035488.P7581911865808934078

noncomputable section

/-- A035488: 3rd column of Stolarsky array.

Offset 0, canonical program `A035488.P7581911865808934078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035488 (n : ℕ) : ℤ :=
  A035488.P7581911865808934078.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035488.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035511.P16503924714337673631

`A004957(A035510(n))+1`
-/

namespace A035511.P16503924714337673631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A035510 n).toNat + 1

end

end A035511.P16503924714337673631

noncomputable section

/-- A035511: 3rd column of Inverse Stolarsky array.

Offset 0, canonical program `A035511.P16503924714337673631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A035511 (n : ℕ) : ℤ :=
  A035511.P16503924714337673631.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A035511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035746.P11342363624555630469

`A008418(2*n)`
-/

namespace A035746.P11342363624555630469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008418 (2 * n)

end

end A035746.P11342363624555630469

noncomputable section

/-- A035746: Coordination sequence for C_9 lattice.

Offset 0, canonical program `A035746.P11342363624555630469`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008418, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035746 (n : ℕ) : ℤ :=
  A035746.P11342363624555630469.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008418, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036578.P17041184954175712032

`A005679(n+1)-1`
-/

namespace A036578.P17041184954175712032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005679 (n + 1) - 1

end

end A036578.P17041184954175712032

noncomputable section

/-- A036578: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

Offset 0, canonical program `A036578.P17041184954175712032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036578 (n : ℕ) : ℤ :=
  A036578.P17041184954175712032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038470.P16485816997203529762

`A059268(n)²+A140513(n)²`
-/

namespace A038470.P16485816997203529762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 + A140513 n ^ 2

end

end A038470.P16485816997203529762

noncomputable section

/-- A038470: Sums of 2 distinct powers of 4.

Offset 1, canonical program `A038470.P16485816997203529762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038470 (n : ℕ) : ℤ :=
  A038470.P16485816997203529762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038474.P669043294200865699

`A055237(A007401(n+1))`
-/

namespace A038474.P669043294200865699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 (A007401 (n + 1)).toNat

end

end A038474.P669043294200865699

noncomputable section

/-- A038474: Sums of two distinct powers of 5.

Offset 1, canonical program `A038474.P669043294200865699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A038474 (n : ℕ) : ℤ :=
  A038474.P669043294200865699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A038474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038478.P5368968624079595123

`A055257(A007401(n+1))`
-/

namespace A038478.P5368968624079595123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055257 (A007401 (n + 1)).toNat

end

end A038478.P5368968624079595123

noncomputable section

/-- A038478: Sums of 2 distinct powers of 6.

Offset 1, canonical program `A038478.P5368968624079595123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. -/
def A038478 (n : ℕ) : ℤ :=
  A038478.P5368968624079595123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. -/
def A038478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038481.P1610050288320443512

`lcm(2, A055258(A007401(n+1)))`
-/

namespace A038481.P1610050288320443512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A055258 (A007401 (n + 1)).toNat)

end

end A038481.P1610050288320443512

noncomputable section

/-- A038481: Sums of 2 distinct powers of 7.

Offset 0, canonical program `A038481.P1610050288320443512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7021 terms. -/
def A038481 (n : ℕ) : ℤ :=
  (A038481.P1610050288320443512.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7021 terms. -/
def A038481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038484.P6088182014072777916

`A055259(A007401(n+1))`
-/

namespace A038484.P6088182014072777916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055259 (A007401 (n + 1)).toNat

end

end A038484.P6088182014072777916

noncomputable section

/-- A038484: Sums of 2 distinct powers of 8.

Offset 1, canonical program `A038484.P6088182014072777916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. -/
def A038484 (n : ℕ) : ℤ :=
  A038484.P6088182014072777916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. -/
def A038484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038743.P9627818471373104012

`∑[A038735(n+6)]`
-/

namespace A038743.P9627818471373104012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038735 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038743.P9627818471373104012

noncomputable section

/-- A038743: T(n,n-6), array T as in A038738.

Offset 6, canonical program `A038743.P9627818471373104012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A038743 (n : ℕ) : ℤ :=
  A038743.P9627818471373104012.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A038743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038806.P49319047568479767

`A002697(n+1)-A000531(n+1)`
-/

namespace A038806.P49319047568479767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) - A000531 (n + 1)

end

end A038806.P49319047568479767

noncomputable section

/-- A038806: Convolution of A008549 with A000302 (powers of 4).

Offset 0, canonical program `A038806.P49319047568479767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A038806 (n : ℕ) : ℤ :=
  A038806.P49319047568479767.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A038806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038994.P9699052350017523539

`∑{d}[n+1, #*A038993(#)]`
-/

namespace A038994.P9699052350017523539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038993 d

end

end A038994.P9699052350017523539

noncomputable section

/-- A038994: Number of sublattices of index n in generic 7-dimensional lattice.

Offset 1, canonical program `A038994.P9699052350017523539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038994 (n : ℕ) : ℤ :=
  A038994.P9699052350017523539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039000.P9830512540759238437

`eq[A007814(A006047(n)), A077267(n)]`
-/

namespace A039000.P9830512540759238437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006047 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039000.P9830512540759238437

noncomputable section

/-- A039000: Numbers whose base-3 representation has the same number of 0's and 1's.

Offset 1, canonical program `A039000.P9830512540759238437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1730 terms. -/
def A039000 (n : ℕ) : ℤ :=
  (A039000.P9830512540759238437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1730 terms. -/
def A039000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041682.P14233085707334064769

`A041066(n)*A276391(n²+2)`
-/

namespace A041682.P14233085707334064769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041066 n * A276391 (n ^ 2 + 2)

end

end A041682.P14233085707334064769

noncomputable section

/-- A041682: Numerators of continued fraction convergents to sqrt(360).

Offset 0, canonical program `A041682.P14233085707334064769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A041682 (n : ℕ) : ℤ :=
  A041682.P14233085707334064769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A041682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043569.P15388862397033280106

`1+A081118(n+1)`
-/

namespace A043569.P15388862397033280106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A081118 (n + 1)

end

end A043569.P15388862397033280106

noncomputable section

/-- A043569: Numbers whose base-2 representation has exactly 2 runs.

Offset 1, canonical program `A043569.P15388862397033280106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043569 (n : ℕ) : ℤ :=
  A043569.P15388862397033280106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043742.P8132510292686517253

`eq[gcd(2, n)², A037800(n)]`
-/

namespace A043742.P8132510292686517253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043742.P8132510292686517253

noncomputable section

/-- A043742: Numbers whose number of runs in the base-2 representation is congruent to 3 mod 7.

Offset 1, canonical program `A043742.P8132510292686517253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 739 terms. -/
def A043742 (n : ℕ) : ℤ :=
  (A043742.P8132510292686517253.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 739 terms. -/
def A043742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045038.P652347557463449643

`∩[A023705(n+1), A023714(n+1)]`
-/

namespace A045038.P652347557463449643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045038.P652347557463449643

noncomputable section

/-- A045038: Numbers whose base-4 representation contains no 0's and exactly one 2.

Offset 1, canonical program `A045038.P652347557463449643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1159 terms. -/
def A045038 (n : ℕ) : ℤ :=
  (A045038.P652347557463449643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1159 terms. -/
def A045038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045039.P3937333405223488659

`∩[A023705(n+1), A023715(n+1)]`
-/

namespace A045039.P3937333405223488659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045039.P3937333405223488659

noncomputable section

/-- A045039: Numbers whose base-4 representation contains no 0's and exactly two 2's.

Offset 1, canonical program `A045039.P3937333405223488659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1615 terms. -/
def A045039 (n : ℕ) : ℤ :=
  (A045039.P3937333405223488659.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1615 terms. -/
def A045039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045063.P8683003106930919168

`∩[A023705(n+1), A031467(n+1)]`
-/

namespace A045063.P8683003106930919168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045063.P8683003106930919168

noncomputable section

/-- A045063: Numbers whose base-4 representation contains no 0's and exactly two 3's.

Offset 1, canonical program `A045063.P8683003106930919168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A045063 (n : ℕ) : ℤ :=
  (A045063.P8683003106930919168.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A045063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045720.P7296829623799460313

`A029760(n+1)-A000531(n+2)`
-/

namespace A045720.P7296829623799460313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029760 (n + 1) - A000531 (n + 2)

end

end A045720.P7296829623799460313

noncomputable section

/-- A045720: 3-fold convolution of A001700(n), n >= 0.

Offset 0, canonical program `A045720.P7296829623799460313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A045720 (n : ℕ) : ℤ :=
  A045720.P7296829623799460313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A045720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046688.P903510788573287376

`floor(A059268(n)/2)*A025581(n)+1`
-/

namespace A046688.P903510788573287376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059268 n : ℚ) / 2⌋ * A025581 n + 1

end

end A046688.P903510788573287376

noncomputable section

/-- A046688: Antidiagonals of square array in which k-th row (k>0) is an arithmetic progression of difference 2^(k-1).

Offset 0, canonical program `A046688.P903510788573287376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046688 (n : ℕ) : ℤ :=
  A046688.P903510788573287376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047009.P16609204866922919021

`A006013(n)-A030983(A028310(n)+2)`
-/

namespace A047009.P16609204866922919021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n - A030983 (A028310 n + 2).toNat

end

end A047009.P16609204866922919021

noncomputable section

/-- A047009: T(2n,n), array T given by A047000.

Offset 0, canonical program `A047009.P16609204866922919021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A047009 (n : ℕ) : ℤ :=
  A047009.P16609204866922919021.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A047009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047664.P16577422671529071248

`floor((A008416(n+1)-A001849(n))/2)`
-/

namespace A047664.P16577422671529071248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008416 (n + 1) - A001849 n : ℚ) / 2⌋

end

end A047664.P16577422671529071248

noncomputable section

/-- A047664: Row 7 of square array defined in A047662.

Offset 1, canonical program `A047664.P16577422671529071248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047664 (n : ℕ) : ℤ :=
  A047664.P16577422671529071248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047969.P4601451156096870100

`A051128(n+1)-A003992(∑[A035214(n)])`
-/

namespace A047969.P4601451156096870100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A003992 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047969.P4601451156096870100

noncomputable section

/-- A047969: Square array of nexus numbers a(n,k) = (n+1)^(k+1) - n^(k+1) (n >= 0, k >= 0) read by upwards antidiagonals.

Offset 0, canonical program `A047969.P4601451156096870100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4629 terms. -/
def A047969 (n : ℕ) : ℤ :=
  A047969.P4601451156096870100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4629 terms. -/
def A047969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048483.P2760044418831201233

`A209274(n+1)-A000096(A002262(n))`
-/

namespace A048483.P2760044418831201233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209274 (n + 1) - A000096 (A002262 n).toNat

end

end A048483.P2760044418831201233

noncomputable section

/-- A048483: Array read by antidiagonals: T(k,n) = (k+1)2^n - k.

Offset 0, canonical program `A048483.P2760044418831201233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048483 (n : ℕ) : ℤ :=
  A048483.P2760044418831201233.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049207.P6650206018968943836

`A003991(n+1)*A004247(n)`
-/

namespace A049207.P6650206018968943836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A004247 n

end

end A049207.P6650206018968943836

noncomputable section

/-- A049207: Array T(m,n) of products of pronic numbers m(m+1) * n(n+1) read by antidiagonals ("bipronics").

Offset 0, canonical program `A049207.P6650206018968943836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049207 (n : ℕ) : ℤ :=
  A049207.P6650206018968943836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049502.P5742727287573319742

`A037800(n)+a(A004526(n))` with `a(0)=0`
-/

namespace A049502.P5742727287573319742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A037800 n + a (A004526 n).toNat

end

end A049502.P5742727287573319742

noncomputable section

/-- A049502: Major index of n, 2nd definition.

Offset 0, canonical program `A049502.P5742727287573319742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049502 (n : ℕ) : ℤ :=
  A049502.P5742727287573319742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049769.P17302331817740986793

`A049761(n+1)+A048154(n+1)`
-/

namespace A049769.P17302331817740986793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049761 (n + 1) + A048154 (n + 1)

end

end A049769.P17302331817740986793

noncomputable section

/-- A049769: Triangular array T read by rows: T(n,k) = (k^3 mod n) + (n^3 mod k).

Offset 1, canonical program `A049769.P17302331817740986793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049769 (n : ℕ) : ℤ :=
  A049769.P17302331817740986793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049800.P18074426978579297374

`A003057(n+2)%A008619(A002262(n))`
-/

namespace A049800.P18074426978579297374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003057 (n + 2)) (A008619 (A002262 n).toNat)

end

end A049800.P18074426978579297374

noncomputable section

/-- A049800: Triangular array T, read by rows: T(n,k) = (n+1) mod floor((k+1)/2), k = 1..n and n >= 1.

Offset 1, canonical program `A049800.P18074426978579297374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049800 (n : ℕ) : ℤ :=
  A049800.P18074426978579297374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051129.P11110600296711223731

`A002260(n+1)*A009998(n)`
-/

namespace A051129.P11110600296711223731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A009998 n

end

end A051129.P11110600296711223731

noncomputable section

/-- A051129: Table T(n,k) = k^n read by upwards antidiagonals (n >= 1, k >= 1).

Offset 1, canonical program `A051129.P11110600296711223731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4579 terms. -/
def A051129 (n : ℕ) : ℤ :=
  A051129.P11110600296711223731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4579 terms. -/
def A051129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051340.P9797629751904134838

`2-Δ[A094727(n+1)]`
-/

namespace A051340.P9797629751904134838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A051340.P9797629751904134838

noncomputable section

/-- A051340: A simple 2-dimensional array, read by antidiagonals: T[i,j] = 1 for j>0, T[i,0] = i+1; i,j = 0,1,2,3,...

Offset 0, canonical program `A051340.P9797629751904134838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051340 (n : ℕ) : ℤ :=
  A051340.P9797629751904134838.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053398.P10674164959808445662

`A007814(A003986(n)+1)`
-/

namespace A053398.P10674164959808445662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003986 n + 1).toNat

end

end A053398.P10674164959808445662

noncomputable section

/-- A053398: Nim-values from game of Kopper's Nim.

Offset 1, canonical program `A053398.P10674164959808445662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053398 (n : ℕ) : ℤ :=
  A053398.P10674164959808445662.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053398.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053616.P15730649175569513944

`val(2*A036561(n), 6)`
-/

namespace A053616.P15730649175569513944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * A036561 n).toNat 6

end

end A053616.P15730649175569513944

noncomputable section

/-- A053616: Pyramidal sequence: distance to nearest triangular number.

Offset 0, canonical program `A053616.P15730649175569513944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053616 (n : ℕ) : ℤ :=
  (A053616.P15730649175569513944.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054582.P5354780868819048885

`(A094727(n+1)-A025581(n))*A000079(A025581(n))`
-/

namespace A054582.P5354780868819048885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094727 (n + 1) - A025581 n) * A000079 (A025581 n).toNat

end

end A054582.P5354780868819048885

noncomputable section

/-- A054582: Array read by antidiagonals upwards: A(m,k) = 2^m * (2k+1), m,k >= 0.

Offset 0, canonical program `A054582.P5354780868819048885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054582 (n : ℕ) : ℤ :=
  A054582.P5354780868819048885.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056537.P3331014331152516535

`A002620(A094727(n+1))+A002260(n+1)`
-/

namespace A056537.P3331014331152516535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A094727 (n + 1)).toNat + A002260 (n + 1)

end

end A056537.P3331014331152516535

noncomputable section

/-- A056537: Mapping from the column-by-column reading to the half-antidiagonal reading of the triangular tables. Inverse of A056536.

Offset 1, canonical program `A056537.P3331014331152516535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056537 (n : ℕ) : ℤ :=
  A056537.P3331014331152516535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056973.P2472894412411641272

`A014081(A035327(n+1))`
-/

namespace A056973.P2472894412411641272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A035327 (n + 1)).toNat

end

end A056973.P2472894412411641272

noncomputable section

/-- A056973: Number of blocks of {0,0} in the binary expansion of n.

Offset 1, canonical program `A056973.P2472894412411641272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056973 (n : ℕ) : ℤ :=
  A056973.P2472894412411641272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056980.P3532527099701014271

`A033264(and(n, 2*(n+1))+1)`
-/

namespace A056980.P3532527099701014271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (Nat.land n (2 * (n + 1)) + 1)

end

end A056980.P3532527099701014271

noncomputable section

/-- A056980: Number of blocks of {1, 1, 0} in binary expansion of n.

Offset 1, canonical program `A056980.P3532527099701014271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056980 (n : ℕ) : ℤ :=
  A056980.P3532527099701014271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057037.P2208960147265636780

`val(A036561(2*n), 2)+1`
-/

namespace A057037.P2208960147265636780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 (2 * n)).toNat 2 + 1

end

end A057037.P2208960147265636780

noncomputable section

/-- A057037: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057037(n)=j(2n-1).

Offset 1, canonical program `A057037.P2208960147265636780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057037 (n : ℕ) : ℤ :=
  (A057037.P2208960147265636780.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057039.P10812322326582328204

`val(A036561(2*n+1), 2)+1`
-/

namespace A057039.P10812322326582328204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 (2 * n + 1)).toNat 2 + 1

end

end A057039.P10812322326582328204

noncomputable section

/-- A057039: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057039(n)=j(2n).

Offset 1, canonical program `A057039.P10812322326582328204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057039 (n : ℕ) : ℤ :=
  (A057039.P10812322326582328204.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057075.P15161166367962018706

`floor(A033918(n+1)/A004736(n+1))`
-/

namespace A057075.P15161166367962018706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033918 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)⌋

end

end A057075.P15161166367962018706

noncomputable section

/-- A057075: Table read by antidiagonals of T(n,k)=floor(n^n/k) with n,k >= 1.

Offset 1, canonical program `A057075.P15161166367962018706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A057075 (n : ℕ) : ℤ :=
  A057075.P15161166367962018706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A057075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057554.P2016188426634242539

`val(A036561(floor(n/2)), gcd(2, n)+1)`
-/

namespace A057554.P2016188426634242539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 ⌊(n : ℚ) / 2⌋.toNat).toNat (Nat.gcd 2 n + 1)

end

end A057554.P2016188426634242539

noncomputable section

/-- A057554: Lexicographic ordering of MxM, where M={0,1,2,...}.

Offset 1, canonical program `A057554.P2016188426634242539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057554 (n : ℕ) : ℤ :=
  (A057554.P2016188426634242539.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057728.P7080586031202781253

`A059268(A056943(n))`
-/

namespace A057728.P7080586031202781253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A056943 n).toNat

end

end A057728.P7080586031202781253

noncomputable section

/-- A057728: A triangular table of decreasing powers of two (with first column all ones).

Offset 1, canonical program `A057728.P7080586031202781253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057728 (n : ℕ) : ℤ :=
  A057728.P7080586031202781253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059036.P10984433159116004346

`A003991(n+1)-1`
-/

namespace A059036.P10984433159116004346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - 1

end

end A059036.P10984433159116004346

noncomputable section

/-- A059036: In a triangle of numbers (such as that in A059032, A059033, A059034) how many entries lie above position (n,k)? Answer: T(n,k) = (n+1)*(k+1)-1 (n >= 0, k >= 0).

Offset 0, canonical program `A059036.P10984433159116004346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059036 (n : ℕ) : ℤ :=
  A059036.P10984433159116004346.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059126.P15563603059737863123

`A131534(n)+2*A007814(A008620(n))`
-/

namespace A059126.P15563603059737863123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 n + 2 * A007814 (A008620 n).toNat

end

end A059126.P15563603059737863123

noncomputable section

/-- A059126: A hierarchical sequence (W2{2} according to the description in the attached file - see link).

Offset 0, canonical program `A059126.P15563603059737863123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059126 (n : ℕ) : ℤ :=
  A059126.P15563603059737863123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059779.P4415360293391952996

`A058071(n)-A152163(A002024(n+1))`
-/

namespace A059779.P4415360293391952996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n - A152163 (A002024 (n + 1)).toNat

end

end A059779.P4415360293391952996

noncomputable section

/-- A059779: A Lucas triangle: T(m,n), m >= n >= 0.

Offset 0, canonical program `A059779.P4415360293391952996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059779 (n : ℕ) : ℤ :=
  A059779.P4415360293391952996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060036.P2831409132372639337

`A055461(n+1)%A003057(n+2)`
-/

namespace A060036.P2831409132372639337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055461 (n + 1)) (A003057 (n + 2))

end

end A060036.P2831409132372639337

noncomputable section

/-- A060036: Triangular array T read by rows: T(n,k) = k^2 mod n, for k = 1,2,...,n-1, n = 2,3,...

Offset 2, canonical program `A060036.P2831409132372639337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060036 (n : ℕ) : ℤ :=
  A060036.P2831409132372639337.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060510.P11373370070759543181

`1-A376583(n+1)`
-/

namespace A060510.P11373370070759543181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A376583 (n + 1)

end

end A060510.P11373370070759543181

noncomputable section

/-- A060510: Alternating with hexagonal stutters: if n is hexagonal (2k^2 - k, i.e., A000384) then a(n)=a(n-1), otherwise a(n) = 1 - a(n-1).

Offset 0, canonical program `A060510.P11373370070759543181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060510 (n : ℕ) : ℤ :=
  A060510.P11373370070759543181.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060539.P15345650391431450457

`C(A003991(n+1), A004736(n+1))`
-/

namespace A060539.P15345650391431450457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003991 (n + 1)).toNat (A004736 (n + 1)).toNat

end

end A060539.P15345650391431450457

noncomputable section

/-- A060539: Table by antidiagonals of number of ways of choosing k items from n*k.

Offset 1, canonical program `A060539.P15345650391431450457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2938 terms. -/
def A060539 (n : ℕ) : ℤ :=
  (A060539.P15345650391431450457.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2938 terms. -/
def A060539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061911.P12840697510039333381

`sqrt(A004159(A061910(n+1)))`
-/

namespace A061911.P12840697510039333381
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A004159 (A061910 (n + 1)).toNat : ℝ)

end

end A061911.P12840697510039333381

noncomputable section

/-- A061911: Square root of the sum of the digits of k^2 when this sum is a square.

Offset 1, canonical program `A061911.P12840697510039333381`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061910, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061911 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061911.P12840697510039333381.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061910, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061911.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062020.P9046966785404640960

`∑[∑[n*A054541(n+1)]]`
-/

namespace A062020.P9046966785404640960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062020.P9046966785404640960

noncomputable section

/-- A062020: a(n) = Sum_{i=1..n} Sum_{j=1..i} (prime(i) - prime(j)).

Offset 1, canonical program `A062020.P9046966785404640960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062020 (n : ℕ) : ℤ :=
  A062020.P9046966785404640960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062099.P2797821682979061663

`record[A000217(n)/A059268(A004157(n))]`
-/

namespace A062099.P2797821682979061663
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n : ℚ) / (A059268 (A004157 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062099.P2797821682979061663

noncomputable section

/-- A062099: Triangular numbers whose sum of digits is a triangular number.

Offset 1, canonical program `A062099.P2797821682979061663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3183 terms. -/
def A062099 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062099.P2797821682979061663.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3183 terms. -/
def A062099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062172.P4489819024102910936

`A009998(n)%A004736(n+1)`
-/

namespace A062172.P4489819024102910936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009998 n) (A004736 (n + 1))

end

end A062172.P4489819024102910936

noncomputable section

/-- A062172: Table T(n,k) by antidiagonals of n^(k-1) mod k [n,k > 0].

Offset 1, canonical program `A062172.P4489819024102910936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4675 terms. -/
def A062172 (n : ℕ) : ℤ :=
  A062172.P4489819024102910936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4675 terms. -/
def A062172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063929.P8531949189101213059

`A055461(n+1)+A003991(n+1)`
-/

namespace A063929.P8531949189101213059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + A003991 (n + 1)

end

end A063929.P8531949189101213059

noncomputable section

/-- A063929: Radius of A-excircle of Pythagorean triangle with a = (n+1)^2 - m^2, b = 2*(n+1)*m and c = (n+1)^2 + m^2.

Offset 1, canonical program `A063929.P8531949189101213059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063929 (n : ℕ) : ℤ :=
  A063929.P8531949189101213059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064894.P11778441932188558359

`gcd(-a(and(n, n-1)), A007814(n))` with `a(0)=0`
-/

namespace A064894.P11778441932188558359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (-(a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℤ)) (A007814 n)

end

end A064894.P11778441932188558359

noncomputable section

/-- A064894: Binary dilution of n. GCD of exponents in binary expansion of n.

Offset 0, canonical program `A064894.P11778441932188558359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064894 (n : ℕ) : ℤ :=
  (A064894.P11778441932188558359.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065005.P15636327632005820464

`A063656(lt[1, A004199(n+1)])`
-/

namespace A065005.P15636327632005820464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A065005.P15636327632005820464

noncomputable section

/-- A065005: Integers for which the periodic part of the continued fraction for the square root of n begins with 2.

Offset 1, canonical program `A065005.P15636327632005820464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3326 terms. -/
def A065005 (n : ℕ) : ℤ :=
  A065005.P15636327632005820464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3326 terms. -/
def A065005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065049.P15235296619337629108

`p?[A026498(n)²*A007310(n+1)]`
-/

namespace A065049.P15235296619337629108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026498 n ^ 2 * A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065049.P15235296619337629108

noncomputable section

/-- A065049: Odd primes of incorrect parity: number of 1's in the binary representation of n (mod 2) == 1 - (n mod 3) (mod 2). Also called isolated primes.

Offset 1, canonical program `A065049.P15235296619337629108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1322 terms. -/
def A065049 (n : ℕ) : ℤ :=
  A065049.P15235296619337629108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1322 terms. -/
def A065049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065334.P13791881819872043413

`A007814(n+1)*A065333(n+1)`
-/

namespace A065334.P13791881819872043413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) * A065333 (n + 1)

end

end A065334.P13791881819872043413

noncomputable section

/-- A065334: 2-exponents to represent 3-smooth numbers (A065332).

Offset 1, canonical program `A065334.P13791881819872043413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065334 (n : ℕ) : ℤ :=
  A065334.P13791881819872043413.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065334.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065342.P17350315595011203306

`A037126(n+1)+A005145(n+1)`
-/

namespace A065342.P17350315595011203306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) + A005145 (n + 1)

end

end A065342.P17350315595011203306

noncomputable section

/-- A065342: Triangle of sum of two primes: prime(n)+prime(k) with n >= k >= 1.

Offset 1, canonical program `A065342.P17350315595011203306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065342 (n : ℕ) : ℤ :=
  A065342.P17350315595011203306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066846.P13614351158377627118

`A033918(n+1)+A000312(A002024(n+1))`
-/

namespace A066846.P13614351158377627118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (n + 1) + A000312 (A002024 (n + 1)).toNat

end

end A066846.P13614351158377627118

noncomputable section

/-- A066846: Numbers of the form a^a + b^b, a >= b > 0.

Offset 0, canonical program `A066846.P13614351158377627118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A066846 (n : ℕ) : ℤ :=
  A066846.P13614351158377627118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A066846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067983.P15812095397657080195

`A067982(n)+A067981(n)`
-/

namespace A067983.P15812095397657080195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067982 n + A067981 n

end

end A067983.P15812095397657080195

noncomputable section

/-- A067983: Convolution of L(n+1) := A000204(n+1) (Lucas), n>=0, with L(n+5), n>=0.

Offset 0, canonical program `A067983.P15812095397657080195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. -/
def A067983 (n : ℕ) : ℤ :=
  A067983.P15812095397657080195.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. -/
def A067983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068607.P15495189093574102071

`A002262(n)*A094727(n+1)*A003056(n)`
-/

namespace A068607.P15495189093574102071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A094727 (n + 1) * A003056 n

end

end A068607.P15495189093574102071

noncomputable section

/-- A068607: Triangle of T(n,k)=n*k*(n+k+1) with n>=k>=0.

Offset 0, canonical program `A068607.P15495189093574102071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068607 (n : ℕ) : ℤ :=
  A068607.P15495189093574102071.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070216.P4883478267033686530

`A069011(n)+2*A094727(n+1)`
-/

namespace A070216.P4883478267033686530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n + 2 * A094727 (n + 1)

end

end A070216.P4883478267033686530

noncomputable section

/-- A070216: Triangle T(n, k) = n^2 + k^2, 1 <= k <= n, read by rows.

Offset 1, canonical program `A070216.P4883478267033686530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070216 (n : ℕ) : ℤ :=
  A070216.P4883478267033686530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071211.P11427669464011798194

`A003057(n+2)^A025581(n)*A058127(n+1)`
-/

namespace A071211.P11427669464011798194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) : ℚ) ^ (A025581 n : ℤ) * (A058127 (n + 1) : ℚ)

end

end A071211.P11427669464011798194

noncomputable section

/-- A071211: Triangular array T(n,k) read by rows, giving number of labeled free trees such that the root is smaller than all its children, with respect to the number n of vertices and to the label k of the root.

Offset 1, canonical program `A071211.P11427669464011798194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A071211 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071211.P11427669464011798194.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A071211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071739.P1815555829644906627

`A071736(n)-A099376(n)`
-/

namespace A071739.P1815555829644906627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071736 n - A099376 n

end

end A071739.P1815555829644906627

noncomputable section

/-- A071739: Expansion of (1+x^3*C^4)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071739.P1815555829644906627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071739 (n : ℕ) : ℤ :=
  A071739.P1815555829644906627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071757.P8104647612587833424

`Δ[A071736(n)-A000245(n)]`
-/

namespace A071757.P8104647612587833424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071736 n - A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071757.P8104647612587833424

noncomputable section

/-- A071757: Expansion of (1+x^4*C^4)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071757.P8104647612587833424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071757 (n : ℕ) : ℤ :=
  A071757.P8104647612587833424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072114.P17969581037488263158

`∑[floor(A007814(∑{e}[n, #]+13)/4)]`
-/

namespace A072114.P17969581037488263158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007814 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 13) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072114.P17969581037488263158

noncomputable section

/-- A072114: Number of 3-almost primes (A014612) <= n.

Offset 0, canonical program `A072114.P17969581037488263158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072114 (n : ℕ) : ℤ :=
  A072114.P17969581037488263158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072580.P8091820374217646678

`A045319(A072577(n+1)-1)`
-/

namespace A072580.P8091820374217646678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A072577 (n + 1) - 1).toNat

end

end A072580.P8091820374217646678

noncomputable section

/-- A072580: a(n) = A000040(A072577(n)).

Offset 1, canonical program `A072580.P8091820374217646678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1456 terms. -/
def A072580 (n : ℕ) : ℤ :=
  A072580.P8091820374217646678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1456 terms. -/
def A072580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072582.P8651059492277123430

`A000040(A072579(n+1))`
-/

namespace A072582.P8651059492277123430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072579 (n + 1)).toNat

end

end A072582.P8651059492277123430

noncomputable section

/-- A072582: a(n) = A000040(A072579(n)).

Offset 1, canonical program `A072582.P8651059492277123430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1585 terms. -/
def A072582 (n : ℕ) : ℤ :=
  A072582.P8651059492277123430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1585 terms. -/
def A072582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072590.P657212093731123862

`A009998(n)*A009999(n)`
-/

namespace A072590.P657212093731123862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n * A009999 n

end

end A072590.P657212093731123862

noncomputable section

/-- A072590: Table T(n,k) giving number of spanning trees in complete bipartite graph K(n,k), read by antidiagonals.

Offset 1, canonical program `A072590.P657212093731123862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2239 terms. -/
def A072590 (n : ℕ) : ℤ :=
  A072590.P657212093731123862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2239 terms. -/
def A072590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073423.P1898494070578703706

`A055235(n)%3`
-/

namespace A073423.P1898494070578703706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055235 n) 3

end

end A073423.P1898494070578703706

noncomputable section

/-- A073423: Sums of two powers of zero: triangle read by rows: T(m,n) = 0^n + 0^m, n >= 0, m = 0..n.

Offset 0, canonical program `A073423.P1898494070578703706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073423 (n : ℕ) : ℤ :=
  A073423.P1898494070578703706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073737.P13520779730791414934

`A054541(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A073737.P13520779730791414934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A054541 n + a (n - 3)

end

end A073737.P13520779730791414934

noncomputable section

/-- A073737: Sums of three successive terms form the odd primes.

Offset 1, canonical program `A073737.P13520779730791414934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073737 (n : ℕ) : ℤ :=
  A073737.P13520779730791414934.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075302.P4171815956807541736

`A059268(n)*A099375(n)-1`
-/

namespace A075302.P4171815956807541736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A099375 n - 1

end

end A075302.P4171815956807541736

noncomputable section

/-- A075302: Transpose of array A075300.

Offset 0, canonical program `A075302.P4171815956807541736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075302 (n : ℕ) : ℤ :=
  A075302.P4171815956807541736.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075889.P5019387259858198594

`p?[A075888(n+3)]`
-/

namespace A075889.P5019387259858198594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075888 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075889.P5019387259858198594

noncomputable section

/-- A075889: Primes in A075888, as they appear.

Offset 1, canonical program `A075889.P5019387259858198594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 570 terms. -/
def A075889 (n : ℕ) : ℤ :=
  A075889.P5019387259858198594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 570 terms. -/
def A075889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076368.P2146344704707354385

`A054541(n+1)%(n+1)+1`
-/

namespace A076368.P2146344704707354385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054541 (n + 1)) (n + 1 : ℤ) + 1

end

end A076368.P2146344704707354385

noncomputable section

/-- A076368: a(1) = 1; for n > 1, a(n) = prime(n) - prime(n-1) + 1.

Offset 1, canonical program `A076368.P2146344704707354385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076368 (n : ℕ) : ℤ :=
  A076368.P2146344704707354385.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078391.P10422904294121243265

`A067804(n)/A003991(n+1)`
-/

namespace A078391.P10422904294121243265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067804 n : ℚ) / (A003991 (n + 1) : ℚ)

end

end A078391.P10422904294121243265

noncomputable section

/-- A078391: Triangle read by rows: T(n,k) = Catalan(k)*Catalan(n-k).

Offset 0, canonical program `A078391.P10422904294121243265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078391 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078391.P10422904294121243265.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078879.P5478567798652461310

`ceil(A048151(n+1)²/A002024(n+1))`
-/

namespace A078879.P5478567798652461310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048151 (n + 1) ^ 2 : ℚ) / (A002024 (n + 1) : ℚ)⌉

end

end A078879.P5478567798652461310

noncomputable section

/-- A078879: Triangle read by rows: T(n,k) = ceiling(k^2 / n), 0 < k < n and T(n,n) = 0.

Offset 1, canonical program `A078879.P5478567798652461310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078879 (n : ℕ) : ℤ :=
  A078879.P5478567798652461310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078916.P12018836333194892209

`∑[A054541(n+1)+2]`
-/

namespace A078916.P12018836333194892209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078916.P12018836333194892209

noncomputable section

/-- A078916: a(n) = prime(n) + 2*n.

Offset 1, canonical program `A078916.P12018836333194892209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078916 (n : ℕ) : ℤ :=
  A078916.P12018836333194892209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079950.P16372425283306993831

`A005145(n+1)%(2*A037126(n+1))`
-/

namespace A079950.P16372425283306993831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005145 (n + 1)) (2 * A037126 (n + 1))

end

end A079950.P16372425283306993831

noncomputable section

/-- A079950: Triangle of n-th prime modulo twice primes less n-th prime.

Offset 1, canonical program `A079950.P16372425283306993831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079950 (n : ℕ) : ℤ :=
  A079950.P16372425283306993831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080853.P4382216278735816275

`A000217(A077028(n))-A062707(n)`
-/

namespace A080853.P4382216278735816275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A077028 n).toNat - A062707 n

end

end A080853.P4382216278735816275

noncomputable section

/-- A080853: Square array of generalized polygonal numbers, read by antidiagonals.

Offset 0, canonical program `A080853.P4382216278735816275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080853 (n : ℕ) : ℤ :=
  A080853.P4382216278735816275.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081954.P14656292219438426636

`2*A036561(n)`
-/

namespace A081954.P14656292219438426636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036561 n

end

end A081954.P14656292219438426636

noncomputable section

/-- A081954: Triangle read by rows: T(n, k) = 2^(n-k)*3^k, n >= 1, 0 <= k < n.

Offset 1, canonical program `A081954.P14656292219438426636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081954 (n : ℕ) : ℤ :=
  A081954.P14656292219438426636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082037.P18394999940905367011

`A002262(n)!*A077028(n)`
-/

namespace A082037.P18394999940905367011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A077028 n

end

end A082037.P18394999940905367011

noncomputable section

/-- A082037: A square array of linear-factorial numbers, read by antidiagonals.

Offset 0, canonical program `A082037.P18394999940905367011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2554 terms. -/
def A082037 (n : ℕ) : ℤ :=
  A082037.P18394999940905367011.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2554 terms. -/
def A082037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082039.P1706200198396104013

`2*C(A077028(n), 2)+1`
-/

namespace A082039.P1706200198396104013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A077028 n).toNat 2 + 1

end

end A082039.P1706200198396104013

noncomputable section

/-- A082039: Symmetric square array defined by T(n,k) = k^2*n^2 + k*n + 1, read by antidiagonals.

Offset 0, canonical program `A082039.P1706200198396104013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082039 (n : ℕ) : ℤ :=
  (A082039.P1706200198396104013.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082043.P660603342059149024

`A077028(n)²`
-/

namespace A082043.P660603342059149024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n ^ 2

end

end A082043.P660603342059149024

noncomputable section

/-- A082043: Square array, A(n, k) = (k*n)^2 + 2*k*n + 1, read by antidiagonals.

Offset 0, canonical program `A082043.P660603342059149024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082043 (n : ℕ) : ℤ :=
  A082043.P660603342059149024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082046.P17005605142776272219

`2*C(A077028(n)+1, 2)-1`
-/

namespace A082046.P17005605142776272219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (A077028 n + 1).toNat 2 : ℤ) - 1

end

end A082046.P17005605142776272219

noncomputable section

/-- A082046: Square array, A(n, k) = (k*n)^2 + 3*k*n + 1, read by antidiagonals.

Offset 0, canonical program `A082046.P17005605142776272219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082046 (n : ℕ) : ℤ :=
  A082046.P17005605142776272219.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082105.P9895694468637578656

`(A077028(n)+1)²-3`
-/

namespace A082105.P9895694468637578656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077028 n + 1) ^ 2 - 3

end

end A082105.P9895694468637578656

noncomputable section

/-- A082105: Array A(n, k) = (k*n)^2 + 4*(k*n) + 1, read by antidiagonals.

Offset 0, canonical program `A082105.P9895694468637578656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082105 (n : ℕ) : ℤ :=
  A082105.P9895694468637578656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082754.P265240365781171277

`abs(A076014(A014132(n+1))-A075363(n+1))`
-/

namespace A082754.P265240365781171277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076014 (A014132 (n + 1)).toNat - A075363 (n + 1)|

end

end A082754.P265240365781171277

noncomputable section

/-- A082754: Triangle read by rows: T(n, k) = abs(n^k-k^n), 1<=k<=n.

Offset 1, canonical program `A082754.P265240365781171277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A082754 (n : ℕ) : ℤ :=
  A082754.P265240365781171277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A082754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083057.P16504313330184181278

`∑[A083056(n+1)]`
-/

namespace A083057.P16504313330184181278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083057.P16504313330184181278

noncomputable section

/-- A083057: Partial sums of A083056.

Offset 1, canonical program `A083057.P16504313330184181278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083057 (n : ℕ) : ℤ :=
  A083057.P16504313330184181278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083554.P2447973062259263486

`A083553(n+1)/A058263(n+1)`
-/

namespace A083554.P2447973062259263486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083553 (n + 1) : ℚ) / (A058263 (n + 1) : ℚ)

end

end A083554.P2447973062259263486

noncomputable section

/-- A083554: Least common multiple of prime(n+1)-1 and prime(n)-1.

Offset 1, canonical program `A083554.P2447973062259263486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083554 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083554.P2447973062259263486.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083651.P4235126305781789106

`C(A003056(n), A059268(n))%2`
-/

namespace A083651.P4235126305781789106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A059268 n).toNat % 2

end

end A083651.P4235126305781789106

noncomputable section

/-- A083651: Triangular array, read by rows: T(n,k) = k-th bit in binary representation of n (0<=k<=n).

Offset 0, canonical program `A083651.P4235126305781789106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083651 (n : ℕ) : ℤ :=
  (A083651.P4235126305781789106.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084348.P8841809630906450510

`A000522(A048151(n+1))%∑[A010054(n)]`
-/

namespace A084348.P8841809630906450510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000522 (A048151 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084348.P8841809630906450510

noncomputable section

/-- A084348: Triangle read by rows: T(n,k) = floor(e*k!) - n*floor(e*k!/n).

Offset 1, canonical program `A084348.P8841809630906450510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2554 terms. -/
def A084348 (n : ℕ) : ℤ :=
  A084348.P8841809630906450510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2554 terms. -/
def A084348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084922.P12530556586160958201

`2*A081115(n+3)`
-/

namespace A084922.P12530556586160958201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081115 (n + 3)

end

end A084922.P12530556586160958201

noncomputable section

/-- A084922: a(n) = (prime(n)-1)*(prime(n)+1)/6.

Offset 3, canonical program `A084922.P12530556586160958201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084922 (n : ℕ) : ℤ :=
  A084922.P12530556586160958201.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085144.P12304076021569329000

`(A010060(n)-A124754(n))*A106400(n)`
-/

namespace A085144.P12304076021569329000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010060 n - A124754 n) * A106400 n

end

end A085144.P12304076021569329000

noncomputable section

/-- A085144: a(0)=0, a(2n) = a(n)+1, a(2n+1) = -a(n).

Offset 0, canonical program `A085144.P12304076021569329000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085144 (n : ℕ) : ℤ :=
  A085144.P12304076021569329000.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085145.P15264563296604716477

`eq[A010060(n), A124754(n)]`
-/

namespace A085145.P15264563296604716477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085145.P15264563296604716477

noncomputable section

/-- A085145: Positions of 0 in A085144.

Offset 1, canonical program `A085145.P15264563296604716477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1914 terms. -/
def A085145 (n : ℕ) : ℤ :=
  (A085145.P15264563296604716477.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1914 terms. -/
def A085145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085388.P3862355329764916117

`A009999(n)-A004248(A038722(n+1))`
-/

namespace A085388.P3862355329764916117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 n - A004248 (A038722 (n + 1)).toNat

end

end A085388.P3862355329764916117

noncomputable section

/-- A085388: First differences of n^k.

Offset 1, canonical program `A085388.P3862355329764916117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A085388 (n : ℕ) : ℤ :=
  A085388.P3862355329764916117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A085388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085478.P12258921806039720689

`abs(A076756(A061579(n)))`
-/

namespace A085478.P12258921806039720689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076756 (A061579 n).toNat|

end

end A085478.P12258921806039720689

noncomputable section

/-- A085478: Triangle read by rows: T(n, k) = binomial(n + k, 2*k).

Offset 0, canonical program `A085478.P12258921806039720689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085478 (n : ℕ) : ℤ :=
  A085478.P12258921806039720689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085604.P77828900822782128

`val(A002024(n+1)!, A037126(n+1))`
-/

namespace A085604.P77828900822782128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A002024 (n + 1)).toNat) (A037126 (n + 1)).toNat

end

end A085604.P77828900822782128

noncomputable section

/-- A085604: T(n,k) = highest power of prime(k) dividing n!, read by rows.

Offset 1, canonical program `A085604.P77828900822782128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A085604 (n : ℕ) : ℤ :=
  (A085604.P77828900822782128.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A085604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085704.P554284013092023272

`p?[A054541(n+1)+A000040(n+1)]`
-/

namespace A085704.P554284013092023272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P554284013092023272

noncomputable section

/-- A085704: Primes of the form prime(k)*2 - prime(k-1), k>1.

Offset 1, canonical program `A085704.P554284013092023272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. -/
def A085704 (n : ℕ) : ℤ :=
  A085704.P554284013092023272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. -/
def A085704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085857.P7015236969866212170

`∑{digits}[A000045(n), A004198(#+1)]`
-/

namespace A085857.P7015236969866212170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004198 (x + 1)).sum

end

end A085857.P7015236969866212170

noncomputable section

/-- A085857: Number of 3's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085857.P7015236969866212170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085857 (n : ℕ) : ℤ :=
  A085857.P7015236969866212170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086271.P15860447562321617413

`A112367(n)+A057145(n+2)`
-/

namespace A086271.P15860447562321617413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A057145 (n + 2)

end

end A086271.P15860447562321617413

noncomputable section

/-- A086271: Rectangular array T(n,k) of polygonal numbers, by descending antidiagonals.

Offset 1, canonical program `A086271.P15860447562321617413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086271 (n : ℕ) : ℤ :=
  A086271.P15860447562321617413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086273.P8891913594741623944

`A057145(n+2)+A002262(n)²`
-/

namespace A086273.P8891913594741623944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) + A002262 n ^ 2

end

end A086273.P8891913594741623944

noncomputable section

/-- A086273: Rectangular array T(n,k) of central polygonal numbers, by antidiagonals.

Offset 1, canonical program `A086273.P8891913594741623944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086273 (n : ℕ) : ℤ :=
  A086273.P8891913594741623944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086450.P12606238815758101308

`A085765(A025480(n))`
-/

namespace A086450.P12606238815758101308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085765 (A025480 n).toNat

end

end A086450.P12606238815758101308

noncomputable section

/-- A086450: a(0) = 1, a(2n+1) = a(n), a(2n) = a(n) + a(n-1) + ... + a(n-m) + ... where a(n

Offset 0, canonical program `A086450.P12606238815758101308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086450 (n : ℕ) : ℤ :=
  A086450.P12606238815758101308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086800.P1738239651185027247

`A005145(n+1)-A037126(n+1)`
-/

namespace A086800.P1738239651185027247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) - A037126 (n + 1)

end

end A086800.P1738239651185027247

noncomputable section

/-- A086800: Triangle read by rows in which row n lists differences between prime(n) and prime(k) for 1 <= k <= n.

Offset 1, canonical program `A086800.P1738239651185027247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086800 (n : ℕ) : ℤ :=
  A086800.P1738239651185027247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087112.P1462611633473836263

`A005145(n+1)*A037126(n+1)`
-/

namespace A087112.P1462611633473836263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) * A037126 (n + 1)

end

end A087112.P1462611633473836263

noncomputable section

/-- A087112: Triangle in which the n-th row contains n distinct semiprimes not listed previously with all prime factors from among the first n primes.

Offset 1, canonical program `A087112.P1462611633473836263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087112 (n : ℕ) : ℤ :=
  A087112.P1462611633473836263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087322.P5940467379138009822

`A003057(n+2)*2*A059268(n)-1`
-/

namespace A087322.P5940467379138009822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * (2 * A059268 n) - 1

end

end A087322.P5940467379138009822

noncomputable section

/-- A087322: Triangle T read by rows: T(n, 1) = 2*n + 1. For 1 < k <= n, T(n, k) = 2*T(n,k-1) + 1.

Offset 1, canonical program `A087322.P5940467379138009822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087322 (n : ℕ) : ℤ :=
  A087322.P5940467379138009822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088231.P16919889853487200307

`A000196(A094727(n+1))-A000196(A025581(n))`
-/

namespace A088231.P16919889853487200307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A094727 (n + 1)).toNat - A000196 (A025581 n).toNat

end

end A088231.P16919889853487200307

noncomputable section

/-- A088231: Triangle read by rows: T(n,k) = number of squares not less than n-k and not greater n+k, 0<=k

Offset 1, canonical program `A088231.P16919889853487200307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A088231 (n : ℕ) : ℤ :=
  A088231.P16919889853487200307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A088231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088404.P14520106302720198041

`A069537(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088404.P14520106302720198041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069537 (n + 1) : ℚ) / 2

end

end A088404.P14520106302720198041

noncomputable section

/-- A088404: a(n) = A069537(n)/2.

Offset 1, canonical program `A088404.P14520106302720198041`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088404 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088404.P14520106302720198041.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088696.P11522645216660844429

`A072339(A006257(n+1))`
-/

namespace A088696.P11522645216660844429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072339 (A006257 (n + 1)).toNat

end

end A088696.P11522645216660844429

noncomputable section

/-- A088696: Triangle read by rows, giving number of partial quotients in continued fraction representation of terms in the left branch of the infinite Stern-Brocot tree.

Offset 1, canonical program `A088696.P11522645216660844429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A088696 (n : ℕ) : ℤ :=
  A088696.P11522645216660844429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A088696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089072.P4217632278619127775

`A009998(n)*A033918(n+1)`
-/

namespace A089072.P4217632278619127775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n * A033918 (n + 1)

end

end A089072.P4217632278619127775

noncomputable section

/-- A089072: Triangle read by rows: T(n,k) = k^n, n >= 1, 1 <= k <= n.

Offset 1, canonical program `A089072.P4217632278619127775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A089072 (n : ℕ) : ℤ :=
  A089072.P4217632278619127775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A089072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089885.P1173999436066859406

`A000007(A080099(n))`
-/

namespace A089885.P1173999436066859406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A080099 n).toNat

end

end A089885.P1173999436066859406

noncomputable section

/-- A089885: Triangle A046899 read mod 2.

Offset 0, canonical program `A089885.P1173999436066859406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089885 (n : ℕ) : ℤ :=
  A089885.P1173999436066859406.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090321.P15512568863388855327

`A000040(A003057(n+2))-A000040(A004736(n+1))`
-/

namespace A090321.P15512568863388855327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003057 (n + 2)).toNat - A000040 (A004736 (n + 1)).toNat

end

end A090321.P15512568863388855327

noncomputable section

/-- A090321: T(n,k) = prime(n+1) - prime(n-k+1), 1<=k<=n, triangular array read by rows.

Offset 1, canonical program `A090321.P15512568863388855327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090321 (n : ℕ) : ℤ :=
  A090321.P15512568863388855327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090658.P13517223795634800117

`A087915(n+1)+A089257(n+1)`
-/

namespace A090658.P13517223795634800117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087915 (n + 1) + A089257 (n + 1)

end

end A090658.P13517223795634800117

noncomputable section

/-- A090658: Numbers n such that n-1 is a prime of the form 4k+3.

Offset 1, canonical program `A090658.P13517223795634800117`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, A089257, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A090658 (n : ℕ) : ℤ :=
  A090658.P13517223795634800117.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, A089257, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A090658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091441.P8017669790093699685

`A003056(n)!*A003991(n+1)`
-/

namespace A091441.P8017669790093699685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℤ) * A003991 (n + 1)

end

end A091441.P8017669790093699685

noncomputable section

/-- A091441: Table (by antidiagonals) of permutations of two types of objects such that each cycle contains at least one object of each type. Each type of object is labeled from its own label set.

Offset 1, canonical program `A091441.P8017669790093699685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A091441 (n : ℕ) : ℤ :=
  A091441.P8017669790093699685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A091441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092392.P2058426022526125338

`A046899(A061579(n))`
-/

namespace A092392.P2058426022526125338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A061579 n).toNat

end

end A092392.P2058426022526125338

noncomputable section

/-- A092392: Triangle read by rows: T(n,k) = C(2*n - k,n), 0 <= k <= n.

Offset 0, canonical program `A092392.P2058426022526125338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092392 (n : ℕ) : ℤ :=
  A092392.P2058426022526125338.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093057.P490745029092693046

`floor(log2(A046143(n+1)))`
-/

namespace A093057.P490745029092693046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A046143 (n + 1)).toNat

end

end A093057.P490745029092693046

noncomputable section

/-- A093057: Triangle T(j,k) read by rows, where T(j,k) = number of matrix elements remaining at fixed position in the in-situ transposition of a rectangular j X k matrix (singleton cycles).

Offset 1, canonical program `A093057.P490745029092693046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A093057 (n : ℕ) : ℤ :=
  (A093057.P490745029092693046.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A093057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094053.P13142433605233752903

`∑[A114327(n)]`
-/

namespace A094053.P13142433605233752903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094053.P13142433605233752903

noncomputable section

/-- A094053: Triangle read by rows: T(n,k) = k*(n-k), 1 <= k <= n.

Offset 1, canonical program `A094053.P13142433605233752903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094053 (n : ℕ) : ℤ :=
  A094053.P13142433605233752903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094565.P10986564490219607756

`record[A058071(A002262(n)+n)]`
-/

namespace A094565.P10986564490219607756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A002262 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094565.P10986564490219607756

noncomputable section

/-- A094565: Triangle read by rows: binary products of Fibonacci numbers.

Offset 1, canonical program `A094565.P10986564490219607756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A094565 (n : ℕ) : ℤ :=
  A094565.P10986564490219607756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A094565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094617.P8506004990279302888

`A036561(n)+1`
-/

namespace A094617.P8506004990279302888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n + 1

end

end A094617.P8506004990279302888

noncomputable section

/-- A094617: Triangular array T of numbers generated by these rules: 2 is in T; and if x is in T, then 2x-1 and 3x-2 are in T.

Offset 1, canonical program `A094617.P8506004990279302888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094617 (n : ℕ) : ℤ :=
  A094617.P8506004990279302888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095283.P2938136508596588952

`p?[n*(A035263(n+1)+1)]`
-/

namespace A095283.P2938136508596588952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A035263 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095283.P2938136508596588952

noncomputable section

/-- A095283: Primes whose binary-expansion ends with an odd number of 1's.

Offset 1, canonical program `A095283.P2938136508596588952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4359 terms. -/
def A095283 (n : ℕ) : ℤ :=
  A095283.P2938136508596588952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4359 terms. -/
def A095283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095836.P13132800080207829734

`A009998(n)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A095836.P13132800080207829734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009998 n : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A095836.P13132800080207829734

noncomputable section

/-- A095836: Triangle read by rows: T(n,k) = k^((n-k)^2), n>=1, 1<=k<=n.

Offset 1, canonical program `A095836.P13132800080207829734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A095836 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A095836.P13132800080207829734.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A095836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095873.P14916172172888314769

`A005408(A002262(n))*A094728(n+1)`
-/

namespace A095873.P14916172172888314769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A002262 n).toNat * A094728 (n + 1)

end

end A095873.P14916172172888314769

noncomputable section

/-- A095873: Triangle T(n,k) = (2*k-1)*(n+k-1)*(n-k+1) read by rows, 1<=k<=n.

Offset 1, canonical program `A095873.P14916172172888314769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095873 (n : ℕ) : ℤ :=
  A095873.P14916172172888314769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095896.P3328214336342016972

`A075363(A038722(n+1))`
-/

namespace A095896.P3328214336342016972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075363 (A038722 (n + 1)).toNat

end

end A095896.P3328214336342016972

noncomputable section

/-- A095896: Triangle read by rows: T(n,k) = n^(n-k+1), n>=1, 1<=k<=n.

Offset 1, canonical program `A095896.P3328214336342016972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A095896 (n : ℕ) : ℤ :=
  A095896.P3328214336342016972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A095896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096948.P8124363865643036961

`(1-A049780(n)+n)*(A025581(n)+1+n)`
-/

namespace A096948.P8124363865643036961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A049780 n + (n : ℤ)) * (A025581 n + 1 + (n : ℤ))

end

end A096948.P8124363865643036961

noncomputable section

/-- A096948: Triangular table read by rows: T(n,m) = number of rectangles found in an n X m rectangle built from 1 X 1 squares, 1 <= m <= n.

Offset 1, canonical program `A096948.P8124363865643036961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096948 (n : ℕ) : ℤ :=
  A096948.P8124363865643036961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097363.P9324045915537457052

`A097338(n+1)+1`
-/

namespace A097363.P9324045915537457052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) + 1

end

end A097363.P9324045915537457052

noncomputable section

/-- A097363: Positive integers n such that 2n-13 is prime.

Offset 1, canonical program `A097363.P9324045915537457052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097363 (n : ℕ) : ℤ :=
  A097363.P9324045915537457052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098350.P11293678750609225420

`A000040(A004736(n+1))*A037126(n+1)`
-/

namespace A098350.P11293678750609225420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004736 (n + 1)).toNat * A037126 (n + 1)

end

end A098350.P11293678750609225420

noncomputable section

/-- A098350: Multiplication table of the primes read by antidiagonals.

Offset 1, canonical program `A098350.P11293678750609225420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098350 (n : ℕ) : ℤ :=
  A098350.P11293678750609225420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098353.P9158864954245503816

`A083381(n)+A003991(n+1)`
-/

namespace A098353.P9158864954245503816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083381 n + A003991 (n + 1)

end

end A098353.P9158864954245503816

noncomputable section

/-- A098353: Multiplication table of the odd numbers read by antidiagonals.

Offset 1, canonical program `A098353.P9158864954245503816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098353 (n : ℕ) : ℤ :=
  A098353.P9158864954245503816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098356.P7274516251563333103

`A058071(A057944(n))-A058071(n)`
-/

namespace A098356.P7274516251563333103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A057944 n).toNat - A058071 n

end

end A098356.P7274516251563333103

noncomputable section

/-- A098356: Multiplication table of the Fibonacci numbers read by antidiagonals.

Offset 0, canonical program `A098356.P7274516251563333103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098356 (n : ℕ) : ℤ :=
  A098356.P7274516251563333103.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098359.P16889060442946391569

`A003991(n+1)²`
-/

namespace A098359.P16889060442946391569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) ^ 2

end

end A098359.P16889060442946391569

noncomputable section

/-- A098359: Multiplication table of the square numbers read by antidiagonals.

Offset 1, canonical program `A098359.P16889060442946391569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098359 (n : ℕ) : ℤ :=
  A098359.P16889060442946391569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098387.P16796846972825336619

`∑[A054541(n+1)]+floor(log2(n+1))`
-/

namespace A098387.P16796846972825336619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.log 2 (n + 1) : ℤ)

end

end A098387.P16796846972825336619

noncomputable section

/-- A098387: Prime(n)+Log2(n), where Log2=A000523.

Offset 1, canonical program `A098387.P16796846972825336619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098387 (n : ℕ) : ℤ :=
  A098387.P16796846972825336619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099033.P12921075024038566039

`A005599(n+1)-(A293162(n+1)+A293162(n+1))`
-/

namespace A099033.P12921075024038566039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (n + 1) - (A293162 (n + 1) + A293162 (n + 1))

end

end A099033.P12921075024038566039

noncomputable section

/-- A099033: a(n) = Sum_{k=1..n} (-1)^A000120(3*k).

Offset 1, canonical program `A099033.P12921075024038566039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099033 (n : ℕ) : ℤ :=
  A099033.P12921075024038566039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099040.P12712577473766050037

`A026729(n)*A059268(n)`
-/

namespace A099040.P12712577473766050037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A059268 n

end

end A099040.P12712577473766050037

noncomputable section

/-- A099040: Riordan array (1, 2+2x).

Offset 0, canonical program `A099040.P12712577473766050037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099040 (n : ℕ) : ℤ :=
  A099040.P12712577473766050037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099615.P5109352358618095330

`A075363(comp[∑[n]]+1)`
-/

namespace A099615.P5109352358618095330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075363 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A099615.P5109352358618095330

noncomputable section

/-- A099615: Triangle read by rows, 2<=k<=n: T(n,k) = denominator of (1+1/n)^k-(1+k/n) and of (1-1/n)^k-(1-k/n).

Offset 1, canonical program `A099615.P5109352358618095330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1595 terms. -/
def A099615 (n : ℕ) : ℤ :=
  A099615.P5109352358618095330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1595 terms. -/
def A099615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099627.P2788997961149202424

`A048645(n+2)-1`
-/

namespace A099627.P2788997961149202424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 2) - 1

end

end A099627.P2788997961149202424

noncomputable section

/-- A099627: Triangle read by rows: T(n,k) = 2^n + 2^k - 1 with n >= k >= 0.

Offset 0, canonical program `A099627.P2788997961149202424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099627 (n : ℕ) : ℤ :=
  A099627.P2788997961149202424.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099627.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100551.P14272865535871113949

`A078812(n)*A122803(A002262(n))`
-/

namespace A100551.P14272865535871113949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n * A122803 (A002262 n).toNat

end

end A100551.P14272865535871113949

noncomputable section

/-- A100551: Coefficient list of ChebyshevU(n, 1-x).

Offset 0, canonical program `A100551.P14272865535871113949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100551 (n : ℕ) : ℤ :=
  A100551.P14272865535871113949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100551.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100851.P9342598840352089978

`A036561(n)*A059268(n)`
-/

namespace A100851.P9342598840352089978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A059268 n

end

end A100851.P9342598840352089978

noncomputable section

/-- A100851: Triangle read by rows: T(n,k) = 2^n * 3^k, 0 <= k <= n, n >= 0.

Offset 0, canonical program `A100851.P9342598840352089978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8514 terms. -/
def A100851 (n : ℕ) : ℤ :=
  A100851.P9342598840352089978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8514 terms. -/
def A100851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100852.P5582764388534758657

`A059268(n)*A098355(n)`
-/

namespace A100852.P5582764388534758657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A098355 n

end

end A100852.P5582764388534758657

noncomputable section

/-- A100852: Triangle read by rows: T(n,k) = 2^k * 3^n, 0 <= k <= n.

Offset 0, canonical program `A100852.P5582764388534758657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8513 terms. -/
def A100852 (n : ℕ) : ℤ :=
  A100852.P5582764388534758657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8513 terms. -/
def A100852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101447.P7035250077566171266

`A094728(n+1)-A095832(n+1)`
-/

namespace A101447.P7035250077566171266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (n + 1) - A095832 (n + 1)

end

end A101447.P7035250077566171266

noncomputable section

/-- A101447: Triangle read by rows: T(n,k) = (2*k+1)*(n+1-k), 0 <= k < n.

Offset 0, canonical program `A101447.P7035250077566171266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101447 (n : ℕ) : ℤ :=
  A101447.P7035250077566171266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101493.P3235187119619857054

`2*A094728(n+1)-A004736(n+1)`
-/

namespace A101493.P3235187119619857054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094728 (n + 1) - A004736 (n + 1)

end

end A101493.P3235187119619857054

noncomputable section

/-- A101493: Triangle read by rows: T(n,k) = (n+1)*(2*(n+1)-1) - k*(2*k-1).

Offset 0, canonical program `A101493.P3235187119619857054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101493 (n : ℕ) : ℤ :=
  A101493.P3235187119619857054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101660.P15238381681422468022

`1-Δ[A007302(n)]`
-/

namespace A101660.P15238381681422468022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A101660.P15238381681422468022

noncomputable section

/-- A101660: Fixed point of morphism 0 -> 01, 1 -> 02, 2 -> 12.

Offset 0, canonical program `A101660.P15238381681422468022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101660 (n : ℕ) : ℤ :=
  A101660.P15238381681422468022.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101868.P12044102894312486066

`A089910(n+1)+1`
-/

namespace A101868.P12044102894312486066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089910 (n + 1) + 1

end

end A101868.P12044102894312486066

noncomputable section

/-- A101868: a(n) = n + 2*ceiling(phi*n), where phi = (1 + sqrt(5))/2. Row 1 of A101866.

Offset 1, canonical program `A101868.P12044102894312486066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101868 (n : ℕ) : ℤ :=
  A101868.P12044102894312486066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102310.P8236849000317575610

`A000045(A003991(n+1))`
-/

namespace A102310.P8236849000317575610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003991 (n + 1)).toNat

end

end A102310.P8236849000317575610

noncomputable section

/-- A102310: Square array read by antidiagonals: Fibonacci(k*n).

Offset 1, canonical program `A102310.P8236849000317575610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 923 terms. -/
def A102310 (n : ℕ) : ℤ :=
  A102310.P8236849000317575610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 923 terms. -/
def A102310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102563.P3663340639075979939

`ceil(n/2-A102396(n))`
-/

namespace A102563.P3663340639075979939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A102396 n : ℚ)⌉

end

end A102563.P3663340639075979939

noncomputable section

/-- A102563: a(n) = A000120(A001045(n)) - A001045(A000120(n)).

Offset 0, canonical program `A102563.P3663340639075979939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102563 (n : ℕ) : ℤ :=
  A102563.P3663340639075979939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103327.P3699061763120858678

`2*A091044(n+1)-A091042(n)`
-/

namespace A103327.P3699061763120858678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091044 (n + 1) - A091042 n

end

end A103327.P3699061763120858678

noncomputable section

/-- A103327: Triangle read by rows: T(n,k) = binomial(2n+1, 2k+1).

Offset 0, canonical program `A103327.P3699061763120858678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103327 (n : ℕ) : ℤ :=
  A103327.P3699061763120858678.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104002.P9827412459058935376

`A004736(n+1)*A009998(n)`
-/

namespace A104002.P9827412459058935376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A009998 n

end

end A104002.P9827412459058935376

noncomputable section

/-- A104002: Triangle T(n,k) read by rows: number of permutations in S_n avoiding all k-length patterns that start with 1 except one fixed pattern and containing it exactly once.

Offset 2, canonical program `A104002.P9827412459058935376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4578 terms. -/
def A104002 (n : ℕ) : ℤ :=
  A104002.P9827412459058935376.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4578 terms. -/
def A104002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104730.P14957697738821157083

`A074909(n)-A026729(A007401(n+1))`
-/

namespace A104730.P14957697738821157083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - A026729 (A007401 (n + 1)).toNat

end

end A104730.P14957697738821157083

noncomputable section

/-- A104730: Triangle read by rows: T(n,k)=C(n+1,k)-C(k,n-k+1).

Offset 1, canonical program `A104730.P14957697738821157083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A104730 (n : ℕ) : ℤ :=
  A104730.P14957697738821157083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A104730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104733.P14033359084981660770

`A058071(A112367(n))*A104582(n+1)`
-/

namespace A104733.P14033359084981660770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A112367 n).toNat * A104582 (n + 1)

end

end A104733.P14033359084981660770

noncomputable section

/-- A104733: Triangle T(n,k) = sum_{j=k..n} Fibonacci(n-j+1)*Fibonacci(k+1), read by rows, 0<=k<=n.

Offset 0, canonical program `A104733.P14033359084981660770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104733 (n : ℕ) : ℤ :=
  A104733.P14033359084981660770.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105278.P12426767479968281502

`A074909(n+1)*A094587(n)`
-/

namespace A105278.P12426767479968281502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A094587 n

end

end A105278.P12426767479968281502

noncomputable section

/-- A105278: Triangle read by rows: T(n,k) = binomial(n,k)*(n-1)!/(k-1)!.

Offset 1, canonical program `A105278.P12426767479968281502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A105278 (n : ℕ) : ℤ :=
  A105278.P12426767479968281502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A105278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106255.P14504416590498202049

`A000217(val(A036561(n), 6)+1)`
-/

namespace A106255.P14504416590498202049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.valuation (A036561 n).toNat 6 + 1)

end

end A106255.P14504416590498202049

noncomputable section

/-- A106255: Triangle composed of triangular numbers, row sums = A006918.

Offset 1, canonical program `A106255.P14504416590498202049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106255 (n : ℕ) : ℤ :=
  A106255.P14504416590498202049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106262.P12864423525646373783

`A059268(A061579(n))%(A002262(n)+2)`
-/

namespace A106262.P12864423525646373783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059268 (A061579 n).toNat) (A002262 n + 2)

end

end A106262.P12864423525646373783

noncomputable section

/-- A106262: An invertible triangle of remainders of 2^n.

Offset 0, canonical program `A106262.P12864423525646373783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A106262 (n : ℕ) : ℤ :=
  A106262.P12864423525646373783.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A106262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106314.P15491378883024418281

`(val(A036561(n), 6)+1)²`
-/

namespace A106314.P15491378883024418281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A036561 n).toNat 6 + 1) ^ 2

end

end A106314.P15491378883024418281

noncomputable section

/-- A106314: Triangle T(n,k) composed of the squares min(n,k)^2.

Offset 1, canonical program `A106314.P15491378883024418281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106314 (n : ℕ) : ℤ :=
  (A106314.P15491378883024418281.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106465.P403700579701953516

`and(1, A077028(n))`
-/

namespace A106465.P403700579701953516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A077028 n)

end

end A106465.P403700579701953516

noncomputable section

/-- A106465: Triangle read by rows, T(n, k) = 1 if n mod 2 = 1, otherwise (k + 1) mod 2.

Offset 0, canonical program `A106465.P403700579701953516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106465 (n : ℕ) : ℤ :=
  A106465.P403700579701953516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106481.P12208794138596707601

`A092249(n+1)-A106477(n)`
-/

namespace A106481.P12208794138596707601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) - A106477 n

end

end A106481.P12208794138596707601

noncomputable section

/-- A106481: An Euler phi transform of 1/(1 - x^2).

Offset 0, canonical program `A106481.P12208794138596707601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106481 (n : ℕ) : ℤ :=
  A106481.P12208794138596707601.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106481.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107345.P952422273759515519

`C(A023416(n), A087116(n))`
-/

namespace A107345.P952422273759515519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A023416 n).toNat (A087116 n).toNat

end

end A107345.P952422273759515519

noncomputable section

/-- A107345: From the binary representation of n: binomial(number of zeros, number of blocks of contiguous zeros).

Offset 0, canonical program `A107345.P952422273759515519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107345 (n : ℕ) : ℤ :=
  (A107345.P952422273759515519.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107757.P7873322615201436145

`or(1, A089118(n+1))`
-/

namespace A107757.P7873322615201436145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089118 (n + 1))

end

end A107757.P7873322615201436145

noncomputable section

/-- A107757: Numbers k such that Sum_{j=1..k} Catalan(j) == 2 (mod 3).

Offset 1, canonical program `A107757.P7873322615201436145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107757 (n : ℕ) : ℤ :=
  A107757.P7873322615201436145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107782.P10954405074000137432

`A023416(n)-A087116(n)`
-/

namespace A107782.P10954405074000137432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n - A087116 n

end

end A107782.P10954405074000137432

noncomputable section

/-- A107782: In binary representation of n: (number of zeros) minus (number of blocks of contiguous zeros).

Offset 0, canonical program `A107782.P10954405074000137432`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107782 (n : ℕ) : ℤ :=
  A107782.P10954405074000137432.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107782.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107862.P1500677961855177080

`C(A049780(n), A025581(n))`
-/

namespace A107862.P1500677961855177080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049780 n).toNat (A025581 n).toNat

end

end A107862.P1500677961855177080

noncomputable section

/-- A107862: Triangle, read by rows, where T(n,k) = C(n*(n-1)/2 - k*(k-1)/2 + n-k, n-k).

Offset 0, canonical program `A107862.P1500677961855177080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A107862 (n : ℕ) : ℤ :=
  (A107862.P1500677961855177080.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A107862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107867.P17704679884314866193

`C(A049780(n)+1, A025581(n))`
-/

namespace A107867.P17704679884314866193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049780 n + 1).toNat (A025581 n).toNat

end

end A107867.P17704679884314866193

noncomputable section

/-- A107867: Triangle, read by rows, where T(n,k) = C(n*(n-1)/2-k*(k-1)/2+n-k+1,n-k).

Offset 0, canonical program `A107867.P17704679884314866193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A107867 (n : ℕ) : ℤ :=
  (A107867.P17704679884314866193.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A107867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107870.P13194851954959866292

`C(A049780(n)+2, A025581(n))`
-/

namespace A107870.P13194851954959866292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049780 n + 2).toNat (A025581 n).toNat

end

end A107870.P13194851954959866292

noncomputable section

/-- A107870: Triangle, read by rows, where T(n,k) = C(n*(n-1)/2-k*(k-1)/2+n-k+2, n-k).

Offset 0, canonical program `A107870.P13194851954959866292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A107870 (n : ℕ) : ℤ :=
  (A107870.P13194851954959866292.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A107870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107873.P3174346258241373001

`C(A049780(n)+3, A025581(n))`
-/

namespace A107873.P3174346258241373001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049780 n + 3).toNat (A025581 n).toNat

end

end A107873.P3174346258241373001

noncomputable section

/-- A107873: Triangle, read by rows, where T(n,k) = binomial(n*(n-1)/2 - k*(k-1)/2 + n-k+3, n-k).

Offset 0, canonical program `A107873.P3174346258241373001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A107873 (n : ℕ) : ℤ :=
  (A107873.P3174346258241373001.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A107873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108063.P12610813069636294894

`A058071(n)-A006498(A003056(n))`
-/

namespace A108063.P12610813069636294894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n - A006498 (A003056 n).toNat

end

end A108063.P12610813069636294894

noncomputable section

/-- A108063: Triangle, read by rows, where T(n,k) = A006498(n+1) - A106408(n,k). A006498 are the central numbers of A106408.

Offset 1, canonical program `A108063.P12610813069636294894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A108063 (n : ℕ) : ℤ :=
  A108063.P12610813069636294894.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A108063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108358.P14957281117479450170

`1-A021913(A004198(n))`
-/

namespace A108358.P14957281117479450170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A021913 (A004198 n).toNat

end

end A108358.P14957281117479450170

noncomputable section

/-- A108358: A mod 2 triangle based on floor((n+2)/2).

Offset 0, canonical program `A108358.P14957281117479450170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108358 (n : ℕ) : ℤ :=
  A108358.P14957281117479450170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109161.P8958502350347301229

`A063656(n)+A017221(A003056(n))`
-/

namespace A109161.P8958502350347301229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 n + A017221 (A003056 n).toNat

end

end A109161.P8958502350347301229

noncomputable section

/-- A109161: Triangle read by rows: T(n, k) = n*(n+9) + k + 5, with T(0, 0) = 5 and T(1, 0) = 15.

Offset 1, canonical program `A109161.P8958502350347301229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109161 (n : ℕ) : ℤ :=
  A109161.P8958502350347301229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109857.P6846885640526743165

`A074147(n+1)+2*A114327(n)`
-/

namespace A109857.P6846885640526743165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074147 (n + 1) + 2 * A114327 n

end

end A109857.P6846885640526743165

noncomputable section

/-- A109857: Next 2*n - 1 odd numbers in decreasing order followed by next 2*n even numbers in decreasing order.

Offset 1, canonical program `A109857.P6846885640526743165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109857 (n : ℕ) : ℤ :=
  A109857.P6846885640526743165.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110321.P1257881013958299813

`A001045(A004736(n+1))*A094587(n)`
-/

namespace A110321.P1257881013958299813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A004736 (n + 1)).toNat * A094587 n

end

end A110321.P1257881013958299813

noncomputable section

/-- A110321: A Jacobsthal number related number triangle.

Offset 0, canonical program `A110321.P1257881013958299813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A110321 (n : ℕ) : ℤ :=
  A110321.P1257881013958299813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A110321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110327.P14773794744366081363

`A000129(A004736(n+1))*A094587(n)`
-/

namespace A110327.P14773794744366081363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A004736 (n + 1)).toNat * A094587 n

end

end A110327.P14773794744366081363

noncomputable section

/-- A110327: Triangle read by rows: T(n,k) = n!*Pell(n-k+1)/k!, where Pell(n)=A000129(n).

Offset 0, canonical program `A110327.P14773794744366081363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A110327 (n : ℕ) : ℤ :=
  A110327.P14773794744366081363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A110327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110650.P11710532808952762772

`A110009(A092486(n))`
-/

namespace A110650.P11710532808952762772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A092486 n).toNat

end

end A110650.P11710532808952762772

noncomputable section

/-- A110650: n^2 followed by n^4 followed by n followed by n^3.

Offset 1, canonical program `A110650.P11710532808952762772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110650 (n : ℕ) : ℤ :=
  A110650.P11710532808952762772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110653.P15905790512607003949

`A110009(xor(2, n)+1)`
-/

namespace A110653.P15905790512607003949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (Nat.xor 2 n + 1)

end

end A110653.P15905790512607003949

noncomputable section

/-- A110653: n^2 followed by n^3 followed by n followed by n^4.

Offset 1, canonical program `A110653.P15905790512607003949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110653 (n : ℕ) : ℤ :=
  A110653.P15905790512607003949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112328.P15750628365003057408

`6*A000531(n+1)-A002011(n)`
-/

namespace A112328.P15750628365003057408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000531 (n + 1) - A002011 n

end

end A112328.P15750628365003057408

noncomputable section

/-- A112328: a(n) = (n+1)*binomial(2n+2,n+1)-3*4^n+binomial(2n,n).

Offset 1, canonical program `A112328.P15750628365003057408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A112328 (n : ℕ) : ℤ :=
  A112328.P15750628365003057408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A112328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112336.P5143182100270563539

`A059268(n)*A106187(n)`
-/

namespace A112336.P5143182100270563539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A106187 n

end

end A112336.P5143182100270563539

noncomputable section

/-- A112336: A number triangle related to the central binomial coefficients.

Offset 0, canonical program `A112336.P5143182100270563539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112336 (n : ℕ) : ℤ :=
  A112336.P5143182100270563539.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113048.P10846232821421410637

`A351864(n)%4`
-/

namespace A113048.P10846232821421410637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351864 n) 4

end

end A113048.P10846232821421410637

noncomputable section

/-- A113048: Binomial(4n,n)/(3n+1) mod 4.

Offset 0, canonical program `A113048.P10846232821421410637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5246 terms. -/
def A113048 (n : ℕ) : ℤ :=
  A113048.P10846232821421410637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5246 terms. -/
def A113048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113214.P1543907139351502579

`2*A030528(n+1)-A026729(n)`
-/

namespace A113214.P1543907139351502579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030528 (n + 1) - A026729 n

end

end A113214.P1543907139351502579

noncomputable section

/-- A113214: Riordan array (1+2x,x(1+x)).

Offset 0, canonical program `A113214.P1543907139351502579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113214 (n : ℕ) : ℤ :=
  A113214.P1543907139351502579.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113280.P7911185233889006078

`A077028(n)²+2*A068606(n)`
-/

namespace A113280.P7911185233889006078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n ^ 2 + 2 * A068606 n

end

end A113280.P7911185233889006078

noncomputable section

/-- A113280: A symmetrical triangle of coefficients: t(n,m)=(n - m)*(n - m + 2)*m*(m + 2) + 1.

Offset 1, canonical program `A113280.P7911185233889006078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113280 (n : ℕ) : ℤ :=
  A113280.P7911185233889006078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113582.P16626873563599467874

`A000124(A003991(n+1))-A098358(n)`
-/

namespace A113582.P16626873563599467874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A003991 (n + 1)).toNat - A098358 n

end

end A113582.P16626873563599467874

noncomputable section

/-- A113582: Triangle T(n,m) read by rows: T(n,m) = (n - m)*(n - m + 1)*m*(m + 1)/4 + 1.

Offset 1, canonical program `A113582.P16626873563599467874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113582 (n : ℕ) : ℤ :=
  A113582.P16626873563599467874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113680.P4202360044323169764

`2-gcd(4, A036561(n))`
-/

namespace A113680.P4202360044323169764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 4 (A036561 n) : ℤ)

end

end A113680.P4202360044323169764

noncomputable section

/-- A113680: Riordan array ((1-x-2x^2)/(1-x),x).

Offset 0, canonical program `A113680.P4202360044323169764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113680 (n : ℕ) : ℤ :=
  A113680.P4202360044323169764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114191.P10721137948637682050

`(-1)^n*A064062(n)`
-/

namespace A114191.P10721137948637682050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A064062 n

end

end A114191.P10721137948637682050

noncomputable section

/-- A114191: Expansion of 1/(1+x*c(-2*x)), c(x) the g.f. of A000108.

Offset 0, canonical program `A114191.P10721137948637682050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A114191 (n : ℕ) : ℤ :=
  A114191.P10721137948637682050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A114191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114213.P4149335441730124754

`A004198(n)!%2`
-/

namespace A114213.P4149335441730124754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004198 n).toNat % 2

end

end A114213.P4149335441730124754

noncomputable section

/-- A114213: A generalized Pascal triangle modulo 2.

Offset 0, canonical program `A114213.P4149335441730124754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A114213 (n : ℕ) : ℤ :=
  (A114213.P4149335441730124754.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A114213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114219.P10639804880516663625

`abs(1-A048151(n+1))`
-/

namespace A114219.P10639804880516663625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A048151 (n + 1)|

end

end A114219.P10639804880516663625

noncomputable section

/-- A114219: Number triangle T(n,k) = (k-(k-1)*0^(n-k))*[k<=n].

Offset 0, canonical program `A114219.P10639804880516663625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114219 (n : ℕ) : ℤ :=
  A114219.P10639804880516663625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115068.P17894343994682237628

`A059268(A061579(n))*A074909(n)`
-/

namespace A115068.P17894343994682237628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A074909 n

end

end A115068.P17894343994682237628

noncomputable section

/-- A115068: Triangle read by rows: T(n,k) = number of elements in the Coxeter group D_n with descent set contained in {s_k}, for 0<=k<=n-1.

Offset 1, canonical program `A115068.P17894343994682237628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115068 (n : ℕ) : ℤ :=
  A115068.P17894343994682237628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115137.P16976045627159990475

`abs(A064062(n)-Δ[A064062(n)])`
-/

namespace A115137.P16976045627159990475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A064062 n - (f1 (n + 1) - f1 n)|

end

end A115137.P16976045627159990475

noncomputable section

/-- A115137: Second diagonal of triangle A113647 (called Y(2,1)).

Offset 0, canonical program `A115137.P16976045627159990475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A115137 (n : ℕ) : ℤ :=
  A115137.P16976045627159990475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A115137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115203.P5519273001455559311

`A064062(n+3)-A000257(n+3)`
-/

namespace A115203.P5519273001455559311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 (n + 3) - A000257 (n + 3)

end

end A115203.P5519273001455559311

noncomputable section

/-- A115203: Sixth column of triangle A115193 (called C(1,2)).

Offset 0, canonical program `A115203.P5519273001455559311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A115203 (n : ℕ) : ℤ :=
  A115203.P5519273001455559311.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A115203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115638.P2858482046055591846

`A276391(n+2)-2*A115716(n)`
-/

namespace A115638.P2858482046055591846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (n + 2) - 2 * A115716 n

end

end A115638.P2858482046055591846

noncomputable section

/-- A115638: A Jacobsthal-related divide-and-conquer sequence.

Offset 0, canonical program `A115638.P2858482046055591846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. -/
def A115638 (n : ℕ) : ℤ :=
  A115638.P2858482046055591846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. -/
def A115638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001402.P12217424370709294362

`∑[A037145(n)]`
-/

namespace A001402.P12217424370709294362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001402.P12217424370709294362

noncomputable section

/-- A001402: Number of partitions of n into at most 6 parts.

Offset 0, canonical program `A001402.P12217424370709294362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001402 (n : ℕ) : ℤ :=
  A001402.P12217424370709294362.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001481.P14266788823695492218

`eq[1, A229062(n)]`
-/

namespace A001481.P14266788823695492218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001481.P14266788823695492218

noncomputable section

/-- A001481: Numbers that are the sum of 2 squares.

Offset 1, canonical program `A001481.P14266788823695492218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001481 (n : ℕ) : ℤ :=
  (A001481.P14266788823695492218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002731.P17861816823819005131

`filter[A385821(n+2), A360128(#)]`
-/

namespace A002731.P17861816823819005131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385821 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A002731.P17861816823819005131

noncomputable section

/-- A002731: Numbers k such that (k^2 + 1)/2 is prime.

Offset 1, canonical program `A002731.P17861816823819005131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6612 terms. -/
def A002731 (n : ℕ) : ℤ :=
  A002731.P17861816823819005131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6612 terms. -/
def A002731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003602.P7612175048291952394

`A110963(2*n+1)`
-/

namespace A003602.P7612175048291952394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (2 * n + 1)

end

end A003602.P7612175048291952394

noncomputable section

/-- A003602: Kimberling's paraphrase of the binary number system: if n = (2k-1)*2^m then a(n) = k.

Offset 1, canonical program `A003602.P7612175048291952394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003602 (n : ℕ) : ℤ :=
  A003602.P7612175048291952394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003602.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004732.P14447255711085556585

`gcd(A004730(n), A126120(n+1))`
-/

namespace A004732.P14447255711085556585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004730 n) (A126120 (n + 1))

end

end A004732.P14447255711085556585

noncomputable section

/-- A004732: Numerator of n!!/(n+3)!!.

Offset 0, canonical program `A004732.P14447255711085556585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A004732 (n : ℕ) : ℤ :=
  (A004732.P14447255711085556585.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A004732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004733.P5302531551978956282

`lcm(A004730(n+3), A004731(n+2))`
-/

namespace A004733.P5302531551978956282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004730 (n + 3)) (A004731 (n + 2))

end

end A004733.P5302531551978956282

noncomputable section

/-- A004733: Denominator of n!!/(n+3)!!.

Offset 0, canonical program `A004733.P5302531551978956282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A004733 (n : ℕ) : ℤ :=
  (A004733.P5302531551978956282.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A004733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004734.P8169358669113051099

`A004730(n+1)*A010685(n)`
-/

namespace A004734.P8169358669113051099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (n + 1) * A010685 n

end

end A004734.P8169358669113051099

noncomputable section

/-- A004734: Numerator of average distance traveled by n-dimensional fly.

Offset 1, canonical program `A004734.P8169358669113051099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A004734 (n : ℕ) : ℤ :=
  A004734.P8169358669113051099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A004734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004746.P12860919069827004080

`A007814(2*n+3)+comp[A004752(n+1)]`
-/

namespace A004746.P12860919069827004080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004752 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A004746.P12860919069827004080

noncomputable section

/-- A004746: Numbers whose binary expansion does not contain 010.

Offset 1, canonical program `A004746.P12860919069827004080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A004746 (n : ℕ) : ℤ :=
  A004746.P12860919069827004080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A004746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006380.P15822107496695707583

`∑[∑[A003082(n)]]`
-/

namespace A006380.P15822107496695707583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003082 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006380.P15822107496695707583

noncomputable section

/-- A006380: Number of equivalence classes of 4 X n binary matrices when one can permute rows, permute columns and complement columns.

Offset 0, canonical program `A006380.P15822107496695707583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A006380 (n : ℕ) : ℤ :=
  A006380.P15822107496695707583.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A006380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007318.P302227728145965961

`A259525(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A007318.P302227728145965961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259525 (n - 1) + a (n - 1)

end

end A007318.P302227728145965961

noncomputable section

/-- A007318: Pascal's triangle read by rows: C(n,k) = binomial(n,k) = n!/(k!*(n-k)!), 0 <= k <= n.

Offset 0, canonical program `A007318.P302227728145965961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007318 (n : ℕ) : ℤ :=
  A007318.P302227728145965961.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007706.P7962893497832790206

`A000007(n)+1-A257628(n)`
-/

namespace A007706.P7962893497832790206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (1 - A257628 n)

end

end A007706.P7962893497832790206

noncomputable section

/-- A007706: a(n) = 1 + coefficient of x^n in Product_{k>=1} (1-x^k) (essentially the expansion of the Dedekind function eta(x)).

Offset 0, canonical program `A007706.P7962893497832790206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1257 terms. -/
def A007706 (n : ℕ) : ℤ :=
  A007706.P7962893497832790206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1257 terms. -/
def A007706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007932.P4019058118128328590

`A007090(A023705(n+1))`
-/

namespace A007932.P4019058118128328590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A023705 (n + 1)).toNat

end

end A007932.P4019058118128328590

noncomputable section

/-- A007932: Numbers that contain only 1's, 2's and 3's.

Offset 1, canonical program `A007932.P4019058118128328590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A007932 (n : ℕ) : ℤ :=
  A007932.P4019058118128328590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A007932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008358.P11668116640377738616

`∑[A008357(n)]`
-/

namespace A008358.P11668116640377738616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008358.P11668116640377738616

noncomputable section

/-- A008358: Crystal ball sequence for D_6 lattice.

Offset 0, canonical program `A008358.P11668116640377738616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008358 (n : ℕ) : ℤ :=
  A008358.P11668116640377738616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008503.P1208465169182441661

`∑[A008492(n)]`
-/

namespace A008503.P1208465169182441661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008503.P1208465169182441661

noncomputable section

/-- A008503: 9-dimensional centered tetrahedral numbers.

Offset 0, canonical program `A008503.P1208465169182441661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008503 (n : ℕ) : ℤ :=
  A008503.P1208465169182441661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013698.P1407703900620963464

`A262394(n+2)-A001764(n+2)`
-/

namespace A013698.P1407703900620963464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262394 (n + 2) - A001764 (n + 2)

end

end A013698.P1407703900620963464

noncomputable section

/-- A013698: a(n) = binomial(3*n+2, n-1).

Offset 1, canonical program `A013698.P1407703900620963464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A013698 (n : ℕ) : ℤ :=
  A013698.P1407703900620963464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A013698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014410.P11912461944088680954

`A135278(n)+A074909(n)`
-/

namespace A014410.P11912461944088680954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + A074909 n

end

end A014410.P11912461944088680954

noncomputable section

/-- A014410: Elements in Pascal's triangle (by row) that are not 1.

Offset 2, canonical program `A014410.P11912461944088680954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014410 (n : ℕ) : ℤ :=
  A014410.P11912461944088680954.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019465.P1486875116561325780

`A019464(n)+A065033(n)!`
-/

namespace A019465.P1486875116561325780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n + (Nat.factorial (A065033 n).toNat : ℤ)

end

end A019465.P1486875116561325780

noncomputable section

/-- A019465: Multiply by 1, add 1, multiply by 2, add 2, etc., start with 2.

Offset 0, canonical program `A019465.P1486875116561325780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A019465 (n : ℕ) : ℤ :=
  A019465.P1486875116561325780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A019465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019506.P15594823480605419391

`record[A191558(A095405(n+9))]`
-/

namespace A019506.P15594823480605419391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A095405 (n + 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019506.P15594823480605419391

noncomputable section

/-- A019506: Hoax numbers: composite numbers whose digit-sum equals the sum of the digit-sums of its distinct prime factors.

Offset 1, canonical program `A019506.P15594823480605419391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A019506 (n : ℕ) : ℤ :=
  A019506.P15594823480605419391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A019506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020668.P7056058439816876017

`comp[or(n, 2*A229062(n))]`
-/

namespace A020668.P7056058439816876017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (2 * A229062 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A020668.P7056058439816876017

noncomputable section

/-- A020668: Numbers of the form x^2 + 4*y^2.

Offset 1, canonical program `A020668.P7056058439816876017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020668 (n : ℕ) : ℤ :=
  (A020668.P7056058439816876017.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020672.P16459092017734974211

`eq[A164848(n+1), A229062(n)]`
-/

namespace A020672.P16459092017734974211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020672.P16459092017734974211

noncomputable section

/-- A020672: Numbers of form x^2 + 9 y^2.

Offset 1, canonical program `A020672.P16459092017734974211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7030 terms. -/
def A020672 (n : ℕ) : ℤ :=
  (A020672.P16459092017734974211.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7030 terms. -/
def A020672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022306.P10782893219587604583

`A022305(n)/2`
-/

namespace A022306.P10782893219587604583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022305 n : ℚ) / 2

end

end A022306.P10782893219587604583

noncomputable section

/-- A022306: Sequence A022305 divided by 2.

Offset 0, canonical program `A022306.P10782893219587604583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022306 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022306.P10782893219587604583.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022433.P5885580325791089761

`xor(n%2, A022429(n))`
-/

namespace A022433.P5885580325791089761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n % 2 : ℕ) : ℤ) (A022429 n)

end

end A022433.P5885580325791089761

noncomputable section

/-- A022433: a(n) = c(n-1) + c(n-3) where c is the sequence of numbers not in a.

Offset 0, canonical program `A022433.P5885580325791089761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022433 (n : ℕ) : ℤ :=
  A022433.P5885580325791089761.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022888.P5027841816580517114

`eq[A054541(n+1), A054541(n+5)]`
-/

namespace A022888.P5027841816580517114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022888.P5027841816580517114

noncomputable section

/-- A022888: n-th prime p(k) such that p(k) + p(k+5) = p(k+1) + p(k+4).

Offset 1, canonical program `A022888.P5027841816580517114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A022888 (n : ℕ) : ℤ :=
  (A022888.P5027841816580517114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A022888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022891.P5018532674174448617

`A000040(A022890(n+1))`
-/

namespace A022891.P5018532674174448617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A022890 (n + 1)).toNat

end

end A022891.P5018532674174448617

noncomputable section

/-- A022891: n-th prime p(k) such that p(k) + p(k+6) = p(k+2) + p(k+4).

Offset 1, canonical program `A022891.P5018532674174448617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A022891 (n : ℕ) : ℤ :=
  A022891.P5018532674174448617.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A022891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023134.P11930322177379065047

`∑{d}[3^A073189(n), A007814(2*#)]`
-/

namespace A023134.P11930322177379065047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A073189 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A007814 (2 * d)

end

end A023134.P11930322177379065047

noncomputable section

/-- A023134: Signature sequence of 1/Pi (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

Offset 1, canonical program `A023134.P11930322177379065047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A023134 (n : ℕ) : ℤ :=
  A023134.P11930322177379065047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A023134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023524.P17182310907286821232

`∑{e}[A023523(n+1), gcd(11, #)]`
-/

namespace A023524.P17182310907286821232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.gcd 11 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P17182310907286821232

noncomputable section

/-- A023524: Number of distinct prime divisors of prime(n)*prime(n-1) + 1.

Offset 1, canonical program `A023524.P17182310907286821232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A023524 (n : ℕ) : ℤ :=
  (A023524.P17182310907286821232.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A023524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023528.P15781417277148134774

`val(A023523(n+1), 2)`
-/

namespace A023528.P15781417277148134774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A023523 (n + 1)).toNat 2

end

end A023528.P15781417277148134774

noncomputable section

/-- A023528: Exponent of 2 in prime factorization of prime(n)*prime(n-1) + 1.

Offset 1, canonical program `A023528.P15781417277148134774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023528 (n : ℕ) : ℤ :=
  (A023528.P15781417277148134774.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023529.P12403804853711803308

`∑{p}[A023523(n+1), #]`
-/

namespace A023529.P12403804853711803308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023529.P12403804853711803308

noncomputable section

/-- A023529: Sum of distinct prime divisors of p(n)*p(n-1) + 1.

Offset 1, canonical program `A023529.P12403804853711803308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A023529 (n : ℕ) : ℤ :=
  (A023529.P12403804853711803308.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A023529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024312.P16770968988271834341

`A024869(n+2)+∑[A008619(n)]`
-/

namespace A024312.P16770968988271834341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024869 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024312.P16770968988271834341

noncomputable section

/-- A024312: a(n) = s(1)*s(n) + s(2)*s(n-1) + ... + s(k)*s(n+1-k), where k = floor((n+1)/2), s = (natural numbers >= 3).

Offset 1, canonical program `A024312.P16770968988271834341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024312 (n : ℕ) : ℤ :=
  A024312.P16770968988271834341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024314.P2143404515256360905

`A024310(n+1)+A024310(n+1)-A023861(n+1)`
-/

namespace A024314.P2143404515256360905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024310 (n + 1) + (A024310 (n + 1) - A023861 (n + 1))

end

end A024314.P2143404515256360905

noncomputable section

/-- A024314: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = (natural numbers >= 3), t = A023532.

Offset 1, canonical program `A024314.P2143404515256360905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A024314 (n : ℕ) : ℤ :=
  A024314.P2143404515256360905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A024314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024447.P9255981576388494713

`A357251(n+1)-A024450(n+1)`
-/

namespace A024447.P9255981576388494713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357251 (n + 1) - A024450 (n + 1)

end

end A024447.P9255981576388494713

noncomputable section

/-- A024447: Sum of the products of the primes taken 2 at a time from the first n primes.

Offset 1, canonical program `A024447.P9255981576388494713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024447 (n : ℕ) : ℤ :=
  A024447.P9255981576388494713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024511.P1058289518058299462

`eq[char[A024510(n+1)], A000007(n)]`
-/

namespace A024511.P1058289518058299462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024510 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024511.P1058289518058299462

noncomputable section

/-- A024511: Positions of odd numbers in A004431 (sums of 2 distinct nonzero squares).

Offset 1, canonical program `A024511.P1058289518058299462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4832 terms. -/
def A024511 (n : ℕ) : ℤ :=
  (A024511.P1058289518058299462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4832 terms. -/
def A024511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024705.P11783983241854966151

`filter[n+3, A024711(#)]`
-/

namespace A024705.P11783983241854966151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A024711 (f1 j) = 1) n)

end

end A024705.P11783983241854966151

noncomputable section

/-- A024705: Positions of odd numbers in A024702.

Offset 1, canonical program `A024705.P11783983241854966151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A024705 (n : ℕ) : ℤ :=
  (A024705.P11783983241854966151.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A024705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024718.P9617034669250128048

`1/2*(1+A006134(n))`
-/

namespace A024718.P9617034669250128048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (1 + A006134 n : ℚ)

end

end A024718.P9617034669250128048

noncomputable section

/-- A024718: a(n) = (1/2)*(1 + Sum_{k=0..n} binomial(2*k, k)).

Offset 0, canonical program `A024718.P9617034669250128048`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024718 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024718.P9617034669250128048.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024718.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024879.P8859403091492470975

`A307597(n+5)-char[A046691(n)]`
-/

namespace A024879.P8859403091492470975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (n + 5) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A024879.P8859403091492470975

noncomputable section

/-- A024879: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = [ n/2 ], s = A023531.

Offset 2, canonical program `A024879.P8859403091492470975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024879 (n : ℕ) : ℤ :=
  A024879.P8859403091492470975.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025868.P632508948921518616

`A025817(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025868.P632508948921518616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025817 n - a (n - 2)

end

end A025868.P632508948921518616

noncomputable section

/-- A025868: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A025868.P632508948921518616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025868 (n : ℕ) : ℤ :=
  A025868.P632508948921518616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025876.P14766016950573170578

`A008677(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025876.P14766016950573170578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A008677 n - a (n - 3)

end

end A025876.P14766016950573170578

noncomputable section

/-- A025876: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^7)).

Offset 0, canonical program `A025876.P14766016950573170578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025876 (n : ℕ) : ℤ :=
  A025876.P14766016950573170578.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025883.P15157821750037263586

`A025846(n)+A025859(n)-A025831(n)`
-/

namespace A025883.P15157821750037263586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025846 n + (A025859 n - A025831 n)

end

end A025883.P15157821750037263586

noncomputable section

/-- A025883: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A025883.P15157821750037263586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025883 (n : ℕ) : ℤ :=
  A025883.P15157821750037263586.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025898.P2159537952016596773

`A025846(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025898.P2159537952016596773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025846 n - a (n - 3)

end

end A025898.P2159537952016596773

noncomputable section

/-- A025898: Expansion of 1/((1-x^6)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A025898.P2159537952016596773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025898 (n : ℕ) : ℤ :=
  A025898.P2159537952016596773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025899.P3380886057172936043

`A025847(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025899.P3380886057172936043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025847 n - a (n - 3)

end

end A025899.P3380886057172936043

noncomputable section

/-- A025899: Expansion of 1/((1-x^6)*(1-x^7)*(1-x^10)).

Offset 0, canonical program `A025899.P3380886057172936043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025899 (n : ℕ) : ℤ :=
  A025899.P3380886057172936043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026004.P4906418296421014582

`ceil(A045722(n+1)/2)`
-/

namespace A026004.P4906418296421014582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A045722 (n + 1) : ℚ) / 2⌉

end

end A026004.P4906418296421014582

noncomputable section

/-- A026004: a(n) = T(3n+1,n), where T = Catalan triangle (A008315).

Offset 0, canonical program `A026004.P4906418296421014582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A026004 (n : ℕ) : ℤ :=
  A026004.P4906418296421014582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A026004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026122.P10047697498519479443

`Δ[A026107(n+2)]`
-/

namespace A026122.P10047697498519479443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026107 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026122.P10047697498519479443

noncomputable section

/-- A026122: a(n) is the number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 1, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n), where T is the array in A026120.

Offset 2, canonical program `A026122.P10047697498519479443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026122 (n : ℕ) : ℤ :=
  A026122.P10047697498519479443.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026610.P12474859572976114036

`2-A026608(n+1)`
-/

namespace A026610.P12474859572976114036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A026608 (n + 1)

end

end A026610.P12474859572976114036

noncomputable section

/-- A026610: a(n) = number of 1's between n-th 2 and (n+1)st 2 in A026600.

Offset 1, canonical program `A026610.P12474859572976114036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026610 (n : ℕ) : ℤ :=
  A026610.P12474859572976114036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026934.P3574988771703309430

`A026002(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A026934.P3574988771703309430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026002 (n + 1) - a (n - 1)

end

end A026934.P3574988771703309430

noncomputable section

/-- A026934: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A008288.

Offset 1, canonical program `A026934.P3574988771703309430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A026934 (n : ℕ) : ℤ :=
  A026934.P3574988771703309430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A026934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027176.P12879899713189998349

`A027173(n+2)-(A027172(n+2)+2)`
-/

namespace A027176.P12879899713189998349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027173 (n + 2) - (A027172 (n + 2) + 2)

end

end A027176.P12879899713189998349

noncomputable section

/-- A027176: a(n) = A027170(2n-1, n-2).

Offset 2, canonical program `A027176.P12879899713189998349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A027176 (n : ℕ) : ℤ :=
  A027176.P12879899713189998349.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A027176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027698.P7192177815924648084

`filter[n+1, A200246(#)]`
-/

namespace A027698.P7192177815924648084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A200246 (f1 j) = 1) n)

end

end A027698.P7192177815924648084

noncomputable section

/-- A027698: Numbers k such that the k-th prime has an odd number of 1's in its binary expansion.

Offset 1, canonical program `A027698.P7192177815924648084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5316 terms. -/
def A027698 (n : ℕ) : ℤ :=
  (A027698.P7192177815924648084.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5316 terms. -/
def A027698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027817.P4187198524931339810

`∑[A027816(n+6)+A027807(n+7)]`
-/

namespace A027817.P4187198524931339810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027816 (n + 6) + A027807 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027817.P4187198524931339810

noncomputable section

/-- A027817: a(n) = 99*(n+1)*binomial(n+5,12).

Offset 7, canonical program `A027817.P4187198524931339810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027817 (n : ℕ) : ℤ :=
  A027817.P4187198524931339810.a (n - 7)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028954.P10015280007482825137

`lt[A007814(A211422(n)), A028609(n)]`
-/

namespace A028954.P10015280007482825137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A211422 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P10015280007482825137

noncomputable section

/-- A028954: Numbers represented by quadratic form with Gram matrix [ 2, 1; 1, 6 ]. (divided by 2).

Offset 1, canonical program `A028954.P10015280007482825137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A028954 (n : ℕ) : ℤ :=
  (A028954.P10015280007482825137.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A028954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029021.P13032765609088074308

`∑[A025817(n)]`
-/

namespace A029021.P13032765609088074308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029021.P13032765609088074308

noncomputable section

/-- A029021: Expansion of 1/((1-x)*(1-x^2)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A029021.P13032765609088074308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029021 (n : ℕ) : ℤ :=
  A029021.P13032765609088074308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029050.P15315209558142707646

`∑[A025846(n)]`
-/

namespace A029050.P15315209558142707646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029050.P15315209558142707646

noncomputable section

/-- A029050: Expansion of 1/((1-x)*(1-x^3)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A029050.P15315209558142707646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029050 (n : ℕ) : ℤ :=
  A029050.P15315209558142707646.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029062.P6705985955326828099

`∑[A025907(abs(3-n))+A025907(n)]`
-/

namespace A029062.P6705985955326828099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 |3 - (n : ℤ)|.toNat + A025907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029062.P6705985955326828099

noncomputable section

/-- A029062: Expansion of 1/((1-x)*(1-x^3)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029062.P6705985955326828099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029062 (n : ℕ) : ℤ :=
  A029062.P6705985955326828099.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029104.P11171262085675889674

`∑[A025895(n)]`
-/

namespace A029104.P11171262085675889674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029104.P11171262085675889674

noncomputable section

/-- A029104: Expansion of 1/((1-x)*(1-x^5)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029104.P11171262085675889674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029104 (n : ℕ) : ℤ :=
  A029104.P11171262085675889674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029116.P2286183440171770193

`∑[A025907(n)]`
-/

namespace A029116.P2286183440171770193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029116.P2286183440171770193

noncomputable section

/-- A029116: Expansion of 1/((1-x)(1-x^6)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029116.P2286183440171770193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029116 (n : ℕ) : ℤ :=
  A029116.P2286183440171770193.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029275.P7887773070166748873

`A025879(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029275.P7887773070166748873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025879 n + a (n - 3)

end

end A029275.P7887773070166748873

noncomputable section

/-- A029275: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^6)*(1-x^10)).

Offset 0, canonical program `A029275.P7887773070166748873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029275 (n : ℕ) : ℤ :=
  A029275.P7887773070166748873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029290.P16762149366517590486

`A025895(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029290.P16762149366517590486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025895 n + a (n - 3)

end

end A029290.P16762149366517590486

noncomputable section

/-- A029290: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029290.P16762149366517590486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029290 (n : ℕ) : ℤ :=
  A029290.P16762149366517590486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029291.P6732410073293999855

`A025840(n)+A029043(n)-A029044(n)`
-/

namespace A029291.P6732410073293999855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 n + (A029043 n - A029044 n)

end

end A029291.P6732410073293999855

noncomputable section

/-- A029291: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029291.P6732410073293999855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029291 (n : ℕ) : ℤ :=
  A029291.P6732410073293999855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029305.P5923973588584456125

`A025907(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029305.P5923973588584456125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025907 n + a (n - 3)

end

end A029305.P5923973588584456125

noncomputable section

/-- A029305: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029305.P5923973588584456125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029305 (n : ℕ) : ℤ :=
  A029305.P5923973588584456125.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029320.P3817495982437401057

`A008681(abs(A097140(n)))`
-/

namespace A029320.P3817495982437401057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 |A097140 n|.toNat

end

end A029320.P3817495982437401057

noncomputable section

/-- A029320: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029320.P3817495982437401057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029320 (n : ℕ) : ℤ :=
  A029320.P3817495982437401057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029881.P9354089517218192674

`∑{d}[n+1, A007427(#)*A029882((n+1)/#-1)]`
-/

namespace A029881.P9354089517218192674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A029882 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A029881.P9354089517218192674

noncomputable section

/-- A029881: Möbius transform of Thue-Morse sequence A001285 (when shifted once right).

Offset 1, canonical program `A029881.P9354089517218192674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029881 (n : ℕ) : ℤ :=
  A029881.P9354089517218192674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031169.P15444003477182272261

`A031168(n+2)+A001223(n+1)`
-/

namespace A031169.P15444003477182272261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031168 (n + 2) + A001223 (n + 1)

end

end A031169.P15444003477182272261

noncomputable section

/-- A031169: a(n) = prime(n+7) - prime(n).

Offset 1, canonical program `A031169.P15444003477182272261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A031169 (n : ℕ) : ℤ :=
  A031169.P15444003477182272261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A031169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031382.P8648011770165763457

`A031378(2*(n+1))`
-/

namespace A031382.P8648011770165763457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031378 (2 * (n + 1))

end

end A031382.P8648011770165763457

noncomputable section

/-- A031382: a(n) = prime(8*n - 2).

Offset 1, canonical program `A031382.P8648011770165763457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031382 (n : ℕ) : ℤ :=
  A031382.P8648011770165763457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031395.P1569826038016177632

`A031337(Δ[n²])`
-/

namespace A031395.P1569826038016177632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031337 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031395.P1569826038016177632

noncomputable section

/-- A031395: a(n) = prime(8*n - 4).

Offset 1, canonical program `A031395.P1569826038016177632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031395 (n : ℕ) : ℤ :=
  A031395.P1569826038016177632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031912.P18084296795577399581

`A031378(Δ[n²])`
-/

namespace A031912.P18084296795577399581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031378 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031912.P18084296795577399581

noncomputable section

/-- A031912: a(n) = prime(8*n - 6).

Offset 1, canonical program `A031912.P18084296795577399581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031912 (n : ℕ) : ℤ :=
  A031912.P18084296795577399581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031925.P10904826335426229622

`A031924(n+1)+6`
-/

namespace A031925.P10904826335426229622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1) + 6

end

end A031925.P10904826335426229622

noncomputable section

/-- A031925: Upper prime of a difference of 6 between consecutive primes.

Offset 1, canonical program `A031925.P10904826335426229622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031925 (n : ℕ) : ℤ :=
  A031925.P10904826335426229622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032939.P14752265326544919997

`record[A123108(abs(A320283(n)))]`
-/

namespace A032939.P14752265326544919997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 |A320283 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032939.P14752265326544919997

noncomputable section

/-- A032939: Numbers whose base-4 representation Sum_{i=0..m} d(i)*4^(m-i) has d(i)=0 for all odd i.

Offset 1, canonical program `A032939.P14752265326544919997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A032939 (n : ℕ) : ℤ :=
  A032939.P14752265326544919997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A032939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033157.P10781485780208723287

`A185256(n+1)+1`
-/

namespace A033157.P10781485780208723287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185256 (n + 1) + 1

end

end A033157.P10781485780208723287

noncomputable section

/-- A033157: Begins with (1, 4); avoids 3-term arithmetic progressions.

Offset 1, canonical program `A033157.P10781485780208723287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033157 (n : ℕ) : ℤ :=
  A033157.P10781485780208723287.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033157.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033549.P17073948200287688934

`∩[A154313(n+1), A258876(n+1)]`
-/

namespace A033549.P17073948200287688934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033549.P17073948200287688934

noncomputable section

/-- A033549: Numbers k such that sum of digits of k-th prime equals sum of digits of k.

Offset 1, canonical program `A033549.P17073948200287688934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A033549 (n : ℕ) : ℤ :=
  (A033549.P17073948200287688934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A033549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033941.P7624727038485756511

`Δ[A183003(A018252(n+1))]`
-/

namespace A033941.P7624727038485756511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183003 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033941.P7624727038485756511

noncomputable section

/-- A033941: Number of ways A002808(n) can be properly factored into 2 integers.

Offset 1, canonical program `A033941.P7624727038485756511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A033941 (n : ℕ) : ℤ :=
  A033941.P7624727038485756511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A033941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033946.P5008854941610242731

`lt[A048050(n+1), A054541(xor(1, n)+1)]+1`
-/

namespace A033946.P5008854941610242731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (Nat.xor 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A033946.P5008854941610242731

noncomputable section

/-- A033946: Values of n corresponding to A033945.

Offset 1, canonical program `A033946.P5008854941610242731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. -/
def A033946 (n : ℕ) : ℤ :=
  (A033946.P5008854941610242731.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. -/
def A033946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034028.P14737218398777476874

`comp[A034027(n+1)]`
-/

namespace A034028.P14737218398777476874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A034028.P14737218398777476874

noncomputable section

/-- A034028: Numbers n not of form (x^2+2y^2 with x >= y >= 0).

Offset 1, canonical program `A034028.P14737218398777476874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034028 (n : ℕ) : ℤ :=
  (A034028.P14737218398777476874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034036.P12842143889052767765

`eq[0, char[A034035(n+1)]]`
-/

namespace A034036.P12842143889052767765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034035 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034036.P12842143889052767765

noncomputable section

/-- A034036: Numbers of the form (x^2+xy+2y^2 with x>=0, y>=0).

Offset 1, canonical program `A034036.P12842143889052767765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A034036 (n : ℕ) : ℤ :=
  (A034036.P12842143889052767765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A034036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034050.P15289769784533318971

`2*A199986(n+1)-A131664(n+1)`
-/

namespace A034050.P15289769784533318971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199986 (n + 1) - A131664 (n + 1)

end

end A034050.P15289769784533318971

noncomputable section

/-- A034050: Numbers with multiplicative digital root value 3.

Offset 1, canonical program `A034050.P15289769784533318971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A034050 (n : ℕ) : ℤ :=
  A034050.P15289769784533318971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A034050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034104.P12814070935055898263

`A034099(n+1)-A002024(A016897(n))`
-/

namespace A034104.P12814070935055898263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034099 (n + 1) - A002024 (A016897 n).toNat

end

end A034104.P12814070935055898263

noncomputable section

/-- A034104: Fractional part of square root of a(n) starts with digit 8.

Offset 1, canonical program `A034104.P12814070935055898263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A034104 (n : ℕ) : ℤ :=
  A034104.P12814070935055898263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A034104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034734.P15721239827703422834

`∑{d}[n+1, A000740(#)*A007435((n+1)/#)]`
-/

namespace A034734.P15721239827703422834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A007435 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034734.P15721239827703422834

noncomputable section

/-- A034734: Dirichlet convolution of b_n=2^(n-1) with Fibonacci numbers.

Offset 1, canonical program `A034734.P15721239827703422834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034734 (n : ℕ) : ℤ :=
  A034734.P15721239827703422834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034736.P10113879758376514175

`∑{d}[n+1, A000740(#)*A030014((n+1)/#)]`
-/

namespace A034736.P10113879758376514175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A030014 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034736.P10113879758376514175

noncomputable section

/-- A034736: Dirichlet convolution of b_n=2^(n-1) with Primes (with 1).

Offset 1, canonical program `A034736.P10113879758376514175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034736 (n : ℕ) : ℤ :=
  A034736.P10113879758376514175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034965.P10618063056112596285

`p?[A034964(n+1)]`
-/

namespace A034965.P10618063056112596285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034965.P10618063056112596285

noncomputable section

/-- A034965: Primes that are sum of five consecutive primes.

Offset 1, canonical program `A034965.P10618063056112596285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2030 terms. -/
def A034965 (n : ℕ) : ℤ :=
  A034965.P10618063056112596285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2030 terms. -/
def A034965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035194.P1613741361831210486

`A035186(A214682(n+1))`
-/

namespace A035194.P1613741361831210486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (A214682 (n + 1)).toNat

end

end A035194.P1613741361831210486

noncomputable section

/-- A035194: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 12.

Offset 1, canonical program `A035194.P1613741361831210486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035194 (n : ℕ) : ℤ :=
  A035194.P1613741361831210486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035200.P11648274898513142306

`A035185((n+1)/A038500(n+1))`
-/

namespace A035200.P11648274898513142306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A035200.P11648274898513142306

noncomputable section

/-- A035200: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 18.

Offset 1, canonical program `A035200.P11648274898513142306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035200 (n : ℕ) : ℤ :=
  A035200.P11648274898513142306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035251.P7268071419077795163

`record[(n+1)%(A139608(n)^A035185(n+1))]`
-/

namespace A035251.P7268071419077795163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A139608 n : ℚ) ^ (A035185 (n + 1) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035251.P7268071419077795163

noncomputable section

/-- A035251: Positive numbers of the form x^2 - 2y^2 with integers x, y.

Offset 1, canonical program `A035251.P7268071419077795163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A035251 (n : ℕ) : ℤ :=
  A035251.P7268071419077795163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A035251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035252.P13797268032333054032

`lt[0, A035186(n+1)]+1`
-/

namespace A035252.P13797268032333054032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035252.P13797268032333054032

noncomputable section

/-- A035252: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 3.

Offset 1, canonical program `A035252.P13797268032333054032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A035252 (n : ℕ) : ℤ :=
  (A035252.P13797268032333054032.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A035252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035259.P13691517442612984009

`lt[1, a(A035202(n))+2]` with `a(0)=-1, a(1)=2, a(2)=2, a(3)=1`
-/

namespace A035259.P13691517442612984009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, 2, 1] fun n f2 =>
  f2 (A035202 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035259.P13691517442612984009

noncomputable section

/-- A035259: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 20.

Offset 1, canonical program `A035259.P13691517442612984009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2785 terms. -/
def A035259 (n : ℕ) : ℤ :=
  (A035259.P13691517442612984009.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2785 terms. -/
def A035259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035612.P7106491847305260424

`val(A022340(n+1), 2)`
-/

namespace A035612.P7106491847305260424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A022340 (n + 1)).toNat 2

end

end A035612.P7106491847305260424

noncomputable section

/-- A035612: Horizontal para-Fibonacci sequence: says which column of Wythoff array (starting column count at 1) contains n.

Offset 1, canonical program `A035612.P7106491847305260424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035612 (n : ℕ) : ℤ :=
  (A035612.P7106491847305260424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036069.P1575067081743271746

`gcd(2, n+1)*A004730(abs(A024000(n)))`
-/

namespace A036069.P1575067081743271746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A004730 |A024000 n|.toNat

end

end A036069.P1575067081743271746

noncomputable section

/-- A036069: Denominator of rational part of Haar measure on Grassmannian space G(n,1).

Offset 0, canonical program `A036069.P1575067081743271746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A036069 (n : ℕ) : ℤ :=
  A036069.P1575067081743271746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A036069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036265.P15826367320604290420

`A036264(n+2)-A036264(n+1)`
-/

namespace A036265.P15826367320604290420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036264 (n + 2) - A036264 (n + 1)

end

end A036265.P15826367320604290420

noncomputable section

/-- A036265: 4th differences of primes.

Offset 1, canonical program `A036265.P15826367320604290420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036265 (n : ℕ) : ℤ :=
  A036265.P15826367320604290420.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036273.P9570373567943307012

`abs(Δ[A036272(n)])`
-/

namespace A036273.P9570373567943307012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036273.P9570373567943307012

noncomputable section

/-- A036273: Absolute values of differences of A036272.

Offset 0, canonical program `A036273.P9570373567943307012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036273 (n : ℕ) : ℤ :=
  A036273.P9570373567943307012.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037954.P15656623579345578521

`A037957(n+1)-A037953(n)`
-/

namespace A037954.P15656623579345578521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037957 (n + 1) - A037953 n

end

end A037954.P15656623579345578521

noncomputable section

/-- A037954: a(n) = binomial(n, floor((n-7)/2)).

Offset 0, canonical program `A037954.P15656623579345578521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A037954 (n : ℕ) : ℤ :=
  A037954.P15656623579345578521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A037954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038199.P1588479413970294253

`A000740(n+1)*A036453(n+1)`
-/

namespace A038199.P1588479413970294253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) * A036453 (n + 1)

end

end A038199.P1588479413970294253

noncomputable section

/-- A038199: Row sums of triangle T(m,n) = number of solutions to 1 <= a(1) < a(2) < ... < a(m) <= n, where gcd(a(1), a(2), ..., a(m), n) = 1, in A020921.

Offset 1, canonical program `A038199.P1588479413970294253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A038199 (n : ℕ) : ℤ :=
  A038199.P1588479413970294253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A038199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038464.P15118603473833143717

`A055235(A007401(n+1))`
-/

namespace A038464.P15118603473833143717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 (A007401 (n + 1)).toNat

end

end A038464.P15118603473833143717

noncomputable section

/-- A038464: Sums of 2 distinct powers of 3.

Offset 1, canonical program `A038464.P15118603473833143717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A038464 (n : ℕ) : ℤ :=
  A038464.P15118603473833143717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A038464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038490.P10897644593069472211

`lcm(2, A073211(A007401(n+1)))`
-/

namespace A038490.P10897644593069472211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A073211 (A007401 (n + 1)).toNat)

end

end A038490.P10897644593069472211

noncomputable section

/-- A038490: Sums of 2 distinct powers of 11.

Offset 1, canonical program `A038490.P10897644593069472211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4655 terms. -/
def A038490 (n : ℕ) : ℤ :=
  (A038490.P10897644593069472211.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4655 terms. -/
def A038490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038567.P2197162168153652474

`round(sqrt(2*A169581(n+1)))`
-/

namespace A038567.P2197162168153652474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A169581 (n + 1) : ℝ))

end

end A038567.P2197162168153652474

noncomputable section

/-- A038567: Denominators in canonical bijection from positive integers to positive rationals <= 1.

Offset 0, canonical program `A038567.P2197162168153652474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038567 (n : ℕ) : ℤ :=
  A038567.P2197162168153652474.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038698.P1622945088266764411

`A267098(n+1)-A267097(n+1)`
-/

namespace A038698.P1622945088266764411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267098 (n + 1) - A267097 (n + 1)

end

end A038698.P1622945088266764411

noncomputable section

/-- A038698: Excess of 4k-1 primes over 4k+1 primes, beginning with prime 2.

Offset 1, canonical program `A038698.P1622945088266764411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A267097, A267098, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A038698 (n : ℕ) : ℤ :=
  A038698.P1622945088266764411.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A267097, A267098, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A038698.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A039948.P16586624803639266693

`A094587(n)*A104762(n+1)`
-/

namespace A039948.P16586624803639266693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A104762 (n + 1)

end

end A039948.P16586624803639266693

noncomputable section

/-- A039948: A triangle related to A000045 (Fibonacci numbers).

Offset 0, canonical program `A039948.P16586624803639266693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A039948 (n : ℕ) : ℤ :=
  A039948.P16586624803639266693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A039948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043575.P18156973941041410115

`filter[A043740(n+2), A354034(#)]`
-/

namespace A043575.P18156973941041410115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043740 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A043575.P18156973941041410115

noncomputable section

/-- A043575: Numbers whose base-2 representation has exactly 8 runs.

Offset 1, canonical program `A043575.P18156973941041410115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9970 terms. -/
def A043575 (n : ℕ) : ℤ :=
  A043575.P18156973941041410115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9970 terms. -/
def A043575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043577.P11304154799423855237

`filter[A043755(n+2), A354034(#)]`
-/

namespace A043577.P11304154799423855237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A043577.P11304154799423855237

noncomputable section

/-- A043577: Numbers whose base-2 representation has exactly 10 runs.

Offset 1, canonical program `A043577.P11304154799423855237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8008 terms. -/
def A043577 (n : ℕ) : ℤ :=
  A043577.P11304154799423855237.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8008 terms. -/
def A043577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043707.P15463448008099908181

`eq[1, A043556(n+1)%2]+1`
-/

namespace A043707.P15463448008099908181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043707.P15463448008099908181

noncomputable section

/-- A043707: Numbers whose base-4 representation has an odd number of runs.

Offset 1, canonical program `A043707.P15463448008099908181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5022 terms. -/
def A043707 (n : ℕ) : ℤ :=
  (A043707.P15463448008099908181.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5022 terms. -/
def A043707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043827.P12446963303425026454

`lt[1, A043556(n)%3]`
-/

namespace A043827.P12446963303425026454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043827.P12446963303425026454

noncomputable section

/-- A043827: Numbers k such that number of runs in the base 4 representation of k is congruent to 2 mod 3.

Offset 1, canonical program `A043827.P12446963303425026454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3320 terms. -/
def A043827 (n : ℕ) : ℤ :=
  (A043827.P12446963303425026454.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3320 terms. -/
def A043827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043830.P1846640742485076920

`eq[2, A043556(n)%4]`
-/

namespace A043830.P1846640742485076920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043830.P1846640742485076920

noncomputable section

/-- A043830: Numbers k such that number of runs in the base 4 representation of k is congruent to 2 mod 4.

Offset 1, canonical program `A043830.P1846640742485076920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3053 terms. -/
def A043830 (n : ℕ) : ℤ :=
  (A043830.P1846640742485076920.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3053 terms. -/
def A043830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044990.P1906721328781520243

`A055235(n)+A003462(A003056(n))`
-/

namespace A044990.P1906721328781520243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 n + A003462 (A003056 n).toNat

end

end A044990.P1906721328781520243

noncomputable section

/-- A044990: Numbers whose base-3 representation contains no 0's and exactly one 2.

Offset 1, canonical program `A044990.P1906721328781520243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A044990 (n : ℕ) : ℤ :=
  A044990.P1906721328781520243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A044990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045023.P5595946791580993158

`∩[A023707(n+1), A023709(n+1)]`
-/

namespace A045023.P5595946791580993158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045023.P5595946791580993158

noncomputable section

/-- A045023: Numbers whose base-4 representation contains exactly two 0's and no 1's.

Offset 1, canonical program `A045023.P5595946791580993158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 734 terms. -/
def A045023 (n : ℕ) : ℤ :=
  (A045023.P5595946791580993158.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 734 terms. -/
def A045023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045043.P7689654534827955149

`∩[A023714(n+1), A043333(n+1)]`
-/

namespace A045043.P7689654534827955149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045043.P7689654534827955149

noncomputable section

/-- A045043: Numbers whose base-4 representation contains exactly one 0 and one 2.

Offset 1, canonical program `A045043.P7689654534827955149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2708 terms. -/
def A045043 (n : ℕ) : ℤ :=
  (A045043.P7689654534827955149.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2708 terms. -/
def A045043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045047.P1732137570799864261

`∩[A023707(n+1), A023713(n+1)]`
-/

namespace A045047.P1732137570799864261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045047.P1732137570799864261

noncomputable section

/-- A045047: Numbers whose base-4 representation contains exactly two 0's and no 2's.

Offset 1, canonical program `A045047.P1732137570799864261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1374 terms. -/
def A045047 (n : ℕ) : ℤ :=
  (A045047.P1732137570799864261.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1374 terms. -/
def A045047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045048.P8487223918955922511

`∩[A023707(n+1), A023714(n+1)]`
-/

namespace A045048.P8487223918955922511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045048.P8487223918955922511

noncomputable section

/-- A045048: Numbers whose base-4 representation contains exactly two 0's and one 2.

Offset 1, canonical program `A045048.P8487223918955922511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3236 terms. -/
def A045048 (n : ℕ) : ℤ :=
  (A045048.P8487223918955922511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3236 terms. -/
def A045048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045049.P13394764454737454766

`∩[A023707(n+1), A023715(n+1)]`
-/

namespace A045049.P13394764454737454766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045049.P13394764454737454766

noncomputable section

/-- A045049: Numbers whose base-4 representation contains exactly two 0's and two 2's.

Offset 1, canonical program `A045049.P13394764454737454766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3126 terms. -/
def A045049 (n : ℕ) : ℤ :=
  (A045049.P13394764454737454766.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3126 terms. -/
def A045049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045062.P7454481286317021680

`∩[A023705(n+1), A031466(n+1)]`
-/

namespace A045062.P7454481286317021680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045062.P7454481286317021680

noncomputable section

/-- A045062: Numbers whose base-4 representation contains no 0's and exactly one 3.

Offset 1, canonical program `A045062.P7454481286317021680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1665 terms. -/
def A045062 (n : ℕ) : ℤ :=
  (A045062.P7454481286317021680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1665 terms. -/
def A045062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045072.P10813795932210976576

`∩[A023707(n+1), A031462(n+1)]`
-/

namespace A045072.P10813795932210976576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045072.P10813795932210976576

noncomputable section

/-- A045072: Numbers whose base-4 representation contains exactly two 0's and one 3.

Offset 1, canonical program `A045072.P10813795932210976576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3368 terms. -/
def A045072 (n : ℕ) : ℤ :=
  (A045072.P10813795932210976576.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3368 terms. -/
def A045072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045073.P1760494440290000566

`∩[A023707(n+1), A023719(n+1)]`
-/

namespace A045073.P1760494440290000566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045073.P1760494440290000566

noncomputable section

/-- A045073: Numbers whose base-4 representation contains exactly two 0's and two 3's.

Offset 1, canonical program `A045073.P1760494440290000566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3091 terms. -/
def A045073 (n : ℕ) : ℤ :=
  (A045073.P1760494440290000566.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3091 terms. -/
def A045073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045074.P14332834374997068054

`∩[A023707(n+1), A031466(n+1)]`
-/

namespace A045074.P14332834374997068054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045074.P14332834374997068054

noncomputable section

/-- A045074: Numbers whose base-4 representation contains exactly two 0's and three 3's.

Offset 1, canonical program `A045074.P14332834374997068054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1566 terms. -/
def A045074 (n : ℕ) : ℤ :=
  (A045074.P14332834374997068054.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1566 terms. -/
def A045074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045154.P2972587594266397419

`eq[48, A338854(n)]`
-/

namespace A045154.P2972587594266397419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045154.P2972587594266397419

noncomputable section

/-- A045154: Numbers whose base-4 representation contains exactly four 2's and one 3.

Offset 1, canonical program `A045154.P2972587594266397419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A045154 (n : ℕ) : ℤ :=
  (A045154.P2972587594266397419.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A045154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045166.P14364888551667959188

`∩[A023723(n+1), A023726(n+1)]`
-/

namespace A045166.P14364888551667959188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045166.P14364888551667959188

noncomputable section

/-- A045166: Numbers whose base-5 representation contains exactly two 0's and one 1.

Offset 1, canonical program `A045166.P14364888551667959188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A045166 (n : ℕ) : ℤ :=
  (A045166.P14364888551667959188.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A045166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045173.P11398546931757965663

`∩[A023721(n+1), A023730(n+1)]`
-/

namespace A045173.P11398546931757965663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045173.P11398546931757965663

noncomputable section

/-- A045173: Numbers whose base-5 representation contains no 0's and exactly one 2.

Offset 1, canonical program `A045173.P11398546931757965663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A045173 (n : ℕ) : ℤ :=
  (A045173.P11398546931757965663.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A045173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045181.P3716698425638522431

`∩[A023723(n+1), A023730(n+1)]`
-/

namespace A045181.P3716698425638522431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045181.P3716698425638522431

noncomputable section

/-- A045181: Numbers whose base-5 representation contains exactly two 0's and one 2.

Offset 1, canonical program `A045181.P3716698425638522431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2457 terms. -/
def A045181 (n : ℕ) : ℤ :=
  (A045181.P3716698425638522431.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2457 terms. -/
def A045181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045211.P7222316058856117847

`∩[A023723(n+1), A023738(n+1)]`
-/

namespace A045211.P7222316058856117847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045211.P7222316058856117847

noncomputable section

/-- A045211: Numbers whose base-5 representation contains exactly two 0's and one 4.

Offset 1, canonical program `A045211.P7222316058856117847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. -/
def A045211 (n : ℕ) : ℤ :=
  (A045211.P7222316058856117847.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. -/
def A045211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045212.P3245334097446540218

`∩[A023723(n+1), A023739(n+1)]`
-/

namespace A045212.P3245334097446540218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045212.P3245334097446540218

noncomputable section

/-- A045212: Numbers whose base-5 representation contains exactly two 0's and two 4's.

Offset 1, canonical program `A045212.P3245334097446540218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1919 terms. -/
def A045212 (n : ℕ) : ℤ :=
  (A045212.P3245334097446540218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1919 terms. -/
def A045212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045222.P4405246567291443244

`∩[A023726(n+1), A023730(n+1)]`
-/

namespace A045222.P4405246567291443244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045222.P4405246567291443244

noncomputable section

/-- A045222: Numbers whose base-5 representation contains exactly one 1 and one 2.

Offset 1, canonical program `A045222.P4405246567291443244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3186 terms. -/
def A045222 (n : ℕ) : ℤ :=
  (A045222.P4405246567291443244.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3186 terms. -/
def A045222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045282.P4860414556103832674

`∩[A023730(n+1), A023738(n+1)]`
-/

namespace A045282.P4860414556103832674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045282.P4860414556103832674

noncomputable section

/-- A045282: Numbers whose base-5 representation contains exactly one 2 and one 4.

Offset 1, canonical program `A045282.P4860414556103832674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3919 terms. -/
def A045282 (n : ℕ) : ℤ :=
  (A045282.P4860414556103832674.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3919 terms. -/
def A045282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045283.P3668256314299914758

`∩[A023730(n+1), A023739(n+1)]`
-/

namespace A045283.P3668256314299914758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045283.P3668256314299914758

noncomputable section

/-- A045283: Numbers whose base-5 representation contains exactly one 2 and two 4's.

Offset 1, canonical program `A045283.P3668256314299914758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2466 terms. -/
def A045283 (n : ℕ) : ℤ :=
  (A045283.P3668256314299914758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2466 terms. -/
def A045283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046200.P11881798545890118364

`A003506(eq[1, A003506(n+1)%2]+1)`
-/

namespace A046200.P11881798545890118364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003506 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046200.P11881798545890118364

noncomputable section

/-- A046200: Odd numbers in the triangle of denominators in Leibniz's Harmonic Triangle.

Offset 1, canonical program `A046200.P11881798545890118364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 764 terms. -/
def A046200 (n : ℕ) : ℤ :=
  A046200.P11881798545890118364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 764 terms. -/
def A046200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046203.P12559141239243383564

`A003506(comp[n*A003506(n+1)%2]+1)`
-/

namespace A046203.P12559141239243383564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A003506 (n + 1)) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A046203.P12559141239243383564

noncomputable section

/-- A046203: Even numbers in the triangle of denominators in Leibniz's Harmonic Triangle.

Offset 1, canonical program `A046203.P12559141239243383564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9236 terms. -/
def A046203 (n : ℕ) : ℤ :=
  A046203.P12559141239243383564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9236 terms. -/
def A046203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046205.P12720954446069382381

`A003506(gcd(n+1, ∑[and(1, n)]))`
-/

namespace A046205.P12720954446069382381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A046205.P12720954446069382381

noncomputable section

/-- A046205: In Leibniz's Harmonic Triangle, write numerator first and then denominator of each element.

Offset 1, canonical program `A046205.P12720954446069382381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046205 (n : ℕ) : ℤ :=
  A046205.P12720954446069382381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046206.P4481990353055156933

`A003506(n+1-2*lcm(2, n)/4)`
-/

namespace A046206.P4481990353055156933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (SequenceMachineLib.roundAway ((n + 1 : ℚ) - (2 * Nat.lcm 2 n : ℚ) / 4)).toNat

end

end A046206.P4481990353055156933

noncomputable section

/-- A046206: In Leibniz's Harmonic Triangle, write denominator first and then numerator of each element.

Offset 1, canonical program `A046206.P4481990353055156933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046206 (n : ℕ) : ℤ :=
  A046206.P4481990353055156933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046303.P9565588535061664667

`A000040(n+1)*A046302(n+2)`
-/

namespace A046303.P9565588535061664667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A046302 (n + 2)

end

end A046303.P9565588535061664667

noncomputable section

/-- A046303: Product of 5 successive primes.

Offset 1, canonical program `A046303.P9565588535061664667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046303 (n : ℕ) : ℤ :=
  A046303.P9565588535061664667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046340.P2863459807996963045

`filter[A014076(n+1), A359372(#)]`
-/

namespace A046340.P2863459807996963045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A046340.P2863459807996963045

noncomputable section

/-- A046340: Odd composite numbers with an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A046340.P2863459807996963045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3693 terms. -/
def A046340 (n : ℕ) : ℤ :=
  A046340.P2863459807996963045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3693 terms. -/
def A046340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046792.P13304464133605671692

`A098361(A000124(A003991(n+1)))/A098361(n)`
-/

namespace A046792.P13304464133605671692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098361 (A000124 (A003991 (n + 1)).toNat).toNat : ℚ) / (A098361 n : ℚ)

end

end A046792.P13304464133605671692

noncomputable section

/-- A046792: Triangle of numbers where k-th row contains (ij)!/(i!j!) with i+j = k+1, 1 <= i <= k.

Offset 1, canonical program `A046792.P13304464133605671692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A046792 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046792.P13304464133605671692.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A046792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046869.P16773520886354257536

`A000040(A046868(n+1))`
-/

namespace A046869.P16773520886354257536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A046868 (n + 1)).toNat

end

end A046869.P16773520886354257536

noncomputable section

/-- A046869: Good primes (version 1): prime(n)^2 > prime(n-1)*prime(n+1).

Offset 1, canonical program `A046869.P16773520886354257536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A046869 (n : ℕ) : ℤ :=
  A046869.P16773520886354257536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A046869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048472.P10433507711319556140

`A025581(n)*A296612(n)+1`
-/

namespace A048472.P10433507711319556140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A296612 n + 1

end

end A048472.P10433507711319556140

noncomputable section

/-- A048472: Array T by antidiagonals, T(k,n)=(k+1)*n*2^(n-1)+1, n >= 0, k >= 1.

Offset 0, canonical program `A048472.P10433507711319556140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048472 (n : ℕ) : ℤ :=
  A048472.P10433507711319556140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048717.P2461125811461192478

`∩[A004742(n+1), A077459(n+1)]`
-/

namespace A048717.P2461125811461192478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048717.P2461125811461192478

noncomputable section

/-- A048717: Binary expansion matches ((0)*00(1*)11)*(0*).

Offset 0, canonical program `A048717.P2461125811461192478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A048717 (n : ℕ) : ℤ :=
  (A048717.P2461125811461192478.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A048717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049616.P9575760654266147499

`A121968(n+1)-A005598(n)`
-/

namespace A049616.P9575760654266147499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121968 (n + 1) - A005598 n

end

end A049616.P9575760654266147499

noncomputable section

/-- A049616: a(n) = Sum_{i=1..n} T(i,n-i), where T is A049615.

Offset 0, canonical program `A049616.P9575760654266147499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 717 terms. -/
def A049616 (n : ℕ) : ℤ :=
  A049616.P9575760654266147499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 717 terms. -/
def A049616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049621.P790567699714540639

`floor((A049620(n+1)+A049620(n))/2)`
-/

namespace A049621.P790567699714540639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049620 (n + 1) + A049620 n : ℚ) / 2⌋

end

end A049621.P790567699714540639

noncomputable section

/-- A049621: a(n) = T(n,n+1), array T as in A049615.

Offset 0, canonical program `A049621.P790567699714540639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2723 terms. -/
def A049621 (n : ℕ) : ℤ :=
  A049621.P790567699714540639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2723 terms. -/
def A049621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049628.P9996388528544294496

`A005598(n)+2*n`
-/

namespace A049628.P9996388528544294496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n + (2 * n : ℤ)

end

end A049628.P9996388528544294496

noncomputable section

/-- A049628: a(n) = Sum_{i=0..n} T(i,n-i) where T is A049627.

Offset 0, canonical program `A049628.P9996388528544294496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A049628 (n : ℕ) : ℤ :=
  A049628.P9996388528544294496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A049628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049644.P1684655514801948572

`A049632(A004526(n))-1`
-/

namespace A049644.P1684655514801948572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 (A004526 n).toNat - 1

end

end A049644.P1684655514801948572

noncomputable section

/-- A049644: T(n,n), array T given by A049639.

Offset 0, canonical program `A049644.P1684655514801948572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 558 terms. -/
def A049644 (n : ℕ) : ℤ :=
  A049644.P1684655514801948572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 558 terms. -/
def A049644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049688.P4025135909260073091

`A005598(n)-1+n`
-/

namespace A049688.P4025135909260073091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n - 1 + (n : ℤ)

end

end A049688.P4025135909260073091

noncomputable section

/-- A049688: a(n) = Sum_{i=0..n} T(i,n-i), array T as in A049687.

Offset 0, canonical program `A049688.P4025135909260073091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049688 (n : ℕ) : ℤ :=
  A049688.P4025135909260073091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049703.P3662777776691455142

`floor(A005598(n)/2)`
-/

namespace A049703.P3662777776691455142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005598 n : ℚ) / 2⌋

end

end A049703.P3662777776691455142

noncomputable section

/-- A049703: a(0) = 0; for n>0, a(n) = A005598(n)/2.

Offset 0, canonical program `A049703.P3662777776691455142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049703 (n : ℕ) : ℤ :=
  A049703.P3662777776691455142.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049727.P13553766468739596161

`round((A109004(n)+A003991(n+1))/2)`
-/

namespace A049727.P13553766468739596161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A109004 n + A003991 (n + 1) : ℚ) / 2)

end

end A049727.P13553766468739596161

noncomputable section

/-- A049727: Array T read by diagonals; T(i,j)=number of lattice points in triangle (possibly degenerate) with vertices (0,0),(i,0),(i,j).

Offset 0, canonical program `A049727.P13553766468739596161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049727 (n : ℕ) : ℤ :=
  A049727.P13553766468739596161.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049765.P18232666130430115916

`A048158(n+1)+A048151(n+1)`
-/

namespace A049765.P18232666130430115916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + A048151 (n + 1)

end

end A049765.P18232666130430115916

noncomputable section

/-- A049765: Triangular array T, read by rows: T(n,k) = (k mod n) + (n mod k), for k = 1..n and n >= 1.

Offset 1, canonical program `A049765.P18232666130430115916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049765 (n : ℕ) : ℤ :=
  A049765.P18232666130430115916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050169.P236062353889344769

`gcd(A074909(n), A135278(n))`
-/

namespace A050169.P236062353889344769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074909 n) (A135278 n)

end

end A050169.P236062353889344769

noncomputable section

/-- A050169: Triangle read by rows: T(n,k) = gcd(C(n,k), C(n,k-1)), n >= 1, 1 <= k <= n.

Offset 1, canonical program `A050169.P236062353889344769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050169 (n : ℕ) : ℤ :=
  (A050169.P236062353889344769.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050315.P12571342608120643020

`A325095(A088512(n))`
-/

namespace A050315.P12571342608120643020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325095 (A088512 n).toNat

end

end A050315.P12571342608120643020

noncomputable section

/-- A050315: Main diagonal of A050314.

Offset 0, canonical program `A050315.P12571342608120643020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050315 (n : ℕ) : ℤ :=
  A050315.P12571342608120643020.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050438.P7936861514397192088

`A002808(A050436(n+1))`
-/

namespace A050438.P7936861514397192088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A050436 (n + 1)).toNat

end

end A050438.P7936861514397192088

noncomputable section

/-- A050438: Fourth-order composites.

Offset 1, canonical program `A050438.P7936861514397192088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050438 (n : ℕ) : ℤ :=
  A050438.P7936861514397192088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050615.P3198622266931088097

`a(A004526(n))*A050614(n)` with `a(0)=1`
-/

namespace A050615.P3198622266931088097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * A050614 n

end

end A050615.P3198622266931088097

noncomputable section

/-- A050615: Products of distinct terms of Fibonacci(2^(i+2)): a(n) = Product_{i=0..floor(log_2(n+1))} F(2^(i+2))^bit(n,i).

Offset 0, canonical program `A050615.P3198622266931088097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A050615 (n : ℕ) : ℤ :=
  A050615.P3198622266931088097.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A050615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050703.P11636492065280123511

`eq[1, A319713(A001414(n+1)+n+1)]+1`
-/

namespace A050703.P11636492065280123511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319713 (A001414 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050703.P11636492065280123511

noncomputable section

/-- A050703: Numbers that when added to the sum of their prime factors (with multiplicity) become prime.

Offset 1, canonical program `A050703.P11636492065280123511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3808 terms. -/
def A050703 (n : ℕ) : ℤ :=
  (A050703.P11636492065280123511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3808 terms. -/
def A050703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050872.P5272709891617421659

`record[2^n-A000740(n+1)]`
-/

namespace A050872.P5272709891617421659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050872.P5272709891617421659

noncomputable section

/-- A050872: a(n) = (1/2)*A050871 (row sums of array T in A050870, periodic binary words).

Offset 0, canonical program `A050872.P5272709891617421659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A050872 (n : ℕ) : ℤ :=
  A050872.P5272709891617421659.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A050872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050874.P14166334163977989316

`eq[3, A037888(n+1)]+1`
-/

namespace A050874.P14166334163977989316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050874.P14166334163977989316

noncomputable section

/-- A050874: Binary numbers d(1)...d(j) such that d(i) = d(j+1-i) for all but 6 values of i.

Offset 1, canonical program `A050874.P14166334163977989316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A050874 (n : ℕ) : ℤ :=
  (A050874.P14166334163977989316.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A050874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051244.P1245185252982384370

`eq[1, A037888(n+1)]+1`
-/

namespace A051244.P1245185252982384370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051244.P1245185252982384370

noncomputable section

/-- A051244: Binary numbers d(1)...d(j) such that d(i) = d(j+1-i) for all but two values of i.

Offset 1, canonical program `A051244.P1245185252982384370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1061 terms. -/
def A051244 (n : ℕ) : ℤ :=
  (A051244.P1245185252982384370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1061 terms. -/
def A051244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051247.P10908392662730010603

`eq[2, A037888(n+1)]+1`
-/

namespace A051247.P10908392662730010603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051247.P10908392662730010603

noncomputable section

/-- A051247: Binary numbers d(1)...d(j) such that d(i) = d(j+1-i) for all but 4 values of i.

Offset 1, canonical program `A051247.P10908392662730010603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A051247 (n : ℕ) : ℤ :=
  (A051247.P10908392662730010603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A051247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051611.P8956593537962413529

`comp[A051533(n+1)-1]+1`
-/

namespace A051611.P8956593537962413529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A051611.P8956593537962413529

noncomputable section

/-- A051611: Numbers that are not the sum of 2 nonzero triangular numbers.

Offset 1, canonical program `A051611.P8956593537962413529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051611 (n : ℕ) : ℤ :=
  (A051611.P8956593537962413529.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051731.P11318043630102858095

`A000007(A048158(n+1))`
-/

namespace A051731.P11318043630102858095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A048158 (n + 1)).toNat

end

end A051731.P11318043630102858095

noncomputable section

/-- A051731: Triangle read by rows: T(n, k) = 1 if k divides n, T(n, k) = 0 otherwise, for 1 <= k <= n.

Offset 1, canonical program `A051731.P11318043630102858095`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051731 (n : ℕ) : ℤ :=
  A051731.P11318043630102858095.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051731.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052158.P11227404252294711369

`p?[A031924(n+1)%3*A031924(n+1)]`
-/

namespace A052158.P11227404252294711369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031924 (n + 1)) 3 * A031924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052158.P11227404252294711369

noncomputable section

/-- A052158: Lower prime of a difference of 6 (G-minor-6 primes) between consecutive primes of 6k+1 form.

Offset 1, canonical program `A052158.P11227404252294711369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3702 terms. -/
def A052158 (n : ℕ) : ℤ :=
  A052158.P11227404252294711369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3702 terms. -/
def A052158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053122.P8539817546190829993

`A078812(n)*A097807(n)`
-/

namespace A053122.P8539817546190829993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n * A097807 n

end

end A053122.P8539817546190829993

noncomputable section

/-- A053122: Triangle of coefficients of Chebyshev's S(n,x-2) = U(n,x/2-1) polynomials (exponents of x in increasing order).

Offset 0, canonical program `A053122.P8539817546190829993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053122 (n : ℕ) : ℤ :=
  A053122.P8539817546190829993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053125.P16228153998582547730

`A053123(n)*A262616(n)`
-/

namespace A053125.P16228153998582547730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053123 n * A262616 n

end

end A053125.P16228153998582547730

noncomputable section

/-- A053125: Triangle of coefficients of Chebyshev's U(n,2*x-1) polynomials (exponents of x in decreasing order).

Offset 0, canonical program `A053125.P16228153998582547730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8682 terms. -/
def A053125 (n : ℕ) : ℤ :=
  A053125.P16228153998582547730.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8682 terms. -/
def A053125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053321.P8026973044884624945

`Δ[A031924(n+1)]`
-/

namespace A053321.P8026973044884624945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053321.P8026973044884624945

noncomputable section

/-- A053321: First differences of A031924.

Offset 1, canonical program `A053321.P8026973044884624945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053321 (n : ℕ) : ℤ :=
  A053321.P8026973044884624945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053381.P7424849021433620728

`A209675(n+1)-1`
-/

namespace A053381.P7424849021433620728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209675 (n + 1) - 1

end

end A053381.P7424849021433620728

noncomputable section

/-- A053381: Maximal number of linearly independent smooth nowhere-zero vector fields on a (2n+1)-sphere.

Offset 0, canonical program `A053381.P7424849021433620728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053381 (n : ℕ) : ℤ :=
  A053381.P7424849021433620728.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053381.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053473.P5351835929457990970

`A053472(A016035(n+1)+1)`
-/

namespace A053473.P5351835929457990970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053472 (A016035 (n + 1) + 1).toNat

end

end A053473.P5351835929457990970

noncomputable section

/-- A053473: a(n) is the cototient of n (A051953) iterated 5 times.

Offset 1, canonical program `A053473.P5351835929457990970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053473 (n : ℕ) : ℤ :=
  A053473.P5351835929457990970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053800.P13951810941336330139

`2*A091773(n)-A053798(n)`
-/

namespace A053800.P13951810941336330139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091773 n - A053798 n

end

end A053800.P13951810941336330139

noncomputable section

/-- A053800: Number of basis partitions of n+25 with Durfee square size 5.

Offset 0, canonical program `A053800.P13951810941336330139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053800 (n : ℕ) : ℤ :=
  A053800.P13951810941336330139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054143.P11222314207562248900

`A204206(n+1)-A140513(n)`
-/

namespace A054143.P11222314207562248900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204206 (n + 1) - A140513 n

end

end A054143.P11222314207562248900

noncomputable section

/-- A054143: Triangular array T given by T(n,k) = Sum_{0 <= j <= i-n+k, n-k <= i <= n} C(i,j) for n >= 0 and 0 <= k <= n.

Offset 0, canonical program `A054143.P11222314207562248900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054143 (n : ℕ) : ℤ :=
  A054143.P11222314207562248900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054398.P13802336251738312636

`A276391(A057716(n+1))`
-/

namespace A054398.P13802336251738312636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A057716 (n + 1)).toNat

end

end A054398.P13802336251738312636

noncomputable section

/-- A054398: Define a sequence of 2^n X 2^n squares as follows: S_0 = [1], S_1 = [1,2; 3,4]; S_2 = [1,2,5,6; 3,4,7,8; 9,10,13,14; 11,12,15,16], etc.; sequence gives triangular array whose n-th row gives differences between successive columns of n-th square.

Offset 1, canonical program `A054398.P13802336251738312636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054398 (n : ℕ) : ℤ :=
  A054398.P13802336251738312636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054403.P10855021196834469793

`∪[A042988(n), A070884(n)]`
-/

namespace A054403.P10855021196834469793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P10855021196834469793

noncomputable section

/-- A054403: Result of third stage of sieve of Eratosthenes (after eliminating multiples of 2, 3 and 5).

Offset 1, canonical program `A054403.P10855021196834469793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054403 (n : ℕ) : ℤ :=
  (A054403.P10855021196834469793.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054473.P5529264726719540084

`A003082(n)-A173196(A110654(n))`
-/

namespace A054473.P5529264726719540084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003082 n - A173196 (A110654 n).toNat

end

end A054473.P5529264726719540084

noncomputable section

/-- A054473: Number of ways of numbering the faces of a cube with nonnegative integers so that the sum of the 6 numbers is n.

Offset 0, canonical program `A054473.P5529264726719540084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. -/
def A054473 (n : ℕ) : ℤ :=
  A054473.P5529264726719540084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. -/
def A054473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055201.P11625339162653954639

`eq[2, ∑{e}[A049632(n), #]]`
-/

namespace A055201.P11625339162653954639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055201.P11625339162653954639

noncomputable section

/-- A055201: Numbers k such that A005728(k) is prime.

Offset 1, canonical program `A055201.P11625339162653954639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A055201 (n : ℕ) : ℤ :=
  (A055201.P11625339162653954639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A055201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055609.P6314505780929029689

`∑[A050531(n+1)-1]-A002620(n+1)`
-/

namespace A055609.P6314505780929029689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002620 (n + 1)

end

end A055609.P6314505780929029689

noncomputable section

/-- A055609: Number of 3 X n binary matrices with no zero rows or columns, up to row and column permutation.

Offset 1, canonical program `A055609.P6314505780929029689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055609 (n : ℕ) : ℤ :=
  A055609.P6314505780929029689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055864.P3727447162581188383

`A003057(n+2)^A025581(n)*A076112(n+1)`
-/

namespace A055864.P3727447162581188383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) : ℚ) ^ (A025581 n : ℤ) * (A076112 (n + 1) : ℚ)

end

end A055864.P3727447162581188383

noncomputable section

/-- A055864: Coefficient triangle for certain polynomials.

Offset 1, canonical program `A055864.P3727447162581188383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A055864 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055864.P3727447162581188383.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A055864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056278.P6109967652677741343

`A000740(n+1)%(2^n)`
-/

namespace A056278.P6109967652677741343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000740 (n + 1)) (2 ^ n : ℤ)

end

end A056278.P6109967652677741343

noncomputable section

/-- A056278: Number of primitive (aperiodic) word structures of length n which contain exactly two different symbols.

Offset 1, canonical program `A056278.P6109967652677741343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A056278 (n : ℕ) : ℤ :=
  A056278.P6109967652677741343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A056278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056616.P529159178269024505

`A001316(n)*A055786(n)`
-/

namespace A056616.P529159178269024505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A055786 n

end

end A056616.P529159178269024505

noncomputable section

/-- A056616: Numerator of binomial(2n,n)/(2n+1).

Offset 0, canonical program `A056616.P529159178269024505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A056616 (n : ℕ) : ℤ :=
  A056616.P529159178269024505.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A056616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057094.P5134780784658940036

`A062157(A051162(n))*A284938(n+1)`
-/

namespace A057094.P5134780784658940036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A051162 n).toNat * A284938 (n + 1)

end

end A057094.P5134780784658940036

noncomputable section

/-- A057094: Coefficient triangle for certain polynomials (rising powers).

Offset 0, canonical program `A057094.P5134780784658940036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057094 (n : ℕ) : ℤ :=
  A057094.P5134780784658940036.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058296.P817858334841788841

`A162800(A004277(n))`
-/

namespace A058296.P817858334841788841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (A004277 n).toNat

end

end A058296.P817858334841788841

noncomputable section

/-- A058296: Average of consecutive primes.

Offset 1, canonical program `A058296.P817858334841788841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A058296 (n : ℕ) : ℤ :=
  A058296.P817858334841788841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A058296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058621.P18050841577591859695

`(A000984(n)-A126869(n)²)/2`
-/

namespace A058621.P18050841577591859695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n - A126869 n ^ 2 : ℚ) / 2

end

end A058621.P18050841577591859695

noncomputable section

/-- A058621: a(n) = 1/2*binomial(2*n,n) - (1+(-1)^n)/4*(binomial(n,floor(n/2)))^2.

Offset 0, canonical program `A058621.P18050841577591859695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A058621 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A058621.P18050841577591859695.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A058621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058622.P7570831990351998700

`A027306(n)-A126869(n)`
-/

namespace A058622.P7570831990351998700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n - A126869 n

end

end A058622.P7570831990351998700

noncomputable section

/-- A058622: a(n) = 2^(n-1) - ((1+(-1)^n)/4)*binomial(n, n/2).

Offset 0, canonical program `A058622.P7570831990351998700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126869, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058622 (n : ℕ) : ℤ :=
  A058622.P7570831990351998700.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126869, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058622.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059298.P2758492723283308098

`A009998(n)*A135278(n)`
-/

namespace A059298.P2758492723283308098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n * A135278 n

end

end A059298.P2758492723283308098

noncomputable section

/-- A059298: Triangle of idempotent numbers binomial(n,k)*k^(n-k), version 2.

Offset 0, canonical program `A059298.P2758492723283308098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3342 terms. -/
def A059298 (n : ℕ) : ℤ :=
  A059298.P2758492723283308098.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3342 terms. -/
def A059298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059300.P11191080546036925354

`A009999(n)*A074909(n)`
-/

namespace A059300.P11191080546036925354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 n * A074909 n

end

end A059300.P11191080546036925354

noncomputable section

/-- A059300: Triangle of idempotent numbers binomial(n,k)*k^(n-k), version 4.

Offset 0, canonical program `A059300.P11191080546036925354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3376 terms. -/
def A059300 (n : ℕ) : ℤ :=
  A059300.P11191080546036925354.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3376 terms. -/
def A059300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059894.P11516963689868861872

`A049773(n+1)+A036044(n+1)`
-/

namespace A059894.P11516963689868861872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (n + 1) + A036044 (n + 1)

end

end A059894.P11516963689868861872

noncomputable section

/-- A059894: Complement and reverse the order of all but the most significant bit in binary expansion of n. n = 1ab..yz -> 1ZY..BA = a(n), where A = 1-a, B = 1-b, ... .

Offset 1, canonical program `A059894.P11516963689868861872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059894 (n : ℕ) : ℤ :=
  A059894.P11516963689868861872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060141.P5689329236640195433

`A060140(n)+A060140(A066628(n))`
-/

namespace A060141.P5689329236640195433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060140 n + A060140 (A066628 n).toNat

end

end A060141.P5689329236640195433

noncomputable section

/-- A060141: Ordered set S defined by these rules: 0 and 1 are in S and if x is a nonzero number in S, then 3x and 9x+2 are in S.

Offset 0, canonical program `A060141.P5689329236640195433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060141 (n : ℕ) : ℤ :=
  A060141.P5689329236640195433.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060176.P5757415201403961736

`A104887(n+1)^A060175(n+1)`
-/

namespace A060176.P5757415201403961736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104887 (n + 1) : ℚ) ^ (A060175 (n + 1) : ℤ)

end

end A060176.P5757415201403961736

noncomputable section

/-- A060176: Square array A(n,k) = the largest power of k-th prime which divides n, read by falling antidiagonals.

Offset 1, canonical program `A060176.P5757415201403961736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060176 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060176.P5757415201403961736.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060191.P13050475962778099044

`∪[A031337(n+1), A031385(n+1)]`
-/

namespace A060191.P13050475962778099044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060191.P13050475962778099044

noncomputable section

/-- A060191: Union_i p(4i), p(4i+1), where p(k) = k-th prime.

Offset 0, canonical program `A060191.P13050475962778099044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060191 (n : ℕ) : ℤ :=
  (A060191.P13050475962778099044.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060640.P4210326819928191439

`∑{d}[n+1, A007425(#)*A029935((n+1)/#)]`
-/

namespace A060640.P4210326819928191439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A029935 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060640.P4210326819928191439

noncomputable section

/-- A060640: If n = Product p_i^e_i then a(n) = Product (1 + 2*p_i + 3*p_i^2 + ... + (e_i+1)*p_i^e_i).

Offset 1, canonical program `A060640.P4210326819928191439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060640 (n : ℕ) : ℤ :=
  A060640.P4210326819928191439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060724.P13091416846170327268

`∑{d}[n+1, A060648(#)]`
-/

namespace A060724.P13091416846170327268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d

end

end A060724.P13091416846170327268

noncomputable section

/-- A060724: Number of subgroups of the group C_n X C_n (where C_n is the cyclic group of order n).

Offset 1, canonical program `A060724.P13091416846170327268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060724 (n : ℕ) : ℤ :=
  A060724.P13091416846170327268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060992.P2954310029962380558

`(A018804(n+1)-A008619(A022998(n)))/2`
-/

namespace A060992.P2954310029962380558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) - A008619 (A022998 n).toNat : ℚ) / 2

end

end A060992.P2954310029962380558

noncomputable section

/-- A060992: a(n) = Sum_{gcd(i,j) | 0 < i <= j < n and i+j = n}.

Offset 1, canonical program `A060992.P2954310029962380558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A060992 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060992.P2954310029962380558.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A060992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061085.P5924400067001465222

`A019550(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061085.P5924400067001465222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019550 (n + 1) : ℚ) / 3

end

end A061085.P5924400067001465222

noncomputable section

/-- A061085: a(n) = A019550(n) / 3.

Offset 1, canonical program `A061085.P5924400067001465222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019550, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061085 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061085.P5924400067001465222.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019550, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061356.P733355491249960126

`A058127(A038722(n+1))*A135278(n)`
-/

namespace A061356.P733355491249960126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058127 (A038722 (n + 1)).toNat * A135278 n

end

end A061356.P733355491249960126

noncomputable section

/-- A061356: Triangle read by rows: T(n, k) is the number of labeled trees on n nodes with maximal node degree k (0 < k < n).

Offset 2, canonical program `A061356.P733355491249960126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A061356 (n : ℕ) : ℤ :=
  A061356.P733355491249960126.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A061356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062046.P5666097150901793030

`(A162800(n+1)-A000040(n+1))*A162735(n+1)`
-/

namespace A062046.P5666097150901793030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162800 (n + 1) - A000040 (n + 1)) * A162735 (n + 1)

end

end A062046.P5666097150901793030

noncomputable section

/-- A062046: Sum of even numbers between consecutive primes.

Offset 1, canonical program `A062046.P5666097150901793030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062046 (n : ℕ) : ℤ :=
  A062046.P5666097150901793030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062111.P7147497521445848615

`floor(A130321(n)/2*A134478(n))`
-/

namespace A062111.P7147497521445848615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130321 n : ℚ) / 2 * (A134478 n : ℚ)⌋

end

end A062111.P7147497521445848615

noncomputable section

/-- A062111: Upper-right triangle resulting from binomial transform calculation for nonnegative integers.

Offset 0, canonical program `A062111.P7147497521445848615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062111 (n : ℕ) : ℤ :=
  A062111.P7147497521445848615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062344.P9027567334916144000

`A034870(A063656(n))`
-/

namespace A062344.P9027567334916144000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (A063656 n).toNat

end

end A062344.P9027567334916144000

noncomputable section

/-- A062344: Triangle of binomial(2*n, k) with n >= k.

Offset 0, canonical program `A062344.P9027567334916144000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062344 (n : ℕ) : ℤ :=
  A062344.P9027567334916144000.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062362.P3475805551919053752

`floor(A018804(n+1)/(n+1))`
-/

namespace A062362.P3475805551919053752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018804 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A062362.P3475805551919053752

noncomputable section

/-- A062362: a(n) = floor of Sum_{ d divides n } phi(d)/d.

Offset 1, canonical program `A062362.P3475805551919053752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062362 (n : ℕ) : ℤ :=
  A062362.P3475805551919053752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062949.P13399345798369754227

`∑{d}[n+1, A018804(#)*A396336((n+1)/#)]`
-/

namespace A062949.P13399345798369754227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A396336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062949.P13399345798369754227

noncomputable section

/-- A062949: Multiplicative with a(p^e) = ((e+1)*p^(e+1)-(e+2)*p^e+1)/(p-1).

Offset 1, canonical program `A062949.P13399345798369754227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062949 (n : ℕ) : ℤ :=
  A062949.P13399345798369754227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063173.P15522695692086999954

`val(A002808(A004736(n+1)), A037126(n+1))`
-/

namespace A063173.P15522695692086999954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002808 (A004736 (n + 1)).toNat).toNat (A037126 (n + 1)).toNat

end

end A063173.P15522695692086999954

noncomputable section

/-- A063173: Prime-composite array T(m,n): highest power of the n-th prime that divides the m-th composite, read by antidiagonals.

Offset 1, canonical program `A063173.P15522695692086999954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063173 (n : ℕ) : ℤ :=
  (A063173.P15522695692086999954.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063711.P1024451208163588555

`floor(A068606(n)/A077028(n))`
-/

namespace A063711.P1024451208163588555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A068606 n : ℚ) / (A077028 n : ℚ)⌋

end

end A063711.P1024451208163588555

noncomputable section

/-- A063711: Table of bits required for product of n- and k-bit nonnegative numbers read by antidiagonals.

Offset 0, canonical program `A063711.P1024451208163588555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063711 (n : ℕ) : ℤ :=
  A063711.P1024451208163588555.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063754.P8530571032129736586

`A018804(n+1)-A029935(n+1)`
-/

namespace A063754.P8530571032129736586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - A029935 (n + 1)

end

end A063754.P8530571032129736586

noncomputable section

/-- A063754: Dirichlet convolution of totient and cototient.

Offset 1, canonical program `A063754.P8530571032129736586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A029935, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A063754 (n : ℕ) : ℤ :=
  A063754.P8530571032129736586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A029935, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A063754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064355.P15803301992756024606

`2/(n+1)*A011946(n+1)`
-/

namespace A064355.P15803301992756024606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A011946 (n + 1) : ℚ)

end

end A064355.P15803301992756024606

noncomputable section

/-- A064355: Number of subsets of {1,2,..n} that sum to 1 mod n.

Offset 1, canonical program `A064355.P15803301992756024606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A064355 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064355.P15803301992756024606.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A064355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064578.P17070496754002574851

`A038722(A064789(n+1))`
-/

namespace A064578.P17070496754002574851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A064789 (n + 1)).toNat

end

end A064578.P17070496754002574851

noncomputable section

/-- A064578: Inverse permutation to A057027.

Offset 1, canonical program `A064578.P17070496754002574851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064578 (n : ℕ) : ℤ :=
  A064578.P17070496754002574851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064719.P7995491773970243797

`comp[A064720(n+1)-1]+1`
-/

namespace A064719.P7995491773970243797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064720 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A064719.P7995491773970243797

noncomputable section

/-- A064719: A Beatty sequence for 3^i + 3^-i + 1.

Offset 1, canonical program `A064719.P7995491773970243797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064719 (n : ℕ) : ℤ :=
  (A064719.P7995491773970243797.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065305.P13588559578432600534

`A001281(A116366(n+1))`
-/

namespace A065305.P13588559578432600534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A116366 (n + 1)).toNat

end

end A065305.P13588559578432600534

noncomputable section

/-- A065305: Triangular array giving means of two odd primes: T(n,k) = (n-th prime + k-th prime)/2, n >= k >= 2.

Offset 2, canonical program `A065305.P13588559578432600534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A065305 (n : ℕ) : ℤ :=
  A065305.P13588559578432600534.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A065305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066122.P13442476758303456141

`eq[A178226(A055944(n))+1, A178226(n)]`
-/

namespace A066122.P13442476758303456141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A055944 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066122.P13442476758303456141

noncomputable section

/-- A066122: Numbers that in base 2 need one 'Reverse and Add' step to reach a palindrome.

Offset 1, canonical program `A066122.P13442476758303456141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A066122 (n : ℕ) : ℤ :=
  (A066122.P13442476758303456141.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A066122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066520.P7437655284551336730

`A066490(n+1)-A066339(n+1)`
-/

namespace A066520.P7437655284551336730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (n + 1) - A066339 (n + 1)

end

end A066520.P7437655284551336730

noncomputable section

/-- A066520: Number of primes of the form 4m+3 <= n minus number of primes of the form 4m+1 <= n.

Offset 1, canonical program `A066520.P7437655284551336730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066339, A066490, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066520 (n : ℕ) : ℤ :=
  A066520.P7437655284551336730.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066339, A066490, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066769.P5759767954518866715

`∑{d}[n+1, A034748(#)]`
-/

namespace A066769.P5759767954518866715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034748 d

end

end A066769.P5759767954518866715

noncomputable section

/-- A066769: a(n) = Sum_{d|n} d*Fibonacci(n/d).

Offset 1, canonical program `A066769.P5759767954518866715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A066769 (n : ℕ) : ℤ :=
  A066769.P5759767954518866715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A066769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067507.P3184889550139569509

`A000079(A118730(n+1))`
-/

namespace A067507.P3184889550139569509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A118730 (n + 1)).toNat

end

end A067507.P3184889550139569509

noncomputable section

/-- A067507: Powers of 2 with even digit sum.

Offset 1, canonical program `A067507.P3184889550139569509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A067507 (n : ℕ) : ℤ :=
  A067507.P3184889550139569509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A067507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067692.P5856251294692584807

`∑{d}[n+1, A034676(#)*A060872((n+1)/#)]`
-/

namespace A067692.P5856251294692584807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034676 d * A060872 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067692.P5856251294692584807

noncomputable section

/-- A067692: a(n) = Sum_{0 < d <= t <= n, d|n, t|n} d*t.

Offset 1, canonical program `A067692.P5856251294692584807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067692 (n : ℕ) : ℤ :=
  A067692.P5856251294692584807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067994.P15225735328066793155

`A057077(n)*A126869(n)*A081123(n)`
-/

namespace A067994.P15225735328066793155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A126869 n * A081123 n

end

end A067994.P15225735328066793155

noncomputable section

/-- A067994: Hermite numbers.

Offset 0, canonical program `A067994.P15225735328066793155`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126869, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067994 (n : ℕ) : ℤ :=
  A067994.P15225735328066793155.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126869, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068361.P16417839117735108684

`eq[A077063(n+1), A162800(n)]`
-/

namespace A068361.P16417839117735108684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068361.P16417839117735108684

noncomputable section

/-- A068361: Numbers n such that the number of squarefree numbers between prime(n) and prime(n+1) = prime(n+1)-prime(n)-1.

Offset 1, canonical program `A068361.P16417839117735108684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A068361 (n : ℕ) : ℤ :=
  (A068361.P16417839117735108684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A068361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069193.P1502617142194648967

`∑{d}[n+1, A018804(#)*A397412((n+1)/#)]`
-/

namespace A069193.P1502617142194648967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A397412 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069193.P1502617142194648967

noncomputable section

/-- A069193: a(n) = Sum_{d|n} d*phi(n)/phi(d).

Offset 1, canonical program `A069193.P1502617142194648967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069193 (n : ℕ) : ℤ :=
  A069193.P1502617142194648967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070288.P3694749558382140942

`∑{p}[n+1, A062799((n+1)/#)]`
-/

namespace A070288.P3694749558382140942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A062799 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A070288.P3694749558382140942

noncomputable section

/-- A070288: a(n) = Sum_{d|n} omega(d)*omega(n/d).

Offset 1, canonical program `A070288.P3694749558382140942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070288 (n : ℕ) : ℤ :=
  A070288.P3694749558382140942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070801.P11131496068344311826

`A060265(A368582(n+2))`
-/

namespace A070801.P11131496068344311826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (A368582 (n + 2)).toNat

end

end A070801.P11131496068344311826

noncomputable section

/-- A070801: Largest prime <= sigma(n): a(n) = prevprime(sigma(n)), where prevprime(n) = A007917(n), the largest prime less than or equal to n.

Offset 2, canonical program `A070801.P11131496068344311826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5878 terms. -/
def A070801 (n : ℕ) : ℤ :=
  A070801.P11131496068344311826.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5878 terms. -/
def A070801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071124.P14915334261569632399

`∩[A071320(n+1)-1, A071320(n+1)]`
-/

namespace A071124.P14915334261569632399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071320 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071124.P14915334261569632399

noncomputable section

/-- A071124: Least of five consecutive numbers which are cubefree and not squarefree, i.e., {k, k+1, k+2, k+3, k+4} are in A067259.

Offset 1, canonical program `A071124.P14915334261569632399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A071124 (n : ℕ) : ℤ :=
  (A071124.P14915334261569632399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A071124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071210.P8629755798481492192

`A058127(A038722(n+1))*A135278(A014132(n+1))`
-/

namespace A071210.P8629755798481492192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058127 (A038722 (n + 1)).toNat * A135278 (A014132 (n + 1)).toNat

end

end A071210.P8629755798481492192

noncomputable section

/-- A071210: Triangular array T(n,k) read by rows, giving number of labeled free trees such that the root is smaller than all its children, with respect to the number n of vertices and to the degree k of the root.

Offset 1, canonical program `A071210.P8629755798481492192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A071210 (n : ℕ) : ℤ :=
  A071210.P8629755798481492192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A071210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071561.P9594246998475944590

`comp[A100345(n)]`
-/

namespace A071561.P9594246998475944590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A071561.P9594246998475944590

noncomputable section

/-- A071561: Numbers with no middle divisors (cf. A071090).

Offset 1, canonical program `A071561.P9594246998475944590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071561 (n : ℕ) : ℤ :=
  (A071561.P9594246998475944590.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071752.P14853445562846689292

`A071751(n+1)-A071731(n)`
-/

namespace A071752.P14853445562846689292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071751 (n + 1) - A071731 n

end

end A071752.P14853445562846689292

noncomputable section

/-- A071752: Expansion of (1+x^4*C^3)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071752.P14853445562846689292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071752 (n : ℕ) : ℤ :=
  A071752.P14853445562846689292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071839.P2169769857197006636

`A066339(n+1)-A071841(n+1)`
-/

namespace A071839.P2169769857197006636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (n + 1) - A071841 (n + 1)

end

end A071839.P2169769857197006636

noncomputable section

/-- A071839: Number of primes == 1 mod 8 <= n.

Offset 1, canonical program `A071839.P2169769857197006636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071839 (n : ℕ) : ℤ :=
  A071839.P2169769857197006636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072473.P3407629193092000128

`A066066(n+1)+A000040(n+1)`
-/

namespace A072473.P3407629193092000128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1) + A000040 (n + 1)

end

end A072473.P3407629193092000128

noncomputable section

/-- A072473: a(n) = prime(2*n) - prime(n).

Offset 1, canonical program `A072473.P3407629193092000128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A066066, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072473 (n : ℕ) : ℤ :=
  A072473.P3407629193092000128.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A066066, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072648.P3576187098403481079

`floor(log2(A048297(n)))+1`
-/

namespace A072648.P3576187098403481079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A048297 n).toNat + 1

end

end A072648.P3576187098403481079

noncomputable section

/-- A072648: a(n) = [log_{Phi}(n*sqrt(5))], where log_{Phi} is logarithm in the base Phi ( = (sqrt(5)+1)/2) and [] stands for the floor function.

Offset 1, canonical program `A072648.P3576187098403481079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072648 (n : ℕ) : ℤ :=
  (A072648.P3576187098403481079.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072649.P5526688523799458754

`floor(log2(A048297(n)+1))`
-/

namespace A072649.P5526688523799458754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A048297 n + 1).toNat

end

end A072649.P5526688523799458754

noncomputable section

/-- A072649: n occurs Fibonacci(n) times (cf. A000045).

Offset 1, canonical program `A072649.P5526688523799458754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072649 (n : ℕ) : ℤ :=
  (A072649.P5526688523799458754.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072783.P12718214040334104581

`Δ[A059841(A051777(n+1))]%A010766(n+1)`
-/

namespace A072783.P12718214040334104581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A051777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A010766 (n + 1))

end

end A072783.P12718214040334104581

noncomputable section

/-- A072783: Differences between A072740 and A072736.

Offset 0, canonical program `A072783.P12718214040334104581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072783 (n : ℕ) : ℤ :=
  A072783.P12718214040334104581.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073022.P10904957160869023436

`or(1, A055499(n))`
-/

namespace A073022.P10904957160869023436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055499 n)

end

end A073022.P10904957160869023436

noncomputable section

/-- A073022: Each term is the smallest prime > the sum of the previous 2 terms.

Offset 0, canonical program `A073022.P10904957160869023436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A073022 (n : ℕ) : ℤ :=
  A073022.P10904957160869023436.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A073022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073274.P9123969946531876833

`A000040(n+2)-A073273(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073274.P9123969946531876833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A073273 (n + 1)

end

end A073274.P9123969946531876833

noncomputable section

/-- A073274: a(n) = A000040(n+1) - A073273(n).

Offset 1, canonical program `A073274.P9123969946531876833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A073273, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073274 (n : ℕ) : ℤ :=
  A073274.P9123969946531876833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A073273, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073433.P3593679991118794542

`A071259(A073432(n+1))`
-/

namespace A073433.P3593679991118794542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071259 (A073432 (n + 1)).toNat

end

end A073433.P3593679991118794542

noncomputable section

/-- A073433: Value of [p(n)+c(n)]/2 when it is an integer; p(n) is n-th prime, c(n) is n-th composite.

Offset 1, canonical program `A073433.P3593679991118794542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4315 terms. -/
def A073433 (n : ℕ) : ℤ :=
  A073433.P3593679991118794542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4315 terms. -/
def A073433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073791.P4489210871171678278

`-A320283(2*n)/2`
-/

namespace A073791.P4489210871171678278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A320283 (2 * n) : ℚ) / 2)

end

end A073791.P4489210871171678278

noncomputable section

/-- A073791: Replace 4^k with (-4)^k in base 4 expansion of n.

Offset 0, canonical program `A073791.P4489210871171678278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A073791 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073791.P4489210871171678278.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A073791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074722.P16633389370037987810

`∑{d}[n+1, A007428(#)*A332844((n+1)/#)]`
-/

namespace A074722.P16633389370037987810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A332844 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P16633389370037987810

noncomputable section

/-- A074722: a(n) = Sum_{d divides n} phi(n/d)*(-1)^bigomega(d).

Offset 1, canonical program `A074722.P16633389370037987810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074722 (n : ℕ) : ℤ :=
  A074722.P16633389370037987810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074766.P17996081687479392311

`A066066(n+1)-(n+1)`
-/

namespace A074766.P17996081687479392311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1) - (n + 1 : ℤ)

end

end A074766.P17996081687479392311

noncomputable section

/-- A074766: a(n) = prime(2n) - 2*prime(n) - n.

Offset 1, canonical program `A074766.P17996081687479392311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074766 (n : ℕ) : ℤ :=
  A074766.P17996081687479392311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074842.P6483684940166264007

`n+1+lcm(A020338(n+1), A172503(n+1))`
-/

namespace A074842.P6483684940166264007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + Int.lcm (A020338 (n + 1)) (A172503 (n + 1))

end

end A074842.P6483684940166264007

noncomputable section

/-- A074842: Triplets: base 10 representation is the juxtaposition of three identical strings.

Offset 1, canonical program `A074842.P6483684940166264007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074842 (n : ℕ) : ℤ :=
  (A074842.P6483684940166264007.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075084.P2425940748409505263

`2-A035250(abs(1-n)+2)+n`
-/

namespace A075084.P2425940748409505263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A035250 (|1 - (n : ℤ)| + 2).toNat + (n : ℤ)

end

end A075084.P2425940748409505263

noncomputable section

/-- A075084: Number of composite numbers c with n <= c <= 2*n.

Offset 1, canonical program `A075084.P2425940748409505263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075084 (n : ℕ) : ℤ :=
  A075084.P2425940748409505263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075113.P9350693082027850183

`n*(n+1)/2-A048702(n)`
-/

namespace A075113.P9350693082027850183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) / 2) - (A048702 n : ℚ)

end

end A075113.P9350693082027850183

noncomputable section

/-- A075113: a(n) = A000217(n) - A048702(n).

Offset 0, canonical program `A075113.P9350693082027850183`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075113 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075113.P9350693082027850183.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075113.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075285.P9659011496630236086

`∩[A072568(n+1), A142342(n+1)]`
-/

namespace A075285.P9659011496630236086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075285.P9659011496630236086

noncomputable section

/-- A075285: Interprimes which are of the form s*prime, s=10.

Offset 1, canonical program `A075285.P9659011496630236086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A075285 (n : ℕ) : ℤ :=
  (A075285.P9659011496630236086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A075285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075295.P568193268372435100

`∩[2*A142342(n+1), A072568(n+1)]`
-/

namespace A075295.P568193268372435100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A142342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075295.P568193268372435100

noncomputable section

/-- A075295: Interprimes which are of the form s*prime, s=20.

Offset 1, canonical program `A075295.P568193268372435100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A075295 (n : ℕ) : ℤ :=
  (A075295.P568193268372435100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A075295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075438.P6472558506111138179

`A034867(n)%2`
-/

namespace A075438.P6472558506111138179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034867 n) 2

end

end A075438.P6472558506111138179

noncomputable section

/-- A075438: Triangle read by rows giving successive iterations of the Rule 60 elementary cellular automaton starting with a single ON cell where row n is of length 2n+1.

Offset 0, canonical program `A075438.P6472558506111138179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075438 (n : ℕ) : ℤ :=
  A075438.P6472558506111138179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075699.P16773195510854210975

`A060715(n+1)+A035250(2*(n+1))`
-/

namespace A075699.P16773195510854210975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (n + 1) + A035250 (2 * (n + 1))

end

end A075699.P16773195510854210975

noncomputable section

/-- A075699: Number of primes in the interval (n,4n].

Offset 1, canonical program `A075699.P16773195510854210975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075699 (n : ℕ) : ℤ :=
  A075699.P16773195510854210975.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075994.P16345749398604770429

`A010766(record[n*(1-A101688(n))]+1)`
-/

namespace A075994.P16345749398604770429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A101688 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A075994.P16345749398604770429

noncomputable section

/-- A075994: Irregular triangle T(n,k) = floor(n/k) for k = 1, 2, ..., floor(n/2) for n>=2 and T(1,1)=1.

Offset 1, canonical program `A075994.P16345749398604770429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A075994 (n : ℕ) : ℤ :=
  A075994.P16345749398604770429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A075994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076238.P4331447480138343978

`A050436(n+1)%Δ[A053767(n)]`
-/

namespace A076238.P4331447480138343978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050436 (n + 1)) (f1 (n + 1) - f1 n)

end

end A076238.P4331447480138343978

noncomputable section

/-- A076238: a(n) = A050436(n) mod A002808(n).

Offset 1, canonical program `A076238.P4331447480138343978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076238 (n : ℕ) : ℤ :=
  A076238.P4331447480138343978.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076239.P17511644699145666000

`A050436(n+1)%(n+1)`
-/

namespace A076239.P17511644699145666000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050436 (n + 1)) (n + 1 : ℤ)

end

end A076239.P17511644699145666000

noncomputable section

/-- A076239: Remainder when 3rd-order composite ccc(n) = A050436(n) is divided by n.

Offset 1, canonical program `A076239.P17511644699145666000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076239 (n : ℕ) : ℤ :=
  A076239.P17511644699145666000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076482.P17606031891566803029

`A007778(A002262(n))*A173333(n+1)`
-/

namespace A076482.P17606031891566803029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 (A002262 n).toNat * A173333 (n + 1)

end

end A076482.P17606031891566803029

noncomputable section

/-- A076482: Triangle with T(n,k)=n!*(k-1)^k/k! where 1<=k<=n.

Offset 1, canonical program `A076482.P17606031891566803029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. -/
def A076482 (n : ℕ) : ℤ :=
  A076482.P17606031891566803029.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. -/
def A076482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077070.P6224506992872465520

`A007814(A144816(n))`
-/

namespace A077070.P6224506992872465520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A144816 n).toNat

end

end A077070.P6224506992872465520

noncomputable section

/-- A077070: Triangle read by rows: T(n,k) is the power of 2 in denominator of coefficients of Legendre polynomials, where n >= 0 and 0 <= k <= n.

Offset 0, canonical program `A077070.P6224506992872465520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077070 (n : ℕ) : ℤ :=
  A077070.P6224506992872465520.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077070.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077133.P4837546803455532653

`A077126(n+1)-A077131(n+1)`
-/

namespace A077133.P4837546803455532653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077126 (n + 1) - A077131 (n + 1)

end

end A077133.P4837546803455532653

noncomputable section

/-- A077133: a(n) is the difference between the sum of the first n even-indexed primes and the sum of the first n odd-indexed primes.

Offset 1, canonical program `A077133.P4837546803455532653`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077126, A077131, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077133 (n : ℕ) : ℤ :=
  A077133.P4837546803455532653.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077126, A077131, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078462.P9783510630940783236

`∑[A035185(n+1)]`
-/

namespace A078462.P9783510630940783236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078462.P9783510630940783236

noncomputable section

/-- A078462: Partial sums of A035185.

Offset 1, canonical program `A078462.P9783510630940783236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078462 (n : ℕ) : ℤ :=
  A078462.P9783510630940783236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078750.P14596410711989328405

`A022340(∑[char[A003714(n)]])`
-/

namespace A078750.P14596410711989328405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078750.P14596410711989328405

noncomputable section

/-- A078750: Least m not less than 2*n such that m + n = m OR n (logical 'or', bitwise).

Offset 1, canonical program `A078750.P14596410711989328405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078750 (n : ℕ) : ℤ :=
  A078750.P14596410711989328405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078921.P6587148150982283279

`A077012(n+1)*A097807(n)`
-/

namespace A078921.P6587148150982283279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077012 (n + 1) * A097807 n

end

end A078921.P6587148150982283279

noncomputable section

/-- A078921: Signed variant of A077012.

Offset 1, canonical program `A078921.P6587148150982283279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A078921 (n : ℕ) : ℤ :=
  A078921.P6587148150982283279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A078921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079080.P15914601799176188642

`gcd(Δ[A061802(n)], A079079(n+1))`
-/

namespace A079080.P15914601799176188642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A079079 (n + 1))

end

end A079080.P15914601799176188642

noncomputable section

/-- A079080: a(n) = gcd((prime(n)+1)*(prime(n+1)+1)/4, prime(n)*prime(n+1)+1).

Offset 1, canonical program `A079080.P15914601799176188642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079080 (n : ℕ) : ℤ :=
  (A079080.P15914601799176188642.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079087.P813897670618904462

`A067132(A079079(n+1)/A079093(n+1))`
-/

namespace A079087.P813897670618904462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (SequenceMachineLib.roundAway ((A079079 (n + 1) : ℚ) / (A079093 (n + 1) : ℚ))).toNat

end

end A079087.P813897670618904462

noncomputable section

/-- A079087: Maximum exponent in prime factorization of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079087.P813897670618904462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A079087 (n : ℕ) : ℤ :=
  A079087.P813897670618904462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A079087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079088.P12492287075999573196

`∏{e}[A079079(n+1), #+1]`
-/

namespace A079088.P12492287075999573196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A079088.P12492287075999573196

noncomputable section

/-- A079088: Number of divisors of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079088.P12492287075999573196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. -/
def A079088 (n : ℕ) : ℤ :=
  (A079088.P12492287075999573196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. -/
def A079088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079252.P16700383346931884610

`A079251(A122553(n)+n)`
-/

namespace A079252.P16700383346931884610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (A122553 n + (n : ℤ)).toNat

end

end A079252.P16700383346931884610

noncomputable section

/-- A079252: Even numbers not in A079000.

Offset 1, canonical program `A079252.P16700383346931884610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079252 (n : ℕ) : ℤ :=
  A079252.P16700383346931884610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079280.P5015006494245718984

`A126869(A004442(n))+A116406(n)`
-/

namespace A079280.P5015006494245718984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A004442 n).toNat + A116406 n

end

end A079280.P5015006494245718984

noncomputable section

/-- A079280: Number of log-concave paths of length n starting from the origin (0,0) with steps from {N=(0,1), E=(1,0) and S=(0,-1)} that stay in the second octant and never touch the line y=x except possibly at the beginning or the end.

Offset 1, canonical program `A079280.P5015006494245718984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A079280 (n : ℕ) : ℤ :=
  A079280.P5015006494245718984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A079280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079702.P8447432609584050613

`A053177(n+1)-1`
-/

namespace A079702.P8447432609584050613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1) - 1

end

end A079702.P8447432609584050613

noncomputable section

/-- A079702: Numbers 2p where p is prime and 2p + 1 is composite.

Offset 1, canonical program `A079702.P8447432609584050613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079702 (n : ℕ) : ℤ :=
  A079702.P8447432609584050613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080232.P1823079129802796691

`A259525(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A080232.P1823079129802796691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A259525 (n - 1) - a (n - 1)

end

end A080232.P1823079129802796691

noncomputable section

/-- A080232: Triangle T(n,k) of differences of pairs of consecutive terms of triangle A071919.

Offset 0, canonical program `A080232.P1823079129802796691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080232 (n : ℕ) : ℤ :=
  A080232.P1823079129802796691.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080418.P2070778107889241742

`abs(A325191(n)+A097807(n))`
-/

namespace A080418.P2070778107889241742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325191 n + A097807 n|

end

end A080418.P2070778107889241742

noncomputable section

/-- A080418: Generalized Pascal triangle.

Offset 1, canonical program `A080418.P2070778107889241742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080418 (n : ℕ) : ℤ :=
  A080418.P2070778107889241742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081205.P11049441091641514256

`A081181(n+1)-A081204(n+1)`
-/

namespace A081205.P11049441091641514256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081181 (n + 1) - A081204 (n + 1)

end

end A081205.P11049441091641514256

noncomputable section

/-- A081205: Staircase on Pascal's triangle.

Offset 0, canonical program `A081205.P11049441091641514256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A081205 (n : ℕ) : ℤ :=
  A081205.P11049441091641514256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A081205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082233.P3094481268705208207

`A094727(A056023(n+1))`
-/

namespace A082233.P3094481268705208207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A056023 (n + 1)).toNat

end

end A082233.P3094481268705208207

noncomputable section

/-- A082233: Square array T(n,k) = 2*n + k, read by antidiagonals in a zigzag fashion, n >= 0 and k >= 1.

Offset 0, canonical program `A082233.P3094481268705208207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082233 (n : ℕ) : ℤ :=
  A082233.P3094481268705208207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082234.P13338439830342871460

`A036561(A056023(n+1)-1)`
-/

namespace A082234.P13338439830342871460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A056023 (n + 1) - 1).toNat

end

end A082234.P13338439830342871460

noncomputable section

/-- A082234: In the following square array numbers are entered like this A(1,1), A(1,2), A(2,1), A(3,1), A(2,2), A(1,3), A(1,4), A(2,3), A(3,2), A(4,1), A(5,1), A(4,2), ... such that every entry is the geometric mean of the two diametrically opposite neighbors (wherever a pair exists).

Offset 1, canonical program `A082234.P13338439830342871460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082234 (n : ℕ) : ℤ :=
  A082234.P13338439830342871460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082246.P15530245581393664996

`p?[A034964(n+3)+A001043(n+1)]`
-/

namespace A082246.P15530245581393664996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 3) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082246.P15530245581393664996

noncomputable section

/-- A082246: Primes that are the sum of 7 consecutive primes.

Offset 1, canonical program `A082246.P15530245581393664996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1793 terms. -/
def A082246 (n : ℕ) : ℤ :=
  A082246.P15530245581393664996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1793 terms. -/
def A082246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082267.P3341460620143484072

`A251749(A080513(n)+8)`
-/

namespace A082267.P3341460620143484072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251749 (A080513 n + 8).toNat

end

end A082267.P3341460620143484072

noncomputable section

/-- A082267: Number of palindromes that use nonzero digits and have a digit sum of n.

Offset 1, canonical program `A082267.P3341460620143484072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A082267 (n : ℕ) : ℤ :=
  A082267.P3341460620143484072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A082267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082853.P1640668448501088657

`n-A082852(n)`
-/

namespace A082853.P1640668448501088657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082852 n

end

end A082853.P1640668448501088657

noncomputable section

/-- A082853: Integers 0 to Catalan(n)-1 followed by integers 0 to Catalan(n+1)-1 etc.

Offset 0, canonical program `A082853.P1640668448501088657`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082853 (n : ℕ) : ℤ :=
  A082853.P1640668448501088657.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082853.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082985.P5187167430507608304

`abs(2*A053123(n))-A054142(n)`
-/

namespace A082985.P5187167430507608304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A053123 n| - A054142 n

end

end A082985.P5187167430507608304

noncomputable section

/-- A082985: Coefficient table for Chebyshev's U(2*n,x) polynomial expanded in decreasing powers of (-4*(1-x^2)).

Offset 0, canonical program `A082985.P5187167430507608304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082985 (n : ℕ) : ℤ :=
  A082985.P5187167430507608304.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083037.P6801730865427598023

`-A123737(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083037.P6801730865427598023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A123737 (n + 1)

end

end A083037.P6801730865427598023

noncomputable section

/-- A083037: a(n)=2*A083036(n)-n. Also -A123737(n).

Offset 1, canonical program `A083037.P6801730865427598023`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083037 (n : ℕ) : ℤ :=
  A083037.P6801730865427598023.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083037.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084054.P2245921812110544947

`A056142(∑[log2(gcd(2, n))])%5`
-/

namespace A084054.P2245921812110544947
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056142 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) 5

end

end A084054.P2245921812110544947

noncomputable section

/-- A084054: 5*n digit-reversed mod 5.

Offset 2, canonical program `A084054.P2245921812110544947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084054 (n : ℕ) : ℤ :=
  A084054.P2245921812110544947.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084197.P18366855963661557325

`A000040(lt[1, (n+1)*A084196(n+1)]+1)`
-/

namespace A084197.P18366855963661557325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A084196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A084197.P18366855963661557325

noncomputable section

/-- A084197: Primes p such that there exists at least one prime q

Offset 1, canonical program `A084197.P18366855963661557325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8443 terms. -/
def A084197 (n : ℕ) : ℤ :=
  A084197.P18366855963661557325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8443 terms. -/
def A084197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084198.P914758902079436018

`A000040(eq[1, A084196(n+1)]+1)`
-/

namespace A084198.P914758902079436018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A084198.P914758902079436018

noncomputable section

/-- A084198: Primes p such that there exists exactly one prime q

Offset 1, canonical program `A084198.P914758902079436018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1013 terms. -/
def A084198 (n : ℕ) : ℤ :=
  A084198.P914758902079436018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1013 terms. -/
def A084198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084349.P2302578402751710961

`∩[A005117(n+1), A018825(n+1)]`
-/

namespace A084349.P2302578402751710961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084349.P2302578402751710961

noncomputable section

/-- A084349: Squarefree numbers that are not the sum of two squares.

Offset 1, canonical program `A084349.P2302578402751710961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6241 terms. -/
def A084349 (n : ℕ) : ℤ :=
  (A084349.P2302578402751710961.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6241 terms. -/
def A084349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084682.P5210259654388311984

`filter[A179082(n+1), A254651(#)]`
-/

namespace A084682.P5210259654388311984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A084682.P5210259654388311984

noncomputable section

/-- A084682: Even evil numbers with an even digital sum.

Offset 1, canonical program `A084682.P5210259654388311984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5013 terms. -/
def A084682 (n : ℕ) : ℤ :=
  A084682.P5210259654388311984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5013 terms. -/
def A084682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085407.P8456139182409742609

`Δ[A022340(n)]-1`
-/

namespace A085407.P8456139182409742609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A085407.P8456139182409742609

noncomputable section

/-- A085407: Runs of zeros in binomial(3k+2,k+1)/(3k+2) modulo 2 (A085405).

Offset 1, canonical program `A085407.P8456139182409742609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085407 (n : ℕ) : ℤ :=
  A085407.P8456139182409742609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085424.P14560680484762153167

`A007302(n+1)-A085425(n+1)`
-/

namespace A085424.P14560680484762153167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (n + 1) - A085425 (n + 1)

end

end A085424.P14560680484762153167

noncomputable section

/-- A085424: Number of ones in the symmetric signed digit expansion of n with q=2 (i.e., the representation of n in the (-1,0,1)_2 number system).

Offset 1, canonical program `A085424.P14560680484762153167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085424 (n : ℕ) : ℤ :=
  A085424.P14560680484762153167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085840.P17865219254584702468

`A059268(n)²*A091042(n)`
-/

namespace A085840.P17865219254584702468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A091042 n

end

end A085840.P17865219254584702468

noncomputable section

/-- A085840: Triangle read by rows: T(n,m) = 4^m * (2*n+1)! / ( (2*n - 2*m + 1)! * (2*m)! ), row n has n+1 terms.

Offset 0, canonical program `A085840.P17865219254584702468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5738 terms. -/
def A085840 (n : ℕ) : ℤ :=
  A085840.P17865219254584702468.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5738 terms. -/
def A085840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085945.P16038888341819621342

`∑[A000740(n+1)]`
-/

namespace A085945.P16038888341819621342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085945.P16038888341819621342

noncomputable section

/-- A085945: Number of subsets of {1,2,...,n} with relatively prime elements.

Offset 1, canonical program `A085945.P16038888341819621342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A085945 (n : ℕ) : ℤ :=
  A085945.P16038888341819621342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A085945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086767.P14820350050543062152

`A004731(n+1)/A004730(n)`
-/

namespace A086767.P14820350050543062152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004731 (n + 1) : ℚ) / (A004730 n : ℚ)

end

end A086767.P14820350050543062152

noncomputable section

/-- A086767: Last coefficient of the last term in the numerator of the simplified expansion of the solutions of FLT for n=2 for FLT n=1,2,3,..

Offset 0, canonical program `A086767.P14820350050543062152`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004730, A004731, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086767 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086767.P14820350050543062152.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004730, A004731, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086767.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086932.P4579175929926167128

`lcm(A060968(n+1), A285193(n))`
-/

namespace A086932.P4579175929926167128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060968 (n + 1)) (A285193 n)

end

end A086932.P4579175929926167128

noncomputable section

/-- A086932: Number of non-congruent solutions of x^2 + y^2 == -1 (mod n).

Offset 1, canonical program `A086932.P4579175929926167128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086932 (n : ℕ) : ℤ :=
  (A086932.P4579175929926167128.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087010.P3140519343605400597

`A066339(2*(n+1))-A066339(A028310(n))`
-/

namespace A087010.P3140519343605400597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (2 * (n + 1)) - A066339 (A028310 n).toNat

end

end A087010.P3140519343605400597

noncomputable section

/-- A087010: Number of primes of form 4*k+1 between n and 2n (inclusive).

Offset 1, canonical program `A087010.P3140519343605400597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A087010 (n : ℕ) : ℤ :=
  A087010.P3140519343605400597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A087010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087780.P10506925651447133355

`∑{d}[n+1, A035185(#)*A271102((n+1)/#)]`
-/

namespace A087780.P10506925651447133355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035185 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A087780.P10506925651447133355

noncomputable section

/-- A087780: Number of non-congruent solutions to x^2 == 2 mod n.

Offset 1, canonical program `A087780.P10506925651447133355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087780 (n : ℕ) : ℤ :=
  A087780.P10506925651447133355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087839.P6831167784717967391

`A121934(n+1)%A003057(n+2)`
-/

namespace A087839.P6831167784717967391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A003057 (n + 2))

end

end A087839.P6831167784717967391

noncomputable section

/-- A087839: a(n) = a(a(a(a(a(n-2))))) + a(n - a(n-2)).

Offset 1, canonical program `A087839.P6831167784717967391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A087839 (n : ℕ) : ℤ :=
  A087839.P6831167784717967391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A087839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088208.P4118432922678346086

`A049773(A233280(n+1))`
-/

namespace A088208.P4118432922678346086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (A233280 (n + 1)).toNat

end

end A088208.P4118432922678346086

noncomputable section

/-- A088208: Table read by rows where T(0,0)=1; n-th row has 2^n terms T(n,j),j=0 to 2^n-1. For j==0 mod 2, T(n+1,2j)=T(n,j) and T(n+1,2j+1)=T(n,j)+2^n. For j==1 mod 2, T(n+1,2j+1)=T(n,j) and T(n+1,2j)=T(n,j)+2^n.

Offset 0, canonical program `A088208.P4118432922678346086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A088208 (n : ℕ) : ℤ :=
  A088208.P4118432922678346086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A088208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088982.P11716164423492107357

`A073168(n+1)+A065858(n+1)`
-/

namespace A088982.P11716164423492107357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073168 (n + 1) + A065858 (n + 1)

end

end A088982.P11716164423492107357

noncomputable section

/-- A088982: Primes that are between consecutive prime-indexed primes.

Offset 1, canonical program `A088982.P11716164423492107357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088982 (n : ℕ) : ℤ :=
  A088982.P11716164423492107357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089164.P3023028978158092198

`A002002(n+1)+2*A026002(n+1)`
-/

namespace A089164.P3023028978158092198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 1) + 2 * A026002 (n + 1)

end

end A089164.P3023028978158092198

noncomputable section

/-- A089164: Number of steps in all Schroeder paths (i.e., consisting of steps U=(1,1), D=(1,-1),H=(2,0) and never going below the x-axis) from (0,0) to (2n,0).

Offset 1, canonical program `A089164.P3023028978158092198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A089164 (n : ℕ) : ℤ :=
  A089164.P3023028978158092198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A089164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089252.P6506231424234606079

`2^n*n!*A006134(n)`
-/

namespace A089252.P6506231424234606079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial n : ℤ) * A006134 n

end

end A089252.P6506231424234606079

noncomputable section

/-- A089252: a(n) = ((2*n-1)!!/sqrt(3))*(integral_{x=0..sqrt(3/4)} 1/(1-x^2)^(n+1/2) dx).

Offset 1, canonical program `A089252.P6506231424234606079`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089252 (n : ℕ) : ℤ :=
  A089252.P6506231424234606079.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089270.P4568996701270986282

`eq[1, gcd(n+1, A087781(n+1))]+1`
-/

namespace A089270.P4568996701270986282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A087781 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089270.P4568996701270986282

noncomputable section

/-- A089270: Positive numbers represented by the integer binary quadratic form x^2 + x*y - y^2 with x and y relatively prime.

Offset 1, canonical program `A089270.P4568996701270986282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A089270 (n : ℕ) : ℤ :=
  (A089270.P4568996701270986282.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A089270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089383.P16769992240081267882

`∑[A026002(n+1)]`
-/

namespace A089383.P16769992240081267882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089383.P16769992240081267882

noncomputable section

/-- A089383: Number of peaks at even level in all Schroeder paths (i.e., consisting of steps U=(1,1), D=(1,-1), H=(2,0) and never going below the axis) from (0,0) to (2n+4,0).

Offset 0, canonical program `A089383.P16769992240081267882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A089383 (n : ℕ) : ℤ :=
  A089383.P16769992240081267882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A089383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089849.P12770552710507847731

`gcd(A097331(n), A126869(n))`
-/

namespace A089849.P12770552710507847731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097331 n) (A126869 n)

end

end A089849.P12770552710507847731

noncomputable section

/-- A089849: Number of fixed points in range [A014137(n-1)..A014138(n-1)] of permutation A069772.

Offset 0, canonical program `A089849.P12770552710507847731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A089849 (n : ℕ) : ℤ :=
  (A089849.P12770552710507847731.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A089849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091043.P11042620095569130574

`A091044(n+1)/A006519(∑[char[∑[n]]])`
-/

namespace A091043.P11042620095569130574
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091044 (n + 1) : ℚ) / (A006519 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A091043.P11042620095569130574

noncomputable section

/-- A091043: Normalized triangle of odd numbered entries of even numbered rows of Pascal's triangle A007318.

Offset 1, canonical program `A091043.P11042620095569130574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091043 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091043.P11042620095569130574.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091300.P2475382498501044560

`6*A046954(n+1)+1`
-/

namespace A091300.P2475382498501044560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A046954 (n + 1) + 1

end

end A091300.P2475382498501044560

noncomputable section

/-- A091300: Nonprimes of the form 6k + 1.

Offset 1, canonical program `A091300.P2475382498501044560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091300 (n : ℕ) : ℤ :=
  A091300.P2475382498501044560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091395.P2913392625701699350

`A035182(∏{p}[n+1, #])`
-/

namespace A091395.P2913392625701699350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035182 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091395.P2913392625701699350

noncomputable section

/-- A091395: a(n) = Product_{ p | n } (1 + Legendre(-7,p) ).

Offset 1, canonical program `A091395.P2913392625701699350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091395 (n : ℕ) : ℤ :=
  A091395.P2913392625701699350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091396.P2690525811667358135

`A035185(∏{p}[n+1, #])`
-/

namespace A091396.P2690525811667358135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091396.P2690525811667358135

noncomputable section

/-- A091396: a(n) = Product_{ p | n } (1 + Legendre(2,p) ).

Offset 1, canonical program `A091396.P2690525811667358135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091396 (n : ℕ) : ℤ :=
  A091396.P2690525811667358135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091397.P12586463803707334574

`A035186(∏{p}[n+1, #])`
-/

namespace A091397.P12586463803707334574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091397.P12586463803707334574

noncomputable section

/-- A091397: a(n) = Product_{ p | n } (1 + Legendre(3,p) ).

Offset 1, canonical program `A091397.P12586463803707334574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091397 (n : ℕ) : ℤ :=
  A091397.P12586463803707334574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091735.P17263233188222101787

`∪[A031372(n+1), A031906(n+1)]`
-/

namespace A091735.P17263233188222101787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091735.P17263233188222101787

noncomputable section

/-- A091735: Primes arising in the first row of array in A091734.

Offset 1, canonical program `A091735.P17263233188222101787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091735 (n : ℕ) : ℤ :=
  (A091735.P17263233188222101787.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091738.P896094416976946259

`∪[A031380(n+1), A031393(n+1)]`
-/

namespace A091738.P896094416976946259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091738.P896094416976946259

noncomputable section

/-- A091738: Primes arising in the second row of array in A091734.

Offset 1, canonical program `A091738.P896094416976946259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091738 (n : ℕ) : ℤ :=
  (A091738.P896094416976946259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092542.P8192969525571053860

`A002260(A056023(n+1))`
-/

namespace A092542.P8192969525571053860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A056023 (n + 1)).toNat

end

end A092542.P8192969525571053860

noncomputable section

/-- A092542: Table whose n-th row is constant and equal to n, read by antidiagonals alternately upwards and downwards.

Offset 1, canonical program `A092542.P8192969525571053860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A092542 (n : ℕ) : ℤ :=
  A092542.P8192969525571053860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A092542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092782.P12994304615251165252

`2-A317198(n)`
-/

namespace A092782.P12994304615251165252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A317198 n

end

end A092782.P12994304615251165252

noncomputable section

/-- A092782: The ternary tribonacci word; also a Rauzy fractal sequence: fixed point of the morphism 1 -> 12, 2 -> 13, 3 -> 1, starting from a(1) = 1.

Offset 1, canonical program `A092782.P12994304615251165252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092782 (n : ℕ) : ℤ :=
  A092782.P12994304615251165252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093304.P7371861631177899035

`A000071(n+2)+A000079(n)-A092176(n)`
-/

namespace A093304.P7371861631177899035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (A000079 n - A092176 n)

end

end A093304.P7371861631177899035

noncomputable section

/-- A093304: a(n) = A000071(n+1) + A000079(n-1) - A092176(n-1).

Offset 1, canonical program `A093304.P7371861631177899035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A093304 (n : ℕ) : ℤ :=
  A093304.P7371861631177899035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A093304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093373.P5396455180272052482

`eq[0, A344438(n+1)]+1`
-/

namespace A093373.P5396455180272052482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093373.P5396455180272052482

noncomputable section

/-- A093373: Numbers that are not the product of factorials.

Offset 1, canonical program `A093373.P5396455180272052482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093373 (n : ℕ) : ℤ :=
  (A093373.P5396455180272052482.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093421.P16990172732608459439

`gcd(or(1, A121757(n)), A061885(n))`
-/

namespace A093421.P16990172732608459439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.lor 1 (A121757 n)) (A061885 n)

end

end A093421.P16990172732608459439

noncomputable section

/-- A093421: Triangle read by rows: T(n,k) is the denominator of f(n, k) = (Product_{i = 0..k-1} (n-i))/(Sum_{i = 1..k} i) for 1 <= k <= n.

Offset 1, canonical program `A093421.P16990172732608459439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A093421 (n : ℕ) : ℤ :=
  (A093421.P16990172732608459439.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A093421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093423.P17422038579525010043

`lcm(A068424(n+1), A141419(n+1))/A068424(n+1)`
-/

namespace A093423.P17422038579525010043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A068424 (n + 1)) (A141419 (n + 1)) : ℚ) / (A068424 (n + 1) : ℚ)

end

end A093423.P17422038579525010043

noncomputable section

/-- A093423: Consider the triangle whose first part is shown as an example in the entry A093422. If the n-th term of the triangle read by rows is a fraction then a(n) is the denominator of the fraction, otherwise a(n)=1.

Offset 1, canonical program `A093423.P17422038579525010043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. -/
def A093423 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A093423.P17422038579525010043.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. -/
def A093423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093527.P1492917082742436837

`(n+1)/A071416(n+1)`
-/

namespace A093527.P1492917082742436837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A071416 (n + 1) : ℚ)

end

end A093527.P1492917082742436837

noncomputable section

/-- A093527: Denominators of even raw moments in the distribution of line lengths for lines picked at random in the unit disk.

Offset 0, canonical program `A093527.P1492917082742436837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093527 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A093527.P1492917082742436837.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094051.P17874121840297430644

`A008330(n+3)/2`
-/

namespace A094051.P17874121840297430644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008330 (n + 3) : ℚ) / 2

end

end A094051.P17874121840297430644

noncomputable section

/-- A094051: a(n) = phi(phi(p))/2 where p = prime(n).

Offset 3, canonical program `A094051.P17874121840297430644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A094051 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094051.P17874121840297430644.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A094051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094263.P15579787924222318270

`A075363(n+1)%A128227(n)`
-/

namespace A094263.P15579787924222318270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075363 (n + 1)) (A128227 n)

end

end A094263.P15579787924222318270

noncomputable section

/-- A094263: Triangle read by rows: for 1 <= k <= n, a(n, k) = n^k mod k.

Offset 1, canonical program `A094263.P15579787924222318270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A094263 (n : ℕ) : ℤ :=
  A094263.P15579787924222318270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A094263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094310.P9946373677012524602

`A077012(A038722(n+1))`
-/

namespace A094310.P9946373677012524602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077012 (A038722 (n + 1)).toNat

end

end A094310.P9946373677012524602

noncomputable section

/-- A094310: Triangle read by rows: T(n,k), the k-th term of the n-th row, is the product of all numbers from 1 to n except k: T(n,k) = n!/k.

Offset 1, canonical program `A094310.P9946373677012524602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A094310 (n : ℕ) : ℤ :=
  A094310.P9946373677012524602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A094310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095071.P691342850235203050

`∪[A095072(n+1), A095317(n+1)]`
-/

namespace A095071.P691342850235203050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095071.P691342850235203050

noncomputable section

/-- A095071: Zero-bit dominant primes, i.e., primes whose binary expansion contains more 0's than 1's.

Offset 1, canonical program `A095071.P691342850235203050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095071 (n : ℕ) : ℤ :=
  (A095071.P691342850235203050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095111.P18387562347158701288

`1-A095076(n)`
-/

namespace A095111.P18387562347158701288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A095076 n

end

end A095111.P18387562347158701288

noncomputable section

/-- A095111: One minus the parity of 1-fibits in Zeckendorf expansion A014417(n).

Offset 0, canonical program `A095111.P18387562347158701288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095111 (n : ℕ) : ℤ :=
  A095111.P18387562347158701288.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095111.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095277.P5907375442901881161

`(A091236(n+1)-3)/4`
-/

namespace A095277.P5907375442901881161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091236 (n + 1) - 3 : ℚ) / 4

end

end A095277.P5907375442901881161

noncomputable section

/-- A095277: Numbers k such that 4*k + 3 is composite.

Offset 1, canonical program `A095277.P5907375442901881161`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095277 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A095277.P5907375442901881161.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095277.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095672.P5355300457214611570

`p?[A073273(n+3)-1]`
-/

namespace A095672.P5355300457214611570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095672.P5355300457214611570

noncomputable section

/-- A095672: Primes p = p_(n+1) such that p_n + p_(n+2) = 2*p_(n+1) + 4.

Offset 1, canonical program `A095672.P5355300457214611570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A095672 (n : ℕ) : ℤ :=
  A095672.P5355300457214611570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A095672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095734.P14823570990900498020

`A037888(A003714(n)+A000007(n))`
-/

namespace A095734.P14823570990900498020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A003714 n + A000007 n).toNat

end

end A095734.P14823570990900498020

noncomputable section

/-- A095734: Asymmetricity-index for Zeckendorf-expansion A014417(n) of n.

Offset 0, canonical program `A095734.P14823570990900498020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095734 (n : ℕ) : ℤ :=
  A095734.P14823570990900498020.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095887.P2347631351950921899

`A051128(n+1)*A095890(n+1)`
-/

namespace A095887.P2347631351950921899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) * A095890 (n + 1)

end

end A095887.P2347631351950921899

noncomputable section

/-- A095887: Triangle read by rows: T(n,k) = (n-k+1)^n, n>=1, 1<=k<=n.

Offset 1, canonical program `A095887.P2347631351950921899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A095887 (n : ℕ) : ℤ :=
  A095887.P2347631351950921899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A095887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096960.P12612714756278171164

`A352051(n+1)+A059841(n)`
-/

namespace A096960.P12612714756278171164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352051 (n + 1) + A059841 n

end

end A096960.P12612714756278171164

noncomputable section

/-- A096960: a(n) = Sum_{0

Offset 1, canonical program `A096960.P12612714756278171164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096960 (n : ℕ) : ℤ :=
  A096960.P12612714756278171164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097513.P517344334834478891

`A003082(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A097513.P517344334834478891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A003082 n - a (n - 3)

end

end A097513.P517344334834478891

noncomputable section

/-- A097513: Number of ways to label the vertices of the octahedron (or faces of the cube) with nonnegative integers summing to n, where labelings that differ only by rotation or reflection are considered the same.

Offset 0, canonical program `A097513.P517344334834478891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. -/
def A097513 (n : ℕ) : ℤ :=
  A097513.P517344334834478891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. -/
def A097513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098006.P17828117484897693753

`A005097(n+1)-A008330(n+2)`
-/

namespace A098006.P17828117484897693753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - A008330 (n + 2)

end

end A098006.P17828117484897693753

noncomputable section

/-- A098006: (p-1)/2 - phi(p-1) as p runs through the odd primes.

Offset 2, canonical program `A098006.P17828117484897693753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A098006 (n : ℕ) : ℤ :=
  A098006.P17828117484897693753.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A098006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098029.P12425777026168091225

`p?[A052288(n+2)+A024675(n+1)]`
-/

namespace A098029.P12425777026168091225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052288 (n + 2) + A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098029.P12425777026168091225

noncomputable section

/-- A098029: Primes of the form (prime(k)+ prime(k+3))/2.

Offset 1, canonical program `A098029.P12425777026168091225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A098029 (n : ℕ) : ℤ :=
  A098029.P12425777026168091225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A098029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098142.P9774141478526730411

`eq[1, A099910(n+2)]+2`
-/

namespace A098142.P9774141478526730411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099910 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A098142.P9774141478526730411

noncomputable section

/-- A098142: Numbers n such that (p*(q-1)+(p-1)*q)/2 is prime, where p and q are consecutive odd primes, p

Offset 1, canonical program `A098142.P9774141478526730411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A098142 (n : ℕ) : ℤ :=
  (A098142.P9774141478526730411.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A098142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098665.P5673322444532997734

`A084771(n)+n*A059231(n)`
-/

namespace A098665.P5673322444532997734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084771 n + (n : ℤ) * A059231 n

end

end A098665.P5673322444532997734

noncomputable section

/-- A098665: a(n) = Sum_{k = 0..n} binomial(n,k) * binomial(n+1,k+1) * 4^k.

Offset 0, canonical program `A098665.P5673322444532997734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A098665 (n : ℕ) : ℤ :=
  A098665.P5673322444532997734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A098665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099047.P83096896092586081

`comp[A045718(n)-1]+1`
-/

namespace A099047.P83096896092586081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A099047.P83096896092586081

noncomputable section

/-- A099047: Numbers n such that n-1 and n+1 are both composite.

Offset 1, canonical program `A099047.P83096896092586081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099047 (n : ℕ) : ℤ :=
  (A099047.P83096896092586081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099210.P13481430447248408214

`A090076(n+1)^5`
-/

namespace A099210.P13481430447248408214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) ^ 5

end

end A099210.P13481430447248408214

noncomputable section

/-- A099210: a(n)=(P(n)*P(n+2))^5 with P(i)=i-th prime.

Offset 1, canonical program `A099210.P13481430447248408214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099210 (n : ℕ) : ℤ :=
  A099210.P13481430447248408214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099751.P7046842454229189137

`abs(A256232(n+1))`
-/

namespace A099751.P7046842454229189137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256232 (n + 1)|

end

end A099751.P7046842454229189137

noncomputable section

/-- A099751: Number of ways to write n as differences of (-4)-gonal numbers. If pe(n):=1/2*n*((e-2)*n+(4-e)) is the n-th e-gonal number, then a(n) = |{(m,k) of Z X Z; pe(-1)(m+k)-pe(m-1)=n}| for e=-4.

Offset 1, canonical program `A099751.P7046842454229189137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099751 (n : ℕ) : ℤ :=
  A099751.P7046842454229189137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099957.P12097671792169816547

`∑[2*A072451(n+1)]-1`
-/

namespace A099957.P12097671792169816547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099957.P12097671792169816547

noncomputable section

/-- A099957: a(n) = Sum_{k=0..n-1} phi(2k+1).

Offset 1, canonical program `A099957.P12097671792169816547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099957 (n : ℕ) : ℤ :=
  A099957.P12097671792169816547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100282.P11700922516647250805

`A100280(A100280(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100282.P11700922516647250805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100280 (A100280 n).toNat

end

end A100282.P11700922516647250805

noncomputable section

/-- A100282: a(n) = A100280(A100280(n)).

Offset 0, canonical program `A100282.P11700922516647250805`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100282 (n : ℕ) : ℤ :=
  A100282.P11700922516647250805.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100282.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100630.P502029142886304984

`∑[gcd(A106459(n), A211370(n+1))]`
-/

namespace A100630.P502029142886304984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106459 n) (A211370 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100630.P502029142886304984

noncomputable section

/-- A100630: Array read by antidiagonals: T(m,n) = Sum_{i=1..m} i*(n-1+i)!.

Offset 1, canonical program `A100630.P502029142886304984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A100630 (n : ℕ) : ℤ :=
  (A100630.P502029142886304984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A100630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101309.P11105508438679129334

`A014707(A166453(n))`
-/

namespace A101309.P11105508438679129334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A166453 n).toNat

end

end A101309.P11105508438679129334

noncomputable section

/-- A101309: Matrix logarithm of A047999 (Pascal's triangle mod 2).

Offset 0, canonical program `A101309.P11105508438679129334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A101309 (n : ℕ) : ℤ :=
  A101309.P11105508438679129334.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A101309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103116.P13446593034198861880

`A005598(n)-1`
-/

namespace A103116.P13446593034198861880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n - 1

end

end A103116.P13446593034198861880

noncomputable section

/-- A103116: a(n) = Sum_{i=1..n} (n-i+1)*phi(i).

Offset 0, canonical program `A103116.P13446593034198861880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005598, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103116 (n : ℕ) : ℤ :=
  A103116.P13446593034198861880.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005598, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103116.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A103323.P15634224267136485506

`A104763(n+1)^A004736(n+1)`
-/

namespace A103323.P15634224267136485506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104763 (n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A103323.P15634224267136485506

noncomputable section

/-- A103323: Square array T(n,k) read by antidiagonals: powers of Fibonacci numbers.

Offset 1, canonical program `A103323.P15634224267136485506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A103323 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A103323.P15634224267136485506.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A103323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104039.P17593394278328231830

`A006093(n+1)*A008330(n+1)`
-/

namespace A104039.P17593394278328231830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A008330 (n + 1)

end

end A104039.P17593394278328231830

noncomputable section

/-- A104039: Number of primitive roots modulo prime(n)^2, where prime(n) is n-th prime.

Offset 1, canonical program `A104039.P17593394278328231830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A008330, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104039 (n : ℕ) : ℤ :=
  A104039.P17593394278328231830.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A008330, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104402.P8208994642325040538

`Δ[-A109466(n)]`
-/

namespace A104402.P8208994642325040538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A109466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104402.P8208994642325040538

noncomputable section

/-- A104402: Matrix inverse of triangle A091491, read by rows.

Offset 0, canonical program `A104402.P8208994642325040538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A104402 (n : ℕ) : ℤ :=
  A104402.P8208994642325040538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A104402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104551.P2747052499327181203

`∑[ceil(n/2)*A090192(n)]`
-/

namespace A104551.P2747052499327181203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * A090192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104551.P2747052499327181203

noncomputable section

/-- A104551: Expansion of x/((1-x)*sqrt(1+4*x^2)).

Offset 0, canonical program `A104551.P2747052499327181203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A104551 (n : ℕ) : ℤ :=
  A104551.P2747052499327181203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A104551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105062.P5922688254969693888

`A240857(∑[n])+1`
-/

namespace A105062.P5922688254969693888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240857 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A105062.P5922688254969693888

noncomputable section

/-- A105062: Triangle read by rows, based on the morphism f: 1->2, 2->3, 3->4, 4->5, 5->6, 6->{6,6,10,7}, 7->8, 8->9, 9->10, 10->11, 11->12, 12->{12,12,5,1}. First row is 1. If current row is a,b,c,..., then the next row is a,b,c,...,f(a),f(b),f(c),...

Offset 1, canonical program `A105062.P5922688254969693888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A105062 (n : ℕ) : ℤ :=
  A105062.P5922688254969693888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A105062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105070.P11783947484136715617

`A000079(A055087(n))*A034867(n)`
-/

namespace A105070.P11783947484136715617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A055087 n).toNat * A034867 n

end

end A105070.P11783947484136715617

noncomputable section

/-- A105070: T(n,k) = 2^k*binomial(n,2k+1), where 0 <= k <= floor((n-1)/2), n >= 1.

Offset 1, canonical program `A105070.P11783947484136715617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105070 (n : ℕ) : ℤ :=
  A105070.P11783947484136715617.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106365.P1754909470558632243

`A306896(A254667(n+1))/A254667(n+1)`
-/

namespace A106365.P1754909470558632243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306896 (A254667 (n + 1)).toNat : ℚ) / (A254667 (n + 1) : ℚ)

end

end A106365.P1754909470558632243

noncomputable section

/-- A106365: Number of necklaces with n beads of 3 colors, no 2 adjacent beads the same color.

Offset 1, canonical program `A106365.P1754909470558632243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A106365 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A106365.P1754909470558632243.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A106365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106391.P13549094547017150546

`A102319(n)-A102318(n)`
-/

namespace A106391.P13549094547017150546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102319 n - A102318 n

end

end A106391.P13549094547017150546

noncomputable section

/-- A106391: A "cosh transform" of binomial(2n,n-1).

Offset 0, canonical program `A106391.P13549094547017150546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A106391 (n : ℕ) : ℤ :=
  A106391.P13549094547017150546.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A106391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106770.P17983658334318701957

`∩[A062336(n+1), A062340(n+1)]`
-/

namespace A106770.P17983658334318701957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106770.P17983658334318701957

noncomputable section

/-- A106770: Primes with digit sum = 35.

Offset 1, canonical program `A106770.P17983658334318701957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1720 terms. -/
def A106770 (n : ℕ) : ℤ :=
  (A106770.P17983658334318701957.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1720 terms. -/
def A106770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106876.P9661437305989954609

`∩[A002145(n+1), A034027(n+1)]`
-/

namespace A106876.P9661437305989954609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P9661437305989954609

noncomputable section

/-- A106876: Primes of the form 3x^2-2xy+3y^2, with x and y nonnegative.

Offset 1, canonical program `A106876.P9661437305989954609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 692 terms. -/
def A106876 (n : ℕ) : ℤ :=
  (A106876.P9661437305989954609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 692 terms. -/
def A106876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107771.P11192892536720195870

`∩[A089038(n+1), A111223(n+1)]`
-/

namespace A107771.P11192892536720195870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107771.P11192892536720195870

noncomputable section

/-- A107771: Numbers n such that 2*n + 5 and 5*n + 2 are primes.

Offset 1, canonical program `A107771.P11192892536720195870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1918 terms. -/
def A107771 (n : ℕ) : ℤ :=
  (A107771.P11192892536720195870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1918 terms. -/
def A107771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107789.P13357853948593390734

`p?[7-(A268272(n+2)-A268272(n))]`
-/

namespace A107789.P13357853948593390734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (A268272 (n + 2) - A268272 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107789.P13357853948593390734

noncomputable section

/-- A107789: Trajectory of 2 under evenly many applications of the morphism 1 -> 2, 2 -> 114, 3 -> 4, 4 -> 233.

Offset 0, canonical program `A107789.P13357853948593390734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6664 terms. -/
def A107789 (n : ℕ) : ℤ :=
  A107789.P13357853948593390734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6664 terms. -/
def A107789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108044.P8862669361882078575

`A061554(n)*A128174(n+1)`
-/

namespace A108044.P8862669361882078575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 n * A128174 (n + 1)

end

end A108044.P8862669361882078575

noncomputable section

/-- A108044: Triangle read by rows: right half of Pascal's triangle (A007318) interspersed with 0's.

Offset 0, canonical program `A108044.P8862669361882078575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108044 (n : ℕ) : ℤ :=
  A108044.P8862669361882078575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108852.P14747039251510576692

`floor(log2(A022341(n)))+1`
-/

namespace A108852.P14747039251510576692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A022341 n).toNat + 1

end

end A108852.P14747039251510576692

noncomputable section

/-- A108852: Number of Fibonacci numbers <= n.

Offset 0, canonical program `A108852.P14747039251510576692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108852 (n : ℕ) : ℤ :=
  (A108852.P14747039251510576692.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109511.P5197961312536045946

`∑[2^n-A000740(n+1)]`
-/

namespace A109511.P5197961312536045946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109511.P5197961312536045946

noncomputable section

/-- A109511: Number of subsets of the first n numbers having a common divisor greater than 1.

Offset 1, canonical program `A109511.P5197961312536045946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A109511 (n : ℕ) : ℤ :=
  A109511.P5197961312536045946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A109511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109580.P250940823031439561

`p?[A109579(n+1)]`
-/

namespace A109580.P250940823031439561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109580.P250940823031439561

noncomputable section

/-- A109580: Primes in A109579.

Offset 1, canonical program `A109580.P250940823031439561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A109580 (n : ℕ) : ℤ :=
  A109580.P250940823031439561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A109580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110517.P16497964314366545641

`A109466(n)*A140303(n)`
-/

namespace A110517.P16497964314366545641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A140303 n

end

end A110517.P16497964314366545641

noncomputable section

/-- A110517: Riordan array (1,x(1-3x)).

Offset 0, canonical program `A110517.P16497964314366545641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110517 (n : ℕ) : ℤ :=
  A110517.P16497964314366545641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110962.P12597645411815953892

`A110963(1+n)-1`
-/

namespace A110962.P12597645411815953892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (1 + n) - 1

end

end A110962.P12597645411815953892

noncomputable section

/-- A110962: Fractalization of A025480, zero-based version of Kimberling's paraphrase of the binary number system.

Offset 0, canonical program `A110962.P12597645411815953892`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110962 (n : ℕ) : ℤ :=
  A110962.P12597645411815953892.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110962.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111973.P15413486378653993803

`abs(A133691(n+1))`
-/

namespace A111973.P15413486378653993803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133691 (n + 1)|

end

end A111973.P15413486378653993803

noncomputable section

/-- A111973: Expansion of ((eta(q^2)eta(q^4))^6/(eta(q)eta(q^8))^4-1)/4 in powers of q.

Offset 1, canonical program `A111973.P15413486378653993803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111973 (n : ℕ) : ℤ :=
  A111973.P15413486378653993803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112334.P13246007352797609240

`A124819(n)*A167374(n)`
-/

namespace A112334.P13246007352797609240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124819 n * A167374 n

end

end A112334.P13246007352797609240

noncomputable section

/-- A112334: Inverse of number triangle A112333.

Offset 0, canonical program `A112334.P13246007352797609240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112334 (n : ℕ) : ℤ :=
  A112334.P13246007352797609240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113502.P1834460873008757009

`A088723(n+1)/2`
-/

namespace A113502.P1834460873008757009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088723 (n + 1) : ℚ) / 2

end

end A113502.P1834460873008757009

noncomputable section

/-- A113502: A number n is included if at least one of its divisors > 1 is a triangular number (i.e., is of the form m(m+1)/2, m >= 2).

Offset 1, canonical program `A113502.P1834460873008757009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113502 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113502.P1834460873008757009.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113502.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113998.P14714429809972250434

`A000007(A051777(n+1))`
-/

namespace A113998.P14714429809972250434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A051777 (n + 1)).toNat

end

end A113998.P14714429809972250434

noncomputable section

/-- A113998: Reverse of triangle A051731.

Offset 1, canonical program `A113998.P14714429809972250434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113998 (n : ℕ) : ℤ :=
  A113998.P14714429809972250434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114751.P5114552108412707646

`A094727(A056011(n+1))`
-/

namespace A114751.P5114552108412707646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A056011 (n + 1)).toNat

end

end A114751.P5114552108412707646

noncomputable section

/-- A114751: Triangle where row n contains the n consecutive numbers from n to 2n-1, in ascending order if n is odd, else in descending order; listed by rows.

Offset 1, canonical program `A114751.P5114552108412707646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114751 (n : ℕ) : ℤ :=
  A114751.P5114552108412707646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001089.P12328376090641490040

`A071741(n)-A071729(n)`
-/

namespace A001089.P12328376090641490040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071741 n - A071729 n

end

end A001089.P12328376090641490040

noncomputable section

/-- A001089: Number of permutations of [n] containing exactly 2 increasing subsequences of length 3.

Offset 0, canonical program `A001089.P12328376090641490040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A001089 (n : ℕ) : ℤ :=
  A001089.P12328376090641490040.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A001089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002727.P5415919313851437187

`∑[∑[A050531(n)]]`
-/

namespace A002727.P5415919313851437187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002727.P5415919313851437187

noncomputable section

/-- A002727: Number of 3 X n binary matrices up to row and column permutations.

Offset 0, canonical program `A002727.P5415919313851437187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002727 (n : ℕ) : ℤ :=
  A002727.P5415919313851437187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003257.P5560299711947095320

`comp[A003256(n+1)-1]+1`
-/

namespace A003257.P5560299711947095320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003256 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A003257.P5560299711947095320

noncomputable section

/-- A003257: Complement of A003256.

Offset 1, canonical program `A003257.P5560299711947095320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003257 (n : ℕ) : ℤ :=
  (A003257.P5560299711947095320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004333.P9850098452004335521

`A119304(eq[4, A002262(n)])`
-/

namespace A004333.P9850098452004335521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004333.P9850098452004335521

noncomputable section

/-- A004333: Binomial coefficient C(4n,n-3).

Offset 3, canonical program `A004333.P9850098452004335521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A004333 (n : ℕ) : ℤ :=
  A004333.P9850098452004335521.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A004333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005783.P15220566111685285247

`∑[A050531(n)]`
-/

namespace A005783.P15220566111685285247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005783.P15220566111685285247

noncomputable section

/-- A005783: Number of 3-covers of an unlabeled n-set.

Offset 0, canonical program `A005783.P15220566111685285247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005783 (n : ℕ) : ℤ :=
  A005783.P15220566111685285247.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005792.P17441170092424256089

`∪[A001983(n+1), A249096(n+1)]`
-/

namespace A005792.P17441170092424256089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005792.P17441170092424256089

noncomputable section

/-- A005792: Positive numbers that are the sum of 2 squares or 3 times a square.

Offset 1, canonical program `A005792.P17441170092424256089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005792 (n : ℕ) : ℤ :=
  (A005792.P17441170092424256089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006078.P3851421618705836682

`A126120(n+2)+A050182(n)`
-/

namespace A006078.P3851421618705836682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 2) + A050182 n

end

end A006078.P3851421618705836682

noncomputable section

/-- A006078: Number of triangulated (n+2)-gons rooted at an exterior edge.

Offset 2, canonical program `A006078.P3851421618705836682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A006078 (n : ℕ) : ℤ :=
  A006078.P3851421618705836682.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A006078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006591.P9768436482632367221

`(n+1)²-A351362(n+1)`
-/

namespace A006591.P9768436482632367221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A351362 (n + 1)

end

end A006591.P9768436482632367221

noncomputable section

/-- A006591: a(n) = Sum_{k=1..n} nearest integer to n/k (if n/k is midway between two numbers take the smaller).

Offset 1, canonical program `A006591.P9768436482632367221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006591 (n : ℕ) : ℤ :=
  A006591.P9768436482632367221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006635.P15748520674391765223

`A006634(n+1)-A233666(n+1)`
-/

namespace A006635.P15748520674391765223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006634 (n + 1) - A233666 (n + 1)

end

end A006635.P15748520674391765223

noncomputable section

/-- A006635: a(n) = 4*binomial(4*n+11, n)/(n+4).

Offset 0, canonical program `A006635.P15748520674391765223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A006635 (n : ℕ) : ℤ :=
  A006635.P15748520674391765223.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A006635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006875.P14857395006895934659

`A000740(n+1)-A006876(n+1)`
-/

namespace A006875.P14857395006895934659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) - A006876 (n + 1)

end

end A006875.P14857395006895934659

noncomputable section

/-- A006875: Non-seed mu-atoms of period n in Mandelbrot set.

Offset 1, canonical program `A006875.P14857395006895934659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000740, A006876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A006875 (n : ℕ) : ℤ :=
  A006875.P14857395006895934659.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000740, A006876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A006875.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007875.P1743519679505570737

`A163109(∏{p}[n+1, #])`
-/

namespace A007875.P1743519679505570737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A007875.P1743519679505570737

noncomputable section

/-- A007875: Number of ways of writing n as p*q, with p <= q, gcd(p, q) = 1.

Offset 1, canonical program `A007875.P1743519679505570737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007875 (n : ℕ) : ℤ :=
  A007875.P1743519679505570737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008846.P8671149939260561417

`filter[A008784(n+2), A187074(#)]`
-/

namespace A008846.P8671149939260561417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A008846.P8671149939260561417

noncomputable section

/-- A008846: Hypotenuses of primitive Pythagorean triangles.

Offset 1, canonical program `A008846.P8671149939260561417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6594 terms. -/
def A008846 (n : ℕ) : ℤ :=
  A008846.P8671149939260561417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6594 terms. -/
def A008846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018212.P17984279171058020025

`∑[A018211(n)]`
-/

namespace A018212.P17984279171058020025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018212.P17984279171058020025

noncomputable section

/-- A018212: Alkane (or paraffin) numbers l(11,n).

Offset 0, canonical program `A018212.P17984279171058020025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018212 (n : ℕ) : ℤ :=
  A018212.P17984279171058020025.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020479.P13740489168862381681

`(n+2)²²-A000252(n+2)`
-/

namespace A020479.P13740489168862381681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2) ^ 2 : ℤ) - A000252 (n + 2)

end

end A020479.P13740489168862381681

noncomputable section

/-- A020479: Number of noninvertible 2 X 2 matrices over Z/nZ (determinant is a divisor of 0).

Offset 2, canonical program `A020479.P13740489168862381681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A020479 (n : ℕ) : ℤ :=
  A020479.P13740489168862381681.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A020479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020756.P16947837090098696349

`∪[A051533(n+1), ∑[n]]`
-/

namespace A020756.P16947837090098696349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A020756.P16947837090098696349

noncomputable section

/-- A020756: Numbers that are the sum of two triangular numbers.

Offset 1, canonical program `A020756.P16947837090098696349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020756 (n : ℕ) : ℤ :=
  (A020756.P16947837090098696349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020893.P11290844334682551427

`filter[A008784(n+1), A359377(#)]`
-/

namespace A020893.P11290844334682551427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A020893.P11290844334682551427

noncomputable section

/-- A020893: Squarefree sums of two squares; or squarefree numbers with no prime factors of the form 4k+3.

Offset 1, canonical program `A020893.P11290844334682551427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9316 terms. -/
def A020893 (n : ℕ) : ℤ :=
  A020893.P11290844334682551427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9316 terms. -/
def A020893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020936.P1853754602566167102

`A100637(A076274(n+2))`
-/

namespace A020936.P1853754602566167102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (A076274 (n + 2)).toNat

end

end A020936.P1853754602566167102

noncomputable section

/-- A020936: Greatest k such that (k-th prime) < (6 times n-th prime).

Offset 1, canonical program `A020936.P1853754602566167102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1928 terms. -/
def A020936 (n : ℕ) : ℤ :=
  A020936.P1853754602566167102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1928 terms. -/
def A020936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020944.P8623549795546838227

`A020952(n)-3*A020951(n)`
-/

namespace A020944.P8623549795546838227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020952 n - 3 * A020951 n

end

end A020944.P8623549795546838227

noncomputable section

/-- A020944: a(2n+1) = |a(2n) - a(2n-1)|, a(2n) = a(n) + a(n-1), a(0) = -1.

Offset 0, canonical program `A020944.P8623549795546838227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020944 (n : ℕ) : ℤ :=
  A020944.P8623549795546838227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020966.P16300765011735899529

`A020967(n+1)-Δ[n²]`
-/

namespace A020966.P16300765011735899529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020967 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A020966.P16300765011735899529

noncomputable section

/-- A020966: a(n) = Sum_{k>=1} floor(n*sqrt(2)^(2-k)).

Offset 1, canonical program `A020966.P16300765011735899529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020966 (n : ℕ) : ℤ :=
  A020966.P16300765011735899529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022457.P6255245100829912795

`abs(A066066(n+1))`
-/

namespace A022457.P6255245100829912795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066066 (n + 1)|

end

end A022457.P6255245100829912795

noncomputable section

/-- A022457: a(n) = prime(2n) mod prime(n).

Offset 1, canonical program `A022457.P6255245100829912795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022457 (n : ℕ) : ℤ :=
  A022457.P6255245100829912795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023618.P16496442946416001020

`A023649(n+1)+A023649(n+1)-A023609(n)`
-/

namespace A023618.P16496442946416001020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023649 (n + 1) + (A023649 (n + 1) - A023609 n)

end

end A023618.P16496442946416001020

noncomputable section

/-- A023618: Convolution of Lucas numbers and composite numbers.

Offset 1, canonical program `A023618.P16496442946416001020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A023618 (n : ℕ) : ℤ :=
  A023618.P16496442946416001020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A023618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024316.P4230804038874915829

`A052344(n+4)-A010054(n+3)`
-/

namespace A024316.P4230804038874915829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (n + 4) - A010054 (n + 3)

end

end A024316.P4230804038874915829

noncomputable section

/-- A024316: a(n) = s(1)*s(n) + s(2)*s(n-1) + ... + s(k)*s(n+1-k), where k = floor((n+1)/2), s = A023531.

Offset 1, canonical program `A024316.P4230804038874915829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A024316 (n : ℕ) : ℤ :=
  A024316.P4230804038874915829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A024316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025529.P10152674282350827364

`∑[1/(n+1)]*∏[A014963(n+1)]`
-/

namespace A025529.P10152674282350827364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A025529.P10152674282350827364

noncomputable section

/-- A025529: a(n) = (1/1 + 1/2 + ... + 1/n)*lcm{1,2,...,n}.

Offset 1, canonical program `A025529.P10152674282350827364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A025529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A025529.P10152674282350827364.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A025529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025537.P9038839557550078877

`A048671(n+1)+a(n-1)*A014963(n)` with `a(0)=1`
-/

namespace A025537.P9038839557550078877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048671 (n + 1) + a (n - 1) * A014963 n

end

end A025537.P9038839557550078877

noncomputable section

/-- A025537: a(n) = (1/s(1) + 1/s(2) + ... + 1/s(n+1)) * LCM{1, 2, ..., n}, where s(k) = LCM{1,2,...,k}/k = A002944(k).

Offset 0, canonical program `A025537.P9038839557550078877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A025537 (n : ℕ) : ℤ :=
  A025537.P9038839557550078877.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A025537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025858.P921057180640317668

`A025907(abs(3-n))+A025907(n)`
-/

namespace A025858.P921057180640317668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 |3 - (n : ℤ)|.toNat + A025907 n

end

end A025858.P921057180640317668

noncomputable section

/-- A025858: Expansion of 1/((1-x^3)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A025858.P921057180640317668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025858 (n : ℕ) : ℤ :=
  A025858.P921057180640317668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026181.P4658866943006320217

`a(A049321(n+1))` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A026181.P4658866943006320217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2] fun n a =>
  a (A049321 (n + 1)).toNat

end

end A026181.P4658866943006320217

noncomputable section

/-- A026181: a(n) = (1/2)*(s(n) - s(n-1)), where s = A026180.

Offset 3, canonical program `A026181.P4658866943006320217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026181 (n : ℕ) : ℤ :=
  (A026181.P4658866943006320217.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026270.P10877256987493377450

`Δ[A026269(n+2)]`
-/

namespace A026270.P10877256987493377450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026270.P10877256987493377450

noncomputable section

/-- A026270: Number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 0, s(1) = 1 = s(n), |s(i) - s(i-1)| <= 1 for i >= 2, |s(2) - s(1)| = 1, |s(3) - s(2)| = 1 if s(2) = 1. Also T(n,n-1), where T is the array in A026268.

Offset 2, canonical program `A026270.P10877256987493377450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A026270 (n : ℕ) : ℤ :=
  A026270.P10877256987493377450.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A026270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026362.P625232870546419862

`val(∏[A284751(2*(n+1))+2], Δ[A079255(n+1)])`
-/

namespace A026362.P625232870546419862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (2 * (n + 1)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat (f2 (n + 1) - f2 n).toNat

end

end A026362.P625232870546419862

noncomputable section

/-- A026362: a(n) = a(m) if a(m) has already occurred exactly once and n = a(m)+2m-1, else a(n) = least positive integer that has not yet occurred.

Offset 1, canonical program `A026362.P625232870546419862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A026362 (n : ℕ) : ℤ :=
  (A026362.P625232870546419862.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A026362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026940.P9770515685049457310

`∑[A026269(2*n+3)/2]`
-/

namespace A026940.P9770515685049457310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026269 (2 * n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026940.P9770515685049457310

noncomputable section

/-- A026940: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A026300.

Offset 1, canonical program `A026940.P9770515685049457310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A026940 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A026940.P9770515685049457310.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A026940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027449.P7596124845904246112

`A002944(n+2)+A002944(n+1)*A014963(n+2)`
-/

namespace A027449.P7596124845904246112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (n + 2) + A002944 (n + 1) * A014963 (n + 2)

end

end A027449.P7596124845904246112

noncomputable section

/-- A027449: Second diagonal of A027446.

Offset 2, canonical program `A027449.P7596124845904246112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A027449 (n : ℕ) : ℤ :=
  A027449.P7596124845904246112.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A027449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027699.P13565929154440483330

`p?[A093688(n+1)]`
-/

namespace A027699.P13565929154440483330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A027699.P13565929154440483330

noncomputable section

/-- A027699: Evil primes: primes with even number of 1's in their binary expansion.

Offset 1, canonical program `A027699.P13565929154440483330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6482 terms. -/
def A027699 (n : ℕ) : ℤ :=
  A027699.P13565929154440483330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6482 terms. -/
def A027699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027705.P11345454911343154343

`A045319(A057428(n)+A027706(n+1))`
-/

namespace A027705.P11345454911343154343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A057428 n + A027706 (n + 1)).toNat

end

end A027705.P11345454911343154343

noncomputable section

/-- A027705: Primes with odd number of 1's in binary expansion such that next prime has even number of 1's.

Offset 1, canonical program `A027705.P11345454911343154343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A027705 (n : ℕ) : ℤ :=
  A027705.P11345454911343154343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A027705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030627.P5952706466757844042

`∩[A007412(n+1), A332269(n+1)]²`
-/

namespace A030627.P5952706466757844042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030627.P5952706466757844042

noncomputable section

/-- A030627: Numbers with 9 divisors.

Offset 1, canonical program `A030627.P5952706466757844042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A030627 (n : ℕ) : ℤ :=
  (A030627.P5952706466757844042.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A030627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030633.P9556005496549386793

`(eq[7, A062799(n+1)]+1)²`
-/

namespace A030633.P9556005496549386793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A030633.P9556005496549386793

noncomputable section

/-- A030633: Numbers with 15 divisors.

Offset 1, canonical program `A030633.P9556005496549386793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. -/
def A030633 (n : ℕ) : ℤ :=
  (A030633.P9556005496549386793.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. -/
def A030633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031944.P3896050302965344887

`comp[A154314(n+1)]`
-/

namespace A031944.P3896050302965344887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A031944.P3896050302965344887

noncomputable section

/-- A031944: Numbers in which digits 0,1,2 all occur in base 3.

Offset 1, canonical program `A031944.P3896050302965344887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031944 (n : ℕ) : ℤ :=
  (A031944.P3896050302965344887.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032191.P8589819175621279169

`2*A005513(n+6)-A058187(n)`
-/

namespace A032191.P8589819175621279169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005513 (n + 6) - A058187 n

end

end A032191.P8589819175621279169

noncomputable section

/-- A032191: Number of necklaces with 6 black beads and n-6 white beads.

Offset 6, canonical program `A032191.P8589819175621279169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032191 (n : ℕ) : ℤ :=
  A032191.P8589819175621279169.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032818.P11687481509006464414

`2*(3*A032927(n+1)-A032806(n+1))-A032927(n+1)`
-/

namespace A032818.P11687481509006464414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A032927 (n + 1) - A032806 (n + 1)) - A032927 (n + 1)

end

end A032818.P11687481509006464414

noncomputable section

/-- A032818: Numbers whose set of base-6 digits is {1,4}.

Offset 1, canonical program `A032818.P11687481509006464414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032818 (n : ℕ) : ℤ :=
  A032818.P11687481509006464414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032830.P14599917088282478471

`2*A032806(n+1)-A032927(n+1)`
-/

namespace A032830.P14599917088282478471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032806 (n + 1) - A032927 (n + 1)

end

end A032830.P14599917088282478471

noncomputable section

/-- A032830: Numbers whose set of base-6 digits is {3,4}.

Offset 1, canonical program `A032830.P14599917088282478471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032830 (n : ℕ) : ℤ :=
  A032830.P14599917088282478471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032913.P14296521150570778594

`3*A032927(n+1)-A032806(n+1)`
-/

namespace A032913.P14296521150570778594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032927 (n + 1) - A032806 (n + 1)

end

end A032913.P14296521150570778594

noncomputable section

/-- A032913: Numbers whose set of base-6 digits is {1,3}.

Offset 1, canonical program `A032913.P14296521150570778594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032913 (n : ℕ) : ℤ :=
  A032913.P14296521150570778594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033597.P3717635916819908974

`ceil(sqrt(A013638(n+4)))`
-/

namespace A033597.P3717635916819908974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A013638 (n + 4) : ℝ)⌉

end

end A033597.P3717635916819908974

noncomputable section

/-- A033597: (nextprime(n)+prevprime(n))/2.

Offset 4, canonical program `A033597.P3717635916819908974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A033597 (n : ℕ) : ℤ :=
  A033597.P3717635916819908974.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A033597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033873.P18414686977204439608

`A003617(n+1)-10^n`
-/

namespace A033873.P18414686977204439608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1) - (10 ^ n : ℤ)

end

end A033873.P18414686977204439608

noncomputable section

/-- A033873: Difference between first prime > 10^n (A003617) and 10^n.

Offset 0, canonical program `A033873.P18414686977204439608`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033873 (n : ℕ) : ℤ :=
  A033873.P18414686977204439608.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033873.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033948.P5912959351970205991

`record[n*A211487(n+1)+1]`
-/

namespace A033948.P5912959351970205991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A211487 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033948.P5912959351970205991

noncomputable section

/-- A033948: Numbers that have a primitive root (k such that the multiplicative group modulo k is cyclic).

Offset 1, canonical program `A033948.P5912959351970205991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033948 (n : ℕ) : ℤ :=
  A033948.P5912959351970205991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034025.P14022890828150912476

`∩[A008784(n+1), A034046(n+1)]`
-/

namespace A034025.P14022890828150912476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P14022890828150912476

noncomputable section

/-- A034025: Both primitively and imprimitively represented by x^2+y^2.

Offset 0, canonical program `A034025.P14022890828150912476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 684 terms. -/
def A034025 (n : ℕ) : ℤ :=
  (A034025.P14022890828150912476.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 684 terms. -/
def A034025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034745.P1976367546847420112

`∑{d}[n+1, A007435(#)*A034741((n+1)/#)]`
-/

namespace A034745.P1976367546847420112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007435 d * A034741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034745.P1976367546847420112

noncomputable section

/-- A034745: Dirichlet convolution of Fibonacci numbers with 3^(n-1).

Offset 1, canonical program `A034745.P1976367546847420112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034745 (n : ℕ) : ℤ :=
  A034745.P1976367546847420112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034760.P11851512362780914640

`∑{d}[n+1, #*A030013((n+1)/#)]`
-/

namespace A034760.P11851512362780914640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A030013 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034760.P11851512362780914640

noncomputable section

/-- A034760: Dirichlet convolution of primes (with 1) with phi(n).

Offset 1, canonical program `A034760.P11851512362780914640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034760 (n : ℕ) : ℤ :=
  A034760.P11851512362780914640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034956.P16124176413780656926

`(A034960(n+1)+A000040(n+1))/2`
-/

namespace A034956.P16124176413780656926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034960 (n + 1) + A000040 (n + 1) : ℚ) / 2

end

end A034956.P16124176413780656926

noncomputable section

/-- A034956: Divide natural numbers in groups with prime(n) elements and add together.

Offset 1, canonical program `A034956.P16124176413780656926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A034960, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A034956 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034956.P16124176413780656926.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A034960, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A034956.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035253.P11915159649385761388

`A035254(n-1)+a(n-1)` with `a(0)=4`
-/

namespace A035253.P11915159649385761388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A035254 (n - 1) + a (n - 1)

end

end A035253.P11915159649385761388

noncomputable section

/-- A035253: Second differences are 2,2,1,2,1,1,2,1,1,1,2,1,1,1,1,2,1,1,1,1,1,2,.. (A035214).

Offset 0, canonical program `A035253.P11915159649385761388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035253 (n : ℕ) : ℤ :=
  A035253.P11915159649385761388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037037.P10824108654988819011

`A100637(n)-A230980(n)`
-/

namespace A037037.P10824108654988819011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - A230980 n

end

end A037037.P10824108654988819011

noncomputable section

/-- A037037: Number of primes between n and 3n.

Offset 1, canonical program `A037037.P10824108654988819011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037037 (n : ℕ) : ℤ :=
  A037037.P10824108654988819011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037128.P2879077099965106880

`A014211(n)-A014210(n)`
-/

namespace A037128.P2879077099965106880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 n - A014210 n

end

end A037128.P2879077099965106880

noncomputable section

/-- A037128: a(n) = nextprime(3^n) - nextprime(2^n).

Offset 0, canonical program `A037128.P2879077099965106880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014210, A014211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A037128 (n : ℕ) : ℤ :=
  A037128.P2879077099965106880.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014210, A014211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A037128.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037131.P15693349067059617684

`A037130(n)/2`
-/

namespace A037131.P15693349067059617684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037130 n : ℚ) / 2

end

end A037131.P15693349067059617684

noncomputable section

/-- A037131: a(n) = (nextprime(4^n) - nextprime(2^n))/2.

Offset 0, canonical program `A037131.P15693349067059617684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037130, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037131 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A037131.P15693349067059617684.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037130, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037131.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038509.P14900524453190628503

`A007310(A199593(n+1))`
-/

namespace A038509.P14900524453190628503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A199593 (n + 1)).toNat

end

end A038509.P14900524453190628503

noncomputable section

/-- A038509: Composite numbers congruent to +-1 mod 6.

Offset 1, canonical program `A038509.P14900524453190628503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A038509 (n : ℕ) : ℤ :=
  A038509.P14900524453190628503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A038509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038558.P636742692231698886

`A233279(n)+A053644(n)`
-/

namespace A038558.P636742692231698886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 n + A053644 n

end

end A038558.P636742692231698886

noncomputable section

/-- A038558: Smallest number with derivative n.

Offset 0, canonical program `A038558.P636742692231698886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038558 (n : ℕ) : ℤ :=
  A038558.P636742692231698886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038587.P18029741549322607791

`∑[A005882(n)]`
-/

namespace A038587.P18029741549322607791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P18029741549322607791

noncomputable section

/-- A038587: Sizes of successive clusters in hexagonal lattice A_2 centered at deep hole.

Offset 0, canonical program `A038587.P18029741549322607791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038587 (n : ℕ) : ℤ :=
  A038587.P18029741549322607791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039734.P6650041505053879589

`A000040(A039733(n+2))`
-/

namespace A039734.P6650041505053879589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A039733 (n + 2)).toNat

end

end A039734.P6650041505053879589

noncomputable section

/-- A039734: a(n)=the prime q

Offset 2, canonical program `A039734.P6650041505053879589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039734 (n : ℕ) : ℤ :=
  A039734.P6650041505053879589.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043555.P11372978209662436476

`A043556(A023717(n))`
-/

namespace A043555.P11372978209662436476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A023717 n).toNat

end

end A043555.P11372978209662436476

noncomputable section

/-- A043555: Number of runs in base-3 representation of n.

Offset 0, canonical program `A043555.P11372978209662436476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1944 terms. -/
def A043555 (n : ℕ) : ℤ :=
  A043555.P11372978209662436476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1944 terms. -/
def A043555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043570.P5918725287675661541

`2*A087118(n+2)+1`
-/

namespace A043570.P5918725287675661541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087118 (n + 2) + 1

end

end A043570.P5918725287675661541

noncomputable section

/-- A043570: Numbers whose base-2 representation has exactly 3 runs.

Offset 1, canonical program `A043570.P5918725287675661541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043570 (n : ℕ) : ℤ :=
  A043570.P5918725287675661541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045028.P3838657998605660470

`∩[A023708(n+1), A023709(n+1)]`
-/

namespace A045028.P3838657998605660470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045028.P3838657998605660470

noncomputable section

/-- A045028: Numbers whose base-4 representation contains exactly three 0's and no 1's.

Offset 1, canonical program `A045028.P3838657998605660470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. -/
def A045028 (n : ℕ) : ℤ :=
  (A045028.P3838657998605660470.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. -/
def A045028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045033.P13537132083446231086

`∩[A023709(n+1), A043336(n+1)]`
-/

namespace A045033.P13537132083446231086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045033.P13537132083446231086

noncomputable section

/-- A045033: Numbers whose base-4 representation contains exactly four 0's and no 1's.

Offset 1, canonical program `A045033.P13537132083446231086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 886 terms. -/
def A045033 (n : ℕ) : ℤ :=
  (A045033.P13537132083446231086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 886 terms. -/
def A045033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045053.P13165953604625975418

`∩[A023708(n+1), A023714(n+1)]`
-/

namespace A045053.P13165953604625975418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045053.P13165953604625975418

noncomputable section

/-- A045053: Numbers whose base-4 representation contains exactly three 0's and one 2.

Offset 1, canonical program `A045053.P13165953604625975418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1885 terms. -/
def A045053 (n : ℕ) : ℤ :=
  (A045053.P13165953604625975418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1885 terms. -/
def A045053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045054.P5102495377277292480

`∩[A023708(n+1), A023715(n+1)]`
-/

namespace A045054.P5102495377277292480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045054.P5102495377277292480

noncomputable section

/-- A045054: Numbers whose base-4 representation contains exactly three 0's and two 2's.

Offset 1, canonical program `A045054.P5102495377277292480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. -/
def A045054 (n : ℕ) : ℤ :=
  (A045054.P5102495377277292480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. -/
def A045054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045077.P18224216252546591222

`∩[A023708(n+1), A023718(n+1)]`
-/

namespace A045077.P18224216252546591222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045077.P18224216252546591222

noncomputable section

/-- A045077: Numbers whose base-4 representation contains exactly three 0's and one 3.

Offset 1, canonical program `A045077.P18224216252546591222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1874 terms. -/
def A045077 (n : ℕ) : ℤ :=
  (A045077.P18224216252546591222.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1874 terms. -/
def A045077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045078.P1198269860631317732

`∩[A023708(n+1), A031462(n+1)]`
-/

namespace A045078.P1198269860631317732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045078.P1198269860631317732

noncomputable section

/-- A045078: Numbers whose base-4 representation contains exactly three 0's and two 3's.

Offset 1, canonical program `A045078.P1198269860631317732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2890 terms. -/
def A045078 (n : ℕ) : ℤ :=
  (A045078.P1198269860631317732.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2890 terms. -/
def A045078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045082.P11121397618110216211

`∩[A031464(n+1), A043336(n+1)]`
-/

namespace A045082.P11121397618110216211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045082.P11121397618110216211

noncomputable section

/-- A045082: Numbers whose base-4 representation contains exactly four 0's and one 3.

Offset 1, canonical program `A045082.P11121397618110216211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3993 terms. -/
def A045082 (n : ℕ) : ℤ :=
  (A045082.P11121397618110216211.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3993 terms. -/
def A045082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045948.P8240563942296454060

`∏[A014963(A048671(n+1))]`
-/

namespace A045948.P8240563942296454060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A048671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045948.P8240563942296454060

noncomputable section

/-- A045948: a(n) = A003418(n)/A034386(n).

Offset 1, canonical program `A045948.P8240563942296454060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045948 (n : ℕ) : ℤ :=
  A045948.P8240563942296454060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045979.P6130204729807151919

`eq[1, A086668(n+1)]+1`
-/

namespace A045979.P6130204729807151919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045979.P6130204729807151919

noncomputable section

/-- A045979: Bernoulli number B_{2n} has denominator 6.

Offset 1, canonical program `A045979.P6130204729807151919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A045979 (n : ℕ) : ℤ :=
  (A045979.P6130204729807151919.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A045979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046073.P8677667642184083970

`A300915(n+1)/A000082(n+1)`
-/

namespace A046073.P8677667642184083970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300915 (n + 1) : ℚ) / (A000082 (n + 1) : ℚ)

end

end A046073.P8677667642184083970

noncomputable section

/-- A046073: Number of squares in multiplicative group modulo n.

Offset 1, canonical program `A046073.P8677667642184083970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046073 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046073.P8677667642184083970.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046111.P6337604296461611774

`A338939(and(n, -2)+2*(n+1))`
-/

namespace A046111.P6337604296461611774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338939 (Int.land (n : ℤ) (-2) + (2 * (n + 1) : ℤ)).toNat

end

end A046111.P6337604296461611774

noncomputable section

/-- A046111: Number of lattice points on circumference of a circle of radius 1/3,2/3,4/3,5/3,... with center at (1/3,0).

Offset 0, canonical program `A046111.P6337604296461611774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A046111 (n : ℕ) : ℤ :=
  A046111.P6337604296461611774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A046111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046390.P348595897100682115

`∩[A046317(n+1), A257415(n+1)]`
-/

namespace A046390.P348595897100682115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046390.P348595897100682115

noncomputable section

/-- A046390: Squarefree odd numbers with exactly 4 distinct prime factors.

Offset 1, canonical program `A046390.P348595897100682115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3763 terms. -/
def A046390 (n : ℕ) : ℤ :=
  (A046390.P348595897100682115.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3763 terms. -/
def A046390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048274.P10497283210798871903

`abs(∑[1-A046079(2*(n+1))])`
-/

namespace A048274.P10497283210798871903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A046079 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A048274.P10497283210798871903

noncomputable section

/-- A048274: Let G be the graph with n vertices, the i-th vertex consisting of all multiples of i <= n, where edges indicate that the vertices intersect; a(n) = |n-(number of edges of G)|.

Offset 1, canonical program `A048274.P10497283210798871903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3626 terms. -/
def A048274 (n : ℕ) : ℤ :=
  A048274.P10497283210798871903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3626 terms. -/
def A048274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048517.P16047989077348899026

`∩[A062336(n+1), A117674(n+1)]`
-/

namespace A048517.P16047989077348899026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048517.P16047989077348899026

noncomputable section

/-- A048517: Primes whose sum of digits is the perfect number 28.

Offset 1, canonical program `A048517.P16047989077348899026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5550 terms. -/
def A048517 (n : ℕ) : ℤ :=
  (A048517.P16047989077348899026.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5550 terms. -/
def A048517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049099.P6325779497038324620

`A055034(A010554(n+1))`
-/

namespace A049099.P6325779497038324620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A010554 (n + 1)).toNat

end

end A049099.P6325779497038324620

noncomputable section

/-- A049099: a(n) = Euler phi function applied thrice to n.

Offset 1, canonical program `A049099.P6325779497038324620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049099 (n : ℕ) : ℤ :=
  A049099.P6325779497038324620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049100.P9945104708846062101

`A010554(A010554(n+1))`
-/

namespace A049100.P9945104708846062101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A010554 (n + 1)).toNat

end

end A049100.P9945104708846062101

noncomputable section

/-- A049100: a(n) = Euler phi function applied 4 times to n.

Offset 1, canonical program `A049100.P9945104708846062101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049100 (n : ℕ) : ℤ :=
  A049100.P9945104708846062101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050152.P13672453519824869841

`A035029(n)-A047781(n+1)`
-/

namespace A050152.P13672453519824869841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035029 n - A047781 (n + 1)

end

end A050152.P13672453519824869841

noncomputable section

/-- A050152: a(n) = T(n,n+3), array T as in A050143.

Offset 0, canonical program `A050152.P13672453519824869841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A050152 (n : ℕ) : ℤ :=
  A050152.P13672453519824869841.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A050152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050207.P7324394721812478698

`p?[A050200(n)]`
-/

namespace A050207.P7324394721812478698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050207.P7324394721812478698

noncomputable section

/-- A050207: Primes of the form p + (smallest prime >= p+1) + (smallest prime >= p+3) where p is a prime.

Offset 1, canonical program `A050207.P7324394721812478698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1467 terms. -/
def A050207 (n : ℕ) : ℤ :=
  A050207.P7324394721812478698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1467 terms. -/
def A050207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051035.P2378121049745272071

`filter[A014091(n+1), A005171(#)]`
-/

namespace A051035.P2378121049745272071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A051035.P2378121049745272071

noncomputable section

/-- A051035: Composite numbers which can be represented as the sum of two primes (i.e., A002808 excluding A025583).

Offset 1, canonical program `A051035.P2378121049745272071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9711 terms. -/
def A051035 (n : ℕ) : ℤ :=
  A051035.P2378121049745272071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9711 terms. -/
def A051035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052424.P2266078276954226597

`A055398(A028310(n))-A000007(n)`
-/

namespace A052424.P2266078276954226597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (A028310 n).toNat - A000007 n

end

end A052424.P2266078276954226597

noncomputable section

/-- A052424: Numbers k with no single-digit factors (apart from 1 and k).

Offset 1, canonical program `A052424.P2266078276954226597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052424 (n : ℕ) : ℤ :=
  A052424.P2266078276954226597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052792.P11520273071812812638

`n*A052776(abs(1-n))`
-/

namespace A052792.P11520273071812812638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052776 |1 - (n : ℤ)|.toNat

end

end A052792.P11520273071812812638

noncomputable section

/-- A052792: Expansion of e.g.f.: x^2*(exp(x)-1)^4.

Offset 0, canonical program `A052792.P11520273071812812638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A052792 (n : ℕ) : ℤ :=
  A052792.P11520273071812812638.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A052792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053149.P4125189005957149122

`(n+1)*A048798(n+1)`
-/

namespace A053149.P4125189005957149122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048798 (n + 1)

end

end A053149.P4125189005957149122

noncomputable section

/-- A053149: Smallest cube divisible by n.

Offset 1, canonical program `A053149.P4125189005957149122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053149 (n : ℕ) : ℤ :=
  A053149.P4125189005957149122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053242.P8865335897655039445

`A053240(lt[A053239(n+1), 2]+1)`
-/

namespace A053242.P8865335897655039445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053239 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053240 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A053242.P8865335897655039445

noncomputable section

/-- A053242: Numbers k such that A053238(k) = 1.

Offset 1, canonical program `A053242.P8865335897655039445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6327 terms. -/
def A053242 (n : ℕ) : ℤ :=
  A053242.P8865335897655039445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6327 terms. -/
def A053242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053244.P10580565334014799152

`A053240(lt[3, A053239(n+1)]+1)`
-/

namespace A053244.P10580565334014799152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A053244.P10580565334014799152

noncomputable section

/-- A053244: Numbers k such that A053238(k) = 4.

Offset 1, canonical program `A053244.P10580565334014799152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2742 terms. -/
def A053244 (n : ℕ) : ℤ :=
  A053244.P10580565334014799152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2742 terms. -/
def A053244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053637.P7550852666118607811

`A043545(n)+A006788(n+1)`
-/

namespace A053637.P7550852666118607811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n + A006788 (n + 1)

end

end A053637.P7550852666118607811

noncomputable section

/-- A053637: a(n) = ceiling(2^(n-1)/n).

Offset 1, canonical program `A053637.P7550852666118607811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A053637 (n : ℕ) : ℤ :=
  A053637.P7550852666118607811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A053637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053723.P17641291077866751382

`∑{d}[n+1, A129303(#)*A154269((n+1)/#)]`
-/

namespace A053723.P17641291077866751382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129303 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053723.P17641291077866751382

noncomputable section

/-- A053723: Number of 5-core partitions of n.

Offset 0, canonical program `A053723.P17641291077866751382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053723 (n : ℕ) : ℤ :=
  A053723.P17641291077866751382.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053822.P1516278078536147993

`∑{d}[n+1, #*A328254((n+1)/#)]`
-/

namespace A053822.P1516278078536147993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053822.P1516278078536147993

noncomputable section

/-- A053822: Dirichlet inverse of sigma_2 function (A001157).

Offset 1, canonical program `A053822.P1516278078536147993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053822 (n : ℕ) : ℤ :=
  A053822.P1516278078536147993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055033.P14607455958913590022

`A034460(A034448(n+1))+A034448(n+1)`
-/

namespace A055033.P14607455958913590022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (A034448 (n + 1)).toNat + A034448 (n + 1)

end

end A055033.P14607455958913590022

noncomputable section

/-- A055033: a(n) = usigma(usigma(n)), where usigma(n) is the sum of unitary divisors of n (A034448).

Offset 1, canonical program `A055033.P14607455958913590022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055033 (n : ℕ) : ℤ :=
  A055033.P14607455958913590022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056139.P2026426973506976792

`(n+2)²-A030664(n+2)`
-/

namespace A056139.P2026426973506976792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A030664 (n + 2)

end

end A056139.P2026426973506976792

noncomputable section

/-- A056139: a(n) = n^2 - primefloor(n)*primeceiling(n).

Offset 2, canonical program `A056139.P2026426973506976792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A056139 (n : ℕ) : ℤ :=
  A056139.P2026426973506976792.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A056139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056140.P18093316663936980328

`(n+3)²-A013638(n+3)`
-/

namespace A056140.P18093316663936980328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - A013638 (n + 3)

end

end A056140.P18093316663936980328

noncomputable section

/-- A056140: a(n) = n^2 - previousprime(n)*nextprime(n), for n>2.

Offset 3, canonical program `A056140.P18093316663936980328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056140 (n : ℕ) : ℤ :=
  A056140.P18093316663936980328.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056192.P9281341979712344168

`(n+1)/A056191(n+1)`
-/

namespace A056192.P9281341979712344168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A056191 (n + 1) : ℚ)

end

end A056192.P9281341979712344168

noncomputable section

/-- A056192: a(n) = n divided by its characteristic cube divisor A056191.

Offset 1, canonical program `A056192.P9281341979712344168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056192 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056192.P9281341979712344168.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056274.P6989764788007675043

`ceil(A034741(n+1)/2)`
-/

namespace A056274.P6989764788007675043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034741 (n + 1) : ℚ) / 2⌉

end

end A056274.P6989764788007675043

noncomputable section

/-- A056274: Number of primitive (aperiodic) word structures of length n using a 3-ary alphabet.

Offset 1, canonical program `A056274.P6989764788007675043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A056274 (n : ℕ) : ℤ :=
  A056274.P6989764788007675043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A056274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056551.P2444650009454942186

`A048798(n+1)*A050985(n+1)`
-/

namespace A056551.P2444650009454942186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (n + 1) * A050985 (n + 1)

end

end A056551.P2444650009454942186

noncomputable section

/-- A056551: Smallest cube divisible by n divided by largest cube which divides n.

Offset 1, canonical program `A056551.P2444650009454942186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048798, A050985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056551 (n : ℕ) : ℤ :=
  A056551.P2444650009454942186.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048798, A050985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057128.P11179917693389423228

`eq[1, A081320(A002472(n+1))]+1`
-/

namespace A057128.P11179917693389423228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081320 (A002472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057128.P11179917693389423228

noncomputable section

/-- A057128: Numbers n such that -3 is a square mod n.

Offset 1, canonical program `A057128.P11179917693389423228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A057128 (n : ℕ) : ℤ :=
  (A057128.P11179917693389423228.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A057128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057948.P3389524961642337781

`2*A327260(n+2)-1`
-/

namespace A057948.P3389524961642337781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327260 (n + 2) - 1

end

end A057948.P3389524961642337781

noncomputable section

/-- A057948: S-primes: let S = {1,5,9, ... 4i+1, ...}; then an S-prime is in S but is not divisible by any members of S except itself and 1.

Offset 1, canonical program `A057948.P3389524961642337781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A057948 (n : ℕ) : ℤ :=
  A057948.P3389524961642337781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A057948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058298.P11921164029853105158

`A077012(A080036(n+1))`
-/

namespace A058298.P11921164029853105158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077012 (A080036 (n + 1)).toNat

end

end A058298.P11921164029853105158

noncomputable section

/-- A058298: Triangle n!/(n-k), 1 <= k < n, read by rows.

Offset 2, canonical program `A058298.P11921164029853105158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A058298 (n : ℕ) : ℤ :=
  A058298.P11921164029853105158.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A058298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060208.P3263259208516589785

`A077150(n+1)-A037228(n+1)`
-/

namespace A060208.P3263259208516589785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077150 (n + 1) - A037228 (n + 1)

end

end A060208.P3263259208516589785

noncomputable section

/-- A060208: a(n) = 2*pi(n) - pi(2*n), where pi(i) = A000720(i).

Offset 1, canonical program `A060208.P3263259208516589785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060208 (n : ℕ) : ℤ :=
  A060208.P3263259208516589785.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060361.P4009678370881410838

`A060357(n)-A003418(n)`
-/

namespace A060361.P4009678370881410838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 n - A003418 n

end

end A060361.P4009678370881410838

noncomputable section

/-- A060361: a(n) = { Smallest prime > k } - k, where k = lcm(1..n).

Offset 0, canonical program `A060361.P4009678370881410838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A060361 (n : ℕ) : ℤ :=
  A060361.P4009678370881410838.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A060361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060634.P7308104990376975230

`eq[A066628(A014963(n+1)), A066628(n+1)]+1`
-/

namespace A060634.P7308104990376975230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (A014963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A060634.P7308104990376975230

noncomputable section

/-- A060634: Union of Fibonacci numbers and prime numbers.

Offset 1, canonical program `A060634.P7308104990376975230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1241 terms. -/
def A060634 (n : ℕ) : ℤ :=
  (A060634.P7308104990376975230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1241 terms. -/
def A060634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061765.P12182906219537179203

`A051027(n+1)-A048146(∑{d}[n+1, #])`
-/

namespace A061765.P12182906219537179203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - A048146 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A061765.P12182906219537179203

noncomputable section

/-- A061765: a(n) = usigma(sigma(n)), where usigma(n) is the sum of unitary divisors of n (A034448) and sigma(n) is the sum of the divisors (A000203).

Offset 1, canonical program `A061765.P12182906219537179203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061765 (n : ℕ) : ℤ :=
  A061765.P12182906219537179203.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061900.P16677403483452273551

`A000217(A067197(n+1))`
-/

namespace A061900.P16677403483452273551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A067197 (n + 1)).toNat

end

end A061900.P16677403483452273551

noncomputable section

/-- A061900: Triangular numbers that are not squarefree.

Offset 1, canonical program `A061900.P16677403483452273551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061900 (n : ℕ) : ℤ :=
  A061900.P16677403483452273551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062302.P6361743643508282382

`n-2*A062301(n+1)`
-/

namespace A062302.P6361743643508282382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A062301 (n + 1)

end

end A062302.P6361743643508282382

noncomputable section

/-- A062302: Number of ways writing n-th prime as a sum of a prime and a nonprime.

Offset 1, canonical program `A062302.P6361743643508282382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062302 (n : ℕ) : ℤ :=
  A062302.P6361743643508282382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062824.P14254279114295766278

`A057428(n)+A034460(A005117(n+1))`
-/

namespace A062824.P14254279114295766278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A034460 (A005117 (n + 1)).toNat

end

end A062824.P14254279114295766278

noncomputable section

/-- A062824: a(n) = Ch(A005117(n)) where Ch(n) is Chowla's function and A005117(n) are the squarefree numbers.

Offset 1, canonical program `A062824.P14254279114295766278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062824 (n : ℕ) : ℤ :=
  A062824.P14254279114295766278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062963.P17032786404384727288

`Δ[A002321(n+1)]*A023022(n+2)`
-/

namespace A062963.P17032786404384727288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A023022 (n + 2)

end

end A062963.P17032786404384727288

noncomputable section

/-- A062963: a(n) = mu(n) * H(n) where H(n) is A023022.

Offset 2, canonical program `A062963.P17032786404384727288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A062963 (n : ℕ) : ℤ :=
  A062963.P17032786404384727288.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A062963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063112.P7730830427237507199

`A007089(A063113(n+1))`
-/

namespace A063112.P7730830427237507199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A063113 (n + 1)).toNat

end

end A063112.P7730830427237507199

noncomputable section

/-- A063112: a(1) = 1; a(n+1) = a(n) + product of nonzero digits of a(n) when written in base 3. Display sequence in base 3.

Offset 1, canonical program `A063112.P7730830427237507199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1942 terms. -/
def A063112 (n : ℕ) : ℤ :=
  A063112.P7730830427237507199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1942 terms. -/
def A063112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063919.P11181265949704613022

`A034460(n+1)+A000007(n)`
-/

namespace A063919.P11181265949704613022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + A000007 n

end

end A063919.P11181265949704613022

noncomputable section

/-- A063919: Sum of proper unitary divisors (or unitary aliquot parts) of n, including 1.

Offset 1, canonical program `A063919.P11181265949704613022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063919 (n : ℕ) : ℤ :=
  A063919.P11181265949704613022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064000.P4860626485817944771

`comp[A034460(n+1)+n]+1`
-/

namespace A064000.P4860626485817944771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A064000.P4860626485817944771

noncomputable section

/-- A064000: Unitary untouchable numbers of second kind: numbers n such that usigma(x) = n has no solution, where usigma(x) (A034448) is the sum of unitary divisors of x.

Offset 1, canonical program `A064000.P4860626485817944771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064000 (n : ℕ) : ℤ :=
  (A064000.P4860626485817944771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064105.P10505817968738943948

`A381841(n+1)-1`
-/

namespace A064105.P10505817968738943948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (n + 1) - 1

end

end A064105.P10505817968738943948

noncomputable section

/-- A064105: 2nd column of 3rd-order Zeckendorf array A136189.

Offset 1, canonical program `A064105.P10505817968738943948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A381841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064105 (n : ℕ) : ℤ :=
  A064105.P10505817968738943948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A381841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064105.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064505.P8463286174945145263

`(n+1)*A014963(n+1)^A189021(n+1)`
-/

namespace A064505.P8463286174945145263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A014963 (n + 1) : ℚ) ^ (A189021 (n + 1) : ℤ)

end

end A064505.P8463286174945145263

noncomputable section

/-- A064505: Interchange primes and their squares.

Offset 1, canonical program `A064505.P8463286174945145263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064505.P8463286174945145263.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064594.P14338933010286859949

`record[gcd(n+1, A048146(n+1))]`
-/

namespace A064594.P14338933010286859949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A048146 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064594.P14338933010286859949

noncomputable section

/-- A064594: Nonunitary multiply perfect numbers: the sum of the nonunitary divisors of n is a multiple of n; i.e., n divides sigma(n) - usigma(n).

Offset 1, canonical program `A064594.P14338933010286859949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064594 (n : ℕ) : ℤ :=
  (A064594.P14338933010286859949.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064597.P7941161019768686173

`lt[n+1, A048146(n+1)]+1`
-/

namespace A064597.P7941161019768686173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A064597.P7941161019768686173

noncomputable section

/-- A064597: Nonunitary abundant numbers: the sum of the nonunitary divisors of k is larger than k; i.e., sigma(k) - usigma(k) > k.

Offset 1, canonical program `A064597.P7941161019768686173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4045 terms. -/
def A064597 (n : ℕ) : ℤ :=
  (A064597.P7941161019768686173.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4045 terms. -/
def A064597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064598.P8686075922530309048

`lt[A048146(n+1), n+1]+1`
-/

namespace A064598.P8686075922530309048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A064598.P8686075922530309048

noncomputable section

/-- A064598: Nonunitary deficient numbers: the sum of the nonunitary divisors of n is less than n; i.e., sigma(n) - usigma(n) < n.

Offset 1, canonical program `A064598.P8686075922530309048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064598 (n : ℕ) : ℤ :=
  (A064598.P8686075922530309048.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064635.P6171821753476805520

`6*A059324(n+1)+10`
-/

namespace A064635.P6171821753476805520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A059324 (n + 1) + 10

end

end A064635.P6171821753476805520

noncomputable section

/-- A064635: Even numbers > 6 not appearing in A064466. a(n) = A064466(A064634(n)) + 2 for n > 0.

Offset 1, canonical program `A064635.P6171821753476805520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6751 terms. -/
def A064635 (n : ℕ) : ℤ :=
  A064635.P6171821753476805520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6751 terms. -/
def A064635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065126.P13933962713951851804

`eq[3, A065803((n+1)²)]+1`
-/

namespace A065126.P13933962713951851804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065803 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065126.P13933962713951851804

noncomputable section

/-- A065126: Numbers n for which sigma_2(n^2) == 3 (mod 10).

Offset 1, canonical program `A065126.P13933962713951851804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A065126 (n : ℕ) : ℤ :=
  (A065126.P13933962713951851804.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A065126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067774.P9573617290434745889

`p?[A353464(n+2)+n]`
-/

namespace A067774.P9573617290434745889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067774.P9573617290434745889

noncomputable section

/-- A067774: Primes p such that p+2 is not a prime.

Offset 1, canonical program `A067774.P9573617290434745889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8368 terms. -/
def A067774 (n : ℕ) : ℤ :=
  A067774.P9573617290434745889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8368 terms. -/
def A067774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067871.P8295475733049076195

`Δ[A024621(n+2)]-1`
-/

namespace A067871.P8295475733049076195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024621 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A067871.P8295475733049076195

noncomputable section

/-- A067871: Number of primes between consecutive terms of A246547 (prime powers p^k, k >= 2).

Offset 1, canonical program `A067871.P8295475733049076195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2066 terms. -/
def A067871 (n : ℕ) : ℤ :=
  A067871.P8295475733049076195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2066 terms. -/
def A067871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067887.P1613746597860396887

`lt[A057000(n+1), A057000(A014963(n+1))]+1`
-/

namespace A067887.P1613746597860396887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (A014963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A067887.P1613746597860396887

noncomputable section

/-- A067887: Composite numbers k such that phi(k+1) < phi(k).

Offset 1, canonical program `A067887.P1613746597860396887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3754 terms. -/
def A067887 (n : ℕ) : ℤ :=
  (A067887.P1613746597860396887.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3754 terms. -/
def A067887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067911.P2708463265915343040

`∏{d}[n+1, A014963((n+1)/#)^#]`
-/

namespace A067911.P2708463265915343040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A014963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ d

end

end A067911.P2708463265915343040

noncomputable section

/-- A067911: Product of gcd(k,n) for 1 <= k <= n.

Offset 1, canonical program `A067911.P2708463265915343040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A067911 (n : ℕ) : ℤ :=
  A067911.P2708463265915343040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A067911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068140.P16002895801053887860

`∩[A046099(n+1)-1, A046099(n+1)]`
-/

namespace A068140.P16002895801053887860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068140.P16002895801053887860

noncomputable section

/-- A068140: Smaller of two consecutive numbers each divisible by a cube greater than one.

Offset 1, canonical program `A068140.P16002895801053887860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 774 terms. -/
def A068140 (n : ℕ) : ℤ :=
  (A068140.P16002895801053887860.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 774 terms. -/
def A068140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068227.P14594515771624751627

`A076982(A039710(n+1))`
-/

namespace A068227.P14594515771624751627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076982 (A039710 (n + 1)).toNat

end

end A068227.P14594515771624751627

noncomputable section

/-- A068227: The "genity" sequence of the primes, i.e., a(n) = g(p) = ((p mod 4) + (p mod 6))/2, where p is the n-th prime.

Offset 1, canonical program `A068227.P14594515771624751627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068227 (n : ℕ) : ℤ :=
  A068227.P14594515771624751627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068519.P12357754682876032502

`A014689(A005451(n+1))+A014684(n+1)`
-/

namespace A068519.P12357754682876032502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A005451 (n + 1)).toNat + A014684 (n + 1)

end

end A068519.P12357754682876032502

noncomputable section

/-- A068519: If n is prime then a(n) = n, else a(n) = prime(n).

Offset 1, canonical program `A068519.P12357754682876032502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068519 (n : ℕ) : ℤ :=
  A068519.P12357754682876032502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068993.P18255477048502972126

`filter[A332269(n+1), A353519(#)]`
-/

namespace A068993.P18255477048502972126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A068993.P18255477048502972126

noncomputable section

/-- A068993: Numbers k such that A062799(k) = 4.

Offset 1, canonical program `A068993.P18255477048502972126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A068993 (n : ℕ) : ℤ :=
  A068993.P18255477048502972126.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A068993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069256.P11047273582001152722

`A000079(val(A000252(n+1), 2))`
-/

namespace A069256.P11047273582001152722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A000252 (n + 1)).toNat 2)

end

end A069256.P11047273582001152722

noncomputable section

/-- A069256: Size of the Sylow 2-subgroup of the group GL_2(Z_n): maximal power of 2 that divides A000252(n).

Offset 1, canonical program `A069256.P11047273582001152722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069256 (n : ℕ) : ℤ :=
  A069256.P11047273582001152722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069588.P13160061826596831233

`A003617(A028310(n)+1)`
-/

namespace A069588.P13160061826596831233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A028310 n + 1).toNat

end

end A069588.P13160061826596831233

noncomputable section

/-- A069588: Smallest prime in which the n-th significant digit is a 1.

Offset 1, canonical program `A069588.P13160061826596831233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A069588 (n : ℕ) : ℤ :=
  A069588.P13160061826596831233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A069588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070990.P8890907964988409263

`Δ[A324337(A003188(n+2))]`
-/

namespace A070990.P8890907964988409263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A003188 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070990.P8890907964988409263

noncomputable section

/-- A070990: First differences of A002487.

Offset 0, canonical program `A070990.P8890907964988409263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070990 (n : ℕ) : ℤ :=
  A070990.P8890907964988409263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071684.P9594924046547730458

`(A090192(n+1)+A000108(n+1))/2`
-/

namespace A071684.P9594924046547730458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090192 (n + 1) + A000108 (n + 1) : ℚ) / 2

end

end A071684.P9594924046547730458

noncomputable section

/-- A071684: Number of plane trees with n edges and having an odd number of leaves.

Offset 1, canonical program `A071684.P9594924046547730458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071684 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071684.P9594924046547730458.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071785.P13852867602320339478

`∏{d}[n+1, A007953(A014963(#))]`
-/

namespace A071785.P13852867602320339478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A007953 (A014963 d).toNat

end

end A071785.P13852867602320339478

noncomputable section

/-- A071785: In prime factorization of n replace each prime with the sum of its decimal digits.

Offset 1, canonical program `A071785.P13852867602320339478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071785 (n : ℕ) : ℤ :=
  A071785.P13852867602320339478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071928.P9769688946254104002

`A001316(A284775(A008619(n))+A001316(n))`
-/

namespace A071928.P9769688946254104002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A284775 (A008619 n).toNat + A001316 n).toNat

end

end A071928.P9769688946254104002

noncomputable section

/-- A071928: Kolakoski-(2,4) sequence: a(n) is length of n-th run.

Offset 1, canonical program `A071928.P9769688946254104002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071928 (n : ℕ) : ℤ :=
  A071928.P9769688946254104002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071991.P15251869434844237950

`∑[1-A117943(n+1)]`
-/

namespace A071991.P15251869434844237950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A117943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071991.P15251869434844237950

noncomputable section

/-- A071991: a(1) = a(2) = 1; a(n) = a(floor(n/3)) + a(n - floor(n/3)).

Offset 1, canonical program `A071991.P15251869434844237950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071991 (n : ℕ) : ℤ :=
  A071991.P15251869434844237950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071995.P18432619017586787944

`∑[or(1, -A117943(n+1))]`
-/

namespace A071995.P18432619017586787944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-A117943 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071995.P18432619017586787944

noncomputable section

/-- A071995: a(1) = 1, a(2) = 0, a(n) = a(floor(n/3)) + a(n - floor(n/3)).

Offset 1, canonical program `A071995.P18432619017586787944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071995 (n : ℕ) : ℤ :=
  A071995.P18432619017586787944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071996.P16781619297024071365

`∑[A117943(n+1)]`
-/

namespace A071996.P16781619297024071365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071996.P16781619297024071365

noncomputable section

/-- A071996: a(1) = 0, a(2) = 1, a(n) = a(floor(n/3)) + a(n - floor(n/3)).

Offset 1, canonical program `A071996.P16781619297024071365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071996 (n : ℕ) : ℤ :=
  A071996.P16781619297024071365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072084.P10567843185268876748

`∏{d}[n+1, A000120(A014963(#))]`
-/

namespace A072084.P10567843185268876748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000120 (A014963 d).toNat

end

end A072084.P10567843185268876748

noncomputable section

/-- A072084: In prime factorization of n replace all primes with their numbers of 1's in binary representation.

Offset 1, canonical program `A072084.P10567843185268876748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072084 (n : ℕ) : ℤ :=
  A072084.P10567843185268876748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072672.P5338413225751562220

`A319613(n+1)+A092390(n+1)`
-/

namespace A072672.P5338413225751562220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319613 (n + 1) + A092390 (n + 1)

end

end A072672.P5338413225751562220

noncomputable section

/-- A072672: Prime(n)*prime(2*n)+prime(n)+prime(2*n).

Offset 1, canonical program `A072672.P5338413225751562220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072672 (n : ℕ) : ℤ :=
  A072672.P5338413225751562220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073271.P12354206027556464355

`floor(A090076(n+1)/A065091(n+1))`
-/

namespace A073271.P12354206027556464355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090076 (n + 1) : ℚ) / (A065091 (n + 1) : ℚ)⌋

end

end A073271.P12354206027556464355

noncomputable section

/-- A073271: a(n) = floor( prime(n)*prime(n+2) / prime(n+1) ).

Offset 1, canonical program `A073271.P12354206027556464355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073271 (n : ℕ) : ℤ :=
  A073271.P12354206027556464355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073627.P13490953195107515830

`A062042(n-a(C(2, n)))` with `a(0)=1, a(1)=1`
-/

namespace A073627.P13490953195107515830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A062042 ((n : ℤ) - a (Nat.choose 2 n)).toNat

end

end A073627.P13490953195107515830

noncomputable section

/-- A073627: a(1)=a(2)=1; for n > 2, a(n) is the smallest integer such that a(n) > a(n-1) and a(n)+a(n-1) is prime.

Offset 1, canonical program `A073627.P13490953195107515830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073627 (n : ℕ) : ℤ :=
  A073627.P13490953195107515830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074451.P6339124675814349987

`∩[A007412(n+1), A046099(n+1)]`
-/

namespace A074451.P6339124675814349987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074451.P6339124675814349987

noncomputable section

/-- A074451: Non-cubefree noncubes.

Offset 1, canonical program `A074451.P6339124675814349987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A074451 (n : ℕ) : ℤ :=
  (A074451.P6339124675814349987.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A074451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074928.P1039295149223078673

`A391804(n+1)-A006094(n+1)`
-/

namespace A074928.P1039295149223078673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391804 (n + 1) - A006094 (n + 1)

end

end A074928.P1039295149223078673

noncomputable section

/-- A074928: a(n) is the least k>0 such that prime(n)*prime(n+1) + k is prime.

Offset 1, canonical program `A074928.P1039295149223078673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074928 (n : ℕ) : ℤ :=
  A074928.P1039295149223078673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074990.P573591418935820260

`A100637(n)-∑[A010051(n+1)]`
-/

namespace A074990.P573591418935820260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074990.P573591418935820260

noncomputable section

/-- A074990: Number of primes in the interval (n,3n].

Offset 1, canonical program `A074990.P573591418935820260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074990 (n : ℕ) : ℤ :=
  A074990.P573591418935820260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075402.P300143287191139796

`A065383(n+1)-∑[n+1]`
-/

namespace A075402.P300143287191139796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065383 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A075402.P300143287191139796

noncomputable section

/-- A075402: Smallest number such that a(n) + T(n) is a prime, where T(n) is the n-th triangular number.

Offset 1, canonical program `A075402.P300143287191139796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075402 (n : ℕ) : ℤ :=
  A075402.P300143287191139796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076649.P8873919623367228431

`∑{d}[n+1, A004218(A014963(#))]`
-/

namespace A076649.P8873919623367228431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004218 (A014963 d).toNat

end

end A076649.P8873919623367228431

noncomputable section

/-- A076649: Number of digits required to write the prime factors of n.

Offset 1, canonical program `A076649.P8873919623367228431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076649 (n : ℕ) : ℤ :=
  A076649.P8873919623367228431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076695.P7345591826054415002

`floor(A107323(n+6)/12)`
-/

namespace A076695.P7345591826054415002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A107323 (n + 6) : ℚ) / 12⌋

end

end A076695.P7345591826054415002

noncomputable section

/-- A076695: Dimension of S2(G0(p)) where p runs through the odd primes >= 13, G0(N) is the Hecke subgroup of SL2(Z), consisting of 2 X 2 matrices (a,b; c,d) with c == 0 (mod N).

Offset 1, canonical program `A076695.P7345591826054415002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A076695 (n : ℕ) : ℤ :=
  A076695.P7345591826054415002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A076695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077455.P10638361790126608453

`A057660((n+1)²)*A077457(n+1)`
-/

namespace A077455.P10638361790126608453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 ((n + 1) ^ 2) * A077457 (n + 1)

end

end A077455.P10638361790126608453

noncomputable section

/-- A077455: a(n) = sigma_4(n^4)/sigma(n^4).

Offset 1, canonical program `A077455.P10638361790126608453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A077455 (n : ℕ) : ℤ :=
  A077455.P10638361790126608453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A077455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077718.P6629925818268460121

`∩[A247068(n+1), A000695(n)]`
-/

namespace A077718.P6629925818268460121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077718.P6629925818268460121

noncomputable section

/-- A077718: Primes which can be expressed as sum of distinct powers of 4.

Offset 1, canonical program `A077718.P6629925818268460121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 583 terms. -/
def A077718 (n : ℕ) : ℤ :=
  (A077718.P6629925818268460121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 583 terms. -/
def A077718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078494.P14448011269337969638

`A218255(eq[1, A038800(n)])`
-/

namespace A078494.P14448011269337969638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078494.P14448011269337969638

noncomputable section

/-- A078494: Primes occurring only once in their decade.

Offset 1, canonical program `A078494.P14448011269337969638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4455 terms. -/
def A078494 (n : ℕ) : ℤ :=
  A078494.P14448011269337969638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4455 terms. -/
def A078494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079065.P5255729659051602087

`∏{d}[n+1, A086369(A014963(#))]`
-/

namespace A079065.P5255729659051602087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A086369 (A014963 d).toNat

end

end A079065.P5255729659051602087

noncomputable section

/-- A079065: In prime factorization of n replace odd primes with 3.

Offset 1, canonical program `A079065.P5255729659051602087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079065 (n : ℕ) : ℤ :=
  A079065.P5255729659051602087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079142.P3719242836369458363

`record[A014963(A008624(n)+1)*A008624(n+9)]`
-/

namespace A079142.P3719242836369458363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008624 n + 1).toNat * A008624 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079142.P3719242836369458363

noncomputable section

/-- A079142: Numbers divisible by prime integer parts of their square roots.

Offset 0, canonical program `A079142.P3719242836369458363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. -/
def A079142 (n : ℕ) : ℤ :=
  A079142.P3719242836369458363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. -/
def A079142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079250.P2253225547210677790

`record[A079251(n+1)-1-a(n-1)]` with `a(0)=4`
-/

namespace A079250.P2253225547210677790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A079251 (n + 1) - 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079250.P2253225547210677790

noncomputable section

/-- A079250: Even numbers in A079000.

Offset 1, canonical program `A079250.P2253225547210677790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079250 (n : ℕ) : ℤ :=
  A079250.P2253225547210677790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079544.P5332634671618239026

`p?[2*A001983(n+1)+1]`
-/

namespace A079544.P5332634671618239026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001983 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079544.P5332634671618239026

noncomputable section

/-- A079544: Primes of the form x^2 + y^2 + 1, x>0, y>0.

Offset 1, canonical program `A079544.P5332634671618239026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1617 terms. -/
def A079544 (n : ℕ) : ℤ :=
  A079544.P5332634671618239026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1617 terms. -/
def A079544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079715.P16991803801828527791

`A056812(n+1)+1`
-/

namespace A079715.P16991803801828527791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056812 (n + 1) + 1

end

end A079715.P16991803801828527791

noncomputable section

/-- A079715: a(n) = pi(n) - pi(sqrt(n)) + 1.

Offset 1, canonical program `A079715.P16991803801828527791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079715 (n : ℕ) : ℤ :=
  A079715.P16991803801828527791.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079715.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079732.P14358494824311656752

`p?[A062545(A001983(n+1))]`
-/

namespace A079732.P14358494824311656752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (A001983 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079732.P14358494824311656752

noncomputable section

/-- A079732: Primes of the form x^2 + y^2 + 3 (x,y positive).

Offset 1, canonical program `A079732.P14358494824311656752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 789 terms. -/
def A079732 (n : ℕ) : ℤ :=
  A079732.P14358494824311656752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 789 terms. -/
def A079732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079781.P461482998826215960

`lcm(A037126(n+1)+1, ∏[A014963(n+1)])-1-n`
-/

namespace A079781.P461482998826215960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A037126 (n + 1) + 1) (∏ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1 - (n : ℤ)

end

end A079781.P461482998826215960

noncomputable section

/-- A079781: Initial term of n-th row of triangle in A079784.

Offset 1, canonical program `A079781.P461482998826215960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A079781 (n : ℕ) : ℤ :=
  A079781.P461482998826215960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A079781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080356.P844167049786570391

`∑[A353463(2*n+1)-A353464(n+2)]`
-/

namespace A080356.P844167049786570391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353463 (2 * n + 1) - A353464 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080356.P844167049786570391

noncomputable section

/-- A080356: Number of twin primes between n and 2n: a(n) = number of j in range n <= j <= 2*n such that j and j+2 are primes.

Offset 1, canonical program `A080356.P844167049786570391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080356 (n : ℕ) : ℤ :=
  A080356.P844167049786570391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080903.P12103839465626112779

`A086398(n+1)-2*A284751(n+1)`
-/

namespace A080903.P12103839465626112779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 1) - 2 * A284751 (n + 1)

end

end A080903.P12103839465626112779

noncomputable section

/-- A080903: a(1)=1; for n>1, a(n)=a(n-1)+4 if n is already in the sequence, a(n)=a(n-1)+2 otherwise.

Offset 1, canonical program `A080903.P12103839465626112779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080903 (n : ℕ) : ℤ :=
  A080903.P12103839465626112779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081218.P17386277852684792015

`A081217(A024621(n+1))`
-/

namespace A081218.P17386277852684792015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081217 (A024621 (n + 1)).toNat

end

end A081218.P17386277852684792015

noncomputable section

/-- A081218: Greatest squarefree number not exceeding n-th prime power which is not prime.

Offset 1, canonical program `A081218.P17386277852684792015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A081218 (n : ℕ) : ℤ :=
  A081218.P17386277852684792015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A081218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082539.P16555288702611882584

`A000040(lt[A084196(n+1), 1]+1)`
-/

namespace A082539.P16555288702611882584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084196 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A082539.P16555288702611882584

noncomputable section

/-- A082539: Primes p such that there is no prime q, q < p with q+1 dividing p+1.

Offset 1, canonical program `A082539.P16555288702611882584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1557 terms. -/
def A082539 (n : ℕ) : ℤ :=
  A082539.P16555288702611882584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1557 terms. -/
def A082539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082953.P9111907207712937456

`A000252(n+1)/A070732(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082953.P9111907207712937456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A070732 (n + 1) : ℚ)

end

end A082953.P9111907207712937456

noncomputable section

/-- A082953: a(n) = A000252(n) / A070732(n).

Offset 1, canonical program `A082953.P9111907207712937456`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, A070732, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082953 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082953.P9111907207712937456.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, A070732, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083799.P12133560913529063526

`(n*n%2/A014963(A028310(n))+n)/2*(n+1)`
-/

namespace A083799.P12133560913529063526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n * (n % 2) : ℕ) : ℚ) / (A014963 (A028310 n).toNat : ℚ) + (n : ℚ)) / 2 * (n + 1 : ℚ)

end

end A083799.P12133560913529063526

noncomputable section

/-- A083799: Main diagonal of A083798.

Offset 1, canonical program `A083799.P12133560913529063526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1912 terms. -/
def A083799 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083799.P12133560913529063526.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1912 terms. -/
def A083799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083802.P8652987844223708355

`floor((A093178(n/A014963(A093178(n)))+n)/2)`
-/

namespace A083802.P8652987844223708355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093178 (SequenceMachineLib.roundAway ((n : ℚ) / (A014963 (A093178 n).toNat : ℚ))).toNat + (n : ℤ) : ℚ) / 2⌋

end

end A083802.P8652987844223708355

noncomputable section

/-- A083802: a(n) = A083799(n)/n.

Offset 1, canonical program `A083802.P8652987844223708355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1707 terms. -/
def A083802 (n : ℕ) : ℤ :=
  A083802.P8652987844223708355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1707 terms. -/
def A083802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083855.P6196543086430157343

`A007913(A083854(n+1))`
-/

namespace A083855.P6196543086430157343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A083854 (n + 1)).toNat

end

end A083855.P6196543086430157343

noncomputable section

/-- A083855: Multiplicands in the list of numbers which are squares, twice squares, three times squares, or six times squares (A083854).

Offset 1, canonical program `A083855.P6196543086430157343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 850 terms. -/
def A083855 (n : ℕ) : ℤ :=
  A083855.P6196543086430157343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 850 terms. -/
def A083855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084345.P17578340069334555207

`eq[0, A123391(A001316(n))]`
-/

namespace A084345.P17578340069334555207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123391 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084345.P17578340069334555207

noncomputable section

/-- A084345: Numbers with a nonprime number of 1's in their binary expansion (complement of A052294).

Offset 1, canonical program `A084345.P17578340069334555207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084345 (n : ℕ) : ℤ :=
  (A084345.P17578340069334555207.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086304.P12731462681422693653

`2*A089038(n+2)-1`
-/

namespace A086304.P12731462681422693653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089038 (n + 2) - 1

end

end A086304.P12731462681422693653

noncomputable section

/-- A086304: Numbers n such that n+6 is prime.

Offset 1, canonical program `A086304.P12731462681422693653`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086304 (n : ℕ) : ℤ :=
  A086304.P12731462681422693653.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086304.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087032.P468071092323424370

`A010051(A087030(n+1))`
-/

namespace A087032.P468071092323424370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A087030 (n + 1)).toNat

end

end A087032.P468071092323424370

noncomputable section

/-- A087032: a(n) = 1 if 2*A151800(n) - n is prime, otherwise 0, where A151800(n) is the smallest prime > n.

Offset 1, canonical program `A087032.P468071092323424370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087032 (n : ℕ) : ℤ :=
  A087032.P468071092323424370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087321.P1047644682119853361

`lcm(A048798(n+1), A066638(n+1))`
-/

namespace A087321.P1047644682119853361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048798 (n + 1)) (A066638 (n + 1))

end

end A087321.P1047644682119853361

noncomputable section

/-- A087321: Smallest multiple of n which is a perfect power (at least a square) of a squarefree number.

Offset 1, canonical program `A087321.P1047644682119853361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087321 (n : ℕ) : ℤ :=
  (A087321.P1047644682119853361.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087427.P1757067230807995280

`(A089038(n+1)+2)*A005097(n+1)`
-/

namespace A087427.P1757067230807995280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089038 (n + 1) + 2) * A005097 (n + 1)

end

end A087427.P1757067230807995280

noncomputable section

/-- A087427: Number of lattice points on or inside the rectangle formed by [1 <= x <= (q-1)/2] and [1 <= y <= (p-1)/2], where p = n-th prime, q = (n-1)-st prime.

Offset 3, canonical program `A087427.P1757067230807995280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087427 (n : ℕ) : ℤ :=
  A087427.P1757067230807995280.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087461.P9410711582706575708

`A089253(n+1)+A089038(2*(n+1))`
-/

namespace A087461.P9410711582706575708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + A089038 (2 * (n + 1))

end

end A087461.P9410711582706575708

noncomputable section

/-- A087461: Arithmetic mean of n-th and 2n-th primes.

Offset 2, canonical program `A087461.P9410711582706575708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A087461 (n : ℕ) : ℤ :=
  A087461.P9410711582706575708.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A087461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088627.P14290878190274737592

`A382983(2*(n+1))`
-/

namespace A088627.P14290878190274737592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382983 (2 * (n + 1))

end

end A088627.P14290878190274737592

noncomputable section

/-- A088627: Let 2n = r*s. Then a(n) = number of primes of the form r+s (r= 1 and s = 2n contributes 1 to the count if 2n+1 is prime).

Offset 1, canonical program `A088627.P14290878190274737592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A088627 (n : ℕ) : ℤ :=
  A088627.P14290878190274737592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A088627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089194.P11768801553608245987

`∩[A089189(n+1), A089191(n+1)]`
-/

namespace A089194.P11768801553608245987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089194.P11768801553608245987

noncomputable section

/-- A089194: Primes p such that p-1 and p+1 are cube- or higher power-free.

Offset 1, canonical program `A089194.P11768801553608245987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6187 terms. -/
def A089194 (n : ℕ) : ℤ :=
  (A089194.P11768801553608245987.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6187 terms. -/
def A089194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089200.P17182532322328293413

`p?[A046099(n+1)+1]`
-/

namespace A089200.P17182532322328293413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089200.P17182532322328293413

noncomputable section

/-- A089200: Primes p such that p-1 is divisible by a cube.

Offset 1, canonical program `A089200.P17182532322328293413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1798 terms. -/
def A089200 (n : ℕ) : ℤ :=
  A089200.P17182532322328293413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1798 terms. -/
def A089200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089929.P15231734945844901481

`A023022(lcm(4, n+2))`
-/

namespace A089929.P15231734945844901481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (Nat.lcm 4 (n + 2))

end

end A089929.P15231734945844901481

noncomputable section

/-- A089929: Algebraic degree of cot(Pi/n).

Offset 2, canonical program `A089929.P15231734945844901481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A089929 (n : ℕ) : ℤ :=
  A089929.P15231734945844901481.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A089929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090113.P14649595053675925337

`∑[A010051(n+1)]*A168141(A028310(n))`
-/

namespace A090113.P14649595053675925337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A168141 (A028310 n).toNat

end

end A090113.P14649595053675925337

noncomputable section

/-- A090113: a(n)=pi(n)*[pi(n)-pi(n-3)] where pi(n)=A000720(n).

Offset 1, canonical program `A090113.P14649595053675925337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090113 (n : ℕ) : ℤ :=
  A090113.P14649595053675925337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091362.P6318580456760933466

`∩[A052034(n+1), A247122(n+1)]`
-/

namespace A091362.P6318580456760933466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091362.P6318580456760933466

noncomputable section

/-- A091362: Primes p such that the sum of the digits of p is not prime, but the sum of the squares of the digits of p is prime.

Offset 1, canonical program `A091362.P6318580456760933466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A091362 (n : ℕ) : ℤ :=
  (A091362.P6318580456760933466.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A091362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091366.P2947392388403710140

`p?[A225534(n+1)]`
-/

namespace A091366.P2947392388403710140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091366.P2947392388403710140

noncomputable section

/-- A091366: Primes p such that the sum of the cubes of the digits of p is prime.

Offset 1, canonical program `A091366.P2947392388403710140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A091366 (n : ℕ) : ℤ :=
  A091366.P2947392388403710140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A091366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091591.P851275186947517392

`A263204(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A091591.P851275186947517392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A263204 (n + 2) - a (n - 1)

end

end A091591.P851275186947517392

noncomputable section

/-- A091591: Number of pairs of twin primes between n^2 and (n+1)^2.

Offset 3, canonical program `A091591.P851275186947517392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A091591 (n : ℕ) : ℤ :=
  A091591.P851275186947517392.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A091591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091666.P2525373801874084828

`A062772(n+1)-A001248(n+1)`
-/

namespace A091666.P2525373801874084828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062772 (n + 1) - A001248 (n + 1)

end

end A091666.P2525373801874084828

noncomputable section

/-- A091666: Difference between prime(n)^2 and the next prime.

Offset 1, canonical program `A091666.P2525373801874084828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091666 (n : ℕ) : ℤ :=
  A091666.P2525373801874084828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091953.P10332148221094495781

`A014963(A061393(A007814(n+1))+A061393(a(n-1)))` with `a(0)=1`
-/

namespace A091953.P10332148221094495781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014963 (A061393 (A007814 (n + 1)).toNat + A061393 (a (n - 1)).toNat).toNat

end

end A091953.P10332148221094495781

noncomputable section

/-- A091953: a(1)=1, a(2n)=1+a(n)(mod 2); a(2n+1)=2*a(2n)+1.

Offset 1, canonical program `A091953.P10332148221094495781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091953 (n : ℕ) : ℤ :=
  A091953.P10332148221094495781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093873.P2224361996583993977

`A295515(A233279(n+1)+1)`
-/

namespace A093873.P2224361996583993977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A233279 (n + 1) + 1).toNat

end

end A093873.P2224361996583993977

noncomputable section

/-- A093873: Numerators in Kepler's tree of harmonic fractions.

Offset 1, canonical program `A093873.P2224361996583993977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9215 terms. -/
def A093873 (n : ℕ) : ℤ :=
  A093873.P2224361996583993977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9215 terms. -/
def A093873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093875.P3977906667613624582

`A114214(A233279(n+1))`
-/

namespace A093875.P3977906667613624582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A233279 (n + 1)).toNat

end

end A093875.P3977906667613624582

noncomputable section

/-- A093875: Denominators in Kepler's tree of harmonic fractions.

Offset 1, canonical program `A093875.P3977906667613624582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9215 terms. -/
def A093875 (n : ℕ) : ℤ :=
  A093875.P3977906667613624582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9215 terms. -/
def A093875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095083.P9414976609862842338

`record[and(1, A182535(n+1))*A000040(n+1)]`
-/

namespace A095083.P9414976609862842338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A182535 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095083.P9414976609862842338

noncomputable section

/-- A095083: Fibodious primes, i.e., primes p whose Zeckendorf-expansion A014417(p) contains an odd number of 1-fibits.

Offset 1, canonical program `A095083.P9414976609862842338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A095083 (n : ℕ) : ℤ :=
  A095083.P9414976609862842338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A095083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095750.P12446210959235044624

`A074313(A072192(n+1))-1`
-/

namespace A095750.P12446210959235044624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074313 (A072192 (n + 1)).toNat - 1

end

end A095750.P12446210959235044624

noncomputable section

/-- A095750: "Degree" of the Sophie Germain primes (A005384).

Offset 0, canonical program `A095750.P12446210959235044624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095750 (n : ℕ) : ℤ :=
  A095750.P12446210959235044624.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096458.P15713165605853716230

`A210882(round(n/(n+1))*A210882(n+2)+1)`
-/

namespace A096458.P15713165605853716230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) * A210882 (n + 2) + 1).toNat

end

end A096458.P15713165605853716230

noncomputable section

/-- A096458: If n is prime, the next prime after the next prime after n. otherwise n.

Offset 1, canonical program `A096458.P15713165605853716230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096458 (n : ℕ) : ℤ :=
  A096458.P15713165605853716230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098141.P9593547582671812815

`∏{d}[n+1, -A014963(#)]+a(n-1)` with `a(0)=1`
-/

namespace A098141.P9593547582671812815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ d ∈ Nat.divisors (f1 n), (-A014963 d) + a (n - 1)

end

end A098141.P9593547582671812815

noncomputable section

/-- A098141: a(1)=1, then if n not a square a(n)=a(n-1) + n, if n a square then a(n)= a(n-1) - n.

Offset 1, canonical program `A098141.P9593547582671812815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098141 (n : ℕ) : ℤ :=
  A098141.P9593547582671812815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100810.P14849954687641833243

`1-A062301(n+2)`
-/

namespace A100810.P14849954687641833243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A062301 (n + 2)

end

end A100810.P14849954687641833243

noncomputable section

/-- A100810: a(n) = 0 if prime(n) + 2 = prime(n+1), otherwise 1.

Offset 1, canonical program `A100810.P14849954687641833243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100810 (n : ℕ) : ℤ :=
  A100810.P14849954687641833243.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100810.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100821.P8316936517107752978

`A062301(n+2)`
-/

namespace A100821.P8316936517107752978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 2)

end

end A100821.P8316936517107752978

noncomputable section

/-- A100821: a(n) = 1 if prime(n) + 2 = prime(n+1), otherwise 0.

Offset 1, canonical program `A100821.P8316936517107752978`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100821 (n : ℕ) : ℤ :=
  A100821.P8316936517107752978.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100994.P12734037206336579450

`A014963(n+1)^A100995(n+1)`
-/

namespace A100994.P12734037206336579450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) : ℚ) ^ (A100995 (n + 1) : ℤ)

end

end A100994.P12734037206336579450

noncomputable section

/-- A100994: If n is a prime power p^m, m >= 1, then n, otherwise 1.

Offset 1, canonical program `A100994.P12734037206336579450`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A100995, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100994 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100994.P12734037206336579450.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A100995, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104324.P1859779613873930843

`A007895(n)+A213911(n)`
-/

namespace A104324.P1859779613873930843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n + A213911 n

end

end A104324.P1859779613873930843

noncomputable section

/-- A104324: The Fibonacci word over the nonnegative integers; or, the number of runs of identical bits in the binary Zeckendorf representation of n.

Offset 0, canonical program `A104324.P1859779613873930843`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, A213911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104324 (n : ℕ) : ℤ :=
  A104324.P1859779613873930843.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, A213911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104897.P16686351449696100309

`A104860(n+1)-A014688(n+1)`
-/

namespace A104897.P16686351449696100309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104860 (n + 1) - A014688 (n + 1)

end

end A104897.P16686351449696100309

noncomputable section

/-- A104897: Difference between (n+prime(n)) and next prime.

Offset 1, canonical program `A104897.P16686351449696100309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014688, A104860, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104897 (n : ℕ) : ℤ :=
  A104897.P16686351449696100309.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014688, A104860, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104897.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105669.P18170374322109492502

`A382113(A005206(n))+1`
-/

namespace A105669.P18170374322109492502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382113 (A005206 n).toNat + 1

end

end A105669.P18170374322109492502

noncomputable section

/-- A105669: A "fractal" transform of the Fibonacci numbers F(n)=A000045(n): a(1)=1, then for n>1 if F(n) < k < F(n+1) we have a(k) = F(n+1)-a(k-F(n)) and when k = F(n+1) we force a(F(n+1)) = F(n+1) + (1+(-1)^n)*F(n).

Offset 1, canonical program `A105669.P18170374322109492502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105669 (n : ℕ) : ℤ :=
  A105669.P18170374322109492502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106077.P8883552310742186102

`∩[A023205(n+1), A023217(n+1)]`
-/

namespace A106077.P8883552310742186102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P8883552310742186102

noncomputable section

/-- A106077: Primes p such that 5*p + 2 and 2*p + 5 are primes.

Offset 1, canonical program `A106077.P8883552310742186102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. -/
def A106077 (n : ℕ) : ℤ :=
  (A106077.P8883552310742186102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. -/
def A106077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106701.P17869885549293977825

`1-A086694(lt[A014963(n+1), n])`
-/

namespace A106701.P17869885549293977825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A086694 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A106701.P17869885549293977825

noncomputable section

/-- A106701: a(n) = next-to-most-significant binary digit of n-th composite positive integer.

Offset 1, canonical program `A106701.P17869885549293977825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A106701 (n : ℕ) : ℤ :=
  A106701.P17869885549293977825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A106701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107181.P333701628097776305

`24*A139531(n+1)+17`
-/

namespace A107181.P333701628097776305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A139531 (n + 1) + 17

end

end A107181.P333701628097776305

noncomputable section

/-- A107181: Primes of the form 8x^2 + 9y^2.

Offset 1, canonical program `A107181.P333701628097776305`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139531, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107181 (n : ℕ) : ℤ :=
  A107181.P333701628097776305.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139531, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107181.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107347.P1469681427645976233

`Δ[n²]-A298861(n+1)`
-/

namespace A107347.P1469681427645976233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A298861 (n + 1)

end

end A107347.P1469681427645976233

noncomputable section

/-- A107347: Number of even semiprimes strictly between prime(n) and 2*prime(n).

Offset 1, canonical program `A107347.P1469681427645976233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107347 (n : ℕ) : ℤ :=
  A107347.P1469681427645976233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107472.P3955423761168080437

`filter[A107323(n+3), A005171(#)]`
-/

namespace A107472.P3955423761168080437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107323 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A107472.P3955423761168080437

noncomputable section

/-- A107472: Composite numbers in sequence A107323.

Offset 1, canonical program `A107472.P3955423761168080437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4822 terms. -/
def A107472 (n : ℕ) : ℤ :=
  A107472.P3955423761168080437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4822 terms. -/
def A107472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107817.P13758543603320578681

`A062042(n-a(C(2, n)))` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A107817.P13758543603320578681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  A062042 ((n : ℤ) - a (Nat.choose 2 n)).toNat

end

end A107817.P13758543603320578681

noncomputable section

/-- A107817: Slowest increasing sequence where 2 consecutive integers sum up to a prime.

Offset 0, canonical program `A107817.P13758543603320578681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107817 (n : ℕ) : ℤ :=
  A107817.P13758543603320578681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107916.P271474803577046997

`∑[A107966(n)]`
-/

namespace A107916.P271474803577046997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107916.P271474803577046997

noncomputable section

/-- A107916: a(n) = binomial(n+3,2)*binomial(n+4,3)*binomial(n+5,5)/12.

Offset 0, canonical program `A107916.P271474803577046997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107916 (n : ℕ) : ℤ :=
  A107916.P271474803577046997.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107942.P11863838632754258616

`2*A107966(n)-A107967(n)`
-/

namespace A107942.P11863838632754258616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107966 n - A107967 n

end

end A107942.P11863838632754258616

noncomputable section

/-- A107942: a(n) = (n+1)(n+2)^3*(n+3)^3*(n+4)(2n+5)/4320.

Offset 0, canonical program `A107942.P11863838632754258616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107942 (n : ℕ) : ℤ :=
  A107942.P11863838632754258616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108154.P5474788176503657523

`char[eq[1, A289356(n)]]*A182047(n)`
-/

namespace A108154.P5474788176503657523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A182047 n

end

end A108154.P5474788176503657523

noncomputable section

/-- A108154: a(n) = n^2 - n + 1 if prime else 0.

Offset 1, canonical program `A108154.P5474788176503657523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108154 (n : ℕ) : ℤ :=
  A108154.P5474788176503657523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108747.P16108472885053491195

`2*A033184(n+1)*A059268(n)`
-/

namespace A108747.P16108472885053491195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033184 (n + 1) * A059268 n)

end

end A108747.P16108472885053491195

noncomputable section

/-- A108747: Triangle read by rows: T(n,k) is the number of Grand Dyck paths of semilength n and having k returns to the x-axis.

Offset 1, canonical program `A108747.P16108472885053491195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108747 (n : ℕ) : ℤ :=
  A108747.P16108472885053491195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108784.P11288806968300134608

`A156706(A000120(n+1)+1)`
-/

namespace A108784.P11288806968300134608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A000120 (n + 1) + 1).toNat

end

end A108784.P11288806968300134608

noncomputable section

/-- A108784: Difference between A107757 and A107755.

Offset 1, canonical program `A108784.P11288806968300134608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A108784 (n : ℕ) : ℤ :=
  A108784.P11288806968300134608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A108784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109091.P7060246415763713748

`A284097(n+1)+A284103(n+1)-A284280(n+1)-A284281(n+1)`
-/

namespace A109091.P7060246415763713748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (n + 1) + A284103 (n + 1) - A284280 (n + 1) - A284281 (n + 1)

end

end A109091.P7060246415763713748

noncomputable section

/-- A109091: Expansion of (1 - eta(q)^5 / eta(q^5)) / 5 in powers of q.

Offset 1, canonical program `A109091.P7060246415763713748`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, A284103, A284280, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109091 (n : ℕ) : ℤ :=
  A109091.P7060246415763713748.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, A284103, A284280, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109984.P9181175671372323294

`A108666(n+1)-A001850(n)`
-/

namespace A109984.P9181175671372323294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108666 (n + 1) - A001850 n

end

end A109984.P9181175671372323294

noncomputable section

/-- A109984: a(n) = number of steps in all Delannoy paths of length n.

Offset 0, canonical program `A109984.P9181175671372323294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A109984 (n : ℕ) : ℤ :=
  A109984.P9181175671372323294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A109984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111735.P13841724041236737776

`A370009(n+1)-A001748(n+1)`
-/

namespace A111735.P13841724041236737776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370009 (n + 1) - A001748 (n + 1)

end

end A111735.P13841724041236737776

noncomputable section

/-- A111735: Distance between k*(n-th prime) and next prime, k=3 case.

Offset 1, canonical program `A111735.P13841724041236737776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111735 (n : ℕ) : ℤ :=
  A111735.P13841724041236737776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111738.P5078444431760926607

`A060266(3*p?[abs(xor(n, -2))])`
-/

namespace A111738.P5078444431760926607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111738.P5078444431760926607

noncomputable section

/-- A111738: Distance between k*(n-th prime) and next prime, k=6 case.

Offset 1, canonical program `A111738.P5078444431760926607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A111738 (n : ℕ) : ℤ :=
  A111738.P5078444431760926607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A111738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111740.P10235014839868050827

`A060266(4*p?[round(8*n/7)])`
-/

namespace A111740.P10235014839868050827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111740.P10235014839868050827

noncomputable section

/-- A111740: Distance between k*(n-th prime) and next prime, k=8 case.

Offset 1, canonical program `A111740.P10235014839868050827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A111740 (n : ℕ) : ℤ :=
  A111740.P10235014839868050827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A111740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111742.P15922268779302674466

`A060266(5*p?[abs(xor(n, -2))])`
-/

namespace A111742.P15922268779302674466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111742.P15922268779302674466

noncomputable section

/-- A111742: Distance between k*(n-th prime) and next prime, k=10 case.

Offset 1, canonical program `A111742.P15922268779302674466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A111742 (n : ℕ) : ℤ :=
  A111742.P15922268779302674466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A111742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112479.P11671366610514428700

`A000079(∑[A010051(n+1)])-A087207(n+1)`
-/

namespace A112479.P11671366610514428700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A087207 (n + 1)

end

end A112479.P11671366610514428700

noncomputable section

/-- A112479: a(n) = 1 + sum{p=primes

Offset 1, canonical program `A112479.P11671366610514428700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A112479 (n : ℕ) : ℤ :=
  A112479.P11671366610514428700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A112479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113175.P16870130656088268305

`∏{d}[n+1, A000045(A014963(#))]`
-/

namespace A113175.P16870130656088268305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000045 (A014963 d).toNat

end

end A113175.P16870130656088268305

noncomputable section

/-- A113175: Replace each prime p in prime-factorization of n with p-th Fibonacci number.

Offset 1, canonical program `A113175.P16870130656088268305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A113175 (n : ℕ) : ℤ :=
  A113175.P16870130656088268305.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A113175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113545.P13162396840576441610

`record[A007913(n+1)/A279497(n+1)]`
-/

namespace A113545.P13162396840576441610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A279497 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113545.P13162396840576441610

noncomputable section

/-- A113545: Numbers both pentagon-free and squarefree.

Offset 1, canonical program `A113545.P13162396840576441610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113545 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113545.P13162396840576441610.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113636.P387307132510664875

`A014684(n+1)+1`
-/

namespace A113636.P387307132510664875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) + 1

end

end A113636.P387307132510664875

noncomputable section

/-- A113636: In the sequence of positive integers add 1 to each nonprime number.

Offset 1, canonical program `A113636.P387307132510664875`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113636 (n : ℕ) : ℤ :=
  A113636.P387307132510664875.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113636.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114129.P7782543749381444924

`filter[A056166(n+2), A351564(#)]`
-/

namespace A114129.P7782543749381444924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A114129.P7782543749381444924

noncomputable section

/-- A114129: Numbers that factorize into a set of prime factors that are each raised to a different prime exponent.

Offset 1, canonical program `A114129.P7782543749381444924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. -/
def A114129 (n : ℕ) : ℤ :=
  A114129.P7782543749381444924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. -/
def A114129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114434.P7399742354239659050

`∏{d}[A018252(n+2), A000203(A014963(#))]`
-/

namespace A114434.P7399742354239659050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000203 (A014963 d).toNat

end

end A114434.P7399742354239659050

noncomputable section

/-- A114434: To obtain a(n), write the n-th composite number as a product of primes, add 1 to each prime and multiply.

Offset 1, canonical program `A114434.P7399742354239659050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A114434 (n : ℕ) : ℤ :=
  A114434.P7399742354239659050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A114434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114587.P2300665656653397848

`A114515(n+3)-A114590(n+1)`
-/

namespace A114587.P2300665656653397848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114515 (n + 3) - A114590 (n + 1)

end

end A114587.P2300665656653397848

noncomputable section

/-- A114587: Number of peaks at odd levels in all hill-free Dyck paths of semilength n+3 (a hill in a Dyck path is a peak at level 1).

Offset 0, canonical program `A114587.P2300665656653397848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A114587 (n : ℕ) : ℤ :=
  A114587.P2300665656653397848.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A114587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000469.P516089823978451219

`A120944(floor(C(n, a(n-1))/2+n))` with `a(0)=1`
-/

namespace A000469.P516089823978451219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120944 ⌊(Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ)⌋.toNat

end

end A000469.P516089823978451219

noncomputable section

/-- A000469: 1 together with products of 2 or more distinct primes.

Offset 1, canonical program `A000469.P516089823978451219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000469 (n : ℕ) : ℤ :=
  A000469.P516089823978451219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001083.P5643140285671293949

`A054353(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A001083.P5643140285671293949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A054353 (a (n - 1)).toNat

end

end A001083.P5643140285671293949

noncomputable section

/-- A001083: Length of one version of Kolakoski sequence {A000002(i)} at n-th growth stage.

Offset 1, canonical program `A001083.P5643140285671293949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001083 (n : ℕ) : ℤ :=
  A001083.P5643140285671293949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001083.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001766.P5829202588675829785

`A000056(n+1)/A014963(A060594(n+1))`
-/

namespace A001766.P5829202588675829785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A014963 (A060594 (n + 1)).toNat : ℚ)

end

end A001766.P5829202588675829785

noncomputable section

/-- A001766: Index of (the image of) the modular group Gamma(n) in PSL_2(Z).

Offset 1, canonical program `A001766.P5829202588675829785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001766 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001766.P5829202588675829785.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002003.P14937103929283769724

`2*A047781(n)`
-/

namespace A002003.P14937103929283769724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047781 n

end

end A002003.P14937103929283769724

noncomputable section

/-- A002003: a(n) = 2 * Sum_{k=0..n-1} binomial(n-1, k)*binomial(n+k, k).

Offset 0, canonical program `A002003.P14937103929283769724`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047781, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002003 (n : ℕ) : ℤ :=
  A002003.P14937103929283769724.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047781, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002695.P2491459633188973509

`∑[A108666(n+1)]`
-/

namespace A002695.P2491459633188973509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002695.P2491459633188973509

noncomputable section

/-- A002695: P_n'(3), where P_n is n-th Legendre polynomial.

Offset 1, canonical program `A002695.P2491459633188973509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A002695 (n : ℕ) : ℤ :=
  A002695.P2491459633188973509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A002695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003050.P2859772275645655449

`A001615(n+1)-(A157227(n+1)+A157223(n+1))`
-/

namespace A003050.P2859772275645655449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) - (A157227 (n + 1) + A157223 (n + 1))

end

end A003050.P2859772275645655449

noncomputable section

/-- A003050: Number of primitive sublattices of index n in hexagonal lattice: triples x,y,z from Z/nZ with x+y+z = 0, discarding any triple that can be obtained from another by multiplying by a unit and permuting.

Offset 1, canonical program `A003050.P2859772275645655449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003050 (n : ℕ) : ℤ :=
  A003050.P2859772275645655449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003960.P16011215527621288421

`∏{d}[n+1, ceil(A014963(#)/2)]`
-/

namespace A003960.P16011215527621288421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ⌈(A014963 d : ℚ) / 2⌉

end

end A003960.P16011215527621288421

noncomputable section

/-- A003960: Fully multiplicative with a(p) = [ (p+1)/2 ] for prime p.

Offset 1, canonical program `A003960.P16011215527621288421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003960 (n : ℕ) : ℤ :=
  A003960.P16011215527621288421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009041.P2318627232109113920

`∑[char[∑[A046079(n+1)]]]+2`
-/

namespace A009041.P2318627232109113920
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A009041.P2318627232109113920

noncomputable section

/-- A009041: Ordered legs of Pythagorean triangles.

Offset 1, canonical program `A009041.P2318627232109113920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009041 (n : ℕ) : ℤ :=
  (A009041.P2318627232109113920.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011677.P7686249500510810447

`A011681(A016789(n)+85)`
-/

namespace A011677.P7686249500510810447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011681 (A016789 n + 85).toNat

end

end A011677.P7686249500510810447

noncomputable section

/-- A011677: A binary m-sequence: expansion of reciprocal of x^7+x^5+x^2+x+1.

Offset 0, canonical program `A011677.P7686249500510810447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3305 terms. -/
def A011677 (n : ℕ) : ℤ :=
  A011677.P7686249500510810447.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3305 terms. -/
def A011677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011678.P7294615667966746558

`A011681(7*(n+2))`
-/

namespace A011678.P7294615667966746558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011681 (7 * (n + 2))

end

end A011678.P7294615667966746558

noncomputable section

/-- A011678: A binary m-sequence: expansion of reciprocal of x^7+x^5+x^3+x+1.

Offset 0, canonical program `A011678.P7294615667966746558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A011678 (n : ℕ) : ℤ :=
  A011678.P7294615667966746558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A011678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013598.P2424592840134159747

`A014211(n)-3^n`
-/

namespace A013598.P2424592840134159747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 n - (3 ^ n : ℤ)

end

end A013598.P2424592840134159747

noncomputable section

/-- A013598: a(n) = nextprime(3^n)-3^n.

Offset 0, canonical program `A013598.P2424592840134159747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A013598 (n : ℕ) : ℤ :=
  A013598.P2424592840134159747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A013598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014720.P13939622138793062824

`A014411(n+1)²`
-/

namespace A014720.P13939622138793062824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014411 (n + 1) ^ 2

end

end A014720.P13939622138793062824

noncomputable section

/-- A014720: Squares of elements to right of central element in Pascal triangle (by row) that are not 1.

Offset 1, canonical program `A014720.P13939622138793062824`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014720 (n : ℕ) : ℤ :=
  A014720.P13939622138793062824.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027386.P13022936192587829036

`∑{digits}[n, A332813(A033484(#))]`
-/

namespace A027386.P13022936192587829036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A332813 (A033484 x).toNat).sum

end

end A027386.P13022936192587829036

noncomputable section

/-- A027386: Write digits for n, count endpoints (version 1).

Offset 0, canonical program `A027386.P13022936192587829036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027386 (n : ℕ) : ℤ :=
  A027386.P13022936192587829036.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028331.P79324678744647748

`2*A014411(n+1)`
-/

namespace A028331.P79324678744647748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014411 (n + 1)

end

end A028331.P79324678744647748

noncomputable section

/-- A028331: Elements to the right of the central elements of the even-Pascal triangle A028326 that are not 2.

Offset 0, canonical program `A028331.P79324678744647748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028331 (n : ℕ) : ℤ :=
  A028331.P79324678744647748.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029612.P8705984013740246466

`A029611(eq[1, A029611(n)%2])`
-/

namespace A029612.P8705984013740246466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029611 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029611 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029612.P8705984013740246466

noncomputable section

/-- A029612: Odd numbers to the left of the central elements of the (2,3)-Pascal triangle A029600.

Offset 0, canonical program `A029612.P8705984013740246466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. -/
def A029612 (n : ℕ) : ℤ :=
  A029612.P8705984013740246466.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. -/
def A029612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029645.P11204956944610452439

`A029611(n)-A014463(n+1)`
-/

namespace A029645.P11204956944610452439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029611 n - A014463 (n + 1)

end

end A029645.P11204956944610452439

noncomputable section

/-- A029645: Numbers to the left of the central elements of the (1,2)-Pascal triangle A029635 that are different from 1.

Offset 0, canonical program `A029645.P11204956944610452439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029645 (n : ℕ) : ℤ :=
  A029645.P11204956944610452439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039599.P10229037155261832338

`A008313(A061885(n))`
-/

namespace A039599.P10229037155261832338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (A061885 n).toNat

end

end A039599.P10229037155261832338

noncomputable section

/-- A039599: Triangle formed from even-numbered columns of triangle of expansions of powers of x in terms of Chebyshev polynomials U_n(x).

Offset 0, canonical program `A039599.P10229037155261832338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A039599 (n : ℕ) : ℤ :=
  A039599.P10229037155261832338.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A039599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046022.P4558940758189190591

`A335402(n+1)+A130716(n)`
-/

namespace A046022.P4558940758189190591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (n + 1) + A130716 n

end

end A046022.P4558940758189190591

noncomputable section

/-- A046022: Primes together with 1 and 4.

Offset 1, canonical program `A046022.P4558940758189190591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046022 (n : ℕ) : ℤ :=
  A046022.P4558940758189190591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046657.P13205024743350852941

`A049806(n+2)-1`
-/

namespace A046657.P13205024743350852941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049806 (n + 2) - 1

end

end A046657.P13205024743350852941

noncomputable section

/-- A046657: a(n) = A002088(n)/2.

Offset 2, canonical program `A046657.P13205024743350852941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046657 (n : ℕ) : ℤ :=
  A046657.P13205024743350852941.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046953.P12772226548913626932

`A059324(n+1)+1`
-/

namespace A046953.P12772226548913626932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059324 (n + 1) + 1

end

end A046953.P12772226548913626932

noncomputable section

/-- A046953: Numbers k such that 6*k - 1 is composite.

Offset 1, canonical program `A046953.P12772226548913626932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046953 (n : ℕ) : ℤ :=
  A046953.P12772226548913626932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049715.P11687973096568825329

`A176562(n)+A057427(n)`
-/

namespace A049715.P11687973096568825329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176562 n + A057427 n

end

end A049715.P11687973096568825329

noncomputable section

/-- A049715: a(n)=T(n,0), array T as in A049747.

Offset 0, canonical program `A049715.P11687973096568825329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 689 terms. -/
def A049715 (n : ℕ) : ℤ :=
  A049715.P11687973096568825329.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 689 terms. -/
def A049715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050150.P9836629661305837996

`filter[A009087(n+1), A361023(#)]`
-/

namespace A050150.P9836629661305837996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A050150.P9836629661305837996

noncomputable section

/-- A050150: Odd numbers with prime number of divisors.

Offset 1, canonical program `A050150.P9836629661305837996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9664 terms. -/
def A050150 (n : ℕ) : ℤ :=
  A050150.P9836629661305837996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9664 terms. -/
def A050150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053797.P12604746864527782063

`A378619(A072284(n+2)-1)`
-/

namespace A053797.P12604746864527782063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378619 (A072284 (n + 2) - 1).toNat

end

end A053797.P12604746864527782063

noncomputable section

/-- A053797: Lengths of successive gaps between squarefree numbers.

Offset 1, canonical program `A053797.P12604746864527782063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8553 terms. -/
def A053797 (n : ℕ) : ℤ :=
  A053797.P12604746864527782063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8553 terms. -/
def A053797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054352.P3911841191489718260

`A054353(a(n-1))+1` with `a(0)=1`
-/

namespace A054352.P3911841191489718260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054353 (a (n - 1)).toNat + 1

end

end A054352.P3911841191489718260

noncomputable section

/-- A054352: Lengths of successive generations of the Kolakoski sequence A000002.

Offset 0, canonical program `A054352.P3911841191489718260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054352 (n : ℕ) : ℤ :=
  A054352.P3911841191489718260.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054352.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055931.P16098682155717244574

`∩[A055933(n+1), A254621(n+1)]`
-/

namespace A055931.P16098682155717244574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055931.P16098682155717244574

noncomputable section

/-- A055931: Product of the digits of n divides the sum of the digits of n.

Offset 1, canonical program `A055931.P16098682155717244574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A055931 (n : ℕ) : ℤ :=
  (A055931.P16098682155717244574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A055931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059743.P10200141128620482655

`A175341(n)+1`
-/

namespace A059743.P10200141128620482655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175341 n + 1

end

end A059743.P10200141128620482655

noncomputable section

/-- A059743: Number of points of norm^2 <= n^2 in the square lattice that are visible from the origin.

Offset 0, canonical program `A059743.P10200141128620482655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7153 terms. -/
def A059743 (n : ℕ) : ℤ :=
  A059743.P10200141128620482655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7153 terms. -/
def A059743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061041.P2146883459345786902

`A174680(n+4)`
-/

namespace A061041.P2146883459345786902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174680 (n + 4)

end

end A061041.P2146883459345786902

noncomputable section

/-- A061041: Numerator of 1/16 - 1/n^2.

Offset 4, canonical program `A061041.P2146883459345786902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A061041 (n : ℕ) : ℤ :=
  A061041.P2146883459345786902.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A061041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061395.P8431317036300486107

`A029837(A087207(n+1)+1)`
-/

namespace A061395.P8431317036300486107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A087207 (n + 1) + 1).toNat

end

end A061395.P8431317036300486107

noncomputable section

/-- A061395: Let p be the largest prime factor of n; if p is the k-th prime then set a(n) = k; a(1) = 0 by convention.

Offset 1, canonical program `A061395.P8431317036300486107`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, A087207, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A061395 (n : ℕ) : ℤ :=
  A061395.P8431317036300486107.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, A087207, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A061395.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062370.P15216578190729335330

`∑{d}[n+1, A007429(#)*A343569((n+1)/#)]`
-/

namespace A062370.P15216578190729335330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A343569 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062370.P15216578190729335330

noncomputable section

/-- A062370: a(n) = Sum_{i|n,j|n} sigma(i)*sigma(j)/sigma(gcd(i,j)), where sigma(n) = sum of divisors of n.

Offset 1, canonical program `A062370.P15216578190729335330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062370 (n : ℕ) : ℤ :=
  A062370.P15216578190729335330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066047.P375633196085682392

`A175212(n+2)`
-/

namespace A066047.P375633196085682392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175212 (n + 2)

end

end A066047.P375633196085682392

noncomputable section

/-- A066047: Numbers k that divide A001045(k-1).

Offset 1, canonical program `A066047.P375633196085682392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9969 terms. -/
def A066047 (n : ℕ) : ℤ :=
  A066047.P375633196085682392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9969 terms. -/
def A066047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066073.P15506222458200392670

`filter[A248792(n+1), A005171(#)]`
-/

namespace A066073.P15506222458200392670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A066073.P15506222458200392670

noncomputable section

/-- A066073: Composite numbers k such that sigma(k) - 1 is prime.

Offset 1, canonical program `A066073.P15506222458200392670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7086 terms. -/
def A066073 (n : ℕ) : ℤ :=
  A066073.P15506222458200392670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7086 terms. -/
def A066073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066248.P18315352705332672383

`A026238(n+2)+A026238(n+2)-A005171(n+2)`
-/

namespace A066248.P18315352705332672383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (n + 2) + (A026238 (n + 2) - A005171 (n + 2))

end

end A066248.P18315352705332672383

noncomputable section

/-- A066248: a(n) = if n+1 is prime then A049084(n+1)*2 else A066246(n+1)*2 - 1.

Offset 1, canonical program `A066248.P18315352705332672383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066248 (n : ℕ) : ℤ :=
  A066248.P18315352705332672383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068720.P14290716008298277982

`(n+1)*(A068719(n+1)-(n+1))`
-/

namespace A068720.P14290716008298277982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A068719 (n + 1) - (n + 1 : ℤ))

end

end A068720.P14290716008298277982

noncomputable section

/-- A068720: Arithmetic derivative of squares: a(n) = 2*n*A003415(n).

Offset 1, canonical program `A068720.P14290716008298277982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068720 (n : ℕ) : ℤ :=
  A068720.P14290716008298277982.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069112.P1782923190189345693

`A090633(n+1)/A007913(A014491(n+1))`
-/

namespace A069112.P1782923190189345693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090633 (n + 1) : ℚ) / (A007913 (A014491 (n + 1)).toNat : ℚ)

end

end A069112.P1782923190189345693

noncomputable section

/-- A069112: Squarefree part of 2^n-1 : the smallest number such that a(n)*(2^n-1) is a square.

Offset 1, canonical program `A069112.P1782923190189345693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A069112 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069112.P1782923190189345693.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A069112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069171.P16058303323936119467

`A002808(eq[3, A260626(n+1)])`
-/

namespace A069171.P16058303323936119467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069171.P16058303323936119467

noncomputable section

/-- A069171: Numbers k such that gcd(k, 2^k-1) = 3.

Offset 1, canonical program `A069171.P16058303323936119467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A069171 (n : ℕ) : ℤ :=
  A069171.P16058303323936119467.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A069171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069987.P16382428948986739253

`A049533(n+1)²+1`
-/

namespace A069987.P16382428948986739253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (n + 1) ^ 2 + 1

end

end A069987.P16382428948986739253

noncomputable section

/-- A069987: Squarefree numbers of form k^2 + 1.

Offset 1, canonical program `A069987.P16382428948986739253`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049533, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069987 (n : ℕ) : ℤ :=
  A069987.P16382428948986739253.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049533, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070915.P11112854238645212373

`comp[A000977(n+1)-1]+1`
-/

namespace A070915.P11112854238645212373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A070915.P11112854238645212373

noncomputable section

/-- A070915: Numbers having at most two distinct prime factors.

Offset 1, canonical program `A070915.P11112854238645212373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070915 (n : ℕ) : ℤ :=
  (A070915.P11112854238645212373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077128.P6236648735543472976

`A097050(n+1)`
-/

namespace A077128.P6236648735543472976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097050 (n + 1)

end

end A077128.P6236648735543472976

noncomputable section

/-- A077128: Smallest number greater than the previous term which is relatively prime to each of the group of the next n numbers.

Offset 1, canonical program `A077128.P6236648735543472976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A077128 (n : ℕ) : ℤ :=
  A077128.P6236648735543472976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A077128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080821.P11448847452303854669

`p?[A181132(n)+A001855(n+1)]`
-/

namespace A080821.P11448847452303854669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181132 n + A001855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080821.P11448847452303854669

noncomputable section

/-- A080821: Primes in the accumulated tally of steps in the x+1 problem: Repeat until 1 is reached: if x is even divide by 2, otherwise add 1.

Offset 1, canonical program `A080821.P11448847452303854669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 942 terms. -/
def A080821 (n : ℕ) : ℤ :=
  A080821.P11448847452303854669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 942 terms. -/
def A080821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081765.P897512741058972428

`A276967(n+2)-2`
-/

namespace A081765.P897512741058972428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276967 (n + 2) - 2

end

end A081765.P897512741058972428

noncomputable section

/-- A081765: Numbers k such that k+2 divides 2^(k-1) - 1.

Offset 1, canonical program `A081765.P897512741058972428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A081765 (n : ℕ) : ℤ :=
  A081765.P897512741058972428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A081765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095879.P11268463583022771490

`comp[A095880(n+1)]`
-/

namespace A095879.P11268463583022771490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095879.P11268463583022771490

noncomputable section

/-- A095879: Numbers whose lazy Fibonacci representation has an odd number of summands.

Offset 1, canonical program `A095879.P11268463583022771490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095879 (n : ℕ) : ℤ :=
  (A095879.P11268463583022771490.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096677.P7170319488795108881

`A099801(A096784(n+1))`
-/

namespace A096677.P7170319488795108881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A096784 (n + 1)).toNat

end

end A096677.P7170319488795108881

noncomputable section

/-- A096677: A060254 indexed by A000040.

Offset 1, canonical program `A096677.P7170319488795108881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8250 terms. -/
def A096677 (n : ℕ) : ℤ :=
  A096677.P7170319488795108881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8250 terms. -/
def A096677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108221.P9472332214346116562

`ceil(sqrt(A108222(n+1)))`
-/

namespace A108221.P9472332214346116562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A108222 (n + 1) : ℝ)⌉

end

end A108221.P9472332214346116562

noncomputable section

/-- A108221: Primes of the form ceiling(sqrt(prime(n))).

Offset 1, canonical program `A108221.P9472332214346116562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108221 (n : ℕ) : ℤ :=
  A108221.P9472332214346116562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108221.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108936.P10845759939433094965

`A105773(n+12)-74`
-/

namespace A108936.P10845759939433094965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105773 (n + 12) - 74

end

end A108936.P10845759939433094965

noncomputable section

/-- A108936: Numbers n such that 11*n + 911 is prime.

Offset 1, canonical program `A108936.P10845759939433094965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A108936 (n : ℕ) : ℤ :=
  A108936.P10845759939433094965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A108936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109352.P9493933072214551089

`∑{p}[A120944(n+1), #]`
-/

namespace A109352.P9493933072214551089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A109352.P9493933072214551089

noncomputable section

/-- A109352: a(n) = sum of the prime divisors of the n-th squarefree composite number.

Offset 1, canonical program `A109352.P9493933072214551089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109352 (n : ℕ) : ℤ :=
  (A109352.P9493933072214551089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110007.P13703026918754341120

`A188467(n+1)+a(2%n)+1` with `a(0)=1`
-/

namespace A110007.P13703026918754341120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188467 (n + 1) + (a (2 % n) + 1)

end

end A110007.P13703026918754341120

noncomputable section

/-- A110007: a(n) = n-F(F(F(n))) where F(x)=A120613(x)=floor(phi*floor(x/phi)) and phi=(1+sqrt(5))/2.

Offset 1, canonical program `A110007.P13703026918754341120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110007 (n : ℕ) : ℤ :=
  A110007.P13703026918754341120.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111159.P278081500121415465

`eq[A087507(n), A235872(n+1)]+1`
-/

namespace A111159.P278081500121415465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087507 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235872 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111159.P278081500121415465

noncomputable section

/-- A111159: Numbers k such that A111075(k) is odd.

Offset 1, canonical program `A111159.P278081500121415465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A111159 (n : ℕ) : ℤ :=
  (A111159.P278081500121415465.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A111159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112609.P8066156262677695015

`A071045(1-A262726(2*n+1))`
-/

namespace A112609.P8066156262677695015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (1 - A262726 (2 * n + 1)).toNat

end

end A112609.P8066156262677695015

noncomputable section

/-- A112609: Number of representations of n as a sum of three times a triangular number and four times a triangular number.

Offset 0, canonical program `A112609.P8066156262677695015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A112609 (n : ℕ) : ℤ :=
  A112609.P8066156262677695015.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A112609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003415.P9326043729983995739

`∑{d}[n, A300251(#)]`
-/

namespace A003415.P9326043729983995739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d

end

end A003415.P9326043729983995739

noncomputable section

/-- A003415: a(n) = n' = arithmetic derivative of n: a(0) = a(1) = 0, a(prime) = 1, a(m*n) = m*a(n) + n*a(m).

Offset 0, canonical program `A003415.P9326043729983995739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003415 (n : ℕ) : ℤ :=
  A003415.P9326043729983995739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019422.P17202336525411077466

`record[A006532(n+1)*A010052(A074385(n+1))]`
-/

namespace A019422.P17202336525411077466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1) * A010052 (A074385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019422.P17202336525411077466

noncomputable section

/-- A019422: Numbers whose sum of divisors is a fourth power.

Offset 1, canonical program `A019422.P17202336525411077466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A019422 (n : ℕ) : ℤ :=
  A019422.P17202336525411077466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A019422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037989.P17780582745811707290

`eq[2, A043281(n+1)]+1`
-/

namespace A037989.P17780582745811707290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037989.P17780582745811707290

noncomputable section

/-- A037989: Numbers whose maximal base-7 run length is 2.

Offset 1, canonical program `A037989.P17780582745811707290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3809 terms. -/
def A037989 (n : ℕ) : ℤ :=
  (A037989.P17780582745811707290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3809 terms. -/
def A037989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037990.P11351931847742958778

`eq[3, A043281(A028310(n))]`
-/

namespace A037990.P11351931847742958778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037990.P11351931847742958778

noncomputable section

/-- A037990: Numbers whose maximal base 7 run length is 3.

Offset 1, canonical program `A037990.P11351931847742958778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A037990 (n : ℕ) : ℤ :=
  (A037990.P11351931847742958778.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A037990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037993.P5476900089345289950

`eq[2, A043282(n+1)]+1`
-/

namespace A037993.P5476900089345289950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037993.P5476900089345289950

noncomputable section

/-- A037993: Numbers whose maximal base-8 run length is 2.

Offset 1, canonical program `A037993.P5476900089345289950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3551 terms. -/
def A037993 (n : ℕ) : ℤ :=
  (A037993.P5476900089345289950.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3551 terms. -/
def A037993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043093.P7626507007390763176

`eq[1, A043281(A028310(n))]`
-/

namespace A043093.P7626507007390763176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043093.P7626507007390763176

noncomputable section

/-- A043093: Every string of 2 consecutive base 7 digits contains exactly 2 distinct numbers.

Offset 0, canonical program `A043093.P7626507007390763176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5695 terms. -/
def A043093 (n : ℕ) : ℤ :=
  (A043093.P7626507007390763176.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5695 terms. -/
def A043093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043094.P264421878189047004

`eq[1, A043282(A028310(n))]`
-/

namespace A043094.P264421878189047004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043094.P264421878189047004

noncomputable section

/-- A043094: Every string of 2 consecutive base 8 digits contains exactly 2 distinct numbers.

Offset 0, canonical program `A043094.P264421878189047004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6050 terms. -/
def A043094 (n : ℕ) : ℤ :=
  (A043094.P264421878189047004.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6050 terms. -/
def A043094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048640.P576295911288433352

`A000007(n)+2*A048672(n+1)`
-/

namespace A048640.P576295911288433352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A048672 (n + 1)

end

end A048640.P576295911288433352

noncomputable section

/-- A048640: Binary encoding of the squarefree numbers, A005117.

Offset 1, canonical program `A048640.P576295911288433352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1361 terms. -/
def A048640 (n : ℕ) : ℤ :=
  A048640.P576295911288433352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1361 terms. -/
def A048640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051276.P61944378441826423

`gcd(12, Δ[A034935(n)])`
-/

namespace A051276.P61944378441826423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034935 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (f1 (n + 1) - f1 n)

end

end A051276.P61944378441826423

noncomputable section

/-- A051276: Nonzero coefficients in one of the 5-adic expansions of sqrt(-1).

Offset 0, canonical program `A051276.P61944378441826423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A051276 (n : ℕ) : ℤ :=
  (A051276.P61944378441826423.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A051276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085037.P17474095553337422885

`∑[n+1]*A361670(n+1)`
-/

namespace A085037.P17474095553337422885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A361670 (n + 1)

end

end A085037.P17474095553337422885

noncomputable section

/-- A085037: Smallest square divisible by the n-th triangular number (n(n+1)/2).

Offset 1, canonical program `A085037.P17474095553337422885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085037 (n : ℕ) : ℤ :=
  A085037.P17474095553337422885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112559.P1469957549597084680

`floor(A113601(n+1)/4)`
-/

namespace A112559.P1469957549597084680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113601 (n + 1) : ℚ) / 4⌋

end

end A112559.P1469957549597084680

noncomputable section

/-- A112559: Numbers k such that both k and 4k + 1 are in A005098.

Offset 1, canonical program `A112559.P1469957549597084680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1738 terms. -/
def A112559 (n : ℕ) : ℤ :=
  A112559.P1469957549597084680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1738 terms. -/
def A112559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037901.P168157209653283931

`A037903(A037475(n))`
-/

namespace A037901.P168157209653283931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037903 (A037475 n).toNat

end

end A037901.P168157209653283931

noncomputable section

/-- A037901: a(n) = (greatest base 7 digit of n) - (least base 7 digit of n).

Offset 0, canonical program `A037901.P168157209653283931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A037901 (n : ℕ) : ℤ :=
  A037901.P168157209653283931.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A037901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037902.P1383739155493034329

`A037903(A037477(n))`
-/

namespace A037902.P1383739155493034329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037903 (A037477 n).toNat

end

end A037902.P1383739155493034329

noncomputable section

/-- A037902: a(n) = (greatest base 8 digit of n) - (least base 8 digit of n).

Offset 0, canonical program `A037902.P1383739155493034329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A037902 (n : ℕ) : ℤ :=
  A037902.P1383739155493034329.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A037902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002088.P8962335469571691680

`∑[∑{d}[n, A007431(#)]]`
-/

namespace A002088.P8962335469571691680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A007431 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002088.P8962335469571691680

noncomputable section

/-- A002088: Sum of totient function: a(n) = Sum_{k=1..n} phi(k), cf. A000010.

Offset 0, canonical program `A002088.P8962335469571691680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002088 (n : ℕ) : ℤ :=
  A002088.P8962335469571691680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019554.P8390278603844822530

`∑{d}[n+1, A346612(#)]`
-/

namespace A019554.P8390278603844822530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346612 d

end

end A019554.P8390278603844822530

noncomputable section

/-- A019554: Smallest number whose square is divisible by n.

Offset 1, canonical program `A019554.P8390278603844822530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019554 (n : ℕ) : ℤ :=
  A019554.P8390278603844822530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022884.P3736293942192575118

`A000720(A022885(n+1)+1)`
-/

namespace A022884.P3736293942192575118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A022885 (n + 1) + 1).toNat

end

end A022884.P3736293942192575118

noncomputable section

/-- A022884: Numbers k such that prime(k) + prime(k+3) = prime(k+1) + prime(k+2).

Offset 1, canonical program `A022884.P3736293942192575118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A022885, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022884 (n : ℕ) : ℤ :=
  A022884.P3736293942192575118.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A022885, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022884.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024620.P14165843003709884843

`lt[n, A063872(n+1)]+2`
-/

namespace A024620.P14165843003709884843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063872 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A024620.P14165843003709884843

noncomputable section

/-- A024620: Positions of primes among the powers of primes (A000961).

Offset 1, canonical program `A024620.P14165843003709884843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A024620 (n : ℕ) : ℤ :=
  (A024620.P14165843003709884843.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A024620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029707.P9157915946838587551

`∑[A242767(n+2)]+1`
-/

namespace A029707.P9157915946838587551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A029707.P9157915946838587551

noncomputable section

/-- A029707: Numbers k such that the k-th and the (k+1)-st primes are twin primes.

Offset 1, canonical program `A029707.P9157915946838587551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029707 (n : ℕ) : ℤ :=
  A029707.P9157915946838587551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036698.P3152835247264100802

`A014200(n²)`
-/

namespace A036698.P3152835247264100802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (n ^ 2)

end

end A036698.P3152835247264100802

noncomputable section

/-- A036698: a(n) is the number of Gaussian integers z=a+bi satisfying |z|<=n, a>0, b>=0.

Offset 0, canonical program `A036698.P3152835247264100802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036698 (n : ℕ) : ℤ :=
  A036698.P3152835247264100802.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036698.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036997.P9898190539809888575

`A001221(n+1)+A037228(n+1)-1`
-/

namespace A036997.P9898190539809888575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A037228 (n + 1) - 1)

end

end A036997.P9898190539809888575

noncomputable section

/-- A036997: Number of composite numbers <= n and relatively prime to n.

Offset 1, canonical program `A036997.P9898190539809888575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036997 (n : ℕ) : ℤ :=
  A036997.P9898190539809888575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045182.P1485399016686548528

`∩[A023723(n+1), A023731(n+1)]`
-/

namespace A045182.P1485399016686548528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045182.P1485399016686548528

noncomputable section

/-- A045182: Numbers whose base-5 representation contains exactly two 0's and two 2's.

Offset 1, canonical program `A045182.P1485399016686548528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A045182 (n : ℕ) : ℤ :=
  (A045182.P1485399016686548528.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A045182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045664.P10163269847227854319

`A000007(n)+n*A027375(n)`
-/

namespace A045664.P10163269847227854319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A027375 n

end

end A045664.P10163269847227854319

noncomputable section

/-- A045664: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to reversed complement.

Offset 0, canonical program `A045664.P10163269847227854319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045664 (n : ℕ) : ℤ :=
  A045664.P10163269847227854319.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045934.P16041711807266308001

`∩[A045933(n+1)-1, A045933(n+1)]`
-/

namespace A045934.P16041711807266308001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045933 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045934.P16041711807266308001

noncomputable section

/-- A045934: Numbers n such that n through n+5 have the same number of distinct prime factors.

Offset 1, canonical program `A045934.P16041711807266308001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3374 terms. -/
def A045934 (n : ℕ) : ℤ :=
  (A045934.P16041711807266308001.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3374 terms. -/
def A045934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046081.P5098545024402691022

`A046079(n+1)+A046080(n+1)`
-/

namespace A046081.P5098545024402691022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) + A046080 (n + 1)

end

end A046081.P5098545024402691022

noncomputable section

/-- A046081: Number of integer-sided right triangles with n as a hypotenuse or leg.

Offset 1, canonical program `A046081.P5098545024402691022`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, A046080, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046081 (n : ℕ) : ℤ :=
  A046081.P5098545024402691022.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, A046080, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046081.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050466.P17326156456146578860

`∑{d}[n+1, A000056(#)*A050464((n+1)/#)]`
-/

namespace A050466.P17326156456146578860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A050464 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050466.P17326156456146578860

noncomputable section

/-- A050466: a(n) = Sum_{d|n, n/d=3 mod 4} d^3.

Offset 1, canonical program `A050466.P17326156456146578860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050466 (n : ℕ) : ℤ :=
  A050466.P17326156456146578860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055047.P16912633908431000685

`A055041(n+1)/3`
-/

namespace A055047.P16912633908431000685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055041 (n + 1) : ℚ) / 3

end

end A055047.P16912633908431000685

noncomputable section

/-- A055047: Numbers of the form 9^i*(3*j+1).

Offset 1, canonical program `A055047.P16912633908431000685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055041, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055047 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055047.P16912633908431000685.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055041, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055047.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062773.P7772092493091161682

`A000720(A062772(n+1)+1)`
-/

namespace A062773.P7772092493091161682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A062772 (n + 1) + 1).toNat

end

end A062773.P7772092493091161682

noncomputable section

/-- A062773: Index of the smallest prime which follows square of n-th prime.

Offset 1, canonical program `A062773.P7772092493091161682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A062772, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062773 (n : ℕ) : ℤ :=
  A062773.P7772092493091161682.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A062772, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063647.P6031325116416038976

`A046079(2*(n+1))`
-/

namespace A063647.P6031325116416038976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (2 * (n + 1))

end

end A063647.P6031325116416038976

noncomputable section

/-- A063647: Number of ways to write 1/n as a difference of exactly 2 unit fractions.

Offset 1, canonical program `A063647.P6031325116416038976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063647 (n : ℕ) : ℤ :=
  A063647.P6031325116416038976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064614.P15592544751587233754

`A065330(n+1)*2^A007949(n+1)*3^A007814(n+1)`
-/

namespace A064614.P15592544751587233754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065330 (n + 1) : ℚ) * ((2 : ℚ) ^ (A007949 (n + 1) : ℤ) * (3 : ℚ) ^ (A007814 (n + 1) : ℤ))

end

end A064614.P15592544751587233754

noncomputable section

/-- A064614: Exchange 2 and 3 in the prime factorization of n.

Offset 1, canonical program `A064614.P15592544751587233754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, A065330, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064614 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064614.P15592544751587233754.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, A065330, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064614.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065338.P7781026467081312542

`∏{d}[n+1, A014963(#)%4]`
-/

namespace A065338.P7781026467081312542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.tmod (A014963 d) 4

end

end A065338.P7781026467081312542

noncomputable section

/-- A065338: a(1) = 1, a(p) = p mod 4 for p prime and a(u * v) = a(u) * a(v) for u, v > 0.

Offset 1, canonical program `A065338.P7781026467081312542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065338 (n : ℕ) : ℤ :=
  A065338.P7781026467081312542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065371.P2462499187440685859

`∏{d}[n+1, A062298(A014963(#))]`
-/

namespace A065371.P2462499187440685859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A062298 (A014963 d).toNat

end

end A065371.P2462499187440685859

noncomputable section

/-- A065371: a(1) = 1, a(prime(i)) = prime(i) - i for i > 0 and a(u * v) = a(u) * a(v) for u, v > 0.

Offset 1, canonical program `A065371.P2462499187440685859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065371 (n : ℕ) : ℤ :=
  A065371.P2462499187440685859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072078.P15683580229449578343

`(A007814(n+1)+1)*(A007949(n+1)+1)`
-/

namespace A072078.P15683580229449578343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * (A007949 (n + 1) + 1)

end

end A072078.P15683580229449578343

noncomputable section

/-- A072078: Number of 3-smooth divisors of n.

Offset 1, canonical program `A072078.P15683580229449578343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072078 (n : ℕ) : ℤ :=
  A072078.P15683580229449578343.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072078.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072079.P3430236211693360058

`(2^(A007814(n+1)+1)-1)*(3^(A007949(n+1)+1)-1)/2`
-/

namespace A072079.P3430236211693360058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A007814 (n + 1) + 1 : ℤ) - 1) * (((3 : ℚ) ^ (A007949 (n + 1) + 1 : ℤ) - 1) / 2)

end

end A072079.P3430236211693360058

noncomputable section

/-- A072079: Sum of 3-smooth divisors of n.

Offset 1, canonical program `A072079.P3430236211693360058`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072079 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A072079.P3430236211693360058.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072079.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072553.P644284163393021583

`A066246(A073255(n+1))`
-/

namespace A072553.P644284163393021583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (A073255 (n + 1)).toNat

end

end A072553.P644284163393021583

noncomputable section

/-- A072553: Sigma of n-th composite number equals a(n)-th composite number if it is also a composite or equals zero if sigma[c] is prime.

Offset 1, canonical program `A072553.P644284163393021583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2674 terms. -/
def A072553 (n : ℕ) : ℤ :=
  A072553.P644284163393021583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2674 terms. -/
def A072553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083902.P16661972985477975009

`A083901(n+1)+A083894(n+1)`
-/

namespace A083902.P16661972985477975009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083901 (n + 1) + A083894 (n + 1)

end

end A083902.P16661972985477975009

noncomputable section

/-- A083902: Number of divisors of n with the largest digit of the divisor <= 7 (base 10).

Offset 1, canonical program `A083902.P16661972985477975009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083894, A083901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083902 (n : ℕ) : ℤ :=
  A083902.P16661972985477975009.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083894, A083901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084488.P2138741234622189971

`A002145(A267098(n+1)+1)+A002144(A267097(n+1)+1)`
-/

namespace A084488.P2138741234622189971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (A267098 (n + 1) + 1).toNat + A002144 (A267097 (n + 1) + 1).toNat

end

end A084488.P2138741234622189971

noncomputable section

/-- A084488: Prime(n)+q, where q is the next prime such that q mod 4 = (prime(n)+2) mod 4.

Offset 2, canonical program `A084488.P2138741234622189971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084488 (n : ℕ) : ℤ :=
  A084488.P2138741234622189971.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087695.P4000952237766351123

`A046117(n+1)-3`
-/

namespace A087695.P4000952237766351123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1) - 3

end

end A087695.P4000952237766351123

noncomputable section

/-- A087695: Numbers n such that n + 3 and n - 3 are both prime.

Offset 1, canonical program `A087695.P4000952237766351123`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087695 (n : ℕ) : ℤ :=
  A087695.P4000952237766351123.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087695.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090112.P17101591952633820706

`(A168141(n+1)-A010051(n+2))*A000720(n+1)`
-/

namespace A090112.P17101591952633820706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168141 (n + 1) - A010051 (n + 2)) * A000720 (n + 1)

end

end A090112.P17101591952633820706

noncomputable section

/-- A090112: a(n)=pi(n)*[pi(n)-pi(n-2)] where pi(n)=A000720(n).

Offset 1, canonical program `A090112.P17101591952633820706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090112 (n : ℕ) : ℤ :=
  A090112.P17101591952633820706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092058.P2002091925840857297

`A000720(sqrt((A092057(n+1)+1)/2))`
-/

namespace A092058.P2002091925840857297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt ((A092057 (n + 1) + 1 : ℚ) / 2 : ℝ))).toNat

end

end A092058.P2002091925840857297

noncomputable section

/-- A092058: Numbers n such that 2*prime(n)^2 - 1 is prime.

Offset 1, canonical program `A092058.P2002091925840857297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A092058 (n : ℕ) : ℤ :=
  A092058.P2002091925840857297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A092058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098592.P11030886862082510298

`Δ[A000720(A218255(3*n))]`
-/

namespace A098592.P11030886862082510298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A218255 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098592.P11030886862082510298

noncomputable section

/-- A098592: Number of primes between n*30 and (n+1)*30.

Offset 0, canonical program `A098592.P11030886862082510298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A098592 (n : ℕ) : ℤ :=
  A098592.P11030886862082510298.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A098592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099802.P6867368783497668993

`A000720(n+1)+A035250(n+1)-A010051(n+1)`
-/

namespace A099802.P6867368783497668993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A035250 (n + 1) - A010051 (n + 1)

end

end A099802.P6867368783497668993

noncomputable section

/-- A099802: Bisection of A000720.

Offset 1, canonical program `A099802.P6867368783497668993`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A010051, A035250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A099802 (n : ℕ) : ℤ :=
  A099802.P6867368783497668993.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A010051, A035250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A099802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099847.P18382211922917996472

`ceil(sqrt(A060615(2*n)))`
-/

namespace A099847.P18382211922917996472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A060615 (2 * n) : ℝ)⌉

end

end A099847.P18382211922917996472

noncomputable section

/-- A099847: Bisection of A000961.

Offset 1, canonical program `A099847.P18382211922917996472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A099847 (n : ℕ) : ℤ :=
  A099847.P18382211922917996472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A099847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101294.P5526318434462091228

`A045933(n+1)+2`
-/

namespace A101294.P5526318434462091228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045933 (n + 1) + 2

end

end A101294.P5526318434462091228

noncomputable section

/-- A101294: Numbers n such that omega(n-2) = omega(n-1) = omega(n) = omega(n+1) = omega(n+2).

Offset 1, canonical program `A101294.P5526318434462091228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A101294 (n : ℕ) : ℤ :=
  A101294.P5526318434462091228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A101294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103827.P12053517966830183647

`A034448(A103826(n+1))/A034444(A103826(n+1))`
-/

namespace A103827.P12053517966830183647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (A103826 (n + 1)).toNat : ℚ) / (A034444 (A103826 (n + 1)).toNat : ℚ)

end

end A103827.P12053517966830183647

noncomputable section

/-- A103827: Arithmetic means of the divisors of unitary arithmetic numbers (i.e., of those for which the arithmetic mean of the unitary divisors is an integer, A103826).

Offset 1, canonical program `A103827.P12053517966830183647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8557 terms. -/
def A103827 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A103827.P12053517966830183647.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8557 terms. -/
def A103827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104723.P5041177650715917469

`floor((A027375(n)+n%2)/3)`
-/

namespace A104723.P5041177650715917469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027375 n + ((n % 2 : ℕ) : ℤ) : ℚ) / 3⌋

end

end A104723.P5041177650715917469

noncomputable section

/-- A104723: Moebius transform of Jacobsthal numbers.

Offset 0, canonical program `A104723.P5041177650715917469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A104723 (n : ℕ) : ℤ :=
  A104723.P5041177650715917469.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A104723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106008.P17304472629844807330

`p?[A093013(n+1)]`
-/

namespace A106008.P17304472629844807330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106008.P17304472629844807330

noncomputable section

/-- A106008: Primes p such that 10*p - 3 and 10*p + 3 are both primes.

Offset 1, canonical program `A106008.P17304472629844807330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A106008 (n : ℕ) : ℤ :=
  A106008.P17304472629844807330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A106008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109196.P10916885654328462370

`1/2*A109194(n+2)`
-/

namespace A109196.P10916885654328462370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A109194 (n + 2) : ℚ)

end

end A109196.P10916885654328462370

noncomputable section

/-- A109196: Number of returns to the x-axis from above (i.e., d steps hitting the x-axis) in all Grand Motzkin paths of length n.

Offset 2, canonical program `A109196.P10916885654328462370`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109196 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A109196.P10916885654328462370.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111192.P5696730422318890961

`A023201(n+1)*A046117(n+1)`
-/

namespace A111192.P5696730422318890961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) * A046117 (n + 1)

end

end A111192.P5696730422318890961

noncomputable section

/-- A111192: Product of the n-th sexy prime pair.

Offset 1, canonical program `A111192.P5696730422318890961`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023201, A046117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111192 (n : ℕ) : ℤ :=
  A111192.P5696730422318890961.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023201, A046117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112298.P13991926760380096719

`A010684(n)*A093829(n+1)`
-/

namespace A112298.P13991926760380096719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A093829 (n + 1)

end

end A112298.P13991926760380096719

noncomputable section

/-- A112298: Expansion of (a(q) - 3*a(q^2) + 2*a(q^4)) / 6 in powers of q where a() is a cubic AGM theta function.

Offset 1, canonical program `A112298.P13991926760380096719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112298 (n : ℕ) : ℤ :=
  A112298.P13991926760380096719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113447.P16347397577668592874

`(-1)^n*A093829(n+1)`
-/

namespace A113447.P16347397577668592874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A093829 (n + 1)

end

end A113447.P16347397577668592874

noncomputable section

/-- A113447: Expansion of i * theta_2(i * q^3)^3 / (4 * theta_2(i * q)) in powers of q^2.

Offset 1, canonical program `A113447.P16347397577668592874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113447 (n : ℕ) : ℤ :=
  A113447.P16347397577668592874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115733.P11332342252543868068

`A062298(p?[A115732(n+1)])`
-/

namespace A115733.P11332342252543868068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115733.P11332342252543868068

noncomputable section

/-- A115733: prime(n)-n, repeated (prime(n)-n) times.

Offset 1, canonical program `A115733.P11332342252543868068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115733 (n : ℕ) : ℤ :=
  A115733.P11332342252543868068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000328.P3563522184609365216

`A057655(n²)`
-/

namespace A000328.P3563522184609365216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (n ^ 2)

end

end A000328.P3563522184609365216

noncomputable section

/-- A000328: Number of points of norm <= n^2 in square lattice.

Offset 0, canonical program `A000328.P3563522184609365216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000328 (n : ℕ) : ℤ :=
  A000328.P3563522184609365216.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015633.P10478592312901122420

`∑[A007438(n+2)-(n+2)]`
-/

namespace A015633.P10478592312901122420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (n + 2) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015633.P10478592312901122420

noncomputable section

/-- A015633: Number of ordered triples of integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015633.P10478592312901122420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5731 terms. -/
def A015633 (n : ℕ) : ℤ :=
  A015633.P10478592312901122420.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5731 terms. -/
def A015633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026233.P9940021653241192436

`A049084(n+1)+A239968(n+1)`
-/

namespace A026233.P9940021653241192436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1) + A239968 (n + 1)

end

end A026233.P9940021653241192436

noncomputable section

/-- A026233: a(n) = j if n is the j-th prime, else a(n) = k if n is the k-th nonprime.

Offset 1, canonical program `A026233.P9940021653241192436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049084, A239968, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A026233 (n : ℕ) : ℤ :=
  A026233.P9940021653241192436.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049084, A239968, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A026233.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036704.P2788393936175939244

`A057655(n²+n)`
-/

namespace A036704.P2788393936175939244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (n ^ 2 + n)

end

end A036704.P2788393936175939244

noncomputable section

/-- A036704: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n+1/2.

Offset 0, canonical program `A036704.P2788393936175939244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036704 (n : ℕ) : ℤ :=
  A036704.P2788393936175939244.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036704.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A044069.P11354972915602530706

`and(A044450(n+1)+1, A044450(n+1))`
-/

namespace A044069.P11354972915602530706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044450 (n + 1) + 1) (A044450 (n + 1))

end

end A044069.P11354972915602530706

noncomputable section

/-- A044069: Numbers n such that string 2,0 occurs in the base 4 representation of n but not of n-1.

Offset 1, canonical program `A044069.P11354972915602530706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A044069 (n : ℕ) : ℤ :=
  A044069.P11354972915602530706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A044069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045268.P10162999156684542775

`∩[A023730(n+1), A023735(n+1)]`
-/

namespace A045268.P10162999156684542775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045268.P10162999156684542775

noncomputable section

/-- A045268: Numbers whose base-5 representation contains exactly one 2 and two 3's.

Offset 1, canonical program `A045268.P10162999156684542775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. -/
def A045268 (n : ℕ) : ℤ :=
  (A045268.P10162999156684542775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. -/
def A045268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048168.P17831030899034331783

`record[gcd(A048167(n+1)², A048166(n+1))]`
-/

namespace A048168.P17831030899034331783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048167 (n + 1) ^ 2) (A048166 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048168.P17831030899034331783

noncomputable section

/-- A048168: n is divisible by the square of the number of unitary divisors of n (A034444).

Offset 1, canonical program `A048168.P17831030899034331783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A048168 (n : ℕ) : ℤ :=
  (A048168.P17831030899034331783.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A048168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048943.P2977010921858124116

`eq[char[A258456(n+1)], A000007(n)]`
-/

namespace A048943.P2977010921858124116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258456 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A048943.P2977010921858124116

noncomputable section

/-- A048943: Product of divisors of n is a square.

Offset 1, canonical program `A048943.P2977010921858124116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7506 terms. -/
def A048943 (n : ℕ) : ℤ :=
  (A048943.P2977010921858124116.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7506 terms. -/
def A048943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051178.P2441463361311588415

`eq[0, A027857(n+1)]+1`
-/

namespace A051178.P2441463361311588415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027857 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051178.P2441463361311588415

noncomputable section

/-- A051178: Numbers k such that k divides the number of divisors of k!.

Offset 1, canonical program `A051178.P2441463361311588415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2960 terms. -/
def A051178 (n : ℕ) : ℤ :=
  (A051178.P2441463361311588415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2960 terms. -/
def A051178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051488.P11098325433870491151

`lt[A000010(n+1), A054571(n+1)]+1`
-/

namespace A051488.P11098325433870491151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A051488.P11098325433870491151

noncomputable section

/-- A051488: Numbers k such that phi(k) < phi(k - phi(k)).

Offset 1, canonical program `A051488.P11098325433870491151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. -/
def A051488 (n : ℕ) : ℤ :=
  (A051488.P11098325433870491151.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. -/
def A051488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053286.P17482830161555086044

`A051953(A000051(n))`
-/

namespace A053286.P17482830161555086044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000051 n).toNat

end

end A053286.P17482830161555086044

noncomputable section

/-- A053286: Cototient of 2^n + 1.

Offset 0, canonical program `A053286.P17482830161555086044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053286 (n : ℕ) : ℤ :=
  A053286.P17482830161555086044.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056539.P17406113578210965747

`A341916(A003188(n))`
-/

namespace A056539.P17406113578210965747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A003188 n).toNat

end

end A056539.P17406113578210965747

noncomputable section

/-- A056539: Self-inverse permutation: reverse the bits in binary expansion of n and also complement them (0->1, 1->0) if the run count (A005811) is even.

Offset 0, canonical program `A056539.P17406113578210965747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A056539 (n : ℕ) : ℤ :=
  A056539.P17406113578210965747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A056539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056760.P7714240773050569011

`∩[A007774(n+1), A056757(n+1)]`
-/

namespace A056760.P7714240773050569011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056760.P7714240773050569011

noncomputable section

/-- A056760: Integers with exactly 2 prime divisors such that the cube of the number of divisors exceeds the number.

Offset 1, canonical program `A056760.P7714240773050569011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A056760 (n : ℕ) : ℤ :=
  (A056760.P7714240773050569011.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A056760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057860.P15781516878484293447

`A051953(n+1)-A001221(n+1)`
-/

namespace A057860.P15781516878484293447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A001221 (n + 1)

end

end A057860.P15781516878484293447

noncomputable section

/-- A057860: Number of residue classes modulo n which contain only composite numbers.

Offset 1, canonical program `A057860.P15781516878484293447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057860 (n : ℕ) : ℤ :=
  A057860.P15781516878484293447.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057860.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064179.P15914318572528280562

`(-1)^A064547(n+1)`
-/

namespace A064179.P15914318572528280562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A064547 (n + 1) : ℤ)

end

end A064179.P15914318572528280562

noncomputable section

/-- A064179: Infinitary version of Moebius function: infinitary MoebiusMu of n, equal to mu(n) iff mu(n) differs from zero, else 1 or -1 depending on whether the sum of the binary digits of the exponents in the prime decomposition of n is even or odd.

Offset 1, canonical program `A064179.P15914318572528280562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064179 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064179.P15914318572528280562.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064179.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066072.P3306232100751535018

`A000010(A066071(n+1))+1`
-/

namespace A066072.P3306232100751535018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A066071 (n + 1)).toNat + 1

end

end A066072.P3306232100751535018

noncomputable section

/-- A066072: Prime numbers arising in A066071.

Offset 1, canonical program `A066072.P3306232100751535018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066072 (n : ℕ) : ℤ :=
  A066072.P3306232100751535018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069925.P5347794033781338708

`A063474(n+1)/(n+1)`
-/

namespace A069925.P5347794033781338708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063474 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A069925.P5347794033781338708

noncomputable section

/-- A069925: a(n) = phi(2^n+1)/(2*n).

Offset 1, canonical program `A069925.P5347794033781338708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A069925 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069925.P5347794033781338708.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A069925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071227.P17938757858889274973

`A000010(A033950(n+1)/A039819(n+1))`
-/

namespace A071227.P17938757858889274973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A033950 (n + 1) : ℚ) / (A039819 (n + 1) : ℚ))).toNat

end

end A071227.P17938757858889274973

noncomputable section

/-- A071227: Number of solutions 1<=x<=m to gcd(m,x) = tau(m) where m = A033950(n).

Offset 1, canonical program `A071227.P17938757858889274973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071227 (n : ℕ) : ℤ :=
  A071227.P17938757858889274973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072585.P14181242269716564526

`eq[0, A010879(A051953(n+1))]+1`
-/

namespace A072585.P14181242269716564526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A051953 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072585.P14181242269716564526

noncomputable section

/-- A072585: Numbers k such that k and phi(k) end with the same digit in base 10.

Offset 1, canonical program `A072585.P14181242269716564526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1256 terms. -/
def A072585 (n : ℕ) : ℤ :=
  (A072585.P14181242269716564526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1256 terms. -/
def A072585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072780.P3452318476665337395

`A067558(n+1)-A069249(n+1)`
-/

namespace A072780.P3452318476665337395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (n + 1) - A069249 (n + 1)

end

end A072780.P3452318476665337395

noncomputable section

/-- A072780: a(n) = sigma_2(n) + phi(n) * sigma(n) - 2*n^2, which is A072779(n) - 2*n^2.

Offset 1, canonical program `A072780.P3452318476665337395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072780 (n : ℕ) : ℤ :=
  A072780.P3452318476665337395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075857.P13213587624051204763

`A000010(n+1)*A051953(n+1)/A009195(n+1)`
-/

namespace A075857.P13213587624051204763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A051953 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A075857.P13213587624051204763

noncomputable section

/-- A075857: Least common multiple of totient and cototient of n.

Offset 1, canonical program `A075857.P13213587624051204763`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A009195, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A075857 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075857.P13213587624051204763.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A009195, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A075857.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076302.P14903802815767851269

`A000005(gcd(A166350(n+1)²², A002024(n+1)))`
-/

namespace A076302.P14903802815767851269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd ((A166350 (n + 1) ^ 2) ^ 2) (A002024 (n + 1)))

end

end A076302.P14903802815767851269

noncomputable section

/-- A076302: Triangle T(n,k) = number of k-smooth divisors of n, read by rows.

Offset 1, canonical program `A076302.P14903802815767851269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A076302 (n : ℕ) : ℤ :=
  A076302.P14903802815767851269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A076302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076511.P7316728277018635984

`A051953(n+1)/A009195(n+1)`
-/

namespace A076511.P7316728277018635984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A076511.P7316728277018635984

noncomputable section

/-- A076511: Numerator of cototient(n)/totient(n).

Offset 1, canonical program `A076511.P7316728277018635984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076511 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076511.P7316728277018635984.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079092.P7315273055174450665

`A000010(A079079(n+1))`
-/

namespace A079092.P7315273055174450665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A079079 (n + 1)).toNat

end

end A079092.P7315273055174450665

noncomputable section

/-- A079092: Euler's totient of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079092.P7315273055174450665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A079092 (n : ℕ) : ℤ :=
  A079092.P7315273055174450665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A079092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082294.P3187455701052448076

`eq[2, A071325(n+1)]+1`
-/

namespace A082294.P3187455701052448076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082294.P3187455701052448076

noncomputable section

/-- A082294: Numbers having exactly two square divisors > 1.

Offset 1, canonical program `A082294.P3187455701052448076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A082294 (n : ℕ) : ℤ :=
  (A082294.P3187455701052448076.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A082294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082386.P6793526931661714868

`A000982(A182105(n+1))`
-/

namespace A082386.P6793526931661714868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A182105 (n + 1)).toNat

end

end A082386.P6793526931661714868

noncomputable section

/-- A082386: Let S(0) = {1} and for k >= 1, let S(k) = {S(k-1), S(k-1), 2T}, where T = sum of terms in S(k-1). Sequence is S(infinity).

Offset 0, canonical program `A082386.P6793526931661714868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082386 (n : ℕ) : ℤ :=
  A082386.P6793526931661714868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082506.P13027537569805615075

`gcd(A051953(n+1), A117973(n))`
-/

namespace A082506.P13027537569805615075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051953 (n + 1)) (A117973 n)

end

end A082506.P13027537569805615075

noncomputable section

/-- A082506: a(n) = gcd(2^n, n - phi(n)); largest power of 2 dividing cototient(n) = A051953(n).

Offset 1, canonical program `A082506.P13027537569805615075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082506 (n : ℕ) : ℤ :=
  (A082506.P13027537569805615075.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082849.P14495189040756663948

`A051953(n+1)*A051953(n+2)`
-/

namespace A082849.P14495189040756663948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) * A051953 (n + 2)

end

end A082849.P14495189040756663948

noncomputable section

/-- A082849: Product of cototient values of consecutive integers.

Offset 1, canonical program `A082849.P14495189040756663948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082849 (n : ℕ) : ℤ :=
  A082849.P14495189040756663948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082849.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083251.P14965405990869838222

`eq[2, abs(A083245(n+1))]+1`
-/

namespace A083251.P14965405990869838222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083245 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083251.P14965405990869838222

noncomputable section

/-- A083251: Numbers m such that abs(A045763(m) - A073757(m)) = 2, i.e., signed difference of size of related and unrelated sets to n equals either 2 or -2.

Offset 1, canonical program `A083251.P14965405990869838222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A083251 (n : ℕ) : ℤ :=
  (A083251.P14965405990869838222.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A083251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083399.P16148020281325742632

`A000005(n+1)-A055212(n+1)`
-/

namespace A083399.P16148020281325742632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A055212 (n + 1)

end

end A083399.P16148020281325742632

noncomputable section

/-- A083399: Number of divisors of n that are not divisors of other divisors of n.

Offset 1, canonical program `A083399.P16148020281325742632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A055212, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083399 (n : ℕ) : ℤ :=
  A083399.P16148020281325742632.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A055212, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083399.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087087.P8642086985642559928

`eq[A121663(A004526(n)), A271410(n)]`
-/

namespace A087087.P8642086985642559928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 (A004526 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087087.P8642086985642559928

noncomputable section

/-- A087087: Coprime sets of integers, each subset mapped onto a unique binary integer, values here shown in decimal.

Offset 0, canonical program `A087087.P8642086985642559928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A087087 (n : ℕ) : ℤ :=
  (A087087.P8642086985642559928.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A087087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090605.P9514351185827622327

`∩[A049511(n+1), A160594(n+1)]`
-/

namespace A090605.P9514351185827622327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090605.P9514351185827622327

noncomputable section

/-- A090605: Numbers m such that m-th prime is of the form 60*k+1.

Offset 1, canonical program `A090605.P9514351185827622327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A090605 (n : ℕ) : ℤ :=
  (A090605.P9514351185827622327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A090605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092589.P10477764574999040477

`-A065395(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092589.P10477764574999040477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A065395 (2 ^ n)

end

end A092589.P10477764574999040477

noncomputable section

/-- A092589: a(n) = -A065395(2^n).

Offset 0, canonical program `A092589.P10477764574999040477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092589 (n : ℕ) : ℤ :=
  A092589.P10477764574999040477.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092589.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094181.P11727998955911444971

`A049820(n+1)*A051953(n+1)`
-/

namespace A094181.P11727998955911444971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) * A051953 (n + 1)

end

end A094181.P11727998955911444971

noncomputable section

/-- A094181: a(n) = (n - tau(n))*(n - phi(n)), where tau=A000005 and phi=A000010.

Offset 1, canonical program `A094181.P11727998955911444971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A094181 (n : ℕ) : ℤ :=
  A094181.P11727998955911444971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A094181.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104145.P5989850272366258385

`1-A137412(n+1)`
-/

namespace A104145.P5989850272366258385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A137412 (n + 1)

end

end A104145.P5989850272366258385

noncomputable section

/-- A104145: a(1) = 1; let A(k) = sequence of first 2^(k-1) terms; then A(k+1) is concatenation of A(k) and (A(k)-1) if a(k) is odd, or concatenation of A(k) and (A(k)+1) if a(k) is even.

Offset 1, canonical program `A104145.P5989850272366258385`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137412, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104145 (n : ℕ) : ℤ :=
  A104145.P5989850272366258385.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137412, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104145.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105634.P14447733541575245411

`∑{d}[n+1, A007434(#)*A035182((n+1)/#)]`
-/

namespace A105634.P14447733541575245411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A035182 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A105634.P14447733541575245411

noncomputable section

/-- A105634: Expansion of Sum_{k>0} Kronecker(k,7)*x^k*(1 + x^k)/(1 - x^k)^3.

Offset 1, canonical program `A105634.P14447733541575245411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105634 (n : ℕ) : ℤ :=
  A105634.P14447733541575245411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106714.P18155757903344412293

`A151800(∩[A106711(n+1), A106712(n+1)])`
-/

namespace A106714.P18155757903344412293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106712 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A106714.P18155757903344412293

noncomputable section

/-- A106714: Largest of three consecutive primes whose sum of digits is prime.

Offset 1, canonical program `A106714.P18155757903344412293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A106714 (n : ℕ) : ℤ :=
  A106714.P18155757903344412293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A106714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108119.P18242225102554614006

`∩[A049511(n+1), A107730(n+1)]`
-/

namespace A108119.P18242225102554614006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108119.P18242225102554614006

noncomputable section

/-- A108119: Numbers k such that prime(k) and prime(k+1) are congruent to 1 (mod 10).

Offset 1, canonical program `A108119.P18242225102554614006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1577 terms. -/
def A108119 (n : ℕ) : ℤ :=
  (A108119.P18242225102554614006.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1577 terms. -/
def A108119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109288.P6952857508104961843

`A039832(A326178(n+1))+1`
-/

namespace A109288.P6952857508104961843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (A326178 (n + 1)).toNat + 1

end

end A109288.P6952857508104961843

noncomputable section

/-- A109288: Semiprimes equal to p*q + 1, where p and q are distinct primes.

Offset 1, canonical program `A109288.P6952857508104961843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A109288 (n : ℕ) : ℤ :=
  A109288.P6952857508104961843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A109288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113427.P16554332714523727255

`A001223(A113339(n+1))`
-/

namespace A113427.P16554332714523727255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A113339 (n + 1)).toNat

end

end A113427.P16554332714523727255

noncomputable section

/-- A113427: If d(n) is the sequence of prime differences, d(n) = prime(n+1) - prime(n), then a(n) is the subsequence of d(n) such that d(n) is nonprime and squarefree. Except for the initial term of 1, the terms are k-semiprime for some k >= 2.

Offset 1, canonical program `A113427.P16554332714523727255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113427 (n : ℕ) : ℤ :=
  A113427.P16554332714523727255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113543.P2223141436279316752

`filter[A112886(n+1), A008966(#)]`
-/

namespace A113543.P2223141436279316752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A113543.P2223141436279316752

noncomputable section

/-- A113543: Numbers both squarefree and triangle-free.

Offset 1, canonical program `A113543.P2223141436279316752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113543 (n : ℕ) : ℤ :=
  A113543.P2223141436279316752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008904.P9528914656138212503

`A000030(A251984(4*n*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A008904.P9528914656138212503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000030 (A251984 (4 * ((n : ℤ) * a (n - 1))).toNat).toNat

end

end A008904.P9528914656138212503

noncomputable section

/-- A008904: a(n) is the final nonzero digit of n!.

Offset 0, canonical program `A008904.P9528914656138212503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A008904 (n : ℕ) : ℤ :=
  A008904.P9528914656138212503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A008904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011775.P3606156875010578652

`eq[A056100(n+1), A057427(n)]+1`
-/

namespace A011775.P3606156875010578652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A011775.P3606156875010578652

noncomputable section

/-- A011775: Numbers k such that k divides phi(k) * sigma(k).

Offset 1, canonical program `A011775.P3606156875010578652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A011775 (n : ℕ) : ℤ :=
  (A011775.P3606156875010578652.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A011775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015622.P7437810160960809302

`∑[A346760(n+1)-A000741(n+1)]`
-/

namespace A015622.P7437810160960809302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346760 (n + 1) - A000741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015622.P7437810160960809302

noncomputable section

/-- A015622: Quadruples of different integers from [ 1,n ] with no global factor.

Offset 1, canonical program `A015622.P7437810160960809302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1011 terms. -/
def A015622 (n : ℕ) : ℤ :=
  A015622.P7437810160960809302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1011 terms. -/
def A015622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024707.P1654818595505930273

`∪[A049510(n+1), A049511(n+1)]`
-/

namespace A024707.P1654818595505930273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A024707.P1654818595505930273

noncomputable section

/-- A024707: Positions of multiples of 5 in A024702.

Offset 1, canonical program `A024707.P1654818595505930273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024707 (n : ℕ) : ℤ :=
  (A024707.P1654818595505930273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036762.P3331353246584791037

`A033950(n+1)/A039819(n+1)`
-/

namespace A036762.P3331353246584791037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033950 (n + 1) : ℚ) / (A039819 (n + 1) : ℚ)

end

end A036762.P3331353246584791037

noncomputable section

/-- A036762: The integer values of x/d(x) in order of magnitude of x in A033950.

Offset 1, canonical program `A036762.P3331353246584791037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036762 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036762.P3331353246584791037.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037197.P6784349758619348236

`lt[A295306(n+1)², 1]+1`
-/

namespace A037197.P6784349758619348236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A037197.P6784349758619348236

noncomputable section

/-- A037197: Numbers k such that tau(sigma(k)) = tau(k) where tau(k) is the number of divisors of k and sigma(k) their sum.

Offset 1, canonical program `A037197.P6784349758619348236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A037197 (n : ℕ) : ℤ :=
  (A037197.P6784349758619348236.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A037197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038456.P16170767662126699498

`∪[A039832(n+1)+1, A039832(n+1)]`
-/

namespace A038456.P16170767662126699498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038456.P16170767662126699498

noncomputable section

/-- A038456: List of pairs of consecutive numbers each with 4 divisors (duplicates removed).

Offset 1, canonical program `A038456.P16170767662126699498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038456 (n : ℕ) : ℤ :=
  (A038456.P16170767662126699498.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039787.P16450846264916428948

`p?[A049196(n+1)]`
-/

namespace A039787.P16450846264916428948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039787.P16450846264916428948

noncomputable section

/-- A039787: Primes p such that p-1 is squarefree.

Offset 1, canonical program `A039787.P16450846264916428948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6520 terms. -/
def A039787 (n : ℕ) : ℤ :=
  A039787.P16450846264916428948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6520 terms. -/
def A039787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048272.P6639145440777643207

`A001227(n+1)-A183063(n+1)`
-/

namespace A048272.P6639145440777643207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A183063 (n + 1)

end

end A048272.P6639145440777643207

noncomputable section

/-- A048272: Number of odd divisors of n minus number of even divisors of n.

Offset 1, canonical program `A048272.P6639145440777643207`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, A183063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048272 (n : ℕ) : ℤ :=
  A048272.P6639145440777643207.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, A183063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050796.P11538834227986178576

`eq[A000038(n), A156297(A333167(n))]`
-/

namespace A050796.P11538834227986178576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156297 (A333167 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050796.P11538834227986178576

noncomputable section

/-- A050796: Numbers n such that n^2 + 1 is expressible as the sum of two nonzero squares in at least one way (the trivial solution n^2 + 1 = n^2 + 1^2 is not counted).

Offset 1, canonical program `A050796.P11538834227986178576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8250 terms. -/
def A050796 (n : ℕ) : ℤ :=
  (A050796.P11538834227986178576.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8250 terms. -/
def A050796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051709.P1277583888386467227

`A001065(n+1)-A051953(n+1)`
-/

namespace A051709.P1277583888386467227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A051953 (n + 1)

end

end A051709.P1277583888386467227

noncomputable section

/-- A051709: a(n) = sigma(n) + phi(n) - 2n.

Offset 1, canonical program `A051709.P1277583888386467227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A051709 (n : ℕ) : ℤ :=
  A051709.P1277583888386467227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A051709.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054964.P645230808875844543

`record[A002522(n)%(A333169(n)+A333167(n))]`
-/

namespace A054964.P645230808875844543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002522 n) (A333169 n + A333167 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054964.P645230808875844543

noncomputable section

/-- A054964: Numbers whose divisors have the form m^k + 1, k>1.

Offset 1, canonical program `A054964.P645230808875844543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 843 terms. -/
def A054964 (n : ℕ) : ℤ :=
  A054964.P645230808875844543.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 843 terms. -/
def A054964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060372.P4864824408191301632

`A117967(n)-A300222(A117967(n))`
-/

namespace A060372.P4864824408191301632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n - A300222 (A117967 n).toNat

end

end A060372.P4864824408191301632

noncomputable section

/-- A060372: p(n), positive part of n when n=p(n)-q(n) with p(n), q(n), p(n)+q(n) in A005836, integers written without 2 in base 3.

Offset 0, canonical program `A060372.P4864824408191301632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A060372 (n : ℕ) : ℤ :=
  A060372.P4864824408191301632.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A060372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060609.P9088735267525131921

`A049116(A000040(n+1))`
-/

namespace A060609.P9088735267525131921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (A000040 (n + 1)).toNat

end

end A060609.P9088735267525131921

noncomputable section

/-- A060609: Repeatedly apply Euler phi to n-th prime; a(n) = highest power of 2 that is seen.

Offset 1, canonical program `A060609.P9088735267525131921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A060609 (n : ℕ) : ℤ :=
  A060609.P9088735267525131921.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A060609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062354.P13583053230066252770

`∑{d}[n+1, A386624(#)]`
-/

namespace A062354.P13583053230066252770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A386624 d

end

end A062354.P13583053230066252770

noncomputable section

/-- A062354: a(n) = sigma(n)*phi(n).

Offset 1, canonical program `A062354.P13583053230066252770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062354 (n : ℕ) : ℤ :=
  A062354.P13583053230066252770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062955.P17396036720495467672

`A002618(n+1)-A000010(n+1)`
-/

namespace A062955.P17396036720495467672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) - A000010 (n + 1)

end

end A062955.P17396036720495467672

noncomputable section

/-- A062955: a(n) = phi(n^2) - phi(n) = (n-1) * phi(n).

Offset 1, canonical program `A062955.P17396036720495467672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A002618, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062955 (n : ℕ) : ℤ :=
  A062955.P17396036720495467672.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A002618, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063077.P7225986720127766107

`Δ[A333170(n)]-2*(n+1)`
-/

namespace A063077.P7225986720127766107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (2 * (n + 1) : ℤ)

end

end A063077.P7225986720127766107

noncomputable section

/-- A063077: a(n) = phi(n^2 + 1) - 2n.

Offset 1, canonical program `A063077.P7225986720127766107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063077 (n : ℕ) : ℤ :=
  A063077.P7225986720127766107.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064400.P18224085056823472977

`3*A002618(n+1)`
-/

namespace A064400.P18224085056823472977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002618 (n + 1)

end

end A064400.P18224085056823472977

noncomputable section

/-- A064400: Number of ordered pairs a,b of elements in the dihedral group D_2n such that the subgroup generated by the pair a,b is the entire group D_2n.

Offset 1, canonical program `A064400.P18224085056823472977`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064400 (n : ℕ) : ℤ :=
  A064400.P18224085056823472977.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064400.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065814.P14091942470070191405

`A035116(n+1)-A048691(n+1)`
-/

namespace A065814.P14091942470070191405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1) - A048691 (n + 1)

end

end A065814.P14091942470070191405

noncomputable section

/-- A065814: a(n) = tau(n)^2 - tau(n^2), where tau(n) = A000005(n).

Offset 1, canonical program `A065814.P14091942470070191405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035116, A048691, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065814 (n : ℕ) : ℤ :=
  A065814.P14091942470070191405.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035116, A048691, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065814.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066463.P11838001426021441979

`eq[0, A295301(A000010(n+1))]+1`
-/

namespace A066463.P11838001426021441979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295301 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066463.P11838001426021441979

noncomputable section

/-- A066463: Numbers k such that phi(sigma(phi(k))) = phi(k).

Offset 1, canonical program `A066463.P11838001426021441979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A066463 (n : ℕ) : ℤ :=
  (A066463.P11838001426021441979.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A066463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066691.P12764247508307257723

`A000005(A066692(n+1))`
-/

namespace A066691.P12764247508307257723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A066692 (n + 1)).toNat

end

end A066691.P12764247508307257723

noncomputable section

/-- A066691: Value of tau(2n-1) when tau(2n-1) = tau(2n+1).

Offset 1, canonical program `A066691.P12764247508307257723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066691 (n : ℕ) : ℤ :=
  A066691.P12764247508307257723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069194.P17220240621042062956

`∑{d}[n+1, A002618(n+1)/A002618(#)]`
-/

namespace A069194.P17220240621042062956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A002618 (n + 1) : ℚ) / (A002618 d : ℚ)

end

end A069194.P17220240621042062956

noncomputable section

/-- A069194: a(n) = Sum_{d|n} (n/d)*phi(n)/phi(d).

Offset 1, canonical program `A069194.P17220240621042062956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069194 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069194.P17220240621042062956.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069735.P7037159933635836489

`A000005(n+1)+A183063(n+1)`
-/

namespace A069735.P7037159933635836489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A183063 (n + 1)

end

end A069735.P7037159933635836489

noncomputable section

/-- A069735: Number of regular orientable coverings of the Klein bottle with 2n lists.

Offset 1, canonical program `A069735.P7037159933635836489`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A183063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069735 (n : ℕ) : ℤ :=
  A069735.P7037159933635836489.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A183063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069735.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070005.P18332197979937916789

`∩[A070537(n+1), A078174(n+1)]`
-/

namespace A070005.P18332197979937916789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070005.P18332197979937916789

noncomputable section

/-- A070005: Arithmetic mean of prime factors of n is an integer and n is neither a prime nor power of a prime.

Offset 1, canonical program `A070005.P18332197979937916789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5428 terms. -/
def A070005 (n : ℕ) : ℤ :=
  (A070005.P18332197979937916789.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5428 terms. -/
def A070005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071118.P10143340567303740039

`2*A002618(n+1)`
-/

namespace A071118.P10143340567303740039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002618 (n + 1)

end

end A071118.P10143340567303740039

noncomputable section

/-- A071118: Size of the automorphism group of the group Z X Z_n.

Offset 1, canonical program `A071118.P10143340567303740039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071118 (n : ℕ) : ℤ :=
  A071118.P10143340567303740039.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071118.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072670.P17694124448625562099

`A038548(n+1)-1`
-/

namespace A072670.P17694124448625562099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - 1

end

end A072670.P17694124448625562099

noncomputable section

/-- A072670: Number of ways to write n as i*j + i + j, 0 < i <= j.

Offset 0, canonical program `A072670.P17694124448625562099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072670 (n : ℕ) : ℤ :=
  A072670.P17694124448625562099.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073804.P4353422266090088354

`eq[1-4/2, A295306(n+2)]+2`
-/

namespace A073804.P4353422266090088354
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (4 : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 2

end

end A073804.P4353422266090088354

noncomputable section

/-- A073804: Numbers k such that the number of divisors of k is greater than that of sigma(k).

Offset 1, canonical program `A073804.P4353422266090088354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 885 terms. -/
def A073804 (n : ℕ) : ℤ :=
  (A073804.P4353422266090088354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 885 terms. -/
def A073804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074173.P5413134121168354343

`∩[A054753(n+1)-2, A054753(n+1)]`
-/

namespace A074173.P5413134121168354343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074173.P5413134121168354343

noncomputable section

/-- A074173: Numbers n such that n and n+2 are of the form p^2*q where p and q are distinct primes.

Offset 1, canonical program `A074173.P5413134121168354343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. -/
def A074173 (n : ℕ) : ℤ :=
  (A074173.P5413134121168354343.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. -/
def A074173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074644.P111578526858648291

`C(A002618(n+1), 3)%(n+1)`
-/

namespace A074644.P111578526858648291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002618 (n + 1)).toNat 3 % (n + 1)

end

end A074644.P111578526858648291

noncomputable section

/-- A074644: a(n) = (A074639(n^2) - A074639(n)) mod n.

Offset 1, canonical program `A074644.P111578526858648291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A074644 (n : ℕ) : ℤ :=
  (A074644.P111578526858648291.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A074644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079476.P11192462529891876628

`A007918(A002618(n+1))`
-/

namespace A079476.P11192462529891876628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A002618 (n + 1)).toNat

end

end A079476.P11192462529891876628

noncomputable section

/-- A079476: First prime greater than or equal to phi(n^2).

Offset 1, canonical program `A079476.P11192462529891876628`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A007918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079476 (n : ℕ) : ℤ :=
  A079476.P11192462529891876628.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A007918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079476.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079538.P11266938155067841056

`A001157(n+1)-(A127473(n+1)+A035116(n+1))`
-/

namespace A079538.P11266938155067841056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - (A127473 (n + 1) + A035116 (n + 1))

end

end A079538.P11266938155067841056

noncomputable section

/-- A079538: a(n) = sigma[k](n) - phi(n)^k - d(n)^k for k=2.

Offset 1, canonical program `A079538.P11266938155067841056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079538 (n : ℕ) : ℤ :=
  A079538.P11266938155067841056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079599.P6982259626820945045

`record[n*(1-A115971(n))]`
-/

namespace A079599.P6982259626820945045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A115971 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079599.P6982259626820945045

noncomputable section

/-- A079599: Numbers n for which the n-th impartial game is a second player win.

Offset 0, canonical program `A079599.P6982259626820945045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A079599 (n : ℕ) : ℤ :=
  A079599.P6982259626820945045.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A079599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080258.P17237642647837230985

`∪[A030514(n+1), A054753(n+1)]`
-/

namespace A080258.P17237642647837230985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080258.P17237642647837230985

noncomputable section

/-- A080258: Either 4th power of a prime, or product of a prime and the square of a different prime.

Offset 1, canonical program `A080258.P17237642647837230985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080258 (n : ℕ) : ℤ :=
  (A080258.P17237642647837230985.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088499.P11000041782602806712

`record[A145064(A141545(n+1))+1]`
-/

namespace A088499.P11000041782602806712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (A141545 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088499.P11000041782602806712

noncomputable section

/-- A088499: Doubly (3)-perfect numbers.

Offset 1, canonical program `A088499.P11000041782602806712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A088499 (n : ℕ) : ℤ :=
  A088499.P11000041782602806712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A088499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107890.P9207094795219345944

`∪[3*A007645(n+1), A108164(n+1)]`
-/

namespace A107890.P9207094795219345944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107890.P9207094795219345944

noncomputable section

/-- A107890: Semiprimes that are the product of two members of A007645.

Offset 1, canonical program `A107890.P9207094795219345944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107890 (n : ℕ) : ℤ :=
  (A107890.P9207094795219345944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110085.P1056097740182562448

`lt[0, A353276(n+1)]+1`
-/

namespace A110085.P1056097740182562448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A110085.P1056097740182562448

noncomputable section

/-- A110085: Numbers k such that sigma(k) - phi(k) < tau(k)^omega(k), where sigma = A000203, phi = A000010, tau = A000005 and omega = A001221.

Offset 1, canonical program `A110085.P1056097740182562448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. -/
def A110085 (n : ℕ) : ℤ :=
  (A110085.P1056097740182562448.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. -/
def A110085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110086.P3945987733214712058

`lt[-1, A353276(n+1)]+1`
-/

namespace A110086.P3945987733214712058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A110086.P3945987733214712058

noncomputable section

/-- A110086: Numbers k such that sigma(k) - phi(k) <= tau(k)^omega(k), where sigma = A000203, phi = A000010, tau = A000005 and omega = A001221.

Offset 1, canonical program `A110086.P3945987733214712058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A110086 (n : ℕ) : ℤ :=
  (A110086.P3945987733214712058.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A110086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110087.P11443064098674198962

`lt[A353276(n+2), 0]+2`
-/

namespace A110087.P11443064098674198962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A110087.P11443064098674198962

noncomputable section

/-- A110087: Numbers k such that sigma(k) - phi(k) > tau(k)^omega(k), where sigma = A000203, phi = A000010, tau = A000005 and omega = A001221.

Offset 1, canonical program `A110087.P11443064098674198962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7269 terms. -/
def A110087 (n : ℕ) : ℤ :=
  (A110087.P11443064098674198962.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7269 terms. -/
def A110087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110601.P15769092339802905093

`A000010(n+1)*A035116(n+1)`
-/

namespace A110601.P15769092339802905093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A035116 (n + 1)

end

end A110601.P15769092339802905093

noncomputable section

/-- A110601: a(n) = phi(n)*tau(n)^2, where phi is Euler's totient function and tau(n) is the number of divisors of n.

Offset 1, canonical program `A110601.P15769092339802905093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A035116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A110601 (n : ℕ) : ℤ :=
  A110601.P15769092339802905093.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A035116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A110601.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112926.P6586575153116633314

`A005117(A112930(n+1))`
-/

namespace A112926.P6586575153116633314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A112930 (n + 1)).toNat

end

end A112926.P6586575153116633314

noncomputable section

/-- A112926: Smallest squarefree integer > the n-th prime.

Offset 1, canonical program `A112926.P6586575153116633314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A112926 (n : ℕ) : ℤ :=
  A112926.P6586575153116633314.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A112926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011260.P16571897072566913412

`A053287(n+1)/(n+1)`
-/

namespace A011260.P16571897072566913412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053287 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A011260.P16571897072566913412

noncomputable section

/-- A011260: Number of primitive polynomials of degree n over GF(2).

Offset 1, canonical program `A011260.P16571897072566913412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A011260 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A011260.P16571897072566913412.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A011260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022157.P17411991854055739556

`(n+1)²-A000010(n+1)*A035116(n+1)`
-/

namespace A022157.P17411991854055739556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000010 (n + 1) * A035116 (n + 1)

end

end A022157.P17411991854055739556

noncomputable section

/-- A022157: a(n) = n^2 - phi(n)*tau(n)^2.

Offset 1, canonical program `A022157.P17411991854055739556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022157 (n : ℕ) : ℤ :=
  A022157.P17411991854055739556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027744.P4838682014144095258

`A053287(A008486(n))/A028310(n)`
-/

namespace A027744.P4838682014144095258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053287 (A008486 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A027744.P4838682014144095258

noncomputable section

/-- A027744: Number of primitive polynomials of degree n over GF(8).

Offset 0, canonical program `A027744.P4838682014144095258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A027744 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027744.P4838682014144095258.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A027744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030515.P12955825658277504300

`∪[A050997(n+1), A054753(n+1)]`
-/

namespace A030515.P12955825658277504300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030515.P12955825658277504300

noncomputable section

/-- A030515: Numbers with exactly 6 divisors.

Offset 1, canonical program `A030515.P12955825658277504300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030515 (n : ℕ) : ℤ :=
  (A030515.P12955825658277504300.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044441.P9775668103846057135

`eq[A300222(n+1), A338242(A300222(n+5))]`
-/

namespace A044441.P9775668103846057135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338242 (A300222 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044441.P9775668103846057135

noncomputable section

/-- A044441: Numbers n such that string 2,2 occurs in the base 3 representation of n but not of n+1.

Offset 1, canonical program `A044441.P9775668103846057135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. -/
def A044441 (n : ℕ) : ℤ :=
  (A044441.P9775668103846057135.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. -/
def A044441.provenance : SequenceMachineLib.Provenance := .conjectured

