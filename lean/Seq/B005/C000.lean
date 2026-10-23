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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
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
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
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

/-! ## A033265.P2197321529465223578

`A014081(n+1)+A023416(n+1)`
-/

namespace A033265.P2197321529465223578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (n + 1) + A023416 (n + 1)

end

end A033265.P2197321529465223578

noncomputable section

/-- A033265: Number of i such that d(i) >= d(i-1), where Sum_{i=0..m} d(i)*2^i is the base-2 representation of n.

Offset 1, canonical program `A033265.P2197321529465223578`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033265 (n : ℕ) : ℤ :=
  A033265.P2197321529465223578.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039622.P10330240831742726338

`A088020(n)/A107254(n)`
-/

namespace A039622.P10330240831742726338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088020 n : ℚ) / (A107254 n : ℚ)

end

end A039622.P10330240831742726338

noncomputable section

/-- A039622: Number of n X n Young tableaux.

Offset 0, canonical program `A039622.P10330240831742726338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039622 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A039622.P10330240831742726338.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039622.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A064106.P240912047226861259

`A064105(n+1)+A202342(n+1)`
-/

namespace A064106.P240912047226861259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064105 (n + 1) + A202342 (n + 1)

end

end A064106.P240912047226861259

noncomputable section

/-- A064106: 3rd column of 3rd-order Zeckendorf array A136189.

Offset 1, canonical program `A064106.P240912047226861259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064106 (n : ℕ) : ℤ :=
  A064106.P240912047226861259.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007413.P5220170299432131247

`4-A036585(n+1)`
-/

namespace A007413.P5220170299432131247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A036585 (n + 1)

end

end A007413.P5220170299432131247

noncomputable section

/-- A007413: A squarefree (or Thue-Morse) ternary sequence: closed under 1->123, 2->13, 3->2. Start with 1.

Offset 1, canonical program `A007413.P5220170299432131247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007413 (n : ℕ) : ℤ :=
  A007413.P5220170299432131247.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007413.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A054521.P4283920493715643574

`A063524(A050873(n+1))`
-/

namespace A054521.P4283920493715643574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A050873 (n + 1)).toNat

end

end A054521.P4283920493715643574

noncomputable section

/-- A054521: Triangle read by rows: T(n,k) = 1 if gcd(n, k) = 1, T(n,k) = 0 otherwise (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A054521.P4283920493715643574`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054521 (n : ℕ) : ℤ :=
  A054521.P4283920493715643574.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054521.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A064614.P2027219799619674142

`A065330(n+1)*2^A007949(n+1)*3^A007814(n+1)`
-/

namespace A064614.P2027219799619674142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065330 (n + 1) : ℚ) * (2 : ℚ) ^ (A007949 (n + 1) : ℤ) * (3 : ℚ) ^ (A007814 (n + 1) : ℤ)

end

end A064614.P2027219799619674142

noncomputable section

/-- A064614: Exchange 2 and 3 in the prime factorization of n.

Offset 1, canonical program `A064614.P2027219799619674142`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064614 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064614.P2027219799619674142.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064614.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A072078.P15683580229449578343`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072078 (n : ℕ) : ℤ :=
  A072078.P15683580229449578343.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072078.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A090740.P6461673759266152283

`A007814(n+1)+A059841(n+1)+1`
-/

namespace A090740.P6461673759266152283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A059841 (n + 1) + 1

end

end A090740.P6461673759266152283

noncomputable section

/-- A090740: Exponent of 2 in 3^n - 1.

Offset 1, canonical program `A090740.P6461673759266152283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090740 (n : ℕ) : ℤ :=
  A090740.P6461673759266152283.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090740.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091512.P12959083986982032109

`A069895(n+1)/2`
-/

namespace A091512.P12959083986982032109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069895 (n + 1) : ℚ) / 2

end

end A091512.P12959083986982032109

noncomputable section

/-- A091512: a(n) is the largest integer m such that 2^m divides (2*n)^n, i.e., the exponent of 2 in (2*n)^n.

Offset 1, canonical program `A091512.P12959083986982032109`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091512 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091512.P12959083986982032109.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091512.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A094617.P8506004990279302888`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094617 (n : ℕ) : ℤ :=
  A094617.P8506004990279302888.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094617.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A096351.P17769226119472261959

`(n+1)!/2^A268289(n)`
-/

namespace A096351.P17769226119472261959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (2 : ℚ) ^ (A268289 n : ℤ)

end

end A096351.P17769226119472261959

noncomputable section

/-- A096351: Number of meaningfully different ways to design a neutral single-elimination tournament with n teams.

Offset 1, canonical program `A096351.P17769226119472261959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096351 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A096351.P17769226119472261959.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096351.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A053866.P7754923131584660837

`A063524(A286357(n+1))`
-/

namespace A053866.P7754923131584660837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A286357 (n + 1)).toNat

end

end A053866.P7754923131584660837

noncomputable section

/-- A053866: Parity of A000203(n), the sum of the divisors of n; a(n) = 1 when n is a square or twice a square, 0 otherwise.

Offset 1, canonical program `A053866.P7754923131584660837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053866 (n : ℕ) : ℤ :=
  A053866.P7754923131584660837.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053866.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A023506.P8238075321002430413

`A007814(A006093(n+1))`
-/

namespace A023506.P8238075321002430413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006093 (n + 1)).toNat

end

end A023506.P8238075321002430413

noncomputable section

/-- A023506: Exponent of 2 in prime factorization of prime(n) - 1.

Offset 1, canonical program `A023506.P8238075321002430413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023506 (n : ℕ) : ℤ :=
  A023506.P8238075321002430413.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023506.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023512.P10956487217838497278

`A007814(A008864(n+1))`
-/

namespace A023512.P10956487217838497278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A008864 (n + 1)).toNat

end

end A023512.P10956487217838497278

noncomputable section

/-- A023512: Exponent of 2 in prime factorization of prime(n) + 1.

Offset 1, canonical program `A023512.P10956487217838497278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023512 (n : ℕ) : ℤ :=
  A023512.P10956487217838497278.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023512.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A026357.P9448903342911315199

`A026353(n+2)+n`
-/

namespace A026357.P9448903342911315199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026353 (n + 2) + (n : ℤ)

end

end A026357.P9448903342911315199

noncomputable section

/-- A026357: a(n) = sum of the numbers between the two n's in A026354.

Offset 3, canonical program `A026357.P9448903342911315199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026357 (n : ℕ) : ℤ :=
  A026357.P9448903342911315199.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026357.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049763.P4860550349703159937

`A004202(n+1)²%A140756(n+1)`
-/

namespace A049763.P4860550349703159937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004202 (n + 1) ^ 2) (A140756 (n + 1))

end

end A049763.P4860550349703159937

noncomputable section

/-- A049763: Triangular array T, read by rows: T(n,k) = n^4 mod k, for k = 1..n and n >= 1.

Offset 1, canonical program `A049763.P4860550349703159937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049763 (n : ℕ) : ℤ :=
  A049763.P4860550349703159937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049763.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A051537.P1281035452326378825

`A051173(n+1)/A050873(n+1)`
-/

namespace A051537.P1281035452326378825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A051537.P1281035452326378825

noncomputable section

/-- A051537: Triangle read by rows: T(i,j) = lcm(i,j)/gcd(i,j) for 1 <= j <= i.

Offset 1, canonical program `A051537.P1281035452326378825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051537 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051537.P1281035452326378825.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051537.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A054531.P17853687530783938553

`floor(A002024(n+1)/A050873(n+1))`
-/

namespace A054531.P17853687530783938553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002024 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)⌋

end

end A054531.P17853687530783938553

noncomputable section

/-- A054531: Triangular array T read by rows: T(n,k) = n/gcd(n,k) (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A054531.P17853687530783938553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054531 (n : ℕ) : ℤ :=
  A054531.P17853687530783938553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054531.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A056560.P14693903049238240332

`A056557(n)-A056558(n)`
-/

namespace A056560.P14693903049238240332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 n - A056558 n

end

end A056560.P14693903049238240332

noncomputable section

/-- A056560: Tetrahedron with T(t,n,k)=n-k; succession of growing finite triangles with increasing values towards bottom left.

Offset 0, canonical program `A056560.P14693903049238240332`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056560 (n : ℕ) : ℤ :=
  A056560.P14693903049238240332.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056560.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056973.P10216103084788388741

`A023416(n+1)-A033264(n+1)`
-/

namespace A056973.P10216103084788388741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1) - A033264 (n + 1)

end

end A056973.P10216103084788388741

noncomputable section

/-- A056973: Number of blocks of {0,0} in the binary expansion of n.

Offset 1, canonical program `A056973.P10216103084788388741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056973 (n : ℕ) : ℤ :=
  A056973.P10216103084788388741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056973.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A059026.P15748708878589759038

`floor(A094727(n+1)/A050873(n+1))`
-/

namespace A059026.P15748708878589759038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094727 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)⌋

end

end A059026.P15748708878589759038

noncomputable section

/-- A059026: Table B(n,m) read by rows: B(n,m) = LCM(n,m)/n + LCM(n,m)/m - 1 for all 1<=m<=n.

Offset 1, canonical program `A059026.P15748708878589759038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059026 (n : ℕ) : ℤ :=
  A059026.P15748708878589759038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059026.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A070770.P9804462315160195560

`A056556(n)+A056557(n)+A056558(n)`
-/

namespace A070770.P9804462315160195560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n + A056557 n + A056558 n

end

end A070770.P9804462315160195560

noncomputable section

/-- A070770: b + c + d where b >= c >= d >= 0 ordered by b then c then d.

Offset 0, canonical program `A070770.P9804462315160195560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070770 (n : ℕ) : ℤ :=
  A070770.P9804462315160195560.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070770.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A072580.P18037671959808370065

`A000040(A072577(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072580.P18037671959808370065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072577 (n + 1)).toNat

end

end A072580.P18037671959808370065

noncomputable section

/-- A072580: a(n) = A000040(A072577(n)).

Offset 1, canonical program `A072580.P18037671959808370065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A072577, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072580 (n : ℕ) : ℤ :=
  A072580.P18037671959808370065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A072577, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072580.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072582.P8651059492277123430

`A000040(A072579(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072582.P8651059492277123430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072579 (n + 1)).toNat

end

end A072582.P8651059492277123430

noncomputable section

/-- A072582: a(n) = A000040(A072579(n)).

Offset 1, canonical program `A072582.P8651059492277123430`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A072579, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072582 (n : ℕ) : ℤ :=
  A072582.P8651059492277123430.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A072579, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072582.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A073130.P270506743588403326

`gcd(Δ[A006450(n+1)], A054541(n+2))`
-/

namespace A073130.P270506743588403326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A054541 (n + 2))

end

end A073130.P270506743588403326

noncomputable section

/-- A073130: a(n) = gcd(p(n+1) - p(n), p(p(n+1)) - p(p(n))), where p(n) is the n-th prime.

Offset 1, canonical program `A073130.P270506743588403326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073130 (n : ℕ) : ℤ :=
  (A073130.P270506743588403326.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073130.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A080251.P16627620130656438930

`A003991(ceil(A004201(n+1)/2))`
-/

namespace A080251.P16627620130656438930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 ⌈(A004201 (n + 1) : ℚ) / 2⌉.toNat

end

end A080251.P16627620130656438930

noncomputable section

/-- A080251: Paired decomposition of tetrahedral numbers A000292 arranged as number triangle.

Offset 0, canonical program `A080251.P16627620130656438930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080251 (n : ℕ) : ℤ :=
  A080251.P16627620130656438930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080251.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A083197.P7741079771248666664

`A073846(A008619(A005408(n)-A114327(n)))`
-/

namespace A083197.P7741079771248666664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A008619 (A005408 n - A114327 n).toNat).toNat

end

end A083197.P7741079771248666664

noncomputable section

/-- A083197: Triangular array, read by rows, where if n is odd the n-th row consists of n least unused nonprimes, while if n is even the n-th row consists of the n least unused primes.

Offset 1, canonical program `A083197.P7741079771248666664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A083197 (n : ℕ) : ℤ :=
  A083197.P7741079771248666664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A083197.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A095800.P8184852849266296313

`A002260(n+1)*A209279(n+1)`
-/

namespace A095800.P8184852849266296313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A209279 (n + 1)

end

end A095800.P8184852849266296313

noncomputable section

/-- A095800: Triangle T(n,k) = abs( k *( (2*n+1)*(-1)^(n+k)+2*k-1) /4 ) read by rows, 1<=k<=n.

Offset 1, canonical program `A095800.P8184852849266296313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095800 (n : ℕ) : ℤ :=
  A095800.P8184852849266296313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095800.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A095871.P12080170565042940400

`2*A094728(n+1)-A049777(n+1)`
-/

namespace A095871.P12080170565042940400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094728 (n + 1) - A049777 (n + 1)

end

end A095871.P12080170565042940400

noncomputable section

/-- A095871: Triangle read by rows: T(n,k)=(n+1)*(3*(n+1)-1)/2-k*(3*k-1)/2.

Offset 1, canonical program `A095871.P12080170565042940400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095871 (n : ℕ) : ℤ :=
  A095871.P12080170565042940400.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095871.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104634.P15686132702936156286

`A104633(n+1)+2*A000292(A025581(n))`
-/

namespace A104634.P15686132702936156286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) + 2 * A000292 (A025581 n).toNat

end

end A104634.P15686132702936156286

noncomputable section

/-- A104634: Triangle T(n,k) = (k-1-n)*(k-2-n)*(k+2*n)/6, 1<=k<=n.

Offset 1, canonical program `A104634.P15686132702936156286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104634 (n : ℕ) : ℤ :=
  A104634.P15686132702936156286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104634.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A107782.P10954405074000137432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107782 (n : ℕ) : ℤ :=
  A107782.P10954405074000137432.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107782.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A109923.P355927586159164800

`A099795(n+2)/A006254(n+1)`
-/

namespace A109923.P355927586159164800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099795 (n + 2) : ℚ) / (A006254 (n + 1) : ℚ)

end

end A109923.P355927586159164800

noncomputable section

/-- A109923: a(n) = lcm(1,2,3,...,prime(n))/(1 + 2 + ... + prime(n)).

Offset 2, canonical program `A109923.P355927586159164800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006254, A099795, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109923 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A109923.P355927586159164800.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006254, A099795, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109923.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A008495.P17411499091848740106

`∑[A008494(n)+A001287(n)]-A008494(n)`
-/

namespace A008495.P17411499091848740106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008494 n + A001287 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008494 n

end

end A008495.P17411499091848740106

noncomputable section

/-- A008495: Expansion of (1-x^13) / (1-x)^13.

Offset 0, canonical program `A008495.P17411499091848740106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008495 (n : ℕ) : ℤ :=
  A008495.P17411499091848740106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014311.P14315375804036944727

`2^A056558(n)+2^A194848(n)+2^A194847(n)`
-/

namespace A014311.P14315375804036944727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056558 n : ℤ) + (2 : ℚ) ^ (A194848 n : ℤ) + (2 : ℚ) ^ (A194847 n : ℤ)

end

end A014311.P14315375804036944727

noncomputable section

/-- A014311: Numbers with exactly 3 ones in binary expansion.

Offset 1, canonical program `A014311.P14315375804036944727`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056558, A194847, A194848, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014311 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014311.P14315375804036944727.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056558, A194847, A194848, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014311.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A020668.P7056058439816876017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6287 terms. -/
def A020668 (n : ℕ) : ℤ :=
  (A020668.P7056058439816876017.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6287 terms. -/
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

/-! ## A022544.P10438858882280228119

`eq[0, A229062(n)]`
-/

namespace A022544.P10438858882280228119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022544.P10438858882280228119

noncomputable section

/-- A022544: Numbers that are not the sum of 2 squares.

Offset 1, canonical program `A022544.P10438858882280228119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022544 (n : ℕ) : ℤ :=
  (A022544.P10438858882280228119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022544.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A022891.P5018532674174448617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A022890, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022891 (n : ℕ) : ℤ :=
  A022891.P5018532674174448617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A022890, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022891.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A023520.P5755508264215607282

`A007814(A023515(n+2))`
-/

namespace A023520.P5755508264215607282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A023515 (n + 2)).toNat

end

end A023520.P5755508264215607282

noncomputable section

/-- A023520: Exponent of 2 in prime factorization of prime(n)*prime(n-1) - 1.

Offset 2, canonical program `A023520.P5755508264215607282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023520 (n : ℕ) : ℤ :=
  A023520.P5755508264215607282.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023520.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A023528.P14073637690515097702

`A007814(A023523(n+1))`
-/

namespace A023528.P14073637690515097702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A023523 (n + 1)).toNat

end

end A023528.P14073637690515097702

noncomputable section

/-- A023528: Exponent of 2 in prime factorization of prime(n)*prime(n-1) + 1.

Offset 1, canonical program `A023528.P14073637690515097702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023528 (n : ℕ) : ℤ :=
  A023528.P14073637690515097702.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023528.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A023579.P9595567503422635053

`A007814(A113935(n+1))`
-/

namespace A023579.P9595567503422635053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A113935 (n + 1)).toNat

end

end A023579.P9595567503422635053

noncomputable section

/-- A023579: Exponent of 2 in prime factorization of prime(n)+3.

Offset 1, canonical program `A023579.P9595567503422635053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023579 (n : ℕ) : ℤ :=
  A023579.P9595567503422635053.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023579.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A026086.P5314015387268716224

`Δ[A026070(n+3)]`
-/

namespace A026086.P5314015387268716224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026070 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026086.P5314015387268716224

