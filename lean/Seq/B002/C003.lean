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
import Seq.B000.C030
import Seq.B000.C031
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

/-! ## A153881.P9465678201251640828

`1-2*A057427(n)`
-/

namespace A153881.P9465678201251640828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A057427 n

end

end A153881.P9465678201251640828

noncomputable section

/-- A153881: 1 followed by -1, -1, -1, ... .

Offset 1, canonical program `A153881.P9465678201251640828`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153881 (n : ℕ) : ℤ :=
  A153881.P9465678201251640828.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153881.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157240.P7590378561638020432

`A128018(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A157240.P7590378561638020432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128018 n + 1

end

end A157240.P7590378561638020432

noncomputable section

/-- A157240: a(n) = A128018(n) + 1.

Offset 0, canonical program `A157240.P7590378561638020432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157240 (n : ℕ) : ℤ :=
  A157240.P7590378561638020432.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157240.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A178630.P17888707342845020036

`18*A002477(n+1)`
-/

namespace A178630.P17888707342845020036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A002477 (n + 1)

end

end A178630.P17888707342845020036

noncomputable section

/-- A178630: a(n) = 18*((10^n - 1)/9)^2.

Offset 1, canonical program `A178630.P17888707342845020036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178630 (n : ℕ) : ℤ :=
  A178630.P17888707342845020036.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178631.P3970677135061082991

`27*A002477(n+1)`
-/

namespace A178631.P3970677135061082991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A002477 (n + 1)

end

end A178631.P3970677135061082991

noncomputable section

/-- A178631: a(n) = 27*((10^n - 1)/9)^2.

Offset 1, canonical program `A178631.P3970677135061082991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178631 (n : ℕ) : ℤ :=
  A178631.P3970677135061082991.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178631.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178632.P14241905561249567426

`45*A002477(n+1)`
-/

namespace A178632.P14241905561249567426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 * A002477 (n + 1)

end

end A178632.P14241905561249567426

noncomputable section

/-- A178632: a(n) = 45*((10^n - 1)/9)^2.

Offset 1, canonical program `A178632.P14241905561249567426`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178632 (n : ℕ) : ℤ :=
  A178632.P14241905561249567426.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178632.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178633.P16131813257675578585

`54*A002477(n+1)`
-/

namespace A178633.P16131813257675578585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  54 * A002477 (n + 1)

end

end A178633.P16131813257675578585

noncomputable section

/-- A178633: a(n) = 54*((10^n - 1)/9)^2.

Offset 1, canonical program `A178633.P16131813257675578585`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178633 (n : ℕ) : ℤ :=
  A178633.P16131813257675578585.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178634.P2890709177255480312

`63*A002477(n+1)`
-/

namespace A178634.P2890709177255480312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  63 * A002477 (n + 1)

end

end A178634.P2890709177255480312

noncomputable section

/-- A178634: a(n) = 63*((10^n - 1)/9)^2.

Offset 1, canonical program `A178634.P2890709177255480312`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178634 (n : ℕ) : ℤ :=
  A178634.P2890709177255480312.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178634.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178635.P10645001139382443326

`72*A002477(n+1)`
-/

namespace A178635.P10645001139382443326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  72 * A002477 (n + 1)

end

end A178635.P10645001139382443326

noncomputable section

/-- A178635: a(n) = 72*((10^n - 1)/9)^2.

Offset 1, canonical program `A178635.P10645001139382443326`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178635 (n : ℕ) : ℤ :=
  A178635.P10645001139382443326.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178635.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A179870.P9037661965348910516

`A175430(n+1)²`
-/

namespace A179870.P9037661965348910516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175430 (n + 1) ^ 2

end

end A179870.P9037661965348910516

noncomputable section

/-- A179870: a(n) = ((n-1)! * (n+1)!) ^ 2.

Offset 1, canonical program `A179870.P9037661965348910516`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179870 (n : ℕ) : ℤ :=
  A179870.P9037661965348910516.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179870.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A186416.P3937847066975652994

`A000108(n)^3*A000984(n)`
-/

namespace A186416.P3937847066975652994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 3 * A000984 n

end

end A186416.P3937847066975652994

noncomputable section

/-- A186416: a(n) = binomial(2n,n)^4/(n+1)^3.

Offset 0, canonical program `A186416.P3937847066975652994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186416 (n : ℕ) : ℤ :=
  A186416.P3937847066975652994.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186416.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A188662.P1715932689932745491

`A005809(n)²`
-/

namespace A188662.P1715932689932745491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n ^ 2

end

end A188662.P1715932689932745491

noncomputable section

/-- A188662: Binomial coefficients: a(n) = binomial(3*n,n)^2.

Offset 0, canonical program `A188662.P1715932689932745491`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188662 (n : ℕ) : ℤ :=
  A188662.P1715932689932745491.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188662.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A201555.P7616371346376601089

`A000984(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A201555.P7616371346376601089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n ^ 2)

end

end A201555.P7616371346376601089

noncomputable section

/-- A201555: a(n) = C(2*n^2,n^2) = A000984(n^2), where A000984 is the central binomial coefficients.

Offset 0, canonical program `A201555.P7616371346376601089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A201555 (n : ℕ) : ℤ :=
  A201555.P7616371346376601089.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A201555.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A169805.P17977796700678006772`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A169805 (n : ℕ) : ℤ :=
  A169805.P17977796700678006772.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A169805.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A171557.P6596492913375790893

`3^n*A168053(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171557.P6596492913375790893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A168053 n

end

end A171557.P6596492913375790893

noncomputable section

/-- A171557: a(n) = 3^n*A168053(n).

Offset 0, canonical program `A171557.P6596492913375790893`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171557 (n : ℕ) : ℤ :=
  A171557.P6596492913375790893.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171557.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A178143.P1622660081699619853

`A010675(n)+A021115(n)`
-/

namespace A178143.P1622660081699619853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010675 n + A021115 n

end

end A178143.P1622660081699619853

noncomputable section

/-- A178143: Sum of squares d^2 over the divisors d=2 and/or d=3 of n.

Offset 1, canonical program `A178143.P1622660081699619853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178143 (n : ℕ) : ℤ :=
  A178143.P1622660081699619853.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178143.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A180018.P8181294393802451233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180018 (n : ℕ) : ℤ :=
  A180018.P8181294393802451233.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180018.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A180019.P15303784812221257268`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180019 (n : ℕ) : ℤ :=
  A180019.P15303784812221257268.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180019.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192447.P2362002554387188389

`(A373584(n+1)-1)/3`
-/

namespace A192447.P2362002554387188389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373584 (n + 1) - 1 : ℚ) / 3

end

end A192447.P2362002554387188389

noncomputable section

/-- A192447: a(n) = n*(n-1)/2 if this is even, otherwise (n*(n-1)/2) + 1.

Offset 1, canonical program `A192447.P2362002554387188389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192447 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A192447.P2362002554387188389.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192447.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A140408.P7063190628928274226

`A133622(A027434(n+1)+2)-2`
-/

namespace A140408.P7063190628928274226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (A027434 (n + 1) + 2).toNat - 2

end

end A140408.P7063190628928274226

noncomputable section

/-- A140408: Irregular triangle T(n,k) read by rows: n repetitions of -1 followed by (n+1) repetitions of n+1.

Offset 0, canonical program `A140408.P7063190628928274226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A140408 (n : ℕ) : ℤ :=
  A140408.P7063190628928274226.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A140408.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140662.P11570026533872474507

`∑[A002026(n+1)]`
-/

namespace A140662.P11570026533872474507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140662.P11570026533872474507

noncomputable section

/-- A140662: Number of possible column states for self-avoiding polygons in a slit of width n.

Offset 1, canonical program `A140662.P11570026533872474507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A140662 (n : ℕ) : ℤ :=
  A140662.P11570026533872474507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A140662.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140782.P14599002470129592250

`Δ[A160664(n)]*A011583(n+1)`
-/

namespace A140782.P14599002470129592250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011583 (n + 1)

end

end A140782.P14599002470129592250

noncomputable section

/-- A140782: a(n) = sigma(n) * Kronecker(13, n).

