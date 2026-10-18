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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A390945.P3952073079316062166

`A003059(3*(n+1))`
-/

namespace A390945.P3952073079316062166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (3 * (n + 1))

end

end A390945.P3952073079316062166

noncomputable section

/-- A390945: Burning number of the n-necklace graph.

Offset 1, canonical program `A390945.P3952073079316062166`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390945 (n : ℕ) : ℤ :=
  A390945.P3952073079316062166.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391163.P12705108012069157976

`10*A002264(n)+A010872(n)`
-/

namespace A391163.P12705108012069157976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A002264 n + A010872 n

end

end A391163.P12705108012069157976

noncomputable section

/-- A391163: Numbers whose final digit is at most 2.

Offset 0, canonical program `A391163.P12705108012069157976`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391163 (n : ℕ) : ℤ :=
  A391163.P12705108012069157976.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391163.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391164.P14227226670676293853

`10*A152467(n)+A010875(n)`
-/

namespace A391164.P14227226670676293853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A152467 n + A010875 n

end

end A391164.P14227226670676293853

noncomputable section

/-- A391164: Numbers whose final digit is at most 5.

Offset 0, canonical program `A391164.P14227226670676293853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391164 (n : ℕ) : ℤ :=
  A391164.P14227226670676293853.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391164.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391372.P15563272751612175895

`A084849(a(n-1))` with `a(0)=0`
-/

namespace A391372.P15563272751612175895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A084849 (a (n - 1)).toNat

end

end A391372.P15563272751612175895

noncomputable section

/-- A391372: a(n) = 2*a(n-1)^2 + a(n-1) + 1 with a(0) = 0.

Offset 0, canonical program `A391372.P15563272751612175895`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391372 (n : ℕ) : ℤ :=
  A391372.P15563272751612175895.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391372.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391588.P16729587451443595755

`2^A070939(n+1)*n+n`
-/

namespace A391588.P16729587451443595755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A070939 (n + 1) : ℤ) * (n : ℚ) + (n : ℚ)

end

end A391588.P16729587451443595755

noncomputable section

/-- A391588: a(n) = A003817(n) XOR (A003817(n)*n).

Offset 1, canonical program `A391588.P16729587451443595755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391588 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391588.P16729587451443595755.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391868.P15801713376637900617

`a(n-1)+A006893(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A391868.P15801713376637900617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A006893 (n - 1)

end

end A391868.P15801713376637900617

noncomputable section

/-- A391868: Start with the list of positive integers 1,2,3,... . After each integer k, insert k empty positions. Fill these positions, from left to right, with the positive integers in order. Repeat this spacing-and-filling process indefinitely. The sequence consists of the positions of the last occurrence of 1 after each step.

Offset 1, canonical program `A391868.P15801713376637900617`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391868 (n : ℕ) : ℤ :=
  A391868.P15801713376637900617.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391868.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391917.P17410970912518672552

`A290493(n+1)²+1`
-/

namespace A391917.P17410970912518672552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290493 (n + 1) ^ 2 + 1

end

end A391917.P17410970912518672552

noncomputable section

/-- A391917: Number of irredundant sets in the n-double cone graph.

Offset 1, canonical program `A391917.P17410970912518672552`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391917 (n : ℕ) : ℤ :=
  A391917.P17410970912518672552.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392334.P16455220936438434802

`A109613(n)^A000034(n)`
-/

namespace A392334.P16455220936438434802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109613 n : ℚ) ^ (A000034 n : ℤ)

end

end A392334.P16455220936438434802

noncomputable section

/-- A392334: a(2*n) = 2*n+1, a(2*n+1) = (2*n+1)^2.

Offset 0, canonical program `A392334.P16455220936438434802`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392334 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392334.P16455220936438434802.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393238.P17553377918589216133

`A349919(n)+n²+1`
-/

namespace A393238.P17553377918589216133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349919 n + (n ^ 2 : ℤ) + 1

end

end A393238.P17553377918589216133

noncomputable section

/-- A393238: Number of transitive relations on an n-set with at most two ordered pairs.

Offset 0, canonical program `A393238.P17553377918589216133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393238 (n : ℕ) : ℤ :=
  A393238.P17553377918589216133.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393297.P12328997900511415540

`A000129(A000129(n))`
-/

namespace A393297.P12328997900511415540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A000129 n).toNat

end

end A393297.P12328997900511415540

noncomputable section

/-- A393297: a(n) = Pell(Pell(n)) where Pell(n) = A000129(n).

Offset 0, canonical program `A393297.P12328997900511415540`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393297 (n : ℕ) : ℤ :=
  A393297.P12328997900511415540.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393297.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394510.P16388077156761870700