noncomputable section

/-- A026086: Number of (s(0), s(1), ..., s(n)) such that s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4, s(n) = 3; also a(n) = T(n,n-3), where T is the array defined in A026082.

Offset 4, canonical program `A026086.P5314015387268716224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026086 (n : ℕ) : ℤ :=
  A026086.P5314015387268716224.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026124.P5705506064951519193

`Δ[A026123(n+2)-A026107(n+2)]`
-/

namespace A026124.P5705506064951519193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026123 (n + 2) - A026107 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026124.P5705506064951519193

noncomputable section

/-- A026124: a(n) = number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 3, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-2), where T is the array in A026120.

Offset 2, canonical program `A026124.P5705506064951519193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026124 (n : ℕ) : ℤ :=
  A026124.P5705506064951519193.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026325.P12326969144217981572

`2*A026134(n+1)-A005322(n+2)`
-/

namespace A026325.P12326969144217981572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026134 (n + 1) - A005322 (n + 2)

end

end A026325.P12326969144217981572

noncomputable section

/-- A026325: Number of paths in the plane x >= 0 and y >= -2, from (0,0) to (n,0), and consisting of steps U = (1,1), D = (1,-1) and H = (1,0).

Offset 0, canonical program `A026325.P12326969144217981572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026325 (n : ℕ) : ℤ :=
  A026325.P12326969144217981572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026325.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026726.P4620029716739878414

`A026674(n+1)+A000108(n)-A026671(n)`
-/

namespace A026726.P4620029716739878414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026674 (n + 1) + (A000108 n - A026671 n)

end

end A026726.P4620029716739878414

noncomputable section

/-- A026726: a(n) = T(2n,n), T given by A026725.

Offset 0, canonical program `A026726.P4620029716739878414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A026726 (n : ℕ) : ℤ :=
  A026726.P4620029716739878414.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A026726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026844.P16406587500471255430

`A026674(n+3)-Δ[A000344(n+3)]`
-/

namespace A026844.P16406587500471255430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026674 (n + 3) - (f1 (n + 1) - f1 n)

end

end A026844.P16406587500471255430

noncomputable section

/-- A026844: a(n) = T(2n,n+4), T given by A026725.

Offset 4, canonical program `A026844.P16406587500471255430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A026844 (n : ℕ) : ℤ :=
  A026844.P16406587500471255430.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A026844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027260.P16526017121427228600

`A026070(2*(n+3))`
-/

namespace A027260.P16526017121427228600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026070 (2 * (n + 3))

end

end A027260.P16526017121427228600

noncomputable section

/-- A027260: a(n) = Sum_{k=0..2n-3} T(n,k) * T(n,k+3), with T given by A025177.

Offset 3, canonical program `A027260.P16526017121427228600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A027260 (n : ℕ) : ℤ :=
  A027260.P16526017121427228600.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A027260.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029235.P12349426323057609679

`A025827(n)+A029202(n)-A029213(n)`
-/

namespace A029235.P12349426323057609679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025827 n + (A029202 n - A029213 n)

end

end A029235.P12349426323057609679

noncomputable section

/-- A029235: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029235.P12349426323057609679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029235 (n : ℕ) : ℤ :=
  A029235.P12349426323057609679.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029446.P13331593502067792089

`A029411(n)+∑[A029428(n)-A029411(n)]`
-/

namespace A029446.P13331593502067792089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029428 n - A029411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029411 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029446.P13331593502067792089

noncomputable section

/-- A029446: Expansion of 1/((1-x^9)(1-x^10)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029446.P13331593502067792089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029446 (n : ℕ) : ℤ :=
  A029446.P13331593502067792089.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029446.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A031948.P11177612134455942008

`eq[A290825(n)+A088917(n), A189820(n+1)]`
-/

namespace A031948.P11177612134455942008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 n + A088917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031948.P11177612134455942008

noncomputable section

/-- A031948: Numbers with exactly two distinct base-3 digits.

Offset 1, canonical program `A031948.P11177612134455942008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A031948 (n : ℕ) : ℤ :=
  (A031948.P11177612134455942008.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A031948.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A034036.P767606872198546965

`comp[A034035(n+1)]`
-/

namespace A034036.P767606872198546965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A034036.P767606872198546965

noncomputable section

/-- A034036: Numbers of the form (x^2+xy+2y^2 with x>=0, y>=0).

Offset 1, canonical program `A034036.P767606872198546965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3052 terms. -/
def A034036 (n : ℕ) : ℤ :=
  (A034036.P767606872198546965.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3052 terms. -/
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

/-! ## A037958.P1538083685878928086

`A037954(n+1)-A037957(n)`
-/

namespace A037958.P1538083685878928086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037954 (n + 1) - A037957 n

end

end A037958.P1538083685878928086

noncomputable section

/-- A037958: a(n) = binomial(n, floor((n-8)/2)).

Offset 0, canonical program `A037958.P1538083685878928086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A037958 (n : ℕ) : ℤ :=
  A037958.P1538083685878928086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A037958.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038566.P5775218228113679093

`A002260(A169581(n+1))`
-/

namespace A038566.P5775218228113679093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A169581 (n + 1)).toNat

end

end A038566.P5775218228113679093

noncomputable section

/-- A038566: Numerators in canonical bijection from positive integers to positive rationals <= 1: arrange fractions by increasing denominator then by increasing numerator.

Offset 1, canonical program `A038566.P5775218228113679093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A169581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A038566 (n : ℕ) : ℤ :=
  A038566.P5775218228113679093.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A169581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A038566.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A039276.P4466623649426209317

`∩[A031452(n+1), A081605(n+1)]`
-/

namespace A039276.P4466623649426209317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039276.P4466623649426209317

noncomputable section

/-- A039276: Numbers whose base-3 representation has the same nonzero number of 0's and 2's.

Offset 1, canonical program `A039276.P4466623649426209317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A039276 (n : ℕ) : ℤ :=
  (A039276.P4466623649426209317.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A039276.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A045933.P13873207299260927009

`A045932(eq[1, A045932(n+2)-A045932(n+1)]+1)`
-/

namespace A045933.P13873207299260927009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045932 (n + 2) - A045932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045933.P13873207299260927009

noncomputable section

/-- A045933: Numbers n such that n through n+4 are divisible by the same number of distinct primes.

Offset 1, canonical program `A045933.P13873207299260927009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A045933 (n : ℕ) : ℤ :=
  A045933.P13873207299260927009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A045933.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A046203.P12559141239243383564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4633 terms. -/
def A046203 (n : ℕ) : ℤ :=
  A046203.P12559141239243383564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4633 terms. -/
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

/-! ## A051194.P17118644438746036718

`A000005(A050873(n+1))`
-/

namespace A051194.P17118644438746036718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A050873 (n + 1)).toNat

end

end A051194.P17118644438746036718

noncomputable section

/-- A051194: Triangular array T read by rows: T(n,k) = number of positive integers that divide both n and k.

Offset 1, canonical program `A051194.P17118644438746036718`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051194 (n : ℕ) : ℤ :=
  A051194.P17118644438746036718.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051194.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A052217.P2954763341326095250

`10^A056556(n)+10^A056557(n)+10^A056558(n)`
-/

namespace A052217.P2954763341326095250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A056556 n : ℤ) + (10 : ℚ) ^ (A056557 n : ℤ) + (10 : ℚ) ^ (A056558 n : ℤ)

end

end A052217.P2954763341326095250

noncomputable section

/-- A052217: Numbers whose sum of digits is 3.

Offset 1, canonical program `A052217.P2954763341326095250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A052217 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052217.P2954763341326095250.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A052217.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052468.P15776435723576855453

`A162441(n+2)/(2*(n+1)+1)`
-/

namespace A052468.P15776435723576855453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162441 (n + 2) : ℚ) / (2 * (n + 1) + 1 : ℚ)

end

end A052468.P15776435723576855453

noncomputable section

/-- A052468: Numerators in the Taylor series for arccosh(x) - log(2*x).

Offset 1, canonical program `A052468.P15776435723576855453`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052468 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052468.P15776435723576855453.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052468.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A053692.P15159050845030527958

`A052343(Δ[n²])`
-/

namespace A053692.P15159050845030527958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053692.P15159050845030527958

noncomputable section

/-- A053692: Number of self-conjugate 4-core partitions of n.

Offset 0, canonical program `A053692.P15159050845030527958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A053692 (n : ℕ) : ℤ :=
  A053692.P15159050845030527958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A053692.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A057028.P8117438138446753169

`A056023(n+1)+A092543(n+1)-A209279(n+1)`
-/

namespace A057028.P8117438138446753169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1) + (A092543 (n + 1) - A209279 (n + 1))

end

end A057028.P8117438138446753169

noncomputable section

/-- A057028: Triangle T read by rows: row n consists of the numbers C(n,2)+1 to C(n+1,2); numbers in odd-numbered places form a decreasing sequence and the others an increasing sequence.

Offset 1, canonical program `A057028.P8117438138446753169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057028 (n : ℕ) : ℤ :=
  A057028.P8117438138446753169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057028.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A057847.P14928123273098948202

`A057851(A000040(n+1))`
-/

namespace A057847.P14928123273098948202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (A000040 (n + 1)).toNat

end

end A057847.P14928123273098948202

noncomputable section

/-- A057847: Primes p whose order of primeness A078442(p) is at least 10.

Offset 1, canonical program `A057847.P14928123273098948202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A057847 (n : ℕ) : ℤ :=
  A057847.P14928123273098948202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A057847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057849.P12722118216804034040

`A049202(A000040(n+1))`
-/

namespace A057849.P12722118216804034040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (A000040 (n + 1)).toNat

end

end A057849.P12722118216804034040

noncomputable section

/-- A057849: Primes p whose order of primeness A078442(p) is at least 7.

Offset 1, canonical program `A057849.P12722118216804034040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A057849 (n : ℕ) : ℤ :=
  A057849.P12722118216804034040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A057849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058079.P6918650657682453408

`A000040(eq[1, A058078(n+1)]+3)`
-/

namespace A058079.P6918650657682453408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A058079.P6918650657682453408

noncomputable section

/-- A058079: a(n) = p3, where {p1,p2,p3} are 3 consecutive primes with increasing order such that gcd(C(p3,p2), C(p2,p1)) = 1, where C is the binomial coefficient.

Offset 1, canonical program `A058079.P6918650657682453408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A058079 (n : ℕ) : ℤ :=
  A058079.P6918650657682453408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A058079.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A064031.P6654393610759162702

`A061538((n+1)!)`
-/

namespace A064031.P6654393610759162702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061538 (Nat.factorial (n + 1))

end

end A064031.P6654393610759162702

noncomputable section

/-- A064031: Product of non-unitary divisors of n!.