Offset 1, canonical program `A140782.P14599002470129592250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140782 (n : ℕ) : ℤ :=
  A140782.P14599002470129592250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140824.P610267472179100939

`A005248(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A140824.P610267472179100939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A005248 (n - 1) - a (n - 2)

end

end A140824.P610267472179100939

noncomputable section

/-- A140824: Expansion of (x-x^3)/(1-3*x+2*x^2-3*x^3+x^4).

Offset 0, canonical program `A140824.P610267472179100939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A140824 (n : ℕ) : ℤ :=
  A140824.P610267472179100939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A140824.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A141042.P12285230956883306560

`(n+1)*(A046933(n+1)+1)`
-/

namespace A141042.P12285230956883306560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A046933 (n + 1) + 1)

end

end A141042.P12285230956883306560

noncomputable section

/-- A141042: Product of n and the n-th gap between primes: a(n) = n*A001223(n).

Offset 1, canonical program `A141042.P12285230956883306560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141042 (n : ℕ) : ℤ :=
  A141042.P12285230956883306560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141042.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A141791.P18036711199778843654

`p?[A073169(n+1)]`
-/

namespace A141791.P18036711199778843654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P18036711199778843654

noncomputable section

/-- A141791: Primes of the form c(n)-n, where c(n)=n-th composite.

Offset 1, canonical program `A141791.P18036711199778843654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141791 (n : ℕ) : ℤ :=
  A141791.P18036711199778843654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141791.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144112.P9254676889423699721

`A028310(Δ[A056942(n)])`
-/

namespace A144112.P9254676889423699721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A144112.P9254676889423699721

noncomputable section

/-- A144112: Weight array W={w(i,j)} of the natural number array A000027.

Offset 1, canonical program `A144112.P9254676889423699721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144112 (n : ℕ) : ℤ :=
  A144112.P9254676889423699721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144112.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144611.P4502785910793771792

`and(1, A006337(C(n, a(n-1))))` with `a(0)=0`
-/

namespace A144611.P4502785910793771792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land 1 (A006337 (Nat.choose n (a (n - 1)).toNat))

end

end A144611.P4502785910793771792

noncomputable section

/-- A144611: Sturmian word of slope 2-sqrt(2).

Offset 0, canonical program `A144611.P4502785910793771792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144611 (n : ℕ) : ℤ :=
  A144611.P4502785910793771792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144635.P15969292622186424102

`A000984(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A144635.P15969292622186424102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 n + 5 * a (n - 1)

end

end A144635.P15969292622186424102

noncomputable section

/-- A144635: a(n) = 5^n*Sum_{ k=0..n } binomial(2*k,k)/5^k.

Offset 0, canonical program `A144635.P15969292622186424102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A144635 (n : ℕ) : ℤ :=
  A144635.P15969292622186424102.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A144635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144706.P9831127724178421571

`A000984(n)*A122553(n)`
-/

namespace A144706.P9831127724178421571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A122553 n

end

end A144706.P9831127724178421571

noncomputable section

/-- A144706: Central coefficients of the triangle A132047.

Offset 0, canonical program `A144706.P9831127724178421571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A144706 (n : ℕ) : ℤ :=
  A144706.P9831127724178421571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A144706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144902.P12756376953467273990

`∑[A144901(n)]`
-/

namespace A144902.P12756376953467273990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144902.P12756376953467273990

noncomputable section

/-- A144902: Expansion of x/((1-x-x^3)*(1-x)^8).

Offset 0, canonical program `A144902.P12756376953467273990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A144902 (n : ℕ) : ℤ :=
  A144902.P12756376953467273990.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A144902.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A145136.P11305681542846819968

`∑[A145135(n)]`
-/

namespace A145136.P11305681542846819968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145136.P11305681542846819968

noncomputable section

/-- A145136: Expansion of x/((1 - x - x^4)*(1 - x)^7).

Offset 0, canonical program `A145136.P11305681542846819968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. -/
def A145136 (n : ℕ) : ℤ :=
  A145136.P11305681542846819968.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. -/
def A145136.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A145392.P1031704144359577095

`(A000203(n+1)+A002654(n+1))/2`
-/

namespace A145392.P1031704144359577095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + A002654 (n + 1) : ℚ) / 2

end

end A145392.P1031704144359577095

noncomputable section

/-- A145392: Number of inequivalent sublattices of index n in square lattice, where two sublattices are considered equivalent if one can be rotated by a multiple of Pi/2 to give the other.

Offset 1, canonical program `A145392.P1031704144359577095`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145392 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145392.P1031704144359577095.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145392.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A145885.P13448261102684226232

`n*A116385(2*n)`
-/

namespace A145885.P13448261102684226232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A116385 (2 * n)

end

end A145885.P13448261102684226232

noncomputable section

/-- A145885: a(n) = (n-1)^2*binomial(2n,n)/(2*(n+1)).

Offset 1, canonical program `A145885.P13448261102684226232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A145885 (n : ℕ) : ℤ :=
  A145885.P13448261102684226232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A145885.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A147592.P7422431244411942835

`A000931(n+2)-Δ[A104769(n)]`
-/

namespace A147592.P7422431244411942835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 2) - (f1 (n + 1) - f1 n)

end

end A147592.P7422431244411942835

noncomputable section

/-- A147592: Expansion of 1/(1 + x - x^2 - 3*x^3 - x^4 + x^5 + x^6).

Offset 0, canonical program `A147592.P7422431244411942835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 824 terms. -/
def A147592 (n : ℕ) : ℤ :=
  A147592.P7422431244411942835.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 824 terms. -/
def A147592.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A147965.P3629963038767803732

`1-A046933(n+1)+n`
-/

namespace A147965.P3629963038767803732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A046933 (n + 1) + (n : ℤ)

end

end A147965.P3629963038767803732

noncomputable section

/-- A147965: a(n) = n + 1 - A001223(n) = n - A046933(n). In words, a(n) is the difference between n+1 and the n-th gap between primes.

Offset 1, canonical program `A147965.P3629963038767803732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147965 (n : ℕ) : ℤ :=
  A147965.P3629963038767803732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147965.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A152085.P13875307143407310086

`A152084(n+1)+2^floor(log2(A152084(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152085.P13875307143407310086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152084 (n + 1) + (2 ^ Nat.log 2 (A152084 (n + 1)).toNat : ℤ)

end

end A152085.P13875307143407310086

noncomputable section

/-- A152085: a(n) = A152084(n) + 2^floor(log_2(A152084(n))).

Offset 1, canonical program `A152085.P13875307143407310086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152084, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152085 (n : ℕ) : ℤ :=
  A152085.P13875307143407310086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152084, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152085.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A152560.P8053713699117801611

`A131205(A005578(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152560.P8053713699117801611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131205 (A005578 n).toNat

end

end A152560.P8053713699117801611

noncomputable section

/-- A152560: a(n) = A131205(A005578(n)).

Offset 0, canonical program `A152560.P8053713699117801611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131205, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152560 (n : ℕ) : ℤ :=
  A152560.P8053713699117801611.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131205, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152560.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A152678.P10739465606357156192

`∑{d}[A028983(n+1), #]`
-/

namespace A152678.P10739465606357156192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A152678.P10739465606357156192

noncomputable section

/-- A152678: Even members of A000203.

Offset 1, canonical program `A152678.P10739465606357156192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152678 (n : ℕ) : ℤ :=
  (A152678.P10739465606357156192.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152678.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A152988.P2080984935002552249

`A152770(A000108(n))`
-/

namespace A152988.P2080984935002552249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A000108 n).toNat

end

end A152988.P2080984935002552249

noncomputable section

/-- A152988: Sum of proper divisors minus the number of proper divisors of Catalan number A000108(n).

Offset 0, canonical program `A152988.P2080984935002552249`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152988 (n : ℕ) : ℤ :=
  A152988.P2080984935002552249.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152988.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A153334.P13771578035933822493

`A001792(n)-2*A100071(n)`
-/

namespace A153334.P13771578035933822493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - 2 * A100071 n

end

end A153334.P13771578035933822493

noncomputable section

/-- A153334: Number of zig-zag paths from top to bottom of an n X n square whose color is that of the top right corner.

Offset 1, canonical program `A153334.P13771578035933822493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A153334 (n : ℕ) : ℤ :=
  A153334.P13771578035933822493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A153334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153335.P14857227922523687050

`A001792(n)-A100071(n+1)`
-/

namespace A153335.P14857227922523687050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A100071 (n + 1)

end

end A153335.P14857227922523687050

noncomputable section

/-- A153335: Number of zig-zag paths from top to bottom of an n X n square whose color is not that of the top right corner.

Offset 1, canonical program `A153335.P14857227922523687050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A153335 (n : ℕ) : ℤ :=
  A153335.P14857227922523687050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A153335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153338.P1777652245370534979

`2*A018218(n)`
-/

namespace A153338.P1777652245370534979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018218 n

end

end A153338.P1777652245370534979

noncomputable section

/-- A153338: Number of zig-zag paths from top to bottom of a 2n-1 by 2n-1 square whose color is not that of the top right corner.

Offset 1, canonical program `A153338.P1777652245370534979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A153338 (n : ℕ) : ℤ :=
  A153338.P1777652245370534979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A153338.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A153825.P2086424196053372448

`A152770(A000142(n))`
-/

namespace A153825.P2086424196053372448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A000142 n).toNat

end

end A153825.P2086424196053372448

noncomputable section

/-- A153825: Sum of proper divisors minus the number of proper divisors of n!.

Offset 0, canonical program `A153825.P2086424196053372448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153825 (n : ℕ) : ℤ :=
  A153825.P2086424196053372448.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153825.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A153848.P12709393412551249424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153848 (n : ℕ) : ℤ :=
  A153848.P12709393412551249424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A154349.P14725127565816757340

`A152770(A001006(n))`
-/

namespace A154349.P14725127565816757340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A001006 n).toNat

end

end A154349.P14725127565816757340

noncomputable section

/-- A154349: Sum of proper divisors minus the number of proper divisors of Motzkin number A001006(n).

Offset 0, canonical program `A154349.P14725127565816757340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A154349 (n : ℕ) : ℤ :=
  A154349.P14725127565816757340.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A154349.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A156675.P8097993881942059269

`17*A094028(n)`
-/

namespace A156675.P8097993881942059269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A094028 n

end

end A156675.P8097993881942059269

noncomputable section

/-- A156675: a(n) = 17*((100^(n+1) - 1)/99).

Offset 0, canonical program `A156675.P8097993881942059269`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156675 (n : ℕ) : ℤ :=
  A156675.P8097993881942059269.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156675.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A157128.P3121123341214688159

`A099470(n+1)/Δ[abs(A099471(n))]`
-/

namespace A157128.P3121123341214688159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099471 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099470 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A157128.P3121123341214688159

noncomputable section

/-- A157128: Expansion of (1 - x - x^2 + x^3 - x^5) / ((1 + x)^2*(1 - x + x^2)^2).

Offset 0, canonical program `A157128.P3121123341214688159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157128 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157128.P3121123341214688159.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157130.P15334453636058034094

`or(∑[A128201(n+1)], A000007(n))`
-/

namespace A157130.P15334453636058034094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A157130.P15334453636058034094

noncomputable section

/-- A157130: Partial sums of A128201.

Offset 1, canonical program `A157130.P15334453636058034094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157130 (n : ℕ) : ℤ :=
  A157130.P15334453636058034094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157264.P9433360168294747943

`A154514(4*n+1)`
-/

namespace A157264.P9433360168294747943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154514 (4 * n + 1)

end

end A157264.P9433360168294747943

noncomputable section

/-- A157264: a(n) = 10368*n^2 - 15840*n + 6049.

Offset 1, canonical program `A157264.P9433360168294747943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A157264 (n : ℕ) : ℤ :=
  A157264.P9433360168294747943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A157264.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A157687.P3194273760277078501`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156728, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157687 (n : ℕ) : ℤ :=
  A157687.P3194273760277078501.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156728, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157687.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A158525.P8352468504798026345

`2*A035344(n+2)`
-/

namespace A158525.P8352468504798026345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035344 (n + 2)

end

end A158525.P8352468504798026345

noncomputable section

/-- A158525: Number of connected spanning subgraphs and number of forests of the wheel graph W_n.

Offset 4, canonical program `A158525.P8352468504798026345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A158525 (n : ℕ) : ℤ :=
  A158525.P8352468504798026345.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A158525.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A158916.P6269727776857276970`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158916 (n : ℕ) : ℤ :=
  A158916.P6269727776857276970.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158916.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158935.P5779354096368989538

`A158927(n+1)+A158927(n)`
-/

namespace A158935.P5779354096368989538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158927 (n + 1) + A158927 n

end

end A158935.P5779354096368989538

noncomputable section

/-- A158935: a(n)= -3a(n-1)-3a(n-2)-2a(n-3), n>3. a(0)=4, a(1)=4, a(2)=-5, a(3)=4.

Offset 0, canonical program `A158935.P5779354096368989538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A158935 (n : ℕ) : ℤ :=
  A158935.P5779354096368989538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A158935.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A159710.P6503886363121990557

`n*A000431((2*n)%(n+1))`
-/

namespace A159710.P6503886363121990557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000431 (2 * n % (n + 1))

end

end A159710.P6503886363121990557

noncomputable section

/-- A159710: Number of permutations of 1..n arranged in a circle with exactly 2 local maxima.

Offset 0, canonical program `A159710.P6503886363121990557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A159710 (n : ℕ) : ℤ :=
  A159710.P6503886363121990557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A159710.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A160244.P4742269659080020249

`A171516(n)+A113935(n+1)`
-/

namespace A160244.P4742269659080020249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 n + A113935 (n + 1)

end

end A160244.P4742269659080020249

noncomputable section

/-- A160244: A104449(n+1)+prime(n), sum of a Lucas and the prime sequence.

Offset 1, canonical program `A160244.P4742269659080020249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A160244 (n : ℕ) : ℤ :=
  A160244.P4742269659080020249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A160244.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A160483.P5032807256580291187

`Δ[∑[A195605(n)]*A033999(n)]`
-/

namespace A160483.P5032807256580291187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195605 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160483.P5032807256580291187

noncomputable section

/-- A160483: Second right hand column of the Beta triangle A160480.

Offset 1, canonical program `A160483.P5032807256580291187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160483 (n : ℕ) : ℤ :=
  A160483.P5032807256580291187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160483.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A161765.P288483815487018292

`A000120(n+1)-n%A000120(n+1)+n`
-/

namespace A161765.P288483815487018292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - Int.tmod (n : ℤ) (A000120 (n + 1)) + (n : ℤ)

end

end A161765.P288483815487018292

noncomputable section

/-- A161765: a(n) is the smallest multiple of {the number of 1's in the binary representation of n} that is >= n.

Offset 1, canonical program `A161765.P288483815487018292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161765 (n : ℕ) : ℤ :=
  A161765.P288483815487018292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161765.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A161790.P974738305676753531

`eq[1, A161789(n+1)]+1`
-/

namespace A161790.P974738305676753531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161789 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A161790.P974738305676753531

noncomputable section

/-- A161790: The positive integer n is included if 1 is the largest integer of the form {2^k - 1} to divide n.

Offset 1, canonical program `A161790.P974738305676753531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5485 terms. -/
def A161790 (n : ℕ) : ℤ :=
  (A161790.P974738305676753531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5485 terms. -/
def A161790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161825.P3582035755385978783

`gcd(A022998(n+1), A055945(n+1))`
-/

namespace A161825.P3582035755385978783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022998 (n + 1)) (A055945 (n + 1))

end

end A161825.P3582035755385978783

noncomputable section

/-- A161825: a(n) is the GCD of n and {the number made by reversing the order of the digits of n written in binary}.

Offset 1, canonical program `A161825.P3582035755385978783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161825 (n : ℕ) : ℤ :=
  (A161825.P3582035755385978783.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161983.P7161045687543228790

`A007606(n+1)-1`
-/

namespace A161983.P7161045687543228790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (n + 1) - 1

end

end A161983.P7161045687543228790

noncomputable section

/-- A161983: Irregular triangle read by rows: the group of 2n + 1 integers starting at A014105(n).

Offset 0, canonical program `A161983.P7161045687543228790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161983 (n : ℕ) : ℤ :=
  A161983.P7161045687543228790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162194.P3925901430084621444

`∑{d}[A018252(n+1), #]`
-/

namespace A162194.P3925901430084621444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A162194.P3925901430084621444

noncomputable section

/-- A162194: Sum of divisors of nonprime number A018252(n).

Offset 1, canonical program `A162194.P3925901430084621444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162194 (n : ℕ) : ℤ :=
  (A162194.P3925901430084621444.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162337.P18201033645645115533

`p?[or(1, A001748(n+1)+1)]`
-/

namespace A162337.P18201033645645115533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001748 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162337.P18201033645645115533

noncomputable section

/-- A162337: Primes p such that floor(p/3) is prime.

Offset 1, canonical program `A162337.P18201033645645115533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4360 terms. -/
def A162337 (n : ℕ) : ℤ :=
  A162337.P18201033645645115533.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4360 terms. -/
def A162337.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A162867.P13785721639119360218

`A014285(n+1)+A014148(n+1)`
-/

namespace A162867.P13785721639119360218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014285 (n + 1) + A014148 (n + 1)

end

end A162867.P13785721639119360218

noncomputable section

/-- A162867: a(n) is the sum of all possible pairs of the first n primes.

Offset 1, canonical program `A162867.P13785721639119360218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162867 (n : ℕ) : ℤ :=
  A162867.P13785721639119360218.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162867.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A163279.P15512853386286728372

`(n+1)²*A110450(n+1)+n+1`
-/

namespace A163279.P15512853386286728372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A110450 (n + 1) + (n + 1 : ℤ)

end

end A163279.P15512853386286728372

noncomputable section

/-- A163279: a(n) = (n^6 + 2n^5 + 2n^4 + n^3 + 2n)/2.

Offset 1, canonical program `A163279.P15512853386286728372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A163279 (n : ℕ) : ℤ :=
  A163279.P15512853386286728372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A163279.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A163662.P14218432216652683192

`10*A094028(n)`
-/

namespace A163662.P14218432216652683192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A094028 n

end

end A163662.P14218432216652683192

noncomputable section

/-- A163662: A020988 written in base 2.

Offset 1, canonical program `A163662.P14218432216652683192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163662 (n : ℕ) : ℤ :=
  A163662.P14218432216652683192.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163746.P11873531576928395858

`abs(A138950(n+1))`
-/

namespace A163746.P11873531576928395858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138950 (n + 1)|

end

end A163746.P11873531576928395858

noncomputable section

/-- A163746: Expansion of (theta_3(q)^2 + 3 * theta_3(q^3)^2) / 4 - 1 in powers of q.

Offset 1, canonical program `A163746.P11873531576928395858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163746 (n : ℕ) : ℤ :=
  A163746.P11873531576928395858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163774.P18138271461630038501

`A000984(n+1)-A002426(n+1)`
-/

namespace A163774.P18138271461630038501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - A002426 (n + 1)

end

end A163774.P18138271461630038501

noncomputable section

/-- A163774: Row sums of the central coefficients triangle (A163771).

Offset 0, canonical program `A163774.P18138271461630038501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A163774 (n : ℕ) : ℤ :=
  A163774.P18138271461630038501.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A163774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163824.P14431625898049546395

`A000984(n)-Δ[Δ[A000392(n)]]`
-/

namespace A163824.P14431625898049546395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (f1 (n + 1) - f1 n)

end

end A163824.P14431625898049546395

noncomputable section

/-- A163824: Number of permutations of length n in the 2x2 double-chevron permutation grid class.

Offset 0, canonical program `A163824.P14431625898049546395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A163824 (n : ℕ) : ℤ :=
  A163824.P14431625898049546395.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A163824.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A164680.P15258052786257426465

`A002625(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A164680.P15258052786257426465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A002625 n + a (n - 2)

end

end A164680.P15258052786257426465

noncomputable section

/-- A164680: Expansion of x/((1-x)^3*(1-x^2)^3*(1-x^3)).

Offset 1, canonical program `A164680.P15258052786257426465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164680 (n : ℕ) : ℤ :=
  A164680.P15258052786257426465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164914.P18106484241584199065

`A164853(n+2)/A164853(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164914.P18106484241584199065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164853 (n + 2) : ℚ) / (A164853 (n + 1) : ℚ)

end

end A164914.P18106484241584199065

noncomputable section

/-- A164914: a(n) = A164853(n+1)/A164853(n).

Offset 1, canonical program `A164914.P18106484241584199065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164853, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164914 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A164914.P18106484241584199065.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164853, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164914.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A165162.P16797027812994173801

`A122197(A020703(n+1))`
-/

namespace A165162.P16797027812994173801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (A020703 (n + 1)).toNat

end

end A165162.P16797027812994173801

noncomputable section

/-- A165162: Triangle T(n,m) with 2*n-1 entries per row, read by rows: the first n entries count down from n to 1, the remaining n-1 entries down from n-1 to 1.

Offset 1, canonical program `A165162.P16797027812994173801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A165162 (n : ℕ) : ℤ :=
  A165162.P16797027812994173801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A165162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165248.P11382934050771289473

`A061037(5*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165248.P11382934050771289473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (5 * n + 2)

end

end A165248.P11382934050771289473

noncomputable section

/-- A165248: Quintisection A061037(5*n+2).

Offset 0, canonical program `A165248.P11382934050771289473`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165248 (n : ℕ) : ℤ :=
  A165248.P11382934050771289473.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165248.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A165943.P9933738983943013805

`A061037(7*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165943.P9933738983943013805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (7 * n + 2)

end

end A165943.P9933738983943013805

noncomputable section

/-- A165943: a(n) = A061037(7*n+2).

Offset 0, canonical program `A165943.P9933738983943013805`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165943 (n : ℕ) : ℤ :=
  A165943.P9933738983943013805.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165943.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A166142.P10122674445425206392

`∏{d}[n+1, A080304(#)]`
-/

namespace A166142.P10122674445425206392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A080304 d

end

end A166142.P10122674445425206392

noncomputable section

/-- A166142: Row products of A166141; Product of such divisors of n that are squarefree and have an even number of prime factors.

Offset 1, canonical program `A166142.P10122674445425206392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166142 (n : ℕ) : ℤ :=
  A166142.P10122674445425206392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166142.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A167481.P11598172894172064079

`A000984(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A167481.P11598172894172064079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 n - 2 * a (n - 1)

end

end A167481.P11598172894172064079

noncomputable section

/-- A167481: Convolution of the central binomial coefficients A000984(n) and (-2)^n.

Offset 0, canonical program `A167481.P11598172894172064079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A167481 (n : ℕ) : ℤ :=
  A167481.P11598172894172064079.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A167481.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A168055.P15791623395348376297

`A036453(n+1)*A168049(n)`
-/

namespace A168055.P15791623395348376297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A168049 n

end

end A168055.P15791623395348376297

noncomputable section

/-- A168055: Expansion of 2 - x - sqrt(1-2x-3x^2).

Offset 0, canonical program `A168055.P15791623395348376297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A168055 (n : ℕ) : ℤ :=
  A168055.P15791623395348376297.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A168055.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A169902.P8256414419473513103

`lcm(n+2, A169900(n+1))`
-/

namespace A169902.P8256414419473513103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (A169900 (n + 1))

end

end A169902.P8256414419473513103

noncomputable section

/-- A169902: Earliest sequence such that xy | a(x+y) and (x+y) | a(xy) for all x >= 1, y >= 1.

Offset 1, canonical program `A169902.P8256414419473513103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A169902 (n : ℕ) : ℤ :=
  (A169902.P8256414419473513103.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A169902.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171403.P10794916819766522155

`eq[2, A002321(A028310(n))]`
-/

namespace A171403.P10794916819766522155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171403.P10794916819766522155

noncomputable section

/-- A171403: Solutions to the equation M(n) = 2 (M = Mertens's function A002321).

Offset 1, canonical program `A171403.P10794916819766522155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A171403 (n : ℕ) : ℤ :=
  (A171403.P10794916819766522155.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A171403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171406.P8527978597109318047

`eq[4, A002321(A028310(n))]`
-/

namespace A171406.P8527978597109318047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171406.P8527978597109318047

noncomputable section

/-- A171406: Solutions to the equation M(n) = 4 (M = Mertens's function A002321).

Offset 1, canonical program `A171406.P8527978597109318047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A171406 (n : ℕ) : ℤ :=
  (A171406.P8527978597109318047.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A171406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171427.P12417627294716191402

`eq[5, A002321(A028310(n))]`
-/

namespace A171427.P12417627294716191402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171427.P12417627294716191402

noncomputable section

/-- A171427: Solutions to the equation M(n) = 5 (M = Mertens's function A002321).

Offset 1, canonical program `A171427.P12417627294716191402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A171427 (n : ℕ) : ℤ :=
  (A171427.P12417627294716191402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A171427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171428.P4692146372551918575

`eq[6, A002321(A028310(n))]`
-/

namespace A171428.P4692146372551918575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171428.P4692146372551918575

noncomputable section

/-- A171428: Solutions to the equation M(n) = 6 (M = Mertens's function A002321).

Offset 1, canonical program `A171428.P4692146372551918575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A171428 (n : ℕ) : ℤ :=
  (A171428.P4692146372551918575.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A171428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171436.P12618760449162599911

`eq[7, A002321(A028310(n))]`
-/

namespace A171436.P12618760449162599911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171436.P12618760449162599911

noncomputable section

/-- A171436: Solutions to the equation M(n) = 7 (M = Mertens's function A002321).

Offset 1, canonical program `A171436.P12618760449162599911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A171436 (n : ℕ) : ℤ :=
  (A171436.P12618760449162599911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A171436.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171621.P19222282852191136

`A061037(n+2)*A010121(n)`
-/

namespace A171621.P19222282852191136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (n + 2) * A010121 n

end

end A171621.P19222282852191136

noncomputable section

/-- A171621: Numerator of 1/4 - 1/n^2, each fourth term multiplied by 4.

Offset 2, canonical program `A171621.P19222282852191136`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171621 (n : ℕ) : ℤ :=
  A171621.P19222282852191136.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171621.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171710.P10509536871725326312

`A168380(∑[char[A168380(n+1)]]+1)+1`
-/

namespace A171710.P10509536871725326312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A171710.P10509536871725326312

noncomputable section

/-- A171710: Union of A168234 and A171219, sorted.

Offset 1, canonical program `A171710.P10509536871725326312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171710 (n : ℕ) : ℤ :=
  A171710.P10509536871725326312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171710.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171970.P12768382269905450818

`floor(A022838(n+1)/2)`
-/

namespace A171970.P12768382269905450818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022838 (n + 1) : ℚ) / 2⌋

end

end A171970.P12768382269905450818

noncomputable section

/-- A171970: Integer part of the height of an equilateral triangle with side length n.

Offset 1, canonical program `A171970.P12768382269905450818`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171970 (n : ℕ) : ℤ :=
  A171970.P12768382269905450818.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171987.P18065737616420774737

`eq[1, A036987(A087734(n))]+1`
-/

namespace A171987.P18065737616420774737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A087734 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171987.P18065737616420774737

noncomputable section

/-- A171987: Best explained by example: in the binary representation, start with 10000, then add 1 and push the 1 to the left: 10001, 10010, 10100, 11000, then add another one, 11001, 11010, 11100, etc: 11101, 11110, 11111. Then proceed with the next length of numbers: 100000, etc.

Offset 1, canonical program `A171987.P18065737616420774737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A171987 (n : ℕ) : ℤ :=
  (A171987.P18065737616420774737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A171987.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A173023.P442632253626153546

`∑[char[or(n, A048728(n))]]`
-/

namespace A173023.P442632253626153546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A048728 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173023.P442632253626153546

noncomputable section

/-- A173023: Number of numbers <= n whose binary representation contains no isolated digits "11".

Offset 0, canonical program `A173023.P442632253626153546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173023 (n : ℕ) : ℤ :=
  (A173023.P442632253626153546.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173023.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A173263.P8165751700118268913

`or(1, A047839(2*n+1))`
-/

namespace A173263.P8165751700118268913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047839 (2 * n + 1))

end

end A173263.P8165751700118268913

noncomputable section

/-- A173263: Successive numbers n such that ChebyshevT[n/2, n] is not an integer.

Offset 1, canonical program `A173263.P8165751700118268913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173263 (n : ℕ) : ℤ :=
  A173263.P8165751700118268913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173315.P11569175325327384851

`2*(A108520(n)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A173315.P11569175325327384851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (A108520 n - a (n - 1))

end

end A173315.P11569175325327384851

noncomputable section

/-- A173315: Inverse binomial transform of A131800.

Offset 0, canonical program `A173315.P11569175325327384851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A173315 (n : ℕ) : ℤ :=
  A173315.P11569175325327384851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A173315.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174139.P12345827715275463118

`comp[A174138(n+1)]`
-/

namespace A174139.P12345827715275463118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174139.P12345827715275463118

noncomputable section

/-- A174139: Numbers congruent to {0,1,2,3,4,10,11,12,13,14,20,21,22,23,24} mod 25.

Offset 1, canonical program `A174139.P12345827715275463118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174139 (n : ℕ) : ℤ :=
  (A174139.P12345827715275463118.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174139.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174275.P653358463232501852

`A120007(n+1)%2`
-/

namespace A174275.P653358463232501852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120007 (n + 1)) 2

end

end A174275.P653358463232501852

noncomputable section

/-- A174275: a(n) = 2^(n-1) mod M(n) where M(n) = A014963(n) is the exponential of the Mangoldt function.

Offset 1, canonical program `A174275.P653358463232501852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174275 (n : ℕ) : ℤ :=
  A174275.P653358463232501852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174282.P4386332101295534443

`A120007(n+1)²%3`
-/

namespace A174282.P4386332101295534443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120007 (n + 1) ^ 2) 3

end

end A174282.P4386332101295534443

noncomputable section

/-- A174282: a(n) = 3^n mod M(n) where M(n) = A014963(n) is the exponential of the Mangoldt function.

Offset 1, canonical program `A174282.P4386332101295534443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174282 (n : ℕ) : ℤ :=
  A174282.P4386332101295534443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174282.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174420.P12325697063228247299

`2^n-(A002379(n)+A002380(n)+2)`
-/

namespace A174420.P12325697063228247299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A002379 n + (A002380 n + 2))

end

end A174420.P12325697063228247299

noncomputable section

/-- A174420: Let A(n) = floor((3/2)^n), B(n)=3^n-2^n*A(n); then a(n)=2^n-A(n)-B(n)-2.

Offset 0, canonical program `A174420.P12325697063228247299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A174420 (n : ℕ) : ℤ :=
  A174420.P12325697063228247299.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A174420.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174468.P1929796918282499277

`∑{d}[n+1, #*A007429(#)]`
-/

namespace A174468.P1929796918282499277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007429 d

end

end A174468.P1929796918282499277

noncomputable section

/-- A174468: a(n) = Sum_{d|n} d*sigma(n/d)*sigma(d).

Offset 1, canonical program `A174468.P1929796918282499277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174468 (n : ℕ) : ℤ :=
  A174468.P1929796918282499277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174565.P1379073765936799486

`(1-A087168(n+1))/2`
-/

namespace A174565.P1379073765936799486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A087168 (n + 1) : ℚ) / 2

end

end A174565.P1379073765936799486

noncomputable section

/-- A174565: Expansion of g.f. (1+3*x)/((1-x)*(1+3*x+4*x^2)).

Offset 0, canonical program `A174565.P1379073765936799486`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174565 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174565.P1379073765936799486.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174565.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A175248.P2987588914233790464

`A158611(A158611(n+2)+1)`
-/

namespace A175248.P2987588914233790464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A158611 (n + 2) + 1).toNat

end

end A175248.P2987588914233790464

noncomputable section

/-- A175248: Noncomposites (A008578) with noncomposite (A008578) subscripts.

Offset 1, canonical program `A175248.P2987588914233790464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A175248 (n : ℕ) : ℤ :=
  A175248.P2987588914233790464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A175248.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A175348.P10769841879183577907

`A056849(A110923(n+1))`
-/

namespace A175348.P10769841879183577907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (A110923 (n + 1)).toNat

end

end A175348.P10769841879183577907

noncomputable section

/-- A175348: Last digit of p^p, where p is the n-th prime.

Offset 1, canonical program `A175348.P10769841879183577907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175348 (n : ℕ) : ℤ :=
  A175348.P10769841879183577907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175348.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A176900.P16882127047652168650

`(n+1)*A128018(n)`
-/

namespace A176900.P16882127047652168650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A128018 n

end

end A176900.P16882127047652168650

noncomputable section

/-- A176900: a(n) = sin((2*n+5)*Pi/6)*(n+1)*2^(n+1).

Offset 0, canonical program `A176900.P16882127047652168650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A176900 (n : ℕ) : ℤ :=
  A176900.P16882127047652168650.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A176900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176968.P15356991129516376540

`a(n-1)+a(n-2)*A010696(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A176968.P15356991129516376540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 2) * A010696 (n + 1)

end

end A176968.P15356991129516376540

noncomputable section

/-- A176968: Expansion of x*( 1+2*x-x^2-6*x^3 ) / ( 1-9*x^2+12*x^4 ).

Offset 1, canonical program `A176968.P15356991129516376540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A176968 (n : ℕ) : ℤ :=
  A176968.P15356991129516376540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A176968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177052.P2975540966760511883

`A020725(lt[-A033880(n+1), A111775(n+1)])`
-/

namespace A177052.P2975540966760511883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A033880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177052.P2975540966760511883

noncomputable section

/-- A177052: Ceiling(n/2)-abundant numbers.

Offset 1, canonical program `A177052.P2975540966760511883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. -/
def A177052 (n : ℕ) : ℤ :=
  A177052.P2975540966760511883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. -/
def A177052.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A177825.P13829640405673245386

`(-1)^n*A175790(n)`
-/

namespace A177825.P13829640405673245386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A175790 n

end

end A177825.P13829640405673245386

noncomputable section

/-- A177825: Expansion of 1/((1 + x^3 - x^4)*(1 - x)).

Offset 0, canonical program `A177825.P13829640405673245386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175790, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177825 (n : ℕ) : ℤ :=
  A177825.P13829640405673245386.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175790, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177825.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A178832.P1928673808826274112

`A028310(or(1, A032615(n)))`
-/

namespace A178832.P1928673808826274112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor 1 (A032615 n)).toNat

end

end A178832.P1928673808826274112

noncomputable section

/-- A178832: Number of minima of the 1-D Griewank function in [-n, n].

Offset 0, canonical program `A178832.P1928673808826274112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A178832 (n : ℕ) : ℤ :=
  A178832.P1928673808826274112.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A178832.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A179089.P11177399015154050840

`A005043(n)*A005773(n+1)`
-/

namespace A179089.P11177399015154050840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n * A005773 (n + 1)

end

end A179089.P11177399015154050840

noncomputable section

/-- A179089: a(n) = (1/n^2) * Sum_{k=0..n-1} (2k+1)*T_k^2(-3)^(n-1-k), where T_0, T_1, ... are central trinomial coefficients given by A002426.

Offset 1, canonical program `A179089.P11177399015154050840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A179089 (n : ℕ) : ℤ :=
  A179089.P11177399015154050840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A179089.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A179848.P18196075278690951285

`A001764(n)*A062157(n)`
-/

namespace A179848.P18196075278690951285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A062157 n

end

end A179848.P18196075278690951285

noncomputable section

/-- A179848: Expansion of series reversion of generating function for triangular numbers.

Offset 0, canonical program `A179848.P18196075278690951285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A179848 (n : ℕ) : ℤ :=
  A179848.P18196075278690951285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A179848.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A180122.P10897706052687418752

`A054088(n+1)-1`
-/

namespace A180122.P10897706052687418752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (n + 1) - 1

end

end A180122.P10897706052687418752

noncomputable section

/-- A180122: First of three "least, sum, least" self-generating sequences.

Offset 1, canonical program `A180122.P10897706052687418752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180122 (n : ℕ) : ℤ :=
  A180122.P10897706052687418752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180123.P161606990434514830

`abs(1-A003512(n+1))`
-/

namespace A180123.P161606990434514830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A003512 (n + 1)|

end

end A180123.P161606990434514830

noncomputable section

/-- A180123: Second of three "least, sum, least" self-generating sequences.

Offset 1, canonical program `A180123.P161606990434514830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180123 (n : ℕ) : ℤ :=
  A180123.P161606990434514830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180123.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A180224.P15208035443506619355

`A103762(a(n-1)+1)` with `a(0)=1`
-/

namespace A180224.P15208035443506619355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103762 (a (n - 1) + 1).toNat

end

end A180224.P15208035443506619355

noncomputable section

/-- A180224: a(n+1) is the least k such that 1/(a(n)+1) + 1/(a(n)+2) + ... + 1/k > 1, with a(1) = 1.

Offset 1, canonical program `A180224.P15208035443506619355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180224 (n : ℕ) : ℤ :=
  A180224.P15208035443506619355.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180224.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A180497.P5719506775989415877

`(n+1)²-A033428(A097337(n+1))`
-/

namespace A180497.P5719506775989415877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A033428 (A097337 (n + 1)).toNat

end

end A180497.P5719506775989415877

noncomputable section

/-- A180497: a(n)=n^2-3*floor[n/sqrt(3)]^2.

Offset 1, canonical program `A180497.P5719506775989415877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180497 (n : ℕ) : ℤ :=
  A180497.P5719506775989415877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180499.P3987114873125485963

`A000578(n+1)+eq[1, A113061(n+1)]+1`
-/

namespace A180499.P3987114873125485963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A180499.P3987114873125485963

noncomputable section

/-- A180499: n^3 + n-th cubefree number.

Offset 1, canonical program `A180499.P3987114873125485963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180499 (n : ℕ) : ℤ :=
  A180499.P3987114873125485963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180499.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A180714.P5061028925191492414

`∑[A062157(A000194(n))]`
-/

namespace A180714.P5061028925191492414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A000194 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180714.P5061028925191492414

noncomputable section

/-- A180714: Sum of the x- and y-coordinates of a point moving in a clockwise spiral.

Offset 0, canonical program `A180714.P5061028925191492414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180714 (n : ℕ) : ℤ :=
  A180714.P5061028925191492414.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180714.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A180967.P14884180377159508952

`4*(A117186(n)-2^n)`
-/

namespace A180967.P14884180377159508952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A117186 n - (2 ^ n : ℤ))

end

end A180967.P14884180377159508952

noncomputable section

/-- A180967: Number of n-game win/loss series that contain at least one dead game.

Offset 1, canonical program `A180967.P14884180377159508952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A180967 (n : ℕ) : ℤ :=
  A180967.P14884180377159508952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A180967.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A181569.P15452929519549281060

`2-A061006(n+2)+n`
-/

namespace A181569.P15452929519549281060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A061006 (n + 2) + (n : ℤ)

end

end A181569.P15452929519549281060

noncomputable section

/-- A181569: Greatest common divisor of n! and n+1.

Offset 1, canonical program `A181569.P15452929519549281060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A181569 (n : ℕ) : ℤ :=
  A181569.P15452929519549281060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A181569.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A181763.P14779170359321932747

`A061037(n+2)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181763.P14779170359321932747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (n + 2) ^ 2

end

end A181763.P14779170359321932747

noncomputable section

/-- A181763: a(n) = A061037(n)^2.

Offset 2, canonical program `A181763.P14779170359321932747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181763 (n : ℕ) : ℤ :=
  A181763.P14779170359321932747.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181763.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A182542.P18386104452315835868

`A002057(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A182542.P18386104452315835868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002057 n + 4 * a (n - 1)

end

end A182542.P18386104452315835868

noncomputable section

/-- A182542: Second diagonal of triangle in A145879.

Offset 3, canonical program `A182542.P18386104452315835868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A182542 (n : ℕ) : ℤ :=
  A182542.P18386104452315835868.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A182542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182778.P17977222295083857075

`A003512(n+1)+1+n`
-/

namespace A182778.P17977222295083857075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1) + 1 + (n : ℤ)

end

end A182778.P17977222295083857075

noncomputable section

/-- A182778: Beatty sequence for 3 + sqrt(3).

Offset 1, canonical program `A182778.P17977222295083857075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182778 (n : ℕ) : ℤ :=
  A182778.P17977222295083857075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182850.P3466752916256884003

`a(A181819(n+1)-1)+1` with `a(0)=0, a(1)=0`
-/

namespace A182850.P3466752916256884003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (A181819 (n + 1) - 1).toNat + 1

end

end A182850.P3466752916256884003

noncomputable section

/-- A182850: a(n) = number of iterations that n requires to reach a fixed point under the x -> A181819(x) map.

Offset 1, canonical program `A182850.P3466752916256884003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182850 (n : ℕ) : ℤ :=
  (A182850.P3466752916256884003.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182850.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A183142.P17602130600802150124

`floor(A182777(n+1)/3)`
-/

namespace A183142.P17602130600802150124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182777 (n + 1) : ℚ) / 3⌋

end

end A183142.P17602130600802150124

noncomputable section

/-- A183142: Beatty sequence for 2/(3+sqrt(3)).

Offset 1, canonical program `A183142.P17602130600802150124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183142 (n : ℕ) : ℤ :=
  A183142.P17602130600802150124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183224.P4792685611378280193

`A259361(floor(n/5))+n+2`
-/

namespace A183224.P4792685611378280193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 ⌊(n : ℚ) / 5⌋.toNat + (n + 2 : ℤ)

end

end A183224.P4792685611378280193

noncomputable section

/-- A183224: Complement of the 12-gonal numbers.

Offset 1, canonical program `A183224.P4792685611378280193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183224 (n : ℕ) : ℤ :=
  A183224.P4792685611378280193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183294.P3788086899821017190

`A083277(n+1)+n`
-/

namespace A183294.P3788086899821017190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (n + 1) + (n : ℤ)

end

end A183294.P3788086899821017190

noncomputable section

/-- A183294: Complement of A005449.

Offset 1, canonical program `A183294.P3788086899821017190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183294 (n : ℕ) : ℤ :=
  A183294.P3788086899821017190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183573.P15986544444753339137

`A027434(A008619(n+1))+n`
-/

namespace A183573.P15986544444753339137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A008619 (n + 1)).toNat + (n : ℤ)

end

end A183573.P15986544444753339137

noncomputable section

/-- A183573: a(n) = n + floor(sqrt(2n+1)).

Offset 1, canonical program `A183573.P15986544444753339137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183573 (n : ℕ) : ℤ :=
  A183573.P15986544444753339137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183573.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A184096.P1202341694869382035

`(n%2+1)*A085903(n+1)`
-/

namespace A184096.P1202341694869382035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A085903 (n + 1)

end

end A184096.P1202341694869382035

noncomputable section

/-- A184096: Half the number of n X n toroidal binary arrays with each element having the sum of its vertical neighbors equal to the sum of its horizontal neighbors.

Offset 1, canonical program `A184096.P1202341694869382035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184096 (n : ℕ) : ℤ :=
  A184096.P1202341694869382035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184096.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A184516.P6887208156508434779

`A001965(n)+1`
-/

namespace A184516.P6887208156508434779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 n + 1

end

end A184516.P6887208156508434779

noncomputable section

/-- A184516: Lower s-Wythoff sequence, where s=4n-2. Complement of A184517.

Offset 1, canonical program `A184516.P6887208156508434779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184516 (n : ℕ) : ℤ :=
  A184516.P6887208156508434779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184584.P4544522844543927769

`A002264(A022839(3*n+2))`
-/

namespace A184584.P4544522844543927769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A022839 (3 * n + 2)).toNat

end

end A184584.P4544522844543927769

noncomputable section

/-- A184584: floor[(n-1/3)r], where r=sqrt(5); complement of A184585.

Offset 1, canonical program `A184584.P4544522844543927769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1491 terms. -/
def A184584 (n : ℕ) : ℤ :=
  A184584.P4544522844543927769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1491 terms. -/
def A184584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184592.P14200769731300645607

`comp[A063459(n)-2]+1`
-/

namespace A184592.P14200769731300645607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184592.P14200769731300645607

noncomputable section

/-- A184592: a(n) = floor((n*(Pi-1) + 1)/(Pi-2)); complement of A184591.

Offset 1, canonical program `A184592.P14200769731300645607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184592 (n : ℕ) : ℤ :=
  (A184592.P14200769731300645607.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184592.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A184656.P5168837873934125938

`floor((A022839(n+1)+n)/2)`
-/

namespace A184656.P5168837873934125938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022839 (n + 1) + (n : ℤ) : ℚ) / 2⌋

end

end A184656.P5168837873934125938

noncomputable section

/-- A184656: floor(nr+h), where r=(1+sqrt(5))/2, h=-1/2; complement of A184657.

Offset 1, canonical program `A184656.P5168837873934125938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184656 (n : ℕ) : ℤ :=
  A184656.P5168837873934125938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184656.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A184921.P405514056550223549

`A000027(A022842(n+1)+record[xor(1, n)])`
-/

namespace A184921.P405514056550223549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A022842 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)).toNat

end

end A184921.P405514056550223549

noncomputable section

/-- A184921: a(n) = n+[r*n/s]+[t*n/s]+[u*n/s], where []=floor and r=2^(1/2), s=r+1, t=r+2, u=r+3.

Offset 1, canonical program `A184921.P405514056550223549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184921 (n : ℕ) : ℤ :=
  A184921.P405514056550223549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184969.P9991180838185652522

`∑[A120701(n+1)]+1`
-/

namespace A184969.P9991180838185652522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A184969.P9991180838185652522

noncomputable section

/-- A184969: a(n) = [Pi]+[2*Pi]+...+[n*Pi], where []=floor.

Offset 1, canonical program `A184969.P9991180838185652522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184969 (n : ℕ) : ℤ :=
  A184969.P9991180838185652522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185050.P3885030406127625706

`abs(A054414(n+1)-n)`
-/

namespace A185050.P3885030406127625706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054414 (n + 1) - (n : ℤ)|

end

end A185050.P3885030406127625706

noncomputable section

/-- A185050: Least k such that G(k) > 3 - 1/2^n, where G(k) is the sum of the first k terms of the geometric series 1 + 2/3 + (2/3)^2 + ....

Offset 0, canonical program `A185050.P3885030406127625706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6173 terms. -/
def A185050 (n : ℕ) : ℤ :=
  A185050.P3885030406127625706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6173 terms. -/
def A185050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185601.P901134660204610990

`∑[A061266(n+2)-1]-1`
-/

namespace A185601.P901134660204610990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061266 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A185601.P901134660204610990

noncomputable section

/-- A185601: a(n) = floor(n^(3/2))-floor(n^(1/2))-n; complement of A185602.

Offset 3, canonical program `A185601.P901134660204610990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A185601 (n : ℕ) : ℤ :=
  A185601.P901134660204610990.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A185601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185602.P5785848709718018963

`comp[A185595(A028310(n))-n]`
-/

namespace A185602.P5785848709718018963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185595 (A028310 n).toNat - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A185602.P5785848709718018963

noncomputable section

/-- A185602: Numbers not of the form floor(n^(3/2))-floor(n^(1/2))-n; complement of A185601.

Offset 1, canonical program `A185602.P5785848709718018963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185602 (n : ℕ) : ℤ :=
  (A185602.P5785848709718018963.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185602.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A186145.P18022575959922789633

`A135673(n+1)-1`
-/

namespace A186145.P18022575959922789633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135673 (n + 1) - 1

end

end A186145.P18022575959922789633

noncomputable section

/-- A186145: Rank of n^2 when {i^2: i>=1} and {j^3: j>=1} are jointly ranked with i^2 before j^3 when i^2=j^3. Complement of A186146.

Offset 1, canonical program `A186145.P18022575959922789633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186145 (n : ℕ) : ℤ :=
  A186145.P18022575959922789633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186222.P8275431993961068646

`A003153(n+1)-1`
-/

namespace A186222.P8275431993961068646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 1) - 1

end

end A186222.P8275431993961068646

noncomputable section

/-- A186222: Adjusted joint rank sequence of (g(i)) and (f(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the triangular numbers and squares. Complement of A186221.

Offset 1, canonical program `A186222.P8275431993961068646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186222 (n : ℕ) : ℤ :=
  A186222.P8275431993961068646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186222.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A186348.P3031564734172849301

`A047839(n+1)+A002024(n+1)`
-/

namespace A186348.P3031564734172849301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047839 (n + 1) + A002024 (n + 1)

end

end A186348.P3031564734172849301

noncomputable section

/-- A186348: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=8i and g(j)=j^2. Complement of A186349.

Offset 1, canonical program `A186348.P3031564734172849301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186348 (n : ℕ) : ℤ :=
  A186348.P3031564734172849301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186348.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A187181.P6476450187330902741

`A028310(∑[A049347(A071619(n))])`
-/

namespace A187181.P6476450187330902741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A071619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187181.P6476450187330902741

noncomputable section

/-- A187181: Parse the infinite string 012012012012... into distinct phrases 0, 1, 2, 01, 20, 12, 012, ...; a(n) = length of n-th phrase.

Offset 1, canonical program `A187181.P6476450187330902741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A187181 (n : ℕ) : ℤ :=
  A187181.P6476450187330902741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A187181.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A187338.P2197340347689705008

`∑[Δ[A001951(n)]+3]`
-/

namespace A187338.P2197340347689705008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187338.P2197340347689705008

noncomputable section

/-- A187338: a(n) = 3*n + floor(sqrt(2)*n), complement of A187328.

Offset 1, canonical program `A187338.P2197340347689705008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187338 (n : ℕ) : ℤ :=
  A187338.P2197340347689705008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187338.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A187393.P12659870835882458263

`∑[A018245(n+1)+2]`
-/

namespace A187393.P12659870835882458263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018245 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187393.P12659870835882458263

noncomputable section

/-- A187393: a(n) = floor(r*n), where r = 4 + sqrt(8); complement of A187394.

Offset 1, canonical program `A187393.P12659870835882458263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187393 (n : ℕ) : ℤ :=
  A187393.P12659870835882458263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187444.P12962167303729004616

`A002661(3*n+1)`
-/

namespace A187444.P12962167303729004616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002661 (3 * n + 1)

end

end A187444.P12962167303729004616

noncomputable section

/-- A187444: A trisection of A001405 (central binomial coefficients): binomial(3n+2,floor((3n+2)/2))/2, n >= 0.

Offset 0, canonical program `A187444.P12962167303729004616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A187444 (n : ℕ) : ℤ :=
  A187444.P12962167303729004616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A187444.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A187711.P3919054973118783065

`eq[n+1, A187680(n+1)]+1`
-/

namespace A187711.P3919054973118783065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A187711.P3919054973118783065

noncomputable section

/-- A187711: Integers k which equal (product of divisors of k) mod (sum of divisors of k).

Offset 1, canonical program `A187711.P3919054973118783065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1265 terms. -/
def A187711 (n : ℕ) : ℤ :=
  (A187711.P3919054973118783065.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1265 terms. -/
def A187711.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A187971.P5819129724540132840

`3*A003152(n+1)-(n+1)`
-/

namespace A187971.P5819129724540132840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003152 (n + 1) - (n + 1 : ℤ)

end

end A187971.P5819129724540132840

noncomputable section

/-- A187971: Positions of 1 in A187969; complement of A187970.

Offset 1, canonical program `A187971.P5819129724540132840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187971 (n : ℕ) : ℤ :=
  A187971.P5819129724540132840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187971.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188040.P2755953208103886192

`A003152(n+1)-A049472(A049472(n+1))`
-/

namespace A188040.P2755953208103886192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) - A049472 (A049472 (n + 1)).toNat

end

end A188040.P2755953208103886192

noncomputable section

/-- A188040: Positions of 1 in A188038; complement of A188039.

Offset 1, canonical program `A188040.P2755953208103886192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188040 (n : ℕ) : ℤ :=
  A188040.P2755953208103886192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188040.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188089.P18310189432462336947

`4*A003512(n+1)-(n+1)`
-/

namespace A188089.P18310189432462336947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003512 (n + 1) - (n + 1 : ℤ)

end

end A188089.P18310189432462336947

noncomputable section

/-- A188089: Positions of 0 in the zero-one sequence [nr+4r]-[nr]-[4r], where r=sqrt(3), n>=1.

Offset 1, canonical program `A188089.P18310189432462336947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188089 (n : ℕ) : ℤ :=
  A188089.P18310189432462336947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188089.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188171.P17289095504074848112

`A001842(n+1)+A002654(n+1)-A188169(n+1)`
-/

namespace A188171.P17289095504074848112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (n + 1) + (A002654 (n + 1) - A188169 (n + 1))

end

end A188171.P17289095504074848112

noncomputable section

/-- A188171: The number of divisors d of n of the form d == 5 (mod 8).

Offset 1, canonical program `A188171.P17289095504074848112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188171 (n : ℕ) : ℤ :=
  A188171.P17289095504074848112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188171.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188222.P8473459414577966402

`ceil(A003622(n+1)/2)`
-/

namespace A188222.P8473459414577966402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003622 (n + 1) : ℚ) / 2⌉

end

end A188222.P8473459414577966402

noncomputable section

/-- A188222: Beatty sequence for (sqrt(5) + 3)/4.

Offset 1, canonical program `A188222.P8473459414577966402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188222 (n : ℕ) : ℤ :=
  A188222.P8473459414577966402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188222.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188270.P13484470605752948616

`∑[A008809(n+1)]+1`
-/

namespace A188270.P13484470605752948616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A188270.P13484470605752948616

noncomputable section

/-- A188270: Number of nondecreasing strings of numbers (x(i), i=1..n) in -2..2 with sum x(i)^3 equal to 0.

Offset 1, canonical program `A188270.P13484470605752948616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188270 (n : ℕ) : ℤ :=
  A188270.P13484470605752948616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188289.P11877124226206247713

`A026641(n)-(-1)^n`
-/

namespace A188289.P11877124226206247713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 n - (-1) ^ n

end

end A188289.P11877124226206247713

noncomputable section

/-- A188289: Binomial sum related to rooted trees.

Offset 0, canonical program `A188289.P11877124226206247713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A188289 (n : ℕ) : ℤ :=
  A188289.P11877124226206247713.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A188289.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188468.P7650154338437049291

`A130568(A004526(n))+A052938(n)`
-/

namespace A188468.P7650154338437049291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130568 (A004526 n).toNat + A052938 n

end

end A188468.P7650154338437049291

noncomputable section

/-- A188468: Positions of 0 in A188467.

Offset 1, canonical program `A188468.P7650154338437049291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188468 (n : ℕ) : ℤ :=
  A188468.P7650154338437049291.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188590.P3711629956380345104

`Δ[A080081(n+1)]`
-/

namespace A188590.P3711629956380345104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188590.P3711629956380345104

noncomputable section

/-- A188590: [(n+1)*r] - [n*r], where r = 3/2 + sqrt(13)/2 and [...] denotes the floor function.

Offset 1, canonical program `A188590.P3711629956380345104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188590 (n : ℕ) : ℤ :=
  A188590.P3711629956380345104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188590.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A188653.P11362687780223873411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188652, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A188653 (n : ℕ) : ℤ :=
  A188653.P11362687780223873411.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188652, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A188653.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A188675.P10290898774784924777

`∑[A005809(n)]`
-/

namespace A188675.P10290898774784924777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188675.P10290898774784924777

noncomputable section

/-- A188675: Partial sums of the binomial coefficients binomial(3*n,n) (A005809).

Offset 0, canonical program `A188675.P10290898774784924777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A188675 (n : ℕ) : ℤ :=
  A188675.P10290898774784924777.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A188675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188676.P16157097669964216342

`A005809(n)-a(n-1)` with `a(0)=1`
-/

namespace A188676.P16157097669964216342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005809 n - a (n - 1)

end

end A188676.P16157097669964216342

noncomputable section

/-- A188676: Alternate partial sums of the binomial coefficients binomial(3*n,n).

Offset 0, canonical program `A188676.P16157097669964216342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A188676 (n : ℕ) : ℤ :=
  A188676.P16157097669964216342.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A188676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188916.P11571620703163945745

`A004257(A028310(n))+n`
-/

namespace A188916.P11571620703163945745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004257 (A028310 n).toNat + (n : ℤ)

end

end A188916.P11571620703163945745

noncomputable section

/-- A188916: Where squares occur in the union of squares and powers of 2.

Offset 0, canonical program `A188916.P11571620703163945745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188916 (n : ℕ) : ℤ :=
  A188916.P11571620703163945745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188916.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189361.P14465855523575445568

`A022838(n+1)+A003151(n+1)`
-/

namespace A189361.P14465855523575445568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1) + A003151 (n + 1)

end

end A189361.P14465855523575445568

noncomputable section

/-- A189361: a(n) = n + floor(n*s/r) + floor(n*t/r); r=1, s=sqrt(2), t=sqrt(3).

Offset 1, canonical program `A189361.P14465855523575445568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189361 (n : ℕ) : ℤ :=
  A189361.P14465855523575445568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189361.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189369.P9854787023402099202

`A184808(n+1)+A097337(2*(n+1))`
-/

namespace A189369.P9854787023402099202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184808 (n + 1) + A097337 (2 * (n + 1))

end

end A189369.P9854787023402099202

noncomputable section

/-- A189369: a(n) = n + [n*r/t] + [n*s/t]; r=2, s=sqrt(2), t=sqrt(3).

Offset 1, canonical program `A189369.P9854787023402099202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189369 (n : ℕ) : ℤ :=
  A189369.P9854787023402099202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189376.P13636133752006314375

`∑[A144678(n)]`
-/

namespace A189376.P13636133752006314375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189376.P13636133752006314375

noncomputable section

/-- A189376: Expansion of 1/((1-x)^5*(x^3+x^2+x+1)^2).

Offset 0, canonical program `A189376.P13636133752006314375`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144678, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189376 (n : ℕ) : ℤ :=
  A189376.P13636133752006314375.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144678, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189376.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A189380.P14481690310420342721

`A022804(n+1)-(n+1)`
-/

namespace A189380.P14481690310420342721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022804 (n + 1) - (n + 1 : ℤ)

end

end A189380.P14481690310420342721

noncomputable section

/-- A189380: a(n) = n + floor(n*s/r) + floor(n*t/r); r=1, s=-1+sqrt(2), t=1+sqrt(2).

Offset 1, canonical program `A189380.P14481690310420342721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189380 (n : ℕ) : ℤ :=
  A189380.P14481690310420342721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189380.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189393.P13947967965399185248

`(n+1)*A053191(n+1)`
-/

namespace A189393.P13947967965399185248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053191 (n + 1)

end

end A189393.P13947967965399185248

noncomputable section

/-- A189393: a(n) = phi(n^4).

Offset 1, canonical program `A189393.P13947967965399185248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189393 (n : ℕ) : ℤ :=
  A189393.P13947967965399185248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189395.P230901952925587029

`A022838(n+1)+A003152(n+1)`
-/

namespace A189395.P230901952925587029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1) + A003152 (n + 1)

end

end A189395.P230901952925587029

noncomputable section

/-- A189395: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=1/sqrt(2), t=sqrt(3).

Offset 1, canonical program `A189395.P230901952925587029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189395 (n : ℕ) : ℤ :=
  A189395.P230901952925587029.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189396.P12639557304665538160

`A022840(n+1)+A003151(n+1)`
-/

namespace A189396.P12639557304665538160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1) + A003151 (n + 1)

end

end A189396.P12639557304665538160

noncomputable section

/-- A189396: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=1/sqrt(2), t=sqrt(3).

Offset 1, canonical program `A189396.P12639557304665538160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189396 (n : ℕ) : ℤ :=
  A189396.P12639557304665538160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189396.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189399.P1112579676270563252

`A061402(n+1)+A000572(n+1)`
-/

namespace A189399.P1112579676270563252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061402 (n + 1) + A000572 (n + 1)

end

end A189399.P1112579676270563252

noncomputable section

/-- A189399: n+[ns/r]+[nt/r]; r=1, s=sqrt(e), t=e.

Offset 1, canonical program `A189399.P1112579676270563252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A189399 (n : ℕ) : ℤ :=
  A189399.P1112579676270563252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A189399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189403.P8871410371183353853

`A032634(n+1)+A000572(n+1)`
-/

namespace A189403.P8871410371183353853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (n + 1) + A000572 (n + 1)

end

end A189403.P8871410371183353853

noncomputable section

/-- A189403: n+[nr/s]+[nt/s]; r=1, s=e, t=e^2.

Offset 1, canonical program `A189403.P8871410371183353853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189403 (n : ℕ) : ℤ :=
  A189403.P8871410371183353853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189405.P2004610319566400979

`abs(2*A022838(n+1)+Δ[n²]-n)`
-/

namespace A189405.P2004610319566400979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A022838 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ))|

end

end A189405.P2004610319566400979

noncomputable section

/-- A189405: n+[ns/r]+[nt/r]; r=1, s=-1+sqrt(3), t=1+sqrt(3).

Offset 1, canonical program `A189405.P2004610319566400979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189405 (n : ℕ) : ℤ :=
  A189405.P2004610319566400979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189457.P17392838064518242780

`floor(A003152(n+1)+A003151(n+1)/2)`
-/

namespace A189457.P17392838064518242780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003152 (n + 1) : ℚ) + (A003151 (n + 1) : ℚ) / 2⌋

end

end A189457.P17392838064518242780

noncomputable section

/-- A189457: a(n) = n+[ns/r]+[nt/r]; r=2, s=sqrt(2), t=1+sqrt(2).

Offset 1, canonical program `A189457.P17392838064518242780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189457 (n : ℕ) : ℤ :=
  A189457.P17392838064518242780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189460.P11928172565416121221

`A001651(n+1)+or(A000035(n), A022839(n+1))`
-/

namespace A189460.P11928172565416121221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) + Int.lor (A000035 n) (A022839 (n + 1))

end

end A189460.P11928172565416121221

noncomputable section

/-- A189460: n+[ns/r]+[nt/r]; r=2, s=sqrt(5), t=1+sqrt(5).

Offset 1, canonical program `A189460.P11928172565416121221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189460 (n : ℕ) : ℤ :=
  A189460.P11928172565416121221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189518.P2913336897340290057

`A006594(n+1)+∑[char[A000572(n+1)]]`
-/

namespace A189518.P2913336897340290057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000572 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006594 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A189518.P2913336897340290057

noncomputable section

/-- A189518: n+[ns/r]+[nt/r]; r=1, s=1/e, t=1/(e+1).

Offset 1, canonical program `A189518.P2913336897340290057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189518 (n : ℕ) : ℤ :=
  A189518.P2913336897340290057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189519.P16295478537119731584

`A000572(n+1)+∑[char[A006594(n+1)]]`
-/

namespace A189519.P16295478537119731584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006594 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000572 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A189519.P16295478537119731584

noncomputable section

/-- A189519: n+[nr/s]+[nt/s]; r=1, s=1/e, t=1/(e+1).

Offset 1, canonical program `A189519.P16295478537119731584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189519 (n : ℕ) : ℤ :=
  A189519.P16295478537119731584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189527.P12983264657839562446

`A187386(n+1)+A110117(n+1)`
-/

namespace A189527.P12983264657839562446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187386 (n + 1) + A110117 (n + 1)

end

end A189527.P12983264657839562446

noncomputable section

/-- A189527: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sqrt(3)-sqrt(2), t=sqrt(3)+sqrt(2).

Offset 1, canonical program `A189527.P12983264657839562446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189527 (n : ℕ) : ℤ :=
  A189527.P12983264657839562446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189527.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189819.P330102400602264979

`∑[val(A189630(n+1), A189666(n+1))]`
-/

namespace A189819.P330102400602264979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A189630 (n + 1)).toNat (A189666 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189819.P330102400602264979

noncomputable section

/-- A189819: Partial sums of A189816.

Offset 1, canonical program `A189819.P330102400602264979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189819 (n : ℕ) : ℤ :=
  (A189819.P330102400602264979.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189819.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190007.P12726079510354744240

`A186539(2*(n+1))+A002264(n+1)`
-/

namespace A190007.P12726079510354744240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (2 * (n + 1)) + A002264 (n + 1)

end

end A190007.P12726079510354744240

noncomputable section

/-- A190007: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=sin(Pi/3), t=csc(Pi/3).

Offset 1, canonical program `A190007.P12726079510354744240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190007 (n : ℕ) : ℤ :=
  A190007.P12726079510354744240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190008.P15330482503549292457

`A047293(n+1)+A008619(A022838(n+1))`
-/

namespace A190008.P15330482503549292457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047293 (n + 1) + A008619 (A022838 (n + 1)).toNat

end

end A190008.P15330482503549292457

noncomputable section

/-- A190008: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=sin(Pi/3), t=csc(Pi/3).

Offset 1, canonical program `A190008.P15330482503549292457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5774 terms. -/
def A190008 (n : ℕ) : ℤ :=
  A190008.P15330482503549292457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5774 terms. -/
def A190008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190057.P90875528142520626

`floor(A182771(n+1)+(n+1)/3)`
-/

namespace A190057.P90875528142520626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182771 (n + 1) : ℚ) + (n + 1 : ℚ) / 3⌋

end

end A190057.P90875528142520626

noncomputable section

/-- A190057: a(n) = n + [n*r/s] + [n*t/s]; r=1/2, s=sin(Pi/3), t=csc(Pi/3).

Offset 1, canonical program `A190057.P90875528142520626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190057 (n : ℕ) : ℤ :=
  A190057.P90875528142520626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190079.P11399741776294635593

`A108598(n+1)+A001961(n+1)`
-/

namespace A190079.P11399741776294635593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1) + A001961 (n + 1)

end

end A190079.P11399741776294635593

noncomputable section

/-- A190079: n + [n*s/r] + [n*t/r]; r=1, s=cos(Pi/5), t=sec(Pi/5).

Offset 1, canonical program `A190079.P11399741776294635593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190079 (n : ℕ) : ℤ :=
  A190079.P11399741776294635593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190079.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190236.P7119766586003140158

`A001961(n+1)%gcd(2, n)`
-/

namespace A190236.P7119766586003140158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001961 (n + 1)) (Nat.gcd 2 n : ℤ)

end

end A190236.P7119766586003140158

noncomputable section

/-- A190236: a(n) = [n*u + n*v] -[n*u] -[n*v], where u=1/2, v=(1+sqrt(5))/2, and []=floor.

Offset 1, canonical program `A190236.P7119766586003140158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190236 (n : ℕ) : ℤ :=
  A190236.P7119766586003140158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190306.P12219554207594288800

`n+1+A109237(n+1)+A109231(n+1)`
-/

namespace A190306.P12219554207594288800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A109237 (n + 1) + A109231 (n + 1))

end

end A190306.P12219554207594288800

noncomputable section

/-- A190306: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=csch(1), t=sech(1).

Offset 1, canonical program `A190306.P12219554207594288800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190306 (n : ℕ) : ℤ :=
  A190306.P12219554207594288800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190306.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190337.P12514535129790692006

`∑[A018245(n+1)+1]`
-/

namespace A190337.P12514535129790692006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018245 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190337.P12514535129790692006

noncomputable section

/-- A190337: a(n) = n + [n*r/t] + [n*s/t]; r=2, s=sqrt(2), t=1/s.

Offset 1, canonical program `A190337.P12514535129790692006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190337 (n : ℕ) : ℤ :=
  A190337.P12514535129790692006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190344.P4619056490658665911

`A110532(A177102(n+1))+1+n`
-/

namespace A190344.P4619056490658665911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110532 (A177102 (n + 1)).toNat + 1 + (n : ℤ)

end

end A190344.P4619056490658665911

noncomputable section

/-- A190344: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sqrt(5/2), t=sqrt(2/5).

Offset 1, canonical program `A190344.P4619056490658665911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3162 terms. -/
def A190344 (n : ℕ) : ℤ :=
  A190344.P4619056490658665911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3162 terms. -/
def A190344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190362.P5571640010193896435

`A189934(n+1)-∑[A079998(n)]`
-/

namespace A190362.P5571640010193896435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189934 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190362.P5571640010193896435

noncomputable section

/-- A190362: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=sqrt(5/4), t=sqrt(4/5).

Offset 1, canonical program `A190362.P5571640010193896435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190362 (n : ℕ) : ℤ :=
  A190362.P5571640010193896435.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190362.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190374.P6844127706392513157

`A184746(2*(n+1))+A022342(n+1)`
-/

namespace A190374.P6844127706392513157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184746 (2 * (n + 1)) + A022342 (n + 1)

end

end A190374.P6844127706392513157

noncomputable section

/-- A190374: a(n) = n + [n*r/t] + [n*s/t] + [n*u/t]; r=sin(Pi/5), s=1/r, t=sin(2*Pi/5), u=1/t.

Offset 1, canonical program `A190374.P6844127706392513157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190374 (n : ℕ) : ℤ :=
  A190374.P6844127706392513157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190427.P7482600530469910574

`A001965(n+1)-2*A060143(n+1)`
-/

namespace A190427.P7482600530469910574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 (n + 1) - 2 * A060143 (n + 1)

end

end A190427.P7482600530469910574

noncomputable section

/-- A190427: a(n) = [(b*n+c)*r] - b*[n*r] - [c*r], where (r,b,c)=(golden ratio,2,1) and []=floor.

Offset 1, canonical program `A190427.P7482600530469910574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190427 (n : ℕ) : ℤ :=
  A190427.P7482600530469910574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190433.P4222480435465815802

`eq[1, A190431(n+1)]+1`
-/

namespace A190433.P4222480435465815802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190431 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190433.P4222480435465815802

noncomputable section

/-- A190433: Positions of 1 in A190431.

Offset 1, canonical program `A190433.P4222480435465815802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190433 (n : ℕ) : ℤ :=
  (A190433.P4222480435465815802.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190434.P6463104720898244872

`eq[2, A190431(n+1)]+1`
-/

namespace A190434.P6463104720898244872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190431 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190434.P6463104720898244872

noncomputable section

/-- A190434: Positions of 2 in A190431.

Offset 1, canonical program `A190434.P6463104720898244872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A190434 (n : ℕ) : ℤ :=
  (A190434.P6463104720898244872.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A190434.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190486.P7151920494550068857

`∩[A003151(n+1), A003153(n+1)]`
-/

namespace A190486.P7151920494550068857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P7151920494550068857

noncomputable section

/-- A190486: Positions of 2 in A190483.

Offset 1, canonical program `A190486.P7151920494550068857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A190486 (n : ℕ) : ℤ :=
  (A190486.P7151920494550068857.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A190486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190505.P8242071480314916679

`A187341(n+1)+Δ[n²]`
-/

namespace A190505.P8242071480314916679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187341 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A190505.P8242071480314916679

noncomputable section

/-- A190505: n+[nr/s]+[nt/s]+[nu/s]; r=golden ratio, s=r+1, t=r+2, u=r+3.

Offset 1, canonical program `A190505.P8242071480314916679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190505 (n : ℕ) : ℤ :=
  A190505.P8242071480314916679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190511.P10122857199414912232

`A022839(n+1)-1`
-/

namespace A190511.P10122857199414912232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1) - 1

end

end A190511.P10122857199414912232

noncomputable section

/-- A190511: n+[nr/u]+[ns/u]+[nt/u]; r=golden ratio, s=r^2, t=r^3, u=r^4.

Offset 1, canonical program `A190511.P10122857199414912232`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022839, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190511 (n : ℕ) : ℤ :=
  A190511.P10122857199414912232.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022839, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190555.P17511003468908620318

`A022842(2*n+3)%A109613(A022842(n+1))`
-/

namespace A190555.P17511003468908620318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022842 (2 * n + 3)) (A109613 (A022842 (n + 1)).toNat)

end

end A190555.P17511003468908620318

noncomputable section

/-- A190555: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(2),4,2) and []=floor.

Offset 1, canonical program `A190555.P17511003468908620318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3535 terms. -/
def A190555 (n : ℕ) : ℤ :=
  A190555.P17511003468908620318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3535 terms. -/
def A190555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190557.P7434355309192584092

`eq[3, and(3, A022842(2*n+1))]`
-/

namespace A190557.P7434355309192584092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A022842 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190557.P7434355309192584092

noncomputable section

/-- A190557: Positions of 1 in A190555.

Offset 1, canonical program `A190557.P7434355309192584092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A190557 (n : ℕ) : ℤ :=
  (A190557.P7434355309192584092.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A190557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190559.P18202990085893941256

`eq[1, and(3, A022842(2*n+1))]`
-/

namespace A190559.P18202990085893941256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A022842 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190559.P18202990085893941256

noncomputable section

/-- A190559: Positions of 3 in A190555.

Offset 1, canonical program `A190559.P18202990085893941256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1248 terms. -/
def A190559 (n : ℕ) : ℤ :=
  (A190559.P18202990085893941256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1248 terms. -/
def A190559.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190704.P1414293029831667405

`A022838(4*n+6)-A004767(A022838(n+1))`
-/

namespace A190704.P1414293029831667405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (4 * n + 6) - A004767 (A022838 (n + 1)).toNat

end

end A190704.P1414293029831667405

noncomputable section

/-- A190704: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),4,2) and [ ]=floor.

Offset 1, canonical program `A190704.P1414293029831667405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190704 (n : ℕ) : ℤ :=
  A190704.P1414293029831667405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190762.P9361188072079754421

`A184118(n+1)-2*A003152(n+1)`
-/

namespace A190762.P9361188072079754421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184118 (n + 1) - 2 * A003152 (n + 1)

end

end A190762.P9361188072079754421

noncomputable section

/-- A190762: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(1/2),2,1) and [ ]=floor.

Offset 1, canonical program `A190762.P9361188072079754421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190762 (n : ℕ) : ℤ :=
  A190762.P9361188072079754421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190775.P2492371126564556887

`A003152(3*n+5)%A165998(A003152(n+1))`
-/

namespace A190775.P2492371126564556887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003152 (3 * n + 5)) (A165998 (A003152 (n + 1)).toNat)

end

end A190775.P2492371126564556887

noncomputable section

/-- A190775: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(1/2),3,2) and [ ]=floor.

Offset 1, canonical program `A190775.P2492371126564556887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190775 (n : ℕ) : ℤ :=
  A190775.P2492371126564556887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190813.P8999103964608104080

`eq[n, A189480(A028310(n))+A028310(n)]`
-/

namespace A190813.P8999103964608104080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189480 (A028310 n).toNat + A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190813.P8999103964608104080

noncomputable section

/-- A190813: Positions of 0 in A189480.

Offset 1, canonical program `A190813.P8999103964608104080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A190813 (n : ℕ) : ℤ :=
  (A190813.P8999103964608104080.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A190813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190913.P16496416454050350867

`A000032(n)+A073145(n)`
-/

namespace A190913.P16496416454050350867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + A073145 n

end

end A190913.P16496416454050350867

noncomputable section

/-- A190913: Sequence A190914 evaluated at the negative index -n.

Offset 0, canonical program `A190913.P16496416454050350867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190913 (n : ℕ) : ℤ :=
  A190913.P16496416454050350867.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190913.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A191214.P12989371329357514796

`lt[n*A191162(A028310(n)), n]`
-/

namespace A191214.P12989371329357514796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A191162 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A191214.P12989371329357514796

noncomputable section

/-- A191214: Positions of 0 in A191162; complement of A191215.

Offset 1, canonical program `A191214.P12989371329357514796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A191214 (n : ℕ) : ℤ :=
  (A191214.P12989371329357514796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A191214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191291.P278957914041285369

`floor(sqrt(n+1))-A048766(n+1)`
-/

namespace A191291.P278957914041285369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (n + 1) : ℤ) - A048766 (n + 1)

end

end A191291.P278957914041285369

noncomputable section

/-- A191291: The number of bases >=2 in which n is 3-digit number.

Offset 1, canonical program `A191291.P278957914041285369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191291 (n : ℕ) : ℤ :=
  A191291.P278957914041285369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191291.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A191340.P7440786748683160494

`A000035(A022839(n+1))+A000035(A108598(n+1))`
-/

namespace A191340.P7440786748683160494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A022839 (n + 1)).toNat + A000035 (A108598 (n + 1)).toNat

end

end A191340.P7440786748683160494

noncomputable section

/-- A191340: (A022839 mod 2)+(A108598 mod 2).

Offset 1, canonical program `A191340.P7440786748683160494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4472 terms. -/
def A191340 (n : ℕ) : ℤ :=
  A191340.P7440786748683160494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4472 terms. -/
def A191340.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A191403.P9949255710638438926

`A060143(n)+A026274(n+1)`
-/

namespace A191403.P9949255710638438926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 n + A026274 (n + 1)

end

end A191403.P9949255710638438926

noncomputable section

/-- A191403: a(n) = A000201(n) + A000201(n+2).

Offset 0, canonical program `A191403.P9949255710638438926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191403 (n : ℕ) : ℤ :=
  A191403.P9949255710638438926.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191403.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A191639.P13731675031937401547

`A191629(2*n+3)`
-/

namespace A191639.P13731675031937401547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191629 (2 * n + 3)

end

end A191639.P13731675031937401547

noncomputable section

/-- A191639: a(n) = floor((1 + 4^n)/(1 + 3*n)).

Offset 1, canonical program `A191639.P13731675031937401547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A191639 (n : ℕ) : ℤ :=
  A191639.P13731675031937401547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A191639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191641.P10413485492480212207

`A191633(2*(n+1))`
-/

namespace A191641.P10413485492480212207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191633 (2 * (n + 1))

end

end A191641.P10413485492480212207

noncomputable section

/-- A191641: a(n) = floor((1 + 4^n)/(1 + 4*n)).

Offset 1, canonical program `A191641.P10413485492480212207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A191641 (n : ℕ) : ℤ :=
  A191641.P10413485492480212207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A191641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191993.P6971471808480113202

`A001700(n)+3^n`
-/

namespace A191993.P6971471808480113202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + (3 ^ n : ℤ)

end

end A191993.P6971471808480113202

noncomputable section

/-- A191993: a(n) = 3^(n-1) + C(2*n, n)/2.

Offset 1, canonical program `A191993.P6971471808480113202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A191993 (n : ℕ) : ℤ :=
  A191993.P6971471808480113202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A191993.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A192308.P10506778276334213856

`3*∑[A099920(n)]`
-/

namespace A192308.P10506778276334213856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192308.P10506778276334213856

noncomputable section

/-- A192308: 1-sequence of reduction of (3n) by x^2 -> x+1.

Offset 1, canonical program `A192308.P10506778276334213856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A192308 (n : ℕ) : ℤ :=
  A192308.P10506778276334213856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A192308.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A192633.P30203612038079330

`∑[A186546(n)]`
-/

namespace A192633.P30203612038079330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192633.P30203612038079330

noncomputable section

/-- A192633: Partial sums of the Floor-Sqrt transform of Catalan numbers.

Offset 0, canonical program `A192633.P30203612038079330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A192633 (n : ℕ) : ℤ :=
  A192633.P30203612038079330.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A192633.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A192663.P4494546551923171668

`floor(sqrt(A005809(n)))`
-/

namespace A192663.P4494546551923171668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005809 n)

end

end A192663.P4494546551923171668

noncomputable section

/-- A192663: Floor-Sqrt transform of the binomial coefficients binomial(3*n,n) (A005809).

Offset 0, canonical program `A192663.P4494546551923171668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A192663 (n : ℕ) : ℤ :=
  A192663.P4494546551923171668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A192663.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A192830.P17511566596141755824

`(n+1)*(A011782(n)+n)*A001788(n)`
-/

namespace A192830.P17511566596141755824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((A011782 n + (n : ℤ)) * A001788 n)

end

end A192830.P17511566596141755824

noncomputable section

/-- A192830: Molecular topological indices of the halved cube graphs.

Offset 1, canonical program `A192830.P17511566596141755824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A192830 (n : ℕ) : ℤ :=
  A192830.P17511566596141755824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A192830.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A193303.P18416106213522661850

`record[lcm(∏{p}[n+1, #], A038500(n+1))]`
-/

namespace A193303.P18416106213522661850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) (A038500 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193303.P18416106213522661850

noncomputable section

/-- A193303: Squarefree numbers multiplied by powers of three.

Offset 1, canonical program `A193303.P18416106213522661850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6845 terms. -/
def A193303 (n : ℕ) : ℤ :=
  (A193303.P18416106213522661850.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6845 terms. -/
def A193303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193349.P5306550056024539680

`A000593(∏{e}[n+1, #+1])`
-/

namespace A193349.P5306550056024539680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A193349.P5306550056024539680

noncomputable section

/-- A193349: Sum of odd divisors of tau(n).

Offset 1, canonical program `A193349.P5306550056024539680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193349 (n : ℕ) : ℤ :=
  A193349.P5306550056024539680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193349.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A194029.P711828360008281338

`2-A087172(n+1)+n`
-/

namespace A194029.P711828360008281338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A087172 (n + 1) + (n : ℤ)

end

end A194029.P711828360008281338

noncomputable section

/-- A194029: Natural fractal sequence of the Fibonacci sequence (1, 2, 3, 5, 8, ...).

Offset 1, canonical program `A194029.P711828360008281338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194029 (n : ℕ) : ℤ :=
  A194029.P711828360008281338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194039.P18147663489930065909

`A193433(n+1)-A193462(n+1)`
-/

namespace A194039.P18147663489930065909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193433 (n + 1) - A193462 (n + 1)

end

end A194039.P18147663489930065909

noncomputable section

/-- A194039: Sum of nonprime divisors of n^2 + 1.

Offset 1, canonical program `A194039.P18147663489930065909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A194039 (n : ℕ) : ℤ :=
  A194039.P18147663489930065909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A194039.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A194106.P3441247699156475905

`and(∑[A022838(n+1)], -1)`
-/

namespace A194106.P3441247699156475905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A194106.P3441247699156475905

noncomputable section

/-- A194106: Sum{floor(j*sqrt(3)) : 1<=j<=n}; n-th partial sum of Beatty sequence for sqrt(3).

Offset 1, canonical program `A194106.P3441247699156475905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194106 (n : ℕ) : ℤ :=
  A194106.P3441247699156475905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194110.P16949318337987914830

`and(∑[A022839(n+1)], -1)`
-/

namespace A194110.P16949318337987914830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A194110.P16949318337987914830

noncomputable section

/-- A194110: Sum{floor(j*sqrt(5)) : 1<=j<=n}; n-th partial sum of Beatty sequence for sqrt(5).

Offset 1, canonical program `A194110.P16949318337987914830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194110 (n : ℕ) : ℤ :=
  A194110.P16949318337987914830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194112.P17551238798622541587

`and(∑[A022842(n+1)], -1)`
-/

namespace A194112.P17551238798622541587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A194112.P17551238798622541587

noncomputable section

/-- A194112: a(n) = Sum_{j=1..n} floor(j*sqrt(8)); n-th partial sum of Beatty sequence for sqrt(8).

Offset 1, canonical program `A194112.P17551238798622541587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194112 (n : ℕ) : ℤ :=
  A194112.P17551238798622541587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194112.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A194145.P16327926411740099884

`A022840(n+1)-(n+1)`
-/

namespace A194145.P16327926411740099884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1) - (n + 1 : ℤ)

end

end A194145.P16327926411740099884

noncomputable section

/-- A194145: Beatty sequence for -1+sqrt(6), a(n) = floor(n*(-1+sqrt(6))); complement of A194146.

Offset 1, canonical program `A194145.P16327926411740099884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194145 (n : ℕ) : ℤ :=
  A194145.P16327926411740099884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194145.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A194920.P12014009252358147368

`A183138(n+1)+1`
-/

namespace A194920.P12014009252358147368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (n + 1) + 1

end

end A194920.P12014009252358147368

noncomputable section

/-- A194920: a(n) = n - floor(n/sqrt(2)).

Offset 1, canonical program `A194920.P12014009252358147368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194920 (n : ℕ) : ℤ :=
  A194920.P12014009252358147368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194979.P13496315852434882943

`1+A097337(n+1)`
-/

namespace A194979.P13496315852434882943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A097337 (n + 1)

end

end A194979.P13496315852434882943

noncomputable section

/-- A194979: a(n) = 1 + floor(n/sqrt(3)).

Offset 1, canonical program `A194979.P13496315852434882943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097337, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194979 (n : ℕ) : ℤ :=
  A194979.P13496315852434882943.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097337, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194979.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A195585.P15220991092624412185

`A065764((n+1)/and(n+1, -(n+1)))+A065764(n+1)`
-/

namespace A195585.P15220991092624412185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat + A065764 (n + 1)

end

end A195585.P15220991092624412185

noncomputable section

/-- A195585: sigma(2*n^2) - sigma(n^2).

Offset 1, canonical program `A195585.P15220991092624412185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195585 (n : ℕ) : ℤ :=
  A195585.P15220991092624412185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195686.P16431381377723371230

`(n+1)*A098512(n)`
-/

namespace A195686.P16431381377723371230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A098512 n

end

end A195686.P16431381377723371230

noncomputable section

/-- A195686: a(n) = C(2*n,n) / gcd(n,C(2*n,n)).

Offset 0, canonical program `A195686.P16431381377723371230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A195686 (n : ℕ) : ℤ :=
  A195686.P16431381377723371230.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A195686.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A196279.P10021771390144808542

`A194519(n+1)-1`
-/

namespace A196279.P10021771390144808542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194519 (n + 1) - 1

end

end A196279.P10021771390144808542

noncomputable section

/-- A196279: Let r= (7n) mod 10 and x=floor(7n/10) be the last digit and leading part of 7n. Then a(n) = (x-2r)/7.

Offset 0, canonical program `A196279.P10021771390144808542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196279 (n : ℕ) : ℤ :=
  A196279.P10021771390144808542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196279.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A197878.P2347654644511512118

`∑[A018245(n+1)]`
-/

namespace A197878.P2347654644511512118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197878.P2347654644511512118

noncomputable section

/-- A197878: a(n) = floor(2*(1 + sqrt(2))*n).

Offset 1, canonical program `A197878.P2347654644511512118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197878 (n : ℕ) : ℤ :=
  A197878.P2347654644511512118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197879.P4266122216531450186

`(A022842(n+1)%2)²`
-/

namespace A197879.P4266122216531450186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022842 (n + 1)) 2 ^ 2

end

end A197879.P4266122216531450186

noncomputable section

/-- A197879: Parity of floor(n*sqrt(8)).

Offset 1, canonical program `A197879.P4266122216531450186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197879 (n : ℕ) : ℤ :=
  A197879.P4266122216531450186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197879.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A199338.P12770719292139059276

`A103201(A028310(n))^abs(A062157(n))`
-/

namespace A199338.P12770719292139059276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103201 (A028310 n).toNat : ℚ) ^ (|A062157 n| : ℤ)

end

end A199338.P12770719292139059276

noncomputable section

/-- A199338: y-values in the solution to 15*x^2 - 14 = y^2.

Offset 1, canonical program `A199338.P12770719292139059276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A199338 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A199338.P12770719292139059276.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A199338.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A200310.P15227365676242880610

`∑[abs(Δ[A003143(n)])]`
-/

namespace A200310.P15227365676242880610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003143 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200310.P15227365676242880610

noncomputable section

/-- A200310: a(n) = n-1 for n <= 4, otherwise if n is even then a(n) = a(n-5)+2^(n/2), and if n is odd then a(n) = a(n-1)+2^((n-3)/2).

Offset 1, canonical program `A200310.P15227365676242880610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A200310 (n : ℕ) : ℤ :=
  A200310.P15227365676242880610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A200310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200563.P12269536516070508962

`∑[A200562(n+2)-A200562(n)]`
-/

namespace A200563.P12269536516070508962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200562 (n + 2) - A200562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200563.P12269536516070508962

noncomputable section

/-- A200563: Expansion of -2*x*(1+4*x) / ((2*x-1)*(4*x^2+3*x+1)).

Offset 1, canonical program `A200563.P12269536516070508962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A200563 (n : ℕ) : ℤ :=
  A200563.P12269536516070508962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A200563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200613.P5415592000491537825

`A258431(n+1)+A001700(n)-A000346(n)`
-/

namespace A200613.P5415592000491537825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258431 (n + 1) + (A001700 n - A000346 n)

end

end A200613.P5415592000491537825

noncomputable section

/-- A200613: Number of quasi-abelian ideals in the affine Lie algebra sl_n^{hat}.

Offset 1, canonical program `A200613.P5415592000491537825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A200613 (n : ℕ) : ℤ :=
  A200613.P5415592000491537825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A200613.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A200815.P8613830300835132678

`A036459(∏{e}[n+3, #+1])`
-/

namespace A200815.P8613830300835132678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036459 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A200815.P8613830300835132678

noncomputable section

/-- A200815: Number of iterations of k -> d(k) until n reaches an odd prime.

Offset 3, canonical program `A200815.P8613830300835132678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200815 (n : ℕ) : ℤ :=
  A200815.P8613830300835132678.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200888.P1885015922845263124

`Δ[A002299(n)]+∑[A053134(n)]`
-/

namespace A200888.P1885015922845263124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002299 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A200888.P1885015922845263124

noncomputable section

/-- A200888: Number of 0..n arrays x(0..4) of 5 elements without any interior element greater than both neighbors.

Offset 1, canonical program `A200888.P1885015922845263124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A200888 (n : ℕ) : ℤ :=
  A200888.P1885015922845263124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A200888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200905.P4388094907414912323

`3*(A121048(n+1)-(n+1))`
-/

namespace A200905.P4388094907414912323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A121048 (n + 1) - (n + 1 : ℤ))

end

end A200905.P4388094907414912323

noncomputable section

/-- A200905: a(n) = 3*phi(n), where phi (A000010) is the Euler totient function.

Offset 1, canonical program `A200905.P4388094907414912323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200905 (n : ℕ) : ℤ :=
  A200905.P4388094907414912323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200905.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A202023.P13237295766979010631

`C(A003056(n), A056944(n))`
-/

namespace A202023.P13237295766979010631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A056944 n).toNat

end

end A202023.P13237295766979010631

noncomputable section

/-- A202023: Triangle T(n,k), read by rows, given by (1, 0, 1, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (0, 1, -1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A202023.P13237295766979010631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202023 (n : ℕ) : ℤ :=
  (A202023.P13237295766979010631.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202096.P16574343800052593515

`A001249(A008619(n+1))*A001249(A008619(n)+1)`
-/

namespace A202096.P16574343800052593515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 (A008619 (n + 1)).toNat * A001249 (A008619 n + 1).toNat

end

end A202096.P16574343800052593515

noncomputable section

/-- A202096: Number of (n+2) X 6 binary arrays avoiding patterns 001 and 011 in rows and columns.

Offset 1, canonical program `A202096.P16574343800052593515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202096 (n : ℕ) : ℤ :=
  A202096.P16574343800052593515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202111.P7442929700916070753

`A175851(∑{d}[n+2, #]-1)`
-/

namespace A202111.P7442929700916070753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (∑ d ∈ Nat.divisors (f1 n), d - 1)

end

end A202111.P7442929700916070753

noncomputable section

/-- A202111: a(n) = sigma(n) - p, where p is the largest prime < sigma(n).

Offset 2, canonical program `A202111.P7442929700916070753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202111 (n : ℕ) : ℤ :=
  A202111.P7442929700916070753.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202276.P11372972948396556949

`∑[A175253(n+1)]`
-/

namespace A202276.P11372972948396556949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P11372972948396556949

noncomputable section

/-- A202276: Number of integers k <= n such that sigma(x) = k has no solution, sigma = A000203.

Offset 1, canonical program `A202276.P11372972948396556949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202276 (n : ℕ) : ℤ :=
  A202276.P11372972948396556949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202276.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A204171.P324095160493224964

`(A183301(n+1)%2)²`
-/

namespace A204171.P324095160493224964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183301 (n + 1)) 2 ^ 2

end

end A204171.P324095160493224964

noncomputable section

/-- A204171: Symmetric matrix based on f(i,j)=(1 if max(i,j) is odd, and 0 otherwise), by antidiagonals.

Offset 1, canonical program `A204171.P324095160493224964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204171 (n : ℕ) : ℤ :=
  A204171.P324095160493224964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204171.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A204544.P4329731522923238201

`5^n*A002380(n)`
-/

namespace A204544.P4329731522923238201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A002380 n

end

end A204544.P4329731522923238201

noncomputable section

/-- A204544: Fractional part of (3/2)^n without the decimal point.

Offset 0, canonical program `A204544.P4329731522923238201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A204544 (n : ℕ) : ℤ :=
  A204544.P4329731522923238201.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A204544.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A205591.P17423740330710728574

`A006998(n+2)/2`
-/

namespace A205591.P17423740330710728574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006998 (n + 2) : ℚ) / 2

end

end A205591.P17423740330710728574

noncomputable section

/-- A205591: a(1) = 1, a(n) = a(floor((2n-1)/3)) + a(floor(2n/3)) for n > 1.

Offset 1, canonical program `A205591.P17423740330710728574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A205591 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A205591.P17423740330710728574.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A205591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206268.P9393558027782757496

`A191830(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A206268.P9393558027782757496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A191830 (n - 1) + a (n - 1)

end

end A206268.P9393558027782757496

noncomputable section

/-- A206268: Number of compositions of n with at most one 1.

Offset 0, canonical program `A206268.P9393558027782757496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A206268 (n : ℕ) : ℤ :=
  A206268.P9393558027782757496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A206268.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A206805.P18067010656320229901

`Δ[A025713(n)]-1`
-/

namespace A206805.P18067010656320229901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A206805.P18067010656320229901

noncomputable section

/-- A206805: Position of 2^n when {2^j} and {3^k} are jointly ranked; complement of A206807.

Offset 1, canonical program `A206805.P18067010656320229901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206805 (n : ℕ) : ℤ :=
  A206805.P18067010656320229901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206805.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A208283.P16703213557621854857

`A207255(n+1)+A036464(n+1)`
-/

namespace A208283.P16703213557621854857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207255 (n + 1) + A036464 (n + 1)

end

end A208283.P16703213557621854857

noncomputable section

/-- A208283: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

Offset 1, canonical program `A208283.P16703213557621854857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208283 (n : ℕ) : ℤ :=
  A208283.P16703213557621854857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208283.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A208890.P15905558347705889732

`A000984(n)*A004981(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A208890.P15905558347705889732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A004981 n

end

end A208890.P15905558347705889732

noncomputable section

/-- A208890: a(n) = A000984(n)*A004981(n), the term-wise product of the coefficients in (1-4*x)^(-1/2) and (1-8*x)^(-1/4).

Offset 0, canonical program `A208890.P15905558347705889732`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004981, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208890 (n : ℕ) : ℤ :=
  A208890.P15905558347705889732.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004981, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208890.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A209614.P10572847628687150085

`∑{d}[Δ[A048766(n)], A000045((n+1)/#)]`
-/

namespace A209614.P10572847628687150085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A209614.P10572847628687150085

noncomputable section

/-- A209614: G.f.: Sum_{n>=1} Fibonacci(n^3)*x^(n^3).

Offset 1, canonical program `A209614.P10572847628687150085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A209614 (n : ℕ) : ℤ :=
  A209614.P10572847628687150085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A209614.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A209662.P6272469017836164669

`A061019(n+1)*A209615(n+1)`
-/

namespace A209662.P6272469017836164669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061019 (n + 1) * A209615 (n + 1)

end

end A209662.P6272469017836164669

noncomputable section

/-- A209662: a(n) = (-1)^A083025(n)*n.

Offset 1, canonical program `A209662.P6272469017836164669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209662 (n : ℕ) : ℤ :=
  A209662.P6272469017836164669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209662.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A210464.P9432782915484153486

`A168380(n+2)-A006918(n)`
-/

namespace A210464.P9432782915484153486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (n + 2) - A006918 n

end

end A210464.P9432782915484153486

noncomputable section

/-- A210464: Number of bracelets with 2 blue, 2 red, and n black beads.

Offset 1, canonical program `A210464.P9432782915484153486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210464 (n : ℕ) : ℤ :=
  A210464.P9432782915484153486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210464.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A210934.P6617217077888488102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A210934 (n : ℕ) : ℤ :=
  A210934.P6617217077888488102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A210934.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A210936.P14296701000802497448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A210936 (n : ℕ) : ℤ :=
  A210936.P14296701000802497448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A210936.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A211542.P7607861162328610110

`A004652(n)-A069905(A052938(n))`
-/

namespace A211542.P7607861162328610110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n - A069905 (A052938 n).toNat

end

end A211542.P7607861162328610110

noncomputable section

/-- A211542: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w=4y-3x.

Offset 0, canonical program `A211542.P7607861162328610110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211542 (n : ℕ) : ℤ :=
  A211542.P7607861162328610110.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211779.P11493622072280912374

`A007429(n+1)-A000203(n+1)`
-/

namespace A211779.P11493622072280912374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) - A000203 (n + 1)

end

end A211779.P11493622072280912374

noncomputable section

/-- A211779: a(n) = Sum_{d_

Offset 1, canonical program `A211779.P11493622072280912374`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211779 (n : ℕ) : ℤ :=
  A211779.P11493622072280912374.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211779.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211780.P8877674507974761173

`A007429(n+1)-(n+1)`
-/

namespace A211780.P8877674507974761173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) - (n + 1 : ℤ)

end

end A211780.P8877674507974761173

noncomputable section

/-- A211780: a(n) = Sum_{d|n, d

Offset 1, canonical program `A211780.P8877674507974761173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211780 (n : ℕ) : ℤ :=
  A211780.P8877674507974761173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211780.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A212404.P10514492863889483640

`A004171(n+1)+A001791(n)`
-/

namespace A212404.P10514492863889483640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (n + 1) + A001791 n

end

end A212404.P10514492863889483640

noncomputable section

/-- A212404: Number of binary arrays of length 2*n+2 with no more than n ones in any length 2n subsequence (=50% duty cycle).

Offset 1, canonical program `A212404.P10514492863889483640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A212404 (n : ℕ) : ℤ :=
  A212404.P10514492863889483640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A212404.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A141446.P2043931798883872949

`∑[A168150(A028310(n))]%9`
-/

namespace A141446.P2043931798883872949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168150 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 9

end

end A141446.P2043931798883872949

noncomputable section

/-- A141446: A102055(n) mod 9.

Offset 0, canonical program `A141446.P2043931798883872949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A141446 (n : ℕ) : ℤ :=
  A141446.P2043931798883872949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A141446.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A141782.P92115349010775407

`A005232(n+7)-(A028242(n)+1)`
-/

namespace A141782.P92115349010775407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (n + 7) - (A028242 n + 1)

end

end A141782.P92115349010775407

noncomputable section

/-- A141782: Number of connected graphs with one cycle of length m = n-4 and n nodes.

Offset 7, canonical program `A141782.P92115349010775407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A141782 (n : ℕ) : ℤ :=
  A141782.P92115349010775407.a (n - 7)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A141782.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144612.P13905002167202246023

`char[A186539(n+1)-1]`
-/

namespace A144612.P13905002167202246023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144612.P13905002167202246023

noncomputable section

/-- A144612: Sturmian word of slope (3-sqrt(3))/2.

Offset 1, canonical program `A144612.P13905002167202246023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144612 (n : ℕ) : ℤ :=
  (A144612.P13905002167202246023.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144612.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A146321.P17007843695888336122

`A158927(n)-A122803(n)`
-/

namespace A146321.P17007843695888336122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158927 n - A122803 n

end

end A146321.P17007843695888336122

noncomputable section

/-- A146321: Inverse binomial transform of A070366.

Offset 0, canonical program `A146321.P17007843695888336122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A146321 (n : ℕ) : ℤ :=
  A146321.P17007843695888336122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A146321.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A152761.P10007199758081199607

`A152762(n)+A000108(n)`
-/

namespace A152761.P10007199758081199607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + A000108 n

end

end A152761.P10007199758081199607

noncomputable section

/-- A152761: Sum of divisors of Catalan number A000108(n).

Offset 0, canonical program `A152761.P10007199758081199607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152761 (n : ℕ) : ℤ :=
  A152761.P10007199758081199607.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152761.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A155058.P1638704524620935071

`p?[n*A054055(n)%2]`
-/

namespace A155058.P1638704524620935071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A054055 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155058.P1638704524620935071

noncomputable section

/-- A155058: Primes with odd largest digit.

Offset 1, canonical program `A155058.P1638704524620935071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A155058 (n : ℕ) : ℤ :=
  A155058.P1638704524620935071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A155058.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A156264.P13938307247188690438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156264 (n : ℕ) : ℤ :=
  A156264.P13938307247188690438.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156264.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A157970.P9283823334930395978

`A248056(n+1)-1`
-/

namespace A157970.P9283823334930395978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248056 (n + 1) - 1

end

end A157970.P9283823334930395978

noncomputable section

/-- A157970: Evil twin locations: first members of pairs of consecutive evil numbers.

Offset 1, canonical program `A157970.P9283823334930395978`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248056, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157970 (n : ℕ) : ℤ :=
  A157970.P9283823334930395978.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248056, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157970.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A159987.P18264325475443909403

`A289682(n)%8`
-/

namespace A159987.P18264325475443909403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289682 n) 8

end

end A159987.P18264325475443909403

noncomputable section

/-- A159987: Catalan numbers read modulo 8.

Offset 0, canonical program `A159987.P18264325475443909403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159987 (n : ℕ) : ℤ :=
  A159987.P18264325475443909403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159987.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A160255.P7447446046058852209

`(n+1)*∑[n+1]-A344510(n+1)`
-/

namespace A160255.P7447446046058852209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A344510 (n + 1)

end

end A160255.P7447446046058852209

noncomputable section

/-- A160255: The sum of all the entries in an n X n Cayley table for multiplication in Z_n.

Offset 1, canonical program `A160255.P7447446046058852209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160255 (n : ℕ) : ℤ :=
  A160255.P7447446046058852209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160796.P3091951535364728411

`∑[A160797(A028310(n))]-1`
-/

namespace A160796.P3091951535364728411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160797 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160796.P3091951535364728411

noncomputable section

/-- A160796: Total number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton which is the "corner" structure corresponding to A160118.

Offset 0, canonical program `A160796.P3091951535364728411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1093 terms. -/
def A160796 (n : ℕ) : ℤ :=
  A160796.P3091951535364728411.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1093 terms. -/
def A160796.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A166234.P18016884847511072532

`∏{e}[n+1, A219009(#)]`
-/

namespace A166234.P18016884847511072532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A219009 (Nat.factorization (f1 n) p)

end

end A166234.P18016884847511072532

noncomputable section

/-- A166234: The inverse of the constant 1 function under the exponential convolution (also called the exponential Möbius function).

Offset 1, canonical program `A166234.P18016884847511072532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166234 (n : ℕ) : ℤ :=
  A166234.P18016884847511072532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166234.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A168338.P16717668218238744445

`∑{d}[n+1, A054055(#)]`
-/

namespace A168338.P16717668218238744445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054055 d

end

end A168338.P16717668218238744445

noncomputable section

/-- A168338: Sum of the largest digit of the divisors of n.

Offset 1, canonical program `A168338.P16717668218238744445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168338 (n : ℕ) : ℤ :=
  A168338.P16717668218238744445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168338.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A173290.P15347892615979240028

`∑[A003557(n+1)*A048250(n+1)]`
-/

namespace A173290.P15347892615979240028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A048250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P15347892615979240028

noncomputable section

/-- A173290: Partial sums of A001615.

Offset 1, canonical program `A173290.P15347892615979240028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173290 (n : ℕ) : ℤ :=
  A173290.P15347892615979240028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173528.P13918051081515901194

`∑{digits}[A007094(n)+1, #]`
-/

namespace A173528.P13918051081515901194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A173528.P13918051081515901194

noncomputable section

/-- A173528: a(n) = 1 + sum of digits of n-1 written in base 8.

Offset 1, canonical program `A173528.P13918051081515901194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173528 (n : ℕ) : ℤ :=
  (A173528.P13918051081515901194.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173528.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174932.P5037528043443985446

`(n+1)*∑{d}[n+1, A007956(#)]`
-/

namespace A174932.P5037528043443985446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A007956 d)

end

end A174932.P5037528043443985446

noncomputable section

/-- A174932: a(n) = Sum_{d|n} A007955(d) * A000027(n/d) = Sum_{d|n} A007955(d) * (n/d), where A007955(m) = product of divisors of m.

Offset 1, canonical program `A174932.P5037528043443985446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A174932 (n : ℕ) : ℤ :=
  A174932.P5037528043443985446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A174932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174937.P745784790892421709

`∑{d}[n+1, (#*A007956(#))²]`
-/

namespace A174937.P745784790892421709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A007956 d) ^ 2

end

end A174937.P745784790892421709

noncomputable section

/-- A174937: a(n) = Sum_{d|n} d^tau(d).

Offset 1, canonical program `A174937.P745784790892421709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A174937 (n : ℕ) : ℤ :=
  A174937.P745784790892421709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A174937.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A175317.P3664450880219237391

`∑{d}[n+1, #*A007956(#)]`
-/

namespace A175317.P3664450880219237391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007956 d

end

end A175317.P3664450880219237391

noncomputable section

/-- A175317: a(n) = Sum_{d|n} A007955(d) where A007955(m) = product of divisors of m.

Offset 1, canonical program `A175317.P3664450880219237391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A175317 (n : ℕ) : ℤ :=
  A175317.P3664450880219237391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A175317.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A177023.P7730058031630086016

`A062173(2*n+3)`
-/

namespace A177023.P7730058031630086016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (2 * n + 3)

end

end A177023.P7730058031630086016

noncomputable section

/-- A177023: a(n) = 2^(2*n) mod (2*n+1).

Offset 1, canonical program `A177023.P7730058031630086016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177023 (n : ℕ) : ℤ :=
  A177023.P7730058031630086016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177733.P18146593740982256021

`∩[A105441(n+1), A187811(n+1)]`
-/

namespace A177733.P18146593740982256021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177733.P18146593740982256021

noncomputable section

/-- A177733: Integers that can be expressed as the sum of two or more positive consecutive numbers (the largest being even) AND also as the sum of two or more positive consecutive numbers (the largest being odd).

Offset 1, canonical program `A177733.P18146593740982256021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8278 terms. -/
def A177733 (n : ℕ) : ℤ :=
  (A177733.P18146593740982256021.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8278 terms. -/
def A177733.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A178788.P8417566413823769035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178788 (n : ℕ) : ℤ :=
  (A178788.P8417566413823769035.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
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

/-! ## A179871.P2683143761159696687

`eq[1, A365428(n+1)]+1`
-/

namespace A179871.P2683143761159696687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179871.P2683143761159696687

noncomputable section

/-- A179871: Numbers h such that antiharmonic mean B(h) of the numbers k < h such that gcd(k, h) = 1 is an integer.

Offset 1, canonical program `A179871.P2683143761159696687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179871 (n : ℕ) : ℤ :=
  (A179871.P2683143761159696687.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179872.P11054619685292049350

`lt[A365428(n+1), 1]+1`
-/

namespace A179872.P11054619685292049350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365428 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A179872.P11054619685292049350

noncomputable section

/-- A179872: Numbers h such that antiharmonic mean B(h) of the numbers k < h such that gcd(k, h) = 1 is not integer.

Offset 1, canonical program `A179872.P11054619685292049350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179872 (n : ℕ) : ℤ :=
  (A179872.P11054619685292049350.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179872.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A179976.P9048867275257743086

`A015910(2*n+1)`
-/

namespace A179976.P9048867275257743086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (2 * n + 1)

end

end A179976.P9048867275257743086

noncomputable section

/-- A179976: a(n) = 2^(2n+1) mod (2n+1).

Offset 0, canonical program `A179976.P9048867275257743086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A015910, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179976 (n : ℕ) : ℤ :=
  A179976.P9048867275257743086.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A015910, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179976.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A180199.P7858093965837242731

`A180201(A180201(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180199.P7858093965837242731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (A180201 n).toNat

end

end A180199.P7858093965837242731

noncomputable section

/-- A180199: a(n) = A180201(A180201(n)).

Offset 0, canonical program `A180199.P7858093965837242731`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180199 (n : ℕ) : ℤ :=
  A180199.P7858093965837242731.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180199.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A181859.P4231071602141331162

`A170826(round(sqrt(n²+1)))/A181861(n)`
-/

namespace A181859.P4231071602141331162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170826 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / (A181861 n : ℚ)

end

end A181859.P4231071602141331162

noncomputable section

/-- A181859: a(n) = gcd(n^2, n!) / gcd(n^2, n!/floor(n/2)!^2).

Offset 0, canonical program `A181859.P4231071602141331162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9587 terms. -/
def A181859 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A181859.P4231071602141331162.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9587 terms. -/
def A181859.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A182394.P11897336731762600311

`round(atan(atan(A051950(n+2))))`
-/

namespace A182394.P11897336731762600311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.arctan (A051950 (n + 2) : ℝ)))

end

end A182394.P11897336731762600311

noncomputable section

/-- A182394: Signs of differences of number of divisors function: a(n) = sign(d(n)-d(n-1)), cf. A000005.

Offset 2, canonical program `A182394.P11897336731762600311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182394 (n : ℕ) : ℤ :=
  A182394.P11897336731762600311.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182394.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A183569.P18099393345988825343

`∑[A240025(n)+1]`
-/

namespace A183569.P18099393345988825343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183569.P18099393345988825343

noncomputable section

/-- A183569: n+floor(sqrt(4n-3)), complement of A024206.

Offset 1, canonical program `A183569.P18099393345988825343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183569 (n : ℕ) : ℤ :=
  A183569.P18099393345988825343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184012.P17651419364899133521

`A205633(n)+A183870(n+1)`
-/

namespace A184012.P17651419364899133521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205633 n + A183870 (n + 1)

end

end A184012.P17651419364899133521

noncomputable section

/-- A184012: n + floor(sqrt(5n-4)); complement of A184013.

Offset 1, canonical program `A184012.P17651419364899133521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184012 (n : ℕ) : ℤ :=
  A184012.P17651419364899133521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184117.P11570288483414038940

`A184118(n+1)%A144396(n+1)`
-/

namespace A184117.P11570288483414038940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184118 (n + 1)) (A144396 (n + 1))

end

end A184117.P11570288483414038940

noncomputable section

/-- A184117: Lower s-Wythoff sequence, where s(n) = 2n + 1.

Offset 1, canonical program `A184117.P11570288483414038940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184117 (n : ℕ) : ℤ :=
  A184117.P11570288483414038940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184117.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A184336.P15303840980857382926

`A048766(A000006(∑[n+1])-1)+1+n`
-/

namespace A184336.P15303840980857382926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000006 (∑ j ∈ Finset.range (n + 1), f1 j) - 1).toNat + 1 + (n : ℤ)

end

end A184336.P15303840980857382926

noncomputable section

/-- A184336: a(n) = n + floor((3*n)^(1/3) - 2/3).

Offset 1, canonical program `A184336.P15303840980857382926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A184336 (n : ℕ) : ℤ :=
  A184336.P15303840980857382926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A184336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184588.P7955942175751685171

`ceil(A184590(2*(n+1))/2)`
-/

namespace A184588.P7955942175751685171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184590 (2 * (n + 1)) : ℚ) / 2⌉

end

end A184588.P7955942175751685171

noncomputable section

/-- A184588: floor[(n+1/2)*e/(e-1)].

Offset 1, canonical program `A184588.P7955942175751685171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184588 (n : ℕ) : ℤ :=
  A184588.P7955942175751685171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184620.P3954462095833952262

`A008619(A184736(n+1)-n)+n`
-/

namespace A184620.P3954462095833952262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184736 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A184620.P3954462095833952262

noncomputable section

/-- A184620: a(n) = floor(nr+h), where r=sqrt(2), h=1/4; complement of A184621.

Offset 1, canonical program `A184620.P3954462095833952262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184620 (n : ℕ) : ℤ :=
  A184620.P3954462095833952262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184623.P9716467455765744133

`ceil(A288999(3*(n+1))/3)`
-/

namespace A184623.P9716467455765744133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A288999 (3 * (n + 1)) : ℚ) / 3⌉

end

end A184623.P9716467455765744133

noncomputable section

/-- A184623: a(n) = floor((n-h)*s+h), where s=2+sqrt(2) and h=-1/3; complement of A184622.

Offset 1, canonical program `A184623.P9716467455765744133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A184623 (n : ℕ) : ℤ :=
  A184623.P9716467455765744133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A184623.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A184741.P10263354780089770362

`∑[p?[2-Δ[A190843(n+1)]]]`
-/

namespace A184741.P10263354780089770362
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184741.P10263354780089770362

noncomputable section

/-- A184741: floor(n*s+h-h*s), where s=(e-1)/(e-2) and h=-1/2; complement of A184740.

Offset 1, canonical program `A184741.P10263354780089770362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7182 terms. -/
def A184741 (n : ℕ) : ℤ :=
  A184741.P10263354780089770362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7182 terms. -/
def A184741.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188013.P5416462943945789149

`comp[3*n+A285679(n+1)-1]+1`
-/

namespace A188013.P5416462943945789149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A285679 (n + 1) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188013.P5416462943945789149

noncomputable section

/-- A188013: Positions of 1 in A188011; complement of A188012.

Offset 1, canonical program `A188013.P5416462943945789149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188013 (n : ℕ) : ℤ :=
  (A188013.P5416462943945789149.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188013.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188046.P2805480995859068982

`∪[A003152(n+1), A285078(n+1)+2]`
-/

namespace A188046.P2805480995859068982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188046.P2805480995859068982

noncomputable section

/-- A188046: Positions of 1 in A188044; complement of A188045.

Offset 1, canonical program `A188046.P2805480995859068982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188046 (n : ℕ) : ℤ :=
  (A188046.P2805480995859068982.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188046.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188633.P1960431883035544566

`4*A105441(n+1)`
-/

namespace A188633.P1960431883035544566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A105441 (n + 1)

end

end A188633.P1960431883035544566

noncomputable section

/-- A188633: Numbers of the form 2^k * m, with k > 1 and m an odd composite number.

Offset 1, canonical program `A188633.P1960431883035544566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188633 (n : ℕ) : ℤ :=
  A188633.P1960431883035544566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188915.P11418170771548926014

`eq[A209229(A056926(n)), A209229(n)]`
-/

namespace A188915.P11418170771548926014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A056926 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188915.P11418170771548926014

noncomputable section

/-- A188915: Union of squares and powers of 2.

Offset 0, canonical program `A188915.P11418170771548926014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A188915 (n : ℕ) : ℤ :=
  (A188915.P11418170771548926014.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A188915.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189385.P6860432978536082996

`A184809(n+1)+A022838(n+1)`
-/

namespace A189385.P6860432978536082996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184809 (n + 1) + A022838 (n + 1)

end

end A189385.P6860432978536082996

noncomputable section

/-- A189385: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=1/sqrt(2), t=1/sqrt(3).

Offset 1, canonical program `A189385.P6860432978536082996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189385 (n : ℕ) : ℤ :=
  A189385.P6860432978536082996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189665.P18183508181986889522

`comp[A189666(n+1)-1]+1`
-/

namespace A189665.P18183508181986889522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189665.P18183508181986889522

noncomputable section

/-- A189665: Positions of 0's in A189664; complement of A189666.

Offset 1, canonical program `A189665.P18183508181986889522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189665 (n : ℕ) : ℤ :=
  (A189665.P18183508181986889522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189665.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189827.P11786162763296381781

`A092405(n+1)+A051950(n+3)`
-/

namespace A189827.P11786162763296381781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1) + A051950 (n + 3)

end

end A189827.P11786162763296381781

noncomputable section

/-- A189827: a(n) = d(n-1) + d(n+1), where d(k) is the number of divisors of k.

Offset 2, canonical program `A189827.P11786162763296381781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189827 (n : ℕ) : ℤ :=
  A189827.P11786162763296381781.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190332.P7813546941119951193

`abs(A195072(n+1)-A003512(n+1))`
-/

namespace A190332.P7813546941119951193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A195072 (n + 1) - A003512 (n + 1)|

end

end A190332.P7813546941119951193

noncomputable section

/-- A190332: n + [n*s/r] + [n*t/r]; r=1, s=sqrt(3), t=1/s.

Offset 1, canonical program `A190332.P7813546941119951193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190332 (n : ℕ) : ℤ :=
  A190332.P7813546941119951193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190592.P2630804836505561271

`A054055(A007089(n))`
-/

namespace A190592.P2630804836505561271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007089 n).toNat

end

end A190592.P2630804836505561271

noncomputable section

/-- A190592: Maximal digit in base-3 expansion of n.

Offset 0, canonical program `A190592.P2630804836505561271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190592 (n : ℕ) : ℤ :=
  A190592.P2630804836505561271.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190592.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190598.P8948535593127818796

`A054055(A007095(n))`
-/

namespace A190598.P8948535593127818796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007095 n).toNat

end

end A190598.P8948535593127818796

noncomputable section

/-- A190598: Maximal digit in base-9 expansion of n.

Offset 0, canonical program `A190598.P8948535593127818796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A190598 (n : ℕ) : ℤ :=
  A190598.P8948535593127818796.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A190598.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A191217.P5086974476563652864

`eq[1, A336937(n+1)]+1`
-/

namespace A191217.P5086974476563652864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191217.P5086974476563652864

noncomputable section

/-- A191217: Numbers k such that sigma(k) is congruent to 2 modulo 4.

Offset 1, canonical program `A191217.P5086974476563652864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7385 terms. -/
def A191217 (n : ℕ) : ℤ :=
  (A191217.P5086974476563652864.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7385 terms. -/
def A191217.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A192869.P9466224486082789538

`p?[2*A093641(n+1)-1]`
-/

namespace A192869.P9466224486082789538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093641 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192869.P9466224486082789538

noncomputable section

/-- A192869: Thin primes: odd primes p such that p+1 is a prime (or 1) times a power of two.

Offset 1, canonical program `A192869.P9466224486082789538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A192869 (n : ℕ) : ℤ :=
  A192869.P9466224486082789538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A192869.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A194146.P3688912649562326004

`A184809(n+1)+1+n`
-/

namespace A194146.P3688912649562326004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184809 (n + 1) + 1 + (n : ℤ)

end

end A194146.P3688912649562326004

noncomputable section

/-- A194146: Beatty sequence for (4+sqrt(6))/2; complement of A194145.

Offset 1, canonical program `A194146.P3688912649562326004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194146 (n : ℕ) : ℤ :=
  A194146.P3688912649562326004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194146.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A195094.P15185484469410605359

`∑{d}[n+1, A000217(#)*A087003((n+1)/#)]`
-/

namespace A195094.P15185484469410605359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A195094.P15185484469410605359

noncomputable section

/-- A195094: G.f.: Sum_{n>=1} -moebius(2*n)*x^n/(1-x^n)^3.

Offset 1, canonical program `A195094.P15185484469410605359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8200 terms. -/
def A195094 (n : ℕ) : ℤ :=
  A195094.P15185484469410605359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8200 terms. -/
def A195094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195943.P2912805975544362954

`filter[A052382(n+1), A010055(#)]`
-/

namespace A195943.P2912805975544362954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A195943.P2912805975544362954

noncomputable section

/-- A195943: Zeroless prime powers: Intersection of A000961 and A052382.

Offset 1, canonical program `A195943.P2912805975544362954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1054 terms. -/
def A195943 (n : ℕ) : ℤ :=
  A195943.P2912805975544362954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1054 terms. -/
def A195943.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A205523.P3343605037505574197

`lt[A272008(n+1), 2]+1`
-/

namespace A205523.P3343605037505574197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A205523.P3343605037505574197

noncomputable section

/-- A205523: Numbers k such that gcd(k, sigma(k)) == sigma(k) (mod k).

Offset 1, canonical program `A205523.P3343605037505574197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5222 terms. -/
def A205523 (n : ℕ) : ℤ :=
  (A205523.P3343605037505574197.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5222 terms. -/
def A205523.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A207673.P13052738508329505447

`A249115(n+1)+A005206(A016897(n))`
-/

namespace A207673.P13052738508329505447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (n + 1) + A005206 (A016897 n).toNat

end

end A207673.P13052738508329505447

noncomputable section

/-- A207673: n+[nr/s]+[nt/s], where []=floor, r=5, s=(1+sqrt(5))/2, t=1/s.

Offset 1, canonical program `A207673.P13052738508329505447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. -/
def A207673 (n : ℕ) : ℤ :=
  A207673.P13052738508329505447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. -/
def A207673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207700.P10420512059782604880

`sqrt(A207399(n+1)*A207701(n+1))`
-/

namespace A207700.P10420512059782604880
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207399 (n + 1) * A207701 (n + 1) : ℝ)

end

end A207700.P10420512059782604880

noncomputable section

/-- A207700: Number of n X 5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

Offset 1, canonical program `A207700.P10420512059782604880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207700 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207700.P10420512059782604880.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207700.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A211266.P4070917168156634709

`∑[A140106(A092405(2*n+1))]`
-/

namespace A211266.P4070917168156634709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A092405 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211266.P4070917168156634709

noncomputable section

/-- A211266: Number of integer pairs (x,y) such that 0

Offset 1, canonical program `A211266.P4070917168156634709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211266 (n : ℕ) : ℤ :=
  A211266.P4070917168156634709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211266.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144100.P2610238533023529381

`lt[A144907(n+1), n+1]+1`
-/

namespace A144100.P2610238533023529381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144907 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A144100.P2610238533023529381

noncomputable section

/-- A144100: Numbers k such that k is strictly greater than f(k), where f(k) = 1 if k is prime, 2 * rad(k) if 4 divides k and rad(k) otherwise.

Offset 1, canonical program `A144100.P2610238533023529381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A144100 (n : ℕ) : ℤ :=
  (A144100.P2610238533023529381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A144100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144101.P11412887638920219634

`A000040((n+1)/A144907(n+1))%2`
-/

namespace A144101.P11412887638920219634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A144907 (n + 1) : ℚ))).toNat) 2

end

end A144101.P11412887638920219634

noncomputable section

/-- A144101: Characteristic sequence for A144100.

Offset 1, canonical program `A144101.P11412887638920219634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144101 (n : ℕ) : ℤ :=
  A144101.P11412887638920219634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144101.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A169736.P4348614932149766899

`dr(a(n-1)*A196368(n))` with `a(0)=1, a(1)=18`
-/

namespace A169736.P4348614932149766899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n a =>
  SequenceMachineLib.digitalRoot ((a (n - 1) : ℤ) * A196368 n)

end

end A169736.P4348614932149766899

noncomputable section

/-- A169736: First differences of A169735.

Offset 1, canonical program `A169736.P4348614932149766899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169736 (n : ℕ) : ℤ :=
  (A169736.P4348614932149766899.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184625.P6856768384184417763

`A184737(2*(n+1))-(n+1)`
-/

namespace A184625.P6856768384184417763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184737 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A184625.P6856768384184417763

noncomputable section

/-- A184625: a(n) = floor((n-h)*s +h), where s=2+sqrt(2) and h=-1/4; complement of A184624.

Offset 1, canonical program `A184625.P6856768384184417763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184625 (n : ℕ) : ℤ :=
  A184625.P6856768384184417763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190364.P10571071528764847389

`A190366(A277644(n+1))+A000034(n)`
-/

namespace A190364.P10571071528764847389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190366 (A277644 (n + 1)).toNat + A000034 n

end

end A190364.P10571071528764847389

noncomputable section

/-- A190364: a(n) = n + [n*s/r] + [n*t/r] + [n*u/r]; r=sqrt(2), s=1/r, t=sqrt(3), u=1/t.

Offset 1, canonical program `A190364.P10571071528764847389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8165 terms. -/
def A190364 (n : ℕ) : ℤ :=
  A190364.P10571071528764847389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8165 terms. -/
def A190364.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144613.P4911034884845082790

`A000203(n+1)+3*A078708(n+1)`
-/

namespace A144613.P4911034884845082790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 3 * A078708 (n + 1)

end

end A144613.P4911034884845082790

noncomputable section

/-- A144613: a(n) = sigma(3*n) = A000203(3*n).

Offset 1, canonical program `A144613.P4911034884845082790`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078708, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144613 (n : ℕ) : ℤ :=
  A144613.P4911034884845082790.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078708, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144613.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145341.P9118573918497510855

`A062383(n)+n-A055945(n)`
-/

namespace A145341.P9118573918497510855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n + ((n : ℤ) - A055945 n)

end

end A145341.P9118573918497510855

noncomputable section

/-- A145341: Convert 2n-1 to binary. Reverse its digits. Convert back to decimal to get a(n).

Offset 1, canonical program `A145341.P9118573918497510855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145341 (n : ℕ) : ℤ :=
  A145341.P9118573918497510855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145341.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A145541.P1388174157055416916

`eq[A000120(n+1), A056169(n+1)]+1`
-/

namespace A145541.P1388174157055416916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A145541.P1388174157055416916

noncomputable section

/-- A145541: A positive integer n is included if (the number of 1's in the binary representation of n) = (the number of exponents equal to 1 in the prime factorization of n).

Offset 1, canonical program `A145541.P1388174157055416916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A145541 (n : ℕ) : ℤ :=
  (A145541.P1388174157055416916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A145541.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A147845.P9272741338971517792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147845 (n : ℕ) : ℤ :=
  A147845.P9272741338971517792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151757.P16989372218347473348

`(A014311(n+1)+A000079(A056558(n)))/2`
-/

namespace A151757.P16989372218347473348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014311 (n + 1) + A000079 (A056558 n).toNat : ℚ) / 2

end

end A151757.P16989372218347473348

noncomputable section

/-- A151757: Positive integers n, excluding 1 and 2^i+1 for all i, having wt <= 3.

Offset 1, canonical program `A151757.P16989372218347473348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151757 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A151757.P16989372218347473348.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154402.P2498085566391198652

`A305426(2*(n+1))`
-/

namespace A154402.P2498085566391198652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305426 (2 * (n + 1))

end

end A154402.P2498085566391198652

noncomputable section

/-- A154402: Inverse Moebius transform of Fredholm-Rueppel sequence, cf. A036987.

Offset 1, canonical program `A154402.P2498085566391198652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154402 (n : ℕ) : ℤ :=
  A154402.P2498085566391198652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157780.P17497891769004072797

`A059222(n+1)*A141459(n)`
-/

namespace A157780.P17497891769004072797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059222 (n + 1) * A141459 n

end

end A157780.P17497891769004072797

noncomputable section

/-- A157780: Denominator of Bernoulli(n, 1/2).

Offset 0, canonical program `A157780.P17497891769004072797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A157780 (n : ℕ) : ℤ :=
  A157780.P17497891769004072797.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A157780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157782.P4780299263270215936

`A141459(n)*A213173(n)`
-/

namespace A157782.P4780299263270215936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n * A213173 n

end

end A157782.P4780299263270215936

noncomputable section

/-- A157782: Denominator of Bernoulli(n, -1/2).

Offset 0, canonical program `A157782.P4780299263270215936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A157782 (n : ℕ) : ℤ :=
  A157782.P4780299263270215936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A157782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157818.P6307452564829515013

`4^n*A141459(n)`
-/

namespace A157818.P6307452564829515013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A141459 n

end

end A157818.P6307452564829515013

noncomputable section

/-- A157818: Denominator of Bernoulli(n, 1/4).

Offset 0, canonical program `A157818.P6307452564829515013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A157818 (n : ℕ) : ℤ :=
  A157818.P6307452564829515013.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A157818.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A161912.P2457371058280528067

`A040976(n+1)-A006218(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161912.P2457371058280528067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - A006218 n

end

end A161912.P2457371058280528067

noncomputable section

/-- A161912: a(n) = A040976(n+1) - A006218(n).

Offset 0, canonical program `A161912.P2457371058280528067`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, A040976, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161912 (n : ℕ) : ℤ :=
  A161912.P2457371058280528067.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, A040976, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161912.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A163603.P5999679207652327131

`A000720(A045458(n+1)+1)`
-/

namespace A163603.P5999679207652327131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A045458 (n + 1) + 1).toNat

end

end A163603.P5999679207652327131

noncomputable section

/-- A163603: Numbers k such that prime(k) == 5 (mod 7).

Offset 1, canonical program `A163603.P5999679207652327131`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A045458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163603 (n : ℕ) : ℤ :=
  A163603.P5999679207652327131.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A045458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163603.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A167268.P1719522589899369468

`2*or(1, A082375(n))`
-/

namespace A167268.P1719522589899369468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A082375 n)

end

end A167268.P1719522589899369468

noncomputable section

/-- A167268: Janet's sequence: Number of elements for each successively filled electronic subshell of an atom.

Offset 1, canonical program `A167268.P1719522589899369468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167268 (n : ℕ) : ℤ :=
  A167268.P1719522589899369468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172087.P4108028179192671906

`A141459(and(n, -2))`
-/

namespace A172087.P4108028179192671906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 (Int.land (n : ℤ) (-2)).toNat

end

end A172087.P4108028179192671906

noncomputable section

/-- A172087: A001897 with terms repeated.

Offset 0, canonical program `A172087.P4108028179192671906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1316 terms. -/
def A172087 (n : ℕ) : ℤ :=
  A172087.P4108028179192671906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1316 terms. -/
def A172087.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A178637.P1570303736559003244

`A035321(n+1)+1`
-/

namespace A178637.P1570303736559003244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035321 (n + 1) + 1

end

end A178637.P1570303736559003244

noncomputable section

/-- A178637: a(n) = sum of divisors d of n such that d is not equal to p^k where p = prime, k >=1.

Offset 1, canonical program `A178637.P1570303736559003244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178637 (n : ℕ) : ℤ :=
  A178637.P1570303736559003244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181904.P16363835435520385066

`(A000302(n+1)-1)/A141459(n+1)`
-/

namespace A181904.P16363835435520385066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 (n + 1) - 1 : ℚ) / (A141459 (n + 1) : ℚ)

end

end A181904.P16363835435520385066

noncomputable section

/-- A181904: a(n) = 2*(4^n - 1) / A027760(n).

Offset 1, canonical program `A181904.P16363835435520385066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A181904 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A181904.P16363835435520385066.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A181904.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A183039.P14868528515643785156`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051064, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183039 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A183039.P14868528515643785156.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051064, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183039.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A185307.P12380565764827468973

`comp[A075592(n+1)-1]+1`
-/

namespace A185307.P12380565764827468973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075592 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A185307.P12380565764827468973

noncomputable section

/-- A185307: Numbers not divisible by the number of their distinct prime factors.

Offset 1, canonical program `A185307.P12380565764827468973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185307 (n : ℕ) : ℤ :=
  (A185307.P12380565764827468973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185307.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A186971.P6625569853870755489

`A048865(n+1)+A057427(n)+1`
-/

namespace A186971.P6625569853870755489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + (A057427 n + 1)

end

end A186971.P6625569853870755489

noncomputable section

/-- A186971: Maximal cardinality of a subset of {1, 2, ..., n} containing n and having pairwise coprime elements.

Offset 1, canonical program `A186971.P6625569853870755489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186971 (n : ℕ) : ℤ :=
  A186971.P6625569853870755489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188068.P12204074435986584008

`A007538(n+1)-2`
-/

namespace A188068.P12204074435986584008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1) - 2

end

end A188068.P12204074435986584008

noncomputable section

/-- A188068: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(3), k=1, [ ]=floor.

Offset 1, canonical program `A188068.P12204074435986584008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A188068 (n : ℕ) : ℤ :=
  A188068.P12204074435986584008.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A188068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204822.P3966557394539859082

`∑{d}[A005101(n+1), #]`
-/

namespace A204822.P3966557394539859082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A204822.P3966557394539859082

noncomputable section

/-- A204822: Sum of divisors (A000203) of abundant numbers (A005101).

Offset 1, canonical program `A204822.P3966557394539859082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204822 (n : ℕ) : ℤ :=
  (A204822.P3966557394539859082.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204822.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A212167.P5687651809221960298

`comp[A212164(n+1)-1]+1`
-/

namespace A212167.P5687651809221960298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212164 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A212167.P5687651809221960298

noncomputable section

/-- A212167: Numbers k such that the maximum exponent in its prime factorization is not greater than the number of positive exponents (A051903(k) <= A001221(k)).

Offset 1, canonical program `A212167.P5687651809221960298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212167 (n : ℕ) : ℤ :=
  (A212167.P5687651809221960298.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212167.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A152018.P4193007003713492745

`9*A152020(n+1)`
-/

namespace A152018.P4193007003713492745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A152020 (n + 1)

end

end A152018.P4193007003713492745

noncomputable section

/-- A152018: Denominator of 1/n^2 - 1/(3*n)^2 or of 8/(9*n^2).

Offset 1, canonical program `A152018.P4193007003713492745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152018 (n : ℕ) : ℤ :=
  A152018.P4193007003713492745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152018.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A176313.P7605650811774130941

`∩[A176297(n+1)-1, A176297(n+1)]`
-/

namespace A176313.P7605650811774130941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176313.P7605650811774130941

noncomputable section

/-- A176313: First of two consecutive numbers with at least one 3 in their prime signature.

Offset 1, canonical program `A176313.P7605650811774130941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 513 terms. -/
def A176313 (n : ℕ) : ℤ :=
  (A176313.P7605650811774130941.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 513 terms. -/
def A176313.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188654.P6164592973035775826

`comp[A212166(n+1)-1]+1`
-/

namespace A188654.P6164592973035775826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188654.P6164592973035775826

noncomputable section

/-- A188654: Numbers k such that the maximum exponent in its prime factorization does not equal the number of positive exponents (A051903(k) <> A001221(k)).

Offset 1, canonical program `A188654.P6164592973035775826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188654 (n : ℕ) : ℤ :=
  (A188654.P6164592973035775826.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188654.provenance : SequenceMachineLib.Provenance := .conjectured

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