`A132356(n)*A090771(n+1)`
-/

namespace A394510.P16388077156761870700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132356 n * A090771 (n + 1)

end

end A394510.P16388077156761870700

noncomputable section

/-- A394510: a(2*k) = 2*k*(5*k+1)*(10*k+1), a(2*k+1) = 2*(k+1)*(5*k+4)*(10*k+9), with k >= 0.

Offset 0, canonical program `A394510.P16388077156761870700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394510 (n : ℕ) : ℤ :=
  A394510.P16388077156761870700.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394510.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394865.P1928483704663461371

`A050292(n+1)-A050292(floor((n+1)/3))`
-/

namespace A394865.P1928483704663461371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (n + 1) - A050292 ⌊(n + 1 : ℚ) / 3⌋.toNat

end

end A394865.P1928483704663461371

noncomputable section

/-- A394865: a(n) is the size of the largest subset A of {1, ..., n} such that x does not divide 2*y for each pair of distinct elements x, y in A.

Offset 1, canonical program `A394865.P1928483704663461371`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394865 (n : ℕ) : ℤ :=
  A394865.P1928483704663461371.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394865.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395204.P11909722987938007791

`(2*n)!*A002315(n)`
-/

namespace A395204.P11909722987938007791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℤ) * A002315 n

end

end A395204.P11909722987938007791

noncomputable section

/-- A395204: a(n) = (2*n)! * [x^(2*n)] (f(x)^2 + f(-x)^2)/2 and f(x) = 1/sqrt(1 + 2*sqrt(2)*x + x^2).

Offset 0, canonical program `A395204.P11909722987938007791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395204 (n : ℕ) : ℤ :=
  A395204.P11909722987938007791.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395581.P5928758976938920943

`A003151(a(n-1))+A003151(a(n-2))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A395581.P5928758976938920943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A003151 (a (n - 1)).toNat + A003151 (a (n - 2)).toNat

end

end A395581.P5928758976938920943

noncomputable section

/-- A395581: a(n) = floor(r*a(n-1)) + floor(r*a(n-2)), a(0) = 0, a(1) = 1 and r = 1 + sqrt(2).

Offset 0, canonical program `A395581.P5928758976938920943`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395581 (n : ℕ) : ℤ :=
  A395581.P5928758976938920943.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395582.P2622982355169417460

`A080081(a(n-1))+A080081(a(n-2))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A395582.P2622982355169417460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A080081 (a (n - 1)).toNat + A080081 (a (n - 2)).toNat

end

end A395582.P2622982355169417460

noncomputable section

/-- A395582: a(n) = floor(r*a(n-1)) + floor(r*a(n-2)), a(0) = 0, a(1) = 1 and r = (3 + sqrt(13))/2.

Offset 0, canonical program `A395582.P2622982355169417460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395582 (n : ℕ) : ℤ :=
  A395582.P2622982355169417460.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395583.P8867304325575678550

`A004976(a(n-1))+A004976(a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A395583.P8867304325575678550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004976 (a (n - 1)).toNat + A004976 (a (n - 2)).toNat

end

end A395583.P8867304325575678550

noncomputable section

/-- A395583: a(n) = floor(r*a(n-1)) + floor(r*a(n-2)), a(0) = 0, a(1) = 1 and r = 2 + sqrt(5).

Offset 0, canonical program `A395583.P8867304325575678550`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395583 (n : ℕ) : ℤ :=
  A395583.P8867304325575678550.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395585.P1910700753436105600

`A080081(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A395585.P1910700753436105600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A080081 (a (n - 1) + a (n - 2)).toNat

end

end A395585.P1910700753436105600

noncomputable section

/-- A395585: a(n) = floor(r*(a(n-1) + a(n-2))), a(0) = 0, a(1) = 1 and r = (3 + sqrt(13))/2.

Offset 0, canonical program `A395585.P1910700753436105600`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395585 (n : ℕ) : ℤ :=
  A395585.P1910700753436105600.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395585.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395586.P13069080438315574656

`A004976(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A395586.P13069080438315574656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004976 (a (n - 1) + a (n - 2)).toNat

end

end A395586.P13069080438315574656

noncomputable section

/-- A395586: a(n) = floor(r*(a(n-1)+a(n-2))), a(0) = 0, a(1) = 1 and r = 2 + sqrt(5).

Offset 0, canonical program `A395586.P13069080438315574656`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395586 (n : ℕ) : ℤ :=
  A395586.P13069080438315574656.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395586.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395827.P16679499213790510204

`6^n-A180033(n)`
-/

namespace A395827.P16679499213790510204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) - A180033 n

end

end A395827.P16679499213790510204

noncomputable section

/-- A395827: a(n) is the number of possible outcomes having a run of 2 or more sixes when a die is rolled n times.

Offset 0, canonical program `A395827.P16679499213790510204`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395827 (n : ℕ) : ℤ :=
  A395827.P16679499213790510204.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395828.P2810719931447247323

`7^n-A180167(n)`
-/

namespace A395828.P2810719931447247323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) - A180167 n