Offset 1, canonical program `A064031.P6654393610759162702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064031 (n : ℕ) : ℤ :=
  A064031.P6654393610759162702.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064031.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064033.P4449831178947753500

`A061538(A001405(n+1))`
-/

namespace A064033.P4449831178947753500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061538 (A001405 (n + 1)).toNat

end

end A064033.P4449831178947753500

noncomputable section

/-- A064033: Product of non-unitary divisors of binomial(n, floor(n/2)) or a(n) = 1 if all divisors are unitary. See A046098.

Offset 1, canonical program `A064033.P4449831178947753500`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064033 (n : ℕ) : ℤ :=
  A064033.P4449831178947753500.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064033.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A064816.P8948604951401718138

`eq[2, ceil(A053603(n)/2)]`
-/

namespace A064816.P8948604951401718138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053603 n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064816.P8948604951401718138

noncomputable section

/-- A064816: Numbers which are the sums of two positive triangular numbers (A000217) in exactly two different ways.

Offset 1, canonical program `A064816.P8948604951401718138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1648 terms. -/
def A064816 (n : ℕ) : ℤ :=
  (A064816.P8948604951401718138.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1648 terms. -/
def A064816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064828.P10612756008420980911

`eq[3, ceil(A053603(n)/2)]`
-/

namespace A064828.P10612756008420980911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053603 n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064828.P10612756008420980911

noncomputable section

/-- A064828: Numbers which are the sum of two positive triangular numbers in exactly three different ways.

Offset 1, canonical program `A064828.P10612756008420980911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A064828 (n : ℕ) : ℤ :=
  (A064828.P10612756008420980911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A064828.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A066796.P3261242548129466086

`A006134(n+1)-1`
-/

namespace A066796.P3261242548129466086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 (n + 1) - 1

end

end A066796.P3261242548129466086

noncomputable section

/-- A066796: a(n) = Sum_{i=1..n} binomial(2*i,i).

Offset 1, canonical program `A066796.P3261242548129466086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066796 (n : ℕ) : ℤ :=
  A066796.P3261242548129466086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066796.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A071561.P9594246998475944590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7140 terms. -/
def A071561 (n : ℕ) : ℤ :=
  (A071561.P9594246998475944590.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7140 terms. -/
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

/-! ## A072756.P6856512345765162209

`comp[A072757(n)]`
-/

namespace A072756.P6856512345765162209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072757 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A072756.P6856512345765162209

noncomputable section

/-- A072756: a(n) = least nonnegative integer not a(k) and not a(k)+floor(a(k)/2) for k

Offset 0, canonical program `A072756.P6856512345765162209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072756 (n : ℕ) : ℤ :=
  (A072756.P6856512345765162209.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072756.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A073791.P4489210871171678278

`-(A320283(2*n)/2)`
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

Offset 1, canonical program `A074766.P17996081687479392311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066066, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074766 (n : ℕ) : ℤ :=
  A074766.P17996081687479392311.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066066, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074766.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A075113.P11777112523547195368

`A000217(n)-A048702(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075113.P11777112523547195368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A048702 n

end

end A075113.P11777112523547195368

noncomputable section

/-- A075113: a(n) = A000217(n) - A048702(n).

Offset 0, canonical program `A075113.P11777112523547195368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075113 (n : ℕ) : ℤ :=
  A075113.P11777112523547195368.a n

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

/-! ## A075993.P7614292244844846049

`Δ[A127739(n+1)-A010766(n+1)]`
-/

namespace A075993.P7614292244844846049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - A010766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075993.P7614292244844846049

noncomputable section

/-- A075993: Triangle read by rows: T(n,m) is the number of integers k such that floor(n/k) = m, n >= 1, k = 1..n.

Offset 1, canonical program `A075993.P7614292244844846049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075993 (n : ℕ) : ℤ :=
  A075993.P7614292244844846049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075993.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A076238.P18351837479544488770

`A050436(n+1)%A002808(n+1)`
-/

namespace A076238.P18351837479544488770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050436 (n + 1)) (A002808 (n + 1))

end

end A076238.P18351837479544488770

noncomputable section

/-- A076238: a(n) = A050436(n) mod A002808(n).

Offset 1, canonical program `A076238.P18351837479544488770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A050436, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076238 (n : ℕ) : ℤ :=
  A076238.P18351837479544488770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A050436, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076238.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A078156.P15055870167675829401

`A078153((n+1)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078156.P15055870167675829401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078153 (Nat.factorial (n + 1))

end

end A078156.P15055870167675829401

noncomputable section

/-- A078156: A078153(n!).

Offset 1, canonical program `A078156.P15055870167675829401`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078153, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078156 (n : ℕ) : ℤ :=
  A078156.P15055870167675829401.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078153, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078156.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078158.P4884813077665942233

`A078153(2^(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078158.P4884813077665942233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078153 (2 ^ (n + 1))

end

end A078158.P4884813077665942233

noncomputable section

/-- A078158: a(n) = A078153(2^n).

Offset 1, canonical program `A078158.P4884813077665942233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078153, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078158 (n : ℕ) : ℤ :=
  A078158.P4884813077665942233.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078153, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078158.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A079080.P14548325111839159972

`gcd(A079079(n+1), A023523(n+2))`
-/

namespace A079080.P14548325111839159972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079079 (n + 1)) (A023523 (n + 2))

end

end A079080.P14548325111839159972

noncomputable section

/-- A079080: a(n) = gcd((prime(n)+1)*(prime(n+1)+1)/4, prime(n)*prime(n+1)+1).

Offset 1, canonical program `A079080.P14548325111839159972`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079080 (n : ℕ) : ℤ :=
  (A079080.P14548325111839159972.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079080.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079085.P14446471783722856133

`A001221(A079079(n+1))`
-/

namespace A079085.P14446471783722856133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A079079 (n + 1)).toNat

end

end A079085.P14446471783722856133

noncomputable section

/-- A079085: Number of distinct prime factors of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079085.P14446471783722856133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079085 (n : ℕ) : ℤ :=
  A079085.P14446471783722856133.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079087.P15333323950352493770

`A051903(A079079(n+1))`
-/

namespace A079087.P15333323950352493770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A079079 (n + 1)).toNat

end

end A079087.P15333323950352493770

noncomputable section

/-- A079087: Maximum exponent in prime factorization of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079087.P15333323950352493770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079087 (n : ℕ) : ℤ :=
  A079087.P15333323950352493770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079088.P13785481457284140472

`A000005(A079079(n+1))`
-/

namespace A079088.P13785481457284140472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A079079 (n + 1)).toNat

end

end A079088.P13785481457284140472

noncomputable section

/-- A079088: Number of divisors of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079088.P13785481457284140472`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079088 (n : ℕ) : ℤ :=
  A079088.P13785481457284140472.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079089.P14407906461052975020

`A000203(A079079(n+1))`
-/

namespace A079089.P14407906461052975020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A079079 (n + 1)).toNat

end

end A079089.P14407906461052975020

noncomputable section

/-- A079089: Sum of divisors of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079089.P14407906461052975020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079089 (n : ℕ) : ℤ :=
  A079089.P14407906461052975020.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079091.P8514234596208376302

`A001414(A079079(n+1))`
-/

namespace A079091.P8514234596208376302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A079079 (n + 1)).toNat

end

end A079091.P8514234596208376302

noncomputable section

/-- A079091: Sum of all prime factors of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079091.P8514234596208376302`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079091 (n : ℕ) : ℤ :=
  A079091.P8514234596208376302.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079415.P2317611460476883429

`C(A090973(n+1), A090973(C(2, a(n-1))+1))` with `a(0)=2`
-/

namespace A079415.P2317611460476883429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.choose (A090973 (n + 1)).toNat (A090973 (Nat.choose 2 (a (n - 1)) + 1)).toNat

end

end A079415.P2317611460476883429

noncomputable section

/-- A079415: a(n) = floor(prime(n)/n) * ceiling(prime(n)/n) / 2.

Offset 1, canonical program `A079415.P2317611460476883429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079415 (n : ℕ) : ℤ :=
  (A079415.P2317611460476883429.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079415.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A080236.P11120207343015903809

`2*A080233(n)-A302764(n+1)`
-/

namespace A080236.P11120207343015903809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080233 n - A302764 (n + 1)

end

end A080236.P11120207343015903809

noncomputable section

/-- A080236: Triangle of differences of consecutive pairs of row elements of triangle A080233.

Offset 0, canonical program `A080236.P11120207343015903809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080236 (n : ℕ) : ℤ :=
  A080236.P11120207343015903809.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080236.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A080587.P4353599123797453831

`3*2^(A000523(A002264(n+6))-1)*(4-3*A080586(n))+A080586(n)*(n+7)-9`
-/

namespace A080587.P4353599123797453831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ (A000523 (A002264 (n + 6)).toNat - 1 : ℤ) * (4 - 3 * A080586 n : ℚ) + (A080586 n * (n + 7 : ℤ) : ℚ) - 9

end

end A080587.P4353599123797453831

noncomputable section

/-- A080587: Partial sums of A080586.

Offset 0, canonical program `A080587.P4353599123797453831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080586, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080587 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080587.P4353599123797453831.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080586, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080587.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A082934.P14654643793815549063

`∑[A082928(n+1)]`
-/

namespace A082934.P14654643793815549063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082934.P14654643793815549063

noncomputable section

/-- A082934: A082928(1) + A082928(2) + ... + A082928(n).

Offset 1, canonical program `A082934.P14654643793815549063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082934 (n : ℕ) : ℤ :=
  A082934.P14654643793815549063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082934.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A093304.P2617661038661647900

`A000071(n+2)+A000079(n)-A092176(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093304.P2617661038661647900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + A000079 n - A092176 n

end

end A093304.P2617661038661647900

noncomputable section

/-- A093304: a(n) = A000071(n+1) + A000079(n-1) - A092176(n-1).

Offset 1, canonical program `A093304.P2617661038661647900`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093304 (n : ℕ) : ℤ :=
  A093304.P2617661038661647900.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093304.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A097070.P7474886704666409265

`A002740(n+1)+A097613(n+1)`
-/

namespace A097070.P7474886704666409265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002740 (n + 1) + A097613 (n + 1)

end

end A097070.P7474886704666409265

noncomputable section

/-- A097070: Consider all compositions (ordered partitions) of n into n parts, allowing zeros. E.g., for n = 3 we get 300, 030, 003, 210, 120, 201, 102, 021, 012, 111. Then a(n) is the total number of 1's.

Offset 1, canonical program `A097070.P7474886704666409265`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097070 (n : ℕ) : ℤ :=
  A097070.P7474886704666409265.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097070.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A110952.P12434457606571142706

`A061928(n+1)+1-A144394(n+4)`
-/

namespace A110952.P12434457606571142706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061928 (n + 1) + (1 - A144394 (n + 4))

end

end A110952.P12434457606571142706

noncomputable section

/-- A110952: Triangle read by rows: T(n,k) = number of permutations of [n] where the first increasing run has length k and the last increasing run has length n-k-1, 0

Offset 3, canonical program `A110952.P12434457606571142706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4753 terms. -/
def A110952 (n : ℕ) : ℤ :=
  A110952.P12434457606571142706.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4753 terms. -/
def A110952.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A118139.P15269754510804949913

`lt[1, A052343(n)]`
-/

namespace A118139.P15269754510804949913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118139.P15269754510804949913

noncomputable section

/-- A118139: Numbers expressible as the sum of two triangular numbers in at least two different ways.

Offset 1, canonical program `A118139.P15269754510804949913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2196 terms. -/
def A118139 (n : ℕ) : ℤ :=
  (A118139.P15269754510804949913.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2196 terms. -/
def A118139.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A118953.P11235668260339629374

`A107279(A091931(n+1))`
-/

namespace A118953.P11235668260339629374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A091931 (n + 1)).toNat

end

end A118953.P11235668260339629374

noncomputable section

/-- A118953: Number of ways to write the n-th prime as 2^k + p, where p is prime and p < 2^k.

Offset 1, canonical program `A118953.P11235668260339629374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118953 (n : ℕ) : ℤ :=
  A118953.P11235668260339629374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118958.P10422470674657479766

`p?[A107279(A091931(n+1))+A000040(n+1)]`
-/

namespace A118958.P10422470674657479766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A091931 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118958.P10422470674657479766

noncomputable section

/-- A118958: Primes that cannot be written as 2^k + p with p prime < 2^k.

Offset 1, canonical program `A118958.P10422470674657479766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1253 terms. -/
def A118958 (n : ℕ) : ℤ :=
  A118958.P10422470674657479766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1253 terms. -/
def A118958.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A119345.P15651874011805489413

`eq[1, A052343(n)]`
-/

namespace A119345.P15651874011805489413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119345.P15651874011805489413

noncomputable section

/-- A119345: Numbers having exactly one representation as sum of two triangular numbers.

Offset 1, canonical program `A119345.P15651874011805489413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119345 (n : ℕ) : ℤ :=
  (A119345.P15651874011805489413.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119345.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A122414.P2301085849404796156

`A010051(A050873(n+1))`
-/

namespace A122414.P2301085849404796156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A050873 (n + 1)).toNat

end

end A122414.P2301085849404796156

noncomputable section

/-- A122414: Triangle T(n,k) for 1 <= k <= n read by rows, where T(n,k) = 1 if gcd(n,k) is prime, 0 otherwise.

Offset 1, canonical program `A122414.P2301085849404796156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122414 (n : ℕ) : ℤ :=
  A122414.P2301085849404796156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122414.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A125165.P1719362185260033778

`2*A104712(n+2)-A135278(n)`
-/

namespace A125165.P1719362185260033778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104712 (n + 2) - A135278 n

end

end A125165.P1719362185260033778

noncomputable section

/-- A125165: Triangle read by rows: T(n,k) = C(n,k) + 3*C(n,k+1) + 2*C(n,k+2) (0<=k<=n).

Offset 0, canonical program `A125165.P1719362185260033778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125165 (n : ℕ) : ℤ :=
  A125165.P1719362185260033778.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125165.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A000050.P5830236791147847898

`A102548(2^n)`
-/

namespace A000050.P5830236791147847898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102548 (2 ^ n)

end

end A000050.P5830236791147847898

noncomputable section

/-- A000050: Number of positive integers <= 2^n of form x^2 + y^2.

Offset 0, canonical program `A000050.P5830236791147847898`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000050 (n : ℕ) : ℤ :=
  A000050.P5830236791147847898.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000050.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A001729.P5595440240656319040

`eq[n, n-A064532(n)]`
-/

namespace A001729.P5595440240656319040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064532 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001729.P5595440240656319040

noncomputable section

/-- A001729: List of numbers whose digits contain no loops (version 1).

Offset 1, canonical program `A001729.P5595440240656319040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6738 terms. -/
def A001729 (n : ℕ) : ℤ :=
  (A001729.P5595440240656319040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6738 terms. -/
def A001729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001746.P1259921048174230123

`lt[n-A064532(n), n]`
-/

namespace A001746.P1259921048174230123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064532 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A001746.P1259921048174230123

noncomputable section

/-- A001746: At least one digit contains a loop (version 1).

Offset 1, canonical program `A001746.P1259921048174230123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001746 (n : ℕ) : ℤ :=
  (A001746.P1259921048174230123.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001746.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A004797.P13718195632924904627

`∑[A199015(n)]`
-/

namespace A004797.P13718195632924904627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P13718195632924904627

noncomputable section

/-- A004797: Convolution of A002024 with itself.

Offset 0, canonical program `A004797.P13718195632924904627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004797 (n : ℕ) : ℤ :=
  A004797.P13718195632924904627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005237.P9029700576997496255

`filter[A140128(n+1), A361022(#)]`
-/

namespace A005237.P9029700576997496255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361022 (f1 j).toNat = 1) n)

end

end A005237.P9029700576997496255

noncomputable section

/-- A005237: Numbers k such that k and k+1 have the same number of divisors.

Offset 1, canonical program `A005237.P9029700576997496255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6947 terms. -/
def A005237 (n : ℕ) : ℤ :=
  A005237.P9029700576997496255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6947 terms. -/
def A005237.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A006876.P13042802876446333329

`∑{d}[n+1, A024000(#-1)*A296302((n+1)/#)]`
-/

namespace A006876.P13042802876446333329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024000 (d - 1) * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A006876.P13042802876446333329

noncomputable section

/-- A006876: Mu-molecules in Mandelbrot set whose seeds have period n.

Offset 1, canonical program `A006876.P13042802876446333329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A006876 (n : ℕ) : ℤ :=
  A006876.P13042802876446333329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A006876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007971.P3280594718535611421

`A168055(n)%(3*(a(n-1)+a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A007971.P3280594718535611421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (A168055 n) (3 * (a (n - 1) + a (n - 2)))

end

end A007971.P3280594718535611421

noncomputable section

/-- A007971: INVERTi transform of central trinomial coefficients (A002426).

Offset 0, canonical program `A007971.P3280594718535611421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A007971 (n : ℕ) : ℤ :=
  A007971.P3280594718535611421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A007971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008475.P12981903007955240503

`∑{d}[n+1, A092509(#)]`
-/

namespace A008475.P12981903007955240503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092509 d

end

end A008475.P12981903007955240503

noncomputable section

/-- A008475: If n = Product (p_j^k_j) then a(n) = Sum (p_j^k_j) (a(1) = 0 by convention).

Offset 1, canonical program `A008475.P12981903007955240503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008475 (n : ℕ) : ℤ :=
  A008475.P12981903007955240503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008475.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A011534.P15152361579944605440

`lt[A064532(n), A064692(n)]`
-/

namespace A011534.P15152361579944605440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011534.P15152361579944605440

noncomputable section

/-- A011534: Numbers that contain a 4.

Offset 1, canonical program `A011534.P15152361579944605440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011534 (n : ℕ) : ℤ :=
  (A011534.P15152361579944605440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011946.P13849652241662667985

`∑{d}[n+1, A001511(#)*A296302((n+1)/#)]`
-/

namespace A011946.P13849652241662667985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A011946.P13849652241662667985

noncomputable section

/-- A011946: Number of Barlow packings with group P63/mmc(S) that repeat after 4n layers.

Offset 1, canonical program `A011946.P13849652241662667985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A011946 (n : ℕ) : ℤ :=
  A011946.P13849652241662667985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A011946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020333.P8708679268539003984

`(∑[A092509(5*(n+1))]+1)*(n+1)`
-/

namespace A020333.P8708679268539003984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092509 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (n + 1 : ℤ)

end

end A020333.P8708679268539003984

noncomputable section

/-- A020333: Numbers whose base-5 representation is the juxtaposition of two identical strings.

Offset 1, canonical program `A020333.P8708679268539003984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. -/
def A020333 (n : ℕ) : ℤ :=
  A020333.P8708679268539003984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. -/
def A020333.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A022823.P13984185268701905408

`A022822(n+2)+1+n`
-/

namespace A022823.P13984185268701905408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022822 (n + 2) + 1 + (n : ℤ)

end

end A022823.P13984185268701905408

noncomputable section

/-- A022823: a(n) = [ (2n+1)/(n-1) ] + [ (2n+2)/(n-2) ] + ... + [ (3n-1)/1 ].

Offset 2, canonical program `A022823.P13984185268701905408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022823 (n : ℕ) : ℤ :=
  A022823.P13984185268701905408.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022823.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024510.P9053752916774843520

`eq[0, A004431(n+2)%2]+2`
-/

namespace A024510.P9053752916774843520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004431 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A024510.P9053752916774843520

noncomputable section

/-- A024510: Positions of even numbers in A004431 (sums of 2 distinct nonzero squares).

Offset 1, canonical program `A024510.P9053752916774843520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5167 terms. -/
def A024510 (n : ℕ) : ℤ :=
  (A024510.P9053752916774843520.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5167 terms. -/
def A024510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024514.P16553037796526444321

`eq[2, A000005(A004431(n+1))]+1`
-/

namespace A024514.P16553037796526444321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004431 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024514.P16553037796526444321

noncomputable section

/-- A024514: Positions of primes in A004431 (sums of 2 distinct nonzero squares).

Offset 1, canonical program `A024514.P16553037796526444321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2102 terms. -/
def A024514 (n : ℕ) : ℤ :=
  (A024514.P16553037796526444321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2102 terms. -/
def A024514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025181.P6813046550114564119

`∑[A026070(n+3)]`
-/

namespace A025181.P6813046550114564119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026070 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025181.P6813046550114564119

noncomputable section

/-- A025181: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is an integer, s(0) = 0, |s(1)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2, s(n) = 3. Also a(n) = T(n,n-3), where T is the array defined in A025177.

Offset 3, canonical program `A025181.P6813046550114564119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A025181 (n : ℕ) : ℤ :=
  A025181.P6813046550114564119.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A025181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025925.P1140353279712905302

`A029114(n)+A029411(n)-A029102(n)`
-/

namespace A025925.P1140353279712905302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n + (A029411 n - A029102 n)

end

end A025925.P1140353279712905302

noncomputable section

/-- A025925: Expansion of 1/((1-x^9)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A025925.P1140353279712905302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025925 (n : ℕ) : ℤ :=
  A025925.P1140353279712905302.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025925.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026677.P541306508744937430

`A000034(n)*A054441(A008619(n))`
-/

namespace A026677.P541306508744937430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A054441 (A008619 n).toNat

end

end A026677.P541306508744937430

noncomputable section

/-- A026677: T(n,0) + T(n,1) + ... + T(n,n), T given by A026670.

Offset 0, canonical program `A026677.P541306508744937430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A026677 (n : ℕ) : ℤ :=
  A026677.P541306508744937430.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A026677.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029105.P17542753174349569294

`A029213(abs(1-n))+A029213(n)`
-/

namespace A029105.P17542753174349569294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029213 |1 - (n : ℤ)|.toNat + A029213 n

end

end A029105.P17542753174349569294

noncomputable section

/-- A029105: Expansion of 1/((1-x)(1-x^5)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029105.P17542753174349569294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029105 (n : ℕ) : ℤ :=
  A029105.P17542753174349569294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029233.P3941505614629625210

`A029183(n)+A029224(n)-A029180(n)`
-/

namespace A029233.P3941505614629625210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029183 n + (A029224 n - A029180 n)

end

end A029233.P3941505614629625210

noncomputable section

/-- A029233: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029233.P3941505614629625210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029233 (n : ℕ) : ℤ :=
  A029233.P3941505614629625210.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029244.P8059623005878958167

`A029213(n)+∑[A029224(n)-A029213(n)]`
-/

namespace A029244.P8059623005878958167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 n - A029213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029213 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029244.P8059623005878958167

noncomputable section

/-- A029244: Expansion of 1/((1-x^2)*(1-x^10)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029244.P8059623005878958167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029244 (n : ℕ) : ℤ :=
  A029244.P8059623005878958167.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029431.P15634929436894288519

`A025907(n)+A029224(n)-A029225(n)`
-/

namespace A029431.P15634929436894288519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 n + (A029224 n - A029225 n)

end

end A029431.P15634929436894288519

noncomputable section

/-- A029431: Expansion of 1/((1-x^6)(1-x^10)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029431.P15634929436894288519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029431 (n : ℕ) : ℤ :=
  A029431.P15634929436894288519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029431.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A033215.P2128816261524133754

`∩[A008846(n+1), A139492(n+1)]`
-/

namespace A033215.P2128816261524133754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P2128816261524133754

noncomputable section

/-- A033215: Primes of form x^2+21*y^2.

Offset 1, canonical program `A033215.P2128816261524133754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A033215 (n : ℕ) : ℤ :=
  (A033215.P2128816261524133754.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A033215.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035185.P8037574016802671635

`A363037(n+1)-A364032(n+1)`
-/

namespace A035185.P8037574016802671635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363037 (n + 1) - A364032 (n + 1)

end

end A035185.P8037574016802671635

noncomputable section

/-- A035185: Number of divisors of n == 1 or 7 (mod 8) minus number of divisors of n == 3 or 5 (mod 8).

Offset 1, canonical program `A035185.P8037574016802671635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035185 (n : ℕ) : ℤ :=
  A035185.P8037574016802671635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035185.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038991.P10290637620050896521

`∑{d}[n+1, A000290(#)*A027847((n+1)/#)]`
-/

namespace A038991.P10290637620050896521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A027847 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038991.P10290637620050896521

noncomputable section

/-- A038991: Number of sublattices of index n in generic 4-dimensional lattice.

Offset 1, canonical program `A038991.P10290637620050896521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038991 (n : ℕ) : ℤ :=
  A038991.P10290637620050896521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039219.P17376334954191600038

`A329624(n+1)+A076314(A056142(n))`
-/

namespace A039219.P17376334954191600038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329624 (n + 1) + A076314 (A056142 n).toNat

end

end A039219.P17376334954191600038

noncomputable section

/-- A039219: Numbers whose base-12 representation has the same number of 0's and 10's.

Offset 1, canonical program `A039219.P17376334954191600038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A039219 (n : ℕ) : ℤ :=
  A039219.P17376334954191600038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A039219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039638.P9564381809488452408

`A039634(A006093(n+1))`
-/

namespace A039638.P9564381809488452408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A006093 (n + 1)).toNat

end

end A039638.P9564381809488452408

noncomputable section

/-- A039638: Fixed point of "k -> k/2 or (k-1)/2 until result is prime", starting with prime(n)-1.

Offset 1, canonical program `A039638.P9564381809488452408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039638 (n : ℕ) : ℤ :=
  A039638.P9564381809488452408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039639.P407717812387908810

`A039634(A008864(n+1))`
-/

namespace A039639.P407717812387908810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A008864 (n + 1)).toNat

end

end A039639.P407717812387908810

noncomputable section

/-- A039639: Fixed point of "k -> k/2 or (k-1)/2 until result is prime", starting with prime(n)+1.

Offset 1, canonical program `A039639.P407717812387908810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039639 (n : ℕ) : ℤ :=
  A039639.P407717812387908810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039642.P6274246223323144857

`A039636(A006093(n+1))`
-/

namespace A039642.P6274246223323144857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A006093 (n + 1)).toNat

end

end A039642.P6274246223323144857

noncomputable section

/-- A039642: Number of steps to fixed point of "k -> k/2 or (k-1)/2 until result is prime", starting with prime(n)-1.

Offset 1, canonical program `A039642.P6274246223323144857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039642 (n : ℕ) : ℤ :=
  A039642.P6274246223323144857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039643.P15310659880312822669

`A039636(A008864(n+1))`
-/

namespace A039643.P15310659880312822669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A008864 (n + 1)).toNat

end

end A039643.P15310659880312822669

noncomputable section

/-- A039643: Number of steps to fixed point of "k -> k/2 or (k-1)/2 until result is prime", starting with prime(n)+1.

Offset 1, canonical program `A039643.P15310659880312822669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039643 (n : ℕ) : ℤ :=
  A039643.P15310659880312822669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039643.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A043505.P9579580581361236781

`eq[A064532(n)+1, A064692(n)]`
-/

namespace A043505.P9579580581361236781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043505.P9579580581361236781

noncomputable section

/-- A043505: Numbers having one 4 in base 10.

Offset 1, canonical program `A043505.P9579580581361236781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043505 (n : ℕ) : ℤ :=
  (A043505.P9579580581361236781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043505.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A045771.P7761879348311045879

`∑{d}[n+1, A035109(#-1)*A193356((n+1)/#)]`
-/

namespace A045771.P7761879348311045879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035109 (d - 1) * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045771.P7761879348311045879

noncomputable section

/-- A045771: Number of similar sublattices of index n^2 in root lattice D_4.

Offset 1, canonical program `A045771.P7761879348311045879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045771 (n : ℕ) : ℤ :=
  A045771.P7761879348311045879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046079.P18422331483105200768

`∑{d}[n+1, A024361(#)]`
-/

namespace A046079.P18422331483105200768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024361 d

end

end A046079.P18422331483105200768

noncomputable section

/-- A046079: Number of Pythagorean triangles with leg n.

Offset 1, canonical program `A046079.P18422331483105200768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046079 (n : ℕ) : ℤ :=
  A046079.P18422331483105200768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049815.P7841907269452352483

`∑[∑{d}[n+1, A332684(#)]+1]`
-/

namespace A049815.P7841907269452352483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A332684 d + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049815.P7841907269452352483

noncomputable section

/-- A049815: a(n) = Sum_{k=1..n} T(n,k), array T as in A049805.

Offset 1, canonical program `A049815.P7841907269452352483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 981 terms. -/
def A049815 (n : ℕ) : ℤ :=
  A049815.P7841907269452352483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 981 terms. -/
def A049815.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A050467.P9462411974454207442

`A050463(n+1)-A050468(n+1)`
-/

namespace A050467.P9462411974454207442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050463 (n + 1) - A050468 (n + 1)

end

end A050467.P9462411974454207442

noncomputable section

/-- A050467: a(n) = Sum_{d|n, n/d=3 mod 4} d^4.

Offset 1, canonical program `A050467.P9462411974454207442`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050463, A050468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050467 (n : ℕ) : ℤ :=
  A050467.P9462411974454207442.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050463, A050468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050467.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A051533.P6966278410585714434

`lt[0, A053603(n)]`
-/

namespace A051533.P6966278410585714434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051533.P6966278410585714434

noncomputable section

/-- A051533: Numbers that are the sum of two positive triangular numbers.

Offset 1, canonical program `A051533.P6966278410585714434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4788 terms. -/
def A051533 (n : ℕ) : ℤ :=
  (A051533.P6966278410585714434.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4788 terms. -/
def A051533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052344.P15195332241825076864

`ceil(A053603(n)/2)`
-/

namespace A052344.P15195332241825076864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053603 n : ℚ) / 2⌉

end

end A052344.P15195332241825076864

noncomputable section

/-- A052344: Number of ways to write n as the unordered sum of two nonzero triangular numbers.

Offset 0, canonical program `A052344.P15195332241825076864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052344 (n : ℕ) : ℤ :=
  A052344.P15195332241825076864.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052406.P11983566337862836048

`eq[A064532(n), A064692(n)]`
-/

namespace A052406.P11983566337862836048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052406.P11983566337862836048

noncomputable section

/-- A052406: Numbers without 4 as a digit.

Offset 1, canonical program `A052406.P11983566337862836048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052406 (n : ℕ) : ℤ :=
  (A052406.P11983566337862836048.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052406.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 2, canonical program `A056139.P2026426973506976792`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030664, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056139 (n : ℕ) : ℤ :=
  A056139.P2026426973506976792.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030664, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056139.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057661.P8562176095648835282

`(1+A057660(n+1))/2`
-/

namespace A057661.P8562176095648835282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A057660 (n + 1) : ℚ) / 2

end

end A057661.P8562176095648835282

noncomputable section

/-- A057661: a(n) = Sum_{k=1..n} lcm(n,k)/n.

Offset 1, canonical program `A057661.P8562176095648835282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057661 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057661.P8562176095648835282.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057661.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057922.P11387328956576665709

`eq[1, A361022(n+1)]+1`
-/

namespace A057922.P11387328956576665709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361022 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057922.P11387328956576665709

noncomputable section

/-- A057922: d(n) divides d(n+1), where d(n) is number of positive divisors of n.

Offset 0, canonical program `A057922.P11387328956576665709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057922 (n : ℕ) : ℤ :=
  (A057922.P11387328956576665709.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057922.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A058053.P2509255081695082303

`A097513(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A058053.P2509255081695082303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A097513 n + a (n - 3)

end

end A058053.P2509255081695082303

noncomputable section

/-- A058053: Number of 3-rowed binary matrices with n ones and no zero columns, up to row and column permutation.

Offset 0, canonical program `A058053.P2509255081695082303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A058053 (n : ℕ) : ℤ :=
  A058053.P2509255081695082303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A058053.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A060367.P9155873147261738328

`floor(A057660(n+1)/(n+1))`
-/

namespace A060367.P9155873147261738328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057660 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A060367.P9155873147261738328

noncomputable section

/-- A060367: Average order of an element in a cyclic group of order n rounded down.

Offset 1, canonical program `A060367.P9155873147261738328`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060367 (n : ℕ) : ℤ :=
  A060367.P9155873147261738328.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060367.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A063445.P5027649940616317829

`∑{d}[n+1, A007427(#)*A057660((n+1)/#)]`
-/

namespace A063445.P5027649940616317829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P5027649940616317829

noncomputable section

/-- A063445: Moebius transform of f(x) = EulerPhi(x^2) function (A002618).

Offset 1, canonical program `A063445.P5027649940616317829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063445 (n : ℕ) : ℤ :=
  A063445.P5027649940616317829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064062.P2466146061458098928

`A062992((n-1)%(n+1))`
-/

namespace A064062.P2466146061458098928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062992 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A064062.P2466146061458098928

noncomputable section

/-- A064062: Generalized Catalan numbers C(2; n).

Offset 0, canonical program `A064062.P2466146061458098928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A064062 (n : ℕ) : ℤ :=
  A064062.P2466146061458098928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A064062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064490.P14069633521972832065

`A003617(A000040(n+1))`
-/

namespace A064490.P14069633521972832065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A000040 (n + 1)).toNat

end

end A064490.P14069633521972832065

noncomputable section

/-- A064490: Smallest prime with prime(n) decimal digits.

Offset 1, canonical program `A064490.P14069633521972832065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A003617, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064490 (n : ℕ) : ℤ :=
  A064490.P14069633521972832065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A003617, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064490.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A064937.P11756979799408697284

`record[A191558((n+1)/A064830(n+1))]`
-/

namespace A064937.P11756979799408697284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A064830 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064937.P11756979799408697284

noncomputable section

/-- A064937: Nonprimes k such that gcd(k, prime(k)^2 - 1) is 1.

Offset 1, canonical program `A064937.P11756979799408697284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1425 terms. -/
def A064937 (n : ℕ) : ℤ :=
  A064937.P11756979799408697284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1425 terms. -/
def A064937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064951.P12585674823330249368

`a(n-1)+(n+1)*A057660(n+1)` with `a(0)=1`
-/

namespace A064951.P12585674823330249368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A057660 (n + 1)

end

end A064951.P12585674823330249368

noncomputable section

/-- A064951: a(n) = Sum_{1 <= x, y <= n} lcm(x, y).

Offset 1, canonical program `A064951.P12585674823330249368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064951 (n : ℕ) : ℤ :=
  A064951.P12585674823330249368.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064951.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A065364.P12653479554998272928

`∑[A009001(A163746(A047789(n)))]`
-/

namespace A065364.P12653479554998272928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A163746 (A047789 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065364.P12653479554998272928

noncomputable section

/-- A065364: Alternating sum of balanced ternary digits in n. Replace 3^k with (-1)^k in balanced ternary expansion of n.

Offset 1, canonical program `A065364.P12653479554998272928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. -/
def A065364 (n : ℕ) : ℤ :=
  A065364.P12653479554998272928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. -/
def A065364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065995.P2998673477376296587

`A000040(A014688(n+1))`
-/

namespace A065995.P2998673477376296587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014688 (n + 1)).toNat

end

end A065995.P2998673477376296587

noncomputable section

/-- A065995: a(n) = prime(prime(n) + n).

Offset 1, canonical program `A065995.P2998673477376296587`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A014688, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065995 (n : ℕ) : ℤ :=
  A065995.P2998673477376296587.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A014688, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065995.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066074.P14598573141439101236

`p?[A163871(n+1)]`
-/

namespace A066074.P14598573141439101236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066074.P14598573141439101236

noncomputable section

/-- A066074: Primes arising in A066073.

Offset 1, canonical program `A066074.P14598573141439101236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A066074 (n : ℕ) : ℤ :=
  A066074.P14598573141439101236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A066074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066253.P2942854054370966981

`A066249(A066249(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066253.P2942854054370966981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066249 (A066249 (n + 1)).toNat

end

end A066253.P2942854054370966981

noncomputable section

/-- A066253: a(n) = A066249(A066249(n)).

Offset 1, canonical program `A066253.P2942854054370966981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066253 (n : ℕ) : ℤ :=
  A066253.P2942854054370966981.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066253.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066255.P15448090258535731696

`A066251(A066251(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066255.P15448090258535731696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066251 (A066251 (n + 1)).toNat

end

end A066255.P15448090258535731696

noncomputable section

/-- A066255: a(n) = A066251(A066251(n)).

Offset 1, canonical program `A066255.P15448090258535731696`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066255 (n : ℕ) : ℤ :=
  A066255.P15448090258535731696.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067386.P7044445274366932039

`p?[A115165(n+1)]`
-/

namespace A067386.P7044445274366932039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067386.P7044445274366932039

noncomputable section

/-- A067386: Primes p such that p+1 and p-1 have the same number of distinct prime factors.

Offset 1, canonical program `A067386.P7044445274366932039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1810 terms. -/
def A067386 (n : ℕ) : ℤ :=
  A067386.P7044445274366932039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1810 terms. -/
def A067386.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A069588.P13160061826596831233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069588 (n : ℕ) : ℤ :=
  A069588.P13160061826596831233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070999.P10711028318610631314

`lt[1, gcd(n+1, A057660(n+1))]+1`
-/

namespace A070999.P10711028318610631314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A057660 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070999.P10711028318610631314

noncomputable section

/-- A070999: Numbers n such that the denominator of Sum_{k=1..n} 1/gcd(n,k) is not equal to n.

Offset 1, canonical program `A070999.P10711028318610631314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3287 terms. -/
def A070999 (n : ℕ) : ℤ :=
  (A070999.P10711028318610631314.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3287 terms. -/
def A070999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071684.P5183352824693304528

`A000108(n+1)-A071688(n+1)`
-/

namespace A071684.P5183352824693304528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A071688 (n + 1)

end

end A071684.P5183352824693304528

noncomputable section

/-- A071684: Number of plane trees with n edges and having an odd number of leaves.

Offset 1, canonical program `A071684.P5183352824693304528`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071688, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071684 (n : ℕ) : ℤ :=
  A071684.P5183352824693304528.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071688, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071745.P1552346463266665555

`A071719(n)+A071748(n)-A071722(n)`
-/

namespace A071745.P1552346463266665555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071719 n + (A071748 n - A071722 n)

end

end A071745.P1552346463266665555

noncomputable section

/-- A071745: Expansion of (1+x^4*C)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071745.P1552346463266665555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071745 (n : ℕ) : ℤ :=
  A071745.P1552346463266665555.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071745.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072864.P6592370251921593002

`lt[1, gcd(3, A035109(n))]+1`
-/

namespace A072864.P6592370251921593002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A035109 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A072864.P6592370251921593002

noncomputable section

/-- A072864: Numbers m such that the smallest k dividing sigma(k*m^2) is equal to 3.

Offset 1, canonical program `A072864.P6592370251921593002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5869 terms. -/
def A072864 (n : ℕ) : ℤ :=
  (A072864.P6592370251921593002.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5869 terms. -/
def A072864.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A073273.P7261420191492107144

`A098090(A028310(n))+A089038(n+1)`
-/

namespace A073273.P7261420191492107144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (A028310 n).toNat + A089038 (n + 1)

end

end A073273.P7261420191492107144

noncomputable section

/-- A073273: a(n) = floor(sqrt(prime(n)*prime(n+2))).

Offset 1, canonical program `A073273.P7261420191492107144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089038, A098090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073273 (n : ℕ) : ℤ :=
  A073273.P7261420191492107144.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089038, A098090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073273.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A074315.P17848923822781647351

`record[A000217(n+8)%A152989(n+8)]`
-/

namespace A074315.P17848923822781647351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 8)) (A152989 (n + 8))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074315.P17848923822781647351

noncomputable section

/-- A074315: Abundant triangular numbers.

Offset 1, canonical program `A074315.P17848923822781647351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4343 terms. -/
def A074315 (n : ℕ) : ℤ :=
  A074315.P17848923822781647351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4343 terms. -/
def A074315.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078268.P12910837297517375735

`(n+1)/A068822(n+1)`
-/

namespace A078268.P12910837297517375735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A068822 (n + 1) : ℚ)

end

end A078268.P12910837297517375735

noncomputable section

/-- A078268: Smallest integer which is an integer multiple of the number N obtained by placing the string "n" after a decimal point.

Offset 1, canonical program `A078268.P12910837297517375735`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078268 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078268.P12910837297517375735.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078268.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A079460.P9773607769593027518

`∑[or(∑[2^(n+1)], A193291(n+1))]`
-/

namespace A079460.P9773607769593027518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A193291 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079460.P9773607769593027518

noncomputable section

/-- A079460: Let r(n) be the real positive root of Sum_{k=1..n} x^k = 1, then a(n) = round(1/(r(n) - 1/2)).

Offset 1, canonical program `A079460.P9773607769593027518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A079460 (n : ℕ) : ℤ :=
  A079460.P9773607769593027518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A079460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079740.P6037499891495547414

`p?[A004431(n+1)+2]`
-/

namespace A079740.P6037499891495547414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079740.P6037499891495547414

noncomputable section

/-- A079740: Primes of the form x^2 + y^2 + 2 (x,y positive).

Offset 1, canonical program `A079740.P6037499891495547414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 838 terms. -/
def A079740 (n : ℕ) : ℤ :=
  A079740.P6037499891495547414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 838 terms. -/
def A079740.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A082510.P15430433622704550580

`filter[A082509(n+1), A079978(#)]`
-/

namespace A082510.P15430433622704550580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A082510.P15430433622704550580

noncomputable section

/-- A082510: Differences of consecutive primes being divisible by 6 in order of their appearance in A001223: terms not divisible by 6 are omitted from A001223.

Offset 1, canonical program `A082510.P15430433622704550580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6326 terms. -/
def A082510 (n : ℕ) : ℤ :=
  A082510.P15430433622704550580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6326 terms. -/
def A082510.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A083356.P17116603988832538437

`A060872(n)+a(n-1)` with `a(0)=0`
-/

namespace A083356.P17116603988832538437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A060872 n + a (n - 1)

end

end A083356.P17116603988832538437

noncomputable section

/-- A083356: Total area of all incongruent integer-sided rectangles of area <= n.

Offset 0, canonical program `A083356.P17116603988832538437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083356 (n : ℕ) : ℤ :=
  A083356.P17116603988832538437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083356.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A086148.P694323764726545804

`A057660(n+1)+2*(n+1)`
-/

namespace A086148.P694323764726545804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 (n + 1) + (2 * (n + 1) : ℤ)

end

end A086148.P694323764726545804

noncomputable section

/-- A086148: Sum of the orders of the elements in the dihedral group D_2n.

Offset 1, canonical program `A086148.P694323764726545804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086148 (n : ℕ) : ℤ :=
  A086148.P694323764726545804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086148.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A088758.P8129966983555977646

`eq[2, A160651(A016813(n))]`
-/

namespace A088758.P8129966983555977646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 (A016813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088758.P8129966983555977646

noncomputable section

/-- A088758: Numbers k such that (4*k + 1)^2 + (4*k + 2)^2 is prime.

Offset 1, canonical program `A088758.P8129966983555977646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. -/
def A088758 (n : ℕ) : ℤ :=
  (A088758.P8129966983555977646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. -/
def A088758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088899.P5292124785369287953

`2*A105673(A050873(n+1)²)`
-/

namespace A088899.P5292124785369287953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105673 (A050873 (n + 1) ^ 2).toNat

end

end A088899.P5292124785369287953

noncomputable section

/-- A088899: T(n, k) = number of ordered pairs of integers (x,y) with x^2/n^2 + y^2/k^2 = 1, 1 <= k <= n; triangular array, read by rows.

Offset 1, canonical program `A088899.P5292124785369287953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A088899 (n : ℕ) : ℤ :=
  A088899.P5292124785369287953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A088899.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A089306.P13013484817223251864

`A061397(A191558(n+1)+n+3-C(2, ∑{e}[n+1, #])!)`
-/

namespace A089306.P13013484817223251864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A191558 (n + 1) + ((n + 3 : ℤ) - (Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ))).toNat

end

end A089306.P13013484817223251864

noncomputable section

/-- A089306: Smallest prime of the form n + (n+1)+ (n+2)+...+(n+k), or 0 if no such prime exists.

Offset 1, canonical program `A089306.P13013484817223251864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A089306 (n : ℕ) : ℤ :=
  A089306.P13013484817223251864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A089306.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A093518.P1184938026992592708

`ceil(A002175(n)/2)`
-/

namespace A093518.P1184938026992592708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002175 n : ℚ) / 2⌉

end

end A093518.P1184938026992592708

noncomputable section

/-- A093518: Number of ways of representing n as the sum of two (not necessarily distinct) generalized pentagonal numbers.

Offset 0, canonical program `A093518.P1184938026992592708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093518 (n : ℕ) : ℤ :=
  A093518.P1184938026992592708.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093519.P639672327746029394

`eq[0, A002175(n)]`
-/

namespace A093519.P639672327746029394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002175 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093519.P639672327746029394

noncomputable section

/-- A093519: Numbers with no representation as the sum of two (not necessarily distinct) generalized pentagonal numbers.

Offset 1, canonical program `A093519.P639672327746029394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3971 terms. -/
def A093519 (n : ℕ) : ℤ :=
  (A093519.P639672327746029394.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3971 terms. -/
def A093519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094178.P10442744756588594346

`floor(A008846(n+1)/4)`
-/

namespace A094178.P10442744756588594346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008846 (n + 1) : ℚ) / 4⌋

end

end A094178.P10442744756588594346

noncomputable section

/-- A094178: Numbers n such that 4n+1 is divisible only by primes of form 4m+1 (i.e., by the Pythagorean primes A002144).

Offset 1, canonical program `A094178.P10442744756588594346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094178 (n : ℕ) : ℤ :=
  A094178.P10442744756588594346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094247.P8277394697734993563

`(-1)^n*A053694(n)`
-/

namespace A094247.P8277394697734993563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A053694 n

end

end A094247.P8277394697734993563

noncomputable section

/-- A094247: Expansion of (phi(-q^5)^2 - phi(-q)^2) / 4 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A094247.P8277394697734993563`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053694, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094247 (n : ℕ) : ℤ :=
  A094247.P8277394697734993563.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053694, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095738.P13403971810010986481

`eq[1, A355816(n+1)]+1`
-/

namespace A095738.P13403971810010986481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095738.P13403971810010986481

noncomputable section

/-- A095738: Numbers that are coprime to sigma but are not prime powers.

Offset 1, canonical program `A095738.P13403971810010986481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095738 (n : ℕ) : ℤ :=
  (A095738.P13403971810010986481.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095738.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A096490.P8790020191321555782

`lt[A000217(n), A067558(n+1)]+1`
-/

namespace A096490.P8790020191321555782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A096490.P8790020191321555782

noncomputable section

/-- A096490: Numbers k such that sigma_2(k) >= (3/2) * k^2, where sigma_2(k) is the sum of the squares of the divisors of k.

Offset 1, canonical program `A096490.P8790020191321555782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A096490 (n : ℕ) : ℤ :=
  (A096490.P8790020191321555782.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A096490.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A101203.P14556017355783921895

`A191558(n)+a(n-1)` with `a(0)=0`
-/

namespace A101203.P14556017355783921895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A191558 n + a (n - 1)

end

end A101203.P14556017355783921895

noncomputable section

/-- A101203: a(n) = sum of nonprimes <= n.

Offset 0, canonical program `A101203.P14556017355783921895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101203 (n : ℕ) : ℤ :=
  A101203.P14556017355783921895.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101324.P581730034148578791

`p?[A078782(n+2)+1]`
-/

namespace A101324.P581730034148578791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078782 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101324.P581730034148578791

noncomputable section

/-- A101324: Primes p such that p+1=C(q)=q-th composite and q is prime.

Offset 1, canonical program `A101324.P581730034148578791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101324 (n : ℕ) : ℤ :=
  A101324.P581730034148578791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103612.P10543445186733692250

`A001876(A104768(n))`
-/

namespace A103612.P10543445186733692250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A104768 n).toNat

end

end A103612.P10543445186733692250

noncomputable section

/-- A103612: Number of solutions to 5+B^2=p^2+q^2 with B=2n, p,q>0 and 2p^2

Offset 0, canonical program `A103612.P10543445186733692250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A103612 (n : ℕ) : ℤ :=
  A103612.P10543445186733692250.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A103612.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107294.P2899559741915195423

`gcd(A014688(n+1), A062357(n+1))`
-/

namespace A107294.P2899559741915195423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014688 (n + 1)) (A062357 (n + 1))

end

end A107294.P2899559741915195423

noncomputable section

/-- A107294: GCD of (n + prime(n)) and (n + 1 + prime(n+1)).

Offset 1, canonical program `A107294.P2899559741915195423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107294 (n : ℕ) : ℤ :=
  (A107294.P2899559741915195423.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107294.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107695.P2417400497827237596

`∩[A034056(n+1), A245382(n+1)]`
-/

namespace A107695.P2417400497827237596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107695.P2417400497827237596

noncomputable section

/-- A107695: Primes with digital product = 9.

Offset 1, canonical program `A107695.P2417400497827237596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A107695 (n : ℕ) : ℤ :=
  (A107695.P2417400497827237596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A107695.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107965.P6077412395707171614

`A107916(n)+A107941(n)-A107942(n)`
-/

namespace A107965.P6077412395707171614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107916 n + (A107941 n - A107942 n)

end

end A107965.P6077412395707171614

noncomputable section

/-- A107965: a(n) = (n+1)(n+2)^2*(n+3)^2*(n+4)(11n^4 + 110n^3 + 439n^2 + 820n + 600)/86400.

Offset 0, canonical program `A107965.P6077412395707171614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107965 (n : ℕ) : ℤ :=
  A107965.P6077412395707171614.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107965.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A112352.P14257770990694265222

`A000217(lt[3, A160651(n)])`
-/

namespace A112352.P14257770990694265222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A112352.P14257770990694265222

noncomputable section

/-- A112352: Triangular numbers that are the sum of two distinct positive triangular numbers.

Offset 1, canonical program `A112352.P14257770990694265222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112352 (n : ℕ) : ℤ :=
  A112352.P14257770990694265222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112352.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115194.P5467570277448193639

`A003645(n+1)-A062992(n+1)`
-/

namespace A115194.P5467570277448193639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003645 (n + 1) - A062992 (n + 1)

end

end A115194.P5467570277448193639

noncomputable section

/-- A115194: A sequence related to A000108 (Catalan numbers).

Offset 0, canonical program `A115194.P5467570277448193639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A115194 (n : ℕ) : ℤ :=
  A115194.P5467570277448193639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A115194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116477.P12942895265531619218

`∑{d}[n+1, A332684(#)]`
-/

namespace A116477.P12942895265531619218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A332684 d

end

end A116477.P12942895265531619218

noncomputable section

/-- A116477: a(n) = Sum_{1<=k<=n, gcd(k,n)=1} floor(n/k).

Offset 1, canonical program `A116477.P12942895265531619218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116477 (n : ℕ) : ℤ :=
  A116477.P12942895265531619218.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116623.P4799794857559479492

`A116640(A145342(n+1)-1)`
-/

namespace A116623.P4799794857559479492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116640 (A145342 (n + 1) - 1).toNat

end

end A116623.P4799794857559479492

noncomputable section

/-- A116623: a(0)=1, a(2n) = a(n)+A000079(A000523(2n)), a(2n+1) = 3*a(n) + A000079(A000523(2n+1)+1).

Offset 0, canonical program `A116623.P4799794857559479492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A116623 (n : ℕ) : ℤ :=
  A116623.P4799794857559479492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A116623.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A120960.P7319328844607267652

`filter[A008846(n+1), A069513(#)]`
-/

namespace A120960.P7319328844607267652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A120960.P7319328844607267652

noncomputable section

/-- A120960: Pythagorean prime powers.

Offset 1, canonical program `A120960.P7319328844607267652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A120960 (n : ℕ) : ℤ :=
  A120960.P7319328844607267652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A120960.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A125018.P5997483759388454450

`∩[2*n+1, A143575(n+1)]`
-/

namespace A125018.P5997483759388454450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125018.P5997483759388454450

noncomputable section

/-- A125018: Numbers == 1 (mod 4) with a unique partition as a sum of 2 squares x^2 + y^2.

Offset 1, canonical program `A125018.P5997483759388454450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4618 terms. -/
def A125018 (n : ℕ) : ℤ :=
  (A125018.P5997483759388454450.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4618 terms. -/
def A125018.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A001983.P13824621778224513815

`∪[(n+1)², A004431(n+1)]`
-/

namespace A001983.P13824621778224513815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001983.P13824621778224513815

noncomputable section

/-- A001983: Numbers that are the sum of 2 distinct squares: of form x^2 + y^2 with 0 <= x < y.

Offset 1, canonical program `A001983.P13824621778224513815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001983 (n : ℕ) : ℤ :=
  (A001983.P13824621778224513815.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001983.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A003624.P11850390878674121676

`filter[A014567(n+1), A066247(#)]`
-/

namespace A003624.P11850390878674121676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A003624.P11850390878674121676

noncomputable section

/-- A003624: Duffinian numbers: composite numbers k relatively prime to sigma(k).

Offset 1, canonical program `A003624.P11850390878674121676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6885 terms. -/
def A003624 (n : ℕ) : ℤ :=
  A003624.P11850390878674121676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6885 terms. -/
def A003624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004613.P9700504550633713822

`A008846(C(n, a(A057427(n)-1)))` with `a(0)=1`
-/

namespace A004613.P9700504550633713822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008846 (Nat.choose n (a (A057427 n - 1).toNat).toNat)

end

end A004613.P9700504550633713822

noncomputable section

/-- A004613: Numbers that are divisible only by primes congruent to 1 mod 4.

Offset 1, canonical program `A004613.P9700504550633713822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004613 (n : ℕ) : ℤ :=
  A004613.P9700504550633713822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005353.P13530675845642685918

`(n+1)^4-A020478(n+1)`
-/

namespace A005353.P13530675845642685918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A020478 (n + 1)

end

end A005353.P13530675845642685918

noncomputable section

/-- A005353: Number of 2 X 2 matrices with entries mod n and nonzero determinant.

Offset 1, canonical program `A005353.P13530675845642685918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005353 (n : ℕ) : ℤ :=
  A005353.P13530675845642685918.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005353.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A015634.P4293513486807038876

`∑[A117108(n+1)]`
-/

namespace A015634.P4293513486807038876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015634.P4293513486807038876

noncomputable section

/-- A015634: Number of ordered quadruples of integers from [ 1..n ] with no global factor.

Offset 1, canonical program `A015634.P4293513486807038876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015634 (n : ℕ) : ℤ :=
  A015634.P4293513486807038876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020887.P8491908464742690034

`2*A020888(n+1)`
-/

namespace A020887.P8491908464742690034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020888 (n + 1)

end

end A020887.P8491908464742690034

noncomputable section

/-- A020887: Ordered set of a + b - c as (a,b,c) runs through all primitive Pythagorean triples with a

Offset 1, canonical program `A020887.P8491908464742690034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020887 (n : ℕ) : ℤ :=
  A020887.P8491908464742690034.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026019.P15282999811891671450

`A262717(n+1)+A174687(n)`
-/

namespace A026019.P15282999811891671450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262717 (n + 1) + A174687 n

end

end A026019.P15282999811891671450

noncomputable section

/-- A026019: a(n) = binomial(3*n,n) - binomial(3*n,n-3).

Offset 0, canonical program `A026019.P15282999811891671450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A026019 (n : ℕ) : ℤ :=
  A026019.P15282999811891671450.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A026019.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A030661.P3495447614067155114

`A151800(n+1)*A101300(n+1)`
-/

namespace A030661.P3495447614067155114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) * A101300 (n + 1)

end

end A030661.P3495447614067155114

noncomputable section

/-- A030661: Product of next 2 primes after n.

Offset 1, canonical program `A030661.P3495447614067155114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101300, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A030661 (n : ℕ) : ℤ :=
  A030661.P3495447614067155114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101300, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A030661.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034678.P2173923683494407018

`∑{d}[n+1, A065827(#)*A334657((n+1)/#)]`
-/

namespace A034678.P2173923683494407018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065827 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034678.P2173923683494407018

noncomputable section

/-- A034678: Sum of fourth powers of unitary divisors.

Offset 1, canonical program `A034678.P2173923683494407018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034678 (n : ℕ) : ℤ :=
  A034678.P2173923683494407018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035165.P18414371456217248996

`Δ[A005187(n)]*A053694(n)`
-/

namespace A035165.P18414371456217248996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A053694 n

end

end A035165.P18414371456217248996

noncomputable section

/-- A035165: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -25.

Offset 1, canonical program `A035165.P18414371456217248996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035165 (n : ℕ) : ℤ :=
  A035165.P18414371456217248996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035165.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A039637.P13487055312355376623

`a(floor(n/2))%A067558(n+1)+1` with `a(0)=1, a(1)=1`
-/

namespace A039637.P13487055312355376623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (a ⌊(n : ℚ) / 2⌋.toNat) (A067558 (n + 1)) + 1

end

end A039637.P13487055312355376623

noncomputable section

/-- A039637: Number of steps to fixed point of "n -> n/2 or (n+1)/2 until result is prime".

Offset 1, canonical program `A039637.P13487055312355376623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039637 (n : ℕ) : ℤ :=
  A039637.P13487055312355376623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039637.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A046684.P10571284585019546125

`eq[1, A179930(n+1)]+1`
-/

namespace A046684.P10571284585019546125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179930 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046684.P10571284585019546125

noncomputable section

/-- A046684: Numbers k such that k and sum of squares of divisors of k are relatively prime.

Offset 1, canonical program `A046684.P10571284585019546125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6671 terms. -/
def A046684 (n : ℕ) : ℤ :=
  (A046684.P10571284585019546125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6671 terms. -/
def A046684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046799.P14243968354502214682

`A322812(2*A000040(n+1))`
-/

namespace A046799.P14243968354502214682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322812 (2 * A000040 (n + 1)).toNat

end

end A046799.P14243968354502214682

noncomputable section

/-- A046799: Number of distinct prime factors of 2^n+1.

Offset 0, canonical program `A046799.P14243968354502214682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A046799 (n : ℕ) : ℤ :=
  A046799.P14243968354502214682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A046799.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A057811.P15232790486680947768

`a(n-1)+A096500(a(n-1))+1` with `a(0)=1`
-/

namespace A057811.P15232790486680947768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A096500 (a (n - 1)).toNat + 1)

end

end A057811.P15232790486680947768

noncomputable section

/-- A057811: Numbers k such that pi(k) is even.

Offset 1, canonical program `A057811.P15232790486680947768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057811 (n : ℕ) : ℤ :=
  A057811.P15232790486680947768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057812.P4262350410008531703

`a(n-1)+A096500(a(n-1))+1` with `a(0)=2`
-/

namespace A057812.P4262350410008531703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A096500 (a (n - 1)).toNat + 1)

end

end A057812.P4262350410008531703

noncomputable section

/-- A057812: Numbers k such that pi(k) is odd.

Offset 1, canonical program `A057812.P4262350410008531703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057812 (n : ℕ) : ℤ :=
  A057812.P4262350410008531703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057812.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A060265.P16861797515286908946

`2*(n+2)-A049653(n+2)`
-/

namespace A060265.P16861797515286908946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A049653 (n + 2)

end

end A060265.P16861797515286908946

noncomputable section

/-- A060265: Largest prime less than 2n.

Offset 2, canonical program `A060265.P16861797515286908946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060265 (n : ℕ) : ℤ :=
  A060265.P16861797515286908946.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060265.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A064971.P12456317125098901049

`∑{d}[n+1, A053825(#)*A379812((n+1)/#)]`
-/

namespace A064971.P12456317125098901049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053825 d * A379812 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064971.P12456317125098901049

noncomputable section

/-- A064971: a(n) = n*usigma(n), where usigma(n) is the sum of unitary divisors of n (A034448).

Offset 1, canonical program `A064971.P12456317125098901049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064971 (n : ℕ) : ℤ :=
  A064971.P12456317125098901049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064971.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A067390.P7852969546694532174

`A322812(A138636(n+2))`
-/

namespace A067390.P7852969546694532174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322812 (A138636 (n + 2)).toNat

end

end A067390.P7852969546694532174

noncomputable section

/-- A067390: Number of distinct prime factors in 2^n + 3.

Offset 1, canonical program `A067390.P7852969546694532174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A067390 (n : ℕ) : ℤ :=
  A067390.P7852969546694532174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A067390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067459.P11641626775103324224

`A072516((n+1)²)`
-/

namespace A067459.P11641626775103324224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072516 ((n + 1) ^ 2)

end

end A067459.P11641626775103324224

noncomputable section

/-- A067459: Sum of the remainders when n^2 is divided by squares less than n.

Offset 1, canonical program `A067459.P11641626775103324224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067459 (n : ℕ) : ℤ :=
  A067459.P11641626775103324224.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069734.P4700367911549090281

`(A000203(n+1)+A069735(n+1))/2`
-/

namespace A069734.P4700367911549090281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + A069735 (n + 1) : ℚ) / 2

end

end A069734.P4700367911549090281

noncomputable section

/-- A069734: Number of pairs (p,q), 0<=p<=q, such that p+q divides n.

Offset 1, canonical program `A069734.P4700367911549090281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069735, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069734 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069734.P4700367911549090281.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069735, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069734.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069879.P15875305375985047542

`2*A071917(n+1)`
-/

namespace A069879.P15875305375985047542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071917 (n + 1)

end

end A069879.P15875305375985047542

noncomputable section

/-- A069879: Number of pairs {i,j} with i different from j; 1<=i<=n; 1<= j <=n such that i+j is a prime number.

Offset 1, canonical program `A069879.P15875305375985047542`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069879 (n : ℕ) : ℤ :=
  A069879.P15875305375985047542.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069879.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071680.P13360749277261399360

`A000040(eq[1, A087032(A000040(n+1))]+2)`
-/

namespace A071680.P13360749277261399360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087032 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A071680.P13360749277261399360

noncomputable section

/-- A071680: Primes that are the arithmetic mean of their prime predecessor and another prime.

Offset 1, canonical program `A071680.P13360749277261399360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A071680 (n : ℕ) : ℤ :=
  A071680.P13360749277261399360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A071680.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A077150.P1728988973550887610

`A307912(n+1)-A016035(n+1)`
-/

namespace A077150.P1728988973550887610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307912 (n + 1) - A016035 (n + 1)

end

end A077150.P1728988973550887610

noncomputable section

/-- A077150: Number of composite numbers between n and 2n that are coprime to n.

Offset 1, canonical program `A077150.P1728988973550887610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077150 (n : ℕ) : ℤ :=
  A077150.P1728988973550887610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077150.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A085683.P13122087082313265397

`∑[A139140(n)]-1`
-/

namespace A085683.P13122087082313265397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A085683.P13122087082313265397

noncomputable section

/-- A085683: a(n) = Sum_{k = 1..N-1} floor(N/k) where N is the n-th prime.

Offset 1, canonical program `A085683.P13122087082313265397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085683 (n : ℕ) : ℤ :=
  A085683.P13122087082313265397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087031.P17529191149633832265

`record[(n+1)*A087032(n+1)]`
-/

namespace A087031.P17529191149633832265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A087032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087031.P17529191149633832265

noncomputable section

/-- A087031: Numbers n such that 2p-n is prime, p is the smallest prime > n.

Offset 1, canonical program `A087031.P17529191149633832265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8203 terms. -/
def A087031 (n : ℕ) : ℤ :=
  A087031.P17529191149633832265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8203 terms. -/
def A087031.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A109352.P15990870574483409187

`A001414(A120944(n+1))`
-/

namespace A109352.P15990870574483409187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A120944 (n + 1)).toNat

end

end A109352.P15990870574483409187

noncomputable section

/-- A109352: a(n) = sum of the prime divisors of the n-th squarefree composite number.

Offset 1, canonical program `A109352.P15990870574483409187`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109352 (n : ℕ) : ℤ :=
  A109352.P15990870574483409187.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109352.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A014200.P16970295702573526038

`A014198(n)/4`
-/

namespace A014200.P16970295702573526038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014198 n : ℚ) / 4

end

end A014200.P16970295702573526038

noncomputable section

/-- A014200: Number of solutions to x^2 + y^2 <= n, excluding (0,0), divided by 4.

Offset 0, canonical program `A014200.P16970295702573526038`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014200 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014200.P16970295702573526038.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014200.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027375.P1624201345270917595

`2*∑{d}[n, A296302(#)]`
-/

namespace A027375.P1624201345270917595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A296302 d)

end

end A027375.P1624201345270917595

noncomputable section

/-- A027375: Number of aperiodic binary strings of length n; also number of binary sequences with primitive period n.

Offset 0, canonical program `A027375.P1624201345270917595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A027375 (n : ℕ) : ℤ :=
  A027375.P1624201345270917595.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A027375.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049735.P11014116182128311046

`A014198(A048147(n))+1`
-/

namespace A049735.P11014116182128311046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (A048147 n).toNat + 1

end

end A049735.P11014116182128311046

noncomputable section

/-- A049735: Array T(i,j) is the number of lattice points (x,y) in circle with radius (0,0)-to-(i,j), read by antidiagonals.

Offset 0, canonical program `A049735.P11014116182128311046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A049735 (n : ℕ) : ℤ :=
  A049735.P11014116182128311046.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A049735.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A056140.P5331885712081055835

`A000290(n+3)-A013638(n+3)`
-/

namespace A056140.P5331885712081055835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 3) - A013638 (n + 3)

end

end A056140.P5331885712081055835

noncomputable section

/-- A056140: a(n) = n^2 - previousprime(n)*nextprime(n), for n>2.

Offset 3, canonical program `A056140.P5331885712081055835`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013638, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056140 (n : ℕ) : ℤ :=
  A056140.P5331885712081055835.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013638, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056140.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056929.P6975652131116657014

`A000290(n+2)-A056928(n+2)`
-/

namespace A056929.P6975652131116657014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 2) - A056928 (n + 2)

end

end A056929.P6975652131116657014

noncomputable section

/-- A056929: Difference between n^2 and average of smallest prime greater than n^2 and largest prime less than n^2.

Offset 2, canonical program `A056929.P6975652131116657014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056929 (n : ℕ) : ℤ :=
  A056929.P6975652131116657014.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056931.P7289546216197052146

`A002378(n+2)-A056930(n+2)`
-/

namespace A056931.P7289546216197052146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 2) - A056930 (n + 2)

end

end A056931.P7289546216197052146

noncomputable section

/-- A056931: Difference between n-th oblong (promic) number, n(n+1), and the average of the smallest prime greater than n^2 and the largest prime less than (n+1)^2.

Offset 2, canonical program `A056931.P7289546216197052146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056931 (n : ℕ) : ℤ :=
  A056931.P7289546216197052146.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057655.P8142405424443184292

`A014198(n)+1`
-/

namespace A057655.P8142405424443184292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 n + 1

end

end A057655.P8142405424443184292

noncomputable section

/-- A057655: The circle problem: number of points (x,y) in square lattice with x^2 + y^2 <= n.

Offset 0, canonical program `A057655.P8142405424443184292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057655 (n : ℕ) : ℤ :=
  A057655.P8142405424443184292.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058043.P5464834808699039528

`2*(A056928(n+2)-A053001(n+2))`
-/

namespace A058043.P5464834808699039528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056928 (n + 2) - A053001 (n + 2))

end

end A058043.P5464834808699039528

noncomputable section

/-- A058043: a(n) = nextprime(n^2) - prevprime(n^2).

Offset 2, canonical program `A058043.P5464834808699039528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058043 (n : ℕ) : ℤ :=
  A058043.P5464834808699039528.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058043.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A062773.P16388033772693534914

`A000720(A062772(n+1))`
-/

namespace A062773.P16388033772693534914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A062772 (n + 1)).toNat

end

end A062773.P16388033772693534914

noncomputable section

/-- A062773: Index of the smallest prime which follows square of n-th prime.

Offset 1, canonical program `A062773.P16388033772693534914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A062772, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062773 (n : ℕ) : ℤ :=
  A062773.P16388033772693534914.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A062772, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062773.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A066197.P11231834716890673726

`A007947(A033286(n+1)*A014688(n+1))`
-/

namespace A066197.P11231834716890673726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A033286 (n + 1) * A014688 (n + 1)).toNat

end

end A066197.P11231834716890673726

noncomputable section

/-- A066197: Squarefree kernel of (n*prime(n))*(n+prime(n)).

Offset 1, canonical program `A066197.P11231834716890673726`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A014688, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066197 (n : ℕ) : ℤ :=
  A066197.P11231834716890673726.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A014688, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066197.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071329.P5834183981238197590

`A000040(A000720(A014688(n+1)))`
-/

namespace A071329.P5834183981238197590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A014688 (n + 1)).toNat).toNat

end

end A071329.P5834183981238197590

noncomputable section

/-- A071329: Largest prime q such that q - prime(n) <= n.

Offset 1, canonical program `A071329.P5834183981238197590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A071329 (n : ℕ) : ℤ :=
  A071329.P5834183981238197590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A071329.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A079090.P7688684910206676053

`A008472(A079079(n+1))`
-/

namespace A079090.P7688684910206676053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A079079 (n + 1)).toNat

end

end A079090.P7688684910206676053

noncomputable section

/-- A079090: Sum of distinct prime factors of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079090.P7688684910206676053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079090 (n : ℕ) : ℤ :=
  A079090.P7688684910206676053.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079093.P18049403196778155305

`A007947(A079079(n+1))`
-/

namespace A079093.P18049403196778155305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A079079 (n + 1)).toNat

end

end A079093.P18049403196778155305

noncomputable section

/-- A079093: Squarefree kernel of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079093.P18049403196778155305`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079093 (n : ℕ) : ℤ :=
  A079093.P18049403196778155305.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A079079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079458.P11569741083462391680

`A096445(n+1)*A140434(n+1)`
-/

namespace A079458.P11569741083462391680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096445 (n + 1) * A140434 (n + 1)

end

end A079458.P11569741083462391680

noncomputable section

/-- A079458: Number of Gaussian integers in a reduced system modulo n.

Offset 1, canonical program `A079458.P11569741083462391680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7000 terms. -/
def A079458 (n : ℕ) : ℤ :=
  A079458.P11569741083462391680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7000 terms. -/
def A079458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080401.P8518956413726012276

`lt[n², A080399(n+1)]+1`
-/

namespace A080401.P8518956413726012276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080401.P8518956413726012276

noncomputable section

/-- A080401: Numbers k such that the sum of the squares of the divisors of k (A001157(k)) is squarefree.

Offset 1, canonical program `A080401.P8518956413726012276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A080401 (n : ℕ) : ℤ :=
  (A080401.P8518956413726012276.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A080401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080402.P17243358011621989898

`lt[A080399(n+1), n²]+1`
-/

namespace A080402.P17243358011621989898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080399 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080402.P17243358011621989898

noncomputable section

/-- A080402: Numbers k such that the sum of the squares of the divisors of k (A001157(k)) is not squarefree.

Offset 1, canonical program `A080402.P17243358011621989898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7567 terms. -/
def A080402 (n : ℕ) : ℤ :=
  (A080402.P17243358011621989898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7567 terms. -/
def A080402.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A085412.P5357625299025834806

`A000720(A085413(n+1))`
-/

namespace A085412.P5357625299025834806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A085413 (n + 1)).toNat

end

end A085412.P5357625299025834806

noncomputable section

/-- A085412: Numbers n such that concatenation of prime[n] and first digit of prime[n] is prime.

Offset 1, canonical program `A085412.P5357625299025834806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A085412 (n : ℕ) : ℤ :=
  A085412.P5357625299025834806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A085412.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A091871.P8902696831286629578

`A049084(A091633(n+1))`
-/

namespace A091871.P8902696831286629578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A091633 (n + 1)).toNat

end

end A091871.P8902696831286629578

noncomputable section

/-- A091871: A091633 indexed by A000040.

Offset 1, canonical program `A091871.P8902696831286629578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049084, A091633, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A091871 (n : ℕ) : ℤ :=
  A091871.P8902696831286629578.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049084, A091633, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A091871.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A116568.P1270163907824059920

`n+1-abs(A097454(n+1))`
-/

namespace A116568.P1270163907824059920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - |A097454 (n + 1)|

end

end A116568.P1270163907824059920

noncomputable section

/-- A116568: Difference between n and the absolute value of the difference between number of nonprimes not exceeding n and number of primes not exceeding n.

Offset 1, canonical program `A116568.P1270163907824059920`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097454, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116568 (n : ℕ) : ℤ :=
  A116568.P1270163907824059920.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097454, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116568.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A003051.P6848603489716177678

`(A000203(n+1)+2*A002324(n+1)+3*A145390(n+1))/6`
-/

namespace A003051.P6848603489716177678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + 2 * A002324 (n + 1) + 3 * A145390 (n + 1) : ℚ) / 6

end

end A003051.P6848603489716177678

noncomputable section

/-- A003051: Number of inequivalent sublattices of index n in hexagonal lattice, where two sublattices are equivalent if they are related by a rotation or reflection preserving the hexagonal lattice.

Offset 1, canonical program `A003051.P6848603489716177678`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, A145390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A003051 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003051.P6848603489716177678.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, A145390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A003051.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A006579.P17134374714227435969

`A018804(n+1)-(n+1)`
-/

namespace A006579.P17134374714227435969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - (n + 1 : ℤ)

end

end A006579.P17134374714227435969

noncomputable section

/-- A006579: a(n) = Sum_{k=1..n-1} gcd(n,k).

Offset 1, canonical program `A006579.P17134374714227435969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006579 (n : ℕ) : ℤ :=
  A006579.P17134374714227435969.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006579.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022297.P13831019223360445474

`A057428(n)+A013947(n+1)`
-/

namespace A022297.P13831019223360445474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A013947 (n + 1)

end

end A022297.P13831019223360445474

noncomputable section

/-- A022297: Index of n-th 1 in A006928.

Offset 1, canonical program `A022297.P13831019223360445474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022297 (n : ℕ) : ℤ :=
  A022297.P13831019223360445474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023589.P227061569363582977

`∑{e}[A072058(n+1), #]`
-/

namespace A023589.P227061569363582977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072058 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023589.P227061569363582977

noncomputable section

/-- A023589: a(n) is the number of distinct prime divisors of 2*prime(n)+1.

Offset 1, canonical program `A023589.P227061569363582977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023589 (n : ℕ) : ℤ :=
  (A023589.P227061569363582977.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023589.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026238.P11188609804940951369

`A049084(n+2)+A066246(n+2)`
-/

namespace A026238.P11188609804940951369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 2) + A066246 (n + 2)

end

end A026238.P11188609804940951369

noncomputable section

/-- A026238: a(n) = j if n is the j-th prime, else a(n) = k if n is the k-th composite.

Offset 2, canonical program `A026238.P11188609804940951369`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049084, A066246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A026238 (n : ℕ) : ℤ :=
  A026238.P11188609804940951369.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049084, A066246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A026238.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A047679.P9593727126234668791

`A002487(1+A059893(n+1))`
-/

namespace A047679.P9593727126234668791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A059893 (n + 1)).toNat

end

end A047679.P9593727126234668791

noncomputable section

/-- A047679: Denominators in full Stern-Brocot tree.

Offset 0, canonical program `A047679.P9593727126234668791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A047679 (n : ℕ) : ℤ :=
  A047679.P9593727126234668791.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A047679.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049776.P14768317238781565942

`A030109(eq[n+1, A059893(n+1)]+1)+1`
-/

namespace A049776.P14768317238781565942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A049776.P14768317238781565942

noncomputable section

/-- A049776: Triangular array T read by rows: n-th row consists of fixed points, k, of n-th row of array t given by A049773; i.e., t(n, t(n,k)) = t(n,k).

Offset 1, canonical program `A049776.P14768317238781565942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A049776 (n : ℕ) : ℤ :=
  A049776.P14768317238781565942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A049776.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A052106.P7071652729131611480

`lcm(n+1, A051953(n+1))`
-/

namespace A052106.P7071652729131611480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A051953 (n + 1))

end

end A052106.P7071652729131611480

noncomputable section

/-- A052106: a(n) = lcm(n, n - phi(n)).

Offset 1, canonical program `A052106.P7071652729131611480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052106 (n : ℕ) : ℤ :=
  (A052106.P7071652729131611480.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052106.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053158.P12394903761097819487

`n+1+A051953(n+1)`
-/

namespace A053158.P12394903761097819487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A051953 (n + 1)

end

end A053158.P12394903761097819487

noncomputable section

/-- A053158: Sum of n and its cototient function value (A051953): a(n) = 2*n - phi(n), where phi is Euler phi.

Offset 1, canonical program `A053158.P12394903761097819487`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053158 (n : ℕ) : ℤ :=
  A053158.P12394903761097819487.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053158.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053192.P15920408309209119138

`A051953((n+1)^3)`
-/

namespace A053192.P15920408309209119138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 ((n + 1) ^ 3)

end

end A053192.P15920408309209119138

noncomputable section

/-- A053192: a(n) is the cototient of n^3.

Offset 1, canonical program `A053192.P15920408309209119138`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053192 (n : ℕ) : ℤ :=
  A053192.P15920408309209119138.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053193.P16427996787971388584

`A051953(2*(n+1)+1)`
-/

namespace A053193.P16427996787971388584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (2 * (n + 1) + 1)

end

end A053193.P16427996787971388584

noncomputable section

/-- A053193: Cototient of odd numbers.

Offset 1, canonical program `A053193.P16427996787971388584`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053193 (n : ℕ) : ℤ :=
  A053193.P16427996787971388584.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053193.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053196.P5984243781687677578

`A051953(2*(n+1))`
-/

namespace A053196.P5984243781687677578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (2 * (n + 1))

end

end A053196.P5984243781687677578

noncomputable section

/-- A053196: Cototients of even numbers.

Offset 1, canonical program `A053196.P5984243781687677578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053196 (n : ℕ) : ℤ :=
  A053196.P5984243781687677578.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053196.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A053288.P6466323474005085456

`A051953(A000225(n+1))`
-/

namespace A053288.P6466323474005085456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000225 (n + 1)).toNat

end

end A053288.P6466323474005085456

noncomputable section

/-- A053288: Cototient of 2^n - 1.

Offset 1, canonical program `A053288.P6466323474005085456`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053288 (n : ℕ) : ℤ :=
  A053288.P6466323474005085456.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053288.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053650.P6469571087341810863

`(n+1)*A051953(n+1)`
-/

namespace A053650.P6469571087341810863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051953 (n + 1)

end

end A053650.P6469571087341810863

noncomputable section

/-- A053650: Cototient function of n^2.

Offset 1, canonical program `A053650.P6469571087341810863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053650 (n : ℕ) : ℤ :=
  A053650.P6469571087341810863.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053650.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054272.P16500536369367462355

`A250474(n+1)-2`
-/

namespace A054272.P16500536369367462355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) - 2

end

end A054272.P16500536369367462355

noncomputable section

/-- A054272: Number of primes in the interval [prime(n), prime(n)^2].

Offset 1, canonical program `A054272.P16500536369367462355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054272 (n : ℕ) : ℤ :=
  A054272.P16500536369367462355.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057114.P12230823795797694149

`A059893(A065259(A059893(n+1)))`
-/

namespace A057114.P12230823795797694149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065259 (A059893 (n + 1)).toNat).toNat

end

end A057114.P12230823795797694149

noncomputable section

/-- A057114: Permutation of N induced by the order-preserving permutation of the rational numbers (x -> x+1); positions in Stern-Brocot tree.

Offset 1, canonical program `A057114.P12230823795797694149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6144 terms. -/
def A057114 (n : ℕ) : ℤ :=
  A057114.P12230823795797694149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6144 terms. -/
def A057114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057115.P14789950930496132244

`A059893(A065260(A059893(n+1)))`
-/

namespace A057115.P14789950930496132244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065260 (A059893 (n + 1)).toNat).toNat

end

end A057115.P14789950930496132244

noncomputable section

/-- A057115: Order-preserving permutation of the rational numbers (x -> x-1); positions in Stern-Brocot tree.

Offset 1, canonical program `A057115.P14789950930496132244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A057115 (n : ℕ) : ℤ :=
  A057115.P14789950930496132244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A057115.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A058663.P9892355996546786565

`gcd(n, A051953(n+1))`
-/

namespace A058663.P9892355996546786565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A051953 (n + 1))

end

end A058663.P9892355996546786565

noncomputable section

/-- A058663: a(n) = gcd(n-1, n-phi(n)).

Offset 1, canonical program `A058663.P9892355996546786565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058663 (n : ℕ) : ℤ :=
  (A058663.P9892355996546786565.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058665.P1762457033292653108

`gcd(n+2, A051953(n+1))`
-/

namespace A058665.P1762457033292653108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A051953 (n + 1))

end

end A058665.P1762457033292653108

noncomputable section

/-- A058665: a(n) = gcd(n+1, n-phi(n)).

Offset 1, canonical program `A058665.P1762457033292653108`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058665 (n : ℕ) : ℤ :=
  (A058665.P1762457033292653108.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058665.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060278.P961630484478703475

`A206773(n+1)-round(n/(n+1))`
-/

namespace A060278.P961630484478703475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206773 (n + 1) - SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))

end

end A060278.P961630484478703475

noncomputable section

/-- A060278: Sum of composite divisors of n less than n.

Offset 1, canonical program `A060278.P961630484478703475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060278 (n : ℕ) : ℤ :=
  A060278.P961630484478703475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060278.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A061395.P8431317036300486107`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061395 (n : ℕ) : ℤ :=
  A061395.P8431317036300486107.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061395.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A065897.P15020235255577157710

`A134591(n+1)-A063124(n+1)`
-/

namespace A065897.P15020235255577157710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) - A063124 (n + 1)

end

end A065897.P15020235255577157710

noncomputable section

/-- A065897: The a(n)-th composite number is twice the n-th prime.

Offset 1, canonical program `A065897.P15020235255577157710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065897 (n : ℕ) : ℤ :=
  A065897.P15020235255577157710.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066519.P9115414614718271380

`abs(Δ[A190276(abs(1-n)+1)])`
-/

namespace A066519.P9115414614718271380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190276 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A066519.P9115414614718271380

noncomputable section

/-- A066519: Gaps between successive numbers with an anti-divisor class sum of zero.

Offset 1, canonical program `A066519.P9115414614718271380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066519 (n : ℕ) : ℤ :=
  A066519.P9115414614718271380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066519.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A066913.P6088675062854095673

`A066911(n+1)%(n+1)`
-/

namespace A066913.P6088675062854095673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066911 (n + 1)) (n + 1 : ℤ)

end

end A066913.P6088675062854095673

noncomputable section

/-- A066913: (sum of primes < n that do not divide n) (mod n).

Offset 1, canonical program `A066913.P6088675062854095673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066913 (n : ℕ) : ℤ :=
  A066913.P6088675062854095673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066913.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A070046.P5794988103684771228

`A063124(n+1)-1`
-/

namespace A070046.P5794988103684771228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063124 (n + 1) - 1

end

end A070046.P5794988103684771228

noncomputable section

/-- A070046: Number of primes between prime(n) and 2*prime(n) exclusive.

Offset 1, canonical program `A070046.P5794988103684771228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063124, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070046 (n : ℕ) : ℤ :=
  A070046.P5794988103684771228.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063124, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070163.P4710213129982356040

`A051953(A070162(n+1))-1`
-/

namespace A070163.P4710213129982356040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A070162 (n + 1)).toNat - 1

end

end A070163.P4710213129982356040

noncomputable section

/-- A070163: Primes arising in A070162.

Offset 1, canonical program `A070163.P4710213129982356040`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A070162, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070163 (n : ℕ) : ℤ :=
  A070163.P4710213129982356040.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A070162, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070163.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A072062.P12729312681891732768

`abs(xor(1, -A064786(n+1)))`
-/

namespace A072062.P12729312681891732768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-A064786 (n + 1))|

end

end A072062.P12729312681891732768

noncomputable section

/-- A072062: Inverse permutation to A072061.

Offset 1, canonical program `A072062.P12729312681891732768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072062 (n : ℕ) : ℤ :=
  A072062.P12729312681891732768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072062.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072805.P2012198324060395438

`A001363(A080148(n+1))`
-/

namespace A072805.P2012198324060395438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (A080148 (n + 1)).toNat

end

end A072805.P2012198324060395438

noncomputable section

/-- A072805: Primes of form 4k+3 written in base 3.

Offset 1, canonical program `A072805.P2012198324060395438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. -/
def A072805 (n : ℕ) : ℤ :=
  A072805.P2012198324060395438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. -/
def A072805.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A074262.P11865346292723131209

`A156242(lt[1, A100428(n+1)])+1`
-/

namespace A074262.P11865346292723131209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A074262.P11865346292723131209

noncomputable section

/-- A074262: Positions of '11' in Kolakoski sequence A000002.

Offset 1, canonical program `A074262.P11865346292723131209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A074262 (n : ℕ) : ℤ :=
  A074262.P11865346292723131209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A074262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074273.P3483261039541089389

`A013947(2*(n+1))`
-/

namespace A074273.P3483261039541089389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (2 * (n + 1))

end

end A074273.P3483261039541089389

noncomputable section

/-- A074273: Positions in the Kolakoski sequence (A000002) where there are an even number of 1's and the current term is 1.

Offset 1, canonical program `A074273.P3483261039541089389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A074273 (n : ℕ) : ℤ :=
  A074273.P3483261039541089389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A074273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074276.P923500997283116459

`A156242(lt[A100429(n+1), A100428(n+1)])`
-/

namespace A074276.P923500997283116459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074276.P923500997283116459

noncomputable section

/-- A074276: Positions of occurrences of 2,1,1,2,1 in the Kolakoski sequence A000002.

Offset 1, canonical program `A074276.P923500997283116459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A074276 (n : ℕ) : ℤ :=
  A074276.P923500997283116459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A074276.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078649.P18369770188371927822

`comp[A013947(n+1)-1]+1+n`
-/

namespace A078649.P18369770188371927822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A078649.P18369770188371927822

noncomputable section

/-- A078649: Numbers n such that A000002(n)=A000002(n+1) where A000002 is the Kolakoski sequence.

Offset 1, canonical program `A078649.P18369770188371927822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078649 (n : ℕ) : ℤ :=
  (A078649.P18369770188371927822.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078656.P2820646494609425011

`A006450(A049511(n+1))`
-/

namespace A078656.P2820646494609425011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A049511 (n + 1)).toNat

end

end A078656.P2820646494609425011

noncomputable section

/-- A078656: a(n) = prime(k) where k = n-th prime congruent to 1 mod 10.

Offset 1, canonical program `A078656.P2820646494609425011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078656 (n : ℕ) : ℤ :=
  A078656.P2820646494609425011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078656.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A080541.P6940438194727065998

`A059893(A080542(A059893(n+1)))`
-/

namespace A080541.P6940438194727065998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A080542 (A059893 (n + 1)).toNat).toNat

end

end A080541.P6940438194727065998

noncomputable section

/-- A080541: In binary representation: keep the first digit and left-rotate the others.

Offset 1, canonical program `A080541.P6940438194727065998`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A080542, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080541 (n : ℕ) : ℤ :=
  A080541.P6940438194727065998.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A080542, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080541.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A083548.P10089117968042998981

`lcm(A051953(n+1), A051953(n+2))`
-/

namespace A083548.P10089117968042998981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051953 (n + 1)) (A051953 (n + 2))

end

end A083548.P10089117968042998981

noncomputable section

/-- A083548: Least common multiple of cototient values of consecutive integers.

Offset 1, canonical program `A083548.P10089117968042998981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083548 (n : ℕ) : ℤ :=
  (A083548.P10089117968042998981.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083548.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083549.P10383271468232548209

`lcm(A051953(n+1), A051953(n+2))/gcd(A051953(n+1), A051953(n+2))`
-/

namespace A083549.P10383271468232548209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A051953 (n + 1)) (A051953 (n + 2)) : ℚ) / (Int.gcd (A051953 (n + 1)) (A051953 (n + 2)) : ℚ)

end

end A083549.P10383271468232548209

noncomputable section

/-- A083549: Quotient if least common multiple (lcm) of cototient values of consecutive integers is divided by the greatest common divisor (gcd) of the same pair of consecutive numbers.

Offset 1, canonical program `A083549.P10383271468232548209`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083549 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083549.P10383271468232548209.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083549.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A093705.P7271058534406243467

`lt[(n+1)%A093653(n+1), 1]+1`
-/

namespace A093705.P7271058534406243467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A093653 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A093705.P7271058534406243467

noncomputable section

/-- A093705: Numbers that are divisible by the total number of 1's in the binary expansions of all their divisors.

Offset 1, canonical program `A093705.P7271058534406243467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A093705 (n : ℕ) : ℤ :=
  (A093705.P7271058534406243467.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A093705.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 3, canonical program `A094051.P17874121840297430644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008330, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094051 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094051.P17874121840297430644.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008330, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094051.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A111248.P8740398258723781091

`A001617(n+1)+A001616(n+1)-1`
-/

namespace A111248.P8740398258723781091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (n + 1) + A001616 (n + 1) - 1

end

end A111248.P8740398258723781091

noncomputable section

/-- A111248: Dimension of the space of weight 2 modular forms for Gamma_0(n).

Offset 1, canonical program `A111248.P8740398258723781091`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001616, A001617, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111248 (n : ℕ) : ℤ :=
  A111248.P8740398258723781091.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001616, A001617, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112603.P10073116027546116725

`A002325(8*n+1)`
-/

namespace A112603.P10073116027546116725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (8 * n + 1)

end

end A112603.P10073116027546116725

noncomputable section

/-- A112603: Number of representations of n as the sum of a square and a triangular number.

Offset 0, canonical program `A112603.P10073116027546116725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112603 (n : ℕ) : ℤ :=
  A112603.P10073116027546116725.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112603.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A116563.P2597294203523295225

`A001617(A000040(n+1))`
-/

namespace A116563.P2597294203523295225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A000040 (n + 1)).toNat

end

end A116563.P2597294203523295225

noncomputable section

/-- A116563: a(n) is the genus of the modular curve X_0(p) for p = prime(n).

Offset 1, canonical program `A116563.P2597294203523295225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A116563 (n : ℕ) : ℤ :=
  A116563.P2597294203523295225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A116563.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127788.P5184033610480325738

`∑{d}[n+1, A001617(#)*A007427((n+1)/#)]`
-/

namespace A127788.P5184033610480325738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001617 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127788.P5184033610480325738

noncomputable section

/-- A127788: Dimension of the space of newforms of weight 2 and level n.

Offset 1, canonical program `A127788.P5184033610480325738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127788 (n : ℕ) : ℤ :=
  A127788.P5184033610480325738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000010.P9912137244617891823

`n+1-A051953(n+1)`
-/

namespace A000010.P9912137244617891823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A051953 (n + 1)

end

end A000010.P9912137244617891823

noncomputable section

/-- A000010: Euler totient function phi(n): count numbers <= n and prime to n.

Offset 1, canonical program `A000010.P9912137244617891823`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000010 (n : ℕ) : ℤ :=
  A000010.P9912137244617891823.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000091.P2909649729475731760

`A034444(n+1)*A097325(A253629(n+1))`
-/

namespace A000091.P2909649729475731760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A097325 (A253629 (n + 1)).toNat

end

end A000091.P2909649729475731760

noncomputable section

/-- A000091: Multiplicative with a(2^e) = 2 for k >= 1; a(3) = 2, a(3^e) = 0 for k >= 2; a(p^e) = 0 if p > 3 and p == -1 (mod 3); a(p^e) = 2 if p > 3 and p == 1 (mod 3).

Offset 1, canonical program `A000091.P2909649729475731760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000091 (n : ℕ) : ℤ :=
  A000091.P2909649729475731760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000548.P7784828733208022638

`(lt[A005080(n+1), 1]+1)²`
-/

namespace A000548.P7784828733208022638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005080 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A000548.P7784828733208022638

noncomputable section

/-- A000548: Squares that are not the sum of 2 nonzero squares.

Offset 1, canonical program `A000548.P7784828733208022638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3551 terms. -/
def A000548 (n : ℕ) : ℤ :=
  (A000548.P7784828733208022638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3551 terms. -/
def A000548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003252.P10872519119112551421

`∑[A001468(A026272(n+1)+n)+1]`
-/

namespace A003252.P10872519119112551421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A026272 (n + 1) + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003252.P10872519119112551421

noncomputable section

/-- A003252: The number m such that A003251(m) = A003231(n).

Offset 1, canonical program `A003252.P10872519119112551421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4197 terms. -/
def A003252 (n : ℕ) : ℤ :=
  A003252.P10872519119112551421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4197 terms. -/
def A003252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003714.P565032106299634425

`a(A193564(n+1))*2^(A003849(n)+1)+A003849(n)` with `a(0)=0`
-/

namespace A003714.P565032106299634425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (A193564 (n + 1)).toNat * (2 : ℚ) ^ (A003849 n + 1 : ℤ) + (A003849 n : ℚ)

end

end A003714.P565032106299634425

noncomputable section

/-- A003714: Fibbinary numbers: if n = F(i1) + F(i2) + ... + F(ik) is the Zeckendorf representation of n (i.e., write n in Fibonacci number system) then a(n) = 2^(i1 - 2) + 2^(i2 - 2) + ... + 2^(ik - 2). Also numbers whose binary representation contains no two adjacent 1's.

Offset 0, canonical program `A003714.P565032106299634425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003714 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003714.P565032106299634425.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A009195.P575735392333790531

`gcd(n+1, A051953(n+1))`
-/

namespace A009195.P575735392333790531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A051953 (n + 1))

end

end A009195.P575735392333790531

noncomputable section

/-- A009195: a(n) = gcd(n, phi(n)).

Offset 1, canonical program `A009195.P575735392333790531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A009195 (n : ℕ) : ℤ :=
  (A009195.P575735392333790531.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A009195.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A043576.P9157064947003419788

`∩[A043736(n+1), A043741(n+1)]`
-/

namespace A043576.P9157064947003419788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P9157064947003419788

noncomputable section

/-- A043576: Numbers whose base-2 representation has exactly 9 runs.

Offset 1, canonical program `A043576.P9157064947003419788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9504 terms. -/
def A043576 (n : ℕ) : ℤ :=
  (A043576.P9157064947003419788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9504 terms. -/
def A043576.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A048864.P16915682539637834600

`A036997(n+1)+1`
-/

namespace A048864.P16915682539637834600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (n + 1) + 1

end

end A048864.P16915682539637834600

noncomputable section

/-- A048864: Number of nonprime numbers (composites and 1) in the reduced residue system of n.

Offset 1, canonical program `A048864.P16915682539637834600`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048864 (n : ℕ) : ℤ :=
  A048864.P16915682539637834600.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048864.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048983.P9613162556933275470

`A036997(Δ[A053767(n)])`
-/

namespace A048983.P9613162556933275470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (f1 (n + 1) - f1 n).toNat

end

end A048983.P9613162556933275470

noncomputable section

/-- A048983: As n runs through composite numbers, a(n) = number of composite d < n such that gcd(d,n) = 1.

Offset 1, canonical program `A048983.P9613162556933275470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A048983 (n : ℕ) : ℤ :=
  A048983.P9613162556933275470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A048983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049586.P5434218238322190531

`gcd(A051953(n+2), A051953(n+1))`
-/

namespace A049586.P5434218238322190531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051953 (n + 2)) (A051953 (n + 1))

end

end A049586.P5434218238322190531

noncomputable section

/-- A049586: a(n) is the GCD of the cototients (A051953) of n and n+1.

Offset 0, canonical program `A049586.P5434218238322190531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049586 (n : ℕ) : ℤ :=
  (A049586.P5434218238322190531.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049586.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A051709.P1277583888386467227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051709 (n : ℕ) : ℤ :=
  A051709.P1277583888386467227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051709.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055204.P17370574123234970740

`(n+1)!/A055071(n+1)`
-/

namespace A055204.P17370574123234970740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A055071 (n + 1) : ℚ)

end

end A055204.P17370574123234970740

noncomputable section

/-- A055204: Squarefree part of n!: n! divided by its largest square divisor.

Offset 1, canonical program `A055204.P17370574123234970740`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055204 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055204.P17370574123234970740.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055204.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055772.P17344968557640667669

`sqrt(A055071(n+1))`
-/

namespace A055772.P17344968557640667669
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055071 (n + 1) : ℝ)

end

end A055772.P17344968557640667669

noncomputable section

/-- A055772: Square root of largest square dividing n!.

Offset 1, canonical program `A055772.P17344968557640667669`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055772 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055772.P17344968557640667669.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055772.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056060.P13324673825026971929

`A055231(A001405(n+1))`
-/

namespace A056060.P13324673825026971929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A001405 (n + 1)).toNat

end

end A056060.P13324673825026971929

noncomputable section

/-- A056060: The powerfree part of the central binomial coefficients.

Offset 1, canonical program `A056060.P13324673825026971929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055231, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056060 (n : ℕ) : ℤ :=
  A056060.P13324673825026971929.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055231, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056060.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056169.P17430176249366647977

`A001221(A055231(n+1))`
-/

namespace A056169.P17430176249366647977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A055231 (n + 1)).toNat

end

end A056169.P17430176249366647977

noncomputable section

/-- A056169: Number of unitary prime divisors of n.

Offset 1, canonical program `A056169.P17430176249366647977`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A055231, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056169 (n : ℕ) : ℤ :=
  A056169.P17430176249366647977.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A055231, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056169.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056175.P9200230780470454519

`A001221(A056057(n+1))`
-/

namespace A056175.P9200230780470454519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A056057 (n + 1)).toNat

end

end A056175.P9200230780470454519

noncomputable section

/-- A056175: Number of nonunitary prime divisors of the central binomial coefficient C(n, floor(n/2)) (A001405).

Offset 1, canonical program `A056175.P9200230780470454519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056057, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056175 (n : ℕ) : ℤ :=
  A056175.P9200230780470454519.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056057, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056175.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056191.P12587118165966918180

`A055229(n+1)^3`
-/

namespace A056191.P12587118165966918180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1) ^ 3

end

end A056191.P12587118165966918180

noncomputable section

/-- A056191: Characteristic cube divisor of n: cube of g = gcd(K,F), where K is the largest square root divisor of n (A000188) and F = n/(K*K) = A007913(n) is its squarefree part; g^2 divides K^2 = A008833(n) = g^2*L^2 and g divides F = gf.

Offset 1, canonical program `A056191.P12587118165966918180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056191 (n : ℕ) : ℤ :=
  A056191.P12587118165966918180.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056192.P7016180020851153746

`(n+1)/A055229(n+1)^3`
-/

namespace A056192.P7016180020851153746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055229 (n + 1) ^ 3 : ℚ)

end

end A056192.P7016180020851153746

noncomputable section

/-- A056192: a(n) = n divided by its characteristic cube divisor A056191.

Offset 1, canonical program `A056192.P7016180020851153746`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056192 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056192.P7016180020851153746.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056623.P4042659177706060418

`A008833(n+1)/A055229(n+1)²`
-/

namespace A056623.P4042659177706060418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008833 (n + 1) : ℚ) / (A055229 (n + 1) ^ 2 : ℚ)

end

end A056623.P4042659177706060418

noncomputable section

/-- A056623: If n=LLgggf (see A056192) and a(n) = LL, then its complementary divisor n/LL = gggf and gcd(L^2, n/LL) = 1.

Offset 1, canonical program `A056623.P4042659177706060418`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, A055229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056623 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056623.P4042659177706060418.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, A055229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056623.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A061911.P12840697510039333381`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, A061910, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A061911 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061911.P12840697510039333381.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, A061910, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A061911.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A064579.P6357362564671584677

`A064786(A054082(A064786(n+1)))`
-/

namespace A064579.P6357362564671584677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064786 (A054082 (A064786 (n + 1)).toNat).toNat

end

end A064579.P6357362564671584677

noncomputable section

/-- A064579: Inverse permutation to A054082.

Offset 1, canonical program `A064579.P6357362564671584677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8090 terms. -/
def A064579 (n : ℕ) : ℤ :=
  A064579.P6357362564671584677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8090 terms. -/
def A064579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065886.P10189673192464733251

`A053143(A000142(n))`
-/

namespace A065886.P10189673192464733251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A000142 n).toNat

end

end A065886.P10189673192464733251

noncomputable section

/-- A065886: Smallest square divisible by n!.

Offset 0, canonical program `A065886.P10189673192464733251`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065886 (n : ℕ) : ℤ :=
  A065886.P10189673192464733251.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065886.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A073185.P13146702220439815820

`A000203(A007948(n+1))`
-/

namespace A073185.P13146702220439815820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007948 (n + 1)).toNat

end

end A073185.P13146702220439815820

noncomputable section

/-- A073185: Sum of cubefree divisors of n.

Offset 1, canonical program `A073185.P13146702220439815820`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007948, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073185 (n : ℕ) : ℤ :=
  A073185.P13146702220439815820.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007948, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073185.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A076998.P17388172569221754780

`A007948(n+1)-A007947(n+1)`
-/

namespace A076998.P17388172569221754780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1) - A007947 (n + 1)

end

end A076998.P17388172569221754780

noncomputable section

/-- A076998: Difference between cubefree and squarefree components of n.

Offset 1, canonical program `A076998.P17388172569221754780`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A007948, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076998 (n : ℕ) : ℤ :=
  A076998.P17388172569221754780.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A007948, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076998.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078435.P867302158183196270

`A065893(n+1)+1`
-/

namespace A078435.P867302158183196270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065893 (n + 1) + 1

end

end A078435.P867302158183196270

noncomputable section

/-- A078435: Number of composites <= n^2.

Offset 1, canonical program `A078435.P867302158183196270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078435 (n : ℕ) : ℤ :=
  A078435.P867302158183196270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078435.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A080101.P17293988866175764959

`A366833(n+1)-1`
-/

namespace A080101.P17293988866175764959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366833 (n + 1) - 1

end

end A080101.P17293988866175764959

noncomputable section

/-- A080101: Number of prime powers in all composite numbers between n-th prime and next prime.

Offset 1, canonical program `A080101.P17293988866175764959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080101 (n : ℕ) : ℤ :=
  A080101.P17293988866175764959.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080101.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A083855.P6196543086430157343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A083854, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083855 (n : ℕ) : ℤ :=
  A083855.P6196543086430157343.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A083854, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083855.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087122.P15401015175558508661

`A008833(n+1)*A018804(A019554(n+1))`
-/

namespace A087122.P15401015175558508661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * A018804 (A019554 (n + 1)).toNat

end

end A087122.P15401015175558508661

noncomputable section

/-- A087122: a(n) is the number of non-congruent solutions to x^2*y^2 == 0 (mod n).

Offset 1, canonical program `A087122.P15401015175558508661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087122 (n : ℕ) : ℤ :=
  A087122.P15401015175558508661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087122.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104481.P11972793429433204995

`A180304(n+1)/(n+1)-1`
-/

namespace A104481.P11972793429433204995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180304 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A104481.P11972793429433204995

noncomputable section

/-- A104481: Bisection of A104477.

Offset 1, canonical program `A104481.P11972793429433204995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104481 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A104481.P11972793429433204995.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104481.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A112310.P5733942079183269524

`A200648(n+2)-1`
-/

namespace A112310.P5733942079183269524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200648 (n + 2) - 1

end

end A112310.P5733942079183269524

noncomputable section

/-- A112310: Number of terms in lazy Fibonacci representation of n.

Offset 0, canonical program `A112310.P5733942079183269524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A112310 (n : ℕ) : ℤ :=
  A112310.P5733942079183269524.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A112310.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115075.P17756740268072419021

`A053143(n+1)*A069097(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A115075.P17756740268072419021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (n + 1) * A069097 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A115075.P17756740268072419021

noncomputable section

/-- A115075: Number of 2 X 2 symmetric matrices over Z(n) having determinant 0.

Offset 1, canonical program `A115075.P17756740268072419021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115075 (n : ℕ) : ℤ :=
  A115075.P17756740268072419021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115075.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A118735.P16887616288475277364

`∩[A118731(n+1), A118732(n+1)]`
-/

namespace A118735.P16887616288475277364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118735.P16887616288475277364

noncomputable section

/-- A118735: Numbers k such that 2^k and 3^k have odd digit sum.

Offset 1, canonical program `A118735.P16887616288475277364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5061 terms. -/
def A118735 (n : ℕ) : ℤ :=
  (A118735.P16887616288475277364.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5061 terms. -/
def A118735.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A031776.P17682919768694238535

`A000188(∑[A005408(n)])+(49*(n+1))²`
-/

namespace A031776.P17682919768694238535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((49 * (n + 1)) ^ 2 : ℤ)

end

end A031776.P17682919768694238535

noncomputable section

/-- A031776: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 98.

Offset 1, canonical program `A031776.P17682919768694238535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A031776 (n : ℕ) : ℤ :=
  A031776.P17682919768694238535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A031776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031778.P7044411394653041818

`(50*A000188((n+1)²))²+n+1`
-/

namespace A031778.P7044411394653041818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (50 * A000188 ((n + 1) ^ 2)) ^ 2 + (n + 1 : ℤ)

end

end A031778.P7044411394653041818

noncomputable section

/-- A031778: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 100.

Offset 1, canonical program `A031778.P7044411394653041818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A031778 (n : ℕ) : ℤ :=
  A031778.P7044411394653041818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A031778.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A053865.P16031829855945893776

`A053864(A003557(n+1)*A055231(n+1))`
-/

namespace A053865.P16031829855945893776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053864 (A003557 (n + 1) * A055231 (n + 1)).toNat

end

end A053865.P16031829855945893776

noncomputable section

/-- A053865: A third-order generalization of the Mobius function of n.

Offset 1, canonical program `A053865.P16031829855945893776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053865 (n : ℕ) : ℤ :=
  A053865.P16031829855945893776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053865.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A056056.P8939201320321533669

`sqrt(A056057(n+1))`
-/

namespace A056056.P8939201320321533669
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056057 (n + 1) : ℝ)

end

end A056056.P8939201320321533669

noncomputable section

/-- A056056: Square root of largest square dividing n-th central binomial coefficient.

Offset 1, canonical program `A056056.P8939201320321533669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056056 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056056.P8939201320321533669.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057918.P8779601029509101892

`A000188(n+1)-1`
-/

namespace A057918.P8779601029509101892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) - 1

end

end A057918.P8779601029509101892

noncomputable section

/-- A057918: Number of pairs of numbers (r,s) each less than n such that (r,s,n) is in geometric progression.

Offset 1, canonical program `A057918.P8779601029509101892`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057918 (n : ℕ) : ℤ :=
  A057918.P8779601029509101892.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057918.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059592.P18336560042415151975

`A000188(A002522(n))`
-/

namespace A059592.P18336560042415151975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A002522 n).toNat

end

end A059592.P18336560042415151975

noncomputable section

/-- A059592: Square-full part of n^2 + 1.

Offset 0, canonical program `A059592.P18336560042415151975`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059592 (n : ℕ) : ℤ :=
  A059592.P18336560042415151975.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059592.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063775.P4217061199488976379

`A046951(A000188(n+1))`
-/

namespace A063775.P4217061199488976379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A000188 (n + 1)).toNat

end

end A063775.P4217061199488976379

noncomputable section

/-- A063775: Number of 4th powers dividing n.

Offset 1, canonical program `A063775.P4217061199488976379`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A063775 (n : ℕ) : ℤ :=
  A063775.P4217061199488976379.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A063775.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069290.P6266587800206818294

`A000203(A000188(n+1))`
-/

namespace A069290.P6266587800206818294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000188 (n + 1)).toNat

end

end A069290.P6266587800206818294

noncomputable section

/-- A069290: Sum of the square roots of the square divisors of n.

Offset 1, canonical program `A069290.P6266587800206818294`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069290 (n : ℕ) : ℤ :=
  A069290.P6266587800206818294.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069290.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A072900.P667283851551289347

`filter[A033198(n+1), A358769(#)]`
-/

namespace A072900.P667283851551289347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A072900.P667283851551289347

noncomputable section

/-- A072900: Discriminant of quadratic field Q(sqrt(prime(n))) where prime(n) is the n-th prime.

Offset 1, canonical program `A072900.P667283851551289347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1906 terms. -/
def A072900 (n : ℕ) : ℤ :=
  A072900.P667283851551289347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1906 terms. -/
def A072900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072905.P2770806912493137566

`A007913(n+1)*(A000188(n+1)+1)²`
-/

namespace A072905.P2770806912493137566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * (A000188 (n + 1) + 1) ^ 2

end

end A072905.P2770806912493137566

noncomputable section

/-- A072905: a(n) is the least k > n such that k*n is a square.

Offset 1, canonical program `A072905.P2770806912493137566`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072905 (n : ℕ) : ℤ :=
  A072905.P2770806912493137566.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079898.P5535237545047287973

`∏{e}[n+1, #+1]-a(n-1)*A322483(n²)` with `a(0)=1`
-/

namespace A079898.P5535237545047287973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - a (n - 1) * A322483 (n ^ 2)

end

end A079898.P5535237545047287973

noncomputable section

/-- A079898: a(1) = 1; a(n) = tau(n) - tau(n-1)* a(n-1) if n > 1.

Offset 1, canonical program `A079898.P5535237545047287973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A079898 (n : ℕ) : ℤ :=
  A079898.P5535237545047287973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A079898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087050.P17786858087998487882

`A000188(A013929(n+1))`
-/

namespace A087050.P17786858087998487882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A013929 (n + 1)).toNat

end

end A087050.P17786858087998487882

noncomputable section

/-- A087050: Square root of the largest square >1 dividing the n-th nonsquarefree number.

Offset 1, canonical program `A087050.P17786858087998487882`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A013929, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087050 (n : ℕ) : ℤ :=
  A087050.P17786858087998487882.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A013929, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118730.P11127108990415150483

`comp[A118731(n+1)]`
-/

namespace A118730.P11127108990415150483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118730.P11127108990415150483

noncomputable section

/-- A118730: Numbers k such that 2^k has even digit sum.

Offset 1, canonical program `A118730.P11127108990415150483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9980 terms. -/
def A118730 (n : ℕ) : ℤ :=
  (A118730.P11127108990415150483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9980 terms. -/
def A118730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119450.P10853588733666764449

`A000040(A200260(n+1))`
-/

namespace A119450.P10853588733666764449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A200260 (n + 1)).toNat

end

end A119450.P10853588733666764449

noncomputable section

/-- A119450: Primes with odd digit sum.

Offset 1, canonical program `A119450.P10853588733666764449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A200260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A119450 (n : ℕ) : ℤ :=
  A119450.P10853588733666764449.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A200260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A119450.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A056624.P6960691784658607954

`2^A162641(n+1)`
-/

namespace A056624.P6960691784658607954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A162641 (n + 1) : ℤ)

end

end A056624.P6960691784658607954

noncomputable section

/-- A056624: Number of unitary square divisors of n.

Offset 1, canonical program `A056624.P6960691784658607954`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056624 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056624.P6960691784658607954.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056624.provenance : SequenceMachineLib.Provenance := .conditional

