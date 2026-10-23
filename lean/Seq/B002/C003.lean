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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A152762.P705449962660149675

`A001065(A000108(n))`
-/

namespace A152762.P705449962660149675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000108 n).toNat

end

end A152762.P705449962660149675

noncomputable section

/-- A152762: Sum of proper divisors of Catalan number A000108(n).

Offset 0, canonical program `A152762.P705449962660149675`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152762 (n : ℕ) : ℤ :=
  A152762.P705449962660149675.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152762.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152982.P6897704514964440160

`A001065(A001006(n))`
-/

namespace A152982.P6897704514964440160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A001006 n).toNat

end

end A152982.P6897704514964440160

noncomputable section

/-- A152982: Sum of proper divisors of Motzkin number A001006(n).

Offset 0, canonical program `A152982.P6897704514964440160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152982 (n : ℕ) : ℤ :=
  A152982.P6897704514964440160.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152982.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153175.P17504426682200025904

`A005248(n+1)+A087215(n+1)-(-1)^(n+1)*A056854(n+1)-(-1)^(n+1)`
-/

namespace A153175.P17504426682200025904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) + A087215 (n + 1) - (-1) ^ (n + 1) * A056854 (n + 1) - (-1) ^ (n + 1)

end

end A153175.P17504426682200025904

noncomputable section

/-- A153175: a(n) = L(7*n)/L(n) where L(n) = Lucas number A000204(n).

Offset 1, canonical program `A153175.P17504426682200025904`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153175 (n : ℕ) : ℤ :=
  A153175.P17504426682200025904.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153175.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153177.P1118912484270809134

`1-(-1)^(n+1)*A087215(n+1)-(-1)^(n+1)*A005248(n+1)+A056854(n+1)+A087265(n+1)`
-/

namespace A153177.P1118912484270809134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (-1) ^ (n + 1) * A087215 (n + 1) - (-1) ^ (n + 1) * A005248 (n + 1) + A056854 (n + 1) + A087265 (n + 1)

end

end A153177.P1118912484270809134

noncomputable section

/-- A153177: a(n) = L(9*n)/L(n) where L(n) = Lucas number A000204(n).

Offset 1, canonical program `A153177.P1118912484270809134`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153177 (n : ℕ) : ℤ :=
  A153177.P1118912484270809134.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153177.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153824.P9864172349537721965

`A001065(A000142(n))`
-/

namespace A153824.P9864172349537721965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000142 n).toNat

end

end A153824.P9864172349537721965

noncomputable section

/-- A153824: Sum of proper divisors of n!: a(n) = sigma(n!) - n!.

Offset 0, canonical program `A153824.P9864172349537721965`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153824 (n : ℕ) : ℤ :=
  A153824.P9864172349537721965.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153848.P12709393412551249424

`21*A094028(n)`
-/

namespace A153848.P12709393412551249424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A094028 n

end

end A153848.P12709393412551249424

noncomputable section

/-- A153848: a(n) = 7*(10^(2*n) - 1)/33.

Offset 1, canonical program `A153848.P12709393412551249424`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153848 (n : ℕ) : ℤ :=
  A153848.P12709393412551249424.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153848.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156641.P17900009512747102704

`13*A094028(n)`
-/

namespace A156641.P17900009512747102704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A094028 n

end

end A156641.P17900009512747102704

noncomputable section

/-- A156641: a(n) = 13*(100^(n+1) - 1)/99.

Offset 0, canonical program `A156641.P17900009512747102704`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156641 (n : ℕ) : ℤ :=
  A156641.P17900009512747102704.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156641.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157687.P3194273760277078501

`1-A156728(n+1)`
-/

namespace A157687.P3194273760277078501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A156728 (n + 1)

end

end A157687.P3194273760277078501

noncomputable section

/-- A157687: a(n) = n - A054353(A156351(n)).

Offset 1, canonical program `A157687.P3194273760277078501`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157687 (n : ℕ) : ℤ :=
  A157687.P3194273760277078501.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157687.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158916.P6269727776857276970

`(-1)^n*A154589(n)+A099838(n+4)`
-/

namespace A158916.P6269727776857276970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A154589 n + A099838 (n + 4)

end

end A158916.P6269727776857276970

noncomputable section

/-- A158916: Inverse binomial transform of A153130.

Offset 0, canonical program `A158916.P6269727776857276970`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158916 (n : ℕ) : ℤ :=
  A158916.P6269727776857276970.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158916.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159918.P5263633765838771024

`A000120(A000290(n))`
-/

namespace A159918.P5263633765838771024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000290 n).toNat

end

end A159918.P5263633765838771024

noncomputable section

/-- A159918: Number of ones in binary representation of n^2.

Offset 0, canonical program `A159918.P5263633765838771024`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159918 (n : ℕ) : ℤ :=
  A159918.P5263633765838771024.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159918.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160429.P17383197603716212150

`8*7^A000120(n)`
-/

namespace A160429.P17383197603716212150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * (7 : ℚ) ^ (A000120 n : ℤ)

end

end A160429.P17383197603716212150

noncomputable section

/-- A160429: First differences of A160428.

Offset 1, canonical program `A160429.P17383197603716212150`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160429 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160429.P17383197603716212150.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160429.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161343.P8410613981469799795

`A000420(A000120(n))`
-/

namespace A161343.P8410613981469799795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A000120 n).toNat

end

end A161343.P8410613981469799795

noncomputable section

/-- A161343: a(n) = 7^A000120(n).

Offset 0, canonical program `A161343.P8410613981469799795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161343 (n : ℕ) : ℤ :=
  A161343.P8410613981469799795.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161765.P724116838241174089

`A000120(n+1)*ceil((n+1)/A000120(n+1))`
-/

namespace A161765.P724116838241174089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) * ⌈(n + 1 : ℚ) / (A000120 (n + 1) : ℚ)⌉

end

end A161765.P724116838241174089

noncomputable section

/-- A161765: a(n) is the smallest multiple of {the number of 1's in the binary representation of n} that is >= n.

Offset 1, canonical program `A161765.P724116838241174089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161765 (n : ℕ) : ℤ :=
  A161765.P724116838241174089.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161765.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161770.P15933421977073873557

`10*A124166(n+1)`
-/

namespace A161770.P15933421977073873557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A124166 (n + 1)

end

end A161770.P15933421977073873557

noncomputable section

/-- A161770: n 1's followed by three 0's.

Offset 1, canonical program `A161770.P15933421977073873557`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161770 (n : ℕ) : ℤ :=
  A161770.P15933421977073873557.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161770.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162551.P10524967716150044895

`2*A001791(n)`
-/

namespace A162551.P10524967716150044895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001791 n

end

end A162551.P10524967716150044895

noncomputable section

/-- A162551: a(n) = 2 * C(2*n,n-1).

Offset 0, canonical program `A162551.P10524967716150044895`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162551 (n : ℕ) : ℤ :=
  A162551.P10524967716150044895.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A164533.P5622096095032997703

`A051027(n+1)*A000203(n+1)`
-/

namespace A164533.P5622096095032997703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) * A000203 (n + 1)

end

end A164533.P5622096095032997703

noncomputable section

/-- A164533: a(n) = sigma(sigma(n))*sigma(n).

Offset 1, canonical program `A164533.P5622096095032997703`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A164533 (n : ℕ) : ℤ :=
  A164533.P5622096095032997703.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A164533.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165351.P14190395736733323369

`A026741(3*n)`
-/

namespace A165351.P14190395736733323369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (3 * n)

end

end A165351.P14190395736733323369

noncomputable section

/-- A165351: Numerator of 3*n/2.

Offset 0, canonical program `A165351.P14190395736733323369`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165351 (n : ℕ) : ℤ :=
  A165351.P14190395736733323369.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165367.P11038043711499478741

`A026741(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165367.P11038043711499478741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (3 * n + 2)

end

end A165367.P11038043711499478741

noncomputable section

/-- A165367: Trisection a(n) = A026741(3n + 2).

Offset 0, canonical program `A165367.P11038043711499478741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165367 (n : ℕ) : ℤ :=
  A165367.P11038043711499478741.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166232.P12945894669893910141

`A166231(n)/4^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166232.P12945894669893910141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166231 n : ℚ) / (4 ^ n : ℚ)

end

end A166232.P12945894669893910141

noncomputable section

/-- A166232: a(n) = A166231(n)/4^n.

Offset 0, canonical program `A166232.P12945894669893910141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166232 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166232.P12945894669893910141.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166312.P18179176690285467786

`A000120(A000326(n))`
-/

namespace A166312.P18179176690285467786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000326 n).toNat

end

end A166312.P18179176690285467786

noncomputable section

/-- A166312: Number of 1's in binary expansion of A000326(n).

Offset 0, canonical program `A166312.P18179176690285467786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166312 (n : ℕ) : ℤ :=
  A166312.P18179176690285467786.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166312.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166314.P17635709383241894212

`A000120(A000124(n))`
-/

namespace A166314.P17635709383241894212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000124 n).toNat

end

end A166314.P17635709383241894212

noncomputable section

/-- A166314: Number of 1's in binary expansion of A000124(n).

Offset 0, canonical program `A166314.P17635709383241894212`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166314 (n : ℕ) : ℤ :=
  A166314.P17635709383241894212.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166314.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A171638.P8823395210099823483

`A171621(n+2)²`
-/

namespace A171638.P8823395210099823483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171621 (n + 2) ^ 2

end

end A171638.P8823395210099823483

noncomputable section

/-- A171638: Denominator of 1/(n-2)^2 - 1/(n+2)^2.

Offset 2, canonical program `A171638.P8823395210099823483`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171638 (n : ℕ) : ℤ :=
  A171638.P8823395210099823483.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171638.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A172060.P5248690933070459008

`A002457(n)-A000302(n)`
-/

namespace A172060.P5248690933070459008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n - A000302 n

end

end A172060.P5248690933070459008

noncomputable section

/-- A172060: The number of returns to the origin in all possible one-dimensional walks of length 2n.

Offset 0, canonical program `A172060.P5248690933070459008`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172060 (n : ℕ) : ℤ :=
  A172060.P5248690933070459008.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A172392.P14099812267270023863

`(n+1)*A005568(n)`
-/

namespace A172392.P14099812267270023863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005568 n

end

end A172392.P14099812267270023863

noncomputable section

/-- A172392: a(n) = C(2n,n)*C(2n+2,n+1)/(n+2).

Offset 0, canonical program `A172392.P14099812267270023863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172392 (n : ℕ) : ℤ :=
  A172392.P14099812267270023863.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172392.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173142.P14046469073702964188

`2*(n+1)^(n+1)-A001923(n+1)`
-/

namespace A173142.P14046469073702964188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ (n + 1) : ℤ) - A001923 (n + 1)

end

end A173142.P14046469073702964188

noncomputable section

/-- A173142: a(n) = n^n - (n-1)^(n-1) - (n-2)^(n-2) - ... - 1.

Offset 1, canonical program `A173142.P14046469073702964188`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173142 (n : ℕ) : ℤ :=
  A173142.P14046469073702964188.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173525.P12961577271591045237

`1+A053824(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173525.P12961577271591045237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A053824 n

end

end A173525.P12961577271591045237

noncomputable section

/-- A173525: a(n) = 1 + A053824(n-1), where A053824 = sum of digits in base 5.

Offset 1, canonical program `A173525.P12961577271591045237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173525 (n : ℕ) : ℤ :=
  A173525.P12961577271591045237.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173525.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173862.P12177131599370371926

`A158772(n)/21`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173862.P12177131599370371926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158772 n : ℚ) / 21

end

end A173862.P12177131599370371926

noncomputable section

/-- A173862: a(n) = A158772(n-1)/21.

Offset 1, canonical program `A173862.P12177131599370371926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173862 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A173862.P12177131599370371926.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173862.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175548.P12094352498918124215

`A000120(A000203(n+1))`
-/

namespace A175548.P12094352498918124215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000203 (n + 1)).toNat

end

end A175548.P12094352498918124215

noncomputable section

/-- A175548: Binary weight of sigma(n).

Offset 1, canonical program `A175548.P12094352498918124215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175548 (n : ℕ) : ℤ :=
  A175548.P12094352498918124215.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178207.P6849069651503940150

`4*n-2*A000120(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178207.P6849069651503940150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 2 * A000120 n + 1

end

end A178207.P6849069651503940150

noncomputable section

/-- A178207: a(n) = 4*n - 2*A000120(n) + 1 where A000120(n) = number of nonzero digits in the binary representation of n.

Offset 0, canonical program `A178207.P6849069651503940150`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178207 (n : ℕ) : ℤ :=
  A178207.P6849069651503940150.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178207.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178601.P12753285223020669852

`A001065(A001065(n+2))`
-/

namespace A178601.P12753285223020669852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A001065 (n + 2)).toNat

end

end A178601.P12753285223020669852

noncomputable section

/-- A178601: a(n) = s(s(n)), where s(n) = sigma(n)-n = A001065(n).

Offset 2, canonical program `A178601.P12753285223020669852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178601 (n : ℕ) : ℤ :=
  A178601.P12753285223020669852.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179868.P12443573332757821551

`A010873(A000120(n))`
-/

namespace A179868.P12443573332757821551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A000120 n).toNat

end

end A179868.P12443573332757821551

noncomputable section

/-- A179868: (Number of 1's in the binary expansion of n) mod 4.

Offset 0, canonical program `A179868.P12443573332757821551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179868 (n : ℕ) : ℤ :=
  A179868.P12443573332757821551.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179868.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180270.P8396831548548584304

`A175110(n)*(A001844(n)*A000217(n))²`
-/

namespace A180270.P8396831548548584304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175110 n * (A001844 n * A000217 n) ^ 2

end

end A180270.P8396831548548584304

noncomputable section

/-- A180270: Integers of the form (k^12 - k^8 - k^4 + 1)/512.

Offset 1, canonical program `A180270.P8396831548548584304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180270 (n : ℕ) : ℤ :=
  A180270.P8396831548548584304.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180270.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A182310.P9353940830934403541

`A105081(a(n-1)+1)` with `a(0)=0`
-/

namespace A182310.P9353940830934403541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A105081 (a (n - 1) + 1).toNat

end

end A182310.P9353940830934403541

noncomputable section

/-- A182310: a(0)=0, a(n+1) = (a(n) XOR floor(a(n)/2)) + 1, where XOR is the bitwise exclusive-or operator.

Offset 0, canonical program `A182310.P9353940830934403541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182310 (n : ℕ) : ℤ :=
  A182310.P9353940830934403541.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182310.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A183039.P14868528515643785156

`A051064(n+1)*3^A051064(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A183039.P14868528515643785156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051064 (n + 1) : ℚ) * (3 : ℚ) ^ (A051064 (n + 1) : ℤ)

end

end A183039.P14868528515643785156

noncomputable section

/-- A183039: a(n) = A051064(n)*3^A051064(n) where A051064(n) equals the 3-adic valuation of 3n.

Offset 1, canonical program `A183039.P14868528515643785156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183039 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A183039.P14868528515643785156.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A183227.P8998500749623055226

`4*n+A053824(2^n-1)`
-/

namespace A183227.P8998500749623055226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + A053824 (2 ^ n - 1)

end

end A183227.P8998500749623055226

noncomputable section

/-- A183227: a(n) is the base-5 digit sum of 10^n-1.

Offset 0, canonical program `A183227.P8998500749623055226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183227 (n : ℕ) : ℤ :=
  A183227.P8998500749623055226.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183227.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A184423.P3303203828994434715

`A006480(n)*A000984(n)`
-/

namespace A184423.P3303203828994434715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 n * A000984 n

end

end A184423.P3303203828994434715

noncomputable section

/-- A184423: a(n) = (2*n)!*(3*n)!/n!^5.

Offset 0, canonical program `A184423.P3303203828994434715`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184423 (n : ℕ) : ℤ :=
  A184423.P3303203828994434715.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184423.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186231.P17956698847854566928

`A001791(2*n+1)`
-/

namespace A186231.P17956698847854566928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (2 * n + 1)

end

end A186231.P17956698847854566928

noncomputable section

/-- A186231: Expansion of ( 2F1([-1/4, 1/4]; [-1/2], 16*x) - 1 ) / (2*x).

Offset 0, canonical program `A186231.P17956698847854566928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186231 (n : ℕ) : ℤ :=
  A186231.P17956698847854566928.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186679.P16230820520944405747

`A116697(n+1)-A116697(n)`
-/

namespace A186679.P16230820520944405747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116697 (n + 1) - A116697 n

end

end A186679.P16230820520944405747

noncomputable section

/-- A186679: First differences of A116697.

Offset 0, canonical program `A186679.P16230820520944405747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186679 (n : ℕ) : ℤ :=
  A186679.P16230820520944405747.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186679.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187306.P13731077059909855300

`A005043(n+1)+(-1)^n`
-/

namespace A187306.P13731077059909855300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1) + (-1) ^ n

end

end A187306.P13731077059909855300

noncomputable section

/-- A187306: Alternating sum of Motzkin numbers A001006.

Offset 0, canonical program `A187306.P13731077059909855300`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187306 (n : ℕ) : ℤ :=
  A187306.P13731077059909855300.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187306.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A188653.P11362687780223873411

`A188652(n+2)-A188652(n+1)`
-/

namespace A188653.P11362687780223873411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188652 (n + 2) - A188652 (n + 1)

end

end A188653.P11362687780223873411

noncomputable section

/-- A188653: Second differences of A000463; first differences of A188652.

Offset 1, canonical program `A188653.P11362687780223873411`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188653 (n : ℕ) : ℤ :=
  A188653.P11362687780223873411.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188653.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A190620.P17543203208516142486

`A000225(A002024(n+1)+2)-A000079(A004736(n+1))`
-/

namespace A190620.P17543203208516142486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002024 (n + 1) + 2).toNat - A000079 (A004736 (n + 1)).toNat

end

end A190620.P17543203208516142486

noncomputable section

/-- A190620: Odd numbers with a single zero in their binary expansion.

Offset 1, canonical program `A190620.P17543203208516142486`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190620 (n : ℕ) : ℤ :=
  A190620.P17543203208516142486.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A191108.P16458009110707439268

`2*A191106(n+1)-1`
-/

namespace A191108.P16458009110707439268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191106 (n + 1) - 1

end

end A191108.P16458009110707439268

noncomputable section

/-- A191108: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-2 and 3x+2 are in a.

Offset 1, canonical program `A191108.P16458009110707439268`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191108 (n : ℕ) : ℤ :=
  A191108.P16458009110707439268.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191108.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A191405.P17460248013046071804

`A001951(n)+A001951(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191405.P17460248013046071804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + A001951 (n + 1)

end

end A191405.P17460248013046071804

noncomputable section

/-- A191405: A001951(n)+A001951(n+1).

Offset 0, canonical program `A191405.P17460248013046071804`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191405 (n : ℕ) : ℤ :=
  A191405.P17460248013046071804.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191405.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A191406.P11617354727610031530

`A001951(n)+A001951(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191406.P11617354727610031530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + A001951 (n + 2)

end

end A191406.P11617354727610031530

noncomputable section

/-- A191406: A001951(n)+A001951(n+2).

Offset 0, canonical program `A191406.P11617354727610031530`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191406 (n : ℕ) : ℤ :=
  A191406.P11617354727610031530.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191406.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A191407.P5240060521186810576

`A001951(n)+A001951(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191407.P5240060521186810576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + A001951 (n + 3)

end

end A191407.P5240060521186810576

noncomputable section

/-- A191407: A001951(n)+A001951(n+3).

Offset 0, canonical program `A191407.P5240060521186810576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191407 (n : ℕ) : ℤ :=
  A191407.P5240060521186810576.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192085.P15821628886213675605

`A000120(A000578(n))`
-/

namespace A192085.P15821628886213675605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000578 n).toNat

end

end A192085.P15821628886213675605

noncomputable section

/-- A192085: Number of ones in the binary expansion of n^3.

Offset 0, canonical program `A192085.P15821628886213675605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192085 (n : ℕ) : ℤ :=
  A192085.P15821628886213675605.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193657.P433001986972353019

`A114870(n)+n!`
-/

namespace A193657.P433001986972353019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114870 n + (Nat.factorial n : ℤ)

end

end A193657.P433001986972353019

noncomputable section

/-- A193657: First difference of A002627.

Offset 0, canonical program `A193657.P433001986972353019`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193657 (n : ℕ) : ℤ :=
  A193657.P433001986972353019.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A195462.P17303247732034193010

`A000178(n+1)*A001008(n+1)/A002805(n+1)`
-/

namespace A195462.P17303247732034193010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000178 (n + 1) * A001008 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)

end

end A195462.P17303247732034193010

noncomputable section

/-- A195462: 1!*2!*3!*...*n!*H(n); H(n) the n-th harmonic number.

Offset 1, canonical program `A195462.P17303247732034193010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195462 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A195462.P17303247732034193010.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195462.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A203307.P15403217758868856959

`1/2*A028365(n+1)`
-/

namespace A203307.P15403217758868856959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A028365 (n + 1) : ℚ)

end

end A203307.P15403217758868856959

noncomputable section

/-- A203307: a(n) = v(n+1)/(2*v(n)), where v = A203305.

Offset 1, canonical program `A203307.P15403217758868856959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203307 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A203307.P15403217758868856959.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203307.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 2, canonical program `A205593.P16905158844139717774`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A205593 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A205593.P16905158844139717774.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A205593.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A205958.P11855454581859241320

`A180000(n)*a(floor(n/2))²` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205958.P11855454581859241320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A180000 n * a ⌊(n : ℚ) / 2⌋.toNat ^ 2

end

end A205958.P11855454581859241320

noncomputable section

/-- A205958: a(0) = 1 and a(n) = A180000(n)*a(floor(n/2))^2 for n > 0.

Offset 0, canonical program `A205958.P11855454581859241320`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A205958 (n : ℕ) : ℤ :=
  A205958.P11855454581859241320.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A205958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A211394.P13856090702538416621

`A003057(n+2)*A002024(n+1)/2-A002024(n+1)*(-1)^A003056(n)-A004736(n+1)+2`
-/

namespace A211394.P13856090702538416621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) * A002024 (n + 1) : ℚ) / 2 - (A002024 (n + 1) : ℚ) * (-1 : ℚ) ^ (A003056 n : ℤ) - (A004736 (n + 1) : ℚ) + 2

end

end A211394.P13856090702538416621

noncomputable section

/-- A211394: T(n,k) = (k+n)*(k+n-1)/2-(k+n-1)*(-1)^(k+n)-k+2; n , k > 0, read by antidiagonals.

Offset 1, canonical program `A211394.P13856090702538416621`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211394 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A211394.P13856090702538416621.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211394.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212012.P10131555541362374622

`2*A004736(n+1)`
-/

namespace A212012.P10131555541362374622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004736 (n + 1)

end

end A212012.P10131555541362374622

noncomputable section

/-- A212012: Triangle read by rows in which row n lists the number of states of the subshells of the n-th shell of the nuclear shell model ordered by energy level in increasing order.

Offset 1, canonical program `A212012.P10131555541362374622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212012 (n : ℕ) : ℤ :=
  A212012.P10131555541362374622.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212012.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212503.P7074195460241346720

`A077043(n)²`
-/

namespace A212503.P7074195460241346720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n ^ 2

end

end A212503.P7074195460241346720

noncomputable section

/-- A212503: Number of (w,x,y,z) with all terms in {1,...,n} and w

Offset 0, canonical program `A212503.P7074195460241346720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212503 (n : ℕ) : ℤ :=
  A212503.P7074195460241346720.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212507.P15479428626439604042

`A006578(n)*A077043(n)`
-/

namespace A212507.P15479428626439604042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n * A077043 n

end

end A212507.P15479428626439604042

noncomputable section

/-- A212507: Number of (w,x,y,z) with all terms in {1,...,n} and w

Offset 0, canonical program `A212507.P15479428626439604042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212507 (n : ℕ) : ℤ :=
  A212507.P15479428626439604042.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212507.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214263.P14358253122449274088

`A010054(2*n+1)`
-/

namespace A214263.P14358253122449274088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (2 * n + 1)

end

end A214263.P14358253122449274088

noncomputable section

/-- A214263: Expansion of f(x^1, x^7) in powers of x where f() is Ramanujan's general theta function.

Offset 0, canonical program `A214263.P14358253122449274088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214263 (n : ℕ) : ℤ :=
  A214263.P14358253122449274088.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214264.P7340386951159269035

`A010054(2*n)`
-/

namespace A214264.P7340386951159269035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (2 * n)

end

end A214264.P7340386951159269035

noncomputable section

/-- A214264: Expansion of f(x^3, x^5) in powers of x where f() is Ramanujan's two-variable theta function.

Offset 0, canonical program `A214264.P7340386951159269035`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214264 (n : ℕ) : ℤ :=
  A214264.P7340386951159269035.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A215580.P15485213879133625661

`A005248(n+1)-A000034(n)`
-/

namespace A215580.P15485213879133625661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) - A000034 n

end

end A215580.P15485213879133625661

noncomputable section

/-- A215580: Partial sums of A215602.

Offset 0, canonical program `A215580.P15485213879133625661`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215580 (n : ℕ) : ℤ :=
  A215580.P15485213879133625661.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215580.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216243.P17518036523963729443

`A215602(n)+2`
-/

namespace A216243.P17518036523963729443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 n + 2

end

end A216243.P17518036523963729443

noncomputable section

/-- A216243: Partial sums of the squares of Lucas numbers (A000032).

Offset 0, canonical program `A216243.P17518036523963729443`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216243 (n : ℕ) : ℤ :=
  A216243.P17518036523963729443.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216243.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216685.P9601473456840992618

`A000120(n+a(n-1))` with `a(0)=0`
-/

namespace A216685.P9601473456840992618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000120 ((n : ℤ) + a (n - 1)).toNat

end

end A216685.P9601473456840992618

noncomputable section

/-- A216685: a(n) is the number of 1's in binary expansion of n + a(n-1), with a(0)=0.

Offset 0, canonical program `A216685.P9601473456840992618`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216685 (n : ℕ) : ℤ :=
  A216685.P9601473456840992618.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A217800.P12916482449186997636

`A006480(n+1)/((2+n)*(1+2*n)*(3+2*n))`
-/

namespace A217800.P12916482449186997636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 (n + 1) : ℚ) / ((2 + n) * (1 + 2 * n) * (3 + 2 * n) : ℚ)

end

end A217800.P12916482449186997636

noncomputable section

/-- A217800: Number of alternating permutations on 2n+1 letters that avoid a certain pattern of length 4 (see Lewis, 2012, Appendix, for precise definition).

Offset 0, canonical program `A217800.P12916482449186997636`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217800 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A217800.P12916482449186997636.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217800.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A219390.P17150077939141016358

`2*A219191(n+1)`
-/

namespace A219390.P17150077939141016358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219191 (n + 1)

end

end A219390.P17150077939141016358

noncomputable section

/-- A219390: Numbers k such that 14*k+1 is a square.

Offset 1, canonical program `A219390.P17150077939141016358`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219390 (n : ℕ) : ℤ :=
  A219390.P17150077939141016358.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219390.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220465.P11455344750540427665

`A004736(A004736(n+1))`
-/

namespace A220465.P11455344750540427665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A004736 (n + 1)).toNat

end

end A220465.P11455344750540427665

noncomputable section

/-- A220465: Reverse reluctant sequence of reverse reluctant sequence A004736.

Offset 1, canonical program `A220465.P11455344750540427665`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220465 (n : ℕ) : ℤ :=
  A220465.P11455344750540427665.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220465.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220466.P5608170771874935148

`(n+2)/2*A060818(n+1)/A060818(n)`
-/

namespace A220466.P5608170771874935148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * ((A060818 (n + 1) : ℚ) / (A060818 n : ℚ))

end

end A220466.P5608170771874935148

noncomputable section

/-- A220466: a((2*n-1)*2^p) = 4^p*(n-1) + 2^(p-1)*(1+2^p), p >= 0 and n >= 1.

Offset 1, canonical program `A220466.P5608170771874935148`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220466 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A220466.P5608170771874935148.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220466.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220556.P9202644970290283826

`(n+1)^A004736(n+1)`
-/

namespace A220556.P9202644970290283826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A220556.P9202644970290283826

noncomputable section

/-- A220556: Square array T(n,k) = ((n+k-1)*(n+k-2)/2+n)^k, n,k > 0 read by antidiagonals.

Offset 1, canonical program `A220556.P9202644970290283826`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220556 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A220556.P9202644970290283826.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220556.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A154293.P10379766137476135061

`A069497(n+1)/6`
-/

namespace A154293.P10379766137476135061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069497 (n + 1) : ℚ) / 6

end

end A154293.P10379766137476135061

noncomputable section

/-- A154293: Integers of the form t/6, where t is a triangular number (A000217).

Offset 1, canonical program `A154293.P10379766137476135061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A154293.P10379766137476135061.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156263.P6800040278020113094

`A000002(3*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156263.P6800040278020113094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (3 * (n + 1) - 1)

end

end A156263.P6800040278020113094

noncomputable section

/-- A156263: a(n)=A000002(3*n-1).

Offset 1, canonical program `A156263.P6800040278020113094`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156263 (n : ℕ) : ℤ :=
  A156263.P6800040278020113094.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156264.P13938307247188690438

`A000002(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156264.P13938307247188690438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (3 * n + 1)

end

end A156264.P13938307247188690438

noncomputable section

/-- A156264: a(n) = A000002(3*n-2), where A000002 is the Kolakoski sequence.

Offset 1, canonical program `A156264.P13938307247188690438`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156264 (n : ℕ) : ℤ :=
  A156264.P13938307247188690438.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161149.P17242516584261524791

`n!*A000909(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161149.P17242516584261524791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000909 n

end

end A161149.P17242516584261524791

noncomputable section

/-- A161149: a(n) = (2*n)!*(2*n+1)!/n! = n!*A000909(n).

Offset 0, canonical program `A161149.P17242516584261524791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161149 (n : ℕ) : ℤ :=
  A161149.P17242516584261524791.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161149.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161411.P3251608708821509679

`A048883(n)*4`
-/

namespace A161411.P3251608708821509679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n * 4

end

end A161411.P3251608708821509679

noncomputable section

/-- A161411: First differences of A160410.

Offset 1, canonical program `A161411.P3251608708821509679`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161411 (n : ℕ) : ℤ :=
  A161411.P3251608708821509679.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161411.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162349.P17912543935636946866

`3*A048883(n)`
-/

namespace A162349.P17912543935636946866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048883 n

end

end A162349.P17912543935636946866

noncomputable section

/-- A162349: First differences of A160412.

Offset 1, canonical program `A162349.P17912543935636946866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162349 (n : ℕ) : ℤ :=
  A162349.P17912543935636946866.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168380.P4939789133817210671

`A000292(n+1)+A027656(n)`
-/

namespace A168380.P4939789133817210671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + A027656 n

end

end A168380.P4939789133817210671

noncomputable section

/-- A168380: Row sums of A168281.

Offset 1, canonical program `A168380.P4939789133817210671`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168380 (n : ℕ) : ℤ :=
  A168380.P4939789133817210671.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168380.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A171405.P6422937175772318841

`A000203(n+1)-A178142(n+1)`
-/

namespace A171405.P6422937175772318841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A178142 (n + 1)

end

end A171405.P6422937175772318841

noncomputable section

/-- A171405: Sum of divisors of n, excluding divisors 2 and 3.

Offset 1, canonical program `A171405.P6422937175772318841`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171405 (n : ℕ) : ℤ :=
  A171405.P6422937175772318841.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171405.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173523.P2383759421144788857

`1+A053735(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173523.P2383759421144788857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A053735 n

end

end A173523.P2383759421144788857

noncomputable section

/-- A173523: 1+A053735(n-1), where A053735 is the sum-of-digits function in base 3.

Offset 1, canonical program `A173523.P2383759421144788857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173523 (n : ℕ) : ℤ :=
  A173523.P2383759421144788857.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173523.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173526.P10479073765119350543

`1+A053827(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173526.P10479073765119350543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A053827 n

end

end A173526.P10479073765119350543

noncomputable section

/-- A173526: a(n) = 1 + A053827(n-1), where A053827 is the sum-of-digits function in base 6.

Offset 1, canonical program `A173526.P10479073765119350543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173526 (n : ℕ) : ℤ :=
  A173526.P10479073765119350543.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173526.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174114.P14655313204998795187

`A193868(n+1)/2`
-/

namespace A174114.P14655313204998795187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193868 (n + 1) : ℚ) / 2

end

end A174114.P14655313204998795187

noncomputable section

/-- A174114: Even central polygonal numbers (A193868) divided by 2.

Offset 1, canonical program `A174114.P14655313204998795187`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174114 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174114.P14655313204998795187.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174114.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A177882.P5293616037841746258

`A001317(3*n)`
-/

namespace A177882.P5293616037841746258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (3 * n)

end

end A177882.P5293616037841746258

noncomputable section

/-- A177882: Trisection of A001317.

Offset 0, canonical program `A177882.P5293616037841746258`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177882 (n : ℕ) : ℤ :=
  A177882.P5293616037841746258.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177882.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A177897.P11526367913359067018

`A001317(7*n)`
-/

namespace A177897.P11526367913359067018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (7 * n)

end

end A177897.P11526367913359067018

noncomputable section

/-- A177897: Triangle of octanomial coefficients read by rows: n-th row is obtained by expanding ((1+x)*(1+x^2)*(1+x^4))^n mod 2 and converting to decimal.

Offset 0, canonical program `A177897.P11526367913359067018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177897 (n : ℕ) : ℤ :=
  A177897.P11526367913359067018.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177897.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179850.P949052103344405119

`A011558(n+3)`
-/

namespace A179850.P949052103344405119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (n + 3)

end

end A179850.P949052103344405119

noncomputable section

/-- A179850: Characteristic function of numbers that are congruent to {0, 1, 3, 4} mod 5.

Offset 0, canonical program `A179850.P949052103344405119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179850 (n : ℕ) : ℤ :=
  A179850.P949052103344405119.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179850.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180189.P10168693953757439281

`2*A000387(n+1)`
-/

namespace A180189.P10168693953757439281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000387 (n + 1)

end

end A180189.P10168693953757439281

noncomputable section

/-- A180189: Number of permutations of [n] having exactly 1 circular succession. A circular succession in a permutation p of [n] is either a pair p(i), p(i+1), where p(i+1)=p(i)+1 or the pair p(n), p(1) if p(1)=p(n)+1.

Offset 1, canonical program `A180189.P10168693953757439281`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180189 (n : ℕ) : ℤ :=
  A180189.P10168693953757439281.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180189.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181666.P404722025159454241

`(4*2^A055086(n)-2^A082375(n))/3`
-/

namespace A181666.P404722025159454241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (2 : ℚ) ^ (A055086 n : ℤ) - (2 : ℚ) ^ (A082375 n : ℤ)) / 3

end

end A181666.P404722025159454241

noncomputable section

/-- A181666: Numbers whose odd part is of the form (4^k-1)/3.

Offset 1, canonical program `A181666.P404722025159454241`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181666 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A181666.P404722025159454241.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187074.P12495670548098968

`A011655(n+1)*A152822(n+1)`
-/

namespace A187074.P12495670548098968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) * A152822 (n + 1)

end

end A187074.P12495670548098968

noncomputable section

/-- A187074: a(n) = 0 if and only if n is of the form 3*k or 4*k + 2, otherwise a(n) = 1.

Offset 1, canonical program `A187074.P12495670548098968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187074 (n : ℕ) : ℤ :=
  A187074.P12495670548098968.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187074.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A190640.P15798364428475001138

`A005823(2*(n+1))`
-/

namespace A190640.P15798364428475001138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (2 * (n + 1))

end

end A190640.P15798364428475001138

noncomputable section

/-- A190640: Numbers whose base-3 expansion ends in 2 and does not contain any 1's.

Offset 1, canonical program `A190640.P15798364428475001138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190640 (n : ℕ) : ℤ :=
  A190640.P15798364428475001138.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193293.P5334234728514628481

`A000593(A000045(n+1))`
-/

namespace A193293.P5334234728514628481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A000045 (n + 1)).toNat

end

end A193293.P5334234728514628481

noncomputable section

/-- A193293: Sum of odd divisors of Fibonacci(n).

Offset 1, canonical program `A193293.P5334234728514628481`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193293 (n : ℕ) : ℤ :=
  A193293.P5334234728514628481.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193337.P10860167010947937724

`A000593(A000203(n+1))`
-/

namespace A193337.P10860167010947937724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A000203 (n + 1)).toNat

end

end A193337.P10860167010947937724

noncomputable section

/-- A193337: Sum of odd divisors of sigma(n).

Offset 1, canonical program `A193337.P10860167010947937724`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193337 (n : ℕ) : ℤ :=
  A193337.P10860167010947937724.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193337.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A204556.P4855747009617410404

`A204557(n+1)-A045895(n+1)`
-/

namespace A204556.P4855747009617410404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204557 (n + 1) - A045895 (n + 1)

end

end A204556.P4855747009617410404

noncomputable section

/-- A204556: Left edge of the triangle A045975.

Offset 1, canonical program `A204556.P4855747009617410404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A204556 (n : ℕ) : ℤ :=
  A204556.P4855747009617410404.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A204556.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A204573.P913580374745478678

`floor(A055851(n+1)/6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A204573.P913580374745478678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055851 (n + 1) : ℚ) / 6⌋

end

end A204573.P913580374745478678

noncomputable section

/-- A204573: A204519(n)^2 = floor(A055851(n)/6): Squares which written in base 6, with some digit appended, yield another square.

Offset 1, canonical program `A204573.P913580374745478678`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A204573 (n : ℕ) : ℤ :=
  A204573.P913580374745478678.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A204573.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213064.P13019634568250474485

`2*A292272(n)`
-/

namespace A213064.P13019634568250474485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292272 n

end

end A213064.P13019634568250474485

noncomputable section

/-- A213064: Bitwise AND of 2n with the one's-complement of n.

Offset 0, canonical program `A213064.P13019634568250474485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213064 (n : ℕ) : ℤ :=
  A213064.P13019634568250474485.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213064.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214318.P2534198729933058842

`2*a(n-1)+A003842(n)` with `a(0)=1`
-/

namespace A214318.P2534198729933058842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A003842 n

end

end A214318.P2534198729933058842

noncomputable section

/-- A214318: Replace the word A214317(n) with its position in A007931.

Offset 1, canonical program `A214318.P2534198729933058842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214318 (n : ℕ) : ℤ :=
  A214318.P2534198729933058842.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214318.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A219843.P18379057056590791838

`A000225(n+1)-A001317(n)`
-/

namespace A219843.P18379057056590791838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A001317 n

end

end A219843.P18379057056590791838

noncomputable section

/-- A219843: Rows of A219463 seen as numbers in binary representation.

Offset 0, canonical program `A219843.P18379057056590791838`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219843 (n : ℕ) : ℤ :=
  A219843.P18379057056590791838.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152568.P4268834110349744832

`Δ[A034008(A004736(abs(1-n)+1))]`
-/

namespace A152568.P4268834110349744832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A004736 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152568.P4268834110349744832

noncomputable section

/-- A152568: Triangle T(n,k) read by rows: T(n,n) = -1, T(n,0) = 2^(n - 1), T(n,k) = -2^(n - k - 1), 1 <= k <= n - 1.

Offset 0, canonical program `A152568.P4268834110349744832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152568 (n : ℕ) : ℤ :=
  A152568.P4268834110349744832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152670.P12437644103347504857

`A000108(A062289(n+1))`
-/

namespace A152670.P12437644103347504857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A062289 (n + 1)).toNat

end

end A152670.P12437644103347504857

noncomputable section

/-- A152670: Even Catalan numbers.

Offset 1, canonical program `A152670.P12437644103347504857`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062289, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152670 (n : ℕ) : ℤ :=
  A152670.P12437644103347504857.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062289, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152678.P16261350358217221362

`A000203(A028983(n+1))`
-/

namespace A152678.P16261350358217221362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A028983 (n + 1)).toNat

end

end A152678.P16261350358217221362

noncomputable section

/-- A152678: Even members of A000203.

Offset 1, canonical program `A152678.P16261350358217221362`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028983, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152678 (n : ℕ) : ℤ :=
  A152678.P16261350358217221362.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028983, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152678.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152928.P14754759326661192641

`A005248(n+2)²+A001906(n+3)²`
-/

namespace A152928.P14754759326661192641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 2) ^ 2 + A001906 (n + 3) ^ 2

end

end A152928.P14754759326661192641

noncomputable section

/-- A152928: Number of sets (in the Hausdorff metric geometry) at each location between two sets defining a polygonal configuration consisting of two m-gonal polygonal components chained with string components of length 1 as m varies.

Offset 2, canonical program `A152928.P14754759326661192641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A152928 (n : ℕ) : ℤ :=
  A152928.P14754759326661192641.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A152928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153081.P13540850000672631907

`A101448(n+2)-1`
-/

namespace A153081.P13540850000672631907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 2) - 1

end

end A153081.P13540850000672631907

noncomputable section

/-- A153081: Nonnegative numbers k such that 2k + 13 is prime.

Offset 1, canonical program `A153081.P13540850000672631907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A153081 (n : ℕ) : ℤ :=
  A153081.P13540850000672631907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A153081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153129.P13567585466040387804

`comp[A105133(n+1)]`
-/

namespace A153129.P13567585466040387804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153129.P13567585466040387804

noncomputable section

/-- A153129: Numbers n such that 8*n + 5 is not prime.

Offset 1, canonical program `A153129.P13567585466040387804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153129 (n : ℕ) : ℤ :=
  (A153129.P13567585466040387804.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153134.P3803390437604555717

`A024898(n+1)+1`
-/

namespace A153134.P3803390437604555717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1) + 1

end

end A153134.P3803390437604555717

noncomputable section

/-- A153134: Numbers k such that 6k - 7 is prime.

Offset 1, canonical program `A153134.P3803390437604555717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153134 (n : ℕ) : ℤ :=
  A153134.P3803390437604555717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153142.P15201218157463627631

`A087734(n)+A003188(n-A087734(n))`
-/

namespace A153142.P15201218157463627631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 n + A003188 ((n : ℤ) - A087734 n).toNat

end

end A153142.P15201218157463627631

noncomputable section

/-- A153142: Permutation of nonnegative integers: A059893-conjugate of A153152.

Offset 0, canonical program `A153142.P15201218157463627631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153142 (n : ℕ) : ℤ :=
  A153142.P15201218157463627631.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153153.P13380444019182590244

`or(A038554(2*n+1), A053644(n))`
-/

namespace A153153.P13380444019182590244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038554 (2 * n + 1)) (A053644 n)

end

end A153153.P13380444019182590244

noncomputable section

/-- A153153: Permutation of natural numbers: A059893-conjugate of A003188.

Offset 0, canonical program `A153153.P13380444019182590244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153153 (n : ℕ) : ℤ :=
  A153153.P13380444019182590244.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153173.P9514743945125301852

`1+10*A085695(n)`
-/

namespace A153173.P9514743945125301852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 10 * A085695 n

end

end A153173.P9514743945125301852

noncomputable section

/-- A153173: a(n) = L(5*n)/L(n) where L(n) = n-th Lucas number A000032(n).

Offset 0, canonical program `A153173.P9514743945125301852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153173 (n : ℕ) : ℤ :=
  A153173.P9514743945125301852.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153173.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153267.P6837733007436105427

`A000032(2*(n+1))-A009117(n+2)`
-/

namespace A153267.P6837733007436105427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * (n + 1)) - A009117 (n + 2)

end

end A153267.P6837733007436105427

noncomputable section

/-- A153267: a(n) = -4*a(n-3) + 11*a(n-2) - a(n-1), a(0) = -5, a(1) = 39, a(2) = -110.

Offset 0, canonical program `A153267.P6837733007436105427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A153267 (n : ℕ) : ℤ :=
  A153267.P6837733007436105427.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A153267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153317.P12265112891409764898

`A010686(n)*A041049(n)`
-/

namespace A153317.P12265112891409764898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 n * A041049 n

end

end A153317.P12265112891409764898

noncomputable section

/-- A153317: Denominators of continued fraction convergents to sqrt(6/5).

Offset 0, canonical program `A153317.P12265112891409764898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A153317 (n : ℕ) : ℤ :=
  A153317.P12265112891409764898.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A153317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153347.P13382014231303859893

`comp[A089033(n+1)]+1`
-/

namespace A153347.P13382014231303859893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A153347.P13382014231303859893

noncomputable section

/-- A153347: Numbers n>0 such that 7*n-4 is not prime.

Offset 1, canonical program `A153347.P13382014231303859893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153347 (n : ℕ) : ℤ :=
  (A153347.P13382014231303859893.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153348.P12024770680681712102

`comp[A092022(n+1)]`
-/

namespace A153348.P12024770680681712102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153348.P12024770680681712102

noncomputable section

/-- A153348: Numbers k such that 16*k+3 is not prime.

Offset 1, canonical program `A153348.P12024770680681712102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153348 (n : ℕ) : ℤ :=
  (A153348.P12024770680681712102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153371.P4443474790677712850

`A153370(2*(n+1))`
-/

namespace A153371.P4443474790677712850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153370 (2 * (n + 1))

end

end A153371.P4443474790677712850

noncomputable section

/-- A153371: Number of zig-zag paths from top to bottom of a rectangle of width 11 with 2n rows whose color is that of the top right corner.

Offset 1, canonical program `A153371.P4443474790677712850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A153371 (n : ℕ) : ℤ :=
  A153371.P4443474790677712850.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A153371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153373.P17670144922407826206

`A153370(Δ[n²])`
-/

namespace A153373.P17670144922407826206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153370 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153373.P17670144922407826206

noncomputable section

/-- A153373: Number of zig-zag paths from top to bottom of a rectangle of width 11 with 2n-1 rows whose color is not that of the top right corner.

Offset 1, canonical program `A153373.P17670144922407826206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A153373 (n : ℕ) : ℤ :=
  A153373.P17670144922407826206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A153373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153383.P9115745439586942500

`comp[A110801(n+1)]`
-/

namespace A153383.P9115745439586942500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153383.P9115745439586942500

noncomputable section

/-- A153383: Numbers k such that 12*k+1 is not prime.

Offset 1, canonical program `A153383.P9115745439586942500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153383 (n : ℕ) : ℤ :=
  (A153383.P9115745439586942500.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153400.P11699944517976299925

`comp[A111094(n+1)]`
-/

namespace A153400.P11699944517976299925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153400.P11699944517976299925

noncomputable section

/-- A153400: Numbers k such that 18*k+1 is not prime.

Offset 1, canonical program `A153400.P11699944517976299925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153400 (n : ℕ) : ℤ :=
  (A153400.P11699944517976299925.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153481.P3996597360084470413

`A030078(n+1)-2`
-/

namespace A153481.P3996597360084470413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - 2

end

end A153481.P3996597360084470413

noncomputable section

/-- A153481: a(n) = prime(n)^3 - 2.

Offset 1, canonical program `A153481.P3996597360084470413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153481 (n : ℕ) : ℤ :=
  A153481.P3996597360084470413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153482.P18052968321130329475

`A030514(n+1)-8`
-/

namespace A153482.P18052968321130329475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) - 8

end

end A153482.P18052968321130329475

noncomputable section

/-- A153482: a(n) = prime(n)^4 - 8.

Offset 1, canonical program `A153482.P18052968321130329475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153482 (n : ℕ) : ℤ :=
  A153482.P18052968321130329475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153483.P8077417549685996379

`A001248(n+1)²-32`
-/

namespace A153483.P8077417549685996379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 - 32

end

end A153483.P8077417549685996379

noncomputable section

/-- A153483: a(n) = prime(n)^4 - 32.

Offset 1, canonical program `A153483.P8077417549685996379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153483 (n : ℕ) : ℤ :=
  A153483.P8077417549685996379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153484.P16027499122342455010

`A050997(n+1)-16*16/2`
-/

namespace A153484.P16027499122342455010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050997 (n + 1) : ℚ) - 16 * ((16 : ℚ) / 2)

end

end A153484.P16027499122342455010

noncomputable section

/-- A153484: a(n) = prime(n)^5 - 128.

Offset 1, canonical program `A153484.P16027499122342455010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153484 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A153484.P16027499122342455010.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153486.P10579548031634709284

`A001248(n+1)^3-512`
-/

namespace A153486.P10579548031634709284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 3 - 512

end

end A153486.P10579548031634709284

noncomputable section

/-- A153486: a(n) = prime(n)^6 - 512.

Offset 1, canonical program `A153486.P10579548031634709284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153486 (n : ℕ) : ℤ :=
  A153486.P10579548031634709284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153767.P9865033134181886686

`p?[A153766(n+1)]`
-/

namespace A153767.P9865033134181886686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153767.P9865033134181886686

noncomputable section

/-- A153767: Primes p such that 8*p - 9 is also prime.

Offset 1, canonical program `A153767.P9865033134181886686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1362 terms. -/
def A153767 (n : ℕ) : ℤ :=
  A153767.P9865033134181886686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1362 terms. -/
def A153767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153775.P10416961851045421435

`A005823(n+2)-A132140(n+1)`
-/

namespace A153775.P10416961851045421435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 2) - A132140 (n + 1)

end

end A153775.P10416961851045421435

noncomputable section

/-- A153775: Sequence S such that 1 is in S and if x is in S, then 3x-1 and 3x are in S.

Offset 1, canonical program `A153775.P10416961851045421435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153775 (n : ℕ) : ℤ :=
  A153775.P10416961851045421435.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153777.P14713501118659462030

`A033042(n+1)-A033042(n+1-A006257(n+1))`
-/

namespace A153777.P14713501118659462030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (n + 1) - A033042 ((n + 1 : ℤ) - A006257 (n + 1)).toNat

end

end A153777.P14713501118659462030

noncomputable section

/-- A153777: Sequence S such that 1 is in S and if x is in S, then 5x-1 and 5x+1 are in S.

Offset 1, canonical program `A153777.P14713501118659462030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A153777 (n : ℕ) : ℤ :=
  A153777.P14713501118659462030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A153777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154436.P18184337590076184170

`xor(n, floor(A092569(n)/2))`
-/

namespace A154436.P18184337590076184170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(A092569 n : ℚ) / 2⌋

end

end A154436.P18184337590076184170

noncomputable section

/-- A154436: Permutation of nonnegative integers induced by Lamplighter group generating wreath recursion, variant 1: a = s(a,b), b = (a,b), starting from the state a.

Offset 0, canonical program `A154436.P18184337590076184170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154436 (n : ℕ) : ℤ :=
  A154436.P18184337590076184170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154809.P10885830400059510628

`lt[1, A055945(n)²+1]`
-/

namespace A154809.P10885830400059510628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154809.P10885830400059510628

noncomputable section

/-- A154809: Numbers whose binary expansion is not palindromic.

Offset 1, canonical program `A154809.P10885830400059510628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154809 (n : ℕ) : ℤ :=
  (A154809.P10885830400059510628.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155067.P7765073929489632747

`A031131(2*n+1)`
-/

namespace A155067.P7765073929489632747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (2 * n + 1)

end

end A155067.P7765073929489632747

noncomputable section

/-- A155067: First differences of A031368.

Offset 1, canonical program `A155067.P7765073929489632747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155067 (n : ℕ) : ℤ :=
  A155067.P7765073929489632747.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155067.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A155124.P11009308192955337438

`A195084(A198954(n))`
-/

namespace A155124.P11009308192955337438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195084 (A198954 n).toNat

end

end A155124.P11009308192955337438

noncomputable section

/-- A155124: Triangle T(n, k) = 1-n if k=0 else 2, read by rows.

Offset 0, canonical program `A155124.P11009308192955337438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155124 (n : ℕ) : ℤ :=
  A155124.P11009308192955337438.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155213.P12581193989716260727

`(A000040(n+1)-A038194(n+1))/9`
-/

namespace A155213.P12581193989716260727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A038194 (n + 1) : ℚ) / 9

end

end A155213.P12581193989716260727

noncomputable section

/-- A155213: a(n) = floor(prime(n)/9).

Offset 1, canonical program `A155213.P12581193989716260727`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A038194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A155213 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A155213.P12581193989716260727.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A038194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A155213.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A155689.P2139899322435435333

`A020965(n+1)-A005187(n+1)`
-/

namespace A155689.P2139899322435435333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020965 (n + 1) - A005187 (n + 1)

end

end A155689.P2139899322435435333

noncomputable section

/-- A155689: a(n) = Sum_{k >= 1} floor(n * sqrt(2) / 2^k).

Offset 1, canonical program `A155689.P2139899322435435333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155689 (n : ℕ) : ℤ :=
  A155689.P2139899322435435333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155722.P2170865937026942924

`A101448(n+1)+1`
-/

namespace A155722.P2170865937026942924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 1) + 1

end

end A155722.P2170865937026942924

noncomputable section

/-- A155722: Numbers k such that 2*k + 9 is prime.

Offset 1, canonical program `A155722.P2170865937026942924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155722 (n : ℕ) : ℤ :=
  A155722.P2170865937026942924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155750.P12905767560372955311

`A031131(2*(n+1))`
-/

namespace A155750.P12905767560372955311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (2 * (n + 1))

end

end A155750.P12905767560372955311

noncomputable section

/-- A155750: First differences of A031215.

Offset 1, canonical program `A155750.P12905767560372955311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155750 (n : ℕ) : ℤ :=
  A155750.P12905767560372955311.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A155772.P13785239630017138189

`p?[A155771(n+1)]`
-/

namespace A155772.P13785239630017138189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155772.P13785239630017138189

noncomputable section

/-- A155772: Primes p such that 2*p^2+2*p-41 is a prime.

Offset 1, canonical program `A155772.P13785239630017138189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155772 (n : ℕ) : ℤ :=
  A155772.P13785239630017138189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155854.P8987642405607699949

`comp[A155853(n+1)]`
-/

namespace A155854.P8987642405607699949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155854.P8987642405607699949

noncomputable section

/-- A155854: Numbers k such that 13*k + 3 is not prime.

Offset 1, canonical program `A155854.P8987642405607699949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155854 (n : ℕ) : ℤ :=
  (A155854.P8987642405607699949.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155881.P7949998546200455293

`A061217(A000045(n+1))`
-/

namespace A155881.P7949998546200455293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061217 (A000045 (n + 1)).toNat

end

end A155881.P7949998546200455293

noncomputable section

/-- A155881: a(n) is the number of zeros needed to write the integers 1 through Fibonacci(n).

Offset 1, canonical program `A155881.P7949998546200455293`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155881 (n : ℕ) : ℤ :=
  A155881.P7949998546200455293.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155881.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156004.P9472163527140121150

`p?[A105133(n+1)-2]`
-/

namespace A156004.P9472163527140121150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156004.P9472163527140121150

noncomputable section

/-- A156004: Primes p such that 8*p+21 is prime.

Offset 1, canonical program `A156004.P9472163527140121150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1620 terms. -/
def A156004 (n : ℕ) : ℤ :=
  A156004.P9472163527140121150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1620 terms. -/
def A156004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156089.P13301213734653127456

`floor(A007598(n)*A075150(n)/3)`
-/

namespace A156089.P13301213734653127456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007598 n * A075150 n : ℚ) / 3⌋

end

end A156089.P13301213734653127456

noncomputable section

/-- A156089: Alternating sum of the squares of the first n odd-indexed Fibonacci numbers.

Offset 0, canonical program `A156089.P13301213734653127456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A156089 (n : ℕ) : ℤ :=
  A156089.P13301213734653127456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A156089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156104.P4633343175007743095

`p?[A065091(n+1)+36]-36`
-/

namespace A156104.P4633343175007743095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 36

end

end A156104.P4633343175007743095

noncomputable section

/-- A156104: Primes p such that p+36 is also prime.

Offset 1, canonical program `A156104.P4633343175007743095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A156104 (n : ℕ) : ℤ :=
  A156104.P4633343175007743095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A156104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156249.P2244503862382991979

`-∑[(-1)^n*A000002(2*n+1)]`
-/

namespace A156249.P2244503862382991979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000002 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156249.P2244503862382991979

noncomputable section

/-- A156249: a(n)=sum(k=1,n,(-1)^k*A000002(2*k-1)).

Offset 1, canonical program `A156249.P2244503862382991979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A156249 (n : ℕ) : ℤ :=
  A156249.P2244503862382991979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A156249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156287.P14892850201557753402

`A005099(n+1)+1`
-/

namespace A156287.P14892850201557753402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1) + 1

end

end A156287.P14892850201557753402

noncomputable section

/-- A156287: Numbers k such that 4*k-5 is a prime number.

Offset 1, canonical program `A156287.P14892850201557753402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156287 (n : ℕ) : ℤ :=
  A156287.P14892850201557753402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156596.P16517224717250966737

`(n%2+1)*A005614(n)`
-/

namespace A156596.P16517224717250966737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A005614 n

end

end A156596.P16517224717250966737

noncomputable section

/-- A156596: Infinite Fibonacci word fractal sequence.

Offset 1, canonical program `A156596.P16517224717250966737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156596 (n : ℕ) : ℤ :=
  A156596.P16517224717250966737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156721.P6408730910130201456

`round(sqrt(A156639(n+1))*A156627(n+1))`
-/

namespace A156721.P6408730910130201456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A156639 (n + 1) : ℝ) * (A156627 (n + 1) : ℝ))

end

end A156721.P6408730910130201456

noncomputable section

/-- A156721: a(n) = 57122*n^2 - 47320*n + 9801.

Offset 1, canonical program `A156721.P6408730910130201456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156721 (n : ℕ) : ℤ :=
  A156721.P6408730910130201456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157628.P10806656981275621240

`round(sqrt(A157626(n+1))*A157627(n+1))`
-/

namespace A157628.P10806656981275621240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157626 (n + 1) : ℝ) * (A157627 (n + 1) : ℝ))

end

end A157628.P10806656981275621240

noncomputable section

/-- A157628: a(n) = 80000n^2 - 120800n + 45601.

Offset 1, canonical program `A157628.P10806656981275621240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157628 (n : ℕ) : ℤ :=
  A157628.P10806656981275621240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157742.P17590817026270209720

`dr(A006094(n+3))`
-/

namespace A157742.P17590817026270209720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A006094 (n + 3))

end

end A157742.P17590817026270209720

noncomputable section

/-- A157742: A006094(n+3) mod 9.

Offset 0, canonical program `A157742.P17590817026270209720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A157742 (n : ℕ) : ℤ :=
  (A157742.P17590817026270209720.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A157742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157855.P8984968890830206206

`A157661(4*A017245(n))`
-/

namespace A157855.P8984968890830206206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157661 (4 * A017245 n).toNat

end

end A157855.P8984968890830206206

noncomputable section

/-- A157855: a(n) = 103680000*n^2 - 46108800*n + 5126401.

Offset 1, canonical program `A157855.P8984968890830206206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A157855 (n : ℕ) : ℤ :=
  A157855.P8984968890830206206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A157855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157859.P8913909548646878911

`A157661(Δ[A164016(n)])`
-/

namespace A157859.P8913909548646878911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157661 (f1 (n + 1) - f1 n).toNat

end

end A157859.P8913909548646878911

noncomputable section

/-- A157859: a(n) = 103680000*n^2 - 28800*n + 1.

Offset 1, canonical program `A157859.P8913909548646878911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A157859 (n : ℕ) : ℤ :=
  A157859.P8913909548646878911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A157859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157863.P15523620367510719815

`A157664(36*(n+1))`
-/

namespace A157863.P15523620367510719815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157664 (36 * (n + 1))

end

end A157863.P15523620367510719815

noncomputable section

/-- A157863: a(n) = 103680000*n^2 + 28800*n + 1.

Offset 1, canonical program `A157863.P15523620367510719815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A157863 (n : ℕ) : ℤ :=
  A157863.P15523620367510719815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A157863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157893.P15698014607538601386

`val(A082662(n+1), 2)+1`
-/

namespace A157893.P15698014607538601386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A082662 (n + 1)).toNat 2 + 1

end

end A157893.P15698014607538601386

noncomputable section

/-- A157893: Values of m in A080075.

Offset 1, canonical program `A157893.P15698014607538601386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157893 (n : ℕ) : ℤ :=
  (A157893.P15698014607538601386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158014.P12413246959562192546

`8*A023228(n+1)+1`
-/

namespace A158014.P12413246959562192546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A023228 (n + 1) + 1

end

end A158014.P12413246959562192546

noncomputable section

/-- A158014: Primes p such that (p-1)/8 is also prime.

Offset 1, canonical program `A158014.P12413246959562192546`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158014 (n : ℕ) : ℤ :=
  A158014.P12413246959562192546.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158014.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158015.P7047536618919471622

`p?[A024898(n+1)]`
-/

namespace A158015.P7047536618919471622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158015.P7047536618919471622

noncomputable section

/-- A158015: Primes p such that 6*p-1 is also prime.

Offset 1, canonical program `A158015.P7047536618919471622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 959 terms. -/
def A158015 (n : ℕ) : ℤ :=
  A158015.P7047536618919471622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 959 terms. -/
def A158015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158495.P10891886949087608278

`A158499(n)-A155559(n)`
-/

namespace A158495.P10891886949087608278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158499 n - A155559 n

end

end A158495.P10891886949087608278

noncomputable section

/-- A158495: Expansion of ((1-4*x) + sqrt(1-4*x))/(2*(1-2*x)).

Offset 0, canonical program `A158495.P10891886949087608278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A158495 (n : ℕ) : ℤ :=
  A158495.P10891886949087608278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A158495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158893.P14217373209629324848

`A004736(n+1)+6*A004526(A198954(n))`
-/

namespace A158893.P14217373209629324848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + 6 * A004526 (A198954 n).toNat

end

end A158893.P14217373209629324848

noncomputable section

/-- A158893: Triangle read by rows: T(n,1)=7n-6; T(n,m)= 1+n-m, 1

Offset 1, canonical program `A158893.P14217373209629324848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158893 (n : ℕ) : ℤ :=
  A158893.P14217373209629324848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159036.P16671267747354040259

`A115390(n)+Δ[A159035(n)]`
-/

namespace A159036.P16671267747354040259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n + (f1 (n + 1) - f1 n)

end

end A159036.P16671267747354040259

noncomputable section

/-- A159036: a(0)=0, a(1)=1, a(2)=4, a(3)=13; thereafter a(n+3)=4*a(n+2)-4*a(n+1)+2*a(n) for n>=1.

Offset 0, canonical program `A159036.P16671267747354040259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A159036 (n : ℕ) : ℤ :=
  A159036.P16671267747354040259.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A159036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159043.P591640030146997195

`p?[A008864(n+1)+A000040(n+4)]`
-/

namespace A159043.P591640030146997195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A000040 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159043.P591640030146997195

noncomputable section

/-- A159043: Primes of the form prime(n)+prime(n+3)+1.

Offset 1, canonical program `A159043.P591640030146997195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A159043 (n : ℕ) : ℤ :=
  A159043.P591640030146997195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A159043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159045.P12667360026089005366

`p?[A008864(n+1)+A000040(n+6)]`
-/

namespace A159045.P12667360026089005366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A000040 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159045.P12667360026089005366

noncomputable section

/-- A159045: Primes of the form prime(k) + prime(k+5) + 1.

Offset 1, canonical program `A159045.P12667360026089005366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A159045 (n : ℕ) : ℤ :=
  A159045.P12667360026089005366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A159045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159342.P4932538038691876782

`A181984(n)+A159349(n)`
-/

namespace A159342.P4932538038691876782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + A159349 n

end

end A159342.P4932538038691876782

noncomputable section

/-- A159342: Transform of the finite sequence (1, 0, -1, 0, 1, 0, -1) by the T_{0,1} transform (see link).

Offset 0, canonical program `A159342.P4932538038691876782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A159342 (n : ℕ) : ℤ :=
  A159342.P4932538038691876782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A159342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159461.P8896828948141385793

`A158611(n+4)-A158611(n+2)-2`
-/

namespace A159461.P8896828948141385793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 4) - A158611 (n + 2) - 2

end

end A159461.P8896828948141385793

noncomputable section

/-- A159461: Numbers of previous and following composites of n-th prime.

Offset 1, canonical program `A159461.P8896828948141385793`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A159461 (n : ℕ) : ℤ :=
  A159461.P8896828948141385793.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A159461.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A160243.P13553628039836246293

`A020695(n)+A004397(n+1)`
-/

namespace A160243.P13553628039836246293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + A004397 (n + 1)

end

end A160243.P13553628039836246293

noncomputable section

/-- A160243: a(n) = Lucas(n+1) + prime(n).

Offset 1, canonical program `A160243.P13553628039836246293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A160243 (n : ℕ) : ℤ :=
  A160243.P13553628039836246293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A160243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160410.P2265682032129566440

`∑[4*A048883(n)]-4*A048883(n)`
-/

namespace A160410.P2265682032129566440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A048883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4 * A048883 n

end

end A160410.P2265682032129566440

noncomputable section

/-- A160410: Number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton (see Comments for precise definition).

Offset 0, canonical program `A160410.P2265682032129566440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160410 (n : ℕ) : ℤ :=
  A160410.P2265682032129566440.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160491.P14155567290424299715

`A062481(n+2)-A062481(n+1)`
-/

namespace A160491.P14155567290424299715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062481 (n + 2) - A062481 (n + 1)

end

end A160491.P14155567290424299715

noncomputable section

/-- A160491: First differences of A062481.

Offset 1, canonical program `A160491.P14155567290424299715`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160491 (n : ℕ) : ℤ :=
  A160491.P14155567290424299715.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160491.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160501.P5853442810036552581

`A062481(n+1)+A062481(n+2)`
-/

namespace A160501.P5853442810036552581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062481 (n + 1) + A062481 (n + 2)

end

end A160501.P5853442810036552581

noncomputable section

/-- A160501: (n+1)^prime(n+1) + n^prime(n).

Offset 1, canonical program `A160501.P5853442810036552581`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160501 (n : ℕ) : ℤ :=
  A160501.P5853442810036552581.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160501.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160550.P7949875728282903613

`A001065(n+1)%∑{d}[n+1, ((#+1)%2)!]`
-/

namespace A160550.P7949875728282903613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1)) ((∑ d ∈ Nat.divisors (f1 n), Nat.factorial ((d + 1) % 2) : ℕ) : ℤ)

end

end A160550.P7949875728282903613

noncomputable section

/-- A160550: a(n) = A001065(n) mod A000005(n).

Offset 1, canonical program `A160550.P7949875728282903613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160550 (n : ℕ) : ℤ :=
  A160550.P7949875728282903613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160588.P1469078919604768349

`A004524(A053641(n+2))`
-/

namespace A160588.P1469078919604768349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A053641 (n + 2)).toNat

end

end A160588.P1469078919604768349

noncomputable section

/-- A160588: Interleaving of A053645 and A000027.

Offset 0, canonical program `A160588.P1469078919604768349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160588 (n : ℕ) : ℤ :=
  A160588.P1469078919604768349.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160668.P17836700384560215862

`A061601(A000040(n+1))+1`
-/

namespace A160668.P17836700384560215862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A000040 (n + 1)).toNat + 1

end

end A160668.P17836700384560215862

noncomputable section

/-- A160668: Distance between prime(n) and the next higher power of 10.

Offset 1, canonical program `A160668.P17836700384560215862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A061601, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160668 (n : ℕ) : ℤ :=
  A160668.P17836700384560215862.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A061601, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160830.P3336484421034523192

`floor(A006094(n+1)/A001043(n+1))`
-/

namespace A160830.P3336484421034523192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006094 (n + 1) : ℚ) / (A001043 (n + 1) : ℚ)⌋

end

end A160830.P3336484421034523192

noncomputable section

/-- A160830: Integer part of the product of two consecutive primes divided by their sum.

Offset 1, canonical program `A160830.P3336484421034523192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160830 (n : ℕ) : ℤ :=
  A160830.P3336484421034523192.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160830.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160831.P13544186760015330901

`A160788(n)+A135503(n)²`
-/

namespace A160831.P13544186760015330901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160788 n + A135503 n ^ 2

end

end A160831.P13544186760015330901

noncomputable section

/-- A160831: G.f.: (1+62*x+570*x^2+1095*x^3+530*x^4+57*x^5+x^6)/(1-x)^7.

Offset 0, canonical program `A160831.P13544186760015330901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160831 (n : ℕ) : ℤ :=
  A160831.P13544186760015330901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160950.P820166746106121254

`p?[A006254(n+1)-53]`
-/

namespace A160950.P820166746106121254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) - 53

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160950.P820166746106121254

noncomputable section

/-- A160950: Primes p such that 2p + 105 is prime.

Offset 1, canonical program `A160950.P820166746106121254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2188 terms. -/
def A160950 (n : ℕ) : ℤ :=
  A160950.P820166746106121254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2188 terms. -/
def A160950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161188.P124226900416886293

`A104103(n+1)+n`
-/

namespace A161188.P124226900416886293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1) + (n : ℤ)

end

end A161188.P124226900416886293

noncomputable section

/-- A161188: Let S = A089237\{0} = union of primes and nonzero squares; sequence gives indices of primes.

Offset 1, canonical program `A161188.P124226900416886293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161188 (n : ℕ) : ℤ :=
  A161188.P124226900416886293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161463.P3939391229577481426

`A036439(2*(n+1))-A036439(n+1)`
-/

namespace A161463.P3939391229577481426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (2 * (n + 1)) - A036439 (n + 1)

end

end A161463.P3939391229577481426

noncomputable section

/-- A161463: Sum of all primes from n-th prime to (2*n-1)-th prime.

Offset 1, canonical program `A161463.P3939391229577481426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161463 (n : ℕ) : ℤ :=
  A161463.P3939391229577481426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161522.P15343640305282241931

`A001248(n+1)-A033286(n+1)`
-/

namespace A161522.P15343640305282241931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A033286 (n + 1)

end

end A161522.P15343640305282241931

noncomputable section

/-- A161522: prime(n)*( prime(n)-n ).

Offset 1, canonical program `A161522.P15343640305282241931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161522 (n : ℕ) : ℤ :=
  A161522.P15343640305282241931.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161522.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161569.P6850851275196449247

`a(n-1)+A018252(n+1)-(n+1)` with `a(0)=0`
-/

namespace A161569.P6850851275196449247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A018252 (n + 1) - (n + 1 : ℤ)

end

end A161569.P6850851275196449247

noncomputable section

/-- A161569: Sum of first n nonprimes minus their indices.

Offset 1, canonical program `A161569.P6850851275196449247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161569 (n : ℕ) : ℤ :=
  A161569.P6850851275196449247.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161569.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161570.P5322671682470775106

`A000217(A018252(n+1))-A000217(n)`
-/

namespace A161570.P5322671682470775106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A018252 (n + 1)).toNat - A000217 n

end

end A161570.P5322671682470775106

noncomputable section

/-- A161570: Sum of all numbers from n up to A018252(n).

Offset 1, canonical program `A161570.P5322671682470775106`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161570 (n : ℕ) : ℤ :=
  A161570.P5322671682470775106.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161602.P6450540273462134984

`lt[0, A055945(n)]`
-/

namespace A161602.P6450540273462134984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161602.P6450540273462134984

noncomputable section

/-- A161602: Positive integers k that are greater than the value of the reversal of k's binary representation.

Offset 1, canonical program `A161602.P6450540273462134984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161602 (n : ℕ) : ℤ :=
  (A161602.P6450540273462134984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161607.P5708958967834932712

`eq[1, gcd(n, A055945(n))]`
-/

namespace A161607.P5708958967834932712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A055945 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161607.P5708958967834932712

noncomputable section

/-- A161607: Positive integers k that are coprime to the value of the reversal of k's representation in binary.

Offset 1, canonical program `A161607.P5708958967834932712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8899 terms. -/
def A161607 (n : ℕ) : ℤ :=
  (A161607.P5708958967834932712.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8899 terms. -/
def A161607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161612.P9446970162319357204

`p?[A036439(n+16)-A036439(n+1)]`
-/

namespace A161612.P9446970162319357204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 16) - A036439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161612.P9446970162319357204

noncomputable section

/-- A161612: Primes that are the sum of 15 consecutive primes.

Offset 1, canonical program `A161612.P9446970162319357204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1075 terms. -/
def A161612 (n : ℕ) : ℤ :=
  A161612.P9446970162319357204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1075 terms. -/
def A161612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161624.P3059567341113547704

`A034953(n+1)-A000217(n)`
-/

namespace A161624.P3059567341113547704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - A000217 n

end

end A161624.P3059567341113547704

noncomputable section

/-- A161624: Sum of all numbers from n to n-th prime.

Offset 1, canonical program `A161624.P3059567341113547704`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161624 (n : ℕ) : ℤ :=
  A161624.P3059567341113547704.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161624.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161625.P5203370904479335656

`C(A007652(n+1)+1, 2)`
-/

namespace A161625.P5203370904479335656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007652 (n + 1) + 1).toNat 2

end

end A161625.P5203370904479335656

noncomputable section

/-- A161625: Sum of all numbers from 1 up to the final digit of prime(n).

Offset 1, canonical program `A161625.P5203370904479335656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161625 (n : ℕ) : ℤ :=
  (A161625.P5203370904479335656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161736.P11030662327704331817

`A001902(2*(n+2)-3)`
-/

namespace A161736.P11030662327704331817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001902 (2 * (n + 2) - 3)

end

end A161736.P11030662327704331817

noncomputable section

/-- A161736: Denominators of the column sums of the BG2 matrix.

Offset 2, canonical program `A161736.P11030662327704331817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001902, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161736 (n : ℕ) : ℤ :=
  A161736.P11030662327704331817.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001902, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161736.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161777.P1199000887852038007

`A000217(A018252(n+1)-1)`
-/

namespace A161777.P1199000887852038007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A018252 (n + 1) - 1).toNat

end

end A161777.P1199000887852038007

noncomputable section

/-- A161777: n-th nonprime*(n-th nonprime-1)/2.

Offset 1, canonical program `A161777.P1199000887852038007`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161777 (n : ℕ) : ℤ :=
  A161777.P1199000887852038007.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161777.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161782.P15101117424861432951

`A000217(A031131(n+1))-A000217(A046933(n+1))`
-/

namespace A161782.P15101117424861432951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A031131 (n + 1)).toNat - A000217 (A046933 (n + 1)).toNat

end

end A161782.P15101117424861432951

noncomputable section

/-- A161782: a(n) = sum of all numbers from and including (prime(n+1)-prime(n)) to and including (prime(n+2)-prime(n).)

Offset 1, canonical program `A161782.P15101117424861432951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161782 (n : ℕ) : ℤ :=
  A161782.P15101117424861432951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161788.P11266253725805918745

`A003817(∑{d}[n+1, A135416(#)])`
-/

namespace A161788.P11266253725805918745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (∑ d ∈ Nat.divisors (f1 n), A135416 d).toNat

end

end A161788.P11266253725805918745

noncomputable section

/-- A161788: a(n) is the largest integer of the form 2^k - 1 that divides n.

Offset 1, canonical program `A161788.P11266253725805918745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A161788 (n : ℕ) : ℤ :=
  A161788.P11266253725805918745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A161788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161789.P10570170875906748865

`A070939(∑{d}[A103517(n), A135416(#)])`
-/

namespace A161789.P10570170875906748865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (∑ d ∈ Nat.divisors (f1 n).natAbs, A135416 d).toNat

end

end A161789.P10570170875906748865

noncomputable section

/-- A161789: a(n) is the largest integer k such that 2^k - 1 divides n.

Offset 1, canonical program `A161789.P10570170875906748865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161789 (n : ℕ) : ℤ :=
  A161789.P10570170875906748865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162177.P8282933836838632122

`A158611(n+2)-(n+1)`
-/

namespace A162177.P8282933836838632122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2) - (n + 1 : ℤ)

end

end A162177.P8282933836838632122

noncomputable section

/-- A162177: a(n) is the number of composite numbers that are smaller than A008578(n).

Offset 1, canonical program `A162177.P8282933836838632122`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162177 (n : ℕ) : ℤ :=
  A162177.P8282933836838632122.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162177.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162194.P3478823718084409657

`A000203(A018252(n+1))`
-/

namespace A162194.P3478823718084409657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A018252 (n + 1)).toNat

end

end A162194.P3478823718084409657

noncomputable section

/-- A162194: Sum of divisors of nonprime number A018252(n).

Offset 1, canonical program `A162194.P3478823718084409657`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162194 (n : ℕ) : ℤ :=
  A162194.P3478823718084409657.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162195.P12385339975544917785

`A001065(A018252(n+1))`
-/

namespace A162195.P12385339975544917785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A018252 (n + 1)).toNat

end

end A162195.P12385339975544917785

noncomputable section

/-- A162195: Sum of proper divisors of n-th nonprime number A018252(n).

Offset 1, canonical program `A162195.P12385339975544917785`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162195 (n : ℕ) : ℤ :=
  A162195.P12385339975544917785.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162195.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162550.P4693385428906052129

`2*A072643(n)`
-/

namespace A162550.P4693385428906052129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072643 n

end

end A162550.P4693385428906052129

noncomputable section

/-- A162550: 2n repeated C_n times, where C_n = A000108(n) is a Catalan number.

Offset 0, canonical program `A162550.P4693385428906052129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162550 (n : ℕ) : ℤ :=
  A162550.P4693385428906052129.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162550.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162619.P18185964256765795364

`A005145(n+1)-A004736(n+1)`
-/

namespace A162619.P18185964256765795364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) - A004736 (n + 1)

end

end A162619.P18185964256765795364

noncomputable section

/-- A162619: Triangle read by rows in which row n lists n consecutive natural numbers A000027, starting with A014689(n) = A000040(n)-n.

Offset 1, canonical program `A162619.P18185964256765795364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162619 (n : ℕ) : ℤ :=
  A162619.P18185964256765795364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163057.P717677212788905023

`n-A130472(A065091(n+1))`
-/

namespace A163057.P717677212788905023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A130472 (A065091 (n + 1)).toNat

end

end A163057.P717677212788905023

noncomputable section

/-- A163057: An alternating sum from the n-th odd number up to the n-th odd prime.

Offset 1, canonical program `A163057.P717677212788905023`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163057 (n : ℕ) : ℤ :=
  A163057.P717677212788905023.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163088.P2830907696303753989

`A163087(n)/A056040(n)`
-/

namespace A163088.P2830907696303753989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163087 n : ℚ) / (A056040 n : ℚ)

end

end A163088.P2830907696303753989

noncomputable section

/-- A163088: (Product{k|n} k$) / n$. Here '$' denotes the swinging factorial function (A056040).

Offset 0, canonical program `A163088.P2830907696303753989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163088 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163088.P2830907696303753989.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163089.P10666734151274875849

`n!/A163087(n)`
-/

namespace A163089.P10666734151274875849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A163087 n : ℚ)

end

end A163089.P10666734151274875849

noncomputable section

/-- A163089: n! / (Product{k|n} k$). Here '$' denotes the swinging factorial function (A056040).

Offset 0, canonical program `A163089.P10666734151274875849`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163089 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163089.P10666734151274875849.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163256.P226492843122015427

`A028310(A082375(A082375(n)+n))`
-/

namespace A163256.P226492843122015427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A082375 (A082375 n + (n : ℤ)).toNat).toNat

end

end A163256.P226492843122015427

noncomputable section

/-- A163256: Fractal sequence of the interspersion A163253.

Offset 1, canonical program `A163256.P226492843122015427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A163256 (n : ℕ) : ℤ :=
  A163256.P226492843122015427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A163256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163291.P14435979190874790794

`floor((A035100(n+1)+1)/2)`
-/

namespace A163291.P14435979190874790794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035100 (n + 1) + 1 : ℚ) / 2⌋

end

end A163291.P14435979190874790794

noncomputable section

/-- A163291: Number of digits of n-th prime written in base 4.

Offset 1, canonical program `A163291.P14435979190874790794`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163291 (n : ℕ) : ℤ :=
  A163291.P14435979190874790794.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163291.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163293.P4247609805888595491

`A000040(n+1)-A035100(n+1)`
-/

namespace A163293.P4247609805888595491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A035100 (n + 1)

end

end A163293.P4247609805888595491

noncomputable section

/-- A163293: a(n) = n-th prime minus (number of bits in binary expansion of n-th prime).

Offset 1, canonical program `A163293.P4247609805888595491`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A035100, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163293 (n : ℕ) : ℤ :=
  A163293.P4247609805888595491.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A035100, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163293.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163467.P3610037260912299519

`A098844(A130290(n+1))`
-/

namespace A163467.P3610037260912299519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098844 (A130290 (n + 1)).toNat

end

end A163467.P3610037260912299519

noncomputable section

/-- A163467: a(n) = floor(p/2) * floor(floor(p/2)/2) * floor(floor(floor(p/2)/2)/2) * ... * 1, where p=prime(n).

Offset 1, canonical program `A163467.P3610037260912299519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A163467 (n : ℕ) : ℤ :=
  A163467.P3610037260912299519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A163467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163508.P3710448584942683645

`A001414(A001043(n+1))`
-/

namespace A163508.P3710448584942683645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A001043 (n + 1)).toNat

end

end A163508.P3710448584942683645

noncomputable section

/-- A163508: The sum of the prime factors (with repetition) of the sum of 2 successive primes.

Offset 1, canonical program `A163508.P3710448584942683645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, A001414, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163508 (n : ℕ) : ℤ :=
  A163508.P3710448584942683645.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, A001414, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163509.P2719261823814048895

`A010078(A080079(n+1))`
-/

namespace A163509.P2719261823814048895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A080079 (n + 1)).toNat

end

end A163509.P2719261823814048895

noncomputable section

/-- A163509: Take n written in binary. Replace the leftmost run of 1's with just a single 1. a(n) is the decimal equivalent of the result.

Offset 1, canonical program `A163509.P2719261823814048895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163509 (n : ℕ) : ℤ :=
  A163509.P2719261823814048895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163553.P466740901883979110

`n+3-Δ[A155085(n+1)]`
-/

namespace A163553.P466740901883979110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (f1 (n + 1) - f1 n)

end

end A163553.P466740901883979110

noncomputable section

/-- A163553: First differences of A024816.

Offset 1, canonical program `A163553.P466740901883979110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163553 (n : ℕ) : ℤ :=
  A163553.P466740901883979110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163623.P14271077986675833918

`∩[A139502(n+1), A142183(n+1)]`
-/

namespace A163623.P14271077986675833918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P14271077986675833918

noncomputable section

/-- A163623: Primes of the form 120*k + 1.

Offset 1, canonical program `A163623.P14271077986675833918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A163623 (n : ℕ) : ℤ :=
  (A163623.P14271077986675833918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A163623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163844.P3622098309337509437

`A026375(n+1)-A000984(n+1)`
-/

namespace A163844.P3622098309337509437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 (n + 1) - A000984 (n + 1)

end

end A163844.P3622098309337509437

noncomputable section

/-- A163844: Row sums of triangle A163841.

Offset 0, canonical program `A163844.P3622098309337509437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A163844 (n : ℕ) : ℤ :=
  A163844.P3622098309337509437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A163844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163872.P13171049366053346656

`A132894(n+1)+A132894(n)`
-/

namespace A163872.P13171049366053346656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132894 (n + 1) + A132894 n

end

end A163872.P13171049366053346656

noncomputable section

/-- A163872: Inverse binomial transform of the beta numbers 1/beta(n+1,n+1) (A002457).

Offset 0, canonical program `A163872.P13171049366053346656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A163872 (n : ℕ) : ℤ :=
  A163872.P13171049366053346656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A163872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164320.P3487527903107455350

`∩[A164318(n+1), A164319(n+1)]`
-/

namespace A164320.P3487527903107455350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164320.P3487527903107455350

noncomputable section

/-- A164320: Primes p such that sums of divisors of the two adjacent integers are each > 2*p.

Offset 1, canonical program `A164320.P3487527903107455350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4306 terms. -/
def A164320 (n : ℕ) : ℤ :=
  (A164320.P3487527903107455350.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4306 terms. -/
def A164320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164364.P14451456092947760029

`A164349(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164364.P14451456092947760029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 (2 ^ n)

end

end A164364.P14451456092947760029

noncomputable section

/-- A164364: a(n) = A164349(2^n).

Offset 0, canonical program `A164364.P14451456092947760029`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164364 (n : ℕ) : ℤ :=
  A164364.P14451456092947760029.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164364.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164416.P2577009813336469056

`A164391(n+4)-A164391(n)`
-/

namespace A164416.P2577009813336469056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164391 (n + 4) - A164391 n

end

end A164416.P2577009813336469056

noncomputable section

/-- A164416: Number of binary strings of length n with no substrings equal to 0000 0001 or 1111.

Offset 4, canonical program `A164416.P2577009813336469056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 414 terms. -/
def A164416 (n : ℕ) : ℤ :=
  A164416.P2577009813336469056.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 414 terms. -/
def A164416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164420.P13663796949390325508

`∑[A047084(n+2)-A047084(n)]`
-/

namespace A164420.P13663796949390325508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047084 (n + 2) - A047084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164420.P13663796949390325508

noncomputable section

/-- A164420: Number of binary strings of length n with no substrings equal to 0000, 0010, or 0111.

Offset 0, canonical program `A164420.P13663796949390325508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 536 terms. -/
def A164420 (n : ℕ) : ℤ :=
  A164420.P13663796949390325508.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 536 terms. -/
def A164420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164494.P7691253228734499853

`A137495(n+4)`
-/

namespace A164494.P7691253228734499853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137495 (n + 4)

end

end A164494.P7691253228734499853

noncomputable section

/-- A164494: Number of binary strings of length n with no substrings equal to 0010 0101 or 1010.

Offset 4, canonical program `A164494.P7691253228734499853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A164494 (n : ℕ) : ℤ :=
  A164494.P7691253228734499853.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A164494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164653.P11870517180537955334

`A158611(n+1)+A158611(n+2)`
-/

namespace A164653.P11870517180537955334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + A158611 (n + 2)

end

end A164653.P11870517180537955334

noncomputable section

/-- A164653: a(1) = 1, for n>=2: a(n) = sum of two consecutive noncomposite numbers A008578.

Offset 1, canonical program `A164653.P11870517180537955334`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164653 (n : ℕ) : ℤ :=
  A164653.P11870517180537955334.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164653.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165145.P4805269214844964162

`∑[A058183(n+1)]`
-/

namespace A165145.P4805269214844964162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165145.P4805269214844964162

noncomputable section

/-- A165145: Partial sums of A058183.

Offset 1, canonical program `A165145.P4805269214844964162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165145 (n : ℕ) : ℤ :=
  A165145.P4805269214844964162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165191.P13618219544817875924

`Δ[A008619(A004202(a(n-1)))]%2` with `a(0)=1, a(1)=1`
-/

namespace A165191.P13618219544817875924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A008619 (A004202 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A165191.P13618219544817875924

noncomputable section

/-- A165191: Irregular triangle B(n,i) = i-th significant bit of Gray code of n.

Offset 0, canonical program `A165191.P13618219544817875924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A165191 (n : ℕ) : ℤ :=
  A165191.P13618219544817875924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A165191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165205.P7878292141726443622

`A029651(n)+A001791(n)`
-/

namespace A165205.P7878292141726443622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n + A001791 n

end

end A165205.P7878292141726443622

noncomputable section

/-- A165205: a(n) = C(2n-1,n) + C(2n+1,n+1) - C(0,n).

Offset 0, canonical program `A165205.P7878292141726443622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A165205 (n : ℕ) : ℤ :=
  A165205.P7878292141726443622.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A165205.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A165906.P15162408621057414464

`ceil(∑[A001748(n+1)]/A001748(n+1))`
-/

namespace A165906.P15162408621057414464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001748 (n + 1) : ℚ)⌉

end

end A165906.P15162408621057414464

noncomputable section

/-- A165906: Sum of first n primes divided by the n-th prime, rounded up to the nearest integer.

Offset 1, canonical program `A165906.P15162408621057414464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165906 (n : ℕ) : ℤ :=
  A165906.P15162408621057414464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165990.P11905906101567529010

`A165794(2*n)`
-/

namespace A165990.P11905906101567529010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165794 (2 * n)

end

end A165990.P11905906101567529010

noncomputable section

/-- A165990: Nim sum of distinct consecutive pairs of Lucas Numbers.

Offset 0, canonical program `A165990.P11905906101567529010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A165990 (n : ℕ) : ℤ :=
  A165990.P11905906101567529010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A165990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166010.P2251698158040960203

`A001248(n+1)-4`
-/

namespace A166010.P2251698158040960203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - 4

end

end A166010.P2251698158040960203

noncomputable section

/-- A166010: a(n) = prime(n)^2-4.

Offset 1, canonical program `A166010.P2251698158040960203`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166010 (n : ℕ) : ℤ :=
  A166010.P2251698158040960203.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166011.P11749173426815385151

`lcm(A086801(n+1), A113935(n+1))`
-/

namespace A166011.P11749173426815385151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A086801 (n + 1)) (A113935 (n + 1))

end

end A166011.P11749173426815385151

noncomputable section

/-- A166011: Least common multiple of prime(n)-3 and prime(n)+3.

Offset 1, canonical program `A166011.P11749173426815385151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166011 (n : ℕ) : ℤ :=
  (A166011.P11749173426815385151.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166127.P3009407500019831208

`A104103(n+1)%(n+2)`
-/

namespace A166127.P3009407500019831208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104103 (n + 1)) (n + 2 : ℤ)

end

end A166127.P3009407500019831208

noncomputable section

/-- A166127: Minimum value of j such that floor(j^2 / prime(n)) > 0.

Offset 1, canonical program `A166127.P3009407500019831208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166127 (n : ℕ) : ℤ :=
  A166127.P3009407500019831208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166253.P5914858087420238864

`(A136692(n)%3+n)%2`
-/

namespace A166253.P5914858087420238864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A136692 n) 3 + (n : ℤ)) 2

end

end A166253.P5914858087420238864

noncomputable section

/-- A166253: String substitution 0 -> 01110, 1 -> 10001, started with 1.

Offset 1, canonical program `A166253.P5914858087420238864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166253 (n : ℕ) : ℤ :=
  A166253.P5914858087420238864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166329.P12394964810192710211

`A006094(n+1)²`
-/

namespace A166329.P12394964810192710211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) ^ 2

end

end A166329.P12394964810192710211

noncomputable section

/-- A166329: Products of squares of 2 successive primes.

Offset 1, canonical program `A166329.P12394964810192710211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166329 (n : ℕ) : ℤ :=
  A166329.P12394964810192710211.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166329.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166448.P8765378340024348909

`∑[A062234(n+1)]-2`
-/

namespace A166448.P8765378340024348909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A166448.P8765378340024348909

noncomputable section

/-- A166448: Sum of first n primes minus next prime.

Offset 1, canonical program `A166448.P8765378340024348909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166448 (n : ℕ) : ℤ :=
  A166448.P8765378340024348909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166499.P15213184489889587938

`10*A007652(n+1)+A077648(n+2)`
-/

namespace A166499.P15213184489889587938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A007652 (n + 1) + A077648 (n + 2)

end

end A166499.P15213184489889587938

noncomputable section

/-- A166499: Concatenation of the rightmost digit of the n-th prime and the leftmost digit of the (n+1)th prime.

Offset 1, canonical program `A166499.P15213184489889587938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007652, A077648, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166499 (n : ℕ) : ℤ :=
  A166499.P15213184489889587938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007652, A077648, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166499.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166502.P8423645090927015863

`A006094(n+1)^(n+1)`
-/

namespace A166502.P8423645090927015863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) ^ (n + 1)

end

end A166502.P8423645090927015863

noncomputable section

/-- A166502: The n-th power of the product prime(n)*prime(n+1) of 2 successive primes.

Offset 1, canonical program `A166502.P8423645090927015863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166502 (n : ℕ) : ℤ :=
  A166502.P8423645090927015863.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166502.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166546.P7750365788369680669

`eq[A032741(A032741(n)+2), A057427(n)]`
-/

namespace A166546.P7750365788369680669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166546.P7750365788369680669

noncomputable section

/-- A166546: Natural numbers n such that d(n) + 1 is prime.

Offset 1, canonical program `A166546.P7750365788369680669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6955 terms. -/
def A166546 (n : ℕ) : ℤ :=
  (A166546.P7750365788369680669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6955 terms. -/
def A166546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167057.P16324188252696382236

`A138620(n+1)-1`
-/

namespace A167057.P16324188252696382236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138620 (n + 1) - 1

end

end A167057.P16324188252696382236

noncomputable section

/-- A167057: Numbers k such that 12*k + 11 is prime.

Offset 1, canonical program `A167057.P16324188252696382236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167057 (n : ℕ) : ℤ :=
  A167057.P16324188252696382236.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167239.P5011976945127805005

`4*∑[A005902(n)+1]`
-/

namespace A167239.P5011976945127805005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167239.P5011976945127805005

noncomputable section

/-- A167239: Number of ways to partition a 5*n X 2 grid into 5 connected equal-area regions.

Offset 1, canonical program `A167239.P5011976945127805005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167239 (n : ℕ) : ℤ :=
  A167239.P5011976945127805005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167407.P342284988497035596

`floor((2-A198954(n))/2)`
-/

namespace A167407.P342284988497035596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 - A198954 n : ℚ) / 2⌋

end

end A167407.P342284988497035596

noncomputable section

/-- A167407: T(m,n) is -m if n=0, 1 elsewhere.

Offset 0, canonical program `A167407.P342284988497035596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167407 (n : ℕ) : ℤ :=
  A167407.P342284988497035596.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167623.P17572008884092007140

`((n+1)^3)%A001248(n+1)`
-/

namespace A167623.P17572008884092007140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 3 : ℤ) (A001248 (n + 1))

end

end A167623.P17572008884092007140

noncomputable section

/-- A167623: a(n) = n^3 mod (n-th prime squared).

Offset 1, canonical program `A167623.P17572008884092007140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167623 (n : ℕ) : ℤ :=
  A167623.P17572008884092007140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167877.P15007258767365749686

`A005823(A081611(n))-n`
-/

namespace A167877.P15007258767365749686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A081611 n).toNat - (n : ℤ)

end

end A167877.P15007258767365749686

noncomputable section

/-- A167877: Largest m<=n such that no carry occurs when adding m to n in ternary arithmetic.

Offset 0, canonical program `A167877.P15007258767365749686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167877 (n : ℕ) : ℤ :=
  A167877.P15007258767365749686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168006.P12207776267196126972

`p?[A167994(n+1)]`
-/

namespace A168006.P12207776267196126972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168006.P12207776267196126972

noncomputable section

/-- A168006: Primes p with property that first digit of 2*p = last digit of p.

Offset 1, canonical program `A168006.P12207776267196126972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. -/
def A168006 (n : ℕ) : ℤ :=
  A168006.P12207776267196126972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. -/
def A168006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168051.P12367257116989189767

`A000038(n)-A168049(n)`
-/

namespace A168051.P12367257116989189767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A168049 n

end

end A168051.P12367257116989189767

noncomputable section

/-- A168051: Expansion of (1+x+sqrt(1-2x-3x^2))/2.

Offset 0, canonical program `A168051.P12367257116989189767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A168051 (n : ℕ) : ℤ :=
  A168051.P12367257116989189767.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A168051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168076.P6252607878974062791

`A000038(n)-A168073(n)`
-/

namespace A168076.P6252607878974062791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A168073 n

end

end A168076.P6252607878974062791

noncomputable section

/-- A168076: Expansion of 1 - 3*(1-x-sqrt(1-2*x-3*x^2))/2.

Offset 0, canonical program `A168076.P6252607878974062791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A168076 (n : ℕ) : ℤ :=
  A168076.P6252607878974062791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A168076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168152.P14558718132513138966

`A006450(n+1)-A000040(n+1)`
-/

namespace A168152.P14558718132513138966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - A000040 (n + 1)

end

end A168152.P14558718132513138966

noncomputable section

/-- A168152: a(n) = prime(prime(n)) - prime(n).

Offset 1, canonical program `A168152.P14558718132513138966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168152 (n : ℕ) : ℤ :=
  A168152.P14558718132513138966.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168152.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168245.P5546774106743624338

`A006450(n+2)-A100484(n+1)`
-/

namespace A168245.P5546774106743624338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 2) - A100484 (n + 1)

end

end A168245.P5546774106743624338

noncomputable section

/-- A168245: prime(prime(n+1))-2*prime(n).

Offset 1, canonical program `A168245.P5546774106743624338`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A100484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168245 (n : ℕ) : ℤ :=
  A168245.P5546774106743624338.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A100484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168245.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168577.P14364464542492817144

`C(A002024(n+1)+2, A004736(n+1))`
-/

namespace A168577.P14364464542492817144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1) + 2).toNat (A004736 (n + 1)).toNat

end

end A168577.P14364464542492817144

noncomputable section

/-- A168577: Pascal's triangle, first two columns and diagonal removed.

Offset 2, canonical program `A168577.P14364464542492817144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168577 (n : ℕ) : ℤ :=
  (A168577.P14364464542492817144.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169712.P12999999471380340020

`(n+1)*or(1, A022144(n)+n*A010014(n))`
-/

namespace A169712.P12999999471380340020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.lor 1 (A022144 n + (n : ℤ) * A010014 n)

end

end A169712.P12999999471380340020

noncomputable section

/-- A169712: The function W_n(8) (see Borwein et al. reference for definition).

Offset 1, canonical program `A169712.P12999999471380340020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169712 (n : ℕ) : ℤ :=
  A169712.P12999999471380340020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170821.P16768579857515380064

`A033638(A065091(n+1))%A065091(n+1)`
-/

namespace A170821.P16768579857515380064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033638 (A065091 (n + 1)).toNat) (A065091 (n + 1))

end

end A170821.P16768579857515380064

noncomputable section

/-- A170821: Let p = n-th prime; a(n) = smallest k >= 0 such that 4k == 3 mod p.

Offset 2, canonical program `A170821.P16768579857515380064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A170821 (n : ℕ) : ℤ :=
  A170821.P16768579857515380064.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A170821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170829.P15237391015942110333

`A263931(n)/A005451(n+1)`
-/

namespace A170829.P15237391015942110333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263931 n : ℚ) / (A005451 (n + 1) : ℚ)

end

end A170829.P15237391015942110333

noncomputable section

/-- A170829: a(n) = gcd(Catalan(n), n!).

Offset 0, canonical program `A170829.P15237391015942110333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 588 terms. -/
def A170829 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A170829.P15237391015942110333.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 588 terms. -/
def A170829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171074.P13942206211822107705

`record[Δ[A081668(n)]]`
-/

namespace A171074.P13942206211822107705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171074.P13942206211822107705

noncomputable section

/-- A171074: A115112 with initial term changed from 0 to 1.

Offset 1, canonical program `A171074.P13942206211822107705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A171074 (n : ℕ) : ℤ :=
  A171074.P13942206211822107705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A171074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171140.P8328287493239320054

`A069813(p?[2*n+5])`
-/

namespace A171140.P8328287493239320054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069813 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A171140.P8328287493239320054

noncomputable section

/-- A171140: Numbers k such that 6*k + 7 = p^2 (p=prime).

Offset 1, canonical program `A171140.P8328287493239320054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A171140 (n : ℕ) : ℤ :=
  A171140.P8328287493239320054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A171140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171491.P10077374648140217857

`comp[A098952(n+1)]`
-/

namespace A171491.P10077374648140217857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171491.P10077374648140217857

noncomputable section

/-- A171491: Natural numbers not divisible by their number of decimal digits.

Offset 1, canonical program `A171491.P10077374648140217857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171491 (n : ℕ) : ℤ :=
  (A171491.P10077374648140217857.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171504.P6118621284767366624

`A018252(n+1)+n+1`
-/

namespace A171504.P6118621284767366624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (n + 1 : ℤ)

end

end A171504.P6118621284767366624

noncomputable section

/-- A171504: a(n) = n-th nonprime + n.

Offset 1, canonical program `A171504.P6118621284767366624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171504 (n : ℕ) : ℤ :=
  A171504.P6118621284767366624.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171517.P13209293710807330525

`p?[A101448(n+1)]`
-/

namespace A171517.P13209293710807330525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P13209293710807330525

noncomputable section

/-- A171517: Primes p such that 2*p+11 is prime.

Offset 1, canonical program `A171517.P13209293710807330525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A171517 (n : ℕ) : ℤ :=
  A171517.P13209293710807330525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A171517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171529.P9866664600957756723

`lcm(n+1, A018252(n+1))/(n+1)`
-/

namespace A171529.P9866664600957756723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A018252 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A171529.P9866664600957756723

noncomputable section

/-- A171529: Numerator of (n-th nonprime/n).

Offset 1, canonical program `A171529.P9866664600957756723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A171529.P9866664600957756723.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171577.P9512469357835469912

`A006005(n+1)-A130706(n)`
-/

namespace A171577.P9512469357835469912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) - A130706 n

end

end A171577.P9512469357835469912

noncomputable section

/-- A171577: 0, 1 and primes > 3.

Offset 1, canonical program `A171577.P9512469357835469912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171577 (n : ℕ) : ℤ :=
  A171577.P9512469357835469912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171587.P15896447707216273594

`gcd(2, A003622(n+1))-1`
-/

namespace A171587.P15896447707216273594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A003622 (n + 1)) : ℤ) - 1

end

end A171587.P15896447707216273594

noncomputable section

/-- A171587: Sequence of the diagonal variant of the Fibonacci word fractal. Sequence of the Fibonacci tile.

Offset 0, canonical program `A171587.P15896447707216273594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171587 (n : ℕ) : ℤ :=
  A171587.P15896447707216273594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171734.P16815318355326185533

`(n+1)*A266074(A124625(n))`
-/

namespace A171734.P16815318355326185533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A266074 (A124625 n).toNat

end

end A171734.P16815318355326185533

noncomputable section

/-- A171734: First differences of A171733.

Offset 0, canonical program `A171734.P16815318355326185533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171734 (n : ℕ) : ℤ :=
  A171734.P16815318355326185533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171746.P7186216401263044259

`A005408(A000196(n+1))-A082375(n)`
-/

namespace A171746.P7186216401263044259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A000196 (n + 1)).toNat - A082375 n

end

end A171746.P7186216401263044259

noncomputable section

/-- A171746: Let f(n) = n + floor(sqrt(n)). Then a(n) is the smallest number of iterations of f on n such that a perfect square is obtained.

Offset 1, canonical program `A171746.P7186216401263044259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171746 (n : ℕ) : ℤ :=
  A171746.P7186216401263044259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172050.P796616272451847665

`3*n+A029907(n)`
-/

namespace A172050.P796616272451847665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A029907 n

end

end A172050.P796616272451847665

noncomputable section

/-- A172050: A008585+A029907.

Offset 0, canonical program `A172050.P796616272451847665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A172050 (n : ℕ) : ℤ :=
  A172050.P796616272451847665.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A172050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172061.P9656388105380330391

`A026641(n+2)-A000958(n+3)`
-/

namespace A172061.P9656388105380330391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 (n + 2) - A000958 (n + 3)

end

end A172061.P9656388105380330391

noncomputable section

/-- A172061: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=4.

Offset 0, canonical program `A172061.P9656388105380330391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A172061 (n : ℕ) : ℤ :=
  A172061.P9656388105380330391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A172061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172062.P6130199588010829759

`∑[A001791(n+2)-A001558(n+1)]`
-/

namespace A172062.P6130199588010829759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 2) - A001558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172062.P6130199588010829759

noncomputable section

/-- A172062: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=5.

Offset 0, canonical program `A172062.P6130199588010829759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A172062 (n : ℕ) : ℤ :=
  A172062.P6130199588010829759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A172062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172180.P2099334084590669202

`abs(A045344(n+1)-A171993(n+1))`
-/

namespace A172180.P2099334084590669202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A045344 (n + 1) - A171993 (n + 1)|

end

end A172180.P2099334084590669202

noncomputable section

/-- A172180: The absolute value of n-th prime of the form 3*n-+1 minus n-th nonprime of the form 3*n-+1.

Offset 1, canonical program `A172180.P2099334084590669202`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045344, A171993, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172180 (n : ℕ) : ℤ :=
  A172180.P2099334084590669202.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045344, A171993, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172180.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172187.P10529955628343830800

`eq[A105570(n+1), A105597(2*n+1)]`
-/

namespace A172187.P10529955628343830800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172187.P10529955628343830800

noncomputable section

/-- A172187: Numbers k such that k and k+1 are squarefree but 2*k+1 is not.

Offset 1, canonical program `A172187.P10529955628343830800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A172187 (n : ℕ) : ℤ :=
  (A172187.P10529955628343830800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A172187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172190.P11849998515760113505

`2*A030078(n+1)`
-/

namespace A172190.P11849998515760113505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030078 (n + 1)

end

end A172190.P11849998515760113505

noncomputable section

/-- A172190: a(n) = 2*prime(n)^3.

Offset 1, canonical program `A172190.P11849998515760113505`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172190 (n : ℕ) : ℤ :=
  A172190.P11849998515760113505.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172190.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172191.P13979974005733689682

`2*A030514(n+1)`
-/

namespace A172191.P13979974005733689682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030514 (n + 1)

end

end A172191.P13979974005733689682

noncomputable section

/-- A172191: a(n) = 2*prime(n)^4.

Offset 1, canonical program `A172191.P13979974005733689682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030514, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172191 (n : ℕ) : ℤ :=
  A172191.P13979974005733689682.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030514, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172404.P17113833198951984415

`eq[3, A008952(n)]`
-/

namespace A172404.P17113833198951984415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A172404.P17113833198951984415

noncomputable section

/-- A172404: Numbers k such that 3 is the first digit of 2^k.

Offset 1, canonical program `A172404.P17113833198951984415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6247 terms. -/
def A172404 (n : ℕ) : ℤ :=
  (A172404.P17113833198951984415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6247 terms. -/
def A172404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172417.P1298405686372069766

`A028303(A111650(n+1))`
-/

namespace A172417.P1298405686372069766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (A111650 (n + 1)).toNat

end

end A172417.P1298405686372069766

noncomputable section

/-- A172417: Triangle read by rows: Catalan number C(n) repeated n times.

Offset 1, canonical program `A172417.P1298405686372069766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172417 (n : ℕ) : ℤ :=
  A172417.P1298405686372069766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172502.P9043156190337301137

`lcm(n+1, A061601(n+1)+n+1)/(n+1)`
-/

namespace A172502.P9043156190337301137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A061601 (n + 1) + (n + 1 : ℤ)) : ℚ) / (n + 1 : ℚ)

end

end A172502.P9043156190337301137

noncomputable section

/-- A172502: Denominator of fraction whose decimal representation has form 0.(n)(n)(n)...with repeating part n.

Offset 1, canonical program `A172502.P9043156190337301137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A172502 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A172502.P9043156190337301137.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A172502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173031.P472100740147014782

`∑[∑[∑[A079282(n)]]]`
-/

namespace A173031.P472100740147014782
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173031.P472100740147014782

noncomputable section

/-- A173031: Sequence whose G.f is given by: 1/(1-z)/(1-2*z)^2/(1-z-z^2).

Offset 0, canonical program `A173031.P472100740147014782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A173031 (n : ℕ) : ℤ :=
  A173031.P472100740147014782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A173031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173137.P14698543260873224992

`A158611(n+1)+A000027(n+1)`
-/

namespace A173137.P14698543260873224992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + A000027 (n + 1)

end

end A173137.P14698543260873224992

noncomputable section

/-- A173137: n-th nonnegative noncomposite number plus n.

Offset 1, canonical program `A173137.P14698543260873224992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173137 (n : ℕ) : ℤ :=
  A173137.P14698543260873224992.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173143.P1652313516613948722

`A144338(n)+a(n-1)` with `a(0)=1`
-/

namespace A173143.P1652313516613948722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A144338 n + a (n - 1)

end

end A173143.P1652313516613948722

noncomputable section

/-- A173143: Partial sums of the squarefree numbers, A005117.

Offset 1, canonical program `A173143.P1652313516613948722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173143 (n : ℕ) : ℤ :=
  A173143.P1652313516613948722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173195.P9910019717270672267

`2^A000267(n)+2^A384688(n)`
-/

namespace A173195.P9910019717270672267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000267 n : ℤ) + (2 : ℚ) ^ (A384688 n : ℤ)

end

end A173195.P9910019717270672267

noncomputable section

/-- A173195: Values of k such that 4^x + 4^y + 4^z = k^2 with arbitrary integers x <= y <= z.

Offset 1, canonical program `A173195.P9910019717270672267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A173195 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A173195.P9910019717270672267.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A173195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173440.P15332837783240740346

`A032741(n+1)+1-A173439(n+1)`
-/

namespace A173440.P15332837783240740346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1 - A173439 (n + 1)

end

end A173440.P15332837783240740346

noncomputable section

/-- A173440: Number of divisors d of number n such that sigma(d) does not divide sigma(n).

Offset 1, canonical program `A173440.P15332837783240740346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173440 (n : ℕ) : ℤ :=
  A173440.P15332837783240740346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173455.P15831782476436382019

`A001065(abs(1-n)+2)`
-/

namespace A173455.P15831782476436382019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (|1 - (n : ℤ)| + 2).toNat

end

end A173455.P15831782476436382019

noncomputable section

/-- A173455: Row sums of triangle A027751.

Offset 1, canonical program `A173455.P15831782476436382019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173455 (n : ℕ) : ℤ :=
  A173455.P15831782476436382019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173830.P15882500641865213836

`p?[A165994(n+1)+1]`
-/

namespace A173830.P15882500641865213836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165994 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173830.P15882500641865213836

noncomputable section

/-- A173830: Primes of the form p - floor(sqrt(p)), p prime.

Offset 1, canonical program `A173830.P15882500641865213836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6148 terms. -/
def A173830 (n : ℕ) : ℤ :=
  A173830.P15882500641865213836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6148 terms. -/
def A173830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173906.P10721168870671252861

`(2*(n+1)-1)*A062940(2*(n+1)-1)+2*(n+1)*A062940(2*(n+1))`
-/

namespace A173906.P10721168870671252861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1) * A062940 (2 * (n + 1) - 1) + (2 * (n + 1) : ℤ) * A062940 (2 * (n + 1))

end

end A173906.P10721168870671252861

noncomputable section

/-- A173906: Total number of digits of the squares of all n-digit numbers.

Offset 1, canonical program `A173906.P10721168870671252861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173906 (n : ℕ) : ℤ :=
  A173906.P10721168870671252861.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173997.P16449646138910811700

`(A082375(n)+1)*A122197(n+1)`
-/

namespace A173997.P16449646138910811700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082375 n + 1) * A122197 (n + 1)

end

end A173997.P16449646138910811700

noncomputable section

/-- A173997: Irregular triangle by columns derived from (1, 2, 3, ...) * (1, 2, 3, ...).

Offset 1, canonical program `A173997.P16449646138910811700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173997 (n : ℕ) : ℤ :=
  A173997.P16449646138910811700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174237.P9308172459336184979

`record[ceil(A002145(n+1)/A082075(n+1))]`
-/

namespace A174237.P9308172459336184979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002145 (n + 1) : ℚ) / (A082075 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174237.P9308172459336184979

noncomputable section

/-- A174237: Numbers n such that 4n-1 and 4n+3 are prime.

Offset 1, canonical program `A174237.P9308172459336184979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1198 terms. -/
def A174237 (n : ℕ) : ℤ :=
  A174237.P9308172459336184979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1198 terms. -/
def A174237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174466.P14318302255524378006

`∑{d}[n+1, A034718(#)]`
-/

namespace A174466.P14318302255524378006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034718 d

end

end A174466.P14318302255524378006

noncomputable section

/-- A174466: a(n) = Sum_{d|n} d*sigma(n/d)*tau(d).

Offset 1, canonical program `A174466.P14318302255524378006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174466 (n : ℕ) : ℤ :=
  A174466.P14318302255524378006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174658.P17580556523659380236

`2*eq[A089643(2*n), A089643(n)]`
-/

namespace A174658.P17580556523659380236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174658.P17580556523659380236

noncomputable section

/-- A174658: Balanced ternary numbers with equal count of negative trits and positive trits.

Offset 1, canonical program `A174658.P17580556523659380236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3293 terms. -/
def A174658 (n : ℕ) : ℤ :=
  (A174658.P17580556523659380236.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3293 terms. -/
def A174658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174850.P7714506034839295720

`A165248(n)-10*A188134(n)`
-/

namespace A174850.P7714506034839295720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165248 n - 10 * A188134 n

end

end A174850.P7714506034839295720

noncomputable section

/-- A174850: Quintisection A061037(5*n-2).

Offset 0, canonical program `A174850.P7714506034839295720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174850 (n : ℕ) : ℤ :=
  A174850.P7714506034839295720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175114.P11097718546423522819

`lcm(A144965(n)+A022144(n), A010014(n))`
-/

namespace A175114.P11097718546423522819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A144965 n + A022144 n) (A010014 n)

end

end A175114.P11097718546423522819

noncomputable section

/-- A175114: First differences of A175113.

Offset 0, canonical program `A175114.P11097718546423522819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175114 (n : ℕ) : ℤ :=
  (A175114.P11097718546423522819.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175253.P7822939282831738553

`1-A175192(n+1)`
-/

namespace A175253.P7822939282831738553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A175192 (n + 1)

end

end A175253.P7822939282831738553

noncomputable section

/-- A175253: a(n) = characteristic function of numbers k such that A000203(m) = k has no solution for any m, where A000203(m) = sum of divisors of m.

Offset 1, canonical program `A175253.P7822939282831738553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175253 (n : ℕ) : ℤ :=
  A175253.P7822939282831738553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175298.P14996771315134995194

`or(n, n-A055945(n))`
-/

namespace A175298.P14996771315134995194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - A055945 n)

end

end A175298.P14996771315134995194

noncomputable section

/-- A175298: Smallest number >=n whose binary representation is palindromic and has a 1 whenever the binary representation of n has a 1.

Offset 0, canonical program `A175298.P14996771315134995194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175298 (n : ℕ) : ℤ :=
  A175298.P14996771315134995194.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175441.P11345916668563517181

`lcm(A001008(n+1), A103517(n))/A103517(n)`
-/

namespace A175441.P11345916668563517181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001008 (n + 1)) (A103517 n) : ℚ) / (A103517 n : ℚ)

end

end A175441.P11345916668563517181

noncomputable section

/-- A175441: Denominator of the harmonic mean of the first n positive integers.

Offset 1, canonical program `A175441.P11345916668563517181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A175441 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A175441.P11345916668563517181.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A175441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175856.P13215807738889420678

`n+3-2*A175851(n+1)`
-/

namespace A175856.P13215807738889420678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - 2 * A175851 (n + 1)

end

end A175856.P13215807738889420678

noncomputable section

/-- A175856: a(n) = a(n-1) - 1 if n is composite, a(n) = n otherwise.

Offset 1, canonical program `A175856.P13215807738889420678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175856 (n : ℕ) : ℤ :=
  A175856.P13215807738889420678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175919.P9342082527365393068

`xor(n, n-A055945(n))`
-/

namespace A175919.P9342082527365393068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - A055945 n)

end

end A175919.P9342082527365393068

noncomputable section

/-- A175919: Convert n to binary. XOR each respective digit of binary n and binary A030101(n), where A030101(n) is the reversal of the order of the digits in the binary representation of n (given in decimal). a(n) is the decimal value of the result.

Offset 0, canonical program `A175919.P9342082527365393068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175919 (n : ℕ) : ℤ :=
  A175919.P9342082527365393068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175965.P352043763123529774

`∑[A158611(n+1)]+1`
-/

namespace A175965.P352043763123529774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175965.P352043763123529774

noncomputable section

/-- A175965: Lexicographically earliest sequence with first differences as increasing sequence of noncomposites A008578.

Offset 1, canonical program `A175965.P352043763123529774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175965 (n : ℕ) : ℤ :=
  A175965.P352043763123529774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176044.P4140518782580765565

`floor(A116572(n+1)/2)`
-/

namespace A176044.P4140518782580765565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116572 (n + 1) : ℚ) / 2⌋

end

end A176044.P4140518782580765565

noncomputable section

/-- A176044: n-th-prime without last digit.

Offset 1, canonical program `A176044.P4140518782580765565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176044 (n : ℕ) : ℤ :=
  A176044.P4140518782580765565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176083.P14870797624367828055

`(2^n)²%A065091(2*n+1)`
-/

namespace A176083.P14870797624367828055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 ^ n) ^ 2 : ℤ) (A065091 (2 * n + 1))

end

end A176083.P14870797624367828055

noncomputable section

/-- A176083: a(n) = 2^(2n-2) mod prime(2n).

Offset 1, canonical program `A176083.P14870797624367828055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A176083 (n : ℕ) : ℤ :=
  A176083.P14870797624367828055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A176083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176098.P6245199818631758483

`A000040(n+1)*A158611(n+1)`
-/

namespace A176098.P6245199818631758483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A158611 (n + 1)

end

end A176098.P6245199818631758483

noncomputable section

/-- A176098: a(n) = prime(n) times the n-th nonnegative noncomposite.

Offset 1, canonical program `A176098.P6245199818631758483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A158611, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A176098 (n : ℕ) : ℤ :=
  A176098.P6245199818631758483.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A158611, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A176098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176099.P9012138133380975833

`A158611(n+1)+A000040(n+1)`
-/

namespace A176099.P9012138133380975833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + A000040 (n + 1)

end

end A176099.P9012138133380975833

noncomputable section

/-- A176099: Prime(n) + A158611(n).

Offset 1, canonical program `A176099.P9012138133380975833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176099 (n : ℕ) : ℤ :=
  A176099.P9012138133380975833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176238.P9477818329557450048

`lt[1, A001065(A032741(n)+2)]`
-/

namespace A176238.P9477818329557450048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A032741 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176238.P9477818329557450048

noncomputable section

/-- A176238: Natural numbers n such that d(d(n)+1) > 2.

Offset 1, canonical program `A176238.P9477818329557450048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176238 (n : ℕ) : ℤ :=
  (A176238.P9477818329557450048.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176280.P16719572012467488895

`A081696(n)+A001076(n)`
-/

namespace A176280.P16719572012467488895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081696 n + A001076 n

end

end A176280.P16719572012467488895

noncomputable section

/-- A176280: Diagonal sums of number triangle A046521.

Offset 0, canonical program `A176280.P16719572012467488895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A176280 (n : ℕ) : ℤ :=
  A176280.P16719572012467488895.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A176280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176423.P6772582188731160605

`A018252((n+3)%a(n-1))` with `a(0)=3, a(1)=6`
-/

namespace A176423.P6772582188731160605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  A018252 (Int.tmod (n + 3 : ℤ) (a (n - 1))).toNat

end

end A176423.P6772582188731160605

noncomputable section

/-- A176423: Numbers that are the sum of at least three distinct nonnegative integers in arithmetic progression.

Offset 1, canonical program `A176423.P6772582188731160605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176423 (n : ℕ) : ℤ :=
  A176423.P6772582188731160605.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176496.P3468510325933949683

`a(n-1)+2^A018252(n+1)` with `a(0)=2`
-/

namespace A176496.P3468510325933949683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (2 : ℚ) ^ (A018252 (n + 1) : ℤ)

end

end A176496.P3468510325933949683

noncomputable section

/-- A176496: a(n) = Sum_{k=1..n} 2^nonprime(k).

Offset 1, canonical program `A176496.P3468510325933949683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176496 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A176496.P3468510325933949683.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176496.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176569.P11201890178761962617

`(-1)^(n+1)+A045344(n+1)`
-/

namespace A176569.P11201890178761962617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) + A045344 (n + 1)

end

end A176569.P11201890178761962617

noncomputable section

/-- A176569: a(n) = (-1)^n + (n-th prime of the form 3k-+1).

Offset 1, canonical program `A176569.P11201890178761962617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176569 (n : ℕ) : ℤ :=
  A176569.P11201890178761962617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176569.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176570.P4009191812961714339

`A026741(eq[2, ∑{e}[n, #]])`
-/

namespace A176570.P4009191812961714339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176570.P4009191812961714339

noncomputable section

/-- A176570: a(n)=n-th semiprime if n-th semiprime odd and n-th semiprime/2 if n-th semiprime even.

Offset 1, canonical program `A176570.P4009191812961714339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176570 (n : ℕ) : ℤ :=
  A176570.P4009191812961714339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176628.P12825066259648755443

`A174008(n+1)-(n+1)`
-/

namespace A176628.P12825066259648755443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174008 (n + 1) - (n + 1 : ℤ)

end

end A176628.P12825066259648755443

noncomputable section

/-- A176628: a(n) = prime(n) - n*(-1)^prime(n).

Offset 1, canonical program `A176628.P12825066259648755443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176628 (n : ℕ) : ℤ :=
  A176628.P12825066259648755443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177092.P4641529934415487522

`p?[A111312(n+1)]`
-/

namespace A177092.P4641529934415487522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177092.P4641529934415487522

noncomputable section

/-- A177092: Primes p such that 11*p + 2 is also prime.

Offset 1, canonical program `A177092.P4641529934415487522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A177092 (n : ℕ) : ℤ :=
  A177092.P4641529934415487522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A177092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177727.P615805057200733225

`A000045(n+1)*A001655(n)`
-/

namespace A177727.P615805057200733225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A001655 n

end

end A177727.P615805057200733225

noncomputable section

/-- A177727: a(0)=1; a(n) = a(n-1) * Fibonacci(3+n) * Fibonacci(1+n) / (Fibonacci(n))^2, n > 1.

Offset 0, canonical program `A177727.P615805057200733225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A177727 (n : ℕ) : ℤ :=
  A177727.P615805057200733225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A177727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177946.P1748134400576115326

`A039716(n+1)/A000142(n+1)`
-/

namespace A177946.P1748134400576115326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039716 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A177946.P1748134400576115326

noncomputable section

/-- A177946: a(n) = prime(n)! / n!.

Offset 1, canonical program `A177946.P1748134400576115326`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177946 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A177946.P1748134400576115326.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177946.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178067.P11593963398579971836

`A000217(A004736(n+1)+n)-∑[n]`
-/

namespace A178067.P11593963398579971836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004736 (n + 1) + (n : ℤ)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A178067.P11593963398579971836

noncomputable section

/-- A178067: Triangle read by rows: T(n,k) = (n^2 + k)*(n - k + 1)/2.

Offset 1, canonical program `A178067.P11593963398579971836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178067 (n : ℕ) : ℤ :=
  A178067.P11593963398579971836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178211.P14444441183906991302

`A001248(n+1)%(n+1)`
-/

namespace A178211.P14444441183906991302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1)) (n + 1 : ℤ)

end

end A178211.P14444441183906991302

noncomputable section

/-- A178211: a(n) = prime(n)^2 mod n.

Offset 1, canonical program `A178211.P14444441183906991302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178211 (n : ℕ) : ℤ :=
  A178211.P14444441183906991302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178445.P412629399429829829

`A001248(n+1)%(n+1)²`
-/

namespace A178445.P412629399429829829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A178445.P412629399429829829

noncomputable section

/-- A178445: a(n) = prime(n)^2 mod n^2.

Offset 1, canonical program `A178445.P412629399429829829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178445 (n : ℕ) : ℤ :=
  A178445.P412629399429829829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178462.P16727862462628083790

`lt[n+1, 2*A004648(n+1)]+1`
-/

namespace A178462.P16727862462628083790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004648 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A178462.P16727862462628083790

noncomputable section

/-- A178462: Numbers k such that prime(k) mod k > k/2.

Offset 1, canonical program `A178462.P16727862462628083790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3993 terms. -/
def A178462 (n : ℕ) : ℤ :=
  (A178462.P16727862462628083790.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3993 terms. -/
def A178462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178614.P3968478043835653884

`A039716(n+1)/A000142(n+2)`
-/

namespace A178614.P3968478043835653884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039716 (n + 1) : ℚ) / (A000142 (n + 2) : ℚ)

end

end A178614.P3968478043835653884

noncomputable section

/-- A178614: a(n) = prime(n)!/(n+1)!.

Offset 1, canonical program `A178614.P3968478043835653884`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178614 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178614.P3968478043835653884.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178614.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178914.P15550462812133884735

`A061601(n)+1`
-/

namespace A178914.P15550462812133884735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n + 1

end

end A178914.P15550462812133884735

noncomputable section

/-- A178914: 10's complement of nonnegative numbers.

Offset 0, canonical program `A178914.P15550462812133884735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178914 (n : ℕ) : ℤ :=
  A178914.P15550462812133884735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179084.P14438194150601923336

`A179083(n+1)+1`
-/

namespace A179084.P14438194150601923336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179083 (n + 1) + 1

end

end A179084.P14438194150601923336

noncomputable section

/-- A179084: Odd numbers having an even sum of digits in their decimal representation.

Offset 1, canonical program `A179084.P14438194150601923336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179084 (n : ℕ) : ℤ :=
  A179084.P14438194150601923336.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179085.P446774508924507487

`A179082(n+1)+1`
-/

namespace A179085.P446774508924507487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1) + 1

end

end A179085.P446774508924507487

noncomputable section

/-- A179085: Odd numbers having an odd sum of digits in their decimal representation.

Offset 1, canonical program `A179085.P446774508924507487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179085 (n : ℕ) : ℤ :=
  A179085.P446774508924507487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179396.P13986853807161637777

`A000040(n+1)²%A045344(n+4)`
-/

namespace A179396.P13986853807161637777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) ^ 2) (A045344 (n + 4))

end

end A179396.P13986853807161637777

noncomputable section

/-- A179396: a(n) = prime(n)^2 modulo prime(n+4).

Offset 1, canonical program `A179396.P13986853807161637777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A179396 (n : ℕ) : ℤ :=
  A179396.P13986853807161637777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A179396.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A179626.P7373420755373197027

`A175851(eq[1, A082551(n+1)])`
-/

namespace A179626.P7373420755373197027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179626.P7373420755373197027

noncomputable section

/-- A179626: Distance between the n-th abundant number and the nearest prime below it.

Offset 1, canonical program `A179626.P7373420755373197027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179626 (n : ℕ) : ℤ :=
  A179626.P7373420755373197027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179802.P15808026225765570397

`A010888(A179545(n+1))`
-/

namespace A179802.P15808026225765570397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A179545 (n + 1)).toNat

end

end A179802.P15808026225765570397

noncomputable section

/-- A179802: Digital root of A179545.

Offset 1, canonical program `A179802.P15808026225765570397`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179545, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179802 (n : ℕ) : ℤ :=
  A179802.P15808026225765570397.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179545, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179952.P16029482898414679396

`A099475((∑[n]+n)%(n+1)+1)`
-/

namespace A179952.P16029482898414679396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099475 ((∑ j ∈ Finset.range (n + 1), f1 j + n) % (n + 1) + 1)

end

end A179952.P16029482898414679396

noncomputable section

/-- A179952: Add 1 to all the divisors of n. a(n) = number of perfect squares in the set.

Offset 1, canonical program `A179952.P16029482898414679396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179952 (n : ℕ) : ℤ :=
  A179952.P16029482898414679396.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180094.P6183651990917072129

`a(A000120(n))+1` with `a(0)=0, a(1)=0`
-/

namespace A180094.P6183651990917072129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (A000120 n).toNat + 1

end

end A180094.P6183651990917072129

noncomputable section

/-- A180094: Number of steps to reach 0 or 1, starting with n and applying the map k -> (number of 1's in binary expansion of k) repeatedly.

Offset 0, canonical program `A180094.P6183651990917072129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180094 (n : ℕ) : ℤ :=
  (A180094.P6183651990917072129.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180098.P1967825788800352115

`∑{d}[A180097(n+1), #]`
-/

namespace A180098.P1967825788800352115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A180098.P1967825788800352115

noncomputable section

/-- A180098: Sigma(A180097(n)), sum of divisors of A180097(n), numbers n such that sigma(n) is powerful.

Offset 1, canonical program `A180098.P1967825788800352115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180098 (n : ℕ) : ℤ :=
  (A180098.P1967825788800352115.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180173.P7124029970426353603

`gcd(n+1, A040976(n+1))`
-/

namespace A180173.P7124029970426353603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A040976 (n + 1))

end

end A180173.P7124029970426353603

noncomputable section

/-- A180173: a(n) = gcd(prime(n)-2, n).

Offset 1, canonical program `A180173.P7124029970426353603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180173 (n : ℕ) : ℤ :=
  (A180173.P7124029970426353603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180201.P8787023281284758013

`xor(n, floor(A035327(n)/2))`
-/

namespace A180201.P8787023281284758013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(A035327 n : ℚ) / 2⌋

end

end A180201.P8787023281284758013

noncomputable section

/-- A180201: Inverse permutation to A180200.

Offset 0, canonical program `A180201.P8787023281284758013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180201 (n : ℕ) : ℤ :=
  A180201.P8787023281284758013.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180217.P8135109345917219765

`A039702(n+1)+A039701(n+1)`
-/

namespace A180217.P8135109345917219765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1) + A039701 (n + 1)

end

end A180217.P8135109345917219765

noncomputable section

/-- A180217: a(n) = (n-th prime modulo 3) + (n-th prime modulo 4).

Offset 1, canonical program `A180217.P8135109345917219765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180217 (n : ℕ) : ℤ :=
  A180217.P8135109345917219765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180266.P9271125515567740913

`(A115140(n)-A002420(n))*A160457(n)`
-/

namespace A180266.P9271125515567740913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A115140 n - A002420 n) * A160457 n

end

end A180266.P9271125515567740913

noncomputable section

/-- A180266: a(0) = 0; a(n) = C(2*n-2,n-1)*(n^2-2*n+2)/n for n >= 1.

Offset 0, canonical program `A180266.P9271125515567740913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A180266 (n : ℕ) : ℤ :=
  A180266.P9271125515567740913.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A180266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180367.P15385341568531694124

`A180363(n+1)-A094894(n)`
-/

namespace A180367.P15385341568531694124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180363 (n + 1) - A094894 n

end

end A180367.P15385341568531694124

noncomputable section

/-- A180367: a(n) = Lucas(prime(n+1)) - prime(Lucas(n)), for Lucas numbers beginning at 2.

Offset 0, canonical program `A180367.P15385341568531694124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094894, A180363, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A180367 (n : ℕ) : ℤ :=
  A180367.P15385341568531694124.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094894, A180363, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A180367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180411.P17944888598162939030

`A163407(A102467(n+2))`
-/

namespace A180411.P17944888598162939030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163407 (A102467 (n + 2)).toNat

end

end A180411.P17944888598162939030

noncomputable section

/-- A180411: Sum of the semiprime divisors (with repetition) of the n-th number with two or more distinct semiprime divisors.

Offset 1, canonical program `A180411.P17944888598162939030`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102467, A163407, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A180411 (n : ℕ) : ℤ :=
  A180411.P17944888598162939030.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102467, A163407, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A180411.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180490.P12221106932613284276

`eq[0, (n+1)%A000120(n+1)²]+1`
-/

namespace A180490.P12221106932613284276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000120 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180490.P12221106932613284276

noncomputable section

/-- A180490: Numbers k such that (A000120(k))^2 divides k.

Offset 1, canonical program `A180490.P12221106932613284276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. -/
def A180490 (n : ℕ) : ℤ :=
  (A180490.P12221106932613284276.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. -/
def A180490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180574.P10800761777859421286

`(A167614(n+2)+A007494(n))*(n+3)`
-/

namespace A180574.P10800761777859421286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167614 (n + 2) + A007494 n) * (n + 3 : ℤ)

end

end A180574.P10800761777859421286

noncomputable section

/-- A180574: Wiener index of the n-sunlet graph.

Offset 3, canonical program `A180574.P10800761777859421286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A180574 (n : ℕ) : ℤ :=
  A180574.P10800761777859421286.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A180574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180617.P4406684303062301047

`A006094(n+1)+A001043(n+1)+1`
-/

namespace A180617.P4406684303062301047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + A001043 (n + 1) + 1

end

end A180617.P4406684303062301047

noncomputable section

/-- A180617: Sum of divisors of the product of two consecutive primes.

Offset 1, canonical program `A180617.P4406684303062301047`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A180617 (n : ℕ) : ℤ :=
  A180617.P4406684303062301047.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A180617.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180864.P12688138741425306482

`A168221(a(n-2))` with `a(0)=13, a(1)=10`
-/

namespace A180864.P12688138741425306482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 10] fun n a =>
  A168221 (a (n - 2)).toNat

end

end A180864.P12688138741425306482

noncomputable section

/-- A180864: Trajectory of 13 under map n->A006368(n).

Offset 0, canonical program `A180864.P12688138741425306482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A180864 (n : ℕ) : ℤ :=
  A180864.P12688138741425306482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A180864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180953.P18395862336695284303

`∑[A123384(n)+comp[A066343(n+1)]]`
-/

namespace A180953.P18395862336695284303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066343 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180953.P18395862336695284303

noncomputable section

/-- A180953: The number of terms of the form 2^i*5^j (A003592) less than or equal to 10^n.

Offset 0, canonical program `A180953.P18395862336695284303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4793 terms. -/
def A180953 (n : ℕ) : ℤ :=
  A180953.P18395862336695284303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4793 terms. -/
def A180953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181150.P14351392698592604108

`A030078(n+1)+A008864(n+1)`
-/

namespace A181150.P14351392698592604108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) + A008864 (n + 1)

end

end A181150.P14351392698592604108

noncomputable section

/-- A181150: a(n) = prime(n)^3 + prime(n) + 1.

Offset 1, canonical program `A181150.P14351392698592604108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181150 (n : ℕ) : ℤ :=
  A181150.P14351392698592604108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181354.P10064624979457329001

`abs(Δ[A018005(n+1)])`
-/

namespace A181354.P10064624979457329001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A181354.P10064624979457329001

noncomputable section

/-- A181354: Number of n-digit perfect cubes.

Offset 1, canonical program `A181354.P10064624979457329001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A181354 (n : ℕ) : ℤ :=
  A181354.P10064624979457329001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A181354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181428.P2003735190548304675

`A065091(n+1)+A031131(n+1)`
-/

namespace A181428.P2003735190548304675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A031131 (n + 1)

end

end A181428.P2003735190548304675

noncomputable section

/-- A181428: a(n) = prime(n+2) + prime(n+1) - prime(n).

Offset 1, canonical program `A181428.P2003735190548304675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181428 (n : ℕ) : ℤ :=
  A181428.P2003735190548304675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181577.P9112885934417326049

`p?[A080087(n+1)]`
-/

namespace A181577.P9112885934417326049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181577.P9112885934417326049

noncomputable section

/-- A181577: Prime number of trailing end 0's associated with p! where p = A181576(n).

Offset 1, canonical program `A181577.P9112885934417326049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1149 terms. -/
def A181577 (n : ℕ) : ℤ :=
  A181577.P9112885934417326049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1149 terms. -/
def A181577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181641.P10826610368227249791

`2*A115140(n)-a(n-1)` with `a(0)=1`
-/

namespace A181641.P10826610368227249791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A115140 n - a (n - 1)

end

end A181641.P10826610368227249791

noncomputable section

/-- A181641: Expansion of sqrt(1-4*x)/(1+x).

Offset 0, canonical program `A181641.P10826610368227249791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A181641 (n : ℕ) : ℤ :=
  A181641.P10826610368227249791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A181641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181709.P11612735428797642774

`A144769(n+3)+1`
-/

namespace A181709.P11612735428797642774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (n + 3) + 1

end

end A181709.P11612735428797642774

noncomputable section

/-- A181709: Indices of primes in A007310.

Offset 1, canonical program `A181709.P11612735428797642774`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144769, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181709 (n : ℕ) : ℤ :=
  A181709.P11612735428797642774.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144769, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181709.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181905.P12782552284517024142

`∑{d}[A162397(n+1), #*A162397(#)]`
-/

namespace A181905.P12782552284517024142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A162397 d

end

end A181905.P12782552284517024142

noncomputable section

/-- A181905: Expansion of (b(q^3)^3 - b(q)^3) / 9 in powers of q where b() is a cubic AGM theta function.

Offset 1, canonical program `A181905.P12782552284517024142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A181905 (n : ℕ) : ℤ :=
  A181905.P12782552284517024142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A181905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181940.P15678314740941203251

`A004737(Δ[n²])-1`
-/

namespace A181940.P15678314740941203251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A181940.P15678314740941203251

noncomputable section

/-- A181940: a(0)=0, and there are a(n) terms between a(n) and the nearest a(n)+1.

Offset 0, canonical program `A181940.P15678314740941203251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181940 (n : ℕ) : ℤ :=
  A181940.P15678314740941203251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182174.P17683556818926357754

`A001248(n+1)-(n+1)`
-/

namespace A182174.P17683556818926357754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - (n + 1 : ℤ)

end

end A182174.P17683556818926357754

noncomputable section

/-- A182174: a(n) = prime(n)^2 - n.

Offset 1, canonical program `A182174.P17683556818926357754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182174 (n : ℕ) : ℤ :=
  A182174.P17683556818926357754.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182174.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182321.P13354120704711382956

`a(A004736(n)-1)+1` with `a(0)=0`
-/

namespace A182321.P13354120704711382956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A004736 n - 1).toNat + 1

end

end A182321.P13354120704711382956

noncomputable section

/-- A182321: Number of iterations of A025581(n) required to reach 0.

Offset 0, canonical program `A182321.P13354120704711382956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A182321 (n : ℕ) : ℤ :=
  (A182321.P13354120704711382956.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A182321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182555.P4612867072512672630

`A153335(n+1)+A027306(n)`
-/

namespace A182555.P4612867072512672630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153335 (n + 1) + A027306 n

end

end A182555.P4612867072512672630

noncomputable section

/-- A182555: Expansion of g.f. (3-4*x-sqrt(1-4*x^2))/(2*(1-2*x)^2).

Offset 0, canonical program `A182555.P4612867072512672630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A182555 (n : ℕ) : ℤ :=
  A182555.P4612867072512672630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A182555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183140.P17476098312596561031

`∑[n]-A183139(n+1)`
-/

namespace A183140.P17476098312596561031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A183139 (n + 1)

end

end A183140.P17476098312596561031

noncomputable section

/-- A183140: a(n) = [1/s]+[2/s]+...+[n/s], where s=2+sqrt(2) and []=floor.

Offset 0, canonical program `A183140.P17476098312596561031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183140 (n : ℕ) : ℤ :=
  A183140.P17476098312596561031.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183140.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A183626.P17793019024115659213

`A183624(n+1)+6*A175161(n)`
-/

namespace A183626.P17793019024115659213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183624 (n + 1) + 6 * A175161 n

end

end A183626.P17793019024115659213

noncomputable section

/-- A183626: Number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock summing to 4.

Offset 1, canonical program `A183626.P17793019024115659213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A183626 (n : ℕ) : ℤ :=
  A183626.P17793019024115659213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A183626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183674.P5950663328750644984

`A001555(n+2)+A001554(n+2)`
-/

namespace A183674.P5950663328750644984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001555 (n + 2) + A001554 (n + 2)

end

end A183674.P5950663328750644984

noncomputable section

/-- A183674: Number of (n+1) X 2 0..7 arrays with every 2 X 2 subblock summing to 14.

Offset 1, canonical program `A183674.P5950663328750644984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A183674 (n : ℕ) : ℤ :=
  A183674.P5950663328750644984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A183674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183980.P16686492784855732244

`A183979(n+1)+3`
-/

namespace A183980.P16686492784855732244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183979 (n + 1) + 3

end

end A183980.P16686492784855732244

noncomputable section

/-- A183980: 1/4 the number of (n+1) X 4 binary arrays with all 2 X 2 subblock sums the same.

Offset 1, canonical program `A183980.P16686492784855732244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A183980 (n : ℕ) : ℤ :=
  A183980.P16686492784855732244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A183980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183985.P17831467711889554897

`A183984(n+1)+72`
-/

namespace A183985.P17831467711889554897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183984 (n + 1) + 72

end

end A183985.P17831467711889554897

noncomputable section

/-- A183985: 1/4 the number of (n+1) X 9 binary arrays with all 2 X 2 subblock sums the same.

Offset 1, canonical program `A183985.P17831467711889554897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A183985 (n : ℕ) : ℤ :=
  A183985.P17831467711889554897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A183985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184032.P3266962938891637893

`A184031(n+1)+12`
-/

namespace A184032.P3266962938891637893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184031 (n + 1) + 12

end

end A184032.P3266962938891637893

noncomputable section

/-- A184032: 1/16 the number of (n+1) X 3 0..3 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184032.P3266962938891637893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184032 (n : ℕ) : ℤ :=
  A184032.P3266962938891637893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184044.P4683206552624240549

`A183984(n+3)-5`
-/

namespace A184044.P4683206552624240549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183984 (n + 3) - 5

end

end A184044.P4683206552624240549

noncomputable section

/-- A184044: 1/9 the number of (n+1) X 6 0..2 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184044.P4683206552624240549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184044 (n : ℕ) : ℤ :=
  A184044.P4683206552624240549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184044.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A184431.P12849044017549371650

`comp[A109900(n)+A042965(n+1)]`
-/

namespace A184431.P12849044017549371650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n + A042965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184431.P12849044017549371650

noncomputable section

/-- A184431: Lower s-Wythoff sequence, where s=A184431 (eighth-cubes). Complement of A184432.

Offset 1, canonical program `A184431.P12849044017549371650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A184431 (n : ℕ) : ℤ :=
  (A184431.P12849044017549371650.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A184431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184585.P1386653981140706094

`floor(A003231(3*n+4)/6)`
-/

namespace A184585.P1386653981140706094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003231 (3 * n + 4) : ℚ) / 6⌋

end

end A184585.P1386653981140706094

noncomputable section

/-- A184585: a(n) = floor(n*s + c*s), where r = sqrt(5), c = 1/3, s = r/(r-1); complement of A184584.

Offset 1, canonical program `A184585.P1386653981140706094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A184585 (n : ℕ) : ℤ :=
  A184585.P1386653981140706094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A184585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184593.P9834984849118974199

`∑[5-A007652(n+1)]`
-/

namespace A184593.P9834984849118974199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A007652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184593.P9834984849118974199

noncomputable section

/-- A184593: 5n - A101306: sum_{i=1..n} the last digit of prime(i).

Offset 1, canonical program `A184593.P9834984849118974199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184593 (n : ℕ) : ℤ :=
  A184593.P9834984849118974199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184593.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A184775.P16636506447541360976

`A049474(p?[A001951(n)])`
-/

namespace A184775.P16636506447541360976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184775.P16636506447541360976

noncomputable section

/-- A184775: Numbers k such that floor(k*sqrt(2)) is prime.

Offset 1, canonical program `A184775.P16636506447541360976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. -/
def A184775 (n : ℕ) : ℤ :=
  A184775.P16636506447541360976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. -/
def A184775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184857.P1403224485017277280

`ceil((1-1/e)*p?[A054385(n+1)])`
-/

namespace A184857.P1403224485017277280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - 1 / Real.exp 1) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉

end

end A184857.P1403224485017277280

noncomputable section

/-- A184857: Numbers k such that floor(k*e/(e-1)) is prime.

Offset 1, canonical program `A184857.P1403224485017277280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. -/
def A184857 (n : ℕ) : ℤ :=
  A184857.P1403224485017277280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. -/
def A184857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184901.P11583843455299283413

`A003231(n+1)+A001961(n+1)`
-/

namespace A184901.P11583843455299283413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (n + 1) + A001961 (n + 1)

end

end A184901.P11583843455299283413

noncomputable section

/-- A184901: n+floor(ns/r)+floor(nt/r), where r=(1+sqrt(5))/2, s=r+1, t=r+2.

Offset 1, canonical program `A184901.P11583843455299283413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184901 (n : ℕ) : ℤ :=
  A184901.P11583843455299283413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185251.P6434148689965256975

`n*A058622(A028310(n)-1)`
-/

namespace A185251.P6434148689965256975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A058622 (A028310 n - 1).toNat

end

end A185251.P6434148689965256975

noncomputable section

/-- A185251: a(n) = Sum_{k=0..floor(n/2)} k*binomial(n,k).

Offset 0, canonical program `A185251.P6434148689965256975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A185251 (n : ℕ) : ℤ :=
  A185251.P6434148689965256975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A185251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185706.P14095744241948126582

`A001878(A118136(n))`
-/

namespace A185706.P14095744241948126582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A118136 n).toNat

end

end A185706.P14095744241948126582

noncomputable section

/-- A185706: Characteristic function of positive numbers that are primes ending in 3.

Offset 1, canonical program `A185706.P14095744241948126582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185706 (n : ℕ) : ℤ :=
  A185706.P14095744241948126582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185868.P10486727783938212778

`∑[xor(1, A198954(n))+1]`
-/

namespace A185868.P10486727783938212778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A198954 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185868.P10486727783938212778

noncomputable section

/-- A185868: (Odd,odd)-polka dot array in the natural number array A000027, by antidiagonals.

Offset 1, canonical program `A185868.P10486727783938212778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185868 (n : ℕ) : ℤ :=
  A185868.P10486727783938212778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185870.P13540371757050284022

`A185869(n+1)+1`
-/

namespace A185870.P13540371757050284022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185869 (n + 1) + 1

end

end A185870.P13540371757050284022

noncomputable section

/-- A185870: (Even,odd)-polka dot array in the natural number array A000027, by antidiagonals.

Offset 1, canonical program `A185870.P13540371757050284022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185870 (n : ℕ) : ℤ :=
  A185870.P13540371757050284022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185879.P7693363345362446651

`lcm(A023532(n)-A198954(n), A280560(n))`
-/

namespace A185879.P7693363345362446651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A023532 n - A198954 n) (A280560 n)

end

end A185879.P7693363345362446651

noncomputable section

/-- A185879: Weight array of A185877, by antidiagonals.

Offset 1, canonical program `A185879.P7693363345362446651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185879 (n : ℕ) : ℤ :=
  (A185879.P7693363345362446651.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185911.P10711686436472147663

`A127775(n+1)+A073424(n)`
-/

namespace A185911.P10711686436472147663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127775 (n + 1) + A073424 n

end

end A185911.P10711686436472147663

noncomputable section

/-- A185911: Weight array of A185910, by antidiagonals.

Offset 1, canonical program `A185911.P10711686436472147663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185911 (n : ℕ) : ℤ :=
  A185911.P10711686436472147663.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185917.P4328663214748278600

`A010054(n+1)+A010054(n)-A003982(n)`
-/

namespace A185917.P4328663214748278600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) + (A010054 n - A003982 n)

end

end A185917.P4328663214748278600

noncomputable section

/-- A185917: Weight array of max{n,k}, by antidiagonals.

Offset 1, canonical program `A185917.P4328663214748278600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185917 (n : ℕ) : ℤ :=
  A185917.P4328663214748278600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186039.P9738146870542267959

`(-1)^A186038(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186039.P9738146870542267959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A186038 n : ℤ)

end

end A186039.P9738146870542267959

noncomputable section

/-- A186039: a(n) = (-1)^A186038(n).

Offset 0, canonical program `A186039.P9738146870542267959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186039 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186039.P9738146870542267959.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186111.P16210074353666513766

`2*A022998(A026741(n+1))-A195140(n+1)`
-/

namespace A186111.P16210074353666513766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022998 (A026741 (n + 1)).toNat - A195140 (n + 1)

end

end A186111.P16210074353666513766

noncomputable section

/-- A186111: a(n) = -n if n odd, a(2n) = 3n if n odd, a(4n) = 2n.

Offset 1, canonical program `A186111.P16210074353666513766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186111 (n : ℕ) : ℤ :=
  A186111.P16210074353666513766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186228.P1421286630599041458

`floor(sqrt(Δ[n²]*A003622(2*(n+1))))`
-/

namespace A186228.P1421286630599041458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A003622 (2 * (n + 1)))

end

end A186228.P1421286630599041458

noncomputable section

/-- A186228: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and heptagonal numbers. Complement of A186227.

Offset 1, canonical program `A186228.P1421286630599041458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186228 (n : ℕ) : ℤ :=
  A186228.P1421286630599041458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186235.P7235591364071035020

`A294473(n+2)+A294473(n+3)-A294139(n+2)`
-/

namespace A186235.P7235591364071035020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294473 (n + 2) + (A294473 (n + 3) - A294139 (n + 2))

end

end A186235.P7235591364071035020

noncomputable section

/-- A186235: Total Wiener index of double-star trees with n nodes.

Offset 4, canonical program `A186235.P7235591364071035020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A186235 (n : ℕ) : ℤ :=
  A186235.P7235591364071035020.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A186235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186285.P14281072484363093120

`eq[2, A038148(n+1)]+1`
-/

namespace A186285.P14281072484363093120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038148 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A186285.P14281072484363093120

noncomputable section

/-- A186285: Numbers of the form p^(3^k) where p is prime and k >= 0.

Offset 1, canonical program `A186285.P14281072484363093120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1238 terms. -/
def A186285 (n : ℕ) : ℤ :=
  (A186285.P14281072484363093120.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1238 terms. -/
def A186285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186290.P8934827223131993448

`A186288(n+1)+char[A251914(n+1)]`
-/

namespace A186290.P8934827223131993448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251914 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186288 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186290.P8934827223131993448

noncomputable section

/-- A186290: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the squares and pentagonal numbers. Complement of A186291.

Offset 1, canonical program `A186290.P8934827223131993448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186290 (n : ℕ) : ℤ :=
  A186290.P8934827223131993448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186297.P2143825234397933090

`A186296(n+1)-1`
-/

namespace A186297.P2143825234397933090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186296 (n + 1) - 1

end

end A186297.P2143825234397933090

noncomputable section

/-- A186297: a(n) = (A007520(n)-1)/2.

Offset 1, canonical program `A186297.P2143825234397933090`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186297 (n : ℕ) : ℤ :=
  A186297.P2143825234397933090.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186297.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186300.P1197672728563334248

`A186299(n+1)+1`
-/

namespace A186300.P1197672728563334248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186299 (n + 1) + 1

end

end A186300.P1197672728563334248

noncomputable section

/-- A186300: (A007521(n)+1)/2.

Offset 1, canonical program `A186300.P1197672728563334248`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186299, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186300 (n : ℕ) : ℤ :=
  A186300.P1197672728563334248.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186299, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186317.P4690432201935391805

`∑[gcd(2, Δ[A076816(n)])]`
-/

namespace A186317.P4690432201935391805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076816 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186317.P4690432201935391805

noncomputable section

/-- A186317: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the squares and hexagonal numbers. Complement of A186318.

Offset 1, canonical program `A186317.P4690432201935391805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A186317 (n : ℕ) : ℤ :=
  (A186317.P4690432201935391805.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A186317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186324.P3622620755982322594

`floor((A182778(n+1)+1)/3)`
-/

namespace A186324.P3622620755982322594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182778 (n + 1) + 1 : ℚ) / 3⌋

end

end A186324.P3622620755982322594

noncomputable section

/-- A186324: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and octagonal numbers. Complement of A186325.

Offset 1, canonical program `A186324.P3622620755982322594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186324 (n : ℕ) : ℤ :=
  A186324.P3622620755982322594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186329.P16704209390700631561

`A186225(Δ[n²])-n`
-/

namespace A186329.P16704209390700631561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186225 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A186329.P16704209390700631561

noncomputable section

/-- A186329: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the hexagonal numbers. Complement of A186328.

Offset 1, canonical program `A186329.P16704209390700631561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A186329 (n : ℕ) : ℤ :=
  A186329.P16704209390700631561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A186329.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A186428.P2147351856514783823

`A065764(n+1)%A000203(n+1)`
-/

namespace A186428.P2147351856514783823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065764 (n + 1)) (A000203 (n + 1))

end

end A186428.P2147351856514783823

noncomputable section

/-- A186428: a(n) = sigma(n^2) modulo sigma(n).

Offset 1, canonical program `A186428.P2147351856514783823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186428 (n : ℕ) : ℤ :=
  A186428.P2147351856514783823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186776.P17009521900512411188

`A004793(n+1)-1`
-/

namespace A186776.P17009521900512411188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) - 1

end

end A186776.P17009521900512411188

noncomputable section

/-- A186776: Stanley Sequence S(0,2).

Offset 1, canonical program `A186776.P17009521900512411188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004793, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186776 (n : ℕ) : ℤ :=
  A186776.P17009521900512411188.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004793, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186776.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A187113.P11109198850881865142

`p?[A034837(10*(n+1))]`
-/

namespace A187113.P11109198850881865142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034837 (10 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187113.P11109198850881865142

noncomputable section

/-- A187113: Primes of the form abcdabcd..abcda.

Offset 1, canonical program `A187113.P11109198850881865142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A187113 (n : ℕ) : ℤ :=
  A187113.P11109198850881865142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A187113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187335.P17696418356305829411

`A011558(A008619(n))+A001651(n+1)`
-/

namespace A187335.P17696418356305829411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A008619 n).toNat + A001651 (n + 1)

end

end A187335.P17696418356305829411

noncomputable section

/-- A187335: Complement of A187334.

Offset 1, canonical program `A187335.P17696418356305829411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187335 (n : ℕ) : ℤ :=
  A187335.P17696418356305829411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187340.P12274302296944132182

`A164611(n)-A110665(n)`
-/

namespace A187340.P12274302296944132182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164611 n - A110665 n

end

end A187340.P12274302296944132182

noncomputable section

/-- A187340: Hankel transform of A014301(n+1).

Offset 0, canonical program `A187340.P12274302296944132182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187340 (n : ℕ) : ℤ :=
  A187340.P12274302296944132182.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187378.P16352622823510688527

`record[A077043(A019426(n))+n]`
-/

namespace A187378.P16352622823510688527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (A019426 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187378.P16352622823510688527

noncomputable section

/-- A187378: Number of 4-step S, NW and NE-moving king's tours on an n X n board summed over all starting positions.

Offset 1, canonical program `A187378.P16352622823510688527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1668 terms. -/
def A187378 (n : ℕ) : ℤ :=
  A187378.P16352622823510688527.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1668 terms. -/
def A187378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187390.P4348215000714749393

`comp[A187389(n+1)-1]+1`
-/

namespace A187390.P4348215000714749393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187389 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187390.P4348215000714749393

noncomputable section

/-- A187390: a(n) = floor(s*n), where s = 1 + sqrt(7) - sqrt(6); complement of A187389.

Offset 1, canonical program `A187390.P4348215000714749393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187390 (n : ℕ) : ℤ :=
  (A187390.P4348215000714749393.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187502.P15297842706150391548

`A187501(n+3)-(A187501(n)+A187499(n))`
-/

namespace A187502.P15297842706150391548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187501 (n + 3) - (A187501 n + A187499 n)

end

end A187502.P15297842706150391548

noncomputable section

/-- A187502: Let i be in {1,2,3,4} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3, p_4} = {-2,0,1,2}, n=3*r+p_i, and define a(-2)=0. Then a(n)=a(3*r+p_i) gives the quantity of H_(9,4,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(x^2-1) with x=2*cos(Pi/9).

Offset 0, canonical program `A187502.P15297842706150391548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A187502 (n : ℕ) : ℤ :=
  A187502.P15297842706150391548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A187502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187576.P17089044639270244333

`eq[1, A003842(ceil(xor(1, n)/2))]`
-/

namespace A187576.P17089044639270244333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187576.P17089044639270244333

noncomputable section

/-- A187576: Rank transform of the sequence 2*floor((n-1)/2); complement of A187577.

Offset 1, canonical program `A187576.P17089044639270244333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187576 (n : ℕ) : ℤ :=
  (A187576.P17089044639270244333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187944.P14993375886949776411

`A005614(A123740(n+2)+n)`
-/

namespace A187944.P14993375886949776411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A123740 (n + 2) + (n : ℤ)).toNat

end

end A187944.P14993375886949776411

noncomputable section

/-- A187944: [nr+kr]-[nr]-[kr], where r=(1+sqrt(5))/2, k=3, [ ]=floor.

Offset 1, canonical program `A187944.P14993375886949776411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187944 (n : ℕ) : ℤ :=
  A187944.P14993375886949776411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187946.P6796394097676353133

`A123740(A014675(n)²+n)`
-/

namespace A187946.P6796394097676353133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (A014675 n ^ 2 + (n : ℤ)).toNat

end

end A187946.P6796394097676353133

noncomputable section

/-- A187946: [nr+kr]-[nr]-[kr], where r=(1+sqrt(5))/2, k=5, [ ]=floor.

Offset 1, canonical program `A187946.P6796394097676353133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187946 (n : ℕ) : ℤ :=
  A187946.P6796394097676353133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187946.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A187952.P10173740546153633473

`A060145(A008619(n))+Δ[n²]`
-/

namespace A187952.P10173740546153633473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 (A008619 n).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A187952.P10173740546153633473

noncomputable section

/-- A187952: Positions of 1 in A187950; complement of A187951.

Offset 1, canonical program `A187952.P10173740546153633473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187952 (n : ℕ) : ℤ :=
  A187952.P10173740546153633473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187969.P12336969182246334688

`A159684(2*A144611(n)+n)`
-/

namespace A187969.P12336969182246334688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (2 * A144611 n + (n : ℤ)).toNat

end

end A187969.P12336969182246334688

noncomputable section

/-- A187969: a(n) = [nr+kr]-[nr]-[kr], where r=sqrt(2), k=3, [ ]=floor.

Offset 1, canonical program `A187969.P12336969182246334688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187969 (n : ℕ) : ℤ :=
  A187969.P12336969182246334688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187972.P4602217336362801147

`A187967(n+1)*A187967(n+3)`
-/

namespace A187972.P4602217336362801147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187967 (n + 1) * A187967 (n + 3)

end

end A187972.P4602217336362801147

noncomputable section

/-- A187972: a(n) = [nr+kr]-[nr]-[kr], where r=sqrt(2), k=4, [ ]=floor.

Offset 1, canonical program `A187972.P4602217336362801147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187972 (n : ℕ) : ℤ :=
  A187972.P4602217336362801147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188038.P9406731732138092868

`A187967(n-a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A188038.P9406731732138092868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A187967 ((n : ℤ) - a (n - 1)).toNat

end

end A188038.P9406731732138092868

noncomputable section

/-- A188038: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(2), k=2, [ ]=floor.

Offset 1, canonical program `A188038.P9406731732138092868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188038 (n : ℕ) : ℤ :=
  A188038.P9406731732138092868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188042.P9269258026017260983

`comp[A187971(n+1)+2]+1`
-/

namespace A188042.P9269258026017260983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188042.P9269258026017260983

noncomputable section

/-- A188042: Positions of 0 in A188041; complement of A188043.

Offset 1, canonical program `A188042.P9269258026017260983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188042 (n : ℕ) : ℤ :=
  (A188042.P9269258026017260983.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188053.P997518175731916097

`floor((A053644(n)+A005823(n+1))/2)`
-/

namespace A188053.P997518175731916097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053644 n + A005823 (n + 1) : ℚ) / 2⌋

end

end A188053.P997518175731916097

noncomputable section

/-- A188053: Stanley Sequence S(0,1,4).

Offset 1, canonical program `A188053.P997518175731916097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188053 (n : ℕ) : ℤ :=
  A188053.P997518175731916097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188069.P9280577057709919834

`A198081(n)+A004277(n)`
-/

namespace A188069.P9280577057709919834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n + A004277 n

end

end A188069.P9280577057709919834

noncomputable section

/-- A188069: Positions of 0 in A188068; complement of A188070.

Offset 1, canonical program `A188069.P9280577057709919834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188069 (n : ℕ) : ℤ :=
  A188069.P9280577057709919834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188069.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188163.P10543822701885175444

`comp[A087686(n+2)-1]+1`
-/

namespace A188163.P10543822701885175444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188163.P10543822701885175444

noncomputable section

/-- A188163: Smallest m such that A004001(m) = n.

Offset 1, canonical program `A188163.P10543822701885175444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188163 (n : ℕ) : ℤ :=
  (A188163.P10543822701885175444.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188189.P7612428391995532335

`A188187(n+1-a(n-1))` with `a(0)=1`
-/

namespace A188189.P7612428391995532335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188187 ((n + 1 : ℤ) - a (n - 1)).toNat

end

end A188189.P7612428391995532335

noncomputable section

/-- A188189: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(5), k=2, [ ]=floor.

Offset 1, canonical program `A188189.P7612428391995532335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188189 (n : ℕ) : ℤ :=
  A188189.P7612428391995532335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188260.P4642439501067376208

`A339052(A339052(n)+2+n)`
-/

namespace A188260.P4642439501067376208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339052 (A339052 n + 2 + (n : ℤ)).toNat

end

end A188260.P4642439501067376208

noncomputable section

/-- A188260: [nr+kr]-[nr]-[kr], where r=sqrt(5), k=3, [ ]=floor.

Offset 1, canonical program `A188260.P4642439501067376208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188260 (n : ℕ) : ℤ :=
  A188260.P4642439501067376208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188291.P4051913689552143111

`char[A188220(n+1)-6]`
-/

namespace A188291.P4051913689552143111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188220 (n + 1) - 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188291.P4051913689552143111

noncomputable section

/-- A188291: [nr+kr]-[nr]-[kr], where r=sqrt(5), k=5, [ ]=floor.

Offset 1, canonical program `A188291.P4051913689552143111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188291 (n : ℕ) : ℤ :=
  (A188291.P4051913689552143111.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188293.P10413451273584708875

`abs(5-A188220(n+1))`
-/

namespace A188293.P10413451273584708875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A188220 (n + 1)|

end

end A188293.P10413451273584708875

noncomputable section

/-- A188293: Positions of 1 in A188291; complement of A188292.

Offset 1, canonical program `A188293.P10413451273584708875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188293 (n : ℕ) : ℤ :=
  A188293.P10413451273584708875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188297.P11306489375432585574

`A144611(A049472(n))`
-/

namespace A188297.P11306489375432585574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (A049472 n).toNat

end

end A188297.P11306489375432585574

noncomputable section

/-- A188297: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=2, [ ]=floor.

Offset 1, canonical program `A188297.P11306489375432585574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188297 (n : ℕ) : ℤ :=
  A188297.P11306489375432585574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188298.P12068774585281216890

`A001951(floor(n/2))+n+1`
-/

namespace A188298.P12068774585281216890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 ⌊(n : ℚ) / 2⌋.toNat + (n + 1 : ℤ)

end

end A188298.P12068774585281216890

noncomputable section

/-- A188298: Positions of 0 in A188297; complement of A188299.

Offset 1, canonical program `A188298.P12068774585281216890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188298 (n : ℕ) : ℤ :=
  A188298.P12068774585281216890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188373.P2149775903743235880

`A110654(n)+3*A188040(n+1)`
-/

namespace A188373.P2149775903743235880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + 3 * A188040 (n + 1)

end

end A188373.P2149775903743235880

noncomputable section

/-- A188373: Positions of 1 in A188371; complement of A188372.

Offset 1, canonical program `A188373.P2149775903743235880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188373 (n : ℕ) : ℤ :=
  A188373.P2149775903743235880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188396.P9231887301551428425

`∑[4*A188295(n+1)+3]`
-/

namespace A188396.P9231887301551428425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A188295 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188396.P9231887301551428425

noncomputable section

/-- A188396: Positions of 0 in A188395; complement of A188397.

Offset 1, canonical program `A188396.P9231887301551428425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188396 (n : ℕ) : ℤ :=
  A188396.P9231887301551428425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188469.P6655427290535897228

`floor(ϕ*A188013(n+1))`
-/

namespace A188469.P6655427290535897228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A188013 (n + 1) : ℝ)⌋

end

end A188469.P6655427290535897228

noncomputable section

/-- A188469: Positions of 1 in A188467; complement of A188468.

Offset 1, canonical program `A188469.P6655427290535897228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188469 (n : ℕ) : ℤ :=
  A188469.P6655427290535897228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188678.P4832632837348918629

`abs(1-∑[A179848(n)])`
-/

namespace A188678.P4832632837348918629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A188678.P4832632837348918629

noncomputable section

/-- A188678: Alternate partial sums of binomial(3*n,n)/(2*n+1).

Offset 0, canonical program `A188678.P4832632837348918629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A188678 (n : ℕ) : ℤ :=
  A188678.P4832632837348918629.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A188678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189305.P14080242105180682459

`A002524(2*(n+1))`
-/

namespace A189305.P14080242105180682459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (2 * (n + 1))

end

end A189305.P14080242105180682459

noncomputable section

/-- A189305: Number of n X 2 array permutations with each element moving zero or one space diagonally, horizontally or vertically.

Offset 1, canonical program `A189305.P14080242105180682459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A189305 (n : ℕ) : ℤ :=
  A189305.P14080242105180682459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A189305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189362.P16228109364574491910

`A277644(n+1)+A003152(n+1)`
-/

namespace A189362.P16228109364574491910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (n + 1) + A003152 (n + 1)

end

end A189362.P16228109364574491910

noncomputable section

/-- A189362: a(n) = n + floor(n*r/s) + floor(n*t/s); r=1, s=sqrt(2), t=sqrt(3).

Offset 1, canonical program `A189362.P16228109364574491910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189362 (n : ℕ) : ℤ :=
  A189362.P16228109364574491910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189363.P18061180172451342699

`A184808(n+1)+A097337(n+1)`
-/

namespace A189363.P18061180172451342699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184808 (n + 1) + A097337 (n + 1)

end

end A189363.P18061180172451342699

noncomputable section

/-- A189363: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=sqrt(2), t=sqrt(3).

Offset 1, canonical program `A189363.P18061180172451342699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189363 (n : ℕ) : ℤ :=
  A189363.P18061180172451342699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189379.P14150552323631578711

`∑[A006340(n)]+n`
-/

namespace A189379.P14150552323631578711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A189379.P14150552323631578711

noncomputable section

/-- A189379: n+[nr/t]+[ns/t]; r=2, s=(-1+sqrt(5))/2, t=(1+sqrt(5))/2.

Offset 1, canonical program `A189379.P14150552323631578711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189379 (n : ℕ) : ℤ :=
  A189379.P14150552323631578711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189383.P3171606788887366574

`A097337(n+1)+A003152(n+1)`
-/

namespace A189383.P3171606788887366574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (n + 1) + A003152 (n + 1)

end

end A189383.P3171606788887366574

noncomputable section

/-- A189383: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=1/sqrt(2), t=1/sqrt(3).

Offset 1, canonical program `A189383.P3171606788887366574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189383 (n : ℕ) : ℤ :=
  A189383.P3171606788887366574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189384.P17768416561206798456

`A171974(n+1)+A003151(n+1)`
-/

namespace A189384.P17768416561206798456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171974 (n + 1) + A003151 (n + 1)

end

end A189384.P17768416561206798456

noncomputable section

/-- A189384: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=1/sqrt(2), t=1/sqrt(3).

Offset 1, canonical program `A189384.P17768416561206798456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189384 (n : ℕ) : ℤ :=
  A189384.P17768416561206798456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189386.P11089141247144542646

`A000027(A097337(n+1)+A003151(n+1))`
-/

namespace A189386.P11089141247144542646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A097337 (n + 1) + A003151 (n + 1)).toNat

end

end A189386.P11089141247144542646

noncomputable section

/-- A189386: a(n) = n+[ns/r]+[nt/r]; r=1, s=sqrt(2), t=1/sqrt(3), []=floor.

Offset 1, canonical program `A189386.P11089141247144542646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189386 (n : ℕ) : ℤ :=
  A189386.P11089141247144542646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189387.P8714726190965222879

`A004526(A171974(n+1))+A003152(n+1)`
-/

namespace A189387.P8714726190965222879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A171974 (n + 1)).toNat + A003152 (n + 1)

end

end A189387.P8714726190965222879

noncomputable section

/-- A189387: a(n) = n+[nr/s]+[nt/s]; r=1, s=sqrt(2), t=1/sqrt(3).

Offset 1, canonical program `A189387.P8714726190965222879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189387 (n : ℕ) : ℤ :=
  A189387.P8714726190965222879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189388.P12396350069555707353

`A000027(A054088(n+1)+A022840(n+1))`
-/

namespace A189388.P12396350069555707353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A054088 (n + 1) + A022840 (n + 1)).toNat

end

end A189388.P12396350069555707353

noncomputable section

/-- A189388: a(n) = n+[nr/t]+[ns/t]; r=1, s=sqrt(2), t=1/sqrt(3).

Offset 1, canonical program `A189388.P12396350069555707353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189388 (n : ℕ) : ℤ :=
  A189388.P12396350069555707353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189391.P8056155733493856481

`A099325(n)-2^n`
-/

namespace A189391.P8056155733493856481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n - (2 ^ n : ℤ)

end

end A189391.P8056155733493856481

noncomputable section

/-- A189391: The minimum possible value for the apex of a triangle of numbers whose base consists of a permutation of the numbers 0 to n, and each number in a higher row is the sum of the two numbers directly below it.

Offset 0, canonical program `A189391.P8056155733493856481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A189391 (n : ℕ) : ℤ :=
  A189391.P8056155733493856481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A189391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189397.P15555838332013234681

`A186539(n+1)+A004526(A171974(n+1))`
-/

namespace A189397.P15555838332013234681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + A004526 (A171974 (n + 1)).toNat

end

end A189397.P15555838332013234681

noncomputable section

/-- A189397: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=1/sqrt(2), t=sqrt(3).

Offset 1, canonical program `A189397.P15555838332013234681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189397 (n : ℕ) : ℤ :=
  A189397.P15555838332013234681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189397.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189462.P12762323558477115791

`floor((A003231(n+1)+n)/2)`
-/

namespace A189462.P12762323558477115791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003231 (n + 1) + (n : ℤ) : ℚ) / 2⌋

end

end A189462.P12762323558477115791

noncomputable section

/-- A189462: n+[nr/t]+[ns/t]; r=2, s=sqrt(5), t=1+sqrt(5).

Offset 1, canonical program `A189462.P12762323558477115791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189462 (n : ℕ) : ℤ :=
  A189462.P12762323558477115791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189520.P1730264741793748391

`A189403(n+1)+2*(n+1)`
-/

namespace A189520.P1730264741793748391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189403 (n + 1) + (2 * (n + 1) : ℤ)

end

end A189520.P1730264741793748391

noncomputable section

/-- A189520: n+[nr/t]+[ns/t]; r=1, s=1/e, t=1/(e+1).

Offset 1, canonical program `A189520.P1730264741793748391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189520 (n : ℕ) : ℤ :=
  A189520.P1730264741793748391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189521.P17554504455868007450

`A054385(n+1)+∑[char[A000572(n+1)]]`
-/

namespace A189521.P17554504455868007450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000572 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A189521.P17554504455868007450

noncomputable section

/-- A189521: n+[ns/r]+[nt/r]; r=1, s=1/(e-1), t=1/(e+1).

Offset 1, canonical program `A189521.P17554504455868007450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189521 (n : ℕ) : ℤ :=
  A189521.P17554504455868007450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189523.P484942665720503072

`A054385(2*(n+1))+A000572(n+1)`
-/

namespace A189523.P484942665720503072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (2 * (n + 1)) + A000572 (n + 1)

end

end A189523.P484942665720503072

noncomputable section

/-- A189523: n+[nr/t]+[ns/t]; r=1, s=1/(e-1), t=1/(e+1).

Offset 1, canonical program `A189523.P484942665720503072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189523 (n : ℕ) : ℤ :=
  A189523.P484942665720503072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189573.P16890274854496627003

`round((A001951(n)+2*(n+1))/2)`
-/

namespace A189573.P16890274854496627003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001951 n + (2 * (n + 1) : ℤ) : ℚ) / 2)

end

end A189573.P16890274854496627003

noncomputable section

/-- A189573: Positions of 0 in A189572; complement of A080652 (conjectured).

Offset 1, canonical program `A189573.P16890274854496627003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189573 (n : ℕ) : ℤ :=
  A189573.P16890274854496627003.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189658.P15755839361929138990

`record[A138950(A006047(n))+n]`
-/

namespace A189658.P15755839361929138990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138950 (A006047 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189658.P15755839361929138990

noncomputable section

/-- A189658: Positions of 0 in A064990; complement of A189659.

Offset 1, canonical program `A189658.P15755839361929138990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A189658 (n : ℕ) : ℤ :=
  A189658.P15755839361929138990.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A189658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189912.P14835049554752383830

`A001006(n)+Δ[A097861(n)]`
-/

namespace A189912.P14835049554752383830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n + (f1 (n + 1) - f1 n)

end

end A189912.P14835049554752383830

noncomputable section

/-- A189912: Extended Motzkin numbers, Sum_{k>=0} C(n,k)*C(k), where C(k) is the extended Catalan number A057977(k).

Offset 0, canonical program `A189912.P14835049554752383830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A189912 (n : ℕ) : ℤ :=
  A189912.P14835049554752383830.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A189912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189940.P15295735568782816812

`A162970(n+1)+A013989(n)`
-/

namespace A189940.P15295735568782816812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162970 (n + 1) + A013989 n

end

end A189940.P15295735568782816812

noncomputable section

/-- A189940: Number of connected components in all simple labeled graphs with n nodes having degrees at most one.

Offset 1, canonical program `A189940.P15295735568782816812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A189940 (n : ℕ) : ℤ :=
  A189940.P15295735568782816812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A189940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190173.P18046769298665928283

`A180664(n)-A001911(n)`
-/

namespace A190173.P18046769298665928283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180664 n - A001911 n

end

end A190173.P18046769298665928283

noncomputable section

/-- A190173: a(n) = Sum_{1 <= i < j <= n} F(i)*F(j), where F(k) is the k-th Fibonacci number.

Offset 1, canonical program `A190173.P18046769298665928283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A190173 (n : ℕ) : ℤ :=
  A190173.P18046769298665928283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A190173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190206.P8511503827891759838

`comp[A190205(n+1)-1]+1`
-/

namespace A190206.P8511503827891759838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190205 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A190206.P8511503827891759838

noncomputable section

/-- A190206: Positions of 1 in A190204; complement of A190205.

Offset 1, canonical program `A190206.P8511503827891759838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190206 (n : ℕ) : ℤ :=
  (A190206.P8511503827891759838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190209.P6340617711522481792

`comp[A190208(n+1)-1]+1`
-/

namespace A190209.P6340617711522481792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190208 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A190209.P6340617711522481792

noncomputable section

/-- A190209: Positions of 1 in A190207; complement of A190208.

Offset 1, canonical program `A190209.P6340617711522481792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190209 (n : ℕ) : ℤ :=
  (A190209.P6340617711522481792.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190229.P5353473444345810783

`comp[A190228(n+1)-1]+1`
-/

namespace A190229.P5353473444345810783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190228 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A190229.P5353473444345810783

noncomputable section

/-- A190229: Positions of 1 in A190227; complement of A190228.

Offset 1, canonical program `A190229.P5353473444345810783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190229 (n : ℕ) : ℤ :=
  (A190229.P5353473444345810783.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190321.P11912397114291218012

`a(n%A048760(n))+1` with `a(0)=0`
-/

namespace A190321.P11912397114291218012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.tmod (n : ℤ) (A048760 n)).toNat + 1

end

end A190321.P11912397114291218012

noncomputable section

/-- A190321: Number of nonzero digits when writing n in base where place values are squares, cf. A007961.

Offset 0, canonical program `A190321.P11912397114291218012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190321 (n : ℕ) : ℤ :=
  (A190321.P11912397114291218012.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190335.P8871768036239732935

`floor(A187971(n+1)/2)`
-/

namespace A190335.P8871768036239732935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187971 (n + 1) : ℚ) / 2⌋

end

end A190335.P8871768036239732935

noncomputable section

/-- A190335: a(n) = n + [n*s/r] + [n*t/r]; r=2, s=sqrt(2), t=1/s.

Offset 1, canonical program `A190335.P8871768036239732935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190335 (n : ℕ) : ℤ :=
  A190335.P8871768036239732935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190372.P2412013710428799699

`A189461(2*(n+1))+A005206(n)`
-/

namespace A190372.P2412013710428799699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189461 (2 * (n + 1)) + A005206 n

end

end A190372.P2412013710428799699

noncomputable section

/-- A190372: a(n) = n + [n*s/r] + [n*t/r] + [n*u/r]; r=sin(Pi/5), s=1/r, t=sin(2*Pi/5), u=1/t.

Offset 1, canonical program `A190372.P2412013710428799699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190372 (n : ℕ) : ℤ :=
  A190372.P2412013710428799699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190437.P13908445357307008917

`eq[0, A190436(A028310(n))]`
-/

namespace A190437.P13908445357307008917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190436 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190437.P13908445357307008917

noncomputable section

/-- A190437: Positions of 0 in A190436.

Offset 1, canonical program `A190437.P13908445357307008917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2548 terms. -/
def A190437 (n : ℕ) : ℤ :=
  (A190437.P13908445357307008917.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2548 terms. -/
def A190437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190438.P5492144203154848530

`eq[1, A190436(A028310(n))]`
-/

namespace A190438.P5492144203154848530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190436 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190438.P5492144203154848530

noncomputable section

/-- A190438: Positions of 1 in A190436.

Offset 1, canonical program `A190438.P5492144203154848530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3331 terms. -/
def A190438 (n : ℕ) : ℤ :=
  (A190438.P5492144203154848530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3331 terms. -/
def A190438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190440.P4697104139142966514

`3-A189935(n+1)%4`
-/

namespace A190440.P4697104139142966514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.tmod (A189935 (n + 1)) 4

end

end A190440.P4697104139142966514

noncomputable section

/-- A190440: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(golden ratio,4,0) and []=floor.

Offset 1, canonical program `A190440.P4697104139142966514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190440 (n : ℕ) : ℤ :=
  A190440.P4697104139142966514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190440.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190451.P3213970450733782130

`A003622(4*n+6)%(A003622(n+1)+2)`
-/

namespace A190451.P3213970450733782130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003622 (4 * n + 6)) (A003622 (n + 1) + 2)

end

end A190451.P3213970450733782130

noncomputable section

/-- A190451: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(golden ratio,4,2) and []=floor.

Offset 1, canonical program `A190451.P3213970450733782130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A190451 (n : ℕ) : ℤ :=
  A190451.P3213970450733782130.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A190451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190485.P2994477708944207843

`∪[A086377(n+1), A186222(n+1)]`
-/

namespace A190485.P2994477708944207843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190485.P2994477708944207843

noncomputable section

/-- A190485: Positions of 1 in A190483.

Offset 1, canonical program `A190485.P2994477708944207843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190485 (n : ℕ) : ℤ :=
  (A190485.P2994477708944207843.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190485.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190642.P16448647623597505211

`10*A007089(n)+2`
-/

namespace A190642.P16448647623597505211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A007089 n + 2

end

end A190642.P16448647623597505211

noncomputable section

/-- A190642: Numbers 3*n + 2 written in base 3.

Offset 0, canonical program `A190642.P16448647623597505211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190642 (n : ℕ) : ℤ :=
  A190642.P16448647623597505211.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190676.P5964065822159639979

`A080425(A195181(n+1))`
-/

namespace A190676.P5964065822159639979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A195181 (n + 1)).toNat

end

end A190676.P5964065822159639979

noncomputable section

/-- A190676: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),3,0) and [ ]=floor.

Offset 1, canonical program `A190676.P5964065822159639979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190676 (n : ℕ) : ℤ :=
  A190676.P5964065822159639979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190699.P1703073338234724298

`A003512(A190694(n+1))`
-/

namespace A190699.P1703073338234724298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (A190694 (n + 1)).toNat

end

end A190699.P1703073338234724298

noncomputable section

/-- A190699: Positions of 0 in A190698.

Offset 1, canonical program `A190699.P1703073338234724298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190699 (n : ℕ) : ℤ :=
  A190699.P1703073338234724298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190706.P9832586445051373020

`eq[1, A190704(n+1)]+1`
-/

namespace A190706.P9832586445051373020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190706.P9832586445051373020

noncomputable section

/-- A190706: Positions of 1 in A190704.

Offset 1, canonical program `A190706.P9832586445051373020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190706 (n : ℕ) : ℤ :=
  (A190706.P9832586445051373020.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190707.P3032653202596194504

`eq[2, A190704(n+1)]+1`
-/

namespace A190707.P3032653202596194504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190707.P3032653202596194504

noncomputable section

/-- A190707: Positions of 2 in A190704.

Offset 1, canonical program `A190707.P3032653202596194504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190707 (n : ℕ) : ℤ :=
  (A190707.P3032653202596194504.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190709.P10181155941524366987

`eq[4, A190704(A000007(n)+n)]`
-/

namespace A190709.P10181155941524366987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190709.P10181155941524366987

noncomputable section

/-- A190709: Positions of 4 in A190704.

Offset 1, canonical program `A190709.P10181155941524366987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1161 terms. -/
def A190709 (n : ℕ) : ℤ :=
  (A190709.P10181155941524366987.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1161 terms. -/
def A190709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190763.P13290202251909608768

`ceil(sqrt(2)*A190486(n+1))`
-/

namespace A190763.P13290202251909608768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 : ℝ) * (A190486 (n + 1) : ℝ)⌉

end

end A190763.P13290202251909608768

noncomputable section

/-- A190763: Positions of 0 in A190762.

Offset 1, canonical program `A190763.P13290202251909608768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190763 (n : ℕ) : ℤ :=
  A190763.P13290202251909608768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190763.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190777.P13810788968244427247

`eq[1, A190775(n+1)]+1`
-/

namespace A190777.P13810788968244427247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190777.P13810788968244427247

noncomputable section

/-- A190777: Positions of 1 in A190775.

Offset 1, canonical program `A190777.P13810788968244427247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190777 (n : ℕ) : ℤ :=
  (A190777.P13810788968244427247.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190778.P17050714014051518169

`eq[2, A190775(n+1)]+1`
-/

namespace A190778.P17050714014051518169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190778.P17050714014051518169

noncomputable section

/-- A190778: Positions of 2 in A190775.

Offset 1, canonical program `A190778.P17050714014051518169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A190778 (n : ℕ) : ℤ :=
  (A190778.P17050714014051518169.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A190778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190941.P10346162016489397206

`n+A081610(n)`
-/

namespace A190941.P10346162016489397206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A081610 n

end

end A190941.P10346162016489397206

noncomputable section

/-- A190941: Partial sums of A190592.

Offset 0, canonical program `A190941.P10346162016489397206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190941 (n : ℕ) : ℤ :=
  A190941.P10346162016489397206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191313.P12692184345472457997

`∑[A226881(n)]`
-/

namespace A191313.P12692184345472457997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191313.P12692184345472457997

noncomputable section

/-- A191313: Sum of the abscissae of the first returns to the horizontal axis (assumed to be 0 if there are no such returns) in all dispersed Dyck paths of length n (i.e., Motzkin paths of length n with no (1,0) steps at positive heights).

Offset 0, canonical program `A191313.P12692184345472457997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A191313 (n : ℕ) : ℤ :=
  A191313.P12692184345472457997.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A191313.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A191380.P14959086145490964009

`eq[0, A191340(n+1)]+1`
-/

namespace A191380.P14959086145490964009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191380.P14959086145490964009

noncomputable section

/-- A191380: Positions of 0 in A191340.

Offset 1, canonical program `A191380.P14959086145490964009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A191380 (n : ℕ) : ℤ :=
  (A191380.P14959086145490964009.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A191380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191381.P10898136946303278485

`eq[1, A191340(n+1)]+1`
-/

namespace A191381.P10898136946303278485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191381.P10898136946303278485

noncomputable section

/-- A191381: Positions of 1 in A191340.

Offset 1, canonical program `A191381.P10898136946303278485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A191381 (n : ℕ) : ℤ :=
  (A191381.P10898136946303278485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A191381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191382.P1751492391094146324

`lt[1, A191340(n+1)]+1`
-/

namespace A191382.P1751492391094146324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A191382.P1751492391094146324

noncomputable section

/-- A191382: Positions of 2 in A191340.

Offset 1, canonical program `A191382.P1751492391094146324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A191382 (n : ℕ) : ℤ :=
  (A191382.P1751492391094146324.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A191382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191394.P2196182716254979201

`A000975(n)-A174783(n)`
-/

namespace A191394.P2196182716254979201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n - A174783 n

end

end A191394.P2196182716254979201

noncomputable section

/-- A191394: Number of base pyramids in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0)-steps at positive heights).

Offset 0, canonical program `A191394.P2196182716254979201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174783, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191394 (n : ℕ) : ℤ :=
  A191394.P2196182716254979201.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174783, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191404.P15782696883447306047

`A005614(n+1)+A060143(n)+A003622(n+2)`
-/

namespace A191404.P15782696883447306047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (n + 1) + (A060143 n + A003622 (n + 2))

end

end A191404.P15782696883447306047

noncomputable section

/-- A191404: a(n) = A000201(n) + A000201(n+3).

Offset 0, canonical program `A191404.P15782696883447306047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191404 (n : ℕ) : ℤ :=
  A191404.P15782696883447306047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191404.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A191583.P1361937462763374416

`∑{p}[A001043(n+1), #]`
-/

namespace A191583.P1361937462763374416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A191583.P1361937462763374416

noncomputable section

/-- A191583: Sum of the distinct prime divisors of prime(n) + prime(n+1).

Offset 1, canonical program `A191583.P1361937462763374416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191583 (n : ℕ) : ℤ :=
  (A191583.P1361937462763374416.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191906.P16831451749657423421

`A066729(n+2)%A001065(n+2)`
-/

namespace A191906.P16831451749657423421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066729 (n + 2)) (A001065 (n + 2))

end

end A191906.P16831451749657423421

noncomputable section

/-- A191906: The remainder of (product of proper divisors of n) mod (sum of proper divisors of n).

Offset 2, canonical program `A191906.P16831451749657423421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5038 terms. -/
def A191906 (n : ℕ) : ℤ :=
  A191906.P16831451749657423421.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5038 terms. -/
def A191906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192068.P3573378295139986079

`∑[A081714(n)]`
-/

namespace A192068.P3573378295139986079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192068.P3573378295139986079

noncomputable section

/-- A192068: a(n) = Fibonacci(2*n) - (n mod 2).

Offset 1, canonical program `A192068.P3573378295139986079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A192068 (n : ℕ) : ℤ :=
  A192068.P3573378295139986079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A192068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192082.P13159562364668076303

`a(A038554(n))` with `a(0)=0, a(1)=1`
-/

namespace A192082.P13159562364668076303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A038554 n).toNat

end

end A192082.P13159562364668076303

noncomputable section

/-- A192082: Let f(n) = A038554(n) + delta(n,1), where delta is the Kronecker symbol. Then a(n) is the fixed point that arises from iterating f (a(n) = 0 or 1).

Offset 0, canonical program `A192082.P13159562364668076303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192082 (n : ℕ) : ℤ :=
  (A192082.P13159562364668076303.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192249.P14476901547365329932

`5*A192069(n+1)`
-/

namespace A192249.P14476901547365329932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A192069 (n + 1)

end

end A192249.P14476901547365329932

noncomputable section

/-- A192249: 1-sequence of reduction of binomial coefficient sequence B(n,4)=A000332 by x^2 -> x+1.

Offset 1, canonical program `A192249.P14476901547365329932`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192069, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192249 (n : ℕ) : ℤ :=
  A192249.P14476901547365329932.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192069, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192251.P14492476938057793827

`2*A192070(n+1)`
-/

namespace A192251.P14492476938057793827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192070 (n + 1)

end

end A192251.P14492476938057793827

noncomputable section

/-- A192251: 1-sequence of reduction of central binomial coefficient sequence by x^2 -> x+1.

Offset 1, canonical program `A192251.P14492476938057793827`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192070, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192251 (n : ℕ) : ℤ :=
  A192251.P14492476938057793827.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192070, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192305.P9314614046236981238

`2*A190062(n+1)`
-/

namespace A192305.P9314614046236981238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190062 (n + 1)

end

end A192305.P9314614046236981238

noncomputable section

/-- A192305: 0-sequence of reduction of (2n) by x^2 -> x+1.

Offset 1, canonical program `A192305.P9314614046236981238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192305 (n : ℕ) : ℤ :=
  A192305.P9314614046236981238.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192305.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192307.P2714161128456340537

`3*A190062(n+1)`
-/

namespace A192307.P2714161128456340537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A190062 (n + 1)

end

end A192307.P2714161128456340537

noncomputable section

/-- A192307: 0-sequence of reduction of (3n) by x^2 -> x+1.

Offset 1, canonical program `A192307.P2714161128456340537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192307 (n : ℕ) : ℤ :=
  A192307.P2714161128456340537.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192307.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192312.P7920549663961214394

`A178525(n+1)+∑[A045925(n)]`
-/

namespace A192312.P7920549663961214394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178525 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192312.P7920549663961214394

noncomputable section

/-- A192312: 1-sequence of reduction of (3n-2) by x^2 -> x+1.

Offset 1, canonical program `A192312.P7920549663961214394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A192312 (n : ℕ) : ℤ :=
  A192312.P7920549663961214394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A192312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192464.P2629669429531742667

`A087124(n)+1`
-/

namespace A192464.P2629669429531742667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087124 n + 1

end

end A192464.P2629669429531742667

noncomputable section

/-- A192464: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) = 1 + x^n + x^(2n).

Offset 1, canonical program `A192464.P2629669429531742667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A192464 (n : ℕ) : ℤ :=
  A192464.P2629669429531742667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A192464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192470.P11247596947859352099

`A192469(n+1)/2`
-/

namespace A192470.P11247596947859352099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192469 (n + 1) : ℚ) / 2

end

end A192470.P11247596947859352099

noncomputable section

/-- A192470: (A192469)/2.

Offset 1, canonical program `A192470.P11247596947859352099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A192470 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A192470.P11247596947859352099.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A192470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192471.P287865650485884428

`A087124(n)+A055588(n)`
-/

namespace A192471.P287865650485884428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087124 n + A055588 n

end

end A192471.P287865650485884428

noncomputable section

/-- A192471: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x)=1+x^n+x^(2n+1).

Offset 1, canonical program `A192471.P287865650485884428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A192471 (n : ℕ) : ℤ :=
  A192471.P287865650485884428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A192471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192472.P9711165989484467876

`2*A059512(n+2)+1`
-/

namespace A192472.P9711165989484467876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059512 (n + 2) + 1

end

end A192472.P9711165989484467876

noncomputable section

/-- A192472: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x)=1+x^n+x^(2n+2).

Offset 1, canonical program `A192472.P9711165989484467876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A192472 (n : ℕ) : ℤ :=
  A192472.P9711165989484467876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A192472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192475.P13034247794609301480

`∑[A087124(n)]+1`
-/

namespace A192475.P13034247794609301480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A192475.P13034247794609301480

noncomputable section

/-- A192475: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x)=1+x^(n+1)+x^(2n).

Offset 1, canonical program `A192475.P13034247794609301480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A192475 (n : ℕ) : ℤ :=
  A192475.P13034247794609301480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A192475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192480.P10037595847355585616

`A028242(A004275(n))-A115140(n)`
-/

namespace A192480.P10037595847355585616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A004275 n).toNat - A115140 n

end

end A192480.P10037595847355585616

noncomputable section

/-- A192480: a(n) = n + A000108(n-1) for n > 1; a(0)=0, a(1)=1.

Offset 0, canonical program `A192480.P10037595847355585616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A192480 (n : ℕ) : ℤ :=
  A192480.P10037595847355585616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A192480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192660.P16606724903194287464

`floor(sqrt(A098600(n)))%A136417(n)`
-/

namespace A192660.P16606724903194287464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A098600 n)) (A136417 n)

end

end A192660.P16606724903194287464

noncomputable section

/-- A192660: Floor-Sqrt transform of Lucas numbers (A000032).

Offset 0, canonical program `A192660.P16606724903194287464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A192660 (n : ℕ) : ℤ :=
  A192660.P16606724903194287464.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A192660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192671.P11314604157394763

`floor(sqrt(A005043(n)))`
-/

namespace A192671.P11314604157394763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005043 n)

end

end A192671.P11314604157394763

noncomputable section

/-- A192671: Floor-Sqrt transform of Riordan numbers (A005043).

Offset 0, canonical program `A192671.P11314604157394763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A192671 (n : ℕ) : ℤ :=
  A192671.P11314604157394763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A192671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192757.P10346380195433472354

`Δ[A023611(n)]-A014675(n)-a(n-1)` with `a(0)=1`
-/

namespace A192757.P10346380195433472354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023611 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - A014675 n - a (n - 1)

end

end A192757.P10346380195433472354

noncomputable section

/-- A192757: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

Offset 0, canonical program `A192757.P10346380195433472354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A192757 (n : ℕ) : ℤ :=
  A192757.P10346380195433472354.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A192757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192817.P8246135497186958092

`eq[1, gcd(n, A061601(n))]`
-/

namespace A192817.P8246135497186958092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A061601 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192817.P8246135497186958092

noncomputable section

/-- A192817: Numbers that are coprime to their 9's complement.

Offset 1, canonical program `A192817.P8246135497186958092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192817 (n : ℕ) : ℤ :=
  (A192817.P8246135497186958092.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192863.P913331448569208009

`A192861(n+1)+2`
-/

namespace A192863.P913331448569208009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 1) + 2

end

end A192863.P913331448569208009

noncomputable section

/-- A192863: Lower flat numbers: odd numbers k such that k-1 is a squarefree number times a power of two.

Offset 1, canonical program `A192863.P913331448569208009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192863 (n : ℕ) : ℤ :=
  A192863.P913331448569208009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193049.P17144919572664860240

`∑[A193048(abs(1-n))]`
-/

namespace A193049.P17144919572664860240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193048 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193049.P17144919572664860240

noncomputable section

/-- A193049: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

Offset 0, canonical program `A193049.P17144919572664860240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A193049 (n : ℕ) : ℤ :=
  A193049.P17144919572664860240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A193049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193127.P9581717253284052073

`A169630(2*(n+1))`
-/

namespace A193127.P9581717253284052073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169630 (2 * (n + 1))

end

end A193127.P9581717253284052073

noncomputable section

/-- A193127: Numbers of spanning trees of the antiprism graphs.

Offset 1, canonical program `A193127.P9581717253284052073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A193127 (n : ℕ) : ℤ :=
  A193127.P9581717253284052073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A193127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193215.P13640404979239094247

`A135336(n)+A135336(n)-A000108(n)`
-/

namespace A193215.P13640404979239094247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135336 n + (A135336 n - A000108 n)

end

end A193215.P13640404979239094247

noncomputable section

/-- A193215: Number of Dyck paths of semilength n having the property that the heights of the first and the last peaks do not disagree.

Offset 0, canonical program `A193215.P13640404979239094247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A193215 (n : ℕ) : ℤ :=
  A193215.P13640404979239094247.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A193215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193460.P12134665306941346168

`∪[∑[A027828(n)], A051885(n)+1]`
-/

namespace A193460.P12134665306941346168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A193460.P12134665306941346168

noncomputable section

/-- A193460: Numbers m such that A193459(m) = A000005(m).

Offset 1, canonical program `A193460.P12134665306941346168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1791 terms. -/
def A193460 (n : ℕ) : ℤ :=
  (A193460.P12134665306941346168.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1791 terms. -/
def A193460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193596.P1147588452493627920

`ceil(C(A003056(n), A004736(n+1)-1)/2)`
-/

namespace A193596.P1147588452493627920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat : ℚ) / 2⌉

end

end A193596.P1147588452493627920

noncomputable section

/-- A193596: Triangle given by p(n,k) = ceiling(C(n,k)/2).

Offset 0, canonical program `A193596.P1147588452493627920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193596 (n : ℕ) : ℤ :=
  A193596.P1147588452493627920.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193758.P16879839616454654453

`ceil(ratio[A002805(n+1)])*A001008(n+1)`
-/

namespace A193758.P16879839616454654453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ * A001008 (n + 1)

end

end A193758.P16879839616454654453

noncomputable section

/-- A193758: Denominator of H(n)/H(n-1), where H(n) is the n-th harmonic number = Sum_{k=1..n} 1/k.

Offset 2, canonical program `A193758.P16879839616454654453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A193758 (n : ℕ) : ℤ :=
  A193758.P16879839616454654453.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A193758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193832.P6849096457617838116

`A235963(n)+1`
-/

namespace A193832.P6849096457617838116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 n + 1

end

end A193832.P6849096457617838116

noncomputable section

/-- A193832: Irregular triangle read by rows in which row n lists 2n-1 copies of 2n-1 and n copies of 2n, for n >= 1.

Offset 1, canonical program `A193832.P6849096457617838116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193832 (n : ℕ) : ℤ :=
  A193832.P6849096457617838116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193911.P10921855990259666092

`∑[∑[A060546(n)-and(1, n)]]`
-/

namespace A193911.P10921855990259666092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n - (Nat.land 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193911.P10921855990259666092

noncomputable section

/-- A193911: Sums of the diagonals of the matrix formed by listing the h-Stohr sequences in increasing order.

Offset 1, canonical program `A193911.P10921855990259666092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 657 terms. -/
def A193911 (n : ℕ) : ℤ :=
  A193911.P10921855990259666092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 657 terms. -/
def A193911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194029.P3923932250120237143

`A066628(n+1)+1`
-/

namespace A194029.P3923932250120237143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (n + 1) + 1

end

end A194029.P3923932250120237143

noncomputable section

/-- A194029: Natural fractal sequence of the Fibonacci sequence (1, 2, 3, 5, 8, ...).

Offset 1, canonical program `A194029.P3923932250120237143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066628, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194029 (n : ℕ) : ℤ :=
  A194029.P3923932250120237143.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066628, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194102.P16952581590974244032

`and(∑[A001951(n+1)], -1)`
-/

namespace A194102.P16952581590974244032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A194102.P16952581590974244032

noncomputable section

/-- A194102: a(n) = Sum_{j=1..n} floor(j*sqrt(2)); n-th partial sum of Beatty sequence for sqrt(2), A001951.

Offset 1, canonical program `A194102.P16952581590974244032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194102 (n : ℕ) : ℤ :=
  A194102.P16952581590974244032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194102.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A194124.P14535517237618100898

`∑[∑[A191529(n+3)]]`
-/

namespace A194124.P14535517237618100898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194124.P14535517237618100898

noncomputable section

/-- A194124: a(n) = Sum_{k=0..floor(n/2)} (C(n+2, k+2) - C(n+2, k)).

Offset 0, canonical program `A194124.P14535517237618100898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A194124 (n : ℕ) : ℤ :=
  A194124.P14535517237618100898.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A194124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194140.P16657759496107479356

`and(∑[A054088(n+1)], -1)`
-/

namespace A194140.P16657759496107479356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A194140.P16657759496107479356

noncomputable section

/-- A194140: a(n) = Sum_{j=1..n} floor(j*(1+sqrt(3))); n-th partial sum of Beatty sequence for 1+sqrt(3).

Offset 1, canonical program `A194140.P16657759496107479356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194140 (n : ℕ) : ℤ :=
  A194140.P16657759496107479356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194140.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A194144.P17823940702748119438

`A194110(n+1)-∑[n+1]`
-/

namespace A194144.P17823940702748119438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194110 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194144.P17823940702748119438

noncomputable section

/-- A194144: Sum{floor(j*(-1+sqrt(5))) : 1<=j<=n}; n-th partial sum of Beatty sequence for -1+sqrt(5).

Offset 1, canonical program `A194144.P17823940702748119438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194144 (n : ℕ) : ℤ :=
  A194144.P17823940702748119438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194147.P11761770816087481396

`A194137(n+1)-∑[n+1]`
-/

namespace A194147.P11761770816087481396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194137 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194147.P11761770816087481396

noncomputable section

/-- A194147: a(n) = Sum_{j=1..n} floor(j*(-1+sqrt(6))); n-th partial sum of Beatty sequence for -1+sqrt(6).

Offset 1, canonical program `A194147.P11761770816087481396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194147 (n : ℕ) : ℤ :=
  A194147.P11761770816087481396.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194150.P5049106201563811675

`∑[A003622(2*(n+1))]+1+n`
-/

namespace A194150.P5049106201563811675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A194150.P5049106201563811675

noncomputable section

/-- A194150: a(n) = Sum_{j=1..n} floor(j*(3+sqrt(5))); n-th partial sum of Beatty sequence for 3+sqrt(5).

Offset 1, canonical program `A194150.P5049106201563811675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194150 (n : ℕ) : ℤ :=
  A194150.P5049106201563811675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194151.P5431600877886687202

`ceil(A190511(n+1)/2)`
-/

namespace A194151.P5431600877886687202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190511 (n + 1) : ℚ) / 2⌉

end

end A194151.P5431600877886687202

noncomputable section

/-- A194151: Beatty sequence for (1/2)*sqrt(5); complement of A194152.

Offset 1, canonical program `A194151.P5431600877886687202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194151 (n : ℕ) : ℤ :=
  A194151.P5431600877886687202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194166.P9820872437032125516

`∑[A194165(n+1)]`
-/

namespace A194166.P9820872437032125516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194166.P9820872437032125516

noncomputable section

/-- A194166: Partial sums of A194165.

Offset 1, canonical program `A194166.P9820872437032125516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4690 terms. -/
def A194166 (n : ℕ) : ℤ :=
  A194166.P9820872437032125516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4690 terms. -/
def A194166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194187.P2031847061750070614

`A000040(n+1)-A070883(n+1)`
-/

namespace A194187.P2031847061750070614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A070883 (n + 1)

end

end A194187.P2031847061750070614

noncomputable section

/-- A194187: Difference of n-th prime and (bitwise XOR of n and n-th prime).

Offset 1, canonical program `A194187.P2031847061750070614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194187 (n : ℕ) : ℤ :=
  A194187.P2031847061750070614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194197.P10047679271071113195

`A001402(60*n)`
-/

namespace A194197.P10047679271071113195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 (60 * n)

end

end A194197.P10047679271071113195

noncomputable section

/-- A194197: Number of partitions of 60n into parts <= 6.

Offset 0, canonical program `A194197.P10047679271071113195`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194197 (n : ℕ) : ℤ :=
  A194197.P10047679271071113195.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194197.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194238.P3948435337945888088

`∑[A194237(n+1)]`
-/

namespace A194238.P3948435337945888088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194238.P3948435337945888088

noncomputable section

/-- A194238: Partial sums of A194237.

Offset 1, canonical program `A194238.P3948435337945888088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194238 (n : ℕ) : ℤ :=
  A194238.P3948435337945888088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194458.P10976458647848620853

`∑[∏{digits}[A007091(n), #+1]]`
-/

namespace A194458.P10976458647848620853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x + 1).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194458.P10976458647848620853

noncomputable section

/-- A194458: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 5.

Offset 0, canonical program `A194458.P10976458647848620853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194458 (n : ℕ) : ℤ :=
  (A194458.P10976458647848620853.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194459.P8592063526530025729

`∏{digits}[A007091(n), #+1]`
-/

namespace A194459.P8592063526530025729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A194459.P8592063526530025729

noncomputable section

/-- A194459: Number of entries in the n-th row of Pascal's triangle not divisible by 5.

Offset 0, canonical program `A194459.P8592063526530025729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194459 (n : ℕ) : ℤ :=
  (A194459.P8592063526530025729.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194733.P5079887994713995928

`1-A019587(n+1)+n`
-/

namespace A194733.P5079887994713995928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A019587 (n + 1) + (n : ℤ)

end

end A194733.P5079887994713995928

noncomputable section

/-- A194733: Number of k < n such that {k*r} > {n*r}, where { } = fractional part, r = (1+sqrt(5))/2 (the golden ratio).

Offset 1, canonical program `A194733.P5079887994713995928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194733 (n : ℕ) : ℤ :=
  A194733.P5079887994713995928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194734.P3466795351290559112

`A019587(n+1)-1`
-/

namespace A194734.P3466795351290559112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (n + 1) - 1

end

end A194734.P3466795351290559112

noncomputable section

/-- A194734: Number of k such that {-k*r} > {-n*r}, where { } = fractional part, r = (1+sqrt(5))/2 (the golden ratio).

Offset 1, canonical program `A194734.P3466795351290559112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194734 (n : ℕ) : ℤ :=
  A194734.P3466795351290559112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194737.P6700911541422964777

`∑[2*(A001951(n+1)+1)]%(n+2)`
-/

namespace A194737.P6700911541422964777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001951 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194737.P6700911541422964777

noncomputable section

/-- A194737: Number of k such that {-k*sqrt(2)} > {-n*sqrt(2)}, where { } = fractional part.

Offset 1, canonical program `A194737.P6700911541422964777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194737 (n : ℕ) : ℤ :=
  A194737.P6700911541422964777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194739.P17582938423262329083

`1-A194738(n+1)+n`
-/

namespace A194739.P17582938423262329083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194738 (n + 1) + (n : ℤ)

end

end A194739.P17582938423262329083

noncomputable section

/-- A194739: Number of k such that {k*sqrt(3)} > {n*sqrt(3)}, where { } = fractional part.

Offset 1, canonical program `A194739.P17582938423262329083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194739 (n : ℕ) : ℤ :=
  A194739.P17582938423262329083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194741.P14653812947197566281

`A194738(n+1)-1`
-/

namespace A194741.P14653812947197566281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194738 (n + 1) - 1

end

end A194741.P14653812947197566281

noncomputable section

/-- A194741: Number of k such that {-k*sqrt(3)} > {-n*sqrt(3)}, where { } = fractional part.

Offset 1, canonical program `A194741.P14653812947197566281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194741 (n : ℕ) : ℤ :=
  A194741.P14653812947197566281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194742.P14049241962855359563

`n+1-(n*A194110(n+1))%(n+2)`
-/

namespace A194742.P14049241962855359563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod ((n : ℤ) * A194110 (n + 1)) (n + 2 : ℤ)

end

end A194742.P14049241962855359563

noncomputable section

/-- A194742: Number of k such that {k*sqrt(5)} < {n*sqrt(5)}, where { } = fractional part.

Offset 1, canonical program `A194742.P14049241962855359563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194742 (n : ℕ) : ℤ :=
  A194742.P14049241962855359563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194751.P13904899455516874814

`1-A194750(n+1)+n`
-/

namespace A194751.P13904899455516874814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194750 (n + 1) + (n : ℤ)

end

end A194751.P13904899455516874814

noncomputable section

/-- A194751: Number of k such that {k*e} > {n*e}, where { } = fractional part.

Offset 1, canonical program `A194751.P13904899455516874814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194751 (n : ℕ) : ℤ :=
  A194751.P13904899455516874814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194753.P14497429391237450864

`A194750(n+1)-1`
-/

namespace A194753.P14497429391237450864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194750 (n + 1) - 1

end

end A194753.P14497429391237450864

noncomputable section

/-- A194753: Number of k such that {-k*e} > {-n*e}, where { } = fractional part.

Offset 1, canonical program `A194753.P14497429391237450864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194753 (n : ℕ) : ℤ :=
  A194753.P14497429391237450864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195279.P4298696130975354631

`(2*n+3)²*A063496(n+2)`
-/

namespace A195279.P4298696130975354631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) * A063496 (n + 2)

end

end A195279.P4298696130975354631

noncomputable section

/-- A195279: Number of lower triangles of a 3 X 3 integer array with each element differing from all of its vertical and horizontal neighbors by n or less and triangles differing by a constant counted only once.

Offset 1, canonical program `A195279.P4298696130975354631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A195279 (n : ℕ) : ℤ :=
  A195279.P4298696130975354631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A195279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195587.P17624761415793386705

`A163659((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A195587.P17624761415793386705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163659 ((n + 1) ^ 2)

end

end A195587.P17624761415793386705

noncomputable section

/-- A195587: a(n) = A163659(n^2), where A163659 is the logarithmic derivative of Stern's diatomic series (A002487).

Offset 1, canonical program `A195587.P17624761415793386705`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195587 (n : ℕ) : ℤ :=
  A195587.P17624761415793386705.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195587.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A195735.P15509653342893064472

`2*A065764(n+1)-A072861(n+1)`
-/

namespace A195735.P15509653342893064472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065764 (n + 1) - A072861 (n + 1)

end

end A195735.P15509653342893064472

noncomputable section

/-- A195735: a(n) = 2*sigma(n^2) - sigma(n)^2.

Offset 1, canonical program `A195735.P15509653342893064472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195735 (n : ℕ) : ℤ :=
  A195735.P15509653342893064472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196747.P369553060331001684

`∪[A005823(n+1), A055246(n+1)]`
-/

namespace A196747.P369553060331001684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196747.P369553060331001684

noncomputable section

/-- A196747: Numbers n such that 3 does not divide swing(n) = A056040(n).

Offset 1, canonical program `A196747.P369553060331001684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196747 (n : ℕ) : ℤ :=
  (A196747.P369553060331001684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197638.P14779992210065469956

`2*A004139(n+1)-A000038(n)`
-/

namespace A197638.P14779992210065469956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004139 (n + 1) - A000038 n

end

end A197638.P14779992210065469956

noncomputable section

/-- A197638: GA1 numbers: composite m with G(m) >= G(m/p) for all prime factors p of m, where G(k) = sigma(k)/(k*log(log(k))) and sigma(k) = sum of divisors of k.

Offset 1, canonical program `A197638.P14779992210065469956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197638 (n : ℕ) : ℤ :=
  A197638.P14779992210065469956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197680.P6924498182071460714

`eq[1, A049419(n+1)%2]+1`
-/

namespace A197680.P6924498182071460714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049419 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A197680.P6924498182071460714

noncomputable section

/-- A197680: Numbers whose exponents in their prime power factorization are squares.

Offset 1, canonical program `A197680.P6924498182071460714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6417 terms. -/
def A197680 (n : ℕ) : ℤ :=
  (A197680.P6924498182071460714.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6417 terms. -/
def A197680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197870.P1067447650284756042

`A009531(A198954(n))`
-/

namespace A197870.P1067447650284756042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A198954 n).toNat

end

end A197870.P1067447650284756042

noncomputable section

/-- A197870: Expansion of false theta series variation of Ramanujan theta function psi(x).

Offset 0, canonical program `A197870.P1067447650284756042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197870 (n : ℕ) : ℤ :=
  A197870.P1067447650284756042.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199218.P4498318443024509209

`p?[A092569(or(1, A080165(n+1)))]`
-/

namespace A199218.P4498318443024509209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (Int.lor 1 (A080165 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199218.P4498318443024509209

noncomputable section

/-- A199218: Prime XOR couples of A199217.

Offset 1, canonical program `A199218.P4498318443024509209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A199218 (n : ℕ) : ℤ :=
  A199218.P4498318443024509209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A199218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199575.P16111649686960997552

`floor(sqrt(A061287(n)))`
-/

namespace A199575.P16111649686960997552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A061287 n)

end

end A199575.P16111649686960997552

noncomputable section

/-- A199575: a(n) = floor(Fibonacci(n)^(1/4)).

Offset 0, canonical program `A199575.P16111649686960997552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 959 terms. -/
def A199575 (n : ℕ) : ℤ :=
  A199575.P16111649686960997552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 959 terms. -/
def A199575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199626.P4661212132332245085

`A026741(A106249(n))-A056991(n+1)`
-/

namespace A199626.P4661212132332245085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A106249 n).toNat - A056991 (n + 1)

end

end A199626.P4661212132332245085

noncomputable section

/-- A199626: G.f.: (1+x)^(2*g)*(1+x^3)^(3*g)/((1-x^2)*(1-x^4))-x^(2*g)*(1+x)^4/((1-x^2)*(1-x^4)) for g=0.

Offset 0, canonical program `A199626.P4661212132332245085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199626 (n : ℕ) : ℤ :=
  A199626.P4661212132332245085.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199706.P16105507406723659083

`4*(A219054(n+1)+A002264(n+1))`
-/

namespace A199706.P16105507406723659083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A219054 (n + 1) + A002264 (n + 1))

end

end A199706.P16105507406723659083

noncomputable section

/-- A199706: Number of -n..n arrays x(0..3) of 4 elements with zero sum and no two neighbors equal.

Offset 1, canonical program `A199706.P16105507406723659083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199706 (n : ℕ) : ℤ :=
  A199706.P16105507406723659083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199799.P11622776229895565109

`eq[1, gcd(n, A154549(n+1))]`
-/

namespace A199799.P11622776229895565109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A154549 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199799.P11622776229895565109

noncomputable section

/-- A199799: Totatives of 111111.

Offset 1, canonical program `A199799.P11622776229895565109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4665 terms. -/
def A199799 (n : ℕ) : ℤ :=
  (A199799.P11622776229895565109.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4665 terms. -/
def A199799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199928.P17595859429423267305

`A199803(3*n+2)`
-/

namespace A199928.P17595859429423267305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199803 (3 * n + 2)

end

end A199928.P17595859429423267305

noncomputable section

/-- A199928: Trisection 1 of A199802.

Offset 0, canonical program `A199928.P17595859429423267305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A199928 (n : ℕ) : ℤ :=
  A199928.P17595859429423267305.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A199928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199929.P2919813017044911463

`A199803(3*n)-A199803(3*n+1)`
-/

namespace A199929.P2919813017044911463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199803 (3 * n) - A199803 (3 * n + 1)

end

end A199929.P2919813017044911463

noncomputable section

/-- A199929: Trisection 2 of A199802.

Offset 0, canonical program `A199929.P2919813017044911463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A199929 (n : ℕ) : ℤ :=
  A199929.P2919813017044911463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A199929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199930.P7858068792414983377

`A199803(3*n)`
-/

namespace A199930.P7858068792414983377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199803 (3 * n)

end

end A199930.P7858068792414983377

noncomputable section

/-- A199930: Trisection 0 of A199803.

Offset 0, canonical program `A199930.P7858068792414983377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A199930 (n : ℕ) : ℤ :=
  A199930.P7858068792414983377.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A199930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199931.P16336687389798306724

`A199803(3*n+1)`
-/

namespace A199931.P16336687389798306724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199803 (3 * n + 1)

end

end A199931.P16336687389798306724

noncomputable section

/-- A199931: Trisection 1 of A199803.

Offset 0, canonical program `A199931.P16336687389798306724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A199931 (n : ℕ) : ℤ :=
  A199931.P16336687389798306724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A199931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200067.P5475478222933441891

`A190798(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A200067.P5475478222933441891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A190798 (n - 1) - a (n - 1)

end

end A200067.P5475478222933441891

noncomputable section

/-- A200067: Maximum sum of all products of absolute differences and distances between element pairs among the integer partitions of n.

Offset 0, canonical program `A200067.P5475478222933441891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200067 (n : ℕ) : ℤ :=
  A200067.P5475478222933441891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200067.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A201461.P15060642789857487320

`A345135(2*A103354(n+1))`
-/

namespace A201461.P15060642789857487320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345135 (2 * A103354 (n + 1)).toNat

end

end A201461.P15060642789857487320

noncomputable section

/-- A201461: Triangle read by rows: n-th row (n>=0) gives coefficients of the polynomial ((x+1)^(2^n) + (x-1)^(2^n))/2.

Offset 0, canonical program `A201461.P15060642789857487320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A201461 (n : ℕ) : ℤ :=
  A201461.P15060642789857487320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A201461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201786.P4099425712573629758

`∩[A142183(n+1), A134593(n)]`
-/

namespace A201786.P4099425712573629758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201786.P4099425712573629758

noncomputable section

/-- A201786: Primes of the form 5*k^2 - 4.

Offset 1, canonical program `A201786.P4099425712573629758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A201786 (n : ℕ) : ℤ :=
  (A201786.P4099425712573629758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A201786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202267.P5737386404805848355

`eq[A055641(n), A064692(n)]`
-/

namespace A202267.P5737386404805848355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202267.P5737386404805848355

noncomputable section

/-- A202267: Numbers in which all digits are noncomposites (1, 2, 3, 5, 7) or 0.

Offset 1, canonical program `A202267.P5737386404805848355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A202267 (n : ℕ) : ℤ :=
  (A202267.P5737386404805848355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A202267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202333.P13249908490991948429

`A050486(n+3)+2-A005585(n+4)`
-/

namespace A202333.P13249908490991948429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050486 (n + 3) + (2 - A005585 (n + 4))

end

end A202333.P13249908490991948429

noncomputable section

/-- A202333: Number of (n+1) X 7 binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

Offset 1, canonical program `A202333.P13249908490991948429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A202333 (n : ℕ) : ℤ :=
  A202333.P13249908490991948429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A202333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202340.P12710682154038267641

`char[A136495(A136495(n+1))]+1`
-/

namespace A202340.P12710682154038267641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A136495 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A202340.P12710682154038267641

noncomputable section

/-- A202340: Number of times n occurs in Hofstadter H-sequence A005374.

Offset 0, canonical program `A202340.P12710682154038267641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202340 (n : ℕ) : ℤ :=
  (A202340.P12710682154038267641.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202341.P2903062940164643080

`comp[A136495(n+1)+A005374(n)]`
-/

namespace A202341.P2903062940164643080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + A005374 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A202341.P2903062940164643080

noncomputable section

/-- A202341: Numbers occurring exactly once in Hofstadter H-sequence A005374.

Offset 1, canonical program `A202341.P2903062940164643080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202341 (n : ℕ) : ℤ :=
  (A202341.P2903062940164643080.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202637.P2116359330053341843

`A041008(2*n)`
-/

namespace A202637.P2116359330053341843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041008 (2 * n)

end

end A202637.P2116359330053341843

noncomputable section

/-- A202637: x-values in the solution to x^2 - 7*y^2 = -3.

Offset 1, canonical program `A202637.P2116359330053341843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A202637 (n : ℕ) : ℤ :=
  A202637.P2116359330053341843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A202637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203299.P16754718405884152906

`A203246(n+2)+∑[∑[lcm(2, n)+3]]`
-/

namespace A203299.P16754718405884152906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203246 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A203299.P16754718405884152906

noncomputable section

/-- A203299: Second elementary symmetric function of the first n terms of (2,2,3,3,4,4,5,5...).

Offset 2, canonical program `A203299.P16754718405884152906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203299 (n : ℕ) : ℤ :=
  A203299.P16754718405884152906.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203553.P6403346514830057154

`xor(1, A094761(n)-A259361(n))`
-/

namespace A203553.P6403346514830057154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A094761 n - A259361 n)

end

end A203553.P6403346514830057154

noncomputable section

/-- A203553: Lodumo_2 of A118175, which is n 1's followed by n 0's.

Offset 0, canonical program `A203553.P6403346514830057154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203553 (n : ℕ) : ℤ :=
  A203553.P6403346514830057154.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203554.P1633143920349780261

`abs(A094761(n)-A259361(n))`
-/

namespace A203554.P1633143920349780261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094761 n - A259361 n|

end

end A203554.P1633143920349780261

noncomputable section

/-- A203554: Lodumo_2 of A079813, which is n 0's followed by n 1's.

Offset 0, canonical program `A203554.P1633143920349780261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203554 (n : ℕ) : ℤ :=
  A203554.P1633143920349780261.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203570.P14237758701816468598

`A001254(n)+A027979(n)-A002878(n)`
-/

namespace A203570.P14237758701816468598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 n + (A027979 n - A002878 n)

end

end A203570.P14237758701816468598

noncomputable section

/-- A203570: Bisection of A201207 (half-convolution of the Lucas sequence A000032 with itself); even part.

Offset 0, canonical program `A203570.P14237758701816468598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A203570 (n : ℕ) : ℤ :=
  A203570.P14237758701816468598.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A203570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204175.P4096975912672246987

`1-A204171(n+1)`
-/

namespace A204175.P4096975912672246987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A204171 (n + 1)

end

end A204175.P4096975912672246987

noncomputable section

/-- A204175: Symmetric matrix based on f(i,j)=(1 if max(i,j) is even, and 0 otherwise), by antidiagonals.

Offset 1, canonical program `A204175.P4096975912672246987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204175 (n : ℕ) : ℤ :=
  A204175.P4096975912672246987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204214.P753734922948979263

`Δ[A213556(n+1)+A004282(n)]`
-/

namespace A204214.P753734922948979263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213556 (n + 1) + A004282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A204214.P753734922948979263

noncomputable section

/-- A204214: Number of length 6 nonnegative integer arrays starting and ending with 0 with adjacent elements differing by no more than n.

Offset 1, canonical program `A204214.P753734922948979263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A204214 (n : ℕ) : ℤ :=
  A204214.P753734922948979263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A204214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204429.P1450093185621297544

`2-A204421(n+1)`
-/

namespace A204429.P1450093185621297544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A204421 (n + 1)

end

end A204429.P1450093185621297544

noncomputable section

/-- A204429: Symmetric matrix: f(i,j)=(2*i + 2*j) mod 3, by antidiagonals.

Offset 1, canonical program `A204429.P1450093185621297544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204429 (n : ℕ) : ℤ :=
  A204429.P1450093185621297544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204437.P15617630980625576851

`and(1, A108037(n))`
-/

namespace A204437.P15617630980625576851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A108037 n)

end

end A204437.P15617630980625576851

noncomputable section

/-- A204437: Symmetric matrix: f(i,j)=((i+j+1)^2 mod 3), by (constant) antidiagonals.

Offset 1, canonical program `A204437.P15617630980625576851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204437 (n : ℕ) : ℤ :=
  A204437.P15617630980625576851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204441.P7061204664835740213

`A168181(A279891(n)+2)`
-/

namespace A204441.P7061204664835740213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 (A279891 n + 2).toNat

end

end A204441.P7061204664835740213

noncomputable section

/-- A204441: Symmetric matrix: f(i,j)=floor[(i+j+2)/4]-floor[(i+j-1)/4], by (constant) antidiagonals.

Offset 1, canonical program `A204441.P7061204664835740213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204441 (n : ℕ) : ℤ :=
  A204441.P7061204664835740213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204445.P52060757072548891

`round(2/(A204255(n+1)+1))`
-/

namespace A204445.P52060757072548891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (A204255 (n + 1) + 1 : ℚ))

end

end A204445.P52060757072548891

noncomputable section

/-- A204445: Symmetric matrix: f(i,j)=floor[(i+j+4)/4]-floor[(i+j+1)/4], by (constant) antidiagonals.

Offset 1, canonical program `A204445.P52060757072548891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204445 (n : ℕ) : ℤ :=
  A204445.P52060757072548891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204545.P11394262719737038937

`gcd(2, A057944(n))-1`
-/

namespace A204545.P11394262719737038937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A057944 n) : ℤ) - 1

end

end A204545.P11394262719737038937

noncomputable section

/-- A204545: Symmetric matrix: f(i,j)=floor[(i+j+3)/4]-floor[(i+j+1)/4], by (constant) antidiagonals.

Offset 1, canonical program `A204545.P11394262719737038937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204545 (n : ℕ) : ℤ :=
  A204545.P11394262719737038937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204547.P3252054047008293211

`1-A204269(n+1)`
-/

namespace A204547.P3252054047008293211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A204269 (n + 1)

end

end A204547.P3252054047008293211

noncomputable section

/-- A204547: Symmetric matrix: f(i,j)=floor[(i+j+4)/4]-floor[(i+j+2)/4], by (constant) antidiagonals.

Offset 1, canonical program `A204547.P3252054047008293211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204547 (n : ℕ) : ℤ :=
  A204547.P3252054047008293211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204549.P1941969792183270277

`A057944(n)%2`
-/

namespace A204549.P1941969792183270277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057944 n) 2

end

end A204549.P1941969792183270277

noncomputable section

/-- A204549: Symmetric matrix: f(i,j)=floor[(i+j+5)/4]-floor[(i+j+3)/4], by (constant) antidiagonals.

Offset 1, canonical program `A204549.P1941969792183270277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204549 (n : ℕ) : ℤ :=
  A204549.P1941969792183270277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204815.P8666352689272894956

`(A277543(A000038(n)+n)^n)%5`
-/

namespace A204815.P8666352689272894956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277543 (A000038 n + (n : ℤ)).toNat ^ n) 5

end

end A204815.P8666352689272894956

noncomputable section

/-- A204815: Final nonzero digit of n^n in base 5.

Offset 0, canonical program `A204815.P8666352689272894956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A204815 (n : ℕ) : ℤ :=
  A204815.P8666352689272894956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A204815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206032.P15818663996432524408

`∏{d}[n+1, A001065(#)+#]`
-/

namespace A206032.P15818663996432524408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A001065 d + (d : ℤ))

end

end A206032.P15818663996432524408

noncomputable section

/-- A206032: a(n) = Product_{d|n} sigma(d) where sigma = A000203.

Offset 1, canonical program `A206032.P15818663996432524408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A206032 (n : ℕ) : ℤ :=
  A206032.P15818663996432524408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A206032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206439.P11690255037767737143

`∑[A064692(n)]`
-/

namespace A206439.P11690255037767737143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206439.P11690255037767737143

noncomputable section

/-- A206439: Partial sums of A064692.

Offset 0, canonical program `A206439.P11690255037767737143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206439 (n : ℕ) : ℤ :=
  A206439.P11690255037767737143.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206439.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A206824.P14274703909039369394

`A091954(∏{p}[n+2, #])`
-/

namespace A206824.P14274703909039369394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A206824.P14274703909039369394

noncomputable section

/-- A206824: Number of solutions (n,k) of s(k) = s(n) (mod n), where 1 <= k < n and s(k) = k(k+1)/2.

Offset 2, canonical program `A206824.P14274703909039369394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A206824 (n : ℕ) : ℤ :=
  A206824.P14274703909039369394.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A206824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206907.P3358709916380969385

`A002264(A097337(n+1))+∑[A177702(n)]`
-/

namespace A206907.P3358709916380969385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A097337 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206907.P3358709916380969385

noncomputable section

/-- A206907: n+[nr/s]+[nt/s], where []=floor, r=1/3, s=sqrt(3), t=1/s.

Offset 1, canonical program `A206907.P3358709916380969385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206907 (n : ℕ) : ℤ :=
  A206907.P3358709916380969385.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207400.P14434467165464985475

`A166830(n+1)*A181510(n+1)`
-/

namespace A207400.P14434467165464985475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166830 (n + 1) * A181510 (n + 1)

end

end A207400.P14434467165464985475

noncomputable section

/-- A207400: Number of n X 5 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

Offset 1, canonical program `A207400.P14434467165464985475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207400 (n : ℕ) : ℤ :=
  A207400.P14434467165464985475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207990.P6589723644473389047

`p?[∑[A031131(n+1)]]`
-/

namespace A207990.P6589723644473389047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207990.P6589723644473389047

noncomputable section

/-- A207990: Primes of the form prime(n) + prime(n+1) - 5.

Offset 1, canonical program `A207990.P6589723644473389047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A207990 (n : ℕ) : ℤ :=
  A207990.P6589723644473389047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A207990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207991.P23937838274844558

`p?[A001043(n+1)+5]`
-/

namespace A207991.P23937838274844558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207991.P23937838274844558

noncomputable section

/-- A207991: Primes of the form prime(n) + prime(n+1) + 5.

Offset 1, canonical program `A207991.P23937838274844558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1975 terms. -/
def A207991 (n : ℕ) : ℤ :=
  A207991.P23937838274844558.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1975 terms. -/
def A207991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208089.P15961409153887252375

`3*A208087(n+1)`
-/

namespace A208089.P15961409153887252375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A208087 (n + 1)

end

end A208089.P15961409153887252375

noncomputable section

/-- A208089: Number of 8 X (n+1) 0..1 arrays with every 2 X 2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..1 introduced in row major order.

Offset 1, canonical program `A208089.P15961409153887252375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A208089 (n : ℕ) : ℤ :=
  A208089.P15961409153887252375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A208089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208176.P16613018010814383461

`A059929(n)+1`
-/

namespace A208176.P16613018010814383461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 n + 1

end

end A208176.P16613018010814383461

noncomputable section

/-- A208176: a(n) = F(n+1)^2, if n>=0 is even (F=A000045) and a(n) = (L(2n+2)+8)/5, if n is odd (L=A000204).

Offset 0, canonical program `A208176.P16613018010814383461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A208176 (n : ℕ) : ℤ :=
  A208176.P16613018010814383461.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A208176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208279.P14773634659230298317

`A053214(A008587(n))%10`
-/

namespace A208279.P14773634659230298317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053214 (A008587 n).toNat) 10

end

end A208279.P14773634659230298317

noncomputable section

/-- A208279: Central terms of Pascal's triangle mod 10 (A008975).

Offset 0, canonical program `A208279.P14773634659230298317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2001 terms. -/
def A208279 (n : ℕ) : ℤ :=
  A208279.P14773634659230298317.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2001 terms. -/
def A208279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208548.P11240313443183236661

`A002264(A175222(n+1))-A046933(n+1)`
-/

namespace A208548.P11240313443183236661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A175222 (n + 1)).toNat - A046933 (n + 1)

end

end A208548.P11240313443183236661

noncomputable section

/-- A208548: a(n) = floor((4/3)*(2+prime(n)) - prime(n+1)).

Offset 1, canonical program `A208548.P11240313443183236661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A208548 (n : ℕ) : ℤ :=
  A208548.P11240313443183236661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A208548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208665.P1447488627337888995

`∑[3*A120437(n+1)]`
-/

namespace A208665.P1447488627337888995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A120437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208665.P1447488627337888995

noncomputable section

/-- A208665: Numbers that match odd ternary polynomials; see Comments.

Offset 1, canonical program `A208665.P1447488627337888995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208665 (n : ℕ) : ℤ :=
  A208665.P1447488627337888995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209231.P5618915818047327057

`A005253(n)-1`
-/

namespace A209231.P5618915818047327057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005253 n - 1

end

end A209231.P5618915818047327057

noncomputable section

/-- A209231: Number of binary words of length n such that there is at least one 0 and every run of consecutive 0's is of length >= 4.

Offset 0, canonical program `A209231.P5618915818047327057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A209231 (n : ℕ) : ℤ :=
  A209231.P5618915818047327057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A209231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209302.P13662665736240309991

`A000194(n+1)+A053188(n+1)`
-/

namespace A209302.P13662665736240309991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n + 1) + A053188 (n + 1)

end

end A209302.P13662665736240309991

noncomputable section

/-- A209302: Table T(n,k) = max{n+k-1, n+k-1} n, k > 0, read by sides of squares from T(1,n) to T(n,n), then from T(n,n) to T(n,1).

Offset 1, canonical program `A209302.P13662665736240309991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209302 (n : ℕ) : ℤ :=
  A209302.P13662665736240309991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209302.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209634.P15930513484194304343

`3*A082375(n)+1`
-/

namespace A209634.P15930513484194304343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A082375 n + 1

end

end A209634.P15930513484194304343

noncomputable section

/-- A209634: Triangle with (1,4,7,10,13,16...,(3*n-2),...) in every column, shifted down twice.

Offset 1, canonical program `A209634.P15930513484194304343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209634 (n : ℕ) : ℤ :=
  A209634.P15930513484194304343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209859.P17593637001217111861

`floor(A209639(n)/2)`
-/

namespace A209859.P17593637001217111861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209639 n : ℚ) / 2⌋

end

end A209859.P17593637001217111861

noncomputable section

/-- A209859: Rewrite the binary expansion of n from the most significant end, 1 -> 1, 0+1 (one or more zeros followed by one) -> 0, drop the trailing zeros of the original n.

Offset 0, canonical program `A209859.P17593637001217111861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A209859 (n : ℕ) : ℤ :=
  A209859.P17593637001217111861.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A209859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209929.P9729360077625781388

`round(sqrt(atan(A190997(n+1))))`
-/

namespace A209929.P9729360077625781388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.arctan (A190997 (n + 1) : ℝ)))

end

end A209929.P9729360077625781388

noncomputable section

/-- A209929: Smallest digit of all divisors of n.

Offset 1, canonical program `A209929.P9729360077625781388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209929 (n : ℕ) : ℤ :=
  A209929.P9729360077625781388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210136.P4525698088877762562

`A210054(n+1)-A209822(n+1)`
-/

namespace A210136.P4525698088877762562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210054 (n + 1) - A209822 (n + 1)

end

end A210136.P4525698088877762562

noncomputable section

/-- A210136: Number of (n+1) X 2 0..3 arrays containing all values 0..3 with every 2 X 2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

Offset 1, canonical program `A210136.P4525698088877762562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A210136 (n : ℕ) : ℤ :=
  A210136.P4525698088877762562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A210136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210209.P12905943660189559259

`A115311(n+1)/A131534(n)`
-/

namespace A210209.P12905943660189559259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115311 (n + 1) : ℚ) / (A131534 n : ℚ)

end

end A210209.P12905943660189559259

noncomputable section

/-- A210209: GCD of all sums of n consecutive Fibonacci numbers.

Offset 0, canonical program `A210209.P12905943660189559259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. -/
def A210209 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A210209.P12905943660189559259.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. -/
def A210209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210357.P3827189753604429060

`A110655(A022851(n+1))`
-/

namespace A210357.P3827189753604429060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A022851 (n + 1)).toNat

end

end A210357.P3827189753604429060

noncomputable section

/-- A210357: Location of the maximum modulus in the inverse of Hilbert's matrix.

Offset 1, canonical program `A210357.P3827189753604429060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A210357 (n : ℕ) : ℤ :=
  A210357.P3827189753604429060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A210357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210435.P7595724009279329966

`1-A192543(n+1)+n`
-/

namespace A210435.P7595724009279329966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A192543 (n + 1) + (n : ℤ)

end

end A210435.P7595724009279329966

noncomputable section

/-- A210435: Number of digits in 5^n.

Offset 0, canonical program `A210435.P7595724009279329966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210435 (n : ℕ) : ℤ :=
  A210435.P7595724009279329966.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210497.P15561998313545519789

`A001043(n+1)-A062234(n+1)`
-/

namespace A210497.P15561998313545519789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A062234 (n + 1)

end

end A210497.P15561998313545519789

noncomputable section

/-- A210497: a(n) = 2*prime(n+1) - prime(n).

Offset 1, canonical program `A210497.P15561998313545519789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210497 (n : ℕ) : ℤ :=
  A210497.P15561998313545519789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210934.P6617217077888488102

`A001414(A008864(n+1))`
-/

namespace A210934.P6617217077888488102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A008864 (n + 1)).toNat

end

end A210934.P6617217077888488102

noncomputable section

/-- A210934: Sum of prime factors of prime(n)+1 (counted with multiplicity).

Offset 1, canonical program `A210934.P6617217077888488102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A210934 (n : ℕ) : ℤ :=
  A210934.P6617217077888488102.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A210934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A210936.P14296701000802497448

`A001414(A006093(n+1))`
-/

namespace A210936.P14296701000802497448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A006093 (n + 1)).toNat

end

end A210936.P14296701000802497448

noncomputable section

/-- A210936: Sum of prime factors of prime(n)-1 (counted with multiplicity).

Offset 1, canonical program `A210936.P14296701000802497448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A006093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A210936 (n : ℕ) : ℤ :=
  A210936.P14296701000802497448.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A006093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A210936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211265.P3770983483908970250

`∑[A211159(n+1)]+n`
-/

namespace A211265.P3770983483908970250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A211265.P3770983483908970250

noncomputable section

/-- A211265: Number of integer pairs (x,y) such that 0

Offset 1, canonical program `A211265.P3770983483908970250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211265 (n : ℕ) : ℤ :=
  A211265.P3770983483908970250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211381.P2497063138568768857

`A211380(n+3)-A000332(n+3)`
-/

namespace A211381.P2497063138568768857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211380 (n + 3) - A000332 (n + 3)

end

end A211381.P2497063138568768857

noncomputable section

/-- A211381: Number of pairs of intersecting diagonals in the exterior of a regular n-gon.

Offset 3, canonical program `A211381.P2497063138568768857`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211380, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211381 (n : ℕ) : ℤ :=
  A211381.P2497063138568768857.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211380, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211381.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211431.P6606073131395030940

`Δ[n²]+2*A031876(2*n)`
-/

namespace A211431.P6606073131395030940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2 * A031876 (2 * n)

end

end A211431.P6606073131395030940

noncomputable section

/-- A211431: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^3+(x+y)^2=0.

Offset 0, canonical program `A211431.P6606073131395030940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 597 terms. -/
def A211431 (n : ℕ) : ℤ :=
  A211431.P6606073131395030940.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 597 terms. -/
def A211431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211517.P17636450596556737059

`A031876(2*n)-A005843(A031876(n))`
-/

namespace A211517.P17636450596556737059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031876 (2 * n) - A005843 (A031876 n).toNat

end

end A211517.P17636450596556737059

noncomputable section

/-- A211517: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^3=(x+y)^2.

Offset 0, canonical program `A211517.P17636450596556737059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1007 terms. -/
def A211517 (n : ℕ) : ℤ :=
  A211517.P17636450596556737059.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1007 terms. -/
def A211517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211528.P14625012457903362307

`A211525(n+1)+2*A006327(n+4)`
-/

namespace A211528.P14625012457903362307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211525 (n + 1) + 2 * A006327 (n + 4)

end

end A211528.P14625012457903362307

noncomputable section

/-- A211528: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, four or six distinct values for every i,j,k<=n.

Offset 1, canonical program `A211528.P14625012457903362307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A211528 (n : ℕ) : ℤ :=
  A211528.P14625012457903362307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A211528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211529.P292426756212088253

`A211526(n+1)+2*A006327(n+4)`
-/

namespace A211529.P292426756212088253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211526 (n + 1) + 2 * A006327 (n + 4)

end

end A211529.P292426756212088253

noncomputable section

/-- A211529: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, four, five or six distinct values for every i,j,k<=n.

Offset 1, canonical program `A211529.P292426756212088253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A211529 (n : ℕ) : ℤ :=
  A211529.P292426756212088253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A211529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212159.P1250702774170849760

`(-1)^A006254(n+1)`
-/

namespace A212159.P1250702774170849760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A006254 (n + 1) : ℤ)

end

end A212159.P1250702774170849760

noncomputable section

/-- A212159: a(n) = (-1)^((prime(n) + 1)/2).

Offset 2, canonical program `A212159.P1250702774170849760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212159 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A212159.P1250702774170849760.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212159.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A212233.P15822774752107181943

`A027914(2*(n+1))`
-/

namespace A212233.P15822774752107181943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 (2 * (n + 1))

end

end A212233.P15822774752107181943

noncomputable section

/-- A212233: Number of 0..2 arrays of length 2*n with sum no more than 2*n in any length 2n subsequence (=50% duty cycle).

Offset 1, canonical program `A212233.P15822774752107181943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A212233 (n : ℕ) : ℤ :=
  A212233.P15822774752107181943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A212233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212510.P14644633675115054678

`(A001840(n)-n)*A077043(n)`
-/

namespace A212510.P14644633675115054678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001840 n - (n : ℤ)) * A077043 n

end

end A212510.P14644633675115054678

noncomputable section

/-- A212510: Number of (w,x,y,z) with all terms in {1,...,n} and w3z.

Offset 0, canonical program `A212510.P14644633675115054678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212510 (n : ℕ) : ℤ :=
  A212510.P14644633675115054678.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212512.P2827929840228850799

`(A211540(n)+A006578(n))*A006578(n)`
-/

namespace A212512.P2827929840228850799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211540 n + A006578 n) * A006578 n

end

end A212512.P2827929840228850799

noncomputable section

/-- A212512: Number of (w,x,y,z) with all terms in {1,...,n} and w<=2x and y

Offset 0, canonical program `A212512.P2827929840228850799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212512 (n : ℕ) : ℤ :=
  A212512.P2827929840228850799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212513.P9978081440259541698

`A006578(n)*A397972(n)`
-/

namespace A212513.P9978081440259541698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n * A397972 n

end

end A212513.P9978081440259541698

noncomputable section

/-- A212513: Number of (w,x,y,z) with all terms in {1,...,n} and w<=2x and y<=3z.

Offset 0, canonical program `A212513.P9978081440259541698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212513 (n : ℕ) : ℤ :=
  A212513.P9978081440259541698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212514.P3714945399054877261

`(A001840(n)-n)*A006578(n)`
-/

namespace A212514.P3714945399054877261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001840 n - (n : ℤ)) * A006578 n

end

end A212514.P3714945399054877261

noncomputable section

/-- A212514: Number of (w,x,y,z) with all terms in {1,...,n} and w<=2x and y>3z.

Offset 0, canonical program `A212514.P3714945399054877261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212514 (n : ℕ) : ℤ :=
  A212514.P3714945399054877261.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212517.P9130843482353071563

`(n²-A006578(n))*A397972(n)`
-/

namespace A212517.P9130843482353071563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A006578 n) * A397972 n

end

end A212517.P9130843482353071563

noncomputable section

/-- A212517: Number of (w,x,y,z) with all terms in {1,...,n} and w>2x and y<=3z.

Offset 0, canonical program `A212517.P9130843482353071563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212517 (n : ℕ) : ℤ :=
  A212517.P9130843482353071563.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212518.P17660951834491083763

`(A001840(n)-n)*∑[A140106(n+1)]`
-/

namespace A212518.P17660951834491083763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001840 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212518.P17660951834491083763

noncomputable section

/-- A212518: Number of (w,x,y,z) with all terms in {1,...,n} and w>2x and y>3z.

Offset 0, canonical program `A212518.P17660951834491083763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212518 (n : ℕ) : ℤ :=
  A212518.P17660951834491083763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212519.P16552761711127633602

`∑[A140106(n+1)]*∑[A002264(n)]`
-/

namespace A212519.P16552761711127633602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A212519.P16552761711127633602

noncomputable section

/-- A212519: Number of (w,x,y,z) with all terms in {1,...,n} and w>2x and y>=3z.

Offset 0, canonical program `A212519.P16552761711127633602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212519 (n : ℕ) : ℤ :=
  A212519.P16552761711127633602.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212595.P16881548213722038787

`A175851(2*(n+6))`
-/

namespace A212595.P16881548213722038787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * (n + 6))

end

end A212595.P16881548213722038787

noncomputable section

/-- A212595: Let f(n) = 2n-7. Difference between f(n) and the nearest prime < f(n).

Offset 10, canonical program `A212595.P16881548213722038787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9991 terms. -/
def A212595 (n : ℕ) : ℤ :=
  A212595.P16881548213722038787.a (n - 10)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9991 terms. -/
def A212595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212600.P11668726103471995510

`filter[A136437(n+3), A066247(#)]`
-/

namespace A212600.P11668726103471995510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136437 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A212600.P11668726103471995510

noncomputable section

/-- A212600: Composite numbers p-m! arising in A212266.

Offset 1, canonical program `A212600.P11668726103471995510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5599 terms. -/
def A212600 (n : ℕ) : ℤ :=
  A212600.P11668726103471995510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5599 terms. -/
def A212600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212689.P12151621685584583542

`A131479(n)-A212688(n)`
-/

namespace A212689.P12151621685584583542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131479 n - A212688 n

end

end A212689.P12151621685584583542

noncomputable section

/-- A212689: Number of (w,x,y,z) with all terms in {1,...,n} and 2|w-x|>n+|y-z|.

Offset 0, canonical program `A212689.P12151621685584583542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212689 (n : ℕ) : ℤ :=
  A212689.P12151621685584583542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212743.P8901795894585003481

`(n+1)²²-A212742(n)`
-/

namespace A212743.P8901795894585003481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A212742 n

end

end A212743.P8901795894585003481

noncomputable section

/-- A212743: Number of (w,x,y,z) with all terms in {0,...,n} and max{w,x,y,z}>2*min{w,x,y,z}.

Offset 0, canonical program `A212743.P8901795894585003481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212743 (n : ℕ) : ℤ :=
  A212743.P8901795894585003481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212769.P16448248741169686819

`A006094(n+1)%A001043(n+1)`
-/

namespace A212769.P16448248741169686819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 1)) (A001043 (n + 1))

end

end A212769.P16448248741169686819

noncomputable section

/-- A212769: p*q modulo (p+q) with p, q consecutive primes.

Offset 1, canonical program `A212769.P16448248741169686819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212769 (n : ℕ) : ℤ :=
  A212769.P16448248741169686819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212849.P15956116978994903587

`record[A000027(n+1)*A010054(A001414(n+1))]`
-/

namespace A212849.P15956116978994903587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A010054 (A001414 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212849.P15956116978994903587

noncomputable section

/-- A212849: Numbers whose sum of prime factors (counted with multiplicity) is a triangular number.

Offset 1, canonical program `A212849.P15956116978994903587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A212849 (n : ℕ) : ℤ :=
  A212849.P15956116978994903587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A212849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212890.P12500765985835150325

`(n+1)^4-A212889(n)`
-/

namespace A212890.P12500765985835150325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A212889 n

end

end A212890.P12500765985835150325

noncomputable section

/-- A212890: Number of (w,x,y,z) with all terms in {0,...,n} and odd range.

Offset 0, canonical program `A212890.P12500765985835150325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212890 (n : ℕ) : ℤ :=
  A212890.P12500765985835150325.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212905.P11159810601554210294

`2*A213483(n)-A005893(n)`
-/

namespace A212905.P11159810601554210294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213483 n - A005893 n

end

end A212905.P11159810601554210294

noncomputable section

/-- A212905: Number of (w,x,y,z) with all terms in {0,...,n} and |w-x|+|x-y+|y-z|=2n.

Offset 0, canonical program `A212905.P11159810601554210294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212905 (n : ℕ) : ℤ :=
  A212905.P11159810601554210294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212977.P17578249698588708687

`C(n+3, 3)-A058187(n)`
-/

namespace A212977.P17578249698588708687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) - A058187 n

end

end A212977.P17578249698588708687

noncomputable section

/-- A212977: Number of (w,x,y) with all terms in {0,...,n} and n/2 < w+x+y <= n.

Offset 0, canonical program `A212977.P17578249698588708687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212977 (n : ℕ) : ℤ :=
  A212977.P17578249698588708687.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213194.P3452364425526493797

`A008619(A060511(n))`
-/

namespace A213194.P3452364425526493797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A060511 n).toNat

end

end A213194.P3452364425526493797

noncomputable section

/-- A213194: First inverse function (numbers of rows) for pairing function A211377.

Offset 1, canonical program `A213194.P3452364425526493797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A213194 (n : ℕ) : ℤ :=
  A213194.P3452364425526493797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A213194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213393.P16252528104220517147

`6*A190798(n+1)`
-/

namespace A213393.P16252528104220517147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A190798 (n + 1)

end

end A213393.P16252528104220517147

noncomputable section

/-- A213393: Number of (w,x,y) with all terms in {0,...,n} and 2*max(w,x,y) > 3*min(w,x,y).

Offset 0, canonical program `A213393.P16252528104220517147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213393 (n : ℕ) : ℤ :=
  A213393.P16252528104220517147.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213394.P16098337122954015116

`n+1-A053666(n+1)`
-/

namespace A213394.P16098337122954015116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A053666 (n + 1)

end

end A213394.P16098337122954015116

noncomputable section

/-- A213394: The difference between n and the product of the digits of the n-th prime.

Offset 1, canonical program `A213394.P16098337122954015116`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213394 (n : ℕ) : ℤ :=
  A213394.P16098337122954015116.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213706.P17260508495557102754

`a(n-1)+A071542(n)` with `a(0)=0`
-/

namespace A213706.P17260508495557102754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A071542 n

end

end A213706.P17260508495557102754

noncomputable section

/-- A213706: Partial sums of A071542.

Offset 0, canonical program `A213706.P17260508495557102754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213706 (n : ℕ) : ℤ :=
  A213706.P17260508495557102754.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213706.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213709.P17085692847900461859

`A071542(2^(n+1)-1)-A071542(2^n-1)`
-/

namespace A213709.P17085692847900461859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (2 ^ (n + 1) - 1) - A071542 (2 ^ n - 1)

end

end A213709.P17085692847900461859

noncomputable section

/-- A213709: Number of steps to go from 2^(n+1)-1 to (2^n)-1 using the iterative process described in A071542.

Offset 0, canonical program `A213709.P17085692847900461859`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213709 (n : ℕ) : ℤ :=
  A213709.P17085692847900461859.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213709.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213710.P973503051556971072

`A071542(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213710.P973503051556971072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (2 ^ n)

end

end A213710.P973503051556971072

noncomputable section

/-- A213710: Number of steps to reach 0 when starting from 2^n and iterating the map x -> x - (number of 1's in binary representation of x): a(n) = A071542(2^n) = A218600(n)+1.

Offset 0, canonical program `A213710.P973503051556971072`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213710 (n : ℕ) : ℤ :=
  A213710.P973503051556971072.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213710.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213787.P10885586562566697687

`A000045(n)*A191797(n+1)-A056014(n+1)`
-/

namespace A213787.P10885586562566697687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A191797 (n + 1) - A056014 (n + 1)

end

end A213787.P10885586562566697687

noncomputable section

/-- A213787: a(n) = Sum_{1<=i

Offset 0, canonical program `A213787.P10885586562566697687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A213787 (n : ℕ) : ℤ :=
  A213787.P10885586562566697687.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A213787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213801.P10196525806075667594

`A064412(n+2)-A077043((2*(n+1)+1-(-1)^(n+1))/4)`
-/

namespace A213801.P10196525806075667594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064412 (n + 2) - A077043 (SequenceMachineLib.roundAway (((2 * (n + 1) + 1 : ℤ) - (-1) ^ (n + 1) : ℚ) / 4)).toNat

end

end A213801.P10196525806075667594

noncomputable section

/-- A213801: Number of 3 X 3 0..n symmetric arrays with all rows summing to floor(n*3/2).

Offset 1, canonical program `A213801.P10196525806075667594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064412, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213801 (n : ℕ) : ℤ :=
  A213801.P10196525806075667594.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064412, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213801.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214046.P3375513513788457765

`A061375(n+1)+A057427(n)`
-/

namespace A214046.P3375513513788457765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (n + 1) + A057427 n

end

end A214046.P3375513513788457765

noncomputable section

/-- A214046: Least m>0 such that n! <= m^n.

Offset 1, canonical program `A214046.P3375513513788457765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214046 (n : ℕ) : ℤ :=
  A214046.P3375513513788457765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214054.P9495975754376215366

`gcd(2, A007912(xor(3, n)+3))`
-/

namespace A214054.P9495975754376215366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007912 (Nat.xor 3 n + 3))

end

end A214054.P9495975754376215366

noncomputable section

/-- A214054: Least m>0 such that n!!+m and n-m have a common divisor > 1.

Offset 1, canonical program `A214054.P9495975754376215366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8165 terms. -/
def A214054 (n : ℕ) : ℤ :=
  (A214054.P9495975754376215366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8165 terms. -/
def A214054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214293.P9450923103603162024

`A169695(A008706(n+1))-A169695(n+1)`
-/

namespace A214293.P9450923103603162024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A008706 (n + 1)).toNat - A169695 (n + 1)

end

end A214293.P9450923103603162024

noncomputable section

/-- A214293: a(n) = 1 if n is a square, -1 if n is five times a square.

Offset 1, canonical program `A214293.P9450923103603162024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214293 (n : ℕ) : ℤ :=
  A214293.P9450923103603162024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214317.P1350936880509777613

`10*a(n-1)+2-A005614(n)` with `a(0)=1`
-/

namespace A214317.P1350936880509777613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + (2 - A005614 n)

end

end A214317.P1350936880509777613

noncomputable section

/-- A214317: a(n) = length-n prefix of the Fibonacci word A003842.

Offset 1, canonical program `A214317.P1350936880509777613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A214317 (n : ℕ) : ℤ :=
  A214317.P1350936880509777613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A214317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214319.P793865802162299093

`A182028(n)+A003849(n+1)`
-/

namespace A214319.P793865802162299093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182028 n + A003849 (n + 1)

end

end A214319.P793865802162299093

noncomputable section

/-- A214319: First differences of A182028.

Offset 0, canonical program `A214319.P793865802162299093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A214319 (n : ℕ) : ℤ :=
  A214319.P793865802162299093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A214319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214330.P7168307080799275346

`C(2, A227836(n)+2)`
-/

namespace A214330.P7168307080799275346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A227836 n + 2).toNat

end

end A214330.P7168307080799275346

noncomputable section

/-- A214330: a(n) = A214551(n) mod 2.

Offset 0, canonical program `A214330.P7168307080799275346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214330 (n : ℕ) : ℤ :=
  (A214330.P7168307080799275346.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214509.P57029170938544749

`A136748(n+1)%A014710(n)`
-/

namespace A214509.P57029170938544749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136748 (n + 1)) (A014710 n)

end

end A214509.P57029170938544749

noncomputable section

/-- A214509: a(n) = 1 if n is an odd square or twice a nonzero even square, -1 if a nonzero even square or twice an odd square else 0.

Offset 1, canonical program `A214509.P57029170938544749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214509 (n : ℕ) : ℤ :=
  A214509.P57029170938544749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214509.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A214710.P3311664088709254903

`A007877(A007912(n+3)+A007893(n+1))`
-/

namespace A214710.P3311664088709254903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A007912 (n + 3) + A007893 (n + 1)).toNat

end

end A214710.P3311664088709254903

noncomputable section

/-- A214710: Least m>0 such that n!-m and n!!-m are relatively prime.

Offset 1, canonical program `A214710.P3311664088709254903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A214710 (n : ℕ) : ℤ :=
  A214710.P3311664088709254903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A214710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214824.P7114462778934576427

`A000917(n)-A002057(n)`
-/

namespace A214824.P7114462778934576427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000917 n - A002057 n

end

end A214824.P7114462778934576427

noncomputable section

/-- A214824: Number of solid standard Young tableaux of shape [[(2)^n],[2]].

Offset 1, canonical program `A214824.P7114462778934576427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A214824 (n : ℕ) : ℤ :=
  A214824.P7114462778934576427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A214824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214838.P12315198182131377277

`A077241(n)²+2`
-/

namespace A214838.P12315198182131377277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077241 n ^ 2 + 2

end

end A214838.P12315198182131377277

noncomputable section

/-- A214838: Triangular numbers of the form k^2 + 2.

Offset 1, canonical program `A214838.P12315198182131377277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A214838 (n : ℕ) : ℤ :=
  A214838.P12315198182131377277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A214838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214884.P7885018717770910458

`(3*A119283(n)+(-1)^n*A001654(n))/2`
-/

namespace A214884.P7885018717770910458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A119283 n + (-1) ^ n * A001654 n : ℚ) / 2

end

end A214884.P7885018717770910458

noncomputable section

/-- A214884: a(n) = Sum_{k=0..n} (-1)^k*F(k)*F(k+2), where F=A000045 (Fibonacci numbers).

Offset 0, canonical program `A214884.P7885018717770910458`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214884 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A214884.P7885018717770910458.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214884.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214885.P1344965221170745018

`2*A119283(n)+(-1)^n*A001654(n)`
-/

namespace A214885.P1344965221170745018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119283 n + (-1) ^ n * A001654 n

end

end A214885.P1344965221170745018

noncomputable section

/-- A214885: a(n) = Sum_{k=0..n} (-1)^k*F(k)*F(k+3), where F=A000045 (Fibonacci numbers).

Offset 0, canonical program `A214885.P1344965221170745018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214885 (n : ℕ) : ℤ :=
  A214885.P1344965221170745018.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A215030.P16388215424714916452

`and(A066033(n+1), A176040(n))`
-/

namespace A215030.P16388215424714916452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066033 (n + 1)) (A176040 n)

end

end A215030.P16388215424714916452

noncomputable section

/-- A215030: a(n) = A215029(A000040(n)), where A000040(n) is the n-th prime.

Offset 1, canonical program `A215030.P16388215424714916452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215030 (n : ℕ) : ℤ :=
  A215030.P16388215424714916452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215092.P9241392620537580199

`∑[2-A080278(A234959(n+1))]`
-/

namespace A215092.P9241392620537580199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080278 (A234959 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215092.P9241392620537580199

noncomputable section

/-- A215092: a(n) = Sum_{i=0..m} d(i)*3^i, where Sum_{i=0..m} d(i)*6^i is the base-6 representation of n.

Offset 1, canonical program `A215092.P9241392620537580199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215092 (n : ℕ) : ℤ :=
  A215092.P9241392620537580199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215175.P279961201682932440

`A214297(A026741(n))-A123108(A093178(n))`
-/

namespace A215175.P279961201682932440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214297 (A026741 n).toNat - A123108 (A093178 n).toNat

end

end A215175.P279961201682932440

noncomputable section

/-- A215175: a(2*n) = A214297(n), a(2*n+1) = A000290(n).

Offset 0, canonical program `A215175.P279961201682932440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215175 (n : ℕ) : ℤ :=
  A215175.P279961201682932440.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215259.P940527813139096403

`A187284(n)+n`
-/

namespace A215259.P940527813139096403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187284 n + (n : ℤ)

end

end A215259.P940527813139096403

noncomputable section

/-- A215259: Nearest integer to log(A003418(n)).

Offset 0, canonical program `A215259.P940527813139096403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215259 (n : ℕ) : ℤ :=
  A215259.P940527813139096403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215456.P7038399107069761046

`A007912(4*(n+1))%Δ[A002378(n)]`
-/

namespace A215456.P7038399107069761046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007912 (4 * (n + 1))) (f1 (n + 1) - f1 n)

end

end A215456.P7038399107069761046

noncomputable section

/-- A215456: a(n)=(4n-1)!! modulo 2n, n=1,2,...

Offset 1, canonical program `A215456.P7038399107069761046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A215456 (n : ℕ) : ℤ :=
  A215456.P7038399107069761046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A215456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215480.P17421984776920031326

`val(A105561(n+1), 3)`
-/

namespace A215480.P17421984776920031326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105561 (n + 1)).toNat 3

end

end A215480.P17421984776920031326

noncomputable section

/-- A215480: Characteristic function of numbers n with exactly two distinct prime factors.

Offset 1, canonical program `A215480.P17421984776920031326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215480 (n : ℕ) : ℤ :=
  (A215480.P17421984776920031326.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215808.P8126471697275371774

`p?[A062234(n+1)]`
-/

namespace A215808.P8126471697275371774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P8126471697275371774

noncomputable section

/-- A215808: Primes of the form 2*prime(k) - prime(k+1).

Offset 1, canonical program `A215808.P8126471697275371774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. -/
def A215808 (n : ℕ) : ℤ :=
  A215808.P8126471697275371774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. -/
def A215808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215850.P12379767940283912571

`∩[A045457(n+1), A215751(n+1)]`
-/

namespace A215850.P12379767940283912571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215850.P12379767940283912571

noncomputable section

/-- A215850: Primes p such that 2*p + 1 divides Lucas(p).

Offset 1, canonical program `A215850.P12379767940283912571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. -/
def A215850 (n : ℕ) : ℤ :=
  (A215850.P12379767940283912571.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. -/
def A215850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215879.P7420381154779558260

`val(A094114(2*(n+1)), 2)`
-/

namespace A215879.P7420381154779558260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094114 (2 * (n + 1))).toNat 2

end

end A215879.P7420381154779558260

noncomputable section

/-- A215879: Written in base 3, n ends in a(n) consecutive nonzero digits.

Offset 0, canonical program `A215879.P7420381154779558260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A215879 (n : ℕ) : ℤ :=
  (A215879.P7420381154779558260.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A215879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216153.P15491257447114026993

`A205959(A018252(n+1))`
-/

namespace A216153.P15491257447114026993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (A018252 (n + 1)).toNat

end

end A216153.P15491257447114026993

noncomputable section

/-- A216153: The partial products of a(n) are the distinct values of the exponential of the von Mangoldt function modified by restricting the divisors to prime divisors (A205957).

Offset 1, canonical program `A216153.P15491257447114026993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216153 (n : ℕ) : ℤ :=
  A216153.P15491257447114026993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216318.P9466305550885392496

`ceil(A028270(n)/2)-A000108(n)`
-/

namespace A216318.P9466305550885392496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028270 n : ℚ) / 2⌉ - A000108 n

end

end A216318.P9466305550885392496

noncomputable section

/-- A216318: Number of peaks in all Dyck n-paths after changing each valley to a peak by the transform DU -> UD.

Offset 0, canonical program `A216318.P9466305550885392496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A216318 (n : ℕ) : ℤ :=
  A216318.P9466305550885392496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A216318.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A217218.P1330784543100849563

`A185590(A017401(n))`
-/

namespace A217218.P1330784543100849563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185590 (A017401 n).toNat

end

end A217218.P1330784543100849563

noncomputable section

/-- A217218: Trajectory of 44 under the map k -> A006368(k).

Offset 1, canonical program `A217218.P1330784543100849563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A217218 (n : ℕ) : ℤ :=
  A217218.P1330784543100849563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A217218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217254.P1291140988976231142

`round(A128930(n+1)/(n+1))`
-/

namespace A217254.P1291140988976231142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A128930 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A217254.P1291140988976231142

noncomputable section

/-- A217254: a(n) = round(primepi(n) * prime(n)/n).

Offset 1, canonical program `A217254.P1291140988976231142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217254 (n : ℕ) : ℤ :=
  A217254.P1291140988976231142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217445.P645570032554833675

`eq[1, or(A057427(n), A180017(n))]`
-/

namespace A217445.P645570032554833675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 n) (A180017 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217445.P645570032554833675

noncomputable section

/-- A217445: Numbers n such that n! has the same number of terminating zeros in bases 3 and 4.

Offset 1, canonical program `A217445.P645570032554833675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2702 terms. -/
def A217445 (n : ℕ) : ℤ :=
  (A217445.P645570032554833675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2702 terms. -/
def A217445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217477.P11172635933459327032

`(A004277(n)+2)*A168491(n)`
-/

namespace A217477.P11172635933459327032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n + 2) * A168491 n

end

end A217477.P11172635933459327032

noncomputable section

/-- A217477: Z-sequence for the Riordan triangle A111125.

Offset 0, canonical program `A217477.P11172635933459327032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A217477 (n : ℕ) : ℤ :=
  A217477.P11172635933459327032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A217477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217526.P4421922415180328638

`A168049(n)-A123108(n)`
-/

namespace A217526.P4421922415180328638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n - A123108 n

end

end A217526.P4421922415180328638

noncomputable section

/-- A217526: From the enumeration of involutions avoiding the pattern 4321.

Offset 0, canonical program `A217526.P4421922415180328638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A217526 (n : ℕ) : ℤ :=
  A217526.P4421922415180328638.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A217526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217622.P12949597402063927546

`A006450(2*(n+1))`
-/

namespace A217622.P12949597402063927546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (2 * (n + 1))

end

end A217622.P12949597402063927546

noncomputable section

/-- A217622: Prime(prime(2*n)).

Offset 1, canonical program `A217622.P12949597402063927546`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217622 (n : ℕ) : ℤ :=
  A217622.P12949597402063927546.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217622.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217623.P16926536028161874528

`A006450((n+1)²)`
-/

namespace A217623.P16926536028161874528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 ((n + 1) ^ 2)

end

end A217623.P16926536028161874528

noncomputable section

/-- A217623: a(n) = prime(prime(n^2)).

Offset 1, canonical program `A217623.P16926536028161874528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A217623 (n : ℕ) : ℤ :=
  A217623.P16926536028161874528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A217623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217624.P7503922285772767855

`A006450(3*(n+1))`
-/

namespace A217624.P7503922285772767855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (3 * (n + 1))

end

end A217624.P7503922285772767855

noncomputable section

/-- A217624: Prime(prime(3*n)).

Offset 1, canonical program `A217624.P7503922285772767855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217624 (n : ℕ) : ℤ :=
  A217624.P7503922285772767855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217656.P10697064785089551026

`∩[A140687(n+1), A141975(n+1)]`
-/

namespace A217656.P10697064785089551026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P10697064785089551026

noncomputable section

/-- A217656: Primes p such that p = 361 + 420*k for some k.

Offset 1, canonical program `A217656.P10697064785089551026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1233 terms. -/
def A217656 (n : ℕ) : ℤ :=
  (A217656.P10697064785089551026.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1233 terms. -/
def A217656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217694.P620674075960763506

`A129361(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A217694.P620674075960763506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A129361 n - a (n - 2)

end

end A217694.P620674075960763506

noncomputable section

/-- A217694: Number of n-variations of the set {1,2,...,n+1} satisfying p(i)-i in {-2,0,2}, i=1..n (an n-variation of the set N_{n+s} = {1,2,...,n+s} is any 1-to-1 mapping p from the set N_n = {1,2,...,n} into N_{n+s} = {1,2,...,n+s}).

Offset 0, canonical program `A217694.P620674075960763506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A217694 (n : ℕ) : ℤ :=
  A217694.P620674075960763506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A217694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217946.P4119184011466137260

`A000245(n+1)+record[A232500(n+5)]`
-/

namespace A217946.P4119184011466137260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232500 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217946.P4119184011466137260

noncomputable section

/-- A217946: a(n) = 4^n*(n+1)*(8*n^2+32*n+33)*P(3/2,n)/(3*P(4,n)) where P(a,n) is the Pochhammer rising factorial.

Offset 0, canonical program `A217946.P4119184011466137260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A217946 (n : ℕ) : ℤ :=
  A217946.P4119184011466137260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A217946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218257.P16517323974653770966

`A059909((n+1)²)`
-/

namespace A218257.P16517323974653770966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059909 ((n + 1) ^ 2)

end

end A218257.P16517323974653770966

noncomputable section

/-- A218257: a(n) = |{m : multiplicative order of n mod m = 8}|.

Offset 1, canonical program `A218257.P16517323974653770966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A218257 (n : ℕ) : ℤ :=
  A218257.P16517323974653770966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A218257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218381.P3083862309969667451

`lt[0, A211996(n+1)]+1`
-/

namespace A218381.P3083862309969667451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A218381.P3083862309969667451

noncomputable section

/-- A218381: Numbers k = i*j such that i+j is a square.

Offset 1, canonical program `A218381.P3083862309969667451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 977 terms. -/
def A218381 (n : ℕ) : ℤ :=
  (A218381.P3083862309969667451.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 977 terms. -/
def A218381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218444.P10091015155135104589

`∑[A001876(n)]`
-/

namespace A218444.P10091015155135104589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218444.P10091015155135104589

noncomputable section

/-- A218444: a(n) = Sum_{k>=0} floor(n/(5*k + 1)).

Offset 0, canonical program `A218444.P10091015155135104589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218444 (n : ℕ) : ℤ :=
  A218444.P10091015155135104589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218445.P17304662535675583263

`∑[A001877(n)]`
-/

namespace A218445.P17304662535675583263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218445.P17304662535675583263

noncomputable section

/-- A218445: a(n) = Sum_{k>=0} floor(n/(5*k + 2)).

Offset 0, canonical program `A218445.P17304662535675583263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218445 (n : ℕ) : ℤ :=
  A218445.P17304662535675583263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218446.P16595335050583582027

`∑[A001878(n)]`
-/

namespace A218446.P16595335050583582027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218446.P16595335050583582027

noncomputable section

/-- A218446: a(n) = Sum_{k>=0} floor(n/(5*k + 3)).

Offset 0, canonical program `A218446.P16595335050583582027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218446 (n : ℕ) : ℤ :=
  A218446.P16595335050583582027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218461.P9982432580826872899

`floor(A006450(n+1)/A000040(n+1))`
-/

namespace A218461.P9982432580826872899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006450 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A218461.P9982432580826872899

noncomputable section

/-- A218461: Floor( prime(prime(n))/ prime(n) ).

Offset 1, canonical program `A218461.P9982432580826872899`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A218461 (n : ℕ) : ℤ :=
  A218461.P9982432580826872899.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A218461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219660.P14458110715348428642

`A000120(A051122(n))`
-/

namespace A219660.P14458110715348428642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A051122 n).toNat

end

end A219660.P14458110715348428642

noncomputable section

/-- A219660: a(n) = number of bit-positions where Fibonacci numbers F(n) and F(n+1) contain both an 1-bit in their binary representation.

Offset 0, canonical program `A219660.P14458110715348428642`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051122, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219660 (n : ℕ) : ℤ :=
  A219660.P14458110715348428642.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051122, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A220098.P14603736137621403724

`A053615(A128217(n+2))`
-/

namespace A220098.P14603736137621403724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A128217 (n + 2)).toNat

end

end A220098.P14603736137621403724

noncomputable section

/-- A220098: Manhattan distances between 2n and 1 in the double spiral with positive integers and 1 at the center.

Offset 1, canonical program `A220098.P14603736137621403724`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220098 (n : ℕ) : ℤ :=
  A220098.P14603736137621403724.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A220101.P13755942363765172959

`n*A000245(n)`
-/

namespace A220101.P13755942363765172959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000245 n

end

end A220101.P13755942363765172959

noncomputable section

/-- A220101: Number of ordered set partitions of {1,...,n} into n-1 blocks avoiding the pattern 123.

Offset 1, canonical program `A220101.P13755942363765172959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A220101 (n : ℕ) : ℤ :=
  A220101.P13755942363765172959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A220101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220589.P547849876058364495

`2*A002026(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A220589.P547849876058364495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A002026 (n + 1) - a (n - 1)

end

end A220589.P547849876058364495

noncomputable section

/-- A220589: Number of simple skew-merged permutations with n elements.

Offset 4, canonical program `A220589.P547849876058364495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A220589 (n : ℕ) : ℤ :=
  A220589.P547849876058364495.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A220589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220768.P15389986771423682204

`∑{d}[A004277(n), A000045(A158416(#))]`
-/

namespace A220768.P15389986771423682204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000045 (A158416 d).toNat

end

end A220768.P15389986771423682204

noncomputable section

/-- A220768: Number of tilings of a 2 X n rectangle using integer-sided rectangular tiles of equal area.

Offset 0, canonical program `A220768.P15389986771423682204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A220768 (n : ℕ) : ℤ :=
  A220768.P15389986771423682204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A220768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220838.P14620897940068102218

`∑[A110656(n)-A002817(n+1)%2]`
-/

namespace A220838.P14620897940068102218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 n - Int.tmod (A002817 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220838.P14620897940068102218

noncomputable section

/-- A220838: Tropical version of Somos-4 sequence A006720.

Offset 1, canonical program `A220838.P14620897940068102218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220838 (n : ℕ) : ℤ :=
  A220838.P14620897940068102218.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220889.P18153767106500405500

`∑[A220888(n)]-A000332(n)`
-/

namespace A220889.P18153767106500405500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000332 n

end

end A220889.P18153767106500405500

noncomputable section

/-- A220889: a(n) = F(n+8) - (1/6)*(n^4-2*n^3+26*n^2+47*n+132) where F(i) = Fibonacci numbers (A000045).

Offset 1, canonical program `A220889.P18153767106500405500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A220889 (n : ℕ) : ℤ :=
  A220889.P18153767106500405500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A220889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220902.P9397525949046414963

`A099376(n)+A005807(n)`
-/

namespace A220902.P9397525949046414963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A005807 n

end

end A220902.P9397525949046414963

noncomputable section

/-- A220902: a(n) = Catalan(n) - A000245(n-2).

Offset 2, canonical program `A220902.P9397525949046414963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A220902 (n : ℕ) : ℤ :=
  A220902.P9397525949046414963.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A220902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221264.P4034302150785658829

`lt[A005094(n+1), 0]+1`
-/

namespace A221264.P4034302150785658829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A221264.P4034302150785658829

noncomputable section

/-- A221264: Numbers having fewer distinct prime factors of form 4*k+1 than of 4*k+3.

Offset 1, canonical program `A221264.P4034302150785658829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4562 terms. -/
def A221264 (n : ℕ) : ℤ :=
  (A221264.P4034302150785658829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4562 terms. -/
def A221264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221265.P6244898558375044085

`lt[0, A005094(n+2)]+2`
-/

namespace A221265.P6244898558375044085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A221265.P6244898558375044085

noncomputable section

/-- A221265: Numbers having more distinct prime factors of form 4*k+1 than of 4*k+3.

Offset 1, canonical program `A221265.P6244898558375044085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A221265 (n : ℕ) : ℤ :=
  (A221265.P6244898558375044085.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A221265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222030.P10406464568820635234

`∪[∑[2*n], A089237(n+1)]`
-/

namespace A222030.P10406464568820635234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A222030.P10406464568820635234

noncomputable section

/-- A222030: Primes and quarter-squares.

Offset 0, canonical program `A222030.P10406464568820635234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222030 (n : ℕ) : ℤ :=
  (A222030.P10406464568820635234.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222559.P7406129077156502269

`A047905(n+1)-∏[A093178(n)]`
-/

namespace A222559.P7406129077156502269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047905 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A222559.P7406129077156502269

noncomputable section

/-- A222559: a(0) = 0. If n is odd, a(n) = a(n-1) * n, otherwise a(n) = a(n-1) + n.

Offset 0, canonical program `A222559.P7406129077156502269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A222559 (n : ℕ) : ℤ :=
  A222559.P7406129077156502269.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A222559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222993.P8408352810680705070

`Δ[A112502(n)]`
-/

namespace A222993.P8408352810680705070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222993.P8408352810680705070

noncomputable section

/-- A222993: Number of n X 2 0..2 arrays with successive rows and columns fitting to straight lines with nondecreasing slope, with a single point array taken as having zero slope.

Offset 1, canonical program `A222993.P8408352810680705070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A222993 (n : ℕ) : ℤ :=
  A222993.P8408352810680705070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A222993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A223035.P17125103435558196622

`p?[A175396(n+1)]`
-/

namespace A223035.P17125103435558196622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A223035.P17125103435558196622

noncomputable section

/-- A223035: Prime numbers whose digits squared sum to a square.

Offset 1, canonical program `A223035.P17125103435558196622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 901 terms. -/
def A223035 (n : ℕ) : ℤ :=
  A223035.P17125103435558196622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 901 terms. -/
def A223035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A223756.P3397043722478657849

`A223659(n+1)²`
-/

namespace A223756.P3397043722478657849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223659 (n + 1) ^ 2

end

end A223756.P3397043722478657849

noncomputable section

/-- A223756: Number of n X 2 0..3 arrays with rows, antidiagonals and columns unimodal.

Offset 1, canonical program `A223756.P3397043722478657849`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A223659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A223756 (n : ℕ) : ℤ :=
  A223756.P3397043722478657849.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A223659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A223756.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152530.P2848620170226851519

`A152532(n+1)+A065091(n+1)`
-/

namespace A152530.P2848620170226851519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152532 (n + 1) + A065091 (n + 1)

end

end A152530.P2848620170226851519

noncomputable section

/-- A152530: a(n) = p(n)*p(n+2)-p(n+1), where p(n) is the n-th prime.

Offset 1, canonical program `A152530.P2848620170226851519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152530 (n : ℕ) : ℤ :=
  A152530.P2848620170226851519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152763.P4357628965309988966

`A000005(A000108(n))`
-/

namespace A152763.P4357628965309988966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000108 n).toNat

end

end A152763.P4357628965309988966

noncomputable section

/-- A152763: Number of divisors of Catalan number A000108(n).

Offset 0, canonical program `A152763.P4357628965309988966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152763 (n : ℕ) : ℤ :=
  A152763.P4357628965309988966.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152911.P11080031176988882643

`record[A000203(n+1)-(A000005(n+1)+n)]`
-/

namespace A152911.P11080031176988882643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A000005 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152911.P11080031176988882643

noncomputable section

/-- A152911: Records in A152770.

Offset 1, canonical program `A152911.P11080031176988882643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A152911 (n : ℕ) : ℤ :=
  A152911.P11080031176988882643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A152911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152983.P16244814053645438890

`A000005(A001006(n))`
-/

namespace A152983.P16244814053645438890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001006 n).toNat

end

end A152983.P16244814053645438890

noncomputable section

/-- A152983: Number of divisors of Motzkin number A001006(n).

Offset 0, canonical program `A152983.P16244814053645438890`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152983 (n : ℕ) : ℤ :=
  A152983.P16244814053645438890.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152983.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153264.P6535688015430088092

`comp[A127575(n+1)]`
-/

namespace A153264.P6535688015430088092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153264.P6535688015430088092

noncomputable section

/-- A153264: Numbers n such that 16*n+15 is not prime.

Offset 1, canonical program `A153264.P6535688015430088092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153264 (n : ℕ) : ℤ :=
  (A153264.P6535688015430088092.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153380.P4322513371660982384

`comp[A102700(n+1)]`
-/

namespace A153380.P4322513371660982384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153380.P4322513371660982384

noncomputable section

/-- A153380: Numbers k such that 10*k+9 is not prime.

Offset 1, canonical program `A153380.P4322513371660982384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153380 (n : ℕ) : ℤ :=
  (A153380.P4322513371660982384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153485.P1399869421749084233

`A000217(n)-A004125(n+1)`
-/

namespace A153485.P1399869421749084233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A004125 (n + 1)

end

end A153485.P1399869421749084233

noncomputable section

/-- A153485: Sum of all aliquot divisors of all positive integers <= n.

Offset 1, canonical program `A153485.P1399869421749084233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153485 (n : ℕ) : ℤ :=
  A153485.P1399869421749084233.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153485.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A154510.P17255303162839916409

`∩[A154515(n+1), A264823(n+1)]`
-/

namespace A154510.P17255303162839916409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154510.P17255303162839916409

noncomputable section

/-- A154510: Primes of the form 648*k^2 + 72*k + 1.

Offset 1, canonical program `A154510.P17255303162839916409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1102 terms. -/
def A154510 (n : ℕ) : ℤ :=
  (A154510.P17255303162839916409.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1102 terms. -/
def A154510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154511.P5616005869555878040

`∩[A154514(n+1), A264823(n+1)]`
-/

namespace A154511.P5616005869555878040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154511.P5616005869555878040

noncomputable section

/-- A154511: Primes of the form 648*k^2 - 72*k + 1.

Offset 1, canonical program `A154511.P5616005869555878040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. -/
def A154511 (n : ℕ) : ℤ :=
  (A154511.P5616005869555878040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. -/
def A154511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154610.P1170947909514871666

`floor(A102732(n+1)/13)`
-/

namespace A154610.P1170947909514871666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A102732 (n + 1) : ℚ) / 13⌋

end

end A154610.P1170947909514871666

noncomputable section

/-- A154610: Numbers n such that 13n + 5 is prime.

Offset 1, canonical program `A154610.P1170947909514871666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154610 (n : ℕ) : ℤ :=
  A154610.P1170947909514871666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155071.P6054164492315748015

`p?[A294601(n+2)+1]`
-/

namespace A155071.P6054164492315748015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294601 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155071.P6054164492315748015

noncomputable section

/-- A155071: Primes with two odd digits.

Offset 1, canonical program `A155071.P6054164492315748015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155071 (n : ℕ) : ℤ :=
  A155071.P6054164492315748015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155483.P2954066192730330164

`A000040(A043489(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155483.P2954066192730330164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A043489 (n + 2)).toNat

end

end A155483.P2954066192730330164

noncomputable section

/-- A155483: a(n)=A000040(A043489(n+1)).

Offset 1, canonical program `A155483.P2954066192730330164`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A043489, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A155483 (n : ℕ) : ℤ :=
  A155483.P2954066192730330164.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A043489, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A155483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A155770.P11294526074375665109

`A155769(A155771(n+1))`
-/

namespace A155770.P11294526074375665109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 (A155771 (n + 1)).toNat

end

end A155770.P11294526074375665109

noncomputable section

/-- A155770: Primes of form: 2*n^2+2*n-41.

Offset 1, canonical program `A155770.P11294526074375665109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155770 (n : ℕ) : ℤ :=
  A155770.P11294526074375665109.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155937.P8364349448118124700

`floor(A092178(n+1)/13)`
-/

namespace A155937.P8364349448118124700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092178 (n + 1) : ℚ) / 13⌋

end

end A155937.P8364349448118124700

noncomputable section

/-- A155937: Numbers n such that 13*n + 8 is a prime.

Offset 1, canonical program `A155937.P8364349448118124700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155937 (n : ℕ) : ℤ :=
  A155937.P8364349448118124700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155945.P7413010090445618353

`comp[A139529(n+1)]`
-/

namespace A155945.P7413010090445618353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155945.P7413010090445618353

noncomputable section

/-- A155945: Numbers n such that 24*n + 13 is not prime.

Offset 1, canonical program `A155945.P7413010090445618353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155945 (n : ℕ) : ℤ :=
  (A155945.P7413010090445618353.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156688.P15753806741140365688

`A000005(8*(n+1)²)/2`
-/

namespace A156688.P15753806741140365688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (8 * (n + 1) ^ 2) : ℚ) / 2

end

end A156688.P15753806741140365688

noncomputable section

/-- A156688: The total number of distinct Pythagorean triples with an area numerically equal to n times their perimeters.

Offset 1, canonical program `A156688.P15753806741140365688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156688 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156688.P15753806741140365688.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156688.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157000.P11256171497413587724

`A011973(A049068(n+1))+A011973(n)`
-/

namespace A157000.P11256171497413587724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A049068 (n + 1)).toNat + A011973 n

end

end A157000.P11256171497413587724

noncomputable section

/-- A157000: Triangle T(n,k) = (n/k)*binomial(n-k-1, k-1) read by rows.

Offset 2, canonical program `A157000.P11256171497413587724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A157000 (n : ℕ) : ℤ :=
  A157000.P11256171497413587724.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A157000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157079.P4834609474634695311

`A157509(A053742(n)+17)`
-/

namespace A157079.P4834609474634695311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157509 (A053742 n + 17).toNat

end

end A157079.P4834609474634695311

noncomputable section

/-- A157079: a(n) = 32805000*n^2 - 10513800*n + 842401.

Offset 1, canonical program `A157079.P4834609474634695311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A157079 (n : ℕ) : ℤ :=
  A157079.P4834609474634695311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A157079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157735.P9784472153742863353

`round(A157736(n+1)/sqrt(A157734(n+1)))`
-/

namespace A157735.P9784472153742863353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157736 (n + 1) : ℝ) / Real.sqrt (A157734 (n + 1) : ℝ))

end

end A157735.P9784472153742863353

noncomputable section

/-- A157735: a(n) = 18522*n - 8274.

Offset 1, canonical program `A157735.P9784472153742863353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157735 (n : ℕ) : ℤ :=
  A157735.P9784472153742863353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157975.P11206613630434011016

`p?[A127575(n+1)]`
-/

namespace A157975.P11206613630434011016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157975.P11206613630434011016

noncomputable section

/-- A157975: Primes p such that 16*p + 15 is also prime.

Offset 1, canonical program `A157975.P11206613630434011016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1777 terms. -/
def A157975 (n : ℕ) : ℤ :=
  A157975.P11206613630434011016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1777 terms. -/
def A157975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157977.P1664850103235532340

`p?[A102700(n+1)-A014682(A105042(n+1))]`
-/

namespace A157977.P1664850103235532340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1) - A014682 (A105042 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157977.P1664850103235532340

noncomputable section

/-- A157977: Primes p such that 20*p + 19 is also prime.

Offset 1, canonical program `A157977.P1664850103235532340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A157977 (n : ℕ) : ℤ :=
  A157977.P1664850103235532340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A157977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158038.P9757458246362349300

`A333884(A000040(n+1))`
-/

namespace A158038.P9757458246362349300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A000040 (n + 1)).toNat

end

end A158038.P9757458246362349300

noncomputable section

/-- A158038: Difference between n-th prime and next cube.

Offset 1, canonical program `A158038.P9757458246362349300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A158038 (n : ℕ) : ℤ :=
  A158038.P9757458246362349300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A158038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158276.P14399586062103638570

`lt[1, A158275(n+1)]+1`
-/

namespace A158276.P14399586062103638570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A158276.P14399586062103638570

noncomputable section

/-- A158276: Numbers k such that sigma_1(k) does not divide sigma_2(k).

Offset 1, canonical program `A158276.P14399586062103638570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9825 terms. -/
def A158276 (n : ℕ) : ℤ :=
  (A158276.P14399586062103638570.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9825 terms. -/
def A158276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158387.P7105808994487481565

`(-1)^A000005(n+1)`
-/

namespace A158387.P7105808994487481565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A158387.P7105808994487481565

noncomputable section

/-- A158387: a(n) = -1 if n is a square, 1 if n is not a square.

Offset 1, canonical program `A158387.P7105808994487481565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158387 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A158387.P7105808994487481565.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158573.P7707022528032758565

`floor(A132231(n+1)/30)`
-/

namespace A158573.P7707022528032758565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132231 (n + 1) : ℚ) / 30⌋

end

end A158573.P7707022528032758565

noncomputable section

/-- A158573: Numbers k such that 30*k + 7 is prime.

Offset 1, canonical program `A158573.P7707022528032758565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132231, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158573 (n : ℕ) : ℤ :=
  A158573.P7707022528032758565.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132231, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158573.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158648.P12379688915653926394

`floor(A039949(n+1)/30)`
-/

namespace A158648.P12379688915653926394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039949 (n + 1) : ℚ) / 30⌋

end

end A158648.P12379688915653926394

noncomputable section

/-- A158648: Numbers n such that 30*n + 17 is prime.

Offset 1, canonical program `A158648.P12379688915653926394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158648 (n : ℕ) : ℤ :=
  A158648.P12379688915653926394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158648.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A159973.P17166764543627180430

`eq[0, A336040(n+1)]+1`
-/

namespace A159973.P17166764543627180430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A159973.P17166764543627180430

noncomputable section

/-- A159973: Non-refactorable numbers: number of divisors of n does not divide n.

Offset 1, canonical program `A159973.P17166764543627180430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159973 (n : ℕ) : ℤ :=
  (A159973.P17166764543627180430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159978.P8849055192198304781

`A013632(A000045(n+1))`
-/

namespace A159978.P8849055192198304781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A000045 (n + 1)).toNat

end

end A159978.P8849055192198304781

noncomputable section

/-- A159978: a(n) = (smallest prime > Fibonacci(n)) - Fibonacci(n).

Offset 1, canonical program `A159978.P8849055192198304781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A159978 (n : ℕ) : ℤ :=
  A159978.P8849055192198304781.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A159978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160097.P2922645543658032537

`A325765(n)+1-A049419(n+1)`
-/

namespace A160097.P2922645543658032537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n + (1 - A049419 (n + 1))

end

end A160097.P2922645543658032537

noncomputable section

/-- A160097: Number of non-exponential divisors of n.

Offset 1, canonical program `A160097.P2922645543658032537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160097 (n : ℕ) : ℤ :=
  A160097.P2922645543658032537.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160812.P12792635546813163810

`A161205(n+1)-A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160812.P12792635546813163810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (n + 1) - A000005 (n + 1)

end

end A160812.P12792635546813163810

noncomputable section

/-- A160812: a(n) = A161205(n)-A000005(n).

Offset 1, canonical program `A160812.P12792635546813163810`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160812 (n : ℕ) : ℤ :=
  A160812.P12792635546813163810.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160909.P12070970668350231880

`A180363(n+1)-1`
-/

namespace A160909.P12070970668350231880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180363 (n + 1) - 1

end

end A160909.P12070970668350231880

noncomputable section

/-- A160909: Row sums of triangle defined in A096539.

Offset 1, canonical program `A160909.P12070970668350231880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180363, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160909 (n : ℕ) : ℤ :=
  A160909.P12070970668350231880.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180363, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160909.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161660.P6730900686295854784

`1-(n+1)%A000005(a(n-1))+n` with `a(0)=1`
-/

namespace A161660.P6730900686295854784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.tmod (n + 1 : ℤ) (A000005 (a (n - 1)).toNat) + (n : ℤ)

end

end A161660.P6730900686295854784

noncomputable section

/-- A161660: a(1)=1; a(n) = largest multiple of {number of divisors of a(n-1)} that is <= n.

Offset 1, canonical program `A161660.P6730900686295854784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161660 (n : ℕ) : ℤ :=
  A161660.P6730900686295854784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161758.P18294308549773577487

`A175851(n+2)+3`
-/

namespace A161758.P18294308549773577487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 2) + 3

end

end A161758.P18294308549773577487

noncomputable section

/-- A161758: a(n)=n-p+1 where p is the maximal prime less than n-2.

Offset 5, canonical program `A161758.P18294308549773577487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161758 (n : ℕ) : ℤ :=
  A161758.P18294308549773577487.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162648.P16341361686892732013

`A079523(n+1)-1`
-/

namespace A162648.P16341361686892732013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1) - 1

end

end A162648.P16341361686892732013

noncomputable section

/-- A162648: Locations of patterns 1001 or 0110 in the Thue-Morse sequence A010060.

Offset 1, canonical program `A162648.P16341361686892732013`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162648 (n : ℕ) : ℤ :=
  A162648.P16341361686892732013.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162648.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162907.P12652388002457214541

`A000217(A000203(n+1))-A000217(A000005(n+1)-1)`
-/

namespace A162907.P12652388002457214541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000203 (n + 1)).toNat - A000217 (A000005 (n + 1) - 1).toNat

end

end A162907.P12652388002457214541

noncomputable section

/-- A162907: Sum of all numbers from tau(n) to sigma(n).

Offset 1, canonical program `A162907.P12652388002457214541`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162907 (n : ℕ) : ℤ :=
  A162907.P12652388002457214541.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162907.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162947.P2383251509124428934

`eq[7, C(7, A000005(n+1))]+1`
-/

namespace A162947.P2383251509124428934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 7 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A162947.P2383251509124428934

noncomputable section

/-- A162947: Numbers k such that the product of all divisors of k equals k^3.

Offset 1, canonical program `A162947.P2383251509124428934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162947 (n : ℕ) : ℤ :=
  (A162947.P2383251509124428934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163106.P14887341656446241983

`A051027(A000005(n+1))`
-/

namespace A163106.P14887341656446241983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A000005 (n + 1)).toNat

end

end A163106.P14887341656446241983

noncomputable section

/-- A163106: a(n) = sigma(sigma(tau(n))), where tau = number of divisors and sigma = sum of divisors.

Offset 1, canonical program `A163106.P14887341656446241983`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163106 (n : ℕ) : ℤ :=
  A163106.P14887341656446241983.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163106.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163163.P6994369131379745311

`A000005(n+1)+A001065(n+1)`
-/

namespace A163163.P6994369131379745311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A001065 (n + 1)

end

end A163163.P6994369131379745311

noncomputable section

/-- A163163: a(n) = sigma(n) + tau(n) - n.

Offset 1, canonical program `A163163.P6994369131379745311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163163 (n : ℕ) : ℤ :=
  A163163.P6994369131379745311.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163180.P13831125964064735918

`A000005(n+1)+A004125(n+1)`
-/

namespace A163180.P13831125964064735918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A004125 (n + 1)

end

end A163180.P13831125964064735918

noncomputable section

/-- A163180: a(n) = tau(n) + Sum_{k=1..n} (n mod k).

Offset 1, canonical program `A163180.P13831125964064735918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A004125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163180 (n : ℕ) : ℤ :=
  A163180.P13831125964064735918.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A004125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163180.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163299.P11401659871366047700

`A000005(n+1)^A029837(n+1)`
-/

namespace A163299.P11401659871366047700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A029837 (n + 1) : ℤ)

end

end A163299.P11401659871366047700

noncomputable section

/-- A163299: a(n) = (the number of divisors of n)^(the binary order of n).

Offset 1, canonical program `A163299.P11401659871366047700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163299 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163299.P11401659871366047700.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163366.P615774482122360828

`A260611(n+1)²%A000040(n+1)`
-/

namespace A163366.P615774482122360828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260611 (n + 1) ^ 2) (A000040 (n + 1))

end

end A163366.P615774482122360828

noncomputable section

/-- A163366: a(n) = (-1)^floor((prime(n)+2)/2) mod prime(n).

Offset 1, canonical program `A163366.P615774482122360828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163366 (n : ℕ) : ℤ :=
  A163366.P615774482122360828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163378.P17396357428840585755

`A062402(A000005(n+1))`
-/

namespace A163378.P17396357428840585755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (A000005 (n + 1)).toNat

end

end A163378.P17396357428840585755

noncomputable section

/-- A163378: a(n) = sigma(phi(tau(n))).

Offset 1, canonical program `A163378.P17396357428840585755`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A062402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163378 (n : ℕ) : ℤ :=
  A163378.P17396357428840585755.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A062402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163515.P10456658372542648136

`∑{d}[A018252(n+2), A297109(#)]`
-/

namespace A163515.P10456658372542648136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297109 d

end

end A163515.P10456658372542648136

noncomputable section

/-- A163515: If n-th composite is the product of k1-th prime, k2-th prime, ..., kr-th prime then set a(n) = k1 + k2 + ... + kr.

Offset 1, canonical program `A163515.P10456658372542648136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A163515 (n : ℕ) : ℤ :=
  A163515.P10456658372542648136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A163515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163523.P17500706477665394313

`A000005(n+1)+A001221(n+1)`
-/

namespace A163523.P17500706477665394313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A001221 (n + 1)

end

end A163523.P17500706477665394313

noncomputable section

/-- A163523: a(n) = tau(n) + omega(n).

Offset 1, canonical program `A163523.P17500706477665394313`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163523 (n : ℕ) : ℤ :=
  A163523.P17500706477665394313.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163563.P13970058634026904744

`A001462(n+2)-1`
-/

namespace A163563.P13970058634026904744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 2) - 1

end

end A163563.P13970058634026904744

noncomputable section

/-- A163563: n occurs 1+a(n) times starting with a(1)=1.

Offset 1, canonical program `A163563.P13970058634026904744`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001462, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163563 (n : ℕ) : ℤ :=
  A163563.P13970058634026904744.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001462, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163563.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164042.P10806656503751704319

`p?[2*A143827(n+1)-A057427(n)]`
-/

namespace A164042.P10806656503751704319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143827 (n + 1) - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164042.P10806656503751704319

noncomputable section

/-- A164042: Primes p such that 2*p^2+4*p+1 is also prime.

Offset 1, canonical program `A164042.P10806656503751704319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A164042 (n : ℕ) : ℤ :=
  A164042.P10806656503751704319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A164042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164474.P915032775425265953

`A164457(n+5)-(A286938(n+1)+A286938(n+2))`
-/

namespace A164474.P915032775425265953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164457 (n + 5) - (A286938 (n + 1) + A286938 (n + 2))

end

end A164474.P915032775425265953

noncomputable section

/-- A164474: Number of binary strings of length n with no substrings equal to 0001 0101 or 1100.

Offset 4, canonical program `A164474.P915032775425265953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. -/
def A164474 (n : ℕ) : ℤ :=
  A164474.P915032775425265953.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. -/
def A164474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164569.P6473822451751528247

`p?[floor(A141855(n+1)/11)]`
-/

namespace A164569.P6473822451751528247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141855 (n + 1) : ℚ) / 11⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164569.P6473822451751528247

noncomputable section

/-- A164569: Primes p such that 11*p+8 are prime numbers.

Offset 1, canonical program `A164569.P6473822451751528247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1245 terms. -/
def A164569 (n : ℕ) : ℤ :=
  A164569.P6473822451751528247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1245 terms. -/
def A164569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164865.P8354172017210548301

`A076290(A102467(n+2))`
-/

namespace A164865.P8354172017210548301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (A102467 (n + 2)).toNat

end

end A164865.P8354172017210548301

noncomputable section

/-- A164865: Sum of the distinct semiprime divisors of the n-th number with two or more distinct semiprime divisors.

Offset 1, canonical program `A164865.P8354172017210548301`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076290, A102467, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A164865 (n : ℕ) : ℤ :=
  A164865.P8354172017210548301.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076290, A102467, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A164865.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165256.P10136050871535345251

`eq[A001221(n+1), A055642(n+1)]+1`
-/

namespace A165256.P10136050871535345251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A165256.P10136050871535345251

noncomputable section

/-- A165256: Numbers whose number of distinct prime factors equals the number of digits in the number.

Offset 1, canonical program `A165256.P10136050871535345251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A165256 (n : ℕ) : ℤ :=
  (A165256.P10136050871535345251.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A165256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165319.P7856077442135454805

`p?[n*A000120(A000005(n+1))]`
-/

namespace A165319.P7856077442135454805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000120 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165319.P7856077442135454805

noncomputable section

/-- A165319: Primes p where the number of divisors of p+1 is a power of 2.

Offset 1, canonical program `A165319.P7856077442135454805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4777 terms. -/
def A165319 (n : ℕ) : ℤ :=
  A165319.P7856077442135454805.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4777 terms. -/
def A165319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165957.P16780599109594843717

`A007954(A018252(n+1))`
-/

namespace A165957.P16780599109594843717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A018252 (n + 1)).toNat

end

end A165957.P16780599109594843717

noncomputable section

/-- A165957: Product of the digits of the n-th nonprime.

Offset 1, canonical program `A165957.P16780599109594843717`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A165957 (n : ℕ) : ℤ :=
  A165957.P16780599109594843717.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A165957.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166248.P1846598591514235586

`abs(n+1-A004125(n+1))`
-/

namespace A166248.P1846598591514235586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A004125 (n + 1)|

end

end A166248.P1846598591514235586

noncomputable section

/-- A166248: a(n) is the absolute value of n minus sum of all the remainders modulo the numbers below n.

Offset 1, canonical program `A166248.P1846598591514235586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166248 (n : ℕ) : ℤ :=
  A166248.P1846598591514235586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166563.P13646360930598565579

`comp[A167055(n+1)]`
-/

namespace A166563.P13646360930598565579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166563.P13646360930598565579

noncomputable section

/-- A166563: Numbers n such that 12*n+5 is not prime.

Offset 1, canonical program `A166563.P13646360930598565579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166563 (n : ℕ) : ℤ :=
  (A166563.P13646360930598565579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166569.P9203095429192079381

`comp[A167056(n+1)]`
-/

namespace A166569.P9203095429192079381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166569.P9203095429192079381

noncomputable section

/-- A166569: Numbers n such that 12*n+7 is not prime.

Offset 1, canonical program `A166569.P9203095429192079381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166569 (n : ℕ) : ℤ :=
  (A166569.P9203095429192079381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166777.P11006328985908807965

`A166815(n+1)+A166838(n+1)+C(n, 3)`
-/

namespace A166777.P11006328985908807965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166815 (n + 1) + (A166838 (n + 1) + (Nat.choose n 3 : ℤ))

end

end A166777.P11006328985908807965

noncomputable section

/-- A166777: Number of nX2 1..4 arrays containing at least one of each value, all equal values connected, and rows considered as a single number in nondecreasing order.

Offset 1, canonical program `A166777.P11006328985908807965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166777 (n : ℕ) : ℤ :=
  A166777.P11006328985908807965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166801.P8919905892571881149

`A166819(n+1)+A166776(n+1)`
-/

namespace A166801.P8919905892571881149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166819 (n + 1) + A166776 (n + 1)

end

end A166801.P8919905892571881149

noncomputable section

/-- A166801: Number of nX3 1..3 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

Offset 1, canonical program `A166801.P8919905892571881149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166801 (n : ℕ) : ℤ :=
  A166801.P8919905892571881149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166826.P2968407093757897724

`A166838(n+1)+C(n, 3)`
-/

namespace A166826.P2968407093757897724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166838 (n + 1) + (Nat.choose n 3 : ℤ)

end

end A166826.P2968407093757897724

noncomputable section

/-- A166826: Number of n X 2 1..4 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nonincreasing order.

Offset 1, canonical program `A166826.P2968407093757897724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166826 (n : ℕ) : ℤ :=
  A166826.P2968407093757897724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167412.P9290723101573142584

`p?[(n+1)*(A000005(A003132(n+1)+1)-1)]`
-/

namespace A167412.P9290723101573142584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000005 (A003132 (n + 1) + 1).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167412.P9290723101573142584

noncomputable section

/-- A167412: Primes p such that sum of (digits^2) + 1 is prime.

Offset 1, canonical program `A167412.P9290723101573142584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. -/
def A167412 (n : ℕ) : ℤ :=
  A167412.P9290723101573142584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. -/
def A167412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167705.P2702715300198025274

`lt[5, A175851(n+2)]`
-/

namespace A167705.P2702715300198025274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167705.P2702715300198025274

noncomputable section

/-- A167705: Composite numbers having four composite nearest neighbors.

Offset 1, canonical program `A167705.P2702715300198025274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167705 (n : ℕ) : ℤ :=
  (A167705.P2702715300198025274.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167776.P18219303921041330074

`lt[7, A175851(n+3)]`
-/

namespace A167776.P18219303921041330074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167776.P18219303921041330074

noncomputable section

/-- A167776: Composite numbers having six composite nearest-neighbors.

Offset 1, canonical program `A167776.P18219303921041330074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167776 (n : ℕ) : ℤ :=
  (A167776.P18219303921041330074.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168138.P8220877735913659820

`A000045(n+2)^A000005(n+1)`
-/

namespace A168138.P8220877735913659820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A168138.P8220877735913659820

noncomputable section

/-- A168138: a(n) = Fibonacci(n+1)^tau(n).

Offset 1, canonical program `A168138.P8220877735913659820`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168138 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A168138.P8220877735913659820.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168138.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168580.P4157713427980173575

`∑[A135732(n+1)-2]+2`
-/

namespace A168580.P4157713427980173575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A168580.P4157713427980173575

noncomputable section

/-- A168580: a(n) = (n-th prime > 3) minus 3*n.

Offset 1, canonical program `A168580.P4157713427980173575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168580 (n : ℕ) : ℤ :=
  A168580.P4157713427980173575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170804.P14400445769344292584

`A006899(n)+a(n-1)` with `a(0)=1`
-/

namespace A170804.P14400445769344292584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006899 n + a (n - 1)

end

end A170804.P14400445769344292584

noncomputable section

/-- A170804: Partial sums of (A006899, prefixed by a 1).

Offset 1, canonical program `A170804.P14400445769344292584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 540 terms. -/
def A170804 (n : ℕ) : ℤ :=
  A170804.P14400445769344292584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 540 terms. -/
def A170804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170805.P803000743788282295

`A006899(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A170805.P803000743788282295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006899 (n - 1) + a (n - 1)

end

end A170805.P803000743788282295

noncomputable section

/-- A170805: a(n) = A170803(n-1) + 2, with a(0) = 1, a(1) = 2.

Offset 0, canonical program `A170805.P803000743788282295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A170805 (n : ℕ) : ℤ :=
  A170805.P803000743788282295.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A170805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170991.P6823033548944511429

`2*A126858(n+2)`
-/

namespace A170991.P6823033548944511429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126858 (n + 2)

end

end A170991.P6823033548944511429

noncomputable section

/-- A170991: Number of genus 2, degree n, simply ramified covers of an elliptic curve.

Offset 2, canonical program `A170991.P6823033548944511429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 990 terms. -/
def A170991 (n : ℕ) : ℤ :=
  A170991.P6823033548944511429.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 990 terms. -/
def A170991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171070.P13316125912663666615

`A178482(Δ[n²])`
-/

namespace A171070.P13316125912663666615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A171070.P13316125912663666615

noncomputable section

/-- A171070: A bisection of A178482.

Offset 1, canonical program `A171070.P13316125912663666615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A171070 (n : ℕ) : ℤ :=
  A171070.P13316125912663666615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A171070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171157.P8672816315949041848

`A001221(n+1)-A171182(n+1)`
-/

namespace A171157.P8672816315949041848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A171182 (n + 1)

end

end A171157.P8672816315949041848

noncomputable section

/-- A171157: Number of distinct primes > 3 that divide n.

Offset 1, canonical program `A171157.P8672816315949041848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171157 (n : ℕ) : ℤ :=
  A171157.P8672816315949041848.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171157.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171228.P4419088175126916163

`n^A013632(n)`
-/

namespace A171228.P4419088175126916163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A013632 n : ℤ)

end

end A171228.P4419088175126916163

noncomputable section

/-- A171228: n^(p-n) where p is smallest prime > n.

Offset 0, canonical program `A171228.P4419088175126916163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1327 terms. -/
def A171228 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A171228.P4419088175126916163.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1327 terms. -/
def A171228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171240.P10536427391965387438

`(n+1)^A013632(n+1)+A013632(n+1)^(n+1)`
-/

namespace A171240.P10536427391965387438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A013632 (n + 1) : ℤ) + (A013632 (n + 1) ^ (n + 1) : ℚ)

end

end A171240.P10536427391965387438

noncomputable section

/-- A171240: a(n) = n^d+d^n where d = A013632(n) is the distance to the next prime.

Offset 1, canonical program `A171240.P10536427391965387438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A171240 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A171240.P10536427391965387438.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A171240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171784.P11142179382414544300

`A000005(6*A014973(n+4))`
-/

namespace A171784.P11142179382414544300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * A014973 (n + 4)).toNat

end

end A171784.P11142179382414544300

noncomputable section

/-- A171784: Fourth smallest divisor of smallest number having exactly n divisors.

Offset 4, canonical program `A171784.P11142179382414544300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A171784 (n : ℕ) : ℤ :=
  A171784.P11142179382414544300.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A171784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171857.P15441258118698206598

`Δ[A171856(n+1)/2]`
-/

namespace A171857.P15441258118698206598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171856 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171857.P15441258118698206598

noncomputable section

/-- A171857: Number of n-step up-side self-avoiding walks on the lattice strip {0,1,2} x Z (up-side means that the walks move up and sideways but not down).

Offset 0, canonical program `A171857.P15441258118698206598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A171857 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A171857.P15441258118698206598.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A171857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171899.P7149812686449934114

`(Δ[char[A216345(n+1)]]+2)%(n+1)`
-/

namespace A171899.P7149812686449934114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2) (n + 1 : ℤ)

end

end A171899.P7149812686449934114

noncomputable section

/-- A171899: Backwards van Eck transform of A000002.

Offset 1, canonical program `A171899.P7149812686449934114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A171899 (n : ℕ) : ℤ :=
  A171899.P7149812686449934114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A171899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172056.P9937115509810461680

`p?[lt[8, A175851(2*n+3)]]`
-/

namespace A172056.P9937115509810461680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A172056.P9937115509810461680

noncomputable section

/-- A172056: Primes p such that 2*p+-1 and 2*p+-3 are all composites.

Offset 1, canonical program `A172056.P9937115509810461680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A172056 (n : ℕ) : ℤ :=
  (A172056.P9937115509810461680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A172056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173021.P684069692350449466

`∑[char[A173024(n+1)]]`
-/

namespace A173021.P684069692350449466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173024 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173021.P684069692350449466

noncomputable section

/-- A173021: Number of numbers <= n whose binary representation is without isolated ones or isolated double ones.

Offset 0, canonical program `A173021.P684069692350449466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173021 (n : ℕ) : ℤ :=
  (A173021.P684069692350449466.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173186.P1258675814604343579

`lt[A379971(n+1), 1]+1`
-/

namespace A173186.P1258675814604343579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379971 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A173186.P1258675814604343579

noncomputable section

/-- A173186: Numbers k such that k^2-1 is not squarefree.

Offset 1, canonical program `A173186.P1258675814604343579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173186 (n : ℕ) : ℤ :=
  (A173186.P1258675814604343579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173667.P5715354663828165158

`A324852((val(n+1, 10)+1)*∑{digits}[n, (#%2)!])`
-/

namespace A173667.P5715354663828165158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 ((SequenceMachineLib.valuation (n + 1) 10 + 1) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum)

end

end A173667.P5715354663828165158

noncomputable section

/-- A173667: Number of real zeros of the polynomial whose coefficients are the decimal expansion of n.

Offset 1, canonical program `A173667.P5715354663828165158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A173667 (n : ℕ) : ℤ :=
  A173667.P5715354663828165158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A173667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174917.P15119638385152416329

`p?[A023219(n+1)+2]-2`
-/

namespace A174917.P15119638385152416329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A174917.P15119638385152416329

noncomputable section

/-- A174917: Lesser of twin primes p1 such that p2+(p2^2-p1^2) is a prime number.

Offset 1, canonical program `A174917.P15119638385152416329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A174917 (n : ℕ) : ℤ :=
  A174917.P15119638385152416329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A174917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175144.P696110972913207213

`A000005(A006093(n+1))+A000005(A008864(n+1))`
-/

namespace A175144.P696110972913207213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006093 (n + 1)).toNat + A000005 (A008864 (n + 1)).toNat

end

end A175144.P696110972913207213

noncomputable section

/-- A175144: a(n) = d(p(n)-1) + d(p(n)+1), where p(n) is the n-th prime, and where d(m) is the number of divisors of m.

Offset 1, canonical program `A175144.P696110972913207213`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A006093, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175144 (n : ℕ) : ℤ :=
  A175144.P696110972913207213.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A006093, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175144.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175200.P5264052223094873416

`eq[0, A336387(n+1)]+1`
-/

namespace A175200.P5264052223094873416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175200.P5264052223094873416

noncomputable section

/-- A175200: Numbers k such that rad(k) divides sigma(k).

Offset 1, canonical program `A175200.P5264052223094873416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A175200 (n : ℕ) : ℤ :=
  (A175200.P5264052223094873416.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A175200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175304.P3358269145109640044

`eq[A000005(A000005(n+1)+n+1), A000005(n+1)]+1`
-/

namespace A175304.P3358269145109640044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175304.P3358269145109640044

noncomputable section

/-- A175304: A positive integer n is included if d(n+d(n)) = d(n), where d(n) is the number of divisors of n.

Offset 1, canonical program `A175304.P3358269145109640044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8941 terms. -/
def A175304 (n : ℕ) : ℤ :=
  (A175304.P3358269145109640044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8941 terms. -/
def A175304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175495.P2939561428549324534

`lt[n, A000079(A000005(n+1))]+1`
-/

namespace A175495.P2939561428549324534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A175495.P2939561428549324534

noncomputable section

/-- A175495: Positive integers k such that k < 2^d(k), where d(k) is the number of divisors of k.

Offset 1, canonical program `A175495.P2939561428549324534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175495 (n : ℕ) : ℤ :=
  (A175495.P2939561428549324534.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175990.P11720610328343319649

`A011973(A049068(n+2))-A011973(n+1)`
-/

namespace A175990.P11720610328343319649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A049068 (n + 2)).toNat - A011973 (n + 1)

end

end A175990.P11720610328343319649

noncomputable section

/-- A175990: Irregular triangle read by rows: t(n,m) = binomial(n-m-1,m+1) for 0 <= m <= floor((n-1)/2).

Offset 2, canonical program `A175990.P11720610328343319649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9800 terms. -/
def A175990 (n : ℕ) : ℤ :=
  A175990.P11720610328343319649.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9800 terms. -/
def A175990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176176.P17500551997501977256

`eq[A062173(n+1), A062175(n+1)]+1`
-/

namespace A176176.P17500551997501977256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062175 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A176176.P17500551997501977256

noncomputable section

/-- A176176: Numbers k such that 2^(k-1) == 4^(k-1) (mod k).

Offset 1, canonical program `A176176.P17500551997501977256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1278 terms. -/
def A176176 (n : ℕ) : ℤ :=
  (A176176.P17500551997501977256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1278 terms. -/
def A176176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176209.P9314758080330930000

`filter[A376357(n+1), A049240(#)]`
-/

namespace A176209.P9314758080330930000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A176209.P9314758080330930000

noncomputable section

/-- A176209: Numbers that can be greedily decomposed as a sum of two or more squares >= 4.

Offset 1, canonical program `A176209.P9314758080330930000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9826 terms. -/
def A176209 (n : ℕ) : ℤ :=
  A176209.P9314758080330930000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9826 terms. -/
def A176209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176615.P3860707824598876643

`∑[A320278(n+1)]`
-/

namespace A176615.P3860707824598876643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176615.P3860707824598876643

noncomputable section

/-- A176615: Number of edges in the graph on n vertices, labeled 1 to n, where two vertices are joined just if their labels sum to a perfect square.

Offset 1, canonical program `A176615.P3860707824598876643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176615 (n : ℕ) : ℤ :=
  A176615.P3860707824598876643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176797.P15933715331666775231

`A158274(eq[1, A158275(n+1)]+1)`
-/

namespace A176797.P15933715331666775231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A176797.P15933715331666775231

noncomputable section

/-- A176797: Antiharmonic means of divisors of antiharmonic numbers.

Offset 1, canonical program `A176797.P15933715331666775231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A176797 (n : ℕ) : ℤ :=
  A176797.P15933715331666775231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A176797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176902.P2034357475414807943

`p?[A323162(n+1)+2*n]`
-/

namespace A176902.P2034357475414807943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176902.P2034357475414807943

noncomputable section

/-- A176902: Primes p such that p-1 and p+1 are both non-semiprime.

Offset 1, canonical program `A176902.P2034357475414807943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176902 (n : ℕ) : ℤ :=
  A176902.P2034357475414807943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177024.P16288091499050602830

`eq[A000005(n+1), A062173(n+1)]+1`
-/

namespace A177024.P16288091499050602830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A177024.P16288091499050602830

noncomputable section

/-- A177024: Numbers k such that 2^(k-1) mod k = number of divisors of k.

Offset 1, canonical program `A177024.P16288091499050602830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1967 terms. -/
def A177024 (n : ℕ) : ℤ :=
  (A177024.P16288091499050602830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1967 terms. -/
def A177024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178551.P17050993605296381900

`p?[A043498(n+1)]`
-/

namespace A178551.P17050993605296381900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178551.P17050993605296381900

noncomputable section

/-- A178551: Primes with exactly two 2's.

Offset 1, canonical program `A178551.P17050993605296381900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 648 terms. -/
def A178551 (n : ℕ) : ℤ :=
  A178551.P17050993605296381900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 648 terms. -/
def A178551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178739.P3877142655483989971

`filter[A030628(n+2), A355823(#)]`
-/

namespace A178739.P3877142655483989971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A178739.P3877142655483989971

noncomputable section

/-- A178739: Product of the 4th power of a prime (A030514) and a different prime (p^4*q).

Offset 1, canonical program `A178739.P3877142655483989971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A178739 (n : ℕ) : ℤ :=
  A178739.P3877142655483989971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A178739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178788.P8417566413823769035

`char[A320486(n)]`
-/

namespace A178788.P8417566413823769035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178788.P8417566413823769035

noncomputable section

/-- A178788: Characteristic function of numbers having distinct digits in their decimal representation.

Offset 0, canonical program `A178788.P8417566413823769035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5013 terms. -/
def A178788 (n : ℕ) : ℤ :=
  (A178788.P8417566413823769035.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5013 terms. -/
def A178788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179131.P11622270746716703898

`lcm(8, Δ[A219233(n)])/8`
-/

namespace A179131.P11622270746716703898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219233 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 8 (f1 (n + 1) - f1 n) : ℚ) / 8

end

end A179131.P11622270746716703898

noncomputable section

/-- A179131: Numerators of A178381(4*n+1)/A178381(4*n).

Offset 0, canonical program `A179131.P11622270746716703898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A179131 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A179131.P11622270746716703898.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A179131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179655.P1047165839059861457

`dr(A005101(n+1))`
-/

namespace A179655.P1047165839059861457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A005101 (n + 1))

end

end A179655.P1047165839059861457

noncomputable section

/-- A179655: Digital root of n-th abundant number.

Offset 1, canonical program `A179655.P1047165839059861457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179655 (n : ℕ) : ℤ :=
  (A179655.P1047165839059861457.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179941.P10165421184791566737

`A000005(n+1)-A000038(A096582(n+1))`
-/

namespace A179941.P10165421184791566737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000038 (A096582 (n + 1)).toNat

end

end A179941.P10165421184791566737

noncomputable section

/-- A179941: Number of times n appears in a 100 X 100 multiplication table.

Offset 1, canonical program `A179941.P10165421184791566737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A179941 (n : ℕ) : ℤ :=
  A179941.P10165421184791566737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A179941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180157.P3041833401943682686

`lt[0, A180160(n)]`
-/

namespace A180157.P3041833401943682686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A180157.P3041833401943682686

noncomputable section

/-- A180157: Arithmetic mean of digits is not an integer.

Offset 1, canonical program `A180157.P3041833401943682686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180157 (n : ℕ) : ℤ :=
  (A180157.P3041833401943682686.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181296.P2159209662027622070

`2*A181305(n)`
-/

namespace A181296.P2159209662027622070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181305 n

end

end A181296.P2159209662027622070

noncomputable section

/-- A181296: The number of odd entries in all the 2-compositions of n.

Offset 0, canonical program `A181296.P2159209662027622070`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181305, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181296 (n : ℕ) : ℤ :=
  A181296.P2159209662027622070.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181305, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181300.P8386514330720844755

`Δ[A181305(A004275(n)-n)]`
-/

namespace A181300.P8386514330720844755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181305 (A004275 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181300.P8386514330720844755

noncomputable section

/-- A181300: Number of columns with top entry equal to bottom entry in all the 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

Offset 0, canonical program `A181300.P8386514330720844755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A181300 (n : ℕ) : ℤ :=
  A181300.P8386514330720844755.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A181300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181434.P17652804712885310540

`A157657(n+1)*A260196(n)`
-/

namespace A181434.P17652804712885310540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (n + 1) * A260196 n

end

end A181434.P17652804712885310540

noncomputable section

/-- A181434: First column in matrix inverse of a mixed convolution of A052542.

Offset 1, canonical program `A181434.P17652804712885310540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. -/
def A181434 (n : ℕ) : ℤ :=
  A181434.P17652804712885310540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. -/
def A181434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181549.P13656909591673600582

`∑{d}[n, n/#*A189021(#)]`
-/

namespace A181549.P13656909591673600582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℚ) / (d : ℚ) * (A189021 d : ℚ)

end

end A181549.P13656909591673600582

noncomputable section

/-- A181549: a(n) = Sum_{k|n} k*mu_2(n/k).

Offset 0, canonical program `A181549.P13656909591673600582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181549 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A181549.P13656909591673600582.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181668.P2670092047588584288

`A286687(val(floor(n/3)²+4, 2)+1)`
-/

namespace A181668.P2670092047588584288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (SequenceMachineLib.valuation (⌊(n : ℚ) / 3⌋ ^ 2 + 4).toNat 2 + 1)

end

end A181668.P2670092047588584288

noncomputable section

/-- A181668: Period 12: repeat [5,5,5,2,2,2,8,8,8,2,2,2].

Offset 1, canonical program `A181668.P2670092047588584288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181668 (n : ℕ) : ℤ :=
  A181668.P2670092047588584288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181713.P9460122261019923156

`∪[A140398(n+1), A189464(n+1)]`
-/

namespace A181713.P9460122261019923156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181713.P9460122261019923156

noncomputable section

/-- A181713: Solutions of A181712(n)=0.

Offset 1, canonical program `A181713.P9460122261019923156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181713 (n : ℕ) : ℤ :=
  (A181713.P9460122261019923156.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181714.P11993731403153367927

`∪[A140400(n+1), A190158(n+1)]`
-/

namespace A181714.P11993731403153367927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181714.P11993731403153367927

noncomputable section

/-- A181714: Numbers k such that A181712(k) = 1.

Offset 1, canonical program `A181714.P11993731403153367927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181714 (n : ℕ) : ℤ :=
  (A181714.P11993731403153367927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181714.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A182760.P3743829332846930708

`A016789(n)-A287770(n+1)`
-/

namespace A182760.P3743829332846930708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A287770 (n + 1)

end

end A182760.P3743829332846930708

noncomputable section

/-- A182760: Beatty sequence for (3 + 5^(-1/2))/2.

Offset 1, canonical program `A182760.P3743829332846930708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182760 (n : ℕ) : ℤ :=
  A182760.P3743829332846930708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183093.P17608197149960352927

`A000005(n+1)-A005361(n+1)`
-/

namespace A183093.P17608197149960352927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A005361 (n + 1)

end

end A183093.P17608197149960352927

noncomputable section

/-- A183093: a(n) = number of divisors d of n such that d > 1 and if d = Product_(i) (p_i^e_i) then e_i = 1 for at least one i.

Offset 1, canonical program `A183093.P17608197149960352927`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183093 (n : ℕ) : ℤ :=
  A183093.P17608197149960352927.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183423.P11999650306193014405

`lt[n*Δ[A257023(n)], n]`
-/

namespace A183423.P11999650306193014405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A183423.P11999650306193014405

noncomputable section

/-- A183423: Ordering of the numbers in tree A183421; complement of A183422.

Offset 1, canonical program `A183423.P11999650306193014405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A183423 (n : ℕ) : ℤ :=
  (A183423.P11999650306193014405.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A183423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184328.P14837785187931186694

`p?[A050626(n+1)]`
-/

namespace A184328.P14837785187931186694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184328.P14837785187931186694

noncomputable section

/-- A184328: Primes whose digital product is a positive square.

Offset 1, canonical program `A184328.P14837785187931186694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 985 terms. -/
def A184328 (n : ℕ) : ℤ :=
  A184328.P14837785187931186694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 985 terms. -/
def A184328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184389.P17134985288461301427

`A000217(A000005(n+1))`
-/

namespace A184389.P17134985288461301427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000005 (n + 1)).toNat

end

end A184389.P17134985288461301427

noncomputable section

/-- A184389: a(n) = Sum_{k=1..tau(n)} k, where tau is the number of divisors of n (A000005).

Offset 1, canonical program `A184389.P17134985288461301427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184389 (n : ℕ) : ℤ :=
  A184389.P17134985288461301427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184389.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184627.P12574511466743953538

`ceil(A184653(2*n+1)/2)`
-/

namespace A184627.P12574511466743953538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184653 (2 * n + 1) : ℚ) / 2⌉

end

end A184627.P12574511466743953538

noncomputable section

/-- A184627: floor((n-h)*s+h), where s=(3+sqrt(3))/2 and h=1/4; complement of A184626.

Offset 1, canonical program `A184627.P12574511466743953538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184627 (n : ℕ) : ℤ :=
  A184627.P12574511466743953538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184627.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A184749.P13125599606480254590

`floor(A287723(A004766(n+1))/4)`
-/

namespace A184749.P13125599606480254590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A287723 (A004766 (n + 1)).toNat : ℚ) / 4⌋

end

end A184749.P13125599606480254590

noncomputable section

/-- A184749: a(n) = floor(n*s+h-h*s), where s = (7 + sqrt(5))/4, h = -1/2; complement of A184748.

Offset 1, canonical program `A184749.P13125599606480254590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A184749 (n : ℕ) : ℤ :=
  A184749.P13125599606480254590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A184749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184812.P6220005435936590522

`A194146(n+1)+A004526(A187396(n+1))`
-/

namespace A184812.P6220005435936590522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194146 (n + 1) + A004526 (A187396 (n + 1)).toNat

end

end A184812.P6220005435936590522

noncomputable section

/-- A184812: n+floor(ns/r)+floor(nt/r), where r=sqrt(2), s=sqrt(3), t=sqrt(5).

Offset 1, canonical program `A184812.P6220005435936590522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8603 terms. -/
def A184812 (n : ℕ) : ℤ :=
  A184812.P6220005435936590522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8603 terms. -/
def A184812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184903.P10166657498672039758

`A190506(n+1)-A287770(n+1)`
-/

namespace A184903.P10166657498672039758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190506 (n + 1) - A287770 (n + 1)

end

end A184903.P10166657498672039758

noncomputable section

/-- A184903: n+floor(nr/t)+floor(ns/t), where r=(1+sqrt(5))/2, s=r+1, t=r+2.

Offset 1, canonical program `A184903.P10166657498672039758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184903 (n : ℕ) : ℤ :=
  A184903.P10166657498672039758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185114.P1795733170275167192

`A130543(n)+A000007(n)`
-/

namespace A185114.P1795733170275167192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 n + A000007 n

end

end A185114.P1795733170275167192

noncomputable section

/-- A185114: Number of connected 2-regular simple graphs on n vertices with girth at least 4.

Offset 0, canonical program `A185114.P1795733170275167192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185114 (n : ℕ) : ℤ :=
  A185114.P1795733170275167192.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185114.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186034.P3246974925784444499

`val(A299918(n), 2)`
-/

namespace A186034.P3246974925784444499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A299918 n).toNat 2

end

end A186034.P3246974925784444499

noncomputable section

/-- A186034: 2-adic valuation of the n-th Motzkin number.

Offset 0, canonical program `A186034.P3246974925784444499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186034 (n : ℕ) : ℤ :=
  (A186034.P3246974925784444499.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186034.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A187577.P7426912050997007396

`∑[3-and(2, A267860(n))]`
-/

namespace A187577.P7426912050997007396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.land 2 (A267860 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187577.P7426912050997007396

noncomputable section

/-- A187577: Complement of A187576.

Offset 1, canonical program `A187577.P7426912050997007396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187577 (n : ℕ) : ℤ :=
  A187577.P7426912050997007396.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187580.P2355518375788628235

`A191402(ceil(n/2))-n%2`
-/

namespace A187580.P2355518375788628235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191402 ⌈(n : ℚ) / 2⌉.toNat - ((n % 2 : ℕ) : ℤ)

end

end A187580.P2355518375788628235

noncomputable section

/-- A187580: Rank transform of the sequence 2*floor(n/2); complement of A187581.

Offset 1, canonical program `A187580.P2355518375788628235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187580 (n : ℕ) : ℤ :=
  A187580.P2355518375788628235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187948.P2785729738803555643

`char[A187953(n+1)-1]`
-/

namespace A187948.P2785729738803555643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187953 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A187948.P2785729738803555643

noncomputable section

/-- A187948: [nr+kr]-[nr]-[kr], where r=(1+sqrt(5))/2, k=6, [ ]=floor.

Offset 1, canonical program `A187948.P2785729738803555643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187948 (n : ℕ) : ℤ :=
  (A187948.P2785729738803555643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187950.P3606201805614441045

`a(A276757(n+1)-1)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=0`
-/

namespace A187950.P3606201805614441045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0, 0] fun n a =>
  a (A276757 (n + 1) - 1).toNat

end

end A187950.P3606201805614441045

noncomputable section

/-- A187950: [nr+kr] - [nr] - [kr], where r = (1+sqrt(5))/2, k = 4, [.]=floor.

Offset 1, canonical program `A187950.P3606201805614441045`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276757, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187950 (n : ℕ) : ℤ :=
  (A187950.P3606201805614441045.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276757, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187950.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A187951.P5704434848721015730

`comp[A188468(n+1)-4]`
-/

namespace A187951.P5704434848721015730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187951.P5704434848721015730

noncomputable section

/-- A187951: Positions of 0 in A187950; complement of A187952.

Offset 1, canonical program `A187951.P5704434848721015730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187951 (n : ℕ) : ℤ :=
  (A187951.P5704434848721015730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187970.P445449769979314014

`comp[A187971(n+1)-1]+1`
-/

namespace A187970.P445449769979314014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187970.P445449769979314014

noncomputable section

/-- A187970: Positions of 0 in A187969; complement of A187971.

Offset 1, canonical program `A187970.P445449769979314014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187970 (n : ℕ) : ℤ :=
  (A187970.P445449769979314014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187975.P2328125019044732713

`A188383(n+1)+A098021(n+1)`
-/

namespace A187975.P2328125019044732713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188383 (n + 1) + A098021 (n + 1)

end

end A187975.P2328125019044732713

noncomputable section

/-- A187975: Positions of 1 in the zero-one sequence given by s(n)=[nr+5r]-[nr]-[5r], where r=sqrt(2), n>=1, [ ]=floor.

Offset 1, canonical program `A187975.P2328125019044732713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187975 (n : ℕ) : ℤ :=
  A187975.P2328125019044732713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188014.P7770926066487780213

`A289034(A287523(n+1)+∑[A287523(n+1)])`
-/

namespace A188014.P7770926066487780213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (A287523 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188014.P7770926066487780213

noncomputable section

/-- A188014: a(n) = [nr]-[nr-kr]-[kr], where r=(1+sqrt(5))/2, k=4, [ ]=floor.

Offset 1, canonical program `A188014.P7770926066487780213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188014 (n : ℕ) : ℤ :=
  A188014.P7770926066487780213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188018.P1779164048503098880

`A188468(n+1)+A188010(n+1)`
-/

namespace A188018.P1779164048503098880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1) + A188010 (n + 1)

end

end A188018.P1779164048503098880

noncomputable section

/-- A188018: Positions of 0 in A188017; complement of A188019.

Offset 1, canonical program `A188018.P1779164048503098880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188018 (n : ℕ) : ℤ :=
  A188018.P1779164048503098880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188074.P15532847428602426047

`∑[A245222(n)²+3]`
-/

namespace A188074.P15532847428602426047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245222 n ^ 2 + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188074.P15532847428602426047

noncomputable section

/-- A188074: Positions of 1 in the zero-one sequence [n*r]-[3*r]-[n*r-3*r], where r=sqrt(3), n>=1.

Offset 1, canonical program `A188074.P15532847428602426047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188074 (n : ℕ) : ℤ :=
  A188074.P15532847428602426047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188237.P1096983553706900320

`A188212(n+1)-A005408(A008620(n))`
-/

namespace A188237.P1096983553706900320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188212 (n + 1) - A005408 (A008620 n).toNat

end

end A188237.P1096983553706900320

noncomputable section

/-- A188237: Number of nondecreasing arrangements of 4 numbers in -(n+2)..(n+2) with sum zero and not more than two numbers equal.

Offset 1, canonical program `A188237.P1096983553706900320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188237 (n : ℕ) : ℤ :=
  A188237.P1096983553706900320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188302.P6415183017477871457

`A000027(A188383(n+1)+3)`
-/

namespace A188302.P6415183017477871457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A188383 (n + 1) + 3).toNat

end

end A188302.P6415183017477871457

noncomputable section

/-- A188302: Positions of 1 in A188300; complement of A188301.

Offset 1, canonical program `A188302.P6415183017477871457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188302 (n : ℕ) : ℤ :=
  A188302.P6415183017477871457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188435.P2824334305626450135

`A363057(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A188435.P2824334305626450135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A363057 n + a (n - 1)

end

end A188435.P2824334305626450135

noncomputable section

/-- A188435: Positions of 1 in A188433; complement of A188434.

Offset 1, canonical program `A188435.P2824334305626450135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188435 (n : ℕ) : ℤ :=
  A188435.P2824334305626450135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188540.P8000585226121098714

`eq[2*A000005(n+1), A000005(n+3)]+1`
-/

namespace A188540.P8000585226121098714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A188540.P8000585226121098714

noncomputable section

/-- A188540: Numbers k such that d(k+2) = 2*d(k) where d(k) is the number of divisors of k (A000005).

Offset 1, canonical program `A188540.P8000585226121098714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5494 terms. -/
def A188540 (n : ℕ) : ℤ :=
  (A188540.P8000585226121098714.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5494 terms. -/
def A188540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189401.P4880423856562258179

`A189400(n+1)+A189403(n+1)-A189399(n+1)`
-/

namespace A189401.P4880423856562258179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189400 (n + 1) + (A189403 (n + 1) - A189399 (n + 1))

end

end A189401.P4880423856562258179

noncomputable section

/-- A189401: n+[nr/t]+[ns/t]; r=1, s=sqrt(e), t=e.

Offset 1, canonical program `A189401.P4880423856562258179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189401 (n : ℕ) : ℤ :=
  A189401.P4880423856562258179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189522.P15652800251320976758

`A189403(n+1)+A292665(n+1)-A292647(n+1)`
-/

namespace A189522.P15652800251320976758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189403 (n + 1) + (A292665 (n + 1) - A292647 (n + 1))

end

end A189522.P15652800251320976758

noncomputable section

/-- A189522: n+[nr/s]+[nt/s]; r=1, s=1/(e-1), t=1/(e+1).

Offset 1, canonical program `A189522.P15652800251320976758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189522 (n : ℕ) : ℤ :=
  A189522.P15652800251320976758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189708.P1850673420903285968

`filter[n+1, A189706(#)]`
-/

namespace A189708.P1850673420903285968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189706 (f1 j) = 1) n)

end

end A189708.P1850673420903285968

noncomputable section

/-- A189708: Positions of 1 in A189706; complement of A189707.

Offset 1, canonical program `A189708.P1850673420903285968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189708 (n : ℕ) : ℤ :=
  (A189708.P1850673420903285968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189709.P16099882615266385270

`∑[A189706(n+1)]`
-/

namespace A189709.P16099882615266385270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189709.P16099882615266385270

noncomputable section

/-- A189709: Partial sums of A189706.

Offset 1, canonical program `A189709.P16099882615266385270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189709 (n : ℕ) : ℤ :=
  A189709.P16099882615266385270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189716.P8656559037271871482

`comp[∪[A189715(n+1), n²]]`
-/

namespace A189716.P8656559037271871482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A189716.P8656559037271871482

noncomputable section

/-- A189716: Numbers k such that A156595(k-1) = 1; complement of A189715.

Offset 1, canonical program `A189716.P8656559037271871482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189716 (n : ℕ) : ℤ :=
  (A189716.P8656559037271871482.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189728.P17289738787874107893

`or(1, A284913(n+1))+n`
-/

namespace A189728.P17289738787874107893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A284913 (n + 1)) + (n : ℤ)

end

end A189728.P17289738787874107893

noncomputable section

/-- A189728: Positions of 0 in A189727; complement of A189729.

Offset 1, canonical program `A189728.P17289738787874107893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189728 (n : ℕ) : ℤ :=
  A189728.P17289738787874107893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190199.P13571509793014364535

`comp[A190200(n+1)-1]+1`
-/

namespace A190199.P13571509793014364535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190200 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A190199.P13571509793014364535

noncomputable section

/-- A190199: Positions of 0 in A190198; complement of A190200.

Offset 1, canonical program `A190199.P13571509793014364535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190199 (n : ℕ) : ℤ :=
  (A190199.P13571509793014364535.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190491.P14507808460934527920

`A190775(2*(n+1))`
-/

namespace A190491.P14507808460934527920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (2 * (n + 1))

end

end A190491.P14507808460934527920

noncomputable section

/-- A190491: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(2),3,1) and []=floor.

Offset 1, canonical program `A190491.P14507808460934527920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190491 (n : ℕ) : ℤ :=
  A190491.P14507808460934527920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190491.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190670.P6357552631536216047

`∪[A003512(n+1), A190695(n+1)]`
-/

namespace A190670.P6357552631536216047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190670.P6357552631536216047

noncomputable section

/-- A190670: Positions of 0 in A190669; complement of A190671.

Offset 1, canonical program `A190670.P6357552631536216047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190670 (n : ℕ) : ℤ :=
  (A190670.P6357552631536216047.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190672.P969204813514763096

`round(sqrt(A190704(n+1)))`
-/

namespace A190672.P969204813514763096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A190704 (n + 1) : ℝ))

end

end A190672.P969204813514763096

noncomputable section

/-- A190672: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),2,1) and [ ]=floor.

Offset 1, canonical program `A190672.P969204813514763096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190672 (n : ℕ) : ℤ :=
  A190672.P969204813514763096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190672.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190796.P8479633771885963645

`A042948(A362692(n+1))`
-/

namespace A190796.P8479633771885963645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A362692 (n + 1)).toNat

end

end A190796.P8479633771885963645

noncomputable section

/-- A190796: Number of digits in the minimal base-phi representation of n.

Offset 1, canonical program `A190796.P8479633771885963645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190796 (n : ℕ) : ℤ :=
  A190796.P8479633771885963645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190940.P3482057702571658597

`A000005(A002944(n+1))`
-/

namespace A190940.P3482057702571658597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002944 (n + 1)).toNat

end

end A190940.P3482057702571658597

noncomputable section

/-- A190940: Number of divisors of LCM(1,2,...,n)/n.

Offset 1, canonical program `A190940.P3482057702571658597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190940 (n : ℕ) : ℤ :=
  A190940.P3482057702571658597.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190940.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191017.P9280210911899250304

`∪[A106915(n+1), A274675(n+1)]`
-/

namespace A191017.P9280210911899250304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191017.P9280210911899250304

noncomputable section

/-- A191017: Primes with Kronecker symbol (p|14) = 1.

Offset 1, canonical program `A191017.P9280210911899250304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191017 (n : ℕ) : ℤ :=
  (A191017.P9280210911899250304.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191319.P759594844245076753

`a(n-2)+A004526(n)*A210736(n)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A191319.P759594844245076753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 2) + A004526 n * A210736 n

end

end A191319.P759594844245076753

noncomputable section

/-- A191319: Sum of pyramid weights of all dispersed Dyck paths of length n (i.e., of all Motzkin paths of length n with no (1,0) steps at positive heights).

Offset 0, canonical program `A191319.P759594844245076753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A191319 (n : ℕ) : ℤ :=
  A191319.P759594844245076753.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A191319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191522.P8267354329706753814

`Δ[A210736(n)]*A140106(n+1)`
-/

namespace A191522.P8267354329706753814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A140106 (n + 1)

end

end A191522.P8267354329706753814

noncomputable section

/-- A191522: Number of valleys in all left factors of Dyck paths of length n. A valley is a (1,-1)-step followed by a (1,1)-step.

Offset 0, canonical program `A191522.P8267354329706753814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191522 (n : ℕ) : ℤ :=
  A191522.P8267354329706753814.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192109.P6844866890329182812

`record[gcd(n+1, 2-A062173(n+1))]`
-/

namespace A192109.P6844866890329182812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (2 - A062173 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192109.P6844866890329182812

noncomputable section

/-- A192109: Numbers k that divide 2^(k-1) - 2.

Offset 1, canonical program `A192109.P6844866890329182812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5247 terms. -/
def A192109 (n : ℕ) : ℤ :=
  (A192109.P6844866890329182812.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5247 terms. -/
def A192109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192142.P14644412906987799282

`A192245(n+1)+A117152(n)`
-/

namespace A192142.P14644412906987799282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192245 (n + 1) + A117152 n

end

end A192142.P14644412906987799282

noncomputable section

/-- A192142: 1-sequence of reduction of (n^2+n+1) by x^2 -> x+1.

Offset 1, canonical program `A192142.P14644412906987799282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A192142 (n : ℕ) : ℤ :=
  A192142.P14644412906987799282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A192142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192592.P18175779352790662671

`A280084(A011760(n+1))`
-/

namespace A192592.P18175779352790662671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (A011760 (n + 1)).toNat

end

end A192592.P18175779352790662671

noncomputable section

/-- A192592: Monotonic ordering of set S generated by these rules: if x and y are in S and 3x+2y is a prime, then 3x+2y is in S, and 1 is in S.

Offset 1, canonical program `A192592.P18175779352790662671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A192592 (n : ℕ) : ℤ :=
  A192592.P18175779352790662671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A192592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192638.P5776739241010284944

`∩[A095278(n+1), A127575(n+1)]`
-/

namespace A192638.P5776739241010284944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192638.P5776739241010284944

noncomputable section

/-- A192638: Numbers n such that 4n + 3 and 16n + 15 are prime.

Offset 1, canonical program `A192638.P5776739241010284944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2093 terms. -/
def A192638 (n : ℕ) : ℤ :=
  (A192638.P5776739241010284944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2093 terms. -/
def A192638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193348.P8532159811995287053

`A001227(A000005(n+1))`
-/

namespace A193348.P8532159811995287053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A000005 (n + 1)).toNat

end

end A193348.P8532159811995287053

noncomputable section

/-- A193348: Number of odd divisors of tau(n).

Offset 1, canonical program `A193348.P8532159811995287053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193348 (n : ℕ) : ℤ :=
  A193348.P8532159811995287053.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193348.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193349.P2136370767901044889

`A000593(A000005(n+1))`
-/

namespace A193349.P2136370767901044889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A000005 (n + 1)).toNat

end

end A193349.P2136370767901044889

noncomputable section

/-- A193349: Sum of odd divisors of tau(n).

Offset 1, canonical program `A193349.P2136370767901044889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193349 (n : ℕ) : ℤ :=
  A193349.P2136370767901044889.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193349.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193382.P1708561053743759439

`A046980(n)*A210736(A004524(n))`
-/

namespace A193382.P1708561053743759439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 n * A210736 (A004524 n).toNat

end

end A193382.P1708561053743759439

noncomputable section

/-- A193382: G.f. is the real part of the function C(x) that satisfies C(x) = 1 + x/C(I*x).

Offset 0, canonical program `A193382.P1708561053743759439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. -/
def A193382 (n : ℕ) : ℤ :=
  A193382.P1708561053743759439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. -/
def A193382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193432.P15803049534732017682

`A000005(A002522(n))`
-/

namespace A193432.P15803049534732017682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002522 n).toNat

end

end A193432.P15803049534732017682

noncomputable section

/-- A193432: Number of divisors of n^2 + 1.

Offset 0, canonical program `A193432.P15803049534732017682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193432 (n : ℕ) : ℤ :=
  A193432.P15803049534732017682.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193432.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193562.P320638825937170034

`A000005(A002523(n))`
-/

namespace A193562.P320638825937170034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002523 n).toNat

end

end A193562.P320638825937170034

noncomputable section

/-- A193562: Number of divisors of n^4+1.

Offset 0, canonical program `A193562.P320638825937170034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193562 (n : ℕ) : ℤ :=
  A193562.P320638825937170034.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193773.P5335748704601439126

`ceil(A000005(2*n+1)/2)`
-/

namespace A193773.P5335748704601439126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (2 * n + 1) : ℚ) / 2⌉

end

end A193773.P5335748704601439126

noncomputable section

/-- A193773: Number of ways to write n as 2*x*y - x - y with 1 <= x <= y.

Offset 0, canonical program `A193773.P5335748704601439126`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193773 (n : ℕ) : ℤ :=
  A193773.P5335748704601439126.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194081.P10160956596199185077

`comp[A372397(n+1)+n+1]`
-/

namespace A194081.P10160956596199185077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372397 (n + 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A194081.P10160956596199185077

noncomputable section

/-- A194081: Smallest m such that A005375(m) = n.

Offset 0, canonical program `A194081.P10160956596199185077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194081 (n : ℕ) : ℤ :=
  (A194081.P10160956596199185077.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194376.P8742211185253626047

`record[gcd(2*(n+1), A327255(n+1))]`
-/

namespace A194376.P8742211185253626047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A327255 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194376.P8742211185253626047

noncomputable section

/-- A194376: Numbers m such that Sum_{k=1..m} ( - ) = 0, where r=sqrt(6) and < > denotes fractional part.

Offset 1, canonical program `A194376.P8742211185253626047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A194376 (n : ℕ) : ℤ :=
  (A194376.P8742211185253626047.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A194376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194405.P14981962460593271920

`record[(n+1)%A190847(A008619(n))]`
-/

namespace A194405.P14981962460593271920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A190847 (A008619 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194405.P14981962460593271920

noncomputable section

/-- A194405: Numbers m such that Sum_{k=1..m} ( - ) < 0 where < > denotes fractional part.

Offset 1, canonical program `A194405.P14981962460593271920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A194405 (n : ℕ) : ℤ :=
  A194405.P14981962460593271920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A194405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194407.P1781012805405431426

`lt[A190847(A008619(n))-n, 1]`
-/

namespace A194407.P1781012805405431426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190847 (A008619 n).toNat - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A194407.P1781012805405431426

noncomputable section

/-- A194407: Numbers m such that Sum_{k=1..m} ( - ) > 0 where < > denotes fractional part.

Offset 1, canonical program `A194407.P1781012805405431426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1132 terms. -/
def A194407 (n : ℕ) : ℤ :=
  (A194407.P1781012805405431426.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1132 terms. -/
def A194407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194819.P10994413339944497895

`∑[A327183(n)]`
-/

namespace A194819.P10994413339944497895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194819.P10994413339944497895

noncomputable section

/-- A194819: Number of integers k in [1,n] such that {n*e+k*e} < {n*e-k*e}, where { } = fractional part.

Offset 1, canonical program `A194819.P10994413339944497895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194819 (n : ℕ) : ℤ :=
  A194819.P10994413339944497895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194820.P8632114547582103611

`∑[1-A327183(n)]`
-/

namespace A194820.P8632114547582103611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A327183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194820.P8632114547582103611

noncomputable section

/-- A194820: Number of integers k in [1,n] such that {n*e+k*e} > {n*e-k*e}, where { } = fractional part.

Offset 1, canonical program `A194820.P8632114547582103611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194820 (n : ℕ) : ℤ :=
  A194820.P8632114547582103611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195051.P6543047752683746516

`A000005(A183010(n+1))`
-/

namespace A195051.P6543047752683746516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A183010 (n + 1)).toNat

end

end A195051.P6543047752683746516

noncomputable section

/-- A195051: Number of divisors of 24*n - 1.

Offset 1, canonical program `A195051.P6543047752683746516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195051 (n : ℕ) : ℤ :=
  A195051.P6543047752683746516.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A197636.P5633880551885269643

`p?[A383578(n+1)]`
-/

namespace A197636.P5633880551885269643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197636.P5633880551885269643

noncomputable section

/-- A197636: Non-Wilson primes: primes p such that (p-1)! =/= -1 mod p^2.

Offset 1, canonical program `A197636.P5633880551885269643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A197636 (n : ℕ) : ℤ :=
  A197636.P5633880551885269643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A197636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201014.P5854575639799289141

`∩[A011540(n+1), A173905(n+1)]`
-/

namespace A201014.P5854575639799289141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201014.P5854575639799289141

noncomputable section

/-- A201014: Composite numbers (include 0) whose product of digits is 0.

Offset 1, canonical program `A201014.P5854575639799289141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3440 terms. -/
def A201014 (n : ℕ) : ℤ :=
  (A201014.P5854575639799289141.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3440 terms. -/
def A201014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201816.P5067483426122242254

`lt[A001221(A082369(3*n+1)), 2]`
-/

namespace A201816.P5067483426122242254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A082369 (3 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A201816.P5067483426122242254

noncomputable section

/-- A201816: Numbers k such that 90*k + 13 is prime.

Offset 1, canonical program `A201816.P5067483426122242254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A201816 (n : ℕ) : ℤ :=
  (A201816.P5067483426122242254.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A201816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202093.P17617771732918613506

`A250426(n+2)`
-/

namespace A202093.P17617771732918613506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250426 (n + 2)

end

end A202093.P17617771732918613506

noncomputable section

/-- A202093: Number of (n+2) X 3 binary arrays avoiding patterns 001 and 011 in rows and columns.

Offset 1, canonical program `A202093.P17617771732918613506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202093 (n : ℕ) : ℤ :=
  A202093.P17617771732918613506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202098.P4128263867690976448

`A331575(n+11)²`
-/

namespace A202098.P4128263867690976448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331575 (n + 11) ^ 2

end

end A202098.P4128263867690976448

noncomputable section

/-- A202098: Number of (n+2) X 8 binary arrays avoiding patterns 001 and 011 in rows and columns.

Offset 1, canonical program `A202098.P4128263867690976448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A202098 (n : ℕ) : ℤ :=
  A202098.P4128263867690976448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A202098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202486.P8789427035128539930

`A264365(n+4)²`
-/

namespace A202486.P8789427035128539930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264365 (n + 4) ^ 2

end

end A202486.P8789427035128539930

noncomputable section

/-- A202486: Number of (n+2)X4 binary arrays avoiding patterns 000 and 010 in rows, columns and nw-to-se diagonals.

Offset 1, canonical program `A202486.P8789427035128539930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A202486 (n : ℕ) : ℤ :=
  A202486.P8789427035128539930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A202486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204822.P986191513022326355

`A000203(A005101(n+1))`
-/

namespace A204822.P986191513022326355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A005101 (n + 1)).toNat

end

end A204822.P986191513022326355

noncomputable section

/-- A204822: Sum of divisors (A000203) of abundant numbers (A005101).

Offset 1, canonical program `A204822.P986191513022326355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204822 (n : ℕ) : ℤ :=
  A204822.P986191513022326355.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204823.P4919634814112807220

`∑{d}[A005100(n+1), #]`
-/

namespace A204823.P4919634814112807220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A204823.P4919634814112807220

noncomputable section

/-- A204823: Sum of divisors (A000203) of deficient numbers (A005100).

Offset 1, canonical program `A204823.P4919634814112807220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204823 (n : ℕ) : ℤ :=
  (A204823.P4919634814112807220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204827.P17698641458636388094

`∩[A005100(n+1), A028983(n+1)]`
-/

namespace A204827.P17698641458636388094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204827.P17698641458636388094

noncomputable section

/-- A204827: Deficient numbers with even sum of divisors.

Offset 1, canonical program `A204827.P17698641458636388094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7537 terms. -/
def A204827 (n : ℕ) : ℤ :=
  (A204827.P17698641458636388094.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7537 terms. -/
def A204827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206369.P2534442500048428716

`abs(A061020(n+1))`
-/

namespace A206369.P2534442500048428716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061020 (n + 1)|

end

end A206369.P2534442500048428716

noncomputable section

/-- A206369: a(p^k) = p^k - p^(k-1) + p^(k-2) - ... +- 1, and then extend by multiplicativity.

Offset 1, canonical program `A206369.P2534442500048428716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206369 (n : ℕ) : ℤ :=
  A206369.P2534442500048428716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206369.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A207005.P8295083017489759373

`eq[A001221(n+1-A001221(n+1)), A001221(n+1)]+1`
-/

namespace A207005.P8295083017489759373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1 : ℤ) - A001221 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A207005.P8295083017489759373

noncomputable section

/-- A207005: Numbers k such that omega(k) = omega(k - omega(k)) where omega(k) is the number of distinct primes dividing k.

Offset 1, canonical program `A207005.P8295083017489759373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207005 (n : ℕ) : ℤ :=
  (A207005.P8295083017489759373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207006.P17524923869019092889

`eq[A001221(A001221(n+1)+n+1), A001221(n+1)]+1`
-/

namespace A207006.P17524923869019092889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001221 (n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A207006.P17524923869019092889

noncomputable section

/-- A207006: Numbers n such that omega(n) = omega(n + omega(n)) where omega(n) is the number of distinct primes dividing n.

Offset 1, canonical program `A207006.P17524923869019092889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207006 (n : ℕ) : ℤ :=
  (A207006.P17524923869019092889.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207249.P9404039459940817354

`sqrt(A206981(n+1))*sqrt(A207854(n+1))`
-/

namespace A207249.P9404039459940817354
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206981 (n + 1) : ℝ) * Real.sqrt (A207854 (n + 1) : ℝ)

end

end A207249.P9404039459940817354

noncomputable section

/-- A207249: Number of n X 3 0..1 arrays avoiding 0 0 1 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

Offset 1, canonical program `A207249.P9404039459940817354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A207249 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207249.P9404039459940817354.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A207249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207538.P3362735136045177086

`A000079(A082375(n))*A011973(n)`
-/

namespace A207538.P3362735136045177086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A082375 n).toNat * A011973 n

end

end A207538.P3362735136045177086

noncomputable section

/-- A207538: Triangle of coefficients of polynomials v(n,x) jointly generated with A207537; see Formula section.

Offset 1, canonical program `A207538.P3362735136045177086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207538 (n : ℕ) : ℤ :=
  A207538.P3362735136045177086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207840.P5446005302528712102

`sqrt(A206981(n+1))*sqrt(A207924(n+1))`
-/

namespace A207840.P5446005302528712102
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206981 (n + 1) : ℝ) * Real.sqrt (A207924 (n + 1) : ℝ)

end

end A207840.P5446005302528712102

noncomputable section

/-- A207840: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

Offset 1, canonical program `A207840.P5446005302528712102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A207840 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207840.P5446005302528712102.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A207840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208023.P17884512696912570816

`sqrt(A207170(n+1))*sqrt(A208035(n+1))`
-/

namespace A208023.P17884512696912570816
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207170 (n + 1) : ℝ) * Real.sqrt (A208035 (n + 1) : ℝ)

end

end A208023.P17884512696912570816

noncomputable section

/-- A208023: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 0 1 vertically.

Offset 1, canonical program `A208023.P17884512696912570816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A208023 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208023.P17884512696912570816.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A208023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208116.P12057990313644117716

`(A208551(n+1)/A002620(n+3))²`
-/

namespace A208116.P12057990313644117716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A208551 (n + 1) : ℚ) / (A002620 (n + 3) : ℚ)) ^ 2

end

end A208116.P12057990313644117716

noncomputable section

/-- A208116: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

Offset 1, canonical program `A208116.P12057990313644117716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A208116 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208116.P12057990313644117716.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A208116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209211.P11824110619297163653

`eq[n, A318828(n+1)]+1`
-/

namespace A209211.P11824110619297163653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209211.P11824110619297163653

noncomputable section

/-- A209211: Numbers k such that k-1 and phi(k) are relatively prime.

Offset 1, canonical program `A209211.P11824110619297163653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209211 (n : ℕ) : ℤ :=
  (A209211.P11824110619297163653.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209291.P18360299347997775299

`∑[(n+1)*A336040(n+1)]`
-/

namespace A209291.P18360299347997775299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A336040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209291.P18360299347997775299

noncomputable section

/-- A209291: Sum of the refactorable numbers less than or equal to n.

Offset 1, canonical program `A209291.P18360299347997775299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209291 (n : ℕ) : ℤ :=
  A209291.P18360299347997775299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210039.P13325331133632388062

`A034839(A049068(n+1))`
-/

namespace A210039.P13325331133632388062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 (A049068 (n + 1)).toNat

end

end A210039.P13325331133632388062

noncomputable section

/-- A210039: Array of coefficients of polynomials u(n,x) jointly generated with A210040; see the Formula section.

Offset 1, canonical program `A210039.P13325331133632388062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A210039 (n : ℕ) : ℤ :=
  A210039.P13325331133632388062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A210039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211117.P3659241348641989542

`A211479(n+1)+A211490(n+1)-9`
-/

namespace A211117.P3659241348641989542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211479 (n + 1) + (A211490 (n + 1) - 9)

end

end A211117.P3659241348641989542

noncomputable section

/-- A211117: Number of (n+1) X (n+1) -2..2 symmetric matrices with every 2 X 2 subblock having sum zero and two, three or four distinct values.

Offset 1, canonical program `A211117.P3659241348641989542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A211117 (n : ℕ) : ℤ :=
  A211117.P3659241348641989542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A211117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211261.P11564212885417913307

`floor(A000005(2*(n+1))/2)-1`
-/

namespace A211261.P11564212885417913307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (2 * (n + 1)) : ℚ) / 2⌋ - 1

end

end A211261.P11564212885417913307

noncomputable section

/-- A211261: Number of integer pairs (x,y) such that 0

Offset 1, canonical program `A211261.P11564212885417913307`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211261 (n : ℕ) : ℤ :=
  A211261.P11564212885417913307.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211261.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211262.P15561464354873054007

`A004526(A000005(3*(n+1)))-A000034(n)`
-/

namespace A211262.P15561464354873054007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (3 * (n + 1))).toNat - A000034 n

end

end A211262.P15561464354873054007

noncomputable section

/-- A211262: Number of integer pairs (x,y) such that 0

Offset 1, canonical program `A211262.P15561464354873054007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211262 (n : ℕ) : ℤ :=
  A211262.P15561464354873054007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211270.P5835320324361181167

`floor((A000005(2*(n+1))-1)/2)`
-/

namespace A211270.P5835320324361181167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (2 * (n + 1)) - 1 : ℚ) / 2⌋

end

end A211270.P5835320324361181167

noncomputable section

/-- A211270: Number of integer pairs (x,y) such that 0 < x <= y <= n and x*y = 2n.

Offset 1, canonical program `A211270.P5835320324361181167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211270 (n : ℕ) : ℤ :=
  A211270.P5835320324361181167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211270.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211324.P4978454997270415450

`A211114(n+1)+A090991(n+1)`
-/

namespace A211324.P4978454997270415450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211114 (n + 1) + A090991 (n + 1)

end

end A211324.P4978454997270415450

noncomputable section

/-- A211324: Number of (n+1) X (n+1) -3..3 symmetric matrices with every 2 X 2 subblock having sum zero and one or three distinct values.

Offset 1, canonical program `A211324.P4978454997270415450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A211324 (n : ℕ) : ℤ :=
  A211324.P4978454997270415450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A211324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211337.P18010796566095735436

`eq[1, A000005(n+1)%3]+1`
-/

namespace A211337.P18010796566095735436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A211337.P18010796566095735436

noncomputable section

/-- A211337: Numbers k for which the number of divisors, tau(k), is congruent to 1 modulo 3.

Offset 1, canonical program `A211337.P18010796566095735436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211337 (n : ℕ) : ℤ :=
  (A211337.P18010796566095735436.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211338.P17217578141647606892

`lt[(A000005(n+1)+1)%3, 1]+1`
-/

namespace A211338.P17217578141647606892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1) + 1) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A211338.P17217578141647606892

noncomputable section

/-- A211338: Numbers k for which the number of divisors, tau(k), is congruent to 2 modulo 3.

Offset 1, canonical program `A211338.P17217578141647606892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211338 (n : ℕ) : ℤ :=
  (A211338.P17217578141647606892.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211430.P8380286044930942036

`2*A211483(n)-A005408(n)`
-/

namespace A211430.P8380286044930942036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211483 n - A005408 n

end

end A211430.P8380286044930942036

noncomputable section

/-- A211430: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^2+x+y=0.

Offset 0, canonical program `A211430.P8380286044930942036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A211430 (n : ℕ) : ℤ :=
  A211430.P8380286044930942036.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A211430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212164.P17151163733821615941

`lt[A001221(n+1), A051903(n+1)]+1`
-/

namespace A212164.P17151163733821615941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A212164.P17151163733821615941

noncomputable section

/-- A212164: Numbers k such that the maximum exponent in its prime factorization is greater than the number of positive exponents (A051903(k) > A001221(k)).

Offset 1, canonical program `A212164.P17151163733821615941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4819 terms. -/
def A212164 (n : ℕ) : ℤ :=
  (A212164.P17151163733821615941.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4819 terms. -/
def A212164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212165.P325953888853094015

`lt[A001221(n+1)-A051903(n+1), 1]+1`
-/

namespace A212165.P325953888853094015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A051903 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A212165.P325953888853094015

noncomputable section

/-- A212165: Numbers k such that the maximum exponent in its prime factorization is not less than the number of positive exponents (A051903(k) >= A001221(k)).

Offset 1, canonical program `A212165.P325953888853094015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212165 (n : ℕ) : ℤ :=
  (A212165.P325953888853094015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212166.P9615223934233399891

`eq[A001221(n+1), A051903(n+1)]+1`
-/

namespace A212166.P9615223934233399891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A212166.P9615223934233399891

noncomputable section

/-- A212166: Numbers k such that the maximum exponent in its prime factorization equals the number of positive exponents (A051903(k) = A001221(k)).

Offset 1, canonical program `A212166.P9615223934233399891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212166 (n : ℕ) : ℤ :=
  (A212166.P9615223934233399891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212168.P13428896127998377424

`lt[A051903(n+1), A001221(n+1)]+1`
-/

namespace A212168.P13428896127998377424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A212168.P13428896127998377424

noncomputable section

/-- A212168: Numbers n such that the maximal exponent in its prime factorization is less than the number of positive exponents (A051903(n) < A001221(n)).

Offset 1, canonical program `A212168.P13428896127998377424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212168 (n : ℕ) : ℤ :=
  (A212168.P13428896127998377424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212562.P9619993933328220815

`n^4-A212565(n)`
-/

namespace A212562.P9619993933328220815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212565 n

end

end A212562.P9619993933328220815

noncomputable section

/-- A212562: Number of (w,x,y,z) with all terms in {1,...,n} and w+x

Offset 0, canonical program `A212562.P9619993933328220815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212562 (n : ℕ) : ℤ :=
  A212562.P9619993933328220815.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212571.P10300611427590139486

`n²²-A212574(n)`
-/

namespace A212571.P10300611427590139486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212574 n

end

end A212571.P10300611427590139486

noncomputable section

/-- A212571: Number of (w,x,y,z) with all terms in {1,...,n} and |w-x|<|x-y|+|y-z|.

Offset 0, canonical program `A212571.P10300611427590139486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212571 (n : ℕ) : ℤ :=
  A212571.P10300611427590139486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212687.P13544540666538065801

`n²²-A212688(n)`
-/

namespace A212687.P13544540666538065801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212688 n

end

end A212687.P13544540666538065801

noncomputable section

/-- A212687: Number of (w,x,y,z) with all terms in {1,...,n} and 2|w-x|

Offset 0, canonical program `A212687.P13544540666538065801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212687 (n : ℕ) : ℤ :=
  A212687.P13544540666538065801.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212759.P10804257057777667653

`A212764(n)+A008619(n)²²`
-/

namespace A212759.P10804257057777667653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212764 n + (A008619 n ^ 2) ^ 2

end

end A212759.P10804257057777667653

noncomputable section

/-- A212759: Number of (w,x,y,z) with all terms in {0,...,n} and w, x, and y even.

Offset 0, canonical program `A212759.P10804257057777667653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212759 (n : ℕ) : ℤ :=
  A212759.P10804257057777667653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212972.P15305657758278643221

`(n+1)^3-A212971(n)`
-/

namespace A212972.P15305657758278643221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A212971 n

end

end A212972.P15305657758278643221

noncomputable section

/-- A212972: Number of triples (w,x,y) with all terms in {0,...,n} and w >= floor((x+y)/3).

Offset 0, canonical program `A212972.P15305657758278643221`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212972 (n : ℕ) : ℤ :=
  A212972.P15305657758278643221.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A212979.P15688986192476150994

`3*∑[A250120(n)-A301291(n)]+1`
-/

namespace A212979.P15688986192476150994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A301291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A212979.P15688986192476150994

noncomputable section

/-- A212979: Number of (w,x,y) with all terms in {0,...,n} and range=average.

Offset 0, canonical program `A212979.P15688986192476150994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212979 (n : ℕ) : ℤ :=
  A212979.P15688986192476150994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213369.P8237522146268580617

`A318163(2*A003817(n)-n)`
-/

namespace A213369.P8237522146268580617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318163 (2 * A003817 n - (n : ℤ)).toNat

end

end A213369.P8237522146268580617

noncomputable section

/-- A213369: The twisted Stern sequence: a(0) = 0, a(1) = 1 and a(2n) = -a(n), a(2n + 1) = -a(n)-a(n + 1) for n>=1.

Offset 0, canonical program `A213369.P8237522146268580617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A213369 (n : ℕ) : ℤ :=
  A213369.P8237522146268580617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A213369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213544.P18315218714805834190

`(A011755(n+1)+1)/2`
-/

namespace A213544.P18315218714805834190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011755 (n + 1) + 1 : ℚ) / 2

end

end A213544.P18315218714805834190

noncomputable section

/-- A213544: Sum of numerators of Farey Sequence of order n.

Offset 1, canonical program `A213544.P18315218714805834190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011755, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213544 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A213544.P18315218714805834190.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011755, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213544.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214167.P16007822320014085442

`A056272(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A214167.P16007822320014085442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056272 (n + 1) - a (n - 1)

end

end A214167.P16007822320014085442

noncomputable section

/-- A214167: Number of 0..5 colorings of a 1 X (n+1) array circular in the n+1 direction with new values 0..5 introduced in row major order.

Offset 1, canonical program `A214167.P16007822320014085442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A214167 (n : ℕ) : ℤ :=
  A214167.P16007822320014085442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A214167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214678.P6950269482527157551

`A052382(eq[1, A007095(n+1)/A052382(n+1)]+1)`
-/

namespace A214678.P6950269482527157551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007095 (n + 1) : ℚ) / (A052382 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A214678.P6950269482527157551

noncomputable section

/-- A214678: a(n) = n represented in bijective base-8 numeration.

Offset 1, canonical program `A214678.P6950269482527157551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A214678 (n : ℕ) : ℤ :=
  A214678.P6950269482527157551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A214678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214888.P4270454209454101815

`∪[A090187(n+1), A141850(n+1)]`
-/

namespace A214888.P4270454209454101815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P4270454209454101815

noncomputable section

/-- A214888: Primes congruent to {2, 3} mod 11.

Offset 1, canonical program `A214888.P4270454209454101815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214888 (n : ℕ) : ℤ :=
  (A214888.P4270454209454101815.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215104.P3862985368621771494

`∪[A138623(n+1), A214890(n+1)]`
-/

namespace A215104.P3862985368621771494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P3862985368621771494

noncomputable section

/-- A215104: Primes congruent to {2, 3, 5} mod 17.

Offset 1, canonical program `A215104.P3862985368621771494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215104 (n : ℕ) : ℤ :=
  (A215104.P3862985368621771494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215105.P1088098343684687308

`∪[A102851(n+1), A215101(n+1)]`
-/

namespace A215105.P1088098343684687308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P1088098343684687308

noncomputable section

/-- A215105: Primes congruent to {2, 3, 5} mod 19.

Offset 1, canonical program `A215105.P1088098343684687308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215105 (n : ℕ) : ℤ :=
  (A215105.P1088098343684687308.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215153.P11999709609863500417

`∪[A129484(n+1), A214890(n+1)]`
-/

namespace A215153.P11999709609863500417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215153.P11999709609863500417

noncomputable section

/-- A215153: Primes congruent to {1, 2, 3} mod 17.

Offset 1, canonical program `A215153.P11999709609863500417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215153 (n : ℕ) : ℤ :=
  (A215153.P11999709609863500417.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215154.P4006258148339535244

`∪[A141868(n+1), A215101(n+1)]`
-/

namespace A215154.P4006258148339535244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215154.P4006258148339535244

noncomputable section

/-- A215154: Primes congruent to {1, 2, 3} mod 19.

Offset 1, canonical program `A215154.P4006258148339535244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215154 (n : ℕ) : ℤ :=
  (A215154.P4006258148339535244.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215163.P17122064836461897530

`∪[A141849(n+1), A141851(n+1)]`
-/

namespace A215163.P17122064836461897530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215163.P17122064836461897530

noncomputable section

/-- A215163: Primes congruent to {1, 4} mod 11.

Offset 1, canonical program `A215163.P17122064836461897530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215163 (n : ℕ) : ℤ :=
  (A215163.P17122064836461897530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215164.P17020110804136505988

`∪[A093191(n+1), A268753(n+1)]`
-/

namespace A215164.P17020110804136505988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215164.P17020110804136505988

noncomputable section

/-- A215164: Primes congruent to {1, 4} mod 13.

Offset 1, canonical program `A215164.P17020110804136505988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215164 (n : ℕ) : ℤ :=
  (A215164.P17020110804136505988.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215166.P4426320899168472041

`∪[A141868(n+1), A141870(n+1)]`
-/

namespace A215166.P4426320899168472041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215166.P4426320899168472041

noncomputable section

/-- A215166: Primes congruent to {1, 4} mod 19.

Offset 1, canonical program `A215166.P4426320899168472041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215166 (n : ℕ) : ℤ :=
  (A215166.P4426320899168472041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215167.P10655791794589351713

`∪[A090187(n+1), A141852(n+1)]`
-/

namespace A215167.P10655791794589351713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P10655791794589351713

noncomputable section

/-- A215167: Primes congruent to {2, 5} mod 11.

Offset 1, canonical program `A215167.P10655791794589351713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215167 (n : ℕ) : ℤ :=
  (A215167.P10655791794589351713.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215168.P5522760675368971835

`∪[A141858(n+1), A102732(n+1)]`
-/

namespace A215168.P5522760675368971835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P5522760675368971835

noncomputable section

/-- A215168: Primes congruent to {2, 5} mod 13.

Offset 1, canonical program `A215168.P5522760675368971835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215168 (n : ℕ) : ℤ :=
  (A215168.P5522760675368971835.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215169.P6984535108480389464

`∪[A138623(n+1), A140544(n+1)]`
-/

namespace A215169.P6984535108480389464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P6984535108480389464

noncomputable section

/-- A215169: Primes congruent to {2, 5} mod 17.

Offset 1, canonical program `A215169.P6984535108480389464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215169 (n : ℕ) : ℤ :=
  (A215169.P6984535108480389464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215170.P16196430733042655435

`∪[A102851(n+1), A141869(n+1)]`
-/

namespace A215170.P16196430733042655435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P16196430733042655435

noncomputable section

/-- A215170: Primes congruent to {2, 5} mod 19.

Offset 1, canonical program `A215170.P16196430733042655435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215170 (n : ℕ) : ℤ :=
  (A215170.P16196430733042655435.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215206.P4497237975855598041

`∪[A090187(n+1), A141854(n+1)]`
-/

namespace A215206.P4497237975855598041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215206.P4497237975855598041

noncomputable section

/-- A215206: Primes congruent to {2, 7} mod 11.

Offset 1, canonical program `A215206.P4497237975855598041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215206 (n : ℕ) : ℤ :=
  (A215206.P4497237975855598041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215207.P12348991230913771112

`∪[A140371(n+1), A141858(n+1)]`
-/

namespace A215207.P12348991230913771112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215207.P12348991230913771112

noncomputable section

/-- A215207: Primes congruent to {2, 7} mod 13.

Offset 1, canonical program `A215207.P12348991230913771112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215207 (n : ℕ) : ℤ :=
  (A215207.P12348991230913771112.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215208.P12872707927017093378

`∪[A138629(n+1), A140544(n+1)]`
-/

namespace A215208.P12872707927017093378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215208.P12872707927017093378

noncomputable section

/-- A215208: Primes congruent to {2, 7} mod 17.

Offset 1, canonical program `A215208.P12872707927017093378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215208 (n : ℕ) : ℤ :=
  (A215208.P12872707927017093378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215209.P9506204771007964000

`∪[A141869(n+1), A141872(n+1)]`
-/

namespace A215209.P9506204771007964000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215209.P9506204771007964000

noncomputable section

/-- A215209: Primes congruent to {2, 7} mod 19.

Offset 1, canonical program `A215209.P9506204771007964000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215209 (n : ℕ) : ℤ :=
  (A215209.P9506204771007964000.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215280.P13878712752042011737

`∪[A093191(n+1), A214889(n+1)]`
-/

namespace A215280.P13878712752042011737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215280.P13878712752042011737

noncomputable section

/-- A215280: Primes congruent to {2, 3, 4} mod 13.

Offset 1, canonical program `A215280.P13878712752042011737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215280 (n : ℕ) : ℤ :=
  (A215280.P13878712752042011737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215282.P15421644998039034553

`∪[A141870(n+1), A215101(n+1)]`
-/

namespace A215282.P15421644998039034553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215282.P15421644998039034553

noncomputable section

/-- A215282: Primes congruent to {2, 3, 4} mod 19.

Offset 1, canonical program `A215282.P15421644998039034553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215282 (n : ℕ) : ℤ :=
  (A215282.P15421644998039034553.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215304.P5744718279713109426

`∪[A129484(n+1), A215281(n+1)]`
-/

namespace A215304.P5744718279713109426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215304.P5744718279713109426

noncomputable section

/-- A215304: Primes congruent to {1, 2, 3, 4} mod 17.

Offset 1, canonical program `A215304.P5744718279713109426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215304 (n : ℕ) : ℤ :=
  (A215304.P5744718279713109426.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215316.P17217771670333190806

`∪[A138623(n+1), A215281(n+1)]`
-/

namespace A215316.P17217771670333190806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215316.P17217771670333190806

noncomputable section

/-- A215316: Primes congruent to {2, 3, 4, 5} mod 17.

Offset 1, canonical program `A215316.P17217771670333190806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215316 (n : ℕ) : ℤ :=
  (A215316.P17217771670333190806.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215352.P9939805677576000821

`∪[A140545(n+1), A215281(n+1)]`
-/

namespace A215352.P9939805677576000821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215352.P9939805677576000821

noncomputable section

/-- A215352: Primes congruent to {2, 3, 4, 6} mod 17.

Offset 1, canonical program `A215352.P9939805677576000821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215352 (n : ℕ) : ℤ :=
  (A215352.P9939805677576000821.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215355.P3196433915697977544

`∪[A102732(n+1), A215359(n+1)]`
-/

namespace A215355.P3196433915697977544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215355.P3196433915697977544

noncomputable section

/-- A215355: Primes congruent to {0, 2, 3, 4, 5} mod 13.

Offset 1, canonical program `A215355.P3196433915697977544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215355 (n : ℕ) : ℤ :=
  (A215355.P3196433915697977544.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215356.P17842161571957885222

`∪[A138623(n+1), A215360(n+1)]`
-/

namespace A215356.P17842161571957885222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215356.P17842161571957885222

noncomputable section

/-- A215356: Primes congruent to {0, 2, 3, 4, 5} mod 17.

Offset 1, canonical program `A215356.P17842161571957885222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215356 (n : ℕ) : ℤ :=
  (A215356.P17842161571957885222.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215357.P13591823837820838479

`∪[A102851(n+1), A215361(n+1)]`
-/

namespace A215357.P13591823837820838479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215357.P13591823837820838479

noncomputable section

/-- A215357: Primes congruent to {0, 2, 3, 4, 5} mod 19.

Offset 1, canonical program `A215357.P13591823837820838479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215357 (n : ℕ) : ℤ :=
  (A215357.P13591823837820838479.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215358.P13244640912977840726

`∪[A141851(n+1), A215374(n+1)]`
-/

namespace A215358.P13244640912977840726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215358.P13244640912977840726

noncomputable section

/-- A215358: Primes congruent to {0, 2, 3, 4} mod 11.

Offset 1, canonical program `A215358.P13244640912977840726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215358 (n : ℕ) : ℤ :=
  (A215358.P13244640912977840726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215378.P9622553553527907091

`∪[A141849(n+1), A215374(n+1)]`
-/

namespace A215378.P9622553553527907091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215378.P9622553553527907091

noncomputable section

/-- A215378: Primes congruent to {0, 1, 2, 3} mod 11.

Offset 1, canonical program `A215378.P9622553553527907091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215378 (n : ℕ) : ℤ :=
  (A215378.P9622553553527907091.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215380.P13737349323683384483

`∪[A129484(n+1), A215376(n+1)]`
-/

namespace A215380.P13737349323683384483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215380.P13737349323683384483

noncomputable section

/-- A215380: Primes congruent to {0, 1, 2, 3} mod 17.

Offset 1, canonical program `A215380.P13737349323683384483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215380 (n : ℕ) : ℤ :=
  (A215380.P13737349323683384483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215381.P1725177119798405766

`∪[A141868(n+1), A215377(n+1)]`
-/

namespace A215381.P1725177119798405766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215381.P1725177119798405766

noncomputable section

/-- A215381: Primes congruent to {0, 1, 2, 3} mod 19.

Offset 1, canonical program `A215381.P1725177119798405766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215381 (n : ℕ) : ℤ :=
  (A215381.P1725177119798405766.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215387.P8622939867060955229

`∪[A093350(n+1), A214889(n+1)]`
-/

namespace A215387.P8622939867060955229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215387.P8622939867060955229

noncomputable section

/-- A215387: Primes congruent to {2, 3, 6} mod 13.

Offset 1, canonical program `A215387.P8622939867060955229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215387 (n : ℕ) : ℤ :=
  (A215387.P8622939867060955229.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215388.P6479722193099368893

`∪[A140545(n+1), A214890(n+1)]`
-/

namespace A215388.P6479722193099368893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215388.P6479722193099368893

noncomputable section

/-- A215388: Primes congruent to {2, 3, 6} mod 17.

Offset 1, canonical program `A215388.P6479722193099368893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215388 (n : ℕ) : ℤ :=
  (A215388.P6479722193099368893.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215389.P9588713011954173466

`∪[A141871(n+1), A215101(n+1)]`
-/

namespace A215389.P9588713011954173466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215389.P9588713011954173466

noncomputable section

/-- A215389: Primes congruent to {2, 3, 6} mod 19.

Offset 1, canonical program `A215389.P9588713011954173466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215389 (n : ℕ) : ℤ :=
  (A215389.P9588713011954173466.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215390.P16701221075813804655

`∪[A090187(n+1), A141849(n+1)]`
-/

namespace A215390.P16701221075813804655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215390.P16701221075813804655

noncomputable section

/-- A215390: Primes congruent to {1, 2} mod 11.

Offset 1, canonical program `A215390.P16701221075813804655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215390 (n : ℕ) : ℤ :=
  (A215390.P16701221075813804655.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215391.P1080224131390404443

`∪[A141858(n+1), A268753(n+1)]`
-/

namespace A215391.P1080224131390404443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215391.P1080224131390404443

noncomputable section

/-- A215391: Primes congruent to {1, 2} mod 13.

Offset 1, canonical program `A215391.P1080224131390404443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215391 (n : ℕ) : ℤ :=
  (A215391.P1080224131390404443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215392.P5390637372741882320

`∪[A129484(n+1), A140544(n+1)]`
-/

namespace A215392.P5390637372741882320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P5390637372741882320

noncomputable section

/-- A215392: Primes congruent to {1, 2} mod 17.

Offset 1, canonical program `A215392.P5390637372741882320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215392 (n : ℕ) : ℤ :=
  (A215392.P5390637372741882320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215393.P13301529686558923603

`∪[A141868(n+1), A141869(n+1)]`
-/

namespace A215393.P13301529686558923603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215393.P13301529686558923603

noncomputable section

/-- A215393: Primes congruent to {1, 2} mod 19.

Offset 1, canonical program `A215393.P13301529686558923603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215393 (n : ℕ) : ℤ :=
  (A215393.P13301529686558923603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215667.P1287202979309322342

`(A141849(n+1)-1)/22`
-/

namespace A215667.P1287202979309322342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141849 (n + 1) - 1 : ℚ) / 22

end

end A215667.P1287202979309322342

noncomputable section

/-- A215667: 22n+1 is prime.

Offset 1, canonical program `A215667.P1287202979309322342`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215667 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A215667.P1287202979309322342.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A215747.P14723553648550715807

`(xor(1, n+1)*A015910(n+1))%(n+1)`
-/

namespace A215747.P14723553648550715807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.xor 1 (n + 1) : ℤ) * A015910 (n + 1)) (n + 1 : ℤ)

end

end A215747.P14723553648550715807

noncomputable section

/-- A215747: a(n) = (-2)^n mod n.

Offset 1, canonical program `A215747.P14723553648550715807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215747 (n : ℕ) : ℤ :=
  A215747.P14723553648550715807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216057.P3710212579143236931

`A045429(n+1)-A045356(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216057.P3710212579143236931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1) - A045356 (n + 1)

end

end A216057.P3710212579143236931

noncomputable section

/-- A216057: a(n) = A045429(n) - A045356(n).

Offset 1, canonical program `A216057.P3710212579143236931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045356, A045429, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A216057 (n : ℕ) : ℤ :=
  A216057.P3710212579143236931.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045356, A045429, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A216057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216677.P14396045950144953032

`∏{e}[n+1, A002265(#*A000005(n+1))]`
-/

namespace A216677.P14396045950144953032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A002265 ((Nat.factorization (f1 n) p : ℤ) * A000005 (n + 1)).toNat

end

end A216677.P14396045950144953032

noncomputable section

/-- A216677: Number of squares s^2 that divide the product of the divisors of n, such that rad(s) = rad(n), where rad(n) = A007947.

Offset 1, canonical program `A216677.P14396045950144953032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216677 (n : ℕ) : ℤ :=
  A216677.P14396045950144953032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216918.P12965838950278040036

`2*lt[2, A001221(2*n+1)]+1`
-/

namespace A216918.P12965838950278040036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A216918.P12965838950278040036

noncomputable section

/-- A216918: Odd numbers with at least 3 distinct prime factors.

Offset 1, canonical program `A216918.P12965838950278040036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216918 (n : ℕ) : ℤ :=
  (A216918.P12965838950278040036.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217009.P14255670570923127505

`A007094(A008589(n+1))`
-/

namespace A217009.P14255670570923127505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A008589 (n + 1)).toNat

end

end A217009.P14255670570923127505

noncomputable section

/-- A217009: Multiples of 7 in base 8.

Offset 1, canonical program `A217009.P14255670570923127505`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217009 (n : ℕ) : ℤ :=
  A217009.P14255670570923127505.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217009.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217442.P11818262742147486345

`lt[(n+1)%A000005(A006093(n+1)), 1]+1`
-/

namespace A217442.P11818262742147486345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000005 (A006093 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A217442.P11818262742147486345

noncomputable section

/-- A217442: Numbers n such that d(prime(n) - 1) | n, where d(k) is the number of divisors of k.

Offset 1, canonical program `A217442.P11818262742147486345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 803 terms. -/
def A217442 (n : ℕ) : ℤ :=
  (A217442.P11818262742147486345.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 803 terms. -/
def A217442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217558.P16797002515684870992

`A008599(A053836(n))-n`
-/

namespace A217558.P16797002515684870992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 (A053836 n).toNat - (n : ℤ)

end

end A217558.P16797002515684870992

noncomputable section

/-- A217558: Split-and-swap on 8-bit integers.

Offset 0, canonical program `A217558.P16797002515684870992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A217558 (n : ℕ) : ℤ :=
  A217558.P16797002515684870992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A217558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217740.P8591975626272247519

`A005101(A005101(n+1))`
-/

namespace A217740.P8591975626272247519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A005101 (n + 1)).toNat

end

end A217740.P8591975626272247519

noncomputable section

/-- A217740: Abundant numbers with abundant subscripts.

Offset 1, canonical program `A217740.P8591975626272247519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A217740 (n : ℕ) : ℤ :=
  A217740.P8591975626272247519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A217740.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A218291.P17440105116101161052

`filter[A274319(n+2), A079979(#)]`
-/

namespace A218291.P17440105116101161052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A218291.P17440105116101161052

noncomputable section

/-- A218291: Multiples of 6 such that the sum of their digits is also a multiple of 6.

Offset 1, canonical program `A218291.P17440105116101161052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A218291 (n : ℕ) : ℤ :=
  A218291.P17440105116101161052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A218291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218506.P14739239847812447530

`A308733(n+4)-char[4*(n+1)]`
-/

namespace A218506.P14739239847812447530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308733 (n + 4) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A218506.P14739239847812447530

noncomputable section

/-- A218506: Number of partitions of n in which any two parts differ by at most 4.

Offset 0, canonical program `A218506.P14739239847812447530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3242 terms. -/
def A218506 (n : ℕ) : ℤ :=
  A218506.P14739239847812447530.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3242 terms. -/
def A218506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219174.P8041433782300055859

`eq[1, A364252(n+1)]+1`
-/

namespace A219174.P8041433782300055859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A219174.P8041433782300055859

noncomputable section

/-- A219174: Numbers that have no other prime factors than 2 and/or Mersenne primes.

Offset 1, canonical program `A219174.P8041433782300055859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A219174 (n : ℕ) : ℤ :=
  (A219174.P8041433782300055859.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A219174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153362.P16095394824988375316

`A153364(n+1)+A153363(n+1)`
-/

namespace A153362.P16095394824988375316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153364 (n + 1) + A153363 (n + 1)

end

end A153362.P16095394824988375316

noncomputable section

/-- A153362: Number of zig-zag paths from top to bottom of a rectangle of width 9 with n rows.

Offset 1, canonical program `A153362.P16095394824988375316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A153362 (n : ℕ) : ℤ :=
  A153362.P16095394824988375316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A153362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163640.P1112088024654319400

`A163641(Δ[n²])`
-/

namespace A163640.P1112088024654319400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163641 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A163640.P1112088024654319400

noncomputable section

/-- A163640: The radical of the swinging factorial A056040 for odd indices.

Offset 0, canonical program `A163640.P1112088024654319400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A163640 (n : ℕ) : ℤ :=
  A163640.P1112088024654319400.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A163640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193510.P8592847620150791733

`∑{d}[∑{e}[n+1, #], A196563(#)]`
-/

namespace A193510.P8592847620150791733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A196563 d

end

end A193510.P8592847620150791733

noncomputable section

/-- A193510: Number of even divisors of Omega(n).

Offset 1, canonical program `A193510.P8592847620150791733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193510 (n : ℕ) : ℤ :=
  A193510.P8592847620150791733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194486.P15304985710096564444

`A211911(n+1)+record[A266222(n)]+n`
-/

namespace A194486.P15304985710096564444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211911 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ))

end

end A194486.P15304985710096564444

noncomputable section

/-- A194486: Number of ways to arrange 2 nonattacking knights on the lower triangle of an n X n board.

Offset 1, canonical program `A194486.P15304985710096564444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A194486 (n : ℕ) : ℤ :=
  A194486.P15304985710096564444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A194486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207250.P11170784498866221785

`sqrt(A206981(n+1))*sqrt(A207947(n+1))`
-/

namespace A207250.P11170784498866221785
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206981 (n + 1) : ℝ) * Real.sqrt (A207947 (n + 1) : ℝ)

end

end A207250.P11170784498866221785

noncomputable section

/-- A207250: Number of n X 4 0..1 arrays avoiding 0 0 1 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

Offset 1, canonical program `A207250.P11170784498866221785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A207250 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207250.P11170784498866221785.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A207250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152993.P5731568849682305493

`n+1-A000005(n+1)-A000720(n+1)+1`
-/

namespace A152993.P5731568849682305493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000005 (n + 1) - A000720 (n + 1) + 1

end

end A152993.P5731568849682305493

noncomputable section

/-- A152993: a(n) = n - d(n) - pi(n) + 1.

Offset 1, canonical program `A152993.P5731568849682305493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A152993 (n : ℕ) : ℤ :=
  A152993.P5731568849682305493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A152993.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157625.P6248619431147432614

`(n+1)!*A000984(n+1)*A034386(n+1)/A034386(2*(n+1))`
-/

namespace A157625.P6248619431147432614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) * A000984 (n + 1) * A034386 (n + 1) : ℚ) / (A034386 (2 * (n + 1)) : ℚ)

end

end A157625.P6248619431147432614

noncomputable section

/-- A157625: Product of the composite numbers between n+1 and 2n, both inclusive.

Offset 1, canonical program `A157625.P6248619431147432614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157625 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157625.P6248619431147432614.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157625.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157971.P3473186245332457378

`2*A091855(n+1)-1`
-/

namespace A157971.P3473186245332457378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091855 (n + 1) - 1

end

end A157971.P3473186245332457378

noncomputable section

/-- A157971: Odious twin locations: first members of pairs of consecutive odious numbers.

Offset 1, canonical program `A157971.P3473186245332457378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157971 (n : ℕ) : ℤ :=
  A157971.P3473186245332457378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158925.P1961462700023655035

`A025528(A158923(n+1))-(n+1)`
-/

namespace A158925.P1961462700023655035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A158923 (n + 1)).toNat - (n + 1 : ℤ)

end

end A158925.P1961462700023655035

noncomputable section

/-- A158925: Accumulated excess or deficit of prime powers in (1, A158924(n)].

Offset 1, canonical program `A158925.P1961462700023655035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9696 terms. -/
def A158925 (n : ℕ) : ℤ :=
  A158925.P1961462700023655035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9696 terms. -/
def A158925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163603.P6748960401507520383

`A000720(A045458(n+1))`
-/

namespace A163603.P6748960401507520383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A045458 (n + 1)).toNat

end

end A163603.P6748960401507520383

noncomputable section

/-- A163603: Numbers k such that prime(k) == 5 (mod 7).

Offset 1, canonical program `A163603.P6748960401507520383`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A045458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163603 (n : ℕ) : ℤ :=
  A163603.P6748960401507520383.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A045458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163603.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163644.P53681428900422597

`A034386(n)/A163641(n)`
-/

namespace A163644.P53681428900422597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (A163641 n : ℚ)

end

end A163644.P53681428900422597

noncomputable section

/-- A163644: Product of primes which do not exceed n and do not divide the swinging factorial n$ (A056040).

Offset 0, canonical program `A163644.P53681428900422597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, A163641, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163644 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163644.P53681428900422597.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, A163641, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163644.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165911.P1319005992793890420

`A121369(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A165911.P1319005992793890420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A121369 (n + 1) - a (n - 1)

end

end A165911.P1319005992793890420

noncomputable section

/-- A165911: a(n) = squarefree kernel (or radical) of a(n-1) + a(n-2), with a(0)=0 and a(1)=1.

Offset 0, canonical program `A165911.P1319005992793890420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165911 (n : ℕ) : ℤ :=
  A165911.P1319005992793890420.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168048.P5656807173339822994

`A062298(n+1)*A000720(n+1)`
-/

namespace A168048.P5656807173339822994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) * A000720 (n + 1)

end

end A168048.P5656807173339822994

noncomputable section

/-- A168048: a(n) = C(n)*Pi(n) where C(n) = number of nonprimes <= n, Pi(n) = number of primes <= n.

Offset 1, canonical program `A168048.P5656807173339822994`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A062298, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168048 (n : ℕ) : ℤ :=
  A168048.P5656807173339822994.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A062298, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173557.P15666735857375843373

`(-1)^A001221(n+1)*A023900(n+1)`
-/

namespace A173557.P15666735857375843373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001221 (n + 1) : ℤ) * (A023900 (n + 1) : ℚ)

end

end A173557.P15666735857375843373

noncomputable section

/-- A173557: a(n) = Product_{primes p dividing n} (p-1).

Offset 1, canonical program `A173557.P15666735857375843373`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A023900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173557 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A173557.P15666735857375843373.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A023900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173557.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175255.P1996567333261754558

`p?[A103982(n+1)]²`
-/

namespace A175255.P1996567333261754558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A175255.P1996567333261754558

noncomputable section

/-- A175255: Squares in A111153.

Offset 1, canonical program `A175255.P1996567333261754558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A175255 (n : ℕ) : ℤ :=
  A175255.P1996567333261754558.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A175255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179278.P6438880649128662562

`A018252(A062298(n+1))`
-/

namespace A179278.P6438880649128662562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A062298 (n + 1)).toNat

end

end A179278.P6438880649128662562

noncomputable section

/-- A179278: Largest nonprime integer <= n.

Offset 1, canonical program `A179278.P6438880649128662562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A062298, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A179278 (n : ℕ) : ℤ :=
  A179278.P6438880649128662562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A062298, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A179278.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182134.P15713018092136053472

`A000720(A249669(n+1))-(n+1)`
-/

namespace A182134.P15713018092136053472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A249669 (n + 1)).toNat - (n + 1 : ℤ)

end

end A182134.P15713018092136053472

noncomputable section

/-- A182134: Number of primes p such that prime(n) < p < prime(n)^(1 + 1/n).

Offset 1, canonical program `A182134.P15713018092136053472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9583 terms. -/
def A182134 (n : ℕ) : ℤ :=
  A182134.P15713018092136053472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9583 terms. -/
def A182134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182908.P17591284892401627303

`A025528(2^(n+1))`
-/

namespace A182908.P17591284892401627303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (2 ^ (n + 1))

end

end A182908.P17591284892401627303

noncomputable section

/-- A182908: Rank of 2^n when all prime powers (A246655) p^n, for n>=1, are jointly ranked.

Offset 1, canonical program `A182908.P17591284892401627303`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182908 (n : ℕ) : ℤ :=
  A182908.P17591284892401627303.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182908.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183098.P9579120176052522226

`A000203(n+1)-A183097(n+1)`
-/

namespace A183098.P9579120176052522226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A183097 (n + 1)

end

end A183098.P9579120176052522226

noncomputable section

/-- A183098: a(1) = 0, a(n) = sum of divisors d of n such that if d = Product_{i} (p_i^e_i) then not all e_i are > 1.

Offset 1, canonical program `A183098.P9579120176052522226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183098 (n : ℕ) : ℤ :=
  A183098.P9579120176052522226.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183099.P16071666692602553090

`A183097(n+1)-1`
-/

namespace A183099.P16071666692602553090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 (n + 1) - 1

end

end A183099.P16071666692602553090

noncomputable section

/-- A183099: a(n) = sum of powerful divisors d (excluding 1) of n.

Offset 1, canonical program `A183099.P16071666692602553090`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183099 (n : ℕ) : ℤ :=
  A183099.P16071666692602553090.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184615.P12937226738922486547

`and(A032766(n), A184617(n))`
-/

namespace A184615.P12937226738922486547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032766 n) (A184617 n)

end

end A184615.P12937226738922486547

noncomputable section

/-- A184615: Positive parts of the nonadjacent forms for n.

Offset 0, canonical program `A184615.P12937226738922486547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A184615 (n : ℕ) : ℤ :=
  A184615.P12937226738922486547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A184615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184858.P6696207604000516288

`comp[A184855(n+1)-1]+1`
-/

namespace A184858.P6696207604000516288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184855 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184858.P6696207604000516288

noncomputable section

/-- A184858: Numbers m such that prime(m) is of the form floor(k*e/(e-1)); complement of A184855.

Offset 1, canonical program `A184858.P6696207604000516288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184858 (n : ℕ) : ℤ :=
  (A184858.P6696207604000516288.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184937.P4249525031833234534

`A000984(n)+A088218(n)+A088218(n+1)`
-/

namespace A184937.P4249525031833234534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + A088218 n + A088218 (n + 1)

end

end A184937.P4249525031833234534

noncomputable section

/-- A184937: a(n) = binomial(2n, n) + binomial(2n-1, n-1) + binomial(2n+1, n).

Offset 0, canonical program `A184937.P4249525031833234534`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184937 (n : ℕ) : ℤ :=
  A184937.P4249525031833234534.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184937.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185642.P16752680788415332136

`round(A008472(n+2)/A001221(n+2))`
-/

namespace A185642.P16752680788415332136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008472 (n + 2) : ℚ) / (A001221 (n + 2) : ℚ))

end

end A185642.P16752680788415332136

noncomputable section

/-- A185642: Nearest integer to average of distinct prime factors of n.

Offset 2, canonical program `A185642.P16752680788415332136`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185642 (n : ℕ) : ℤ :=
  A185642.P16752680788415332136.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186303.P16068686725159694741

`A186302(n+1)+1`
-/

namespace A186303.P16068686725159694741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186302 (n + 1) + 1

end

end A186303.P16068686725159694741

noncomputable section

/-- A186303: a(n) = ( A007522(n)+1 )/2.

Offset 1, canonical program `A186303.P16068686725159694741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186303 (n : ℕ) : ℤ :=
  A186303.P16068686725159694741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186303.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192895.P9345364931797933177

`∑{d}[n+1, A000120(#)]-A005843(A000120(n+1))`
-/

namespace A192895.P9345364931797933177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000120 d - A005843 (A000120 (n + 1)).toNat

end

end A192895.P9345364931797933177

noncomputable section

/-- A192895: A000120-deficiency of n.

Offset 1, canonical program `A192895.P9345364931797933177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192895 (n : ℕ) : ℤ :=
  A192895.P9345364931797933177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194039.P14669893716291510677

`A023890((n+1)²+1)`
-/

namespace A194039.P14669893716291510677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 ((n + 1) ^ 2 + 1)

end

end A194039.P14669893716291510677

noncomputable section

/-- A194039: Sum of nonprime divisors of n^2 + 1.

Offset 1, canonical program `A194039.P14669893716291510677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023890, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194039 (n : ℕ) : ℤ :=
  A194039.P14669893716291510677.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023890, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204455.P9449319865665436464

`A099985(n+1)/2`
-/

namespace A204455.P9449319865665436464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099985 (n + 1) : ℚ) / 2

end

end A204455.P9449319865665436464

noncomputable section

/-- A204455: Squarefree product of all odd primes dividing n, and 1 if n is a power of 2: A099985/2.

Offset 1, canonical program `A204455.P9449319865665436464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204455 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A204455.P9449319865665436464.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206424.P17237868033879064005

`A109168(A006047(n))`
-/

namespace A206424.P17237868033879064005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (A006047 n).toNat

end

end A206424.P17237868033879064005

noncomputable section

/-- A206424: The number of 1's in row n of Pascal's Triangle (mod 3).

Offset 0, canonical program `A206424.P17237868033879064005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206424 (n : ℕ) : ℤ :=
  A206424.P17237868033879064005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208903.P7218260234787230813

`A208902(n+1)-2`
-/

namespace A208903.P7218260234787230813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208902 (n + 1) - 2

end

end A208903.P7218260234787230813

noncomputable section

/-- A208903: The sum over all bitstrings b of length n with at least two runs of the number of runs in b not immediately followed by a longer run.

Offset 1, canonical program `A208903.P7218260234787230813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A208902, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208903 (n : ℕ) : ℤ :=
  A208903.P7218260234787230813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A208902, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219097.P16650777398605658511

`A071986(2^n)`
-/

namespace A219097.P16650777398605658511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071986 (2 ^ n)

end

end A219097.P16650777398605658511

noncomputable section

/-- A219097: Parity of pi(2^n).

Offset 0, canonical program `A219097.P16650777398605658511`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219097 (n : ℕ) : ℤ :=
  A219097.P16650777398605658511.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219097.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A221205.P3574255995108441508

`round(sqrt(A006880(n)))`
-/

namespace A221205.P3574255995108441508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A006880 n : ℝ))

end

end A221205.P3574255995108441508

noncomputable section

/-- A221205: a(n) is the nearest integer to sqrt(pi(10^n)) (see A006880).

Offset 0, canonical program `A221205.P3574255995108441508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A221205 (n : ℕ) : ℤ :=
  A221205.P3574255995108441508.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A221205.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A154402.P17788350560659442917

`A305426(n+1)+A036987(n+1)`
-/

namespace A154402.P17788350560659442917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305426 (n + 1) + A036987 (n + 1)

end

end A154402.P17788350560659442917

noncomputable section

/-- A154402: Inverse Moebius transform of Fredholm-Rueppel sequence, cf. A036987.

Offset 1, canonical program `A154402.P17788350560659442917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A154402 (n : ℕ) : ℤ :=
  A154402.P17788350560659442917.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A154402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160890.P9259257314874269544

`7*A001615(n+1)`
-/

namespace A160890.P9259257314874269544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A001615 (n + 1)

end

end A160890.P9259257314874269544

noncomputable section

/-- A160890: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 3.

Offset 1, canonical program `A160890.P9259257314874269544`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160890 (n : ℕ) : ℤ :=
  A160890.P9259257314874269544.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160890.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160943.P15020166745385108868

`n+1+A007953(n)+A007953(n+2)`
-/

namespace A160943.P15020166745385108868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A007953 n + A007953 (n + 2)

end

end A160943.P15020166745385108868

noncomputable section

/-- A160943: a(n) = n + digital sum(n-1) + digital sum(n+1).

Offset 1, canonical program `A160943.P15020166745385108868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160943 (n : ℕ) : ℤ :=
  A160943.P15020166745385108868.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160943.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160944.P1125537009076295035

`(n+1)*A007953(n)*A007953(n+2)`
-/

namespace A160944.P1125537009076295035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007953 n * A007953 (n + 2)

end

end A160944.P1125537009076295035

noncomputable section

/-- A160944: a(n)= n * digital sum(n-1) * digital sum(n+1).

Offset 1, canonical program `A160944.P1125537009076295035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160944 (n : ℕ) : ℤ :=
  A160944.P1125537009076295035.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160949.P6883797465281388832

`n+1-A007953(n+2)`
-/

namespace A160949.P6883797465281388832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007953 (n + 2)

end

end A160949.P6883797465281388832

noncomputable section

/-- A160949: a(n) = n - digital sum(n+1).

Offset 1, canonical program `A160949.P6883797465281388832`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160949 (n : ℕ) : ℤ :=
  A160949.P6883797465281388832.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160949.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161351.P14732412019003608859

`n+1+A007953(n+1)+A007954(n+1)`
-/

namespace A161351.P14732412019003608859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A007953 (n + 1) + A007954 (n + 1)

end

end A161351.P14732412019003608859

noncomputable section

/-- A161351: a(n) = n + sum_of_digits(n) + product_of_digits(n).

Offset 1, canonical program `A161351.P14732412019003608859`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161351 (n : ℕ) : ℤ :=
  A161351.P14732412019003608859.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161351.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163449.P10187514071230630520

`A007088(A007582(n))`
-/

namespace A163449.P10187514071230630520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A007582 n).toNat

end

end A163449.P10187514071230630520

noncomputable section

/-- A163449: A007582 written in base 2.

Offset 0, canonical program `A163449.P10187514071230630520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163449 (n : ℕ) : ℤ :=
  A163449.P10187514071230630520.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163450.P5943626076533476686

`A007088(A028403(n+1))`
-/

namespace A163450.P5943626076533476686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A028403 (n + 1)).toNat

end

end A163450.P5943626076533476686

noncomputable section

/-- A163450: A028403 written in base 2.

Offset 1, canonical program `A163450.P5943626076533476686`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163450 (n : ℕ) : ℤ :=
  A163450.P5943626076533476686.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164046.P10135874413232948754

`A007088(A001445(n+2))`
-/

namespace A164046.P10135874413232948754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A001445 (n + 2)).toNat

end

end A164046.P10135874413232948754

noncomputable section

/-- A164046: A001445 written in base 2.

Offset 1, canonical program `A164046.P10135874413232948754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164046 (n : ℕ) : ℤ :=
  A164046.P10135874413232948754.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166238.P1577242016306719435

`val(record[A265263(A265263(n)+1+n)], 2)`
-/

namespace A166238.P1577242016306719435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 (A265263 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A166238.P1577242016306719435

noncomputable section

/-- A166238: Horizontal para-Narayana sequence: says which column of 3rd-order Zeckendorf array (starting column count at 0) contains n.

Offset 1, canonical program `A166238.P1577242016306719435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A166238 (n : ℕ) : ℤ :=
  (A166238.P1577242016306719435.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A166238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166311.P15573441771159262399

`eq[11, A007953(n)]`
-/

namespace A166311.P15573441771159262399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166311.P15573441771159262399

noncomputable section

/-- A166311: Numbers whose sum of digits is 11.

Offset 1, canonical program `A166311.P15573441771159262399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A166311 (n : ℕ) : ℤ :=
  (A166311.P15573441771159262399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A166311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169805.P17977796700678006772

`2*A007953(n)`
-/

namespace A169805.P17977796700678006772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007953 n

end

end A169805.P17977796700678006772

noncomputable section

/-- A169805: Twice the sum of the digits of n.

Offset 0, canonical program `A169805.P17977796700678006772`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169805 (n : ℕ) : ℤ :=
  A169805.P17977796700678006772.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169805.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A169964.P5476345950802300353

`5*A007088(n)`
-/

namespace A169964.P5476345950802300353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A007088 n

end

end A169964.P5476345950802300353

noncomputable section

/-- A169964: Numbers whose decimal expansion contains only 0's and 5's.

Offset 1, canonical program `A169964.P5476345950802300353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169964 (n : ℕ) : ℤ :=
  A169964.P5476345950802300353.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169964.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A169965.P4332122273764269296

`2*A007088(n)`
-/

namespace A169965.P4332122273764269296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007088 n

end

end A169965.P4332122273764269296

noncomputable section

/-- A169965: Numbers whose decimal expansion contains only 0's and 2's.

Offset 1, canonical program `A169965.P4332122273764269296`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169965 (n : ℕ) : ℤ :=
  A169965.P4332122273764269296.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169965.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A169966.P17934816075476850432

`3*A007088(n)`
-/

namespace A169966.P17934816075476850432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007088 n

end

end A169966.P17934816075476850432

noncomputable section

/-- A169966: Numbers whose decimal expansion contains only 0's and 3's.

Offset 1, canonical program `A169966.P17934816075476850432`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169966 (n : ℕ) : ℤ :=
  A169966.P17934816075476850432.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A169967.P11381469564767287368

`4*A007088(n)`
-/

namespace A169967.P11381469564767287368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007088 n

end

end A169967.P11381469564767287368

noncomputable section

/-- A169967: Numbers whose decimal expansion contains only 0's and 4's.

Offset 1, canonical program `A169967.P11381469564767287368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169967 (n : ℕ) : ℤ :=
  A169967.P11381469564767287368.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171181.P4361869760045339606

`A028242(n)-A007953(A057979(n))`
-/

namespace A171181.P4361869760045339606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n - A007953 (A057979 n).toNat

end

end A171181.P4361869760045339606

noncomputable section

/-- A171181: n followed by (n - sum of digits of n).

Offset 0, canonical program `A171181.P4361869760045339606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A171181 (n : ℕ) : ℤ :=
  A171181.P4361869760045339606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A171181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171758.P10354067191395966200

`A007088(A171757(n+1))`
-/

namespace A171758.P10354067191395966200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A171757 (n + 1)).toNat

end

end A171758.P10354067191395966200

noncomputable section

/-- A171758: Binary expansion of numbers in A171757.

Offset 1, canonical program `A171758.P10354067191395966200`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A171757, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171758 (n : ℕ) : ℤ :=
  A171758.P10354067191395966200.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A171757, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171758.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171764.P2806346960850218837

`A007088(A171763(n+1))`
-/

namespace A171764.P2806346960850218837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A171763 (n + 1)).toNat

end

end A171764.P2806346960850218837

noncomputable section

/-- A171764: Binary expansion of numbers in A171763.

Offset 1, canonical program `A171764.P2806346960850218837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A171763, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171764 (n : ℕ) : ℤ :=
  A171764.P2806346960850218837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A171763, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171764.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171782.P10207329375983446345

`A007088(A171781(n+1))`
-/

namespace A171782.P10207329375983446345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A171781 (n + 1)).toNat

end

end A171782.P10207329375983446345

noncomputable section

/-- A171782: Binary expansion of numbers in A171781.

Offset 1, canonical program `A171782.P10207329375983446345`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A171781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171782 (n : ℕ) : ℤ :=
  A171782.P10207329375983446345.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A171781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171782.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172159.P16282636252123325774

`A000032(lt[A219187(n), A000032(n)])`
-/

namespace A172159.P16282636252123325774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A172159.P16282636252123325774

noncomputable section

/-- A172159: Nonprime Lucas numbers.

Offset 1, canonical program `A172159.P16282636252123325774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A172159 (n : ℕ) : ℤ :=
  A172159.P16282636252123325774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A172159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173528.P11178338902106819806

`A053829(n)+1`
-/

namespace A173528.P11178338902106819806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n + 1

end

end A173528.P11178338902106819806

noncomputable section

/-- A173528: a(n) = 1 + sum of digits of n-1 written in base 8.

Offset 1, canonical program `A173528.P11178338902106819806`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173528 (n : ℕ) : ℤ :=
  A173528.P11178338902106819806.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173528.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174415.P16168713899393504005

`lt[gcd(n, A007088(n)), n]`
-/

namespace A174415.P16168713899393504005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A007088 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174415.P16168713899393504005

noncomputable section

/-- A174415: Numbers such that when expressed in base 2 and then interpreted in base 10, is not a multiple of the original number.

Offset 1, canonical program `A174415.P16168713899393504005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174415 (n : ℕ) : ℤ :=
  (A174415.P16168713899393504005.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175608.P4410175477287556198

`A008966((n+1)*(n+2)/2)`
-/

namespace A175608.P4410175477287556198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (SequenceMachineLib.roundAway (((n + 1) * (n + 2) : ℚ) / 2)).toNat

end

end A175608.P4410175477287556198

noncomputable section

/-- A175608: Characteristic function of squarefree triangular integers: 1 if n(n+1)/2 is squarefree else 0.

Offset 1, canonical program `A175608.P4410175477287556198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175608 (n : ℕ) : ℤ :=
  A175608.P4410175477287556198.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175608.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176894.P5448320031125589196

`A007088(n)+A002276(A070939(n))`
-/

namespace A176894.P5448320031125589196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n + A002276 (A070939 n).toNat

end

end A176894.P5448320031125589196

noncomputable section

/-- A176894: Increase each digit in the binary representation of n by 2.

Offset 0, canonical program `A176894.P5448320031125589196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176894 (n : ℕ) : ℤ :=
  A176894.P5448320031125589196.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179212.P17559837832965239992

`A008966(2*(n+1)+2)+A008966(2*(n+1)+1)-A008966(n+1)`
-/

namespace A179212.P17559837832965239992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (2 * (n + 1) + 2) + A008966 (2 * (n + 1) + 1) - A008966 (n + 1)

end

end A179212.P17559837832965239992

noncomputable section

/-- A179212: First differences of A179211.

Offset 1, canonical program `A179212.P17559837832965239992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179212 (n : ℕ) : ℤ :=
  A179212.P17559837832965239992.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179212.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179888.P556819442881326826

`A000695(n+1)+A000695(A003817(n+1))`
-/

namespace A179888.P556819442881326826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (n + 1) + A000695 (A003817 (n + 1)).toNat

end

end A179888.P556819442881326826

noncomputable section

/-- A179888: Starting with a(1)=2: if m is a term then also 4*m+1 and 4*m+2.

Offset 1, canonical program `A179888.P556819442881326826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A179888 (n : ℕ) : ℤ :=
  A179888.P556819442881326826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A179888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180018.P8181294393802451233

`A007953(n)-A000120(n)`
-/

namespace A180018.P8181294393802451233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A000120 n

end

end A180018.P8181294393802451233

noncomputable section

/-- A180018: Difference of sums of digits of n in decimal and in binary representation.

Offset 0, canonical program `A180018.P8181294393802451233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180018 (n : ℕ) : ℤ :=
  A180018.P8181294393802451233.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180018.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180019.P15303784812221257268

`A007953(n)-A053735(n)`
-/

namespace A180019.P15303784812221257268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A053735 n

end

end A180019.P15303784812221257268

noncomputable section

/-- A180019: Difference of sums of digits of n in decimal and in ternary representation.

Offset 0, canonical program `A180019.P15303784812221257268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180019 (n : ℕ) : ℤ :=
  A180019.P15303784812221257268.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180019.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A183102.P5997989869354397297

`∏{d}[A003557(n+1), A003557(n+1)/A003557(#)]`
-/

namespace A183102.P5997989869354397297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (A003557 (n + 1) : ℚ) / (A003557 d : ℚ)

end

end A183102.P5997989869354397297

noncomputable section

/-- A183102: a(n) = product of powerful divisors d of n.

Offset 1, canonical program `A183102.P5997989869354397297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183102 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A183102.P5997989869354397297.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187795.P6752293008617933550

`∑{d}[n+1, #*A294937(#)]`
-/

namespace A187795.P6752293008617933550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A294937 d

end

end A187795.P6752293008617933550

noncomputable section

/-- A187795: Sum of the abundant divisors of n.

Offset 1, canonical program `A187795.P6752293008617933550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187795 (n : ℕ) : ℤ :=
  A187795.P6752293008617933550.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190944.P11131727820817368207

`A007088(A008585(n))`
-/

namespace A190944.P11131727820817368207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A008585 n).toNat

end

end A190944.P11131727820817368207

noncomputable section

/-- A190944: Multiples of 3 written in base 2.

Offset 0, canonical program `A190944.P11131727820817368207`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190944 (n : ℕ) : ℤ :=
  A190944.P11131727820817368207.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193304.P5208595360684029488

`eq[1, A053824(A003557(n+1))]+1`
-/

namespace A193304.P5208595360684029488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A003557 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193304.P5208595360684029488

noncomputable section

/-- A193304: Squarefree numbers multiplied by powers of 5.

Offset 1, canonical program `A193304.P5208595360684029488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6337 terms. -/
def A193304 (n : ℕ) : ℤ :=
  (A193304.P5208595360684029488.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6337 terms. -/
def A193304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193339.P11456444240374608531

`A238526(n+1)+A057427(n)+1`
-/

namespace A193339.P11456444240374608531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1) + (A057427 n + 1)

end

end A193339.P11456444240374608531

noncomputable section

/-- A193339: Indices of record values in A001783.

Offset 1, canonical program `A193339.P11456444240374608531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193339 (n : ℕ) : ℤ :=
  A193339.P11456444240374608531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193772.P4613758967255747275

`eq[2*A000030(n), A007953(n)]`
-/

namespace A193772.P4613758967255747275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193772.P4613758967255747275

noncomputable section

/-- A193772: Nonnegative integers whose digital difference is 0.

Offset 1, canonical program `A193772.P4613758967255747275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A193772 (n : ℕ) : ℤ :=
  (A193772.P4613758967255747275.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A193772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197930.P3354598324668352109

`eq[A003557(n+1), A063994(n+1)]+1`
-/

namespace A197930.P3354598324668352109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A197930.P3354598324668352109

noncomputable section

/-- A197930: Numbers n such that the number of distinct residues in x^(n-1) (mod n), x=0..n-1, equals n.

Offset 1, canonical program `A197930.P3354598324668352109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A197930 (n : ℕ) : ℤ :=
  (A197930.P3354598324668352109.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A197930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198470.P9035181533126042493

`lt[A187793(n+1), n]+1`
-/

namespace A198470.P9035181533126042493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A198470.P9035181533126042493

noncomputable section

/-- A198470: Numbers that are larger than the sum of their deficient divisors.

Offset 1, canonical program `A198470.P9035181533126042493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1540 terms. -/
def A198470 (n : ℕ) : ℤ :=
  (A198470.P9035181533126042493.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1540 terms. -/
def A198470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203444.P8004498472754597362

`lt[0, char[A001615(n+1)]]`
-/

namespace A203444.P8004498472754597362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A203444.P8004498472754597362

noncomputable section

/-- A203444: Numbers in range of Dedekind Psi function: A001615.

Offset 1, canonical program `A203444.P8004498472754597362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1133 terms. -/
def A203444 (n : ℕ) : ℤ :=
  (A203444.P8004498472754597362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1133 terms. -/
def A203444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203639.P16011470496757075944

`A005361(n+1)*A003557(n+1)`
-/

namespace A203639.P16011470496757075944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A003557 (n + 1)

end

end A203639.P16011470496757075944

noncomputable section

/-- A203639: Multiplicative with a(p^e) = e*p^(e-1).

Offset 1, canonical program `A203639.P16011470496757075944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A203639 (n : ℕ) : ℤ :=
  A203639.P16011470496757075944.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A203639.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204093.P12830992095828407750

`6*A007088(n)`
-/

namespace A204093.P12830992095828407750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A007088 n

end

end A204093.P12830992095828407750

noncomputable section

/-- A204093: Numbers whose set of base-10 digits is {0,6}.

Offset 0, canonical program `A204093.P12830992095828407750`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204093 (n : ℕ) : ℤ :=
  A204093.P12830992095828407750.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204094.P6203249824050151500

`7*A007088(n)`
-/

namespace A204094.P6203249824050151500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A007088 n

end

end A204094.P6203249824050151500

noncomputable section

/-- A204094: Numbers whose set of base 10 digits is {0,7}.

Offset 0, canonical program `A204094.P6203249824050151500`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204094 (n : ℕ) : ℤ :=
  A204094.P6203249824050151500.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204095.P12496041222764549128

`8*A007088(n)`
-/

namespace A204095.P12496041222764549128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A007088 n

end

end A204095.P12496041222764549128

noncomputable section

/-- A204095: Numbers whose base 10 digits are a subset of {0, 8}.

Offset 0, canonical program `A204095.P12496041222764549128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204095 (n : ℕ) : ℤ :=
  A204095.P12496041222764549128.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206329.P6902662214066965316

`filter[A001043(n+1), A008966(#)]`
-/

namespace A206329.P6902662214066965316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A206329.P6902662214066965316

noncomputable section

/-- A206329: Squarefree sums of 2 successive primes.

Offset 1, canonical program `A206329.P6902662214066965316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. -/
def A206329 (n : ℕ) : ℤ :=
  A206329.P6902662214066965316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. -/
def A206329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206462.P3532272431253020228

`record[A000040(n+1)*A008966(A001043(n+1))]`
-/

namespace A206462.P3532272431253020228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008966 (A001043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206462.P3532272431253020228

noncomputable section

/-- A206462: Primes p such that p + nextprime(p) is a squarefree number (A005117).

Offset 1, canonical program `A206462.P3532272431253020228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. -/
def A206462 (n : ℕ) : ℤ :=
  A206462.P3532272431253020228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. -/
def A206462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212529.P13831011610352375140

`A007088(A005352(n+1))`
-/

namespace A212529.P13831011610352375140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A005352 (n + 1)).toNat

end

end A212529.P13831011610352375140

noncomputable section

/-- A212529: Negative numbers in base -2.

Offset 1, canonical program `A212529.P13831011610352375140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A212529 (n : ℕ) : ℤ :=
  A212529.P13831011610352375140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A212529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212591.P6513515405958816910

`floor((A000695(n+1)+A000695(n))/4)`
-/

namespace A212591.P6513515405958816910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000695 (n + 1) + A000695 n : ℚ) / 4⌋

end

end A212591.P6513515405958816910

noncomputable section

/-- A212591: a(n) is the smallest value of k for which A020986(k) = n.

Offset 1, canonical program `A212591.P6513515405958816910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A212591 (n : ℕ) : ℤ :=
  A212591.P6513515405958816910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A212591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213673.P3226696509757726817

`(n²-A000695(n))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213673.P3226696509757726817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A000695 n : ℚ) / 4

end

end A213673.P3226696509757726817

noncomputable section

/-- A213673: (n^2 - A000695(n))/4.

Offset 0, canonical program `A213673.P3226696509757726817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213673 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A213673.P3226696509757726817.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213673.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214282.P2833437964249261638

`A214283(n+1)+A001405(n+1)`
-/

namespace A214282.P2833437964249261638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214283 (n + 1) + A001405 (n + 1)

end

end A214282.P2833437964249261638

noncomputable section

/-- A214282: Largest Euler characteristic of a downset on an n-dimensional cube.

Offset 1, canonical program `A214282.P2833437964249261638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214282 (n : ℕ) : ℤ :=
  A214282.P2833437964249261638.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214282.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217856.P13198607299286411855

`eq[3, A318475(n+1)]+1`
-/

namespace A217856.P13198607299286411855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318475 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A217856.P13198607299286411855

noncomputable section

/-- A217856: Numbers with three prime factors, not necessarily distinct, except cubes of primes.

Offset 1, canonical program `A217856.P13198607299286411855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217856 (n : ℕ) : ℤ :=
  (A217856.P13198607299286411855.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217856.provenance : SequenceMachineLib.Provenance := .conjectured