end

end A395828.P2810719931447247323

noncomputable section

/-- A395828: Number of septenary strings of length n that contain a specific string xx (where x is a single digit).

Offset 0, canonical program `A395828.P2810719931447247323`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395828 (n : ℕ) : ℤ :=
  A395828.P2810719931447247323.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395828.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396151.P82576254118047464

`2*A000749(n+2)+1`
-/

namespace A396151.P82576254118047464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000749 (n + 2) + 1

end

end A396151.P82576254118047464

noncomputable section

/-- A396151: a(n) = 2^(n+1) + 1 - 2*Re((1+i)^n), where i is the imaginary unit.

Offset 0, canonical program `A396151.P82576254118047464`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396151 (n : ℕ) : ℤ :=
  A396151.P82576254118047464.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396151.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396641.P2215949741411272717

`(6*A253880(n+1)+1)/7`
-/

namespace A396641.P2215949741411272717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * A253880 (n + 1) + 1 : ℚ) / 7

end

end A396641.P2215949741411272717

noncomputable section

/-- A396641: Centered hexagonal numbers h such that 7*h is also a centered hexagonal number.

Offset 1, canonical program `A396641.P2215949741411272717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396641 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396641.P2215949741411272717.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396641.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396686.P3676614447419960955

`A070939(2*(n+1)²)`
-/

namespace A396686.P3676614447419960955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * (n + 1) ^ 2)

end

end A396686.P3676614447419960955

noncomputable section

/-- A396686: a(n) = floor(2*log_2(n)) + 2.

Offset 1, canonical program `A396686.P3676614447419960955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396686 (n : ℕ) : ℤ :=
  A396686.P3676614447419960955.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396689.P6792333059227703695

`A216073(n+2)*A080806(n+2)`
-/

namespace A396689.P6792333059227703695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216073 (n + 2) * A080806 (n + 2)

end

end A396689.P6792333059227703695

noncomputable section

/-- A396689: Numbers k such that binomial(x + 4, 5) - binomial(x, 5) = k^2 for some integer x >= 5.

Offset 1, canonical program `A396689.P6792333059227703695`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396689 (n : ℕ) : ℤ :=
  A396689.P6792333059227703695.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397491.P13383591952212142653

`A366489(n)/210`
-/

namespace A397491.P13383591952212142653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366489 n : ℚ) / 210

end

end A397491.P13383591952212142653

noncomputable section

/-- A397491: a(n) = (n^13 - n)/2730.

Offset 0, canonical program `A397491.P13383591952212142653`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397491 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A397491.P13383591952212142653.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397580.P8035210197760338808

`(n+1)*A122649(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397580.P8035210197760338808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A122649 (n + 1)

end

end A397580.P8035210197760338808

noncomputable section

/-- A397580: a(n) = n*A122649(n) = n*((2*n - 1)!! - (2*n - 2)!!).

Offset 1, canonical program `A397580.P8035210197760338808`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397580 (n : ℕ) : ℤ :=
  A397580.P8035210197760338808.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397580.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397691.P3464348281596680652

`A060553(n+2)-1`
-/

namespace A397691.P3464348281596680652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060553 (n + 2) - 1

end

end A397691.P3464348281596680652

noncomputable section

/-- A397691: Number of orbits of nonzero binary algebraic forms of degree n with coefficients in the field with two elements, under the action of SL(2,2).

Offset 1, canonical program `A397691.P3464348281596680652`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397691 (n : ℕ) : ℤ :=
  A397691.P3464348281596680652.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397691.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397801.P10674669512506407556

`a(n-4)+A007949(n)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A397801.P10674669512506407556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  a (n - 4) + A007949 n

end

end A397801.P10674669512506407556

noncomputable section

/-- A397801: 3-adic valuation of the quadruple factorial of n.

Offset 0, canonical program `A397801.P10674669512506407556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397801 (n : ℕ) : ℤ :=
  A397801.P10674669512506407556.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397833.P6945550512634513775

`2^n-A118870(n)`
-/

namespace A397833.P6945550512634513775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A118870 n

end

end A397833.P6945550512634513775

noncomputable section

/-- A397833: Number of binary words of length n containing the consecutive word abab.

Offset 0, canonical program `A397833.P6945550512634513775`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397833 (n : ℕ) : ℤ :=
  A397833.P6945550512634513775.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397835.P15543943406779029277

`3^n-A397837(n)`
-/

namespace A397835.P15543943406779029277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A397837 n

end

end A397835.P15543943406779029277

noncomputable section

/-- A397835: Number of ternary words of length n over {a,b,c} containing the consecutive word abcabc.

Offset 0, canonical program `A397835.P15543943406779029277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397835 (n : ℕ) : ℤ :=
  A397835.P15543943406779029277.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397835.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390562.P11016725646029615047

`A187331(n)+A118406(n)`
-/

namespace A390562.P11016725646029615047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187331 n + A118406 n

end

end A390562.P11016725646029615047

noncomputable section

/-- A390562: Upper (1/5,1/2) midsequence of (2^n) and (5*n); see Comments.

Offset 0, canonical program `A390562.P11016725646029615047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A390562 (n : ℕ) : ℤ :=
  A390562.P11016725646029615047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A390562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390566.P12025773443612493557

`ceil(n*A045944(n)/6)`
-/

namespace A390566.P12025773443612493557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * A045944 n : ℚ) / 6⌉

end

end A390566.P12025773443612493557

noncomputable section

/-- A390566: Upper (1/3,1/2) midsequence of (n^2) and (n^3); see Comments.

Offset 0, canonical program `A390566.P12025773443612493557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390566 (n : ℕ) : ℤ :=
  A390566.P12025773443612493557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390614.P12437563007930374621

`A080891(n)*A175629(n)`
-/

namespace A390614.P12437563007930374621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 n * A175629 n

end

end A390614.P12437563007930374621

noncomputable section

/-- A390614: a(n) = Kronecker symbol (-35/n) = (n/35).

Offset 0, canonical program `A390614.P12437563007930374621`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175629, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390614 (n : ℕ) : ℤ :=
  A390614.P12437563007930374621.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175629, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390614.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390767.P7294743232023992105

`A081604(floor(sqrt(n)))`
-/

namespace A390767.P7294743232023992105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (Nat.sqrt n)

end

end A390767.P7294743232023992105

noncomputable section

/-- A390767: Number of digits in base-9 representation of n.

Offset 0, canonical program `A390767.P7294743232023992105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390767 (n : ℕ) : ℤ :=
  A390767.P7294743232023992105.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391502.P16587956580403437799

`A102283(n)*A011582(n)`
-/

namespace A391502.P16587956580403437799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n * A011582 n

end

end A391502.P16587956580403437799

noncomputable section

/-- A391502: a(n) = Kronecker symbol (33/n).

Offset 0, canonical program `A391502.P16587956580403437799`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391502 (n : ℕ) : ℤ :=
  A391502.P16587956580403437799.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391502.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391614.P9333302647466192623

`A356874(n)%2`
-/

namespace A391614.P9333302647466192623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356874 n) 2

end

end A391614.P9333302647466192623

noncomputable section

/-- A391614: a(4n) = a(2n+a(n)), a(4n+2) = a(2n+1-a(n)) and a(2n+1) = 1-a(2n), with a(0) = 0.

Offset 0, canonical program `A391614.P9333302647466192623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391614 (n : ℕ) : ℤ :=
  A391614.P9333302647466192623.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391637.P2302561987821921609

`a(n-1)+A094345(n)` with `a(0)=0`
-/

namespace A391637.P2302561987821921609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A094345 n

end

end A391637.P2302561987821921609

noncomputable section

/-- A391637: Partial sums of A094345.

Offset 0, canonical program `A391637.P2302561987821921609`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391637 (n : ℕ) : ℤ :=
  A391637.P2302561987821921609.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391683.P9562436176935939481

`A063759(n)-A164001(n+1)`
-/

namespace A391683.P9562436176935939481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n - A164001 (n + 1)

end

end A391683.P9562436176935939481

noncomputable section

/-- A391683: Number of integer compositions of n that are the first sums of some composition.

Offset 1, canonical program `A391683.P9562436176935939481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A391683 (n : ℕ) : ℤ :=
  A391683.P9562436176935939481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A391683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391962.P2553170299100446233

`A228577(Δ[n²])`
-/

namespace A391962.P2553170299100446233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228577 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A391962.P2553170299100446233

noncomputable section

/-- A391962: a(n) = Sum_{k=0..n} (k+1) * binomial(k,2*(n-k)).

Offset 0, canonical program `A391962.P2553170299100446233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A391962 (n : ℕ) : ℤ :=
  A391962.P2553170299100446233.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A391962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392116.P7884063924206955522

`Δ[floor(A000040(n+1)/5)]`
-/

namespace A392116.P7884063924206955522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392116.P7884063924206955522

noncomputable section

/-- A392116: a(n) = f(n+1) - f(n), where f(n) = floor(prime(n)/5).

Offset 1, canonical program `A392116.P7884063924206955522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392116 (n : ℕ) : ℤ :=
  A392116.P7884063924206955522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392221.P1263781422373612323

`A070939(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A392221.P1263781422373612323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A070939 n + a (n - 2)

end

end A392221.P1263781422373612323

noncomputable section

/-- A392221: Sum of depths of leaves in a complete binary tree with n nodes.

Offset 1, canonical program `A392221.P1263781422373612323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392221 (n : ℕ) : ℤ :=
  A392221.P1263781422373612323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392275.P6230307979190573459

`ceil(A051903(n+1)/3)`
-/

namespace A392275.P6230307979190573459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051903 (n + 1) : ℚ) / 3⌉

end

end A392275.P6230307979190573459

noncomputable section

/-- A392275: The maximum exponent in the prime factorization of the smallest number whose cube is divisible by n.

Offset 1, canonical program `A392275.P6230307979190573459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392275 (n : ℕ) : ℤ :=
  A392275.P6230307979190573459.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392275.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392276.P5223539805736873685

`floor(A051903(n+1)/2)`
-/

namespace A392276.P5223539805736873685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051903 (n + 1) : ℚ) / 2⌋

end

end A392276.P5223539805736873685

noncomputable section

/-- A392276: The maximum exponent in the prime factorization of the square root of the largest square dividing n.

Offset 1, canonical program `A392276.P5223539805736873685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392276 (n : ℕ) : ℤ :=
  A392276.P5223539805736873685.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392276.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392281.P15155535942076632488

`A029837(A051903(n+2))`
-/

namespace A392281.P15155535942076632488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A051903 (n + 2)).toNat

end

end A392281.P15155535942076632488

noncomputable section

/-- A392281: a(n) = log_2(A392280(n)).

Offset 2, canonical program `A392281.P15155535942076632488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392281 (n : ℕ) : ℤ :=
  A392281.P15155535942076632488.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392356.P11729082620594076471

`A017877(5*n)`
-/

namespace A392356.P11729082620594076471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (5 * n)

end

end A392356.P11729082620594076471

noncomputable section

/-- A392356: a(n) = Sum_{k=0..floor(5*n/9)} binomial(k,5*n-9*k).

Offset 0, canonical program `A392356.P11729082620594076471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 637 terms. -/
def A392356 (n : ℕ) : ℤ :=
  A392356.P11729082620594076471.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 637 terms. -/
def A392356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392403.P11128076169223223160

`A370722(2*n)`
-/

namespace A392403.P11128076169223223160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370722 (2 * n)

end

end A392403.P11128076169223223160

noncomputable section

/-- A392403: a(n) = Sum_{k=0..floor(2*n/7)} binomial(2*n-4*k,3*k).

Offset 0, canonical program `A392403.P11128076169223223160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A392403 (n : ℕ) : ℤ :=
  A392403.P11128076169223223160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A392403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392421.P17507924577849544413

`(n+1)/3*A069981(n+1)`
-/

namespace A392421.P17507924577849544413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A069981 (n + 1) : ℚ)

end

end A392421.P17507924577849544413

noncomputable section

/-- A392421: Number of mutual-visibility sets of size 3 in the n-cycle graph.

Offset 1, canonical program `A392421.P17507924577849544413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392421 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392421.P17507924577849544413.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392433.P7928443320864027511

`A369815(6*n)`
-/

namespace A392433.P7928443320864027511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369815 (6 * n)

end

end A392433.P7928443320864027511

noncomputable section

/-- A392433: a(n) = Sum_{k=0..floor(n/2)} binomial(3*k,2*n-4*k).

Offset 0, canonical program `A392433.P7928443320864027511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A392433 (n : ℕ) : ℤ :=
  A392433.P7928443320864027511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A392433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392781.P4887849297626016326

`A004526(∑{p}[n+1, #*val(n+1, #)]+1-∑{e}[n+1, #])`
-/

namespace A392781.P4887849297626016326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 1 - ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A392781.P4887849297626016326

noncomputable section

/-- A392781: Length of the longest reduced word in the cyclic group C_n.

Offset 1, canonical program `A392781.P4887849297626016326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392781 (n : ℕ) : ℤ :=
  A392781.P4887849297626016326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393139.P6748471815250712617

`A005773(n+2)-A001405(n+1)`
-/

namespace A393139.P6748471815250712617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 2) - A001405 (n + 1)

end

end A393139.P6748471815250712617

noncomputable section

/-- A393139: Row sums of A393138.

Offset 0, canonical program `A393139.P6748471815250712617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A393139 (n : ℕ) : ℤ :=
  A393139.P6748471815250712617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A393139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393554.P14953028031373062451

`A029252(2*n)`
-/

namespace A393554.P14953028031373062451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029252 (2 * n)

end

end A393554.P14953028031373062451

noncomputable section

/-- A393554: Number of ways, up to rotations and reflections, to distribute n guards on the corners and walls of an equilateral triangle castle so that each wall has an equal number of guards.

Offset 0, canonical program `A393554.P14953028031373062451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A393554 (n : ℕ) : ℤ :=
  A393554.P14953028031373062451.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A393554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393945.P2240198450366095358

`A104767(n)+A011782(n)`
-/

namespace A393945.P2240198450366095358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104767 n + A011782 n

end

end A393945.P2240198450366095358

noncomputable section

/-- A393945: Number of binary words of length n with an even number of occurrences of subword 101.

Offset 0, canonical program `A393945.P2240198450366095358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A393945 (n : ℕ) : ℤ :=
  A393945.P2240198450366095358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A393945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394240.P15634924062511509081

`A241199(n+1)+A194073(n+1)`
-/

namespace A394240.P15634924062511509081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241199 (n + 1) + A194073 (n + 1)

end

end A394240.P15634924062511509081

noncomputable section

/-- A394240: Number of regions formed by extending the faces of a regular n-gonal pyramid.

Offset 3, canonical program `A394240.P15634924062511509081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394240 (n : ℕ) : ℤ :=
  A394240.P15634924062511509081.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394246.P12221301581339972486

`ceil(A397107(n)/3)`
-/

namespace A394246.P12221301581339972486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A397107 n : ℚ) / 3⌉

end

end A394246.P12221301581339972486

noncomputable section

/-- A394246: Upper (1/3,2/3) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A394246.P12221301581339972486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394246 (n : ℕ) : ℤ :=
  A394246.P12221301581339972486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394896.P2662756544387131280

`(n+1)*A351105(n+1)`
-/

namespace A394896.P2662756544387131280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A351105 (n + 1)

end

end A394896.P2662756544387131280

noncomputable section

/-- A394896: a(n) = n*n*(n+1)*(n+2)*(n+3)*(2n+1)*(2n+3)*(2n+5)*(35*n^2-21*n+4)/45360.

Offset 1, canonical program `A394896.P2662756544387131280`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351105, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394896 (n : ℕ) : ℤ :=
  A394896.P2662756544387131280.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351105, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394896.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395101.P16581405830071828920

`A016777(n)%A182770(n+1)`
-/

namespace A395101.P16581405830071828920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016777 n) (A182770 (n + 1))

end

end A395101.P16581405830071828920

noncomputable section

/-- A395101: Indices k such that A080764(k) = 1.

Offset 1, canonical program `A395101.P16581405830071828920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395101 (n : ℕ) : ℤ :=
  A395101.P16581405830071828920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395108.P9114937873138834343

`2*A135094(n)+1`
-/

namespace A395108.P9114937873138834343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135094 n + 1

end

end A395108.P9114937873138834343

noncomputable section

/-- A395108: Number of points covered by a minimal level n H-Tree on a square lattice.

Offset 0, canonical program `A395108.P9114937873138834343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A395108 (n : ℕ) : ℤ :=
  A395108.P9114937873138834343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A395108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395196.P8247454891973141250

`4*A110611(n+1)-2*(n+1)*(n+2)+n+1`
-/

namespace A395196.P8247454891973141250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A110611 (n + 1) - (2 * ((n + 1) * (n + 2)) : ℤ) + (n + 1 : ℤ)

end

end A395196.P8247454891973141250

noncomputable section

/-- A395196: Minimal value of Sum_{i=1..n} p(i)*p(i+1), where p(n+1)=p(1), as p ranges over all permutations of odd numbers {1,3,...,2*n-1}.

Offset 1, canonical program `A395196.P8247454891973141250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395196 (n : ℕ) : ℤ :=
  A395196.P8247454891973141250.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395535.P38086071388283955

`A003188(A059029(n))`
-/

namespace A395535.P38086071388283955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A059029 n).toNat

end

end A395535.P38086071388283955

noncomputable section

/-- A395535: a(n) = (n XOR n*2+1) for odd n, (n XOR n/2) for even n.

Offset 0, canonical program `A395535.P38086071388283955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395535 (n : ℕ) : ℤ :=
  A395535.P38086071388283955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396637.P18262143251193077548

`A068293(n+1)-A168193(n)`
-/

namespace A396637.P18262143251193077548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068293 (n + 1) - A168193 n

end

end A396637.P18262143251193077548

noncomputable section

/-- A396637: Number of elements of geodesic length n in the braid group B_3.

Offset 0, canonical program `A396637.P18262143251193077548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A396637 (n : ℕ) : ℤ :=
  A396637.P18262143251193077548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A396637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396811.P3366068091821481228

`A144065(n)-A265430(n)`
-/

namespace A396811.P3366068091821481228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144065 n - A265430 n

end

end A396811.P3366068091821481228

noncomputable section

/-- A396811: Lower (1,1/2) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A396811.P3366068091821481228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396811 (n : ℕ) : ℤ :=
  A396811.P3366068091821481228.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396812.P7981673423103489573

`A186423(n)-A004526(n)`
-/

namespace A396812.P7981673423103489573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 n - A004526 n

end

end A396812.P7981673423103489573

noncomputable section

/-- A396812: Upper (1,1/2) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A396812.P7981673423103489573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396812 (n : ℕ) : ℤ :=
  A396812.P7981673423103489573.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396835.P262963763489113340

`A036407(A032766(n))`
-/

namespace A396835.P262963763489113340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036407 (A032766 n).toNat

end

end A396835.P262963763489113340

noncomputable section

/-- A396835: Upper (2/3,1/3) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A396835.P262963763489113340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A396835 (n : ℕ) : ℤ :=
  A396835.P262963763489113340.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A396835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397111.P2464221293818646851

`∩[A184792(n+1), A184794(n+1)]`
-/

namespace A397111.P2464221293818646851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397111.P2464221293818646851

noncomputable section

/-- A397111: Numbers k such that A000201(k) and A001950(k) are both prime.

Offset 1, canonical program `A397111.P2464221293818646851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. -/
def A397111 (n : ℕ) : ℤ :=
  (A397111.P2464221293818646851.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. -/
def A397111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397424.P11634624968641727163

`A074854(n+1)%(n+1)`
-/

namespace A397424.P11634624968641727163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074854 (n + 1)) (n + 1 : ℤ)

end

end A397424.P11634624968641727163

noncomputable section

/-- A397424: a(n) = A074854(n) mod n.

Offset 1, canonical program `A397424.P11634624968641727163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A397424 (n : ℕ) : ℤ :=
  A397424.P11634624968641727163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A397424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397467.P13568654563015753494

`A000040(A001952(n+1))`
-/

namespace A397467.P13568654563015753494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001952 (n + 1)).toNat

end

end A397467.P13568654563015753494

noncomputable section

/-- A397467: a(n) = prime(2n + floor(n*sqrt(2))).

Offset 1, canonical program `A397467.P13568654563015753494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2929 terms. -/
def A397467 (n : ℕ) : ℤ :=
  A397467.P13568654563015753494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2929 terms. -/
def A397467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397468.P17706950763602875033

`A000040(floor((n+1)*sqrt(3)))`
-/

namespace A397468.P17706950763602875033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat

end

end A397468.P17706950763602875033

noncomputable section

/-- A397468: a(n) = prime(floor(n*sqrt(3))).

Offset 1, canonical program `A397468.P17706950763602875033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5774 terms. -/
def A397468 (n : ℕ) : ℤ :=
  A397468.P17706950763602875033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5774 terms. -/
def A397468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397518.P17952571297489702475

`A318937(n)%7`
-/

namespace A397518.P17952571297489702475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318937 n) 7

end

end A397518.P17952571297489702475

noncomputable section

/-- A397518: a(n) is the number of integer solutions of x^2 + 7*y^2 = 2*n + 1.

Offset 0, canonical program `A397518.P17952571297489702475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A397518 (n : ℕ) : ℤ :=
  A397518.P17952571297489702475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A397518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397606.P554892582912637438

`gcd(2, ∏{p}[n, #])*A011782(A011371(n))`
-/

namespace A397606.P554892582912637438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ) * A011782 (A011371 n).toNat

end

end A397606.P554892582912637438

noncomputable section

/-- A397606: a(n) = denominator of A069835(n)/2^n.

Offset 0, canonical program `A397606.P554892582912637438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A397606 (n : ℕ) : ℤ :=
  A397606.P554892582912637438.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A397606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397616.P364916226218916289

`A000040(comp[floor(n*sqrt(5))])`
-/

namespace A397616.P364916226218916289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A397616.P364916226218916289

noncomputable section

/-- A397616: a(n) = prime(floor(n*r)), where r = (5 + sqrt(5))/4.

Offset 1, canonical program `A397616.P364916226218916289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5528 terms. -/
def A397616 (n : ℕ) : ℤ :=
  A397616.P364916226218916289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5528 terms. -/
def A397616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397617.P18291588646543566020

`A000040(A022843(n+1))`
-/

namespace A397617.P18291588646543566020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A022843 (n + 1)).toNat

end

end A397617.P18291588646543566020

noncomputable section

/-- A397617: a(n) = prime(floor(n*e)).

Offset 1, canonical program `A397617.P18291588646543566020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397617 (n : ℕ) : ℤ :=
  A397617.P18291588646543566020.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397617.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397627.P57665162522871449

`A000040(A026351(n))`
-/

namespace A397627.P57665162522871449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A026351 n).toNat

end

end A397627.P57665162522871449

noncomputable section

/-- A397627: a(n) = prime(A026351(n)).

Offset 1, canonical program `A397627.P57665162522871449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6181 terms. -/
def A397627 (n : ℕ) : ℤ :=
  A397627.P57665162522871449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6181 terms. -/
def A397627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397787.P9925276150095344826

`∑{d}[n+1, A007427(#)*A080513((n+1)/#-1)]`
-/

namespace A397787.P9925276150095344826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A080513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A397787.P9925276150095344826

noncomputable section

/-- A397787: Number of even primitive Dirichlet characters modulo n.

Offset 1, canonical program `A397787.P9925276150095344826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397787 (n : ℕ) : ℤ :=
  A397787.P9925276150095344826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397788.P10557389323205216915

`∑{d}[n+1, A004526(#-1)*A007427((n+1)/#)]`
-/

namespace A397788.P10557389323205216915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004526 (d - 1) * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397788.P10557389323205216915

noncomputable section

/-- A397788: Number of odd primitive Dirichlet characters modulo n.

Offset 1, canonical program `A397788.P10557389323205216915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397788 (n : ℕ) : ℤ :=
  A397788.P10557389323205216915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398470.P15258585584443073451

`A036486(A000982(n+1))-A036486(n+1)`
-/

namespace A398470.P15258585584443073451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036486 (A000982 (n + 1)).toNat - A036486 (n + 1)

end

end A398470.P15258585584443073451

noncomputable section

/-- A398470: Number of increasing 3-term arithmetic progressions in an n^3 cube.

Offset 1, canonical program `A398470.P15258585584443073451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A398470 (n : ℕ) : ℤ :=
  A398470.P15258585584443073451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A398470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398709.P7989658470484696830

`A159289(n)-1`
-/

namespace A398709.P7989658470484696830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159289 n - 1

end

end A398709.P7989658470484696830

noncomputable section

/-- A398709: a(n) = floor(((5 + sqrt(17))/2)^n).

Offset 1, canonical program `A398709.P7989658470484696830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A159289, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398709 (n : ℕ) : ℤ :=
  A398709.P7989658470484696830.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A159289, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398709.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395829.P11120994273887423255

`8^n-A395831(n)`
-/

namespace A395829.P11120994273887423255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) - A395831 n

end

end A395829.P11120994273887423255

noncomputable section

/-- A395829: Number of octal strings of length n that contain a specific string xx (where x is a single digit).

Offset 0, canonical program `A395829.P11120994273887423255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395831, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395829 (n : ℕ) : ℤ :=
  A395829.P11120994273887423255.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395831, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395829.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395496.P3662284544009875402

`A023900(n+1)*A112526(n+1)`
-/

namespace A395496.P3662284544009875402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) * A112526 (n + 1)

end

end A395496.P3662284544009875402

noncomputable section

/-- A395496: a(n) = Sum_{d|n} gcd(d,n/d)*mu(d).

Offset 1, canonical program `A395496.P3662284544009875402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395496 (n : ℕ) : ℤ :=
  A395496.P3662284544009875402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396237.P5450698312826948600

`A169810(n)-A396236(n)`
-/

namespace A396237.P5450698312826948600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169810 n - A396236 n

end

end A396237.P5450698312826948600

noncomputable section

/-- A396237: a(n) = n AND NOT n^2.

Offset 0, canonical program `A396237.P5450698312826948600`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396237 (n : ℕ) : ℤ :=
  A396237.P5450698312826948600.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396237.provenance : SequenceMachineLib.Provenance := .conditional

