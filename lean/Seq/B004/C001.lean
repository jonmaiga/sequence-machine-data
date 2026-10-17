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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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

/-! ## A093581.P8575942353686549720

`4*A061549(n)`
-/

namespace A093581.P8575942353686549720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A061549 n

end

end A093581.P8575942353686549720

noncomputable section

/-- A093581: Numerators of odd moments in the distribution of chord lengths for picked at random on the circumference of a unit circle.

Offset 1, canonical program `A093581.P8575942353686549720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093581 (n : ℕ) : ℤ :=
  A093581.P8575942353686549720.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124754.P14560867097318014973

`a(floor(n/2))-A106400(n)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0`
-/

namespace A124754.P14560867097318014973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat - A106400 n

end

end A124754.P14560867097318014973

noncomputable section

/-- A124754: Alternating sum of compositions in standard order.

Offset 0, canonical program `A124754.P14560867097318014973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124754 (n : ℕ) : ℤ :=
  A124754.P14560867097318014973.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131871.P10104157385363952011

`A131766(n)/18`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131871.P10104157385363952011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131766 n : ℚ) / 18

end

end A131871.P10104157385363952011

noncomputable section

/-- A131871: a(n) = A131766(n) / 18.

Offset 0, canonical program `A131871.P10104157385363952011`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131871 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131871.P10104157385363952011.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131871.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159913.P7024736967465711485

`A038573(2*n+1)`
-/

namespace A159913.P7024736967465711485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (2 * n + 1)

end

end A159913.P7024736967465711485

noncomputable section

/-- A159913: a(n) = 2^(A000120(n) + 1) - 1, where A000120(n) = number of nonzero bits in n.

Offset 0, canonical program `A159913.P7024736967465711485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159913 (n : ℕ) : ℤ :=
  A159913.P7024736967465711485.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159913.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160745.P15092458154072212321

`3*A060632(n)`
-/

namespace A160745.P15092458154072212321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A060632 n

end

end A160745.P15092458154072212321

noncomputable section

/-- A160745: First differences of A160744.

Offset 1, canonical program `A160745.P15092458154072212321`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160745 (n : ℕ) : ℤ :=
  A160745.P15092458154072212321.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161511.P16266007976091900386

`a(n-A048896(n-1))+1` with `a(0)=0`
-/

namespace A161511.P16266007976091900386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A048896 (n - 1)).toNat + 1

end

end A161511.P16266007976091900386

noncomputable section

/-- A161511: Number of 1...0 pairs in the binary representation of 2n.

Offset 0, canonical program `A161511.P16266007976091900386`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161511 (n : ℕ) : ℤ :=
  (A161511.P16266007976091900386.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082392.P13734256271788639875

`2^A025480(n)`
-/

namespace A082392.P13734256271788639875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025480 n : ℤ)

end

end A082392.P13734256271788639875

noncomputable section

/-- A082392: Expansion of (1/x) * Sum_{k>=0} x^2^k / (1 - 2*x^2^(k+1)).

Offset 0, canonical program `A082392.P13734256271788639875`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082392 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082392.P13734256271788639875.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082392.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084468.P3280344016003290935

`2*A018900(n+1)+1`
-/

namespace A084468.P3280344016003290935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018900 (n + 1) + 1

end

end A084468.P3280344016003290935

noncomputable section

/-- A084468: Odd numbers with exactly 3 ones in binary expansion.

Offset 1, canonical program `A084468.P3280344016003290935`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084468 (n : ℕ) : ℤ :=
  A084468.P3280344016003290935.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084468.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101279.P13195292340329059168

`A025480(n)+A036987(n)`
-/

namespace A101279.P13195292340329059168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + A036987 n

end

end A101279.P13195292340329059168

noncomputable section

/-- A101279: a(1) = 1; a(2k) = a(k), a(2k+1) = k.

Offset 1, canonical program `A101279.P13195292340329059168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101279 (n : ℕ) : ℤ :=
  A101279.P13195292340329059168.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101279.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129771.P17660305195438038504

`A128309(n+1)+1`
-/

namespace A129771.P17660305195438038504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128309 (n + 1) + 1

end

end A129771.P17660305195438038504

noncomputable section

/-- A129771: Evil odd numbers.

Offset 1, canonical program `A129771.P17660305195438038504`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129771 (n : ℕ) : ℤ :=
  A129771.P17660305195438038504.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129771.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081118.P6487108056144640916

`(2^A002260(n+1)-1)*2^A004736(n+1)-1`
-/

namespace A081118.P6487108056144640916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A002260 (n + 1) : ℤ) - 1) * (2 : ℚ) ^ (A004736 (n + 1) : ℤ) - 1

end

end A081118.P6487108056144640916

noncomputable section

/-- A081118: Triangle of first n numbers per row having exactly n 1's in binary representation.

Offset 1, canonical program `A081118.P6487108056144640916`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081118 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A081118.P6487108056144640916.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081118.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085058.P14130226451424256143

`A001511(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085058.P14130226451424256143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + 1

end

end A085058.P14130226451424256143

noncomputable section

/-- A085058: a(n) = A001511(n+1) + 1.

Offset 0, canonical program `A085058.P14130226451424256143`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085058 (n : ℕ) : ℤ :=
  A085058.P14130226451424256143.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094727.P1759177724676722475

`A002260(n+1)+A003056(n)`
-/

namespace A094727.P1759177724676722475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A003056 n

end

end A094727.P1759177724676722475

noncomputable section

/-- A094727: Triangle read by rows: T(n,k) = n + k, 0 <= k < n, n >= 1.

Offset 1, canonical program `A094727.P1759177724676722475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094727 (n : ℕ) : ℤ :=
  A094727.P1759177724676722475.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097806.P6713740258379660295

`floor((A002260(n+1)+2)/(A003056(n)+2))`
-/

namespace A097806.P6713740258379660295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) + 2 : ℚ) / (A003056 n + 2 : ℚ)⌋

end

end A097806.P6713740258379660295

noncomputable section

/-- A097806: Riordan array (1+x, 1) read by rows.

Offset 0, canonical program `A097806.P6713740258379660295`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097806 (n : ℕ) : ℤ :=
  A097806.P6713740258379660295.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097806.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108872.P7491610889121363756

`A002024(n+1)+A002260(n+1)`
-/

namespace A108872.P7491610889121363756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A002260 (n + 1)

end

end A108872.P7491610889121363756

noncomputable section

/-- A108872: Sums of ordinal references for a triangular table read by columns, top to bottom.

Offset 1, canonical program `A108872.P7491610889121363756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108872 (n : ℕ) : ℤ :=
  A108872.P7491610889121363756.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108872.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A114327.P9028308961649463264

`A004736(n+1)-A002260(n+1)`
-/

namespace A114327.P9028308961649463264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A002260 (n + 1)

end

end A114327.P9028308961649463264

noncomputable section

/-- A114327: Table T(n,m) = n - m read by upwards antidiagonals.

Offset 0, canonical program `A114327.P9028308961649463264`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114327 (n : ℕ) : ℤ :=
  A114327.P9028308961649463264.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114327.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115364.P11989985913028206529

`A000217(A001511(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A115364.P11989985913028206529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001511 (n + 1)).toNat

end

end A115364.P11989985913028206529

noncomputable section

/-- A115364: a(n) = A000217(A001511(n)), where A001511 is one more than the 2-adic valuation of n, and A000217(n) is the n-th triangular number, binomial(n+1, 2).

Offset 1, canonical program `A115364.P11989985913028206529`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115364 (n : ℕ) : ℤ :=
  A115364.P11989985913028206529.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115364.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119387.P13172798002277399247

`A070939(n+1)-A001511(n+1)`
-/

namespace A119387.P13172798002277399247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A001511 (n + 1)

end

end A119387.P13172798002277399247

noncomputable section

/-- A119387: a(n) is the number of binary digits (1's and nonleading 0's) which remain unchanged in their positions when n and (n+1) are written in binary.

Offset 0, canonical program `A119387.P13172798002277399247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119387 (n : ℕ) : ℤ :=
  A119387.P13172798002277399247.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119387.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120027.P1714917155360020650

`3^(A004736(n+1)-1)*5^(A002260(n+1)-1)`
-/

namespace A120027.P1714917155360020650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A004736 (n + 1) - 1 : ℤ) * (5 : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

end

end A120027.P1714917155360020650

noncomputable section

/-- A120027: Triangle, generated from (3^(n-k) * 5^k) table.

Offset 0, canonical program `A120027.P1714917155360020650`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120027 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120027.P1714917155360020650.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120027.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127899.P12920581761649048747

`floor((A002260(n+1)+2)/(A003056(n)+2))*(A003056(n)+1)*(-1)^(A002260(n+1)+A003056(n)+1)`
-/

namespace A127899.P12920581761649048747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A002260 (n + 1) + 2 : ℚ) / (A003056 n + 2 : ℚ)⌋ : ℚ) * ((A003056 n + 1 : ℚ) * (-1 : ℚ) ^ (A002260 (n + 1) + A003056 n + 1 : ℤ))

end

end A127899.P12920581761649048747

noncomputable section

/-- A127899: Transform related to the harmonic series.

Offset 1, canonical program `A127899.P12920581761649048747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127899 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127899.P12920581761649048747.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127899.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128179.P5850376553039655428

`(1-(-1)^A004736(n+1))*A002260(n+1)/2`
-/

namespace A128179.P5850376553039655428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (-1 : ℚ) ^ (A004736 (n + 1) : ℤ)) * (A002260 (n + 1) : ℚ) / 2

end

end A128179.P5850376553039655428

noncomputable section

/-- A128179: A097807 * A002260.

Offset 1, canonical program `A128179.P5850376553039655428`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128179 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128179.P5850376553039655428.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134483.P1096721902368672084

`A002260(n+1)+2*A003056(n)`
-/

namespace A134483.P1096721902368672084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + 2 * A003056 n

end

end A134483.P1096721902368672084

noncomputable section

/-- A134483: Triangle read by rows: T(n,k) = 2n + k - 2; 1 <= k <= n.

Offset 1, canonical program `A134483.P1096721902368672084`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134483 (n : ℕ) : ℤ :=
  A134483.P1096721902368672084.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136494.P13295662232037157937

`A093659(n)*A139329(n)`
-/

namespace A136494.P13295662232037157937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 n * A139329 n

end

end A136494.P13295662232037157937

noncomputable section

/-- A136494: Number of permutation symmetries in the binary expansion of n.

Offset 0, canonical program `A136494.P13295662232037157937`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136494 (n : ℕ) : ℤ :=
  A136494.P13295662232037157937.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140756.P3277884654481900354

`(-1)^(A004736(n+1)+1)*A002260(n+1)`
-/

namespace A140756.P3277884654481900354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A004736 (n + 1) + 1 : ℤ) * (A002260 (n + 1) : ℚ)

end

end A140756.P3277884654481900354

noncomputable section

/-- A140756: Count up to k sequence with alternating signs (k always positive).

Offset 1, canonical program `A140756.P3277884654481900354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140756 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140756.P3277884654481900354.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140756.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145917.P16742270102917720148

`(A002260(n+1)-1)²-4*(A004736(n+1)-1)`
-/

namespace A145917.P16742270102917720148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1) ^ 2 - 4 * (A004736 (n + 1) - 1)

end

end A145917.P16742270102917720148

noncomputable section

/-- A145917: Triangle read by rows: to get n-th row, start with -4n and successively add 5, 7, 9, 11, 13, ... until reaching a square.

Offset 0, canonical program `A145917.P16742270102917720148`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145917 (n : ℕ) : ℤ :=
  A145917.P16742270102917720148.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080099.P15784613007183456214

`A051162(n)-A080098(n)`
-/

namespace A080099.P15784613007183456214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n - A080098 n

end

end A080099.P15784613007183456214

noncomputable section

/-- A080099: Triangle T(n,k) = n AND k, 0<=k<=n, bitwise logical AND, read by rows.

Offset 0, canonical program `A080099.P15784613007183456214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080099 (n : ℕ) : ℤ :=
  A080099.P15784613007183456214.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080233.P15572603627752373411

`2*A074909(A056943(n))-A074909(n)`
-/

namespace A080233.P15572603627752373411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074909 (A056943 n).toNat - A074909 n

end

end A080233.P15572603627752373411

noncomputable section

/-- A080233: Triangle T(n,k) obtained by taking differences of consecutive pairs of row elements of Pascal's triangle A007318.

Offset 0, canonical program `A080233.P15572603627752373411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080233 (n : ℕ) : ℤ :=
  A080233.P15572603627752373411.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080468.P17864176507472903699

`n-2*A234016(n)`
-/

namespace A080468.P17864176507472903699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A234016 n

end

end A080468.P17864176507472903699

noncomputable section

/-- A080468: a(n) = A080578(n)-2n.

Offset 2, canonical program `A080468.P17864176507472903699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080468 (n : ℕ) : ℤ :=
  A080468.P17864176507472903699.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080885.P16563174699111181845

`C(A080884(n+1), 2)`
-/

namespace A080885.P16563174699111181845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080884 (n + 1)).toNat 2

end

end A080885.P16563174699111181845

noncomputable section

/-- A080885: Boolean AND of (0,1) versions of Thue-Morse word (A010060) and Fibonacci word (A003849).

Offset 1, canonical program `A080885.P16563174699111181845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080885 (n : ℕ) : ℤ :=
  (A080885.P16563174699111181845.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080886.P17709455679324199152

`floor(sqrt(A080884(n+1)))`
-/

namespace A080886.P17709455679324199152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A080884 (n + 1))

end

end A080886.P17709455679324199152

noncomputable section

/-- A080886: Boolean OR of (0,1) versions of Thue-Morse word (A010060) and Fibonacci word (A003849).

Offset 1, canonical program `A080886.P17709455679324199152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080886 (n : ℕ) : ℤ :=
  A080886.P17709455679324199152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080887.P5959729836914886980

`A080884(n+1)%2`
-/

namespace A080887.P5959729836914886980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080884 (n + 1)) 2

end

end A080887.P5959729836914886980

noncomputable section

/-- A080887: Boolean XOR of (0,1) versions of Thue-Morse word (A010060) and Fibonacci word (A003849).

Offset 1, canonical program `A080887.P5959729836914886980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080887 (n : ℕ) : ℤ :=
  A080887.P5959729836914886980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081115.P12324789555972598981

`2*A024702(n+3)`
-/

namespace A081115.P12324789555972598981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024702 (n + 3)

end

end A081115.P12324789555972598981

noncomputable section

/-- A081115: (p^2 - 1)/12 where p > 3 runs through the primes.

Offset 3, canonical program `A081115.P12324789555972598981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081115 (n : ℕ) : ℤ :=
  A081115.P12324789555972598981.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081115.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081371.P6434691763935947853

`A074909(n+1)%A002260(n+1)`
-/

namespace A081371.P6434691763935947853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074909 (n + 1)) (A002260 (n + 1))

end

end A081371.P6434691763935947853

noncomputable section

/-- A081371: Binomial coefficients C(n,j) reduced modulo j, j=1,...n; read by rows, j=0 is omitted because of mod(n,0).

Offset 1, canonical program `A081371.P6434691763935947853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081371 (n : ℕ) : ℤ :=
  A081371.P6434691763935947853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081835.P3909569724700482251

`A016777(n)+comp[A007064(2*(n+1))]`
-/

namespace A081835.P3909569724700482251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A081835.P3909569724700482251

noncomputable section

/-- A081835: a(1)=1, a(n) = a(n-1) + 5 if n is already in the sequence, a(n) = a(n-1) + 4 otherwise.

Offset 1, canonical program `A081835.P3909569724700482251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081835 (n : ℕ) : ℤ :=
  A081835.P3909569724700482251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082110.P17811097944550227352

`A082111(A004247(n))`
-/

namespace A082110.P17811097944550227352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 (A004247 n).toNat

end

end A082110.P17811097944550227352

noncomputable section

/-- A082110: Array A(n,k) = (k*n)^2 + 5*(k*n) + 1, read by antidiagonals.

Offset 0, canonical program `A082110.P17811097944550227352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082110 (n : ℕ) : ℤ :=
  A082110.P17811097944550227352.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082140.P16875489594168843538

`ceil(∑[A006976(n)/2])`
-/

namespace A082140.P16875489594168843538
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006976 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A082140.P16875489594168843538

noncomputable section

/-- A082140: A transform of binomial(n,6).

Offset 0, canonical program `A082140.P16875489594168843538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A082140 (n : ℕ) : ℤ :=
  A082140.P16875489594168843538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A082140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082146.P295525890987733699

`A029143(n)+Δ[A026811(n)]`
-/

namespace A082146.P295525890987733699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029143 n + (f1 (n + 1) - f1 n)

end

end A082146.P295525890987733699

noncomputable section

/-- A082146: Expansion of g.f.: (1+x^5)/((1-x^2)*(1-x^3)*(1-x^4)*(1-x^6)).

Offset 0, canonical program `A082146.P295525890987733699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082146 (n : ℕ) : ℤ :=
  A082146.P295525890987733699.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082968.P1835205782944855

`∑[(n+1)%A159481(n)]`
-/

namespace A082968.P1835205782944855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A159481 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082968.P1835205782944855

noncomputable section

/-- A082968: a(n)=sum(k=1,n, k mod sum(i=0,k-1,1-t(i))) where t(i)=A010060(i) is the Thue-Morse sequence.

Offset 1, canonical program `A082968.P1835205782944855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3162 terms. -/
def A082968 (n : ℕ) : ℤ :=
  A082968.P1835205782944855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3162 terms. -/
def A082968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083056.P3013421395682300767

`3*A083055(n+1)-(n+1)`
-/

namespace A083056.P3013421395682300767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083055 (n + 1) - (n + 1 : ℤ)

end

end A083056.P3013421395682300767

noncomputable section

/-- A083056: a(n) = 3*A083055(n)-n.

Offset 1, canonical program `A083056.P3013421395682300767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083056 (n : ℕ) : ℤ :=
  A083056.P3013421395682300767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083381.P16201519354346313512

`A008585(A004247(n))+A003056(n)`
-/

namespace A083381.P16201519354346313512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A004247 n).toNat + A003056 n

end

end A083381.P16201519354346313512

noncomputable section

/-- A083381: Square array giving the number of trellis edges T(i,j) (i >= 0, j >= 0), read by antidiagonals.

Offset 0, canonical program `A083381.P16201519354346313512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083381 (n : ℕ) : ℤ :=
  A083381.P16201519354346313512.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083567.P14460311508063659607

`eq[A000120(n+1), A232243(n+1)]+1`
-/

namespace A083567.P14460311508063659607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A083567.P14460311508063659607

noncomputable section

/-- A083567: Let B(k) be the number of binary digits in k equal to 1. This is the sequence of positive integers k such that 2B(k)=B(k^2).

Offset 1, canonical program `A083567.P14460311508063659607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1118 terms. -/
def A083567 (n : ℕ) : ℤ :=
  (A083567.P14460311508063659607.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1118 terms. -/
def A083567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083656.P8217995013209757616

`∑[A007069(n+1)]`
-/

namespace A083656.P8217995013209757616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083656.P8217995013209757616

noncomputable section

/-- A083656: a(n) = Sum_{i=1..n} floor(r*floor(r*i)), where r=sqrt(2).

Offset 1, canonical program `A083656.P8217995013209757616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083656 (n : ℕ) : ℤ :=
  A083656.P8217995013209757616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083922.P13071502860721527938

`∑[A083921(n+1)]`
-/

namespace A083922.P13071502860721527938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083922.P13071502860721527938

noncomputable section

/-- A083922: Partial sums of A083921.

Offset 1, canonical program `A083922.P13071502860721527938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083922 (n : ℕ) : ℤ :=
  A083922.P13071502860721527938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084228.P11895831632362515159

`∑{digits}[A160939(a(n-1)+1)-1, #]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A084228.P11895831632362515159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  A160939 (f1 (n - 1) + 1).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A084228.P11895831632362515159

noncomputable section

/-- A084228: a(1)=1, a(2)=2; thereafter a(n) = sum of digits of (a(1)+a(2)+a(3)+...+a(n-1)).

Offset 1, canonical program `A084228.P11895831632362515159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 591 terms. -/
def A084228 (n : ℕ) : ℤ :=
  (A084228.P11895831632362515159.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 591 terms. -/
def A084228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084856.P14949074464839728074

`A069482(n+2)+A069482(n+1)`
-/

namespace A084856.P14949074464839728074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069482 (n + 2) + A069482 (n + 1)

end

end A084856.P14949074464839728074

noncomputable section

/-- A084856: a(n) = prime(n+2)^2 - prime(n)^2.

Offset 1, canonical program `A084856.P14949074464839728074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084856 (n : ℕ) : ℤ :=
  A084856.P14949074464839728074.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084856.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085297.P10081021779170976826

`A001285(round(n/3))`
-/

namespace A085297.P10081021779170976826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A085297.P10081021779170976826

noncomputable section

/-- A085297: Nonzero residues of Catalan sequence modulo 3; related to the Thue-Morse sequence (A001285).

Offset 1, canonical program `A085297.P10081021779170976826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A085297 (n : ℕ) : ℤ :=
  A085297.P10081021779170976826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A085297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085765.P11713092919206785269

`a(n-1)+a(A025480(n))` with `a(0)=1`
-/

namespace A085765.P11713092919206785269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A025480 n).toNat

end

end A085765.P11713092919206785269

noncomputable section

/-- A085765: Partial sums and bisection of A086450.

Offset 0, canonical program `A085765.P11713092919206785269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085765 (n : ℕ) : ℤ :=
  (A085765.P11713092919206785269.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085860.P17709780043344454738

`∑{digits}[A000045(n), A293162(#+1)]`
-/

namespace A085860.P17709780043344454738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A293162 (x + 1)).sum

end

end A085860.P17709780043344454738

noncomputable section

/-- A085860: Number of 6's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085860.P17709780043344454738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085860 (n : ℕ) : ℤ :=
  A085860.P17709780043344454738.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085861.P2818835720903400278

`∑{digits}[A000045(n), A293162(#)]`
-/

namespace A085861.P2818835720903400278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A293162 x).sum

end

end A085861.P2818835720903400278

noncomputable section

/-- A085861: Number of 7's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085861.P2818835720903400278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085861 (n : ℕ) : ℤ :=
  A085861.P2818835720903400278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086016.P424081892112326700

`∑{digits}[n², A054438(#)]`
-/

namespace A086016.P424081892112326700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A054438 x).sum

end

end A086016.P424081892112326700

noncomputable section

/-- A086016: Number of 8's in decimal expansion of n^2.

Offset 0, canonical program `A086016.P424081892112326700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086016 (n : ℕ) : ℤ :=
  A086016.P424081892112326700.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086270.P16223881914570881253

`A004736(n+1)+A002260(n+1)*A161680(A004736(n+1))`
-/

namespace A086270.P16223881914570881253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A002260 (n + 1) * A161680 (A004736 (n + 1)).toNat

end

end A086270.P16223881914570881253

noncomputable section

/-- A086270: Rectangular array T(k,n) of polygonal numbers, by antidiagonals.

Offset 1, canonical program `A086270.P16223881914570881253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086270 (n : ℕ) : ℤ :=
  A086270.P16223881914570881253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086272.P15137764482434958628

`(A002260(n+1)+1)*C(A004736(n+1), 2)+1`
-/

namespace A086272.P15137764482434958628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) + 1) * (Nat.choose (A004736 (n + 1)).toNat 2 : ℤ) + 1

end

end A086272.P15137764482434958628

noncomputable section

/-- A086272: Rectangular array T(n,k) of central polygonal numbers, by antidiagonals.

Offset 1, canonical program `A086272.P15137764482434958628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086272 (n : ℕ) : ℤ :=
  A086272.P15137764482434958628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086460.P16824943285263387007

`A010054(n)+A004247(n)`
-/

namespace A086460.P16824943285263387007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + A004247 n

end

end A086460.P16824943285263387007

noncomputable section

/-- A086460: Square array read by antidiagonals: A(n, k) = n*k + 0^k.

Offset 0, canonical program `A086460.P16824943285263387007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086460 (n : ℕ) : ℤ :=
  A086460.P16824943285263387007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087116.P11350810953562711327

`A069010(n)-Δ[ceil(abs((1-n)/2))]`
-/

namespace A087116.P11350810953562711327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n - (f1 (n + 1) - f1 n)

end

end A087116.P11350810953562711327

noncomputable section

/-- A087116: Number of maximal groups of consecutive zeros in binary representation of n.

Offset 0, canonical program `A087116.P11350810953562711327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087116 (n : ℕ) : ℤ :=
  A087116.P11350810953562711327.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087486.P8452078015866765301

`eq[A007953(n), A081653(A028310(n))]`
-/

namespace A087486.P8452078015866765301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081653 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087486.P8452078015866765301

noncomputable section

/-- A087486: Numbers k such that digital sum of k divides digital sum of k-th prime, p(k).

Offset 1, canonical program `A087486.P8452078015866765301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A087486 (n : ℕ) : ℤ :=
  (A087486.P8452078015866765301.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A087486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088512.P15945128481436275325

`floor(A038573(n)/2)`
-/

namespace A088512.P15945128481436275325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038573 n : ℚ) / 2⌋

end

end A088512.P15945128481436275325

noncomputable section

/-- A088512: Number of partitions of n into two parts whose xor-sum is n.

Offset 0, canonical program `A088512.P15945128481436275325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088512 (n : ℕ) : ℤ :=
  A088512.P15945128481436275325.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088766.P6906496388869347381

`(A087681(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088766.P6906496388869347381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087681 (n + 1) - 1 : ℚ) / 2

end

end A088766.P6906496388869347381

noncomputable section

/-- A088766: a(n) = (A087681(n)-1)/2.

Offset 1, canonical program `A088766.P6906496388869347381`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087681, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088766 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088766.P6906496388869347381.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087681, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089045.P8622504374482449038

`abs(Δ[Δ[A228495(n)]])-1`
-/

namespace A089045.P8622504374482449038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A089045.P8622504374482449038

noncomputable section

/-- A089045: a(n) = a(n-1) + (-1)^floor(n/2)*a(floor(n/2)) with a(1) = 1.

Offset 1, canonical program `A089045.P8622504374482449038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A089045 (n : ℕ) : ℤ :=
  A089045.P8622504374482449038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A089045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089118.P9208626228526382448

`A074938(n+1)-(A010059(n+1)+1)`
-/

namespace A089118.P9208626228526382448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 (n + 1) - (A010059 (n + 1) + 1)

end

end A089118.P9208626228526382448

noncomputable section

/-- A089118: Nonnegative numbers in (3*A005836 - 1) [A005836 are the numbers with base representation containing no 2].

Offset 1, canonical program `A089118.P9208626228526382448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089118 (n : ℕ) : ℤ :=
  A089118.P9208626228526382448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089217.P8919220155031244683

`A087915(n+1)+A089193(n+1)`
-/

namespace A089217.P8919220155031244683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087915 (n + 1) + A089193 (n + 1)

end

end A089217.P8919220155031244683

noncomputable section

/-- A089217: n-2 is a prime of the form 4*k+3.

Offset 1, canonical program `A089217.P8919220155031244683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, A089193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089217 (n : ℕ) : ℤ :=
  A089217.P8919220155031244683.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, A089193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089217.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089231.P18314841228183022687

`A008279(n)*A074909(n)`
-/

namespace A089231.P18314841228183022687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A074909 n

end

end A089231.P18314841228183022687

noncomputable section

/-- A089231: Triangular array A066667 or A008297 unsigned and transposed.

Offset 1, canonical program `A089231.P18314841228183022687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A089231 (n : ℕ) : ℤ :=
  A089231.P18314841228183022687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A089231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089257.P243562782731200786

`A089193(n+1)-1`
-/

namespace A089257.P243562782731200786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1) - 1

end

end A089257.P243562782731200786

noncomputable section

/-- A089257: Even numbers n such that 2n-5 is a prime of the form 4k+3.

Offset 1, canonical program `A089257.P243562782731200786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089257 (n : ℕ) : ℤ :=
  A089257.P243562782731200786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089313.P1141171356323381310

`2^A089310(n)-1`
-/

namespace A089313.P1141171356323381310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A089310 n : ℤ) - 1

end

end A089313.P1141171356323381310

noncomputable section

/-- A089313: Write n in binary; a(n) = number represented by second block of 1's from the right.

Offset 0, canonical program `A089313.P1141171356323381310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089313 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089313.P1141171356323381310.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089313.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089824.P10607685603427349612

`A045319(eq[A045319(n+1), A065073(n+1)])`
-/

namespace A089824.P10607685603427349612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A089824.P10607685603427349612

noncomputable section

/-- A089824: Primes p such that the next prime after p can be obtained from p by adding the sum of the digits of p.

Offset 1, canonical program `A089824.P10607685603427349612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A089824 (n : ℕ) : ℤ :=
  A089824.P10607685603427349612.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A089824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089910.P11257356724087403504

`A003623(n+1)+1`
-/

namespace A089910.P11257356724087403504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) + 1

end

end A089910.P11257356724087403504

noncomputable section

/-- A089910: Indices n at which blocks (1;1) occur in infinite Fibonacci word, i.e., such that A005614(n-1) = A005614(n-2) = 1.

Offset 1, canonical program `A089910.P11257356724087403504`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003623, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089910 (n : ℕ) : ℤ :=
  A089910.P11257356724087403504.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003623, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089910.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090971.P432184288547135942

`A074909(n+1)%2`
-/

namespace A090971.P432184288547135942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074909 (n + 1)) 2

end

end A090971.P432184288547135942

noncomputable section

/-- A090971: Sierpiński's triangle, read by rows, starting from 1: T(n,k) = (T(n-1,k) + T(n-1,k-1)) mod 2.

Offset 1, canonical program `A090971.P432184288547135942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090971 (n : ℕ) : ℤ :=
  A090971.P432184288547135942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091044.P12085571641707083630

`(A091042(A061579(n))+A091042(n))/2`
-/

namespace A091044.P12085571641707083630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091042 (A061579 n).toNat + A091042 n : ℚ) / 2

end

end A091044.P12085571641707083630

noncomputable section

/-- A091044: One half of odd-numbered entries of even-numbered rows of Pascal's triangle A007318.

Offset 1, canonical program `A091044.P12085571641707083630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A091044 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091044.P12085571641707083630.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A091044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091773.P6565989770376659951

`A069906(2*n)+A002621(n)`
-/

namespace A091773.P6565989770376659951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069906 (2 * n) + A002621 n

end

end A091773.P6565989770376659951

noncomputable section

/-- A091773: G.f.: Product((1+x^i)/(1-x^i),i=1..n-1)/(1-x^n), with n = 5.

Offset 0, canonical program `A091773.P6565989770376659951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A091773 (n : ℕ) : ℤ :=
  A091773.P6565989770376659951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A091773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091822.P18176888535839854979

`∑[A076826(ceil(n/2))]-n`
-/

namespace A091822.P18176888535839854979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A091822.P18176888535839854979

noncomputable section

/-- A091822: a(n)=2*sum(k=0,n,sum(i=0,k,sum(j=0,i, A010060(j))))-(1/6)*(n^3+6*n^2+11*n-6).

Offset 1, canonical program `A091822.P18176888535839854979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A091822 (n : ℕ) : ℤ :=
  A091822.P18176888535839854979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A091822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091949.P5047733930992451112

`abs(Δ[A001285(A212831(n))])`
-/

namespace A091949.P5047733930992451112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A212831 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A091949.P5047733930992451112

noncomputable section

/-- A091949: a(n) = A087659(n) mod 2.

Offset 0, canonical program `A091949.P5047733930992451112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091949 (n : ℕ) : ℤ :=
  A091949.P5047733930992451112.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092393.P14333923144076909160

`(A051162(n)+1)*A074909(n)`
-/

namespace A092393.P14333923144076909160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n + 1) * A074909 n

end

end A092393.P14333923144076909160

noncomputable section

/-- A092393: Triangle read by rows: T(n,k) = (n+k)*binomial(n,k) (for k=0..n-1).

Offset 1, canonical program `A092393.P14333923144076909160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092393 (n : ℕ) : ℤ :=
  A092393.P14333923144076909160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092505.P14837175268537545743

`gcd(A048896(n), 2*(n+1))`
-/

namespace A092505.P14837175268537545743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048896 n) (2 * (n + 1) : ℤ)

end

end A092505.P14837175268537545743

noncomputable section

/-- A092505: a(n) = A002430(n) / A046990(n).

Offset 1, canonical program `A092505.P14837175268537545743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092505 (n : ℕ) : ℤ :=
  (A092505.P14837175268537545743.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092755.P5737678061352933745

`∑[A004233(n+1)]-n`
-/

namespace A092755.P5737678061352933745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A092755.P5737678061352933745

noncomputable section

/-- A092755: Partial sums of A000195 (floor(log(n))).

Offset 1, canonical program `A092755.P5737678061352933745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092755 (n : ℕ) : ℤ :=
  A092755.P5737678061352933745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092790.P11472934723672521066

`A023896(n+2)+A092249(n+2)-A092249(n+1)`
-/

namespace A092790.P11472934723672521066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 2) + (A092249 (n + 2) - A092249 (n + 1))

end

end A092790.P11472934723672521066

noncomputable section

/-- A092790: a(n) = (n+1)*phi(n-1)/2.

Offset 3, canonical program `A092790.P11472934723672521066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A092790 (n : ℕ) : ℤ :=
  A092790.P11472934723672521066.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A092790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093658.P16333169482803331583

`A047999(n)*A093659(A025581(n))`
-/

namespace A093658.P16333169482803331583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n * A093659 (A025581 n).toNat

end

end A093658.P16333169482803331583

noncomputable section

/-- A093658: Lower triangular matrix, read by rows, defined as the convergent of the concatenation of matrices using the iteration: M(n+1) = [[M(n),0*M(n)],[M(n)^2,M(n)]], with M(0) = [1].

Offset 1, canonical program `A093658.P16333169482803331583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A093658 (n : ℕ) : ℤ :=
  A093658.P16333169482803331583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A093658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094207.P5621931072805257674

`A034963(4*n+1)`
-/

namespace A094207.P5621931072805257674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (4 * n + 1)

end

end A094207.P5621931072805257674

noncomputable section

/-- A094207: a(n) = prime(4n-3) + prime(4n-2) + prime(4n-1) + prime(4n).

Offset 1, canonical program `A094207.P5621931072805257674`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094207 (n : ℕ) : ℤ :=
  A094207.P5621931072805257674.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094207.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094435.P5485803587513593441

`A000045(A002260(n+1))*A074909(n+1)`
-/

namespace A094435.P5485803587513593441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1)).toNat * A074909 (n + 1)

end

end A094435.P5485803587513593441

noncomputable section

/-- A094435: Triangular array read by rows: T(n,k) = Fibonacci(k)*C(n,k), k = 1...n; n>=1.

Offset 1, canonical program `A094435.P5485803587513593441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094435 (n : ℕ) : ℤ :=
  A094435.P5485803587513593441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094440.P13667524023593120163

`A000045(A004736(n+1))*A074909(n)`
-/

namespace A094440.P13667524023593120163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1)).toNat * A074909 n

end

end A094440.P13667524023593120163

noncomputable section

/-- A094440: Triangular array read by rows: T(n,k) = Fibonacci(n+1-k)*C(n,k-1), k = 1..n; n >= 1.

Offset 1, canonical program `A094440.P13667524023593120163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094440 (n : ℕ) : ℤ :=
  A094440.P13667524023593120163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094587.P14878234686992178424

`A008279(A061579(n))`
-/

namespace A094587.P14878234686992178424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A061579 n).toNat

end

end A094587.P14878234686992178424

noncomputable section

/-- A094587: Triangle of permutation coefficients arranged with 1's on the diagonal. Also, triangle of permutations on n letters with exactly k+1 cycles and with the first k+1 letters in separate cycles.

Offset 0, canonical program `A094587.P14878234686992178424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A094587 (n : ℕ) : ℤ :=
  A094587.P14878234686992178424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A094587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094694.P14278296386582266715

`lt[A232243(n), 0]`
-/

namespace A094694.P14278296386582266715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A094694.P14278296386582266715

noncomputable section

/-- A094694: Numbers having in binary representation more 1s than their squares.

Offset 1, canonical program `A094694.P14278296386582266715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A094694 (n : ℕ) : ℤ :=
  (A094694.P14278296386582266715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A094694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094695.P15361647262700553161

`lt[0, A232243(n)]`
-/

namespace A094695.P15361647262700553161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094695.P15361647262700553161

noncomputable section

/-- A094695: Numbers having in binary representation fewer ones than in their squares.

Offset 1, canonical program `A094695.P15361647262700553161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9318 terms. -/
def A094695 (n : ℕ) : ℤ :=
  (A094695.P15361647262700553161.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9318 terms. -/
def A094695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094728.P9076247720807902935

`(A051162(n)+1)*A004736(n+1)`
-/

namespace A094728.P9076247720807902935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n + 1) * A004736 (n + 1)

end

end A094728.P9076247720807902935

noncomputable section

/-- A094728: Triangle read by rows: T(n,k) = n^2 - k^2, 0 <= k < n.

Offset 1, canonical program `A094728.P9076247720807902935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094728 (n : ℕ) : ℤ :=
  A094728.P9076247720807902935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094933.P14071064895928363372

`p?[gcd(A006094(n+1), A034963(n+1))]`
-/

namespace A094933.P14071064895928363372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006094 (n + 1)) (A034963 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A094933.P14071064895928363372

noncomputable section

/-- A094933: Primes prime(k) such that (prime(k-1) + prime(k+1) + prime(k+2))/prime(k) = 3.

Offset 1, canonical program `A094933.P14071064895928363372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A094933 (n : ℕ) : ℤ :=
  (A094933.P14071064895928363372.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A094933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095072.P9947537710572752630

`A000040(eq[A014499(n+1)+1, A035103(n+1)]+1)`
-/

namespace A095072.P9947537710572752630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A095072.P9947537710572752630

noncomputable section

/-- A095072: Primes in whose binary expansion the number of 0-bits is one more than the number of 1-bits.

Offset 1, canonical program `A095072.P9947537710572752630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. -/
def A095072 (n : ℕ) : ℤ :=
  A095072.P9947537710572752630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. -/
def A095072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095405.P11635465388125584041

`eq[0, A095403(n+1)]+1`
-/

namespace A095405.P11635465388125584041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095403 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095405.P11635465388125584041

noncomputable section

/-- A095405: Numbers n such that Sum-of-digits-of-n = Sum-of-digits-of-all-distinct-prime-factors-of-n.

Offset 1, canonical program `A095405.P11635465388125584041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A095405 (n : ℕ) : ℤ :=
  (A095405.P11635465388125584041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A095405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095406.P13107935915610947608

`lt[A095403(A028310(n)), 0]`
-/

namespace A095406.P13107935915610947608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095403 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095406.P13107935915610947608

noncomputable section

/-- A095406: Numbers k such that Sum-of-digits-of-k < Sum-of-digits-of-all-distinct-prime-factors-of-k.

Offset 1, canonical program `A095406.P13107935915610947608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3908 terms. -/
def A095406 (n : ℕ) : ℤ :=
  (A095406.P13107935915610947608.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3908 terms. -/
def A095406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095704.P6796240691851916522

`A056594(A002262(n))*A074909(n+1)`
-/

namespace A095704.P6796240691851916522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A002262 n).toNat * A074909 (n + 1)

end

end A095704.P6796240691851916522

noncomputable section

/-- A095704: Triangle read by rows giving coefficients of the trigonometric expansion of sin(n*x).

Offset 1, canonical program `A095704.P6796240691851916522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095704 (n : ℕ) : ℤ :=
  A095704.P6796240691851916522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095884.P13222660353111274223

`A003992(n)*A025581(n)`
-/

namespace A095884.P13222660353111274223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n * A025581 n

end

end A095884.P13222660353111274223

noncomputable section

/-- A095884: Triangle read by rows: T(n,k) = (n-k)^k, n>=1, 1<=k<=n.

Offset 1, canonical program `A095884.P13222660353111274223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4725 terms. -/
def A095884 (n : ℕ) : ℤ :=
  A095884.P13222660353111274223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4725 terms. -/
def A095884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096034.P9733165752376480381

`A003462(A004736(n+1))*A074909(n)`
-/

namespace A096034.P9733165752376480381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A004736 (n + 1)).toNat * A074909 n

end

end A096034.P9733165752376480381

noncomputable section

/-- A096034: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^3-M)/2, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

Offset 1, canonical program `A096034.P9733165752376480381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096034 (n : ℕ) : ℤ :=
  A096034.P9733165752376480381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096035.P15456840272449225223

`A000975(A099375(n))*A074909(n)`
-/

namespace A096035.P15456840272449225223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A099375 n).toNat * A074909 n

end

end A096035.P15456840272449225223

noncomputable section

/-- A096035: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^4-M)/3, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

Offset 1, canonical program `A096035.P15456840272449225223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096035 (n : ℕ) : ℤ :=
  A096035.P15456840272449225223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096039.P14324154058973614487

`A003463(A004736(n+1))*A074909(n)`
-/

namespace A096039.P14324154058973614487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (A004736 (n + 1)).toNat * A074909 n

end

end A096039.P14324154058973614487

noncomputable section

/-- A096039: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^5-M)/4, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

Offset 1, canonical program `A096039.P14324154058973614487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8532 terms. -/
def A096039 (n : ℕ) : ℤ :=
  A096039.P14324154058973614487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8532 terms. -/
def A096039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096040.P9837614522675498103

`A003464(A004736(n+1))*A074909(n)`
-/

namespace A096040.P9837614522675498103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 (A004736 (n + 1)).toNat * A074909 n

end

end A096040.P9837614522675498103

noncomputable section

/-- A096040: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^6-M)/5, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

Offset 1, canonical program `A096040.P9837614522675498103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7271 terms. -/
def A096040 (n : ℕ) : ℤ :=
  A096040.P9837614522675498103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7271 terms. -/
def A096040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096041.P7952884623463201919

`A023000(A004736(n+1))*A074909(n)`
-/

namespace A096041.P7952884623463201919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 (A004736 (n + 1)).toNat * A074909 n

end

end A096041.P7952884623463201919

noncomputable section

/-- A096041: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^7-M)/6, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

Offset 1, canonical program `A096041.P7952884623463201919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6338 terms. -/
def A096041 (n : ℕ) : ℤ :=
  A096041.P7952884623463201919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6338 terms. -/
def A096041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096042.P55449679465903240

`A023001(A004736(n+1))*A074909(n)`
-/

namespace A096042.P55449679465903240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 (A004736 (n + 1)).toNat * A074909 n

end

end A096042.P55449679465903240

noncomputable section

/-- A096042: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^8-M)/7, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

Offset 1, canonical program `A096042.P55449679465903240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5679 terms. -/
def A096042 (n : ℕ) : ℤ :=
  A096042.P55449679465903240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5679 terms. -/
def A096042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096043.P12251455895721356345

`A006342(A099375(n))*A074909(n)`
-/

namespace A096043.P12251455895721356345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006342 (A099375 n).toNat * A074909 n

end

end A096043.P12251455895721356345

noncomputable section

/-- A096043: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^9-M)/8, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

Offset 1, canonical program `A096043.P12251455895721356345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5158 terms. -/
def A096043 (n : ℕ) : ℤ :=
  A096043.P12251455895721356345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5158 terms. -/
def A096043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096044.P15577968179775367660

`A074909(n)*A094026(A099375(n))`
-/

namespace A096044.P15577968179775367660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A094026 (A099375 n).toNat

end

end A096044.P15577968179775367660

noncomputable section

/-- A096044: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^10-M)/9, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

Offset 1, canonical program `A096044.P15577968179775367660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4759 terms. -/
def A096044 (n : ℕ) : ℤ :=
  A096044.P15577968179775367660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4759 terms. -/
def A096044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096130.P18207602527319605791

`C(A002024(n+1)*A002260(n+1), A002024(n+1))`
-/

namespace A096130.P18207602527319605791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1) * A002260 (n + 1)).toNat (A002024 (n + 1)).toNat

end

end A096130.P18207602527319605791

noncomputable section

/-- A096130: Triangle read by rows: T(n,k) = binomial(k*n,n), 1 <= k <= n.

Offset 1, canonical program `A096130.P18207602527319605791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1172 terms. -/
def A096130 (n : ℕ) : ℤ :=
  (A096130.P18207602527319605791.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1172 terms. -/
def A096130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096279.P4669439385531479961

`A096278(n+1)+A096278(n+2)`
-/

namespace A096279.P4669439385531479961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096278 (n + 1) + A096278 (n + 2)

end

end A096279.P4669439385531479961

noncomputable section

/-- A096279: Sums of successive sums of successive sums of successive sums of successive primes.

Offset 1, canonical program `A096279.P4669439385531479961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A096279 (n : ℕ) : ℤ :=
  A096279.P4669439385531479961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A096279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096459.P13497691207698860031

`A093995(n+1)%A000040(A002260(n+1))`
-/

namespace A096459.P13497691207698860031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093995 (n + 1)) (A000040 (A002260 (n + 1)).toNat)

end

end A096459.P13497691207698860031

noncomputable section

/-- A096459: Triangle read by rows: T(n,k) = n^2 mod prime(k), 1<=k<=n.

Offset 1, canonical program `A096459.P13497691207698860031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096459 (n : ℕ) : ℤ :=
  A096459.P13497691207698860031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097240.P2746952747572250369

`A000040(n+1)+(n+1)*Δ[A061802(n)]`
-/

namespace A097240.P2746952747572250369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A097240.P2746952747572250369

noncomputable section

/-- A097240: a(n) = (n+1)*prime(n) + n*prime(n+1).

Offset 1, canonical program `A097240.P2746952747572250369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097240 (n : ℕ) : ℤ :=
  A097240.P2746952747572250369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097338.P887064449779485792

`A097069(n+1)+1`
-/

namespace A097338.P887064449779485792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) + 1

end

end A097338.P887064449779485792

noncomputable section

/-- A097338: Positive integers n such that 2n-11 is prime.

Offset 1, canonical program `A097338.P887064449779485792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097338 (n : ℕ) : ℤ :=
  A097338.P887064449779485792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097431.P15092973135870859049

`floor(sqrt(A069484(n+1)))`
-/

namespace A097431.P15092973135870859049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A069484 (n + 1))

end

end A097431.P15092973135870859049

noncomputable section

/-- A097431: Integer part of the hypotenuse of right triangles with consecutive prime legs.

Offset 1, canonical program `A097431.P15092973135870859049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097431 (n : ℕ) : ℤ :=
  A097431.P15092973135870859049.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097431.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097494.P5097683518575263080

`floor(A046301(n+1)/A001248(n+1))`
-/

namespace A097494.P5097683518575263080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046301 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)⌋

end

end A097494.P5097683518575263080

noncomputable section

/-- A097494: a(n) = floor( prime(n+1)*prime(n+2)/prime(n) ).

Offset 1, canonical program `A097494.P5097683518575263080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097494 (n : ℕ) : ℤ :=
  A097494.P5097683518575263080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097494.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A098059.P11755285612293814488

`A000040(eq[1, A080378(n+1)+1]+1)`
-/

namespace A098059.P11755285612293814488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080378 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A098059.P11755285612293814488

noncomputable section

/-- A098059: Primes preceding gaps divisible by 4.

Offset 1, canonical program `A098059.P11755285612293814488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4137 terms. -/
def A098059 (n : ℕ) : ℤ :=
  A098059.P11755285612293814488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4137 terms. -/
def A098059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098358.P3987810809155761747

`A000217(A002260(n+1))*A000217(A004736(n+1))`
-/

namespace A098358.P3987810809155761747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A000217 (A004736 (n + 1)).toNat

end

end A098358.P3987810809155761747

noncomputable section

/-- A098358: Multiplication table of the triangular numbers read by antidiagonals.

Offset 0, canonical program `A098358.P3987810809155761747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098358 (n : ℕ) : ℤ :=
  A098358.P3987810809155761747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099026.P7282398254408915574

`A003986(n)-A002262(n)`
-/

namespace A099026.P7282398254408915574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n - A002262 n

end

end A099026.P7282398254408915574

noncomputable section

/-- A099026: Array x AND NOT y, read by rising antidiagonals.

Offset 0, canonical program `A099026.P7282398254408915574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099026 (n : ℕ) : ℤ :=
  A099026.P7282398254408915574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099034.P5054995373188191690

`∑[3-2*A026517(n+1)]`
-/

namespace A099034.P5054995373188191690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A026517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099034.P5054995373188191690

noncomputable section

/-- A099034: a(n) = Sum_{k=1..n} (-1)^A000120(5*k).

Offset 1, canonical program `A099034.P5054995373188191690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099034 (n : ℕ) : ℤ :=
  A099034.P5054995373188191690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099092.P16011122932174453728

`A026729(n)*A137688(n)`
-/

namespace A099092.P16011122932174453728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A137688 n

end

end A099092.P16011122932174453728

noncomputable section

/-- A099092: Riordan array (1,2+4x).

Offset 0, canonical program `A099092.P16011122932174453728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099092 (n : ℕ) : ℤ :=
  A099092.P16011122932174453728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099093.P4503154830546688613

`A000244(A002262(n))*A026729(n)`
-/

namespace A099093.P4503154830546688613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A026729 n

end

end A099093.P4503154830546688613

noncomputable section

/-- A099093: Riordan array (1, 3+3x).

Offset 0, canonical program `A099093.P4503154830546688613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099093 (n : ℕ) : ℤ :=
  A099093.P4503154830546688613.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099628.P8292850720215451119

`A018900(n+1)-1`
-/

namespace A099628.P8292850720215451119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - 1

end

end A099628.P8292850720215451119

noncomputable section

/-- A099628: Numbers m where m-th Catalan number A000108(m) = binomial(2m,m)/(m+1) is divisible by 2 but not by 4, i.e., where A048881(m) = 1.

Offset 1, canonical program `A099628.P8292850720215451119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099628 (n : ℕ) : ℤ :=
  A099628.P8292850720215451119.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099910.P10957624334977577612

`∑{e}[∏{p}[A099909(n+2), #], #]`
-/

namespace A099910.P10957624334977577612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A099910.P10957624334977577612

noncomputable section

/-- A099910: Number of distinct prime-factors of ((prime(n)*(prime(n+1)-1)+(prime(n)-1)*prime(n+1))/2).

Offset 2, canonical program `A099910.P10957624334977577612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A099910 (n : ℕ) : ℤ :=
  (A099910.P10957624334977577612.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A099910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100345.P10218068871368461112

`A069011(n)+A004247(n)`
-/

namespace A100345.P10218068871368461112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n + A004247 n

end

end A100345.P10218068871368461112

noncomputable section

/-- A100345: Triangle read by rows: T(n,k) = n*(n+k), 0 <= k <= n.

Offset 0, canonical program `A100345.P10218068871368461112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100345 (n : ℕ) : ℤ :=
  A100345.P10218068871368461112.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100537.P6243937713485138238

`A071724(A025581(n))`
-/

namespace A100537.P6243937713485138238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (A025581 n).toNat

end

end A100537.P6243937713485138238

noncomputable section

/-- A100537: Triangle read by rows: T(n,k) is the number of Dyck n-paths whose first descent has length k.

Offset 1, canonical program `A100537.P6243937713485138238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100537 (n : ℕ) : ℤ :=
  A100537.P6243937713485138238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100724.P3413526531919295231

`A000040(lt[A100714(n+1), 4]+1)`
-/

namespace A100724.P3413526531919295231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100714 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A100724.P3413526531919295231

noncomputable section

/-- A100724: Prime numbers whose binary representations are split into at most 3 runs.

Offset 1, canonical program `A100724.P3413526531919295231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A100724 (n : ℕ) : ℤ :=
  A100724.P3413526531919295231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A100724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101080.P10162260254502051975

`A000120(A003987(n))`
-/

namespace A101080.P10162260254502051975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003987 n).toNat

end

end A101080.P10162260254502051975

noncomputable section

/-- A101080: Table of Hamming distances between binary vectors representing i and j, for i >= 0, j >= 0, read by antidiagonals.

Offset 0, canonical program `A101080.P10162260254502051975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101080 (n : ℕ) : ℤ :=
  A101080.P10162260254502051975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101321.P11435036558127374472

`A062707(n)+1`
-/

namespace A101321.P11435036558127374472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n + 1

end

end A101321.P11435036558127374472

noncomputable section

/-- A101321: Table T(n,m) = 1 + n*m*(m+1)/2 read by antidiagonals: centered polygonal numbers.

Offset 0, canonical program `A101321.P11435036558127374472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101321 (n : ℕ) : ℤ :=
  A101321.P11435036558127374472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101565.P1735292411759893725

`∑{d}[n+1, A106400(1-#+n)]`
-/

namespace A101565.P1735292411759893725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A106400 (1 - (d : ℤ) + (n : ℤ)).toNat

end

end A101565.P1735292411759893725

noncomputable section

/-- A101565: a(n) = Sum_{k=0..n} (-1)^A010060(n-k)*[(n+1) mod (k+1) = 0], where [] denotes the Iverson bracket.

Offset 0, canonical program `A101565.P1735292411759893725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101565 (n : ℕ) : ℤ :=
  A101565.P1735292411759893725.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101642.P9483542321522411203

`A101345(n+1)+A000201(n+2)+n`
-/

namespace A101642.P9483542321522411203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (n + 1) + A000201 (n + 2) + (n : ℤ)

end

end A101642.P9483542321522411203

noncomputable section

/-- A101642: a(n) = Knuth's Fibonacci (or circle) product "3 o n".

Offset 1, canonical program `A101642.P9483542321522411203`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000201, A101345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A101642 (n : ℕ) : ℤ :=
  A101642.P9483542321522411203.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000201, A101345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A101642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A102396.P11203045017586188520

`ceil(A038573(n)/3)`
-/

namespace A102396.P11203045017586188520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038573 n : ℚ) / 3⌉

end

end A102396.P11203045017586188520

noncomputable section

/-- A102396: A mod 2 related Jacobsthal sequence.

Offset 0, canonical program `A102396.P11203045017586188520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102396 (n : ℕ) : ℤ :=
  A102396.P11203045017586188520.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102397.P15234207466118283205

`A010059(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A102397.P15234207466118283205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010059 n + 10 * a (n - 1)

end

end A102397.P15234207466118283205

noncomputable section

/-- A102397: a(n) = concatenation of first n elements of Thue-Morse sequence A010059.

Offset 0, canonical program `A102397.P15234207466118283205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A102397 (n : ℕ) : ℤ :=
  A102397.P15234207466118283205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A102397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102551.P13526479949378613891

`round(A079704(n+1)/A069482(n+1))`
-/

namespace A102551.P13526479949378613891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A079704 (n + 1) : ℚ) / (A069482 (n + 1) : ℚ))

end

end A102551.P13526479949378613891

noncomputable section

/-- A102551: a(n) = [prime(n)/(prime(n+1)-prime(n))], where [x] means the integer part of x.

Offset 1, canonical program `A102551.P13526479949378613891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102551 (n : ℕ) : ℤ :=
  A102551.P13526479949378613891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102566.P5376165484103837869

`A035103(n+1)+1`
-/

namespace A102566.P5376165484103837869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1) + 1

end

end A102566.P5376165484103837869

noncomputable section

/-- A102566: a(n) = {minimal k such that f^k(prime(n)) = 1} where f(m) = (m+1)/2^r, 2^r is the highest power of two dividing m+1.

Offset 1, canonical program `A102566.P5376165484103837869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102566 (n : ℕ) : ℤ :=
  A102566.P5376165484103837869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102566.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A102655.P10974709254634012816

`record[A025480(A034963(n+1)+1)]`
-/

namespace A102655.P10974709254634012816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A034963 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102655.P10974709254634012816

noncomputable section

/-- A102655: Numbers that are the arithmetic mean of four successive primes.

Offset 1, canonical program `A102655.P10974709254634012816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A102655 (n : ℕ) : ℤ :=
  A102655.P10974709254634012816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A102655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102688.P16404085220619821589

`A034738(n+1)+2^n`
-/

namespace A102688.P16404085220619821589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034738 (n + 1) + (2 ^ n : ℤ)

end

end A102688.P16404085220619821589

noncomputable section

/-- A102688: a(n) = (1/n)*Sum_{k=1..n} k*2^gcd(n,k).

Offset 1, canonical program `A102688.P16404085220619821589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A102688 (n : ℕ) : ℤ :=
  A102688.P16404085220619821589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A102688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103271.P8583482951631801752

`2-A080378(n+1)`
-/

namespace A103271.P8583482951631801752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080378 (n + 1)

end

end A103271.P8583482951631801752

noncomputable section

/-- A103271: a(n) = (prime(n)+prime(n+1)) mod 4.

Offset 1, canonical program `A103271.P8583482951631801752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103271 (n : ℕ) : ℤ :=
  A103271.P8583482951631801752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103462.P8764215070307129193

`A023532(n)+A004248(n)`
-/

namespace A103462.P8764215070307129193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n + A004248 n

end

end A103462.P8764215070307129193

noncomputable section

/-- A103462: A triangle with palindromic cubes, read by rows.

Offset 0, canonical program `A103462.P8764215070307129193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4773 terms. -/
def A103462 (n : ℕ) : ℤ :=
  A103462.P8764215070307129193.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4773 terms. -/
def A103462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103826.P3351314862640777646

`comp[2*A048147(n)]`
-/

namespace A103826.P3351314862640777646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048147 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103826.P3351314862640777646

noncomputable section

/-- A103826: Unitary arithmetic numbers (those for which the arithmetic mean of the unitary divisors is an integer).

Offset 1, canonical program `A103826.P3351314862640777646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103826 (n : ℕ) : ℤ :=
  (A103826.P3351314862640777646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104105.P2847982210101266645

`A010059(or(n, n+9))`
-/

namespace A104105.P2847982210101266645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Nat.lor n (n + 9))

end

end A104105.P2847982210101266645

noncomputable section

/-- A104105: a(1) = 1, if A(k) = sequence of first 2^k -1 terms and if B(k) is A(k) with 0's and 1's exchanged, then A(k+1) = A(k),1,B(k) if a(k) = 0, A(k+1) = A(k),0,B(k) if a(k) = 1.

Offset 1, canonical program `A104105.P2847982210101266645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A104105 (n : ℕ) : ℤ :=
  A104105.P2847982210101266645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A104105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104247.P9484724603255366417

`p?[A051351(n)]`
-/

namespace A104247.P9484724603255366417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104247.P9484724603255366417

noncomputable section

/-- A104247: Primes that are the sum of digits of the first k primes for some k.

Offset 1, canonical program `A104247.P9484724603255366417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A104247 (n : ℕ) : ℤ :=
  A104247.P9484724603255366417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A104247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104567.P6724238172448212378

`gcd(2, A002260(n+1))*A004736(n+1)`
-/

namespace A104567.P6724238172448212378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A002260 (n + 1)) : ℤ) * A004736 (n + 1)

end

end A104567.P6724238172448212378

noncomputable section

/-- A104567: Triangle read by rows: T(i,j) = i-j+1 if j is odd; T(i,j) = 2(i-j+1) if j is even (1 <= j <= i).

Offset 1, canonical program `A104567.P6724238172448212378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104567 (n : ℕ) : ℤ :=
  A104567.P6724238172448212378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104763.P5539537034161833375

`A000045(A002260(n+1))`
-/

namespace A104763.P5539537034161833375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1)).toNat

end

end A104763.P5539537034161833375

noncomputable section

/-- A104763: Triangle read by rows: Fibonacci(1), Fibonacci(2), ..., Fibonacci(n) in row n.

Offset 1, canonical program `A104763.P5539537034161833375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104763 (n : ℕ) : ℤ :=
  A104763.P5539537034161833375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104798.P8790869070446692814

`A002260(n+1)*A104582(n+1)`
-/

namespace A104798.P8790869070446692814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A104582 (n + 1)

end

end A104798.P8790869070446692814

noncomputable section

/-- A104798: Triangle T(n,k) = k*[Fib(n-k+3) - 1], read by rows.

Offset 2, canonical program `A104798.P8790869070446692814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104798 (n : ℕ) : ℤ :=
  A104798.P8790869070446692814.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106181.P18239189246069917284

`Δ[A105523(n)]*A062157(n)`
-/

namespace A106181.P18239189246069917284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A062157 n

end

end A106181.P18239189246069917284

noncomputable section

/-- A106181: Expansion of c(-x^2)(1+2x-sqrt(1+4x^2))/2, c(x) the g.f. of A000108.

Offset 0, canonical program `A106181.P18239189246069917284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A106181 (n : ℕ) : ℤ :=
  A106181.P18239189246069917284.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A106181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106344.P1019925000359093241

`A026729(n)%2`
-/

namespace A106344.P1019925000359093241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026729 n) 2

end

end A106344.P1019925000359093241

noncomputable section

/-- A106344: Triangle read by rows: T(n,k) = binomial(k,n-k) mod 2.

Offset 0, canonical program `A106344.P1019925000359093241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106344 (n : ℕ) : ℤ :=
  A106344.P1019925000359093241.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106477.P792080474902771144

`A092249(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A106477.P792080474902771144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092249 (n + 1) - a (n - 1)

end

end A106477.P792080474902771144

noncomputable section

/-- A106477: Diagonal sums of Euler phi function sequence array.

Offset 0, canonical program `A106477.P792080474902771144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106477 (n : ℕ) : ℤ :=
  A106477.P792080474902771144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106642.P1022139350271527584

`A273149(2*xor(n, 2*n))`
-/

namespace A106642.P1022139350271527584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273149 (2 * Nat.xor n (2 * n))

end

end A106642.P1022139350271527584

noncomputable section

/-- A106642: A four-symbol four-at-a-time substitution with an ordering change: q=1.

Offset 0, canonical program `A106642.P1022139350271527584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A106642 (n : ℕ) : ℤ :=
  A106642.P1022139350271527584.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A106642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107604.P9513017067681874761

`A002260(eq[2, A076662(A002260(n+1))])`
-/

namespace A107604.P9513017067681874761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076662 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107604.P9513017067681874761

noncomputable section

/-- A107604: Irregular triangle read by rows of the positions of 2's in the triangle generated by the morphism 1->12, 2->1.

Offset 2, canonical program `A107604.P9513017067681874761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4251 terms. -/
def A107604 (n : ℕ) : ℤ :=
  A107604.P9513017067681874761.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4251 terms. -/
def A107604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107638.P114650755750066729

`filter[A002260(n+1), A096270(#)]`
-/

namespace A107638.P114650755750066729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A107638.P114650755750066729

noncomputable section

/-- A107638: Irregular triangle read by rows: positions of 1's in the triangle generated by the morphism 1->12, 2->1.

Offset 1, canonical program `A107638.P114650755750066729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6197 terms. -/
def A107638 (n : ℕ) : ℤ :=
  A107638.P114650755750066729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6197 terms. -/
def A107638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107943.P11946784365522022534

`2*A047819(n)-A006857(n)`
-/

namespace A107943.P11946784365522022534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047819 n - A006857 n

end

end A107943.P11946784365522022534

noncomputable section

/-- A107943: a(n) = (n+1)*(n+2)^2*(n+3)^2*(n+4)^2*(n+5)*(2n+3)/8640.

Offset 0, canonical program `A107943.P11946784365522022534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107943 (n : ℕ) : ℤ :=
  A107943.P11946784365522022534.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108198.P13960803102350845925

`A000108(A002260(n+1))*A074909(A083920(n))`
-/

namespace A108198.P13960803102350845925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002260 (n + 1)).toNat * A074909 (A083920 n).toNat

end

end A108198.P13960803102350845925

noncomputable section

/-- A108198: Triangle read by rows: T(n,k) = binomial(2k+2,k+1)*binomial(n,k)/(k+2) (0 <= k <= n).

Offset 0, canonical program `A108198.P13960803102350845925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108198 (n : ℕ) : ℤ :=
  A108198.P13960803102350845925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108562.P17517280457270217684

`p?[∑[A046930(n+1)]+1]`
-/

namespace A108562.P17517280457270217684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108562.P17517280457270217684

noncomputable section

/-- A108562: Primes of the form prime(n) + prime(n+1) - 2n - 1.

Offset 1, canonical program `A108562.P17517280457270217684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1853 terms. -/
def A108562 (n : ℕ) : ℤ :=
  A108562.P17517280457270217684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1853 terms. -/
def A108562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108568.P6444954097101715420

`∑[A046930(n+1)]+1`
-/

namespace A108568.P6444954097101715420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A108568.P6444954097101715420

noncomputable section

/-- A108568: a(n) = prime(n) + prime(n+1) - 2n - 1.

Offset 1, canonical program `A108568.P6444954097101715420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108568 (n : ℕ) : ℤ :=
  A108568.P6444954097101715420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109447.P904525505183481324

`A074909(2*n-A259361(n))`
-/

namespace A109447.P904525505183481324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 ((2 * n : ℤ) - A259361 n).toNat

end

end A109447.P904525505183481324

noncomputable section

/-- A109447: Binomial coefficients C(n,k) with n-k odd, read by rows.

Offset 1, canonical program `A109447.P904525505183481324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A109447 (n : ℕ) : ℤ :=
  A109447.P904525505183481324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A109447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109466.P7508220210719608303

`A026729(n)*A097807(n)`
-/

namespace A109466.P7508220210719608303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A097807 n

end

end A109466.P7508220210719608303

noncomputable section

/-- A109466: Riordan array (1, x(1-x)).

Offset 0, canonical program `A109466.P7508220210719608303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109466 (n : ℕ) : ℤ :=
  A109466.P7508220210719608303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109535.P2599924658879857923

`2*n-a(A025480(n-1))` with `a(0)=1`
-/

namespace A109535.P2599924658879857923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - a (A025480 (n - 1)).toNat

end

end A109535.P2599924658879857923

noncomputable section

/-- A109535: a(0) = 1, a(n) = n+a(floor(n/2)) if n mod 2 = 0, a(n) = 2n-a(floor((n-1)/2)) if n mod 2 = 1.

Offset 0, canonical program `A109535.P2599924658879857923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109535 (n : ℕ) : ℤ :=
  A109535.P2599924658879857923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110009.P234597410290863382

`A110005(A116966(n))`
-/

namespace A110009.P234597410290863382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A116966 n).toNat

end

end A110009.P234597410290863382

noncomputable section

/-- A110009: n followed by n^4 followed by n^2 followed by n^3.

Offset 1, canonical program `A110009.P234597410290863382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110009 (n : ℕ) : ℤ :=
  A110009.P234597410290863382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110622.P18117295011988336150

`A110005(A014681(n+1))`
-/

namespace A110622.P18117295011988336150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A014681 (n + 1)).toNat

end

end A110622.P18117295011988336150

noncomputable section

/-- A110622: n^2 followed by n followed by n^3 followed by n^4.

Offset 1, canonical program `A110622.P18117295011988336150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110622 (n : ℕ) : ℤ :=
  A110622.P18117295011988336150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110652.P17500157700385887911

`A110651(A116966(n))`
-/

namespace A110652.P17500157700385887911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110651 (A116966 n).toNat

end

end A110652.P17500157700385887911

noncomputable section

/-- A110652: n^2 followed by n^3 followed by n^4 followed by n.

Offset 1, canonical program `A110652.P17500157700385887911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110652 (n : ℕ) : ℤ :=
  A110652.P17500157700385887911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110769.P6747390078831941769

`A093445(A038722(n+1))`
-/

namespace A110769.P6747390078831941769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093445 (A038722 (n + 1)).toNat

end

end A110769.P6747390078831941769

noncomputable section

/-- A110769: The r-th term of the n-th row of the following triangle contains sum of r successive numbers in decreasing order beginning from T(n)-T(r-1) where T(n) is the n-th triangular number. 1 3 3 6 9 6 10 17 18 10 15 27 33 30 15 ... Sequence contains the triangle by rows.

Offset 1, canonical program `A110769.P6747390078831941769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A110769 (n : ℕ) : ℤ :=
  A110769.P6747390078831941769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A110769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110963.P3344771894533151408

`A025480(floor(n/(xor(n, n+1)+1)))+1`
-/

namespace A110963.P3344771894533151408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat + 1

end

end A110963.P3344771894533151408

noncomputable section

/-- A110963: Fractalization of Kimberling's paraphrase of the binary number system beginning with 1.

Offset 1, canonical program `A110963.P3344771894533151408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110963 (n : ℕ) : ℤ :=
  A110963.P3344771894533151408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111007.P10750197142784258135

`A368941(A004247(n))`
-/

namespace A111007.P10750197142784258135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368941 (A004247 n).toNat

end

end A111007.P10750197142784258135

noncomputable section

/-- A111007: Triangle T(n,m) which contains in row n the rounded ordinate value at abscissa m along the upper rim of the circle with diameter n centered at (n/2, 1).

Offset 0, canonical program `A111007.P10750197142784258135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A111007 (n : ℕ) : ℤ :=
  A111007.P10750197142784258135.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A111007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111397.P8927874382919251477

`Δ[A053767(n)]%3`
-/

namespace A111397.P8927874382919251477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A111397.P8927874382919251477

noncomputable section

/-- A111397: Composite numbers (modulo 3).

Offset 1, canonical program `A111397.P8927874382919251477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A111397 (n : ℕ) : ℤ :=
  A111397.P8927874382919251477.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A111397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111644.P6153960727860651132

`-(A111643(n)+A077985(n))`
-/

namespace A111644.P6153960727860651132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A111643 n + A077985 n)

end

end A111644.P6153960727860651132

noncomputable section

/-- A111644: Expansion of -(1+x^2)/((x^2+4*x+1)*(x^2-2*x-1)).

Offset 0, canonical program `A111644.P6153960727860651132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A111644 (n : ℕ) : ℤ :=
  A111644.P6153960727860651132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A111644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113045.P12851557519336962224

`A061554(n)%3`
-/

namespace A113045.P12851557519336962224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061554 n) 3

end

end A113045.P12851557519336962224

noncomputable section

/-- A113045: Number triangle binomial(n,floor((n-k)/2)) mod 3.

Offset 0, canonical program `A113045.P12851557519336962224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113045 (n : ℕ) : ℤ :=
  A113045.P12851557519336962224.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113128.P8538014037179517587

`C(3, A025581(n))*A002260(n+1)`
-/

namespace A113128.P8538014037179517587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 (A025581 n).toNat : ℤ) * A002260 (n + 1)

end

end A113128.P8538014037179517587

noncomputable section

/-- A113128: A simple 4-diagonal matrix based on (1+x)^3.

Offset 0, canonical program `A113128.P8538014037179517587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113128 (n : ℕ) : ℤ :=
  A113128.P8538014037179517587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113396.P8242604359773002746

`A069482(n+1)%A065091(n+1)`
-/

namespace A113396.P8242604359773002746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069482 (n + 1)) (A065091 (n + 1))

end

end A113396.P8242604359773002746

noncomputable section

/-- A113396: a(n) = -prime(n)^2 (mod prime(n+1)).

Offset 1, canonical program `A113396.P8242604359773002746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113396 (n : ℕ) : ℤ :=
  A113396.P8242604359773002746.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113453.P12251909154025568105

`abs(A117575(A002260(n+4)))`
-/

namespace A113453.P12251909154025568105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117575 (A002260 (n + 4)).toNat|

end

end A113453.P12251909154025568105

noncomputable section

/-- A113453: Triangle giving maximal permanent P(n,k) of an n X n lower Hessenberg (0,1)-matrix with exactly k 1's for 2 <= n <= k <= 2n, read by rows.

Offset 0, canonical program `A113453.P12251909154025568105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113453 (n : ℕ) : ℤ :=
  A113453.P12251909154025568105.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113894.P10568588566300881872

`A000984(n)*A003516(n+2)`
-/

namespace A113894.P10568588566300881872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A003516 (n + 2)

end

end A113894.P10568588566300881872

noncomputable section

/-- A113894: a(n) = binomial(2*n, n) * binomial(2*n+5, n).

Offset 0, canonical program `A113894.P10568588566300881872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113894 (n : ℕ) : ℤ :=
  A113894.P10568588566300881872.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114596.P17746190447375322614

`A000108(A002260(n+1))*A000957(A004736(n+1))`
-/

namespace A114596.P17746190447375322614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002260 (n + 1)).toNat * A000957 (A004736 (n + 1)).toNat

end

end A114596.P17746190447375322614

noncomputable section

/-- A114596: Triangle read by rows: T(n,k) is the number of hill-free Dyck paths of semilength n and having abscissa of first return equal to 2k (2<=k<=n). A hill in a Dyck path is a peak at level 1.

Offset 2, canonical program `A114596.P17746190447375322614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A114596 (n : ℕ) : ℤ :=
  A114596.P17746190447375322614.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A114596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115134.P11426993813072874618

`A000245(n+3)+∑[A071724(n)]`
-/

namespace A115134.P11426993813072874618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115134.P11426993813072874618

noncomputable section

/-- A115134: Third diagonal sequence of triangle A115127.

Offset 4, canonical program `A115134.P11426993813072874618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A115134 (n : ℕ) : ℤ :=
  A115134.P11426993813072874618.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A115134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115270.P1071988571996701648

`∑[A029138(n)]`
-/

namespace A115270.P1071988571996701648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115270.P1071988571996701648

noncomputable section

/-- A115270: Diagonal sums of correlation triangle for floor((n+4)/4).

Offset 0, canonical program `A115270.P1071988571996701648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115270 (n : ℕ) : ℤ :=
  A115270.P1071988571996701648.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115516.P12830131458116103900

`A000045(and(48, A037861(n)))%5`
-/

namespace A115516.P12830131458116103900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (Int.land 48 (A037861 n)).toNat) 5

end

end A115516.P12830131458116103900

noncomputable section

/-- A115516: The mode of the bits of n (using 0 if bimodal).

Offset 0, canonical program `A115516.P12830131458116103900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115516 (n : ℕ) : ℤ :=
  A115516.P12830131458116103900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115517.P313347450505954263

`A000032(ceil(A037861(n)/(n+2)))-1`
-/

namespace A115517.P313347450505954263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌈(A037861 n : ℚ) / (n + 2 : ℚ)⌉.toNat - 1

end

end A115517.P313347450505954263

noncomputable section

/-- A115517: The mode of the bits of n (using 1 if bimodal).

Offset 0, canonical program `A115517.P313347450505954263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115517 (n : ℕ) : ℤ :=
  A115517.P313347450505954263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115732.P15439679274567884474

`A000040(∑[char[A112997(n+1)]]+1)`
-/

namespace A115732.P15439679274567884474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112997 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A115732.P15439679274567884474

noncomputable section

/-- A115732: n-th prime prime(n) repeated (prime(n)-n) times.

Offset 1, canonical program `A115732.P15439679274567884474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115732 (n : ℕ) : ℤ :=
  A115732.P15439679274567884474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115864.P12467619759306786848

`2^n*A069835(n)`
-/

namespace A115864.P12467619759306786848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A069835 n

end

end A115864.P12467619759306786848

noncomputable section

/-- A115864: Legendre_P(n,2)*4^n.

Offset 0, canonical program `A115864.P12467619759306786848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115864 (n : ℕ) : ℤ :=
  A115864.P12467619759306786848.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115864.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115865.P10903364404270038860

`3^n*A069835(n)`
-/

namespace A115865.P10903364404270038860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A069835 n

end

end A115865.P10903364404270038860

noncomputable section

/-- A115865: a(n) = Legendre_P(n,2)*6^n.

Offset 0, canonical program `A115865.P10903364404270038860`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115865 (n : ℕ) : ℤ :=
  A115865.P10903364404270038860.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115865.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A116082.P16490829087811432884

`A008860(n)-1`
-/

namespace A116082.P16490829087811432884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n - 1

end

end A116082.P16490829087811432884

noncomputable section

/-- A116082: a(n) = C(n,7) + C(n,6) + C(n,5) + C(n,4) + C(n,3) + C(n,2) + C(n,1).

Offset 0, canonical program `A116082.P16490829087811432884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116082 (n : ℕ) : ℤ :=
  A116082.P16490829087811432884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116366.P15831376791925609639

`A065091(A002024(n+1))+A065091(A002260(n+1))`
-/

namespace A116366.P15831376791925609639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A002024 (n + 1)).toNat + A065091 (A002260 (n + 1)).toNat

end

end A116366.P15831376791925609639

noncomputable section

/-- A116366: Triangle read by rows: even numbers as sums of two odd primes.

Offset 1, canonical program `A116366.P15831376791925609639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116366 (n : ℕ) : ℤ :=
  A116366.P15831376791925609639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117401.P741884526510299705

`A000079(A004247(n))`
-/

namespace A117401.P741884526510299705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004247 n).toNat

end

end A117401.P741884526510299705

noncomputable section

/-- A117401: Triangle T(n,k) = 2^(k*(n-k)), read by rows.

Offset 0, canonical program `A117401.P741884526510299705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. -/
def A117401 (n : ℕ) : ℤ :=
  A117401.P741884526510299705.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. -/
def A117401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117567.P12108434008989334567

`floor(sqrt(A116948(n)))`
-/

namespace A117567.P12108434008989334567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A116948 n)

end

end A117567.P12108434008989334567

noncomputable section

/-- A117567: Riordan array ((1+x^2)/(1-x^3),x).

Offset 0, canonical program `A117567.P12108434008989334567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117567 (n : ℕ) : ℤ :=
  A117567.P12108434008989334567.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117891.P16841022737502782817

`∩[A049445(n+1), A117890(n+1)]`
-/

namespace A117891.P16841022737502782817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117891.P16841022737502782817

noncomputable section

/-- A117891: Numbers k such that both the number of non-leading 0's in the binary representation of k and the number of 1's in the binary representation of k divide k.

Offset 1, canonical program `A117891.P16841022737502782817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3058 terms. -/
def A117891 (n : ℕ) : ℤ :=
  (A117891.P16841022737502782817.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3058 terms. -/
def A117891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117947.P4958322561129453974

`A102283(A095145(n))`
-/

namespace A117947.P4958322561129453974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A095145 n).toNat

end

end A117947.P4958322561129453974

noncomputable section

/-- A117947: T(n,k) = L(C(n,k)/3) where L(j/p) is the Legendre symbol of j and p.

Offset 0, canonical program `A117947.P4958322561129453974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117947 (n : ℕ) : ℤ :=
  A117947.P4958322561129453974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118011.P7528253608817175567

`A014132(n+1)+1+n`
-/

namespace A118011.P7528253608817175567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) + 1 + (n : ℤ)

end

end A118011.P7528253608817175567

noncomputable section

/-- A118011: Complement of the Connell sequence (A001614); a(n) = 4*n - A001614(n).

Offset 1, canonical program `A118011.P7528253608817175567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118011 (n : ℕ) : ℤ :=
  A118011.P7528253608817175567.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118013.P7372611043632226220

`floor(A093995(n+1)/A002260(n+1))`
-/

namespace A118013.P7372611043632226220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093995 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A118013.P7372611043632226220

noncomputable section

/-- A118013: Triangle read by rows: T(n,k) = floor(n^2/k), 1<=k<=n.

Offset 1, canonical program `A118013.P7372611043632226220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118013 (n : ℕ) : ℤ :=
  A118013.P7372611043632226220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118124.P182706929389334738

`A202018(A051162(n))`
-/

namespace A118124.P182706929389334738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (A051162 n).toNat

end

end A118124.P182706929389334738

noncomputable section

/-- A118124: Triangle T(n,m) = (n+m)^2+n+m+41, read by rows.

Offset 0, canonical program `A118124.P182706929389334738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118124 (n : ℕ) : ℤ :=
  A118124.P182706929389334738.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118124.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A118180.P8722355645554890549

`A000244(A004247(n))`
-/

namespace A118180.P8722355645554890549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A004247 n).toNat

end

end A118180.P8722355645554890549

noncomputable section

/-- A118180: Triangle T(n, k) = 3^(k*(n-k)), read by rows.

Offset 0, canonical program `A118180.P8722355645554890549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A118180 (n : ℕ) : ℤ :=
  A118180.P8722355645554890549.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A118180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118310.P4781483978204000189

`gcd(n+1, A073425(n))`
-/

namespace A118310.P4781483978204000189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A073425 n)

end

end A118310.P4781483978204000189

noncomputable section

/-- A118310: a(n) = gcd(n,m(n)), where m(n) is the n-th nonprime positive integer (1 or composite).

Offset 1, canonical program `A118310.P4781483978204000189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118310 (n : ℕ) : ℤ :=
  (A118310.P4781483978204000189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118447.P6254053121219792045

`(n+2)*A172060(n+1)`
-/

namespace A118447.P6254053121219792045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A172060 (n + 1)

end

end A118447.P6254053121219792045

noncomputable section

/-- A118447: Number of rooted n-edge one-vertex maps on the Klein bottle (dually: one-face maps).

Offset 2, canonical program `A118447.P6254053121219792045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A118447 (n : ℕ) : ℤ :=
  A118447.P6254053121219792045.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A118447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118489.P12182930602859449192

`eq[1, A074909(∏{digits}[n², #])]²`
-/

namespace A118489.P12182930602859449192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A118489.P12182930602859449192

noncomputable section

/-- A118489: Squares for which the product of the digits is a triangular number.

Offset 1, canonical program `A118489.P12182930602859449192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A118489 (n : ℕ) : ℤ :=
  (A118489.P12182930602859449192.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A118489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118730.P2399005197283058266

`eq[0, A071906(n)]`
-/

namespace A118730.P2399005197283058266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118730.P2399005197283058266

noncomputable section

/-- A118730: Numbers k such that 2^k has even digit sum.

Offset 1, canonical program `A118730.P2399005197283058266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4977 terms. -/
def A118730 (n : ℕ) : ℤ :=
  (A118730.P2399005197283058266.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4977 terms. -/
def A118730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118821.P17852525243944256104

`1-A001057(A135481(n)+2)`
-/

namespace A118821.P17852525243944256104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001057 (A135481 n + 2).toNat

end

end A118821.P17852525243944256104

noncomputable section

/-- A118821: 2-adic continued fraction of zero, where a(n) = 2 if n is odd, -A006519(n/2) otherwise.

Offset 1, canonical program `A118821.P17852525243944256104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118821 (n : ℕ) : ℤ :=
  A118821.P17852525243944256104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118821.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A119702.P530950042068071271

`n*A119701(n)`
-/

namespace A119702.P530950042068071271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A119701 n

end

end A119702.P530950042068071271

noncomputable section

/-- A119702: a(n) = n^2*binomial(2*n, n)*Fibonacci(n).

Offset 0, canonical program `A119702.P530950042068071271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A119702 (n : ℕ) : ℤ :=
  A119702.P530950042068071271.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A119702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119951.P13973358943330072792

`A120777(n+1)-A001790(n+2)`
-/

namespace A119951.P13973358943330072792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120777 (n + 1) - A001790 (n + 2)

end

end A119951.P13973358943330072792

noncomputable section

/-- A119951: Numerators of partial sums of a convergent series with value 4, involving scaled Catalan numbers A000108.

Offset 1, canonical program `A119951.P13973358943330072792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A119951 (n : ℕ) : ℤ :=
  A119951.P13973358943330072792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A119951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120079.P10250336929621468913

`A002944(n+1)²*A056220(n+1)`
-/

namespace A120079.P10250336929621468913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (n + 1) ^ 2 * A056220 (n + 1)

end

end A120079.P10250336929621468913

noncomputable section

/-- A120079: Unsigned row sums of triangle A120078.

Offset 1, canonical program `A120079.P10250336929621468913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A120079 (n : ℕ) : ℤ :=
  A120079.P10250336929621468913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A120079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120778.P3390227642440229667

`A046161(n+1)-A001790(n+1)`
-/

namespace A120778.P3390227642440229667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (n + 1) - A001790 (n + 1)

end

end A120778.P3390227642440229667

noncomputable section

/-- A120778: Numerators of partial sums of Catalan numbers scaled by powers of 1/4.

Offset 0, canonical program `A120778.P3390227642440229667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A120778 (n : ℕ) : ℤ :=
  A120778.P3390227642440229667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A120778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120888.P6096856240399343851

`gcd(A002260(n+1), A010783(A278818(n)))`
-/

namespace A120888.P6096856240399343851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A010783 (A278818 n).toNat)

end

end A120888.P6096856240399343851

noncomputable section

/-- A120888: Triangle read by rows: T(n,k) = gcd(k,floor(n/k)) (1 <= k <= n).

Offset 1, canonical program `A120888.P6096856240399343851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A120888 (n : ℕ) : ℤ :=
  (A120888.P6096856240399343851.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A120888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121314.P5912152767662340236

`C(A051162(A056943(n)), 2*A025581(n))`
-/

namespace A121314.P5912152767662340236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 (A056943 n).toNat).toNat (2 * A025581 n).toNat

end

end A121314.P5912152767662340236

noncomputable section

/-- A121314: Triangle T(n,k), 0 <= k <= n, read by rows given by [0, 1, 0, 0, 0, 0, ...] DELTA [1, 0, 1, 0, 0, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A121314.P5912152767662340236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121314 (n : ℕ) : ℤ :=
  (A121314.P5912152767662340236.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121314.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A121446.P4493713673701244054

`A006013(A028310(n))+A001764(n)`
-/

namespace A121446.P4493713673701244054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 (A028310 n).toNat + A001764 n

end

end A121446.P4493713673701244054

noncomputable section

/-- A121446: Number of ternary trees with n edges and such that the first leaf in the preorder traversal is at level 1.

Offset 1, canonical program `A121446.P4493713673701244054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A121446 (n : ℕ) : ℤ :=
  A121446.P4493713673701244054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A121446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121518.P11729264587187035683

`eq[0, A111900(n)]`
-/

namespace A121518.P11729264587187035683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111900 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121518.P11729264587187035683

noncomputable section

/-- A121518: Numbers that are not the sum of the squares of distinct primes.

Offset 1, canonical program `A121518.P11729264587187035683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. -/
def A121518 (n : ℕ) : ℤ :=
  (A121518.P11729264587187035683.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. -/
def A121518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121757.P7134877423279458193

`A002260(n+1)*A008279(n)`
-/

namespace A121757.P7134877423279458193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008279 n

end

end A121757.P7134877423279458193

noncomputable section

/-- A121757: Triangle read by rows: multiply Pascal's triangle by 1,2,6,24,120,720,... = A000142.

Offset 0, canonical program `A121757.P7134877423279458193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A121757 (n : ℕ) : ℤ :=
  A121757.P7134877423279458193.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A121757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122098.P17266895398125348710

`A078268(n+1)+A068823(n+1)/(n+1)+1`
-/

namespace A122098.P17266895398125348710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078268 (n + 1) : ℚ) + (A068823 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A122098.P17266895398125348710

noncomputable section

/-- A122098: Smallest number, different from 1, which when multiplied by "n" produces a number with "n" as its rightmost digits.

Offset 1, canonical program `A122098.P17266895398125348710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A122098 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A122098.P17266895398125348710.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A122098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122256.P3316348703661489538

`∑[A122255(n+1)]`
-/

namespace A122256.P3316348703661489538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122256.P3316348703661489538

noncomputable section

/-- A122256: Number of numbers <= n with 3-smooth Euler's totient (A000010).

Offset 1, canonical program `A122256.P3316348703661489538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122256 (n : ℕ) : ℤ :=
  A122256.P3316348703661489538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122261.P6538206010001195725

`A122255(∏{p}[n+1, #])`
-/

namespace A122261.P6538206010001195725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A122261.P6538206010001195725

noncomputable section

/-- A122261: Characteristic function of numbers having only factors that are Pierpont primes.

Offset 1, canonical program `A122261.P6538206010001195725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122261 (n : ℕ) : ℤ :=
  A122261.P6538206010001195725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123162.P13305634525387480966

`A091042(A056943(n))`
-/

namespace A123162.P13305634525387480966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 (A056943 n).toNat

end

end A123162.P13305634525387480966

noncomputable section

/-- A123162: Triangle read by rows: T(n,k) = binomial(2*n - 1, 2*k - 1) for 0 < k <= n and T(n,0) = 1.

Offset 0, canonical program `A123162.P13305634525387480966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123162 (n : ℕ) : ℤ :=
  A123162.P13305634525387480966.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123229.P4929327052758281815

`(A050206(n+2)-1)*A002260(n+1)`
-/

namespace A123229.P4929327052758281815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050206 (n + 2) - 1) * A002260 (n + 1)

end

end A123229.P4929327052758281815

noncomputable section

/-- A123229: Triangle read by rows: T(n, m) = n - (n mod m).

Offset 1, canonical program `A123229.P4929327052758281815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123229 (n : ℕ) : ℤ :=
  A123229.P4929327052758281815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123229.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A123977.P15909624706474219848

`lt[0, A067552(n)]`
-/

namespace A123977.P15909624706474219848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A123977.P15909624706474219848

noncomputable section

/-- A123977: Complement of A061909 (skinny numbers).

Offset 1, canonical program `A123977.P15909624706474219848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9900 terms. -/
def A123977 (n : ℕ) : ℤ :=
  (A123977.P15909624706474219848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9900 terms. -/
def A123977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124051.P3647775880006845545

`A074909(lt[2, A002260(n+1)])*A074909(n)`
-/

namespace A124051.P3647775880006845545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A074909 n

end

end A124051.P3647775880006845545

noncomputable section

/-- A124051: Quasi-mirror of A062196 formatted as a triangular array.

Offset 0, canonical program `A124051.P3647775880006845545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124051 (n : ℕ) : ℤ :=
  A124051.P3647775880006845545.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124088.P6090225872293728711

`∑[A124087(n+1)]`
-/

namespace A124088.P6090225872293728711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124087 (n + 1 + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124088.P6090225872293728711

noncomputable section

/-- A124088: 10th column of Catalan triangle A009766.

Offset 17, canonical program `A124088.P6090225872293728711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A124088 (n : ℕ) : ℤ :=
  A124088.P6090225872293728711.a (n - 17)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A124088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124669.P372249676640486101

`record[A116570(n)-2]`
-/

namespace A124669.P372249676640486101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124669.P372249676640486101

noncomputable section

/-- A124669: Product of successive primes minus 2.

Offset 1, canonical program `A124669.P372249676640486101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124669 (n : ℕ) : ℤ :=
  A124669.P372249676640486101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124678.P3388856193918197942

`A111333(n+1)+2`
-/

namespace A124678.P3388856193918197942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) + 2

end

end A124678.P3388856193918197942

noncomputable section

/-- A124678: Number of conjugacy classes in PSL_2(p), p = prime(n).

Offset 1, canonical program `A124678.P3388856193918197942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124678 (n : ℕ) : ℤ :=
  A124678.P3388856193918197942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124815.P7342009755196343803

`∑{d}[n+1, A080512(#)*A091338((n+1)/#)]`
-/

namespace A124815.P7342009755196343803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080512 d * A091338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124815.P7342009755196343803

noncomputable section

/-- A124815: Expansion of q * psi(q)^2 * psi(-q^3)^2 * phi(-q^6) / phi(-q^2) in powers of q where phi(), psi() are Ramanujan theta functions.

Offset 1, canonical program `A124815.P7342009755196343803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124815 (n : ℕ) : ℤ :=
  A124815.P7342009755196343803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124844.P4151249500096215908

`A061084(A002262(n))*A074909(A083920(n))`
-/

namespace A124844.P4151249500096215908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (A002262 n).toNat * A074909 (A083920 n).toNat

end

end A124844.P4151249500096215908

noncomputable section

/-- A124844: Triangle T(n,k)=binomial(n,k)*A061084(k), 0<=k<=n, read by rows.

Offset 0, canonical program `A124844.P4151249500096215908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A124844 (n : ℕ) : ℤ :=
  A124844.P4151249500096215908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A124844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124932.P4361011200529056863

`A000217(A002260(n+1))*A074909(n+1)`
-/

namespace A124932.P4361011200529056863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A074909 (n + 1)

end

end A124932.P4361011200529056863

noncomputable section

/-- A124932: Triangle read by rows: T(n,k) = k*(k+1)*binomial(n,k)/2 (1 <= k <= n).

Offset 1, canonical program `A124932.P4361011200529056863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124932 (n : ℕ) : ℤ :=
  A124932.P4361011200529056863.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125091.P4309155901461917817

`A000292(A002260(n+1))*A074909(n+1)`
-/

namespace A125091.P4309155901461917817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002260 (n + 1)).toNat * A074909 (n + 1)

end

end A125091.P4309155901461917817

noncomputable section

/-- A125091: Triangle read by rows: T(n,k) = (1/6)*k*(k+1)*(k+2)*binomial(n,k) (1 <= k <= n).

Offset 1, canonical program `A125091.P4309155901461917817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125091 (n : ℕ) : ℤ :=
  A125091.P4309155901461917817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125092.P17335827733061112781

`A002260(n+1)²*A074909(A083920(n))`
-/

namespace A125092.P17335827733061112781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 * A074909 (A083920 n).toNat

end

end A125092.P17335827733061112781

noncomputable section

/-- A125092: Triangle read by rows: T(n,k) = (k+1)^2*binomial(n,k) (0 <= k <= n).

Offset 0, canonical program `A125092.P17335827733061112781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125092 (n : ℕ) : ℤ :=
  A125092.P17335827733061112781.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125497.P11464506834730115885

`A000578(eq[0, A365089(n)])`
-/

namespace A125497.P11464506834730115885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125497.P11464506834730115885

noncomputable section

/-- A125497: Evil cubes.

Offset 1, canonical program `A125497.P11464506834730115885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5052 terms. -/
def A125497 (n : ℕ) : ℤ :=
  A125497.P11464506834730115885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5052 terms. -/
def A125497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125562.P4991088652026869533

`A147610(A065361(n)+2)`
-/

namespace A125562.P4991088652026869533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147610 (A065361 n + 2).toNat

end

end A125562.P4991088652026869533

noncomputable section

/-- A125562: a(n) = denominator of (2n + 1)!/3^n.

Offset 0, canonical program `A125562.P4991088652026869533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125562 (n : ℕ) : ℤ :=
  A125562.P4991088652026869533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126181.P13289077798466675500

`A074909(A083920(n))*A208355(A099375(n))`
-/

namespace A126181.P13289077798466675500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A083920 n).toNat * A208355 (A099375 n).toNat

end

end A126181.P13289077798466675500

noncomputable section

/-- A126181: Triangle read by rows, T(n,k) = C(n,k)*Catalan(n-k+1), n >= 0, 0 <= k <= n.

Offset 0, canonical program `A126181.P13289077798466675500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126181 (n : ℕ) : ℤ :=
  A126181.P13289077798466675500.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126869.P13432652929287595300

`Δ[A100066(n)]`
-/

namespace A126869.P13432652929287595300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126869.P13432652929287595300

noncomputable section

/-- A126869: a(n) = Sum_{k = 0..n} binomial(n,floor(k/2))*(-1)^(n-k).

Offset 0, canonical program `A126869.P13432652929287595300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A126869 (n : ℕ) : ℤ :=
  A126869.P13432652929287595300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A126869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127159.P3391310337848141613

`A107430(n)+A061554(n)`
-/

namespace A127159.P3391310337848141613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 n + A061554 n

end

end A127159.P3391310337848141613

noncomputable section

/-- A127159: Triangle T(n,k) with T(n,k) = A061554(n,k) + A107430(n,k).

Offset 0, canonical program `A127159.P3391310337848141613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A127159 (n : ℕ) : ℤ :=
  A127159.P3391310337848141613.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A127159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127241.P4160861950596534893

`A010060(A026729(n))`
-/

namespace A127241.P4160861950596534893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A026729 n).toNat

end

end A127241.P4160861950596534893

noncomputable section

/-- A127241: A Thue-Morse triangle.

Offset 0, canonical program `A127241.P4160861950596534893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A127241 (n : ℕ) : ℤ :=
  A127241.P4160861950596534893.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A127241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127327.P1609288249831228995

`A127321(n)-A127322(n)`
-/

namespace A127327.P1609288249831228995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 n - A127322 n

end

end A127327.P1609288249831228995

noncomputable section

/-- A127327: Hypertetrahedron with T(W,X,Y,Z) = W - X.

Offset 0, canonical program `A127327.P1609288249831228995`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127327 (n : ℕ) : ℤ :=
  A127327.P1609288249831228995.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127733.P16638818104099670368

`A127648(n)^2`
-/

namespace A127733.P16638818104099670368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n ^ 2

end

end A127733.P16638818104099670368

noncomputable section

/-- A127733: Triangle read by rows: n-th row is n^2 preceded by (n-1) zeros.

Offset 1, canonical program `A127733.P16638818104099670368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127733 (n : ℕ) : ℤ :=
  A127733.P16638818104099670368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127774.P7439703218120216971

`C(A127648(n)+2, 3)`
-/

namespace A127774.P7439703218120216971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A127648 n + 2).toNat 3

end

end A127774.P7439703218120216971

noncomputable section

/-- A127774: Triangle read by rows: row n consists of n-1 zeros followed by A000292(n).

Offset 1, canonical program `A127774.P7439703218120216971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127774 (n : ℕ) : ℤ :=
  (A127774.P7439703218120216971.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127778.P8168830121262314916

`A002411(A002260(n+1))`
-/

namespace A127778.P8168830121262314916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (A002260 (n + 1)).toNat

end

end A127778.P8168830121262314916

noncomputable section

/-- A127778: Triangle T(n,k) = A002411(k) read by rows.

Offset 1, canonical program `A127778.P8168830121262314916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127778 (n : ℕ) : ℤ :=
  A127778.P8168830121262314916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127780.P839879575945640267

`A002260(n+1)*A131507(n)`
-/

namespace A127780.P839879575945640267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A131507 n

end

end A127780.P839879575945640267

noncomputable section

/-- A127780: A127775 * A002260 as infinite lower triangular matrices.

Offset 1, canonical program `A127780.P839879575945640267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127780 (n : ℕ) : ℤ :=
  A127780.P839879575945640267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127829.P18159773661985940597

`A124788(n)%2`
-/

namespace A127829.P18159773661985940597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124788 n) 2

end

end A127829.P18159773661985940597

noncomputable section

/-- A127829: Number triangle mod(C(floor(k/2),n-k),2).

Offset 0, canonical program `A127829.P18159773661985940597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127829 (n : ℕ) : ℤ :=
  A127829.P18159773661985940597.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127872.P15809757184933305004

`A061554(n)%2`
-/

namespace A127872.P15809757184933305004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061554 n) 2

end

end A127872.P15809757184933305004

noncomputable section

/-- A127872: Triangle formed by reading A039599 mod 2.

Offset 0, canonical program `A127872.P15809757184933305004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127872 (n : ℕ) : ℤ :=
  A127872.P15809757184933305004.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128136.P1783025151407197287

`A002260(n+1)*A003056(n+1)`
-/

namespace A128136.P1783025151407197287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A003056 (n + 1)

end

end A128136.P1783025151407197287

noncomputable section

/-- A128136: A128132 * A002260.

Offset 1, canonical program `A128136.P1783025151407197287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128136 (n : ℕ) : ℤ :=
  A128136.P1783025151407197287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128174.P2876198316238842196

`ceil(A097807(n)/2)`
-/

namespace A128174.P2876198316238842196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A097807 n : ℚ) / 2⌉

end

end A128174.P2876198316238842196

noncomputable section

/-- A128174: Transform, (1,0,1,...) in every column.

Offset 1, canonical program `A128174.P2876198316238842196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128174 (n : ℕ) : ℤ :=
  A128174.P2876198316238842196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128407.P15216900642853578067

`∑{d}[A127648(n), A007427(#)]`
-/

namespace A128407.P15216900642853578067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A128407.P15216900642853578067

noncomputable section

/-- A128407: Triangle read by rows: T(n,n) = mobius(n) on the diagonal, zero elsewhere.

Offset 1, canonical program `A128407.P15216900642853578067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128407 (n : ℕ) : ℤ :=
  A128407.P15216900642853578067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128489.P16282095299326048073

`C(A050206(n+2), 2)`
-/

namespace A128489.P16282095299326048073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A050206 (n + 2)).toNat 2

end

end A128489.P16282095299326048073

noncomputable section

/-- A128489: Triangle read by rows: A000012 * A126988 as infinite lower triangular matrices.

Offset 1, canonical program `A128489.P16282095299326048073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128489 (n : ℕ) : ℤ :=
  (A128489.P16282095299326048073.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128514.P1191630160223175623

`A116558(A104571(n))`
-/

namespace A128514.P1191630160223175623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 (A104571 n).toNat

end

end A128514.P1191630160223175623

noncomputable section

/-- A128514: Triangle, Pell sequence in every column.

Offset 1, canonical program `A128514.P1191630160223175623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128514 (n : ℕ) : ℤ :=
  A128514.P1191630160223175623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128540.P17841008741763583237

`A000045(abs(Δ[A127648(n)]))`
-/

namespace A128540.P17841008741763583237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |f1 (n + 1) - f1 n|.toNat

end

end A128540.P17841008741763583237

noncomputable section

/-- A128540: Triangle A127647 * A097806, read by rows.

Offset 1, canonical program `A128540.P17841008741763583237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128540 (n : ℕ) : ℤ :=
  A128540.P17841008741763583237.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128623.P6058663164886740131

`A002024(n+1)*A115514(n+1)`
-/

namespace A128623.P6058663164886740131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A115514 (n + 1)

end

end A128623.P6058663164886740131

noncomputable section

/-- A128623: Triangle read by rows: A128621 * A000012 as infinite lower triangular matrices.

Offset 1, canonical program `A128623.P6058663164886740131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128623 (n : ℕ) : ℤ :=
  A128623.P6058663164886740131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129073.P17736842117029644714

`A129071(n+1)+A008864(n+1)`
-/

namespace A129073.P17736842117029644714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129071 (n + 1) + A008864 (n + 1)

end

end A129073.P17736842117029644714

noncomputable section

/-- A129073: Numbers k such that (k-8)/7 is prime.

Offset 1, canonical program `A129073.P17736842117029644714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129073 (n : ℕ) : ℤ :=
  A129073.P17736842117029644714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129110.P13788463784851798208

`A105523(n+2)+1`
-/

namespace A129110.P13788463784851798208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (n + 2) + 1

end

end A129110.P13788463784851798208

noncomputable section

/-- A129110: A transformation of the Catalan sequence.

Offset 0, canonical program `A129110.P13788463784851798208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A129110 (n : ℕ) : ℤ :=
  A129110.P13788463784851798208.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A129110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129169.P1929904711446876169

`A122737(n+2)%A033321(n+1)`
-/

namespace A129169.P1929904711446876169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122737 (n + 2)) (A033321 (n + 1))

end

end A129169.P1929904711446876169

noncomputable section

/-- A129169: Number of UU's starting at level 0 in all skew Dyck paths of semilength n.

Offset 0, canonical program `A129169.P1929904711446876169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A129169 (n : ℕ) : ℤ :=
  A129169.P1929904711446876169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A129169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129264.P6596499237645719087

`A029837(A050206(n+2))`
-/

namespace A129264.P6596499237645719087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A050206 (n + 2)).toNat

end

end A129264.P6596499237645719087

noncomputable section

/-- A129264: Triangle read by rows: A000012 * A115361 as infinite lower triangular matrices.

Offset 1, canonical program `A129264.P6596499237645719087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129264 (n : ℕ) : ℤ :=
  A129264.P6596499237645719087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129368.P2039354540942189590

`record[Δ[A100066(A026741(n))]]`
-/

namespace A129368.P2039354540942189590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100066 (A026741 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129368.P2039354540942189590

noncomputable section

/-- A129368: a(n) = Sum_{k=floor((n+1)/2)..n} binomial(2*k,k).

Offset 0, canonical program `A129368.P2039354540942189590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A129368 (n : ℕ) : ℤ :=
  A129368.P2039354540942189590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A129368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129548.P2542562975087608923

`∑[A081284(2*A028242(n))]`
-/

namespace A129548.P2542562975087608923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081284 (2 * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129548.P2542562975087608923

noncomputable section

/-- A129548: Measures of entanglement in 3-qbits.

Offset 0, canonical program `A129548.P2542562975087608923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A129548 (n : ℕ) : ℤ :=
  A129548.P2542562975087608923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A129548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129768.P17975627728056424353

`A111333(n+1)-n`
-/

namespace A129768.P17975627728056424353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) - (n : ℤ)

end

end A129768.P17975627728056424353

noncomputable section

/-- A129768: Number of odd nonprime numbers less than the n-th prime.

Offset 1, canonical program `A129768.P17975627728056424353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129768 (n : ℕ) : ℤ :=
  A129768.P17975627728056424353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130124.P14933336199190030298

`A002260(n+1)*A137688(n)`
-/

namespace A130124.P14933336199190030298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A137688 n

end

end A130124.P14933336199190030298

noncomputable section

/-- A130124: Triangle defined by A130123 * A002260, read by rows.

Offset 1, canonical program `A130124.P14933336199190030298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130124 (n : ℕ) : ℤ :=
  A130124.P14933336199190030298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130154.P3699466404011928819

`2*A004247(n)+1`
-/

namespace A130154.P3699466404011928819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004247 n + 1

end

end A130154.P3699466404011928819

noncomputable section

/-- A130154: Triangle read by rows: T(n, k) = 1 + 2*(n-k)*(k-1) (1 <= k <= n).

Offset 1, canonical program `A130154.P3699466404011928819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130154 (n : ℕ) : ℤ :=
  A130154.P3699466404011928819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130202.P17992186468874660654

`A000217(eq[0, A228039(2*n+1)])`
-/

namespace A130202.P17992186468874660654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130202.P17992186468874660654

noncomputable section

/-- A130202: Odious triangular numbers.

Offset 1, canonical program `A130202.P17992186468874660654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130202 (n : ℕ) : ℤ :=
  A130202.P17992186468874660654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130208.P15493622475398037908

`∑{d}[A127648(n), #]`
-/

namespace A130208.P15493622475398037908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A130208.P15493622475398037908

noncomputable section

/-- A130208: Diagonalized matrix of A000203, sigma(n).

Offset 1, canonical program `A130208.P15493622475398037908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130208 (n : ℕ) : ℤ :=
  (A130208.P15493622475398037908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130301.P9351493198226008090

`A074909(n+1)+A003056(n*A010054(n))`
-/

namespace A130301.P9351493198226008090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) + A003056 ((n : ℤ) * A010054 n).toNat

end

end A130301.P9351493198226008090

noncomputable section

/-- A130301: Triangle read by rows: A130296 * A007318, as infinite lower triangular matrices.

Offset 1, canonical program `A130301.P9351493198226008090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130301 (n : ℕ) : ℤ :=
  A130301.P9351493198226008090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130304.P3347931568843992111

`A104568(n)%2`
-/

namespace A130304.P3347931568843992111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104568 n) 2

end

end A130304.P3347931568843992111

noncomputable section

/-- A130304: Triangle, (1,1,0,0,1,1,0,0,...) in every column.

Offset 1, canonical program `A130304.P3347931568843992111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130304 (n : ℕ) : ℤ :=
  A130304.P3347931568843992111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130452.P14201382947744191628

`floor(3*A130321(n)/2)`
-/

namespace A130452.P14201382947744191628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A130321 n : ℚ) / 2⌋

end

end A130452.P14201382947744191628

noncomputable section

/-- A130452: Triangle read by rows: A097806 * A130321 as infinite lower triangular matrices.

Offset 1, canonical program `A130452.P14201382947744191628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130452 (n : ℕ) : ℤ :=
  A130452.P14201382947744191628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130453.P9741272434723814228

`A011782(A128219(n+1))`
-/

namespace A130453.P9741272434723814228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A128219 (n + 1)).toNat

end

end A130453.P9741272434723814228

noncomputable section

/-- A130453: A097806 * A059268.

Offset 1, canonical program `A130453.P9741272434723814228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130453 (n : ℕ) : ℤ :=
  A130453.P9741272434723814228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130460.P15106625908008159160

`A127648(A083920(n))`
-/

namespace A130460.P15106625908008159160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (A083920 n).toNat

end

end A130460.P15106625908008159160

noncomputable section

/-- A130460: Infinite lower triangular matrix,(1,0,0,0,...) in the main diagonal and (1,2,3,...) in the subdiagonal.

Offset 1, canonical program `A130460.P15106625908008159160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130460 (n : ℕ) : ℤ :=
  A130460.P15106625908008159160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131048.P6862789119499203539

`A001045(A004736(n+1))*A074909(n)`
-/

namespace A131048.P6862789119499203539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A004736 (n + 1)).toNat * A074909 n

end

end A131048.P6862789119499203539

noncomputable section

/-- A131048: Triangle read by rows: (1/3) * (A007318^2 - A007318^(-1)) as infinite lower triangular matrices.

Offset 1, canonical program `A131048.P6862789119499203539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131048 (n : ℕ) : ℤ :=
  A131048.P6862789119499203539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131049.P1646413633853898678

`A015518(A004736(n+1))*A074909(n)`
-/

namespace A131049.P1646413633853898678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (A004736 (n + 1)).toNat * A074909 n

end

end A131049.P1646413633853898678

noncomputable section

/-- A131049: Triangle read by rows: (1/4) * (A007318^3 - A007318^(-1)) as infinite lower triangular matrices.

Offset 1, canonical program `A131049.P1646413633853898678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131049 (n : ℕ) : ℤ :=
  A131049.P1646413633853898678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131050.P15807582617973820490

`A007909(A099375(n))*A074909(n)`
-/

namespace A131050.P15807582617973820490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (A099375 n).toNat * A074909 n

end

end A131050.P15807582617973820490

noncomputable section

/-- A131050: Triangle read by rows: (1/5) * (A007318^4 - A007318^(-1)) as infinite lower triangular matrices.

Offset 1, canonical program `A131050.P15807582617973820490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131050 (n : ℕ) : ℤ :=
  A131050.P15807582617973820490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131217.P8002505329316326436

`A047999(n-char[∑[abs(1-n)]])`
-/

namespace A131217.P8002505329316326436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A131217.P8002505329316326436

noncomputable section

/-- A131217: Triangle read by rows: T(n, k) = A047999(n, k) + (n+1 mod 2)*[k=1].

Offset 0, canonical program `A131217.P8002505329316326436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A131217 (n : ℕ) : ℤ :=
  A131217.P8002505329316326436.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A131217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131406.P9435272594435287515

`A130321(n)%3`
-/

namespace A131406.P9435272594435287515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130321 n) 3

end

end A131406.P9435272594435287515

noncomputable section

/-- A131406: 3*A128174 - 2*A000012(signed).

Offset 1, canonical program `A131406.P9435272594435287515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131406 (n : ℕ) : ℤ :=
  A131406.P9435272594435287515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131413.P831149329462037329

`A099375(n)+A051162(n)`
-/

namespace A131413.P831149329462037329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + A051162 n

end

end A131413.P831149329462037329

noncomputable section

/-- A131413: Triangle read by rows: A002024 + A128076 - A000012 as infinite lower triangular matrices.

Offset 0, canonical program `A131413.P831149329462037329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131413 (n : ℕ) : ℤ :=
  A131413.P831149329462037329.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131421.P18127152066384474577

`2*A051162(n)+1`
-/

namespace A131421.P18127152066384474577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051162 n + 1

end

end A131421.P18127152066384474577

noncomputable section

/-- A131421: Triangle read by rows (n>=1, 1<=k<=n): T(n,k) = 2*(n+k) - 3.

Offset 1, canonical program `A131421.P18127152066384474577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131421 (n : ℕ) : ℤ :=
  A131421.P18127152066384474577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131432.P12122103890772475519

`3*A051162(n)+1`
-/

namespace A131432.P12122103890772475519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A051162 n + 1

end

end A131432.P12122103890772475519

noncomputable section

/-- A131432: Triangle read by rows: T(n,k) = 3*(n + k) + 1, 0 <= k <= n.

Offset 0, canonical program `A131432.P12122103890772475519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131432 (n : ℕ) : ℤ :=
  A131432.P12122103890772475519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131768.P3623680832176526672

`2*A074909(n+1)-1`
-/

namespace A131768.P3623680832176526672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074909 (n + 1) - 1

end

end A131768.P3623680832176526672

noncomputable section

/-- A131768: 2*(A007318 * A097807) - A000012.

Offset 0, canonical program `A131768.P3623680832176526672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131768 (n : ℕ) : ℤ :=
  A131768.P3623680832176526672.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132118.P2880824693812758185

`A002260(n+1)+n`
-/

namespace A132118.P2880824693812758185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (n : ℤ)

end

end A132118.P2880824693812758185

noncomputable section

/-- A132118: Triangle read by rows: T(n,k) = n*(n-1)/2 + 2*k - 1.

Offset 1, canonical program `A132118.P2880824693812758185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132118 (n : ℕ) : ℤ :=
  A132118.P2880824693812758185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132681.P1020153752142941773

`A127648(n+1)`
-/

namespace A132681.P1020153752142941773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (n + 1)

end

end A132681.P1020153752142941773

noncomputable section

/-- A132681: Infinitesimal generator matrix for a diagonally-shifted Pascal matrix, binomial(n+m,k+m), for m=1, related to Laguerre(n,x,m).

Offset 0, canonical program `A132681.P1020153752142941773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132681 (n : ℕ) : ℤ :=
  A132681.P1020153752142941773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132710.P8241110843192259271

`2*C(A127648(n+1), 2)`
-/

namespace A132710.P8241110843192259271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A127648 (n + 1)).toNat 2

end

end A132710.P8241110843192259271

noncomputable section

/-- A132710: Infinitesimal generator for a diagonally-shifted Lah matrix, unsigned A105278, related to n! Laguerre(n,-x,1).

Offset 0, canonical program `A132710.P8241110843192259271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132710 (n : ℕ) : ℤ :=
  (A132710.P8241110843192259271.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132812.P7489986122332542644

`A074909(n+1)*A074909(n)`
-/

namespace A132812.P7489986122332542644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A074909 n

end

end A132812.P7489986122332542644

noncomputable section

/-- A132812: Triangle read by rows, n>=1, 1<=k<=n, T(n,k) = k*binomial(n,k)^2/(n-k+1).

Offset 1, canonical program `A132812.P7489986122332542644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132812 (n : ℕ) : ℤ :=
  A132812.P7489986122332542644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132813.P13863876588901705986

`A074909(A056943(n))*A074909(n)`
-/

namespace A132813.P13863876588901705986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A056943 n).toNat * A074909 n

end

end A132813.P13863876588901705986

noncomputable section

/-- A132813: Triangle read by rows: T(n,k) = binomial(n, k)*binomial(n+1, k).

Offset 0, canonical program `A132813.P13863876588901705986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132813 (n : ℕ) : ℤ :=
  A132813.P13863876588901705986.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132918.P11162049490608784263

`A127648(n)%2`
-/

namespace A132918.P11162049490608784263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127648 n) 2

end

end A132918.P11162049490608784263

noncomputable section

/-- A132918: Identity matrix with interpolated zeros.

Offset 1, canonical program `A132918.P11162049490608784263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132918 (n : ℕ) : ℤ :=
  A132918.P11162049490608784263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133079.P11579559650557007468

`(-1)^n*A116916(n)`
-/

namespace A133079.P11579559650557007468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A116916 n

end

end A133079.P11579559650557007468

noncomputable section

/-- A133079: Expansion of f(x)^3 - 3 * x * f(x^9)^3 in powers of x^3 where f() is a Ramanujan theta function.

Offset 0, canonical program `A133079.P11579559650557007468`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133079 (n : ℕ) : ℤ :=
  A133079.P11579559650557007468.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133079.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133080.P11855227960840329333

`C(2, 2*A051933(n))`
-/

namespace A133080.P11855227960840329333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A051933 n).toNat

end

end A133080.P11855227960840329333

noncomputable section

/-- A133080: Interpolation operator: Triangle with an even number of zeros in each line followed by 1 or 2 ones.

Offset 1, canonical program `A133080.P11855227960840329333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133080 (n : ℕ) : ℤ :=
  (A133080.P11855227960840329333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133529.P6726527200779118077

`A069484(n+1)+A001248(n+3)`
-/

namespace A133529.P6726527200779118077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) + A001248 (n + 3)

end

end A133529.P6726527200779118077

noncomputable section

/-- A133529: Sum of squares of three consecutive primes.

Offset 1, canonical program `A133529.P6726527200779118077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A069484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133529 (n : ℕ) : ℤ :=
  A133529.P6726527200779118077.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A069484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133657.P17563057075250981671

`(-1)^n*A121455(n+1)`
-/

namespace A133657.P17563057075250981671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A121455 (n + 1)

end

end A133657.P17563057075250981671

noncomputable section

/-- A133657: Expansion of q * (phi(q) * psi(q^4))^2 in powers of q where phi(), psi() are Ramanujan theta functions.

Offset 1, canonical program `A133657.P17563057075250981671`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121455, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133657 (n : ℕ) : ℤ :=
  A133657.P17563057075250981671.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121455, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133657.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133691.P968811018023020680

`∑{d}[n+1, A069517(#)*A121455((n+1)/#)]`
-/

namespace A133691.P968811018023020680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069517 d * A121455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133691.P968811018023020680

noncomputable section

/-- A133691: Expansion of (1 - (phi(-q) * phi(q^2))^2) / 4 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A133691.P968811018023020680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133691 (n : ℕ) : ℤ :=
  A133691.P968811018023020680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133819.P12070590966735174216

`A002260(n+1)²`
-/

namespace A133819.P12070590966735174216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2

end

end A133819.P12070590966735174216

noncomputable section

/-- A133819: Triangle whose rows are sequences of increasing squares: 1; 1,4; 1,4,9; ... .

Offset 1, canonical program `A133819.P12070590966735174216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133819 (n : ℕ) : ℤ :=
  A133819.P12070590966735174216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133820.P16676047363186325377

`A002260(n+1)^3`
-/

namespace A133820.P16676047363186325377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 3

end

end A133820.P16676047363186325377

noncomputable section

/-- A133820: Triangle whose rows are sequences of increasing cubes: 1; 1,8; 1,8,27; ... .

Offset 1, canonical program `A133820.P16676047363186325377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133820 (n : ℕ) : ℤ :=
  A133820.P16676047363186325377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134083.P13323167957523144321

`A074909(A083920(n))*A099375(n)`
-/

namespace A134083.P13323167957523144321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A083920 n).toNat * A099375 n

end

end A134083.P13323167957523144321

noncomputable section

/-- A134083: A007318 * A134082.

Offset 0, canonical program `A134083.P13323167957523144321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134083 (n : ℕ) : ℤ :=
  A134083.P13323167957523144321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134377.P2898163112214543715

`A108863(n)+A055217(n)`
-/

namespace A134377.P2898163112214543715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108863 n + A055217 n

end

end A134377.P2898163112214543715

noncomputable section

/-- A134377: Binomial transform of A045621.

Offset 1, canonical program `A134377.P2898163112214543715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A134377 (n : ℕ) : ℤ :=
  A134377.P2898163112214543715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A134377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134392.P16466045703416119313

`A062707(n)+A000125(A025581(n))`
-/

namespace A134392.P16466045703416119313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n + A000125 (A025581 n).toNat

end

end A134392.P16466045703416119313

noncomputable section

/-- A134392: A077028 * A000012, that is Rascal's triangle (as matrix) multiplied by a lower triangular matrix of ones (main diagonal of ones included).

Offset 1, canonical program `A134392.P16466045703416119313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134392 (n : ℕ) : ℤ :=
  A134392.P16466045703416119313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134403.P11268712443066889151

`A010054(n)+A051162(n)-1`
-/

namespace A134403.P11268712443066889151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A051162 n - 1)

end

end A134403.P11268712443066889151

noncomputable section

/-- A134403: Triangle read by rows: row n consists of (n, n, (n+1), (n+2), (n+3), ...).

Offset 0, canonical program `A134403.P11268712443066889151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134403 (n : ℕ) : ℤ :=
  A134403.P11268712443066889151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134446.P11979990693566020530

`A002260(n+1)*A115514(n+1)`
-/

namespace A134446.P11979990693566020530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A115514 (n + 1)

end

end A134446.P11979990693566020530

noncomputable section

/-- A134446: A128174 * A002260.

Offset 1, canonical program `A134446.P11979990693566020530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134446 (n : ℕ) : ℤ :=
  A134446.P11979990693566020530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134447.P15320589086750567618

`A008619(A051162(n))*A115514(n+1)`
-/

namespace A134447.P15320589086750567618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A051162 n).toNat * A115514 (n + 1)

end

end A134447.P15320589086750567618

noncomputable section

/-- A134447: A002260 * A128174.

Offset 1, canonical program `A134447.P15320589086750567618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134447 (n : ℕ) : ℤ :=
  A134447.P15320589086750567618.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134478.P13744276989039686378

`floor(sqrt(A051162(n)²+1))`
-/

namespace A134478.P13744276989039686378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A051162 n ^ 2 + 1)

end

end A134478.P13744276989039686378

noncomputable section

/-- A134478: Triangle read by rows, T(0,0) = 1; n-th row = (n+1) terms of n, n+1, n+2, ...

Offset 0, canonical program `A134478.P13744276989039686378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134478 (n : ℕ) : ℤ :=
  A134478.P13744276989039686378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134541.P5445259971452207357

`A002321(ceil(ratio[A074909(n)]))`
-/

namespace A134541.P5445259971452207357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A134541.P5445259971452207357

noncomputable section

/-- A134541: Triangle read by rows: T(n,k) = A002321(floor(n/k)).

Offset 1, canonical program `A134541.P5445259971452207357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134541 (n : ℕ) : ℤ :=
  A134541.P5445259971452207357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134635.P8371608749489723551

`2*A000108(n)-A126966(n)`
-/

namespace A134635.P8371608749489723551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n - A126966 n

end

end A134635.P8371608749489723551

noncomputable section

/-- A134635: Row sums of triangle A134634.

Offset 0, canonical program `A134635.P8371608749489723551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134635 (n : ℕ) : ℤ :=
  A134635.P8371608749489723551.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134635.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134660.P16903168388043380188

`2^A036555(n)`
-/

namespace A134660.P16903168388043380188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A036555 n : ℤ)

end

end A134660.P16903168388043380188

noncomputable section

/-- A134660: Number of odd coefficients in (1 + x + x^2 + x^3)^n.

Offset 0, canonical program `A134660.P16903168388043380188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134660 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134660.P16903168388043380188.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135013.P10871851765425093599

`∑[2*A025480(n)+1]`
-/

namespace A135013.P10871851765425093599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025480 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P10871851765425093599

noncomputable section

/-- A135013: Partial sums of A000265.

Offset 1, canonical program `A135013.P10871851765425093599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135013 (n : ℕ) : ℤ :=
  A135013.P10871851765425093599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135022.P16509518047199090749

`1-A118006(n+1)`
-/

namespace A135022.P16509518047199090749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A118006 (n + 1)

end

end A135022.P16509518047199090749

noncomputable section

/-- A135022: Define a sequence of binary words by w(1)=10 and w(n+1)=w(n)w(n)Reverse[w(n)]. Sequence gives the limiting word w(infinity).

Offset 1, canonical program `A135022.P16509518047199090749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A135022 (n : ℕ) : ℤ :=
  A135022.P16509518047199090749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A135022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135267.P13322534425495439531

`∑[A131733(n+1)-1]`
-/

namespace A135267.P13322534425495439531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135267.P13322534425495439531

noncomputable section

/-- A135267: Difference between partial sum of the first n primes and the first n even numbers greater than 0.

Offset 1, canonical program `A135267.P13322534425495439531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135267 (n : ℕ) : ℤ :=
  A135267.P13322534425495439531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135278.P10862305414900331449

`A074909(n+1)`
-/

namespace A135278.P10862305414900331449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1)

end

end A135278.P10862305414900331449

noncomputable section

/-- A135278: Triangle read by rows, giving the numbers T(n,m) = binomial(n+1, m+1); or, Pascal's triangle A007318 with its left-hand edge removed.

Offset 0, canonical program `A135278.P10862305414900331449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135278 (n : ℕ) : ℤ :=
  A135278.P10862305414900331449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135342.P5317769749649271683

`A092249(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A135342.P5317769749649271683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A092249 n + a (n - 1)

end

end A135342.P5317769749649271683

noncomputable section

/-- A135342: Number of distinct means of nonempty subsets of {1,...,n}.

Offset 1, canonical program `A135342.P5317769749649271683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135342 (n : ℕ) : ℤ :=
  A135342.P5317769749649271683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135387.P17093885749354178616

`C(2, A106187(n))`
-/

namespace A135387.P17093885749354178616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A106187 n).toNat

end

end A135387.P17093885749354178616

noncomputable section

/-- A135387: Triangle read by rows, with (2, 1, 0, 0, 0, ...) in every column.

Offset 1, canonical program `A135387.P17093885749354178616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135387 (n : ℕ) : ℤ :=
  (A135387.P17093885749354178616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135585.P10586276068203702289

`∑[A135133(n)]`
-/

namespace A135585.P10586276068203702289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135585.P10586276068203702289

noncomputable section

/-- A135585: a(n) = Sum_{i=1..n} (floor(S2(i)/3) mod 2), where S2(i) = A000120(i).

Offset 0, canonical program `A135585.P10586276068203702289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135585 (n : ℕ) : ℤ :=
  A135585.P10586276068203702289.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135734.P1458651204297931975

`A046301(n+1)-A001248(n+4)`
-/

namespace A135734.P1458651204297931975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) - A001248 (n + 4)

end

end A135734.P1458651204297931975

noncomputable section

/-- A135734: a(n) = prime(n)*prime(n+1)*prime(n+2) - prime(n+3)^2.

Offset 1, canonical program `A135734.P1458651204297931975`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A046301, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135734 (n : ℕ) : ℤ :=
  A135734.P1458651204297931975.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A046301, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135734.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135841.P9530508394126414704

`ceil(A130303(n+1)/2)`
-/

namespace A135841.P9530508394126414704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130303 (n + 1) : ℚ) / 2⌉

end

end A135841.P9530508394126414704

noncomputable section

/-- A135841: A000012 * A135839 as infinite lower triangular matrices.

Offset 1, canonical program `A135841.P9530508394126414704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135841 (n : ℕ) : ℤ :=
  A135841.P9530508394126414704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137821.P1223763434249241311

`A107755(n+1)/2`
-/

namespace A137821.P1223763434249241311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107755 (n + 1) : ℚ) / 2

end

end A137821.P1223763434249241311

noncomputable section

/-- A137821: Numbers k such that Sum_{j=1..2k} Catalan(j) == 0 (mod 3).

Offset 1, canonical program `A137821.P1223763434249241311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107755, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137821 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137821.P1223763434249241311.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107755, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138116.P15735510777466576646

`A098369(A112367(n))`
-/

namespace A138116.P15735510777466576646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098369 (A112367 n).toNat

end

end A138116.P15735510777466576646

noncomputable section

/-- A138116: Triangle read by rows: row n lists the first n digits of the decimal expansion of golden ratio phi.

Offset 1, canonical program `A138116.P15735510777466576646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138116 (n : ℕ) : ℤ :=
  A138116.P15735510777466576646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138418.P2359058537116539460

`A138402(n+1)/2`
-/

namespace A138418.P2359058537116539460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138402 (n + 1) : ℚ) / 2

end

end A138418.P2359058537116539460

noncomputable section

/-- A138418: a(n) = ((n-th prime)^4-(n-th prime)^2)/2.

Offset 1, canonical program `A138418.P2359058537116539460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138418 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138418.P2359058537116539460.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138418.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138419.P4878153572182925303

`A138402(n+1)/3`
-/

namespace A138419.P4878153572182925303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138402 (n + 1) : ℚ) / 3

end

end A138419.P4878153572182925303

noncomputable section

/-- A138419: a(n) = (prime(n)^4 - prime(n)^2)/3.

Offset 1, canonical program `A138419.P4878153572182925303`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138419 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138419.P4878153572182925303.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138419.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138420.P16878004512610673702

`A138402(n+1)/4`
-/

namespace A138420.P16878004512610673702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138402 (n + 1) : ℚ) / 4

end

end A138420.P16878004512610673702

noncomputable section

/-- A138420: a(n) = ((prime(n))^4-(prime(n))^2)/4.

Offset 1, canonical program `A138420.P16878004512610673702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138420 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138420.P16878004512610673702.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138421.P8558237801673403202

`A138402(n+1)/6`
-/

namespace A138421.P8558237801673403202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138402 (n + 1) : ℚ) / 6

end

end A138421.P8558237801673403202

noncomputable section

/-- A138421: a(n) = (prime(n)^4 - prime(n)^2)/6.

Offset 1, canonical program `A138421.P8558237801673403202`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138421 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138421.P8558237801673403202.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138421.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138422.P7361952017647566611

`A138402(n+1)/12`
-/

namespace A138422.P7361952017647566611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138402 (n + 1) : ℚ) / 12

end

end A138422.P7361952017647566611

noncomputable section

/-- A138422: a(n) = (prime(n)^4 - prime(n)^2)/12.

Offset 1, canonical program `A138422.P7361952017647566611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138422 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138422.P7361952017647566611.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138422.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138430.P16083689388291153445

`A138426(n+1)/6`
-/

namespace A138430.P16083689388291153445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138426 (n + 1) : ℚ) / 6

end

end A138430.P16083689388291153445

noncomputable section

/-- A138430: a(n) = (prime(n)^5 - prime(n))/30.

Offset 1, canonical program `A138430.P16083689388291153445`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138430 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138430.P16083689388291153445.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138430.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138432.P6840818557510149970

`A138406(n+1)/2`
-/

namespace A138432.P6840818557510149970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 2

end

end A138432.P6840818557510149970

noncomputable section

/-- A138432: a(n) = ((n-th prime)^5-(n-th prime)^3)/2.

Offset 1, canonical program `A138432.P6840818557510149970`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138432 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138432.P6840818557510149970.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138432.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138433.P5772360468710814788

`A138406(n+1)/3`
-/

namespace A138433.P5772360468710814788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 3

end

end A138433.P5772360468710814788

noncomputable section

/-- A138433: a(n) = ((n-th prime)^5-(n-th prime)^3)/3.

Offset 1, canonical program `A138433.P5772360468710814788`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138433 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138433.P5772360468710814788.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138433.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138434.P7976038697840491430

`A138406(n+1)/4`
-/

namespace A138434.P7976038697840491430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 4

end

end A138434.P7976038697840491430

noncomputable section

/-- A138434: a(n) = ((n-th prime)^5-(n-th prime)^3)/4.

Offset 1, canonical program `A138434.P7976038697840491430`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138434 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138434.P7976038697840491430.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138435.P16662900395581282620

`A138406(n+1)/6`
-/

namespace A138435.P16662900395581282620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 6

end

end A138435.P16662900395581282620

noncomputable section

/-- A138435: a(n) = ((n-th prime)^5-(n-th prime)^3)/6.

Offset 1, canonical program `A138435.P16662900395581282620`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138435 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138435.P16662900395581282620.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138436.P8959698969068807926

`A138406(n+1)/8`
-/

namespace A138436.P8959698969068807926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 8

end

end A138436.P8959698969068807926

noncomputable section

/-- A138436: a(n) = ((n-th prime)^5-(n-th prime)^3)/8.

Offset 1, canonical program `A138436.P8959698969068807926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138436 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138436.P8959698969068807926.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138436.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138437.P12080558741332099424

`A138406(n+1)/12`
-/

namespace A138437.P12080558741332099424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 12

end

end A138437.P12080558741332099424

noncomputable section

/-- A138437: a(n) = ((n-th prime)^5-(n-th prime)^3)/12.

Offset 1, canonical program `A138437.P12080558741332099424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138437 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138437.P12080558741332099424.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138437.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138447.P3322787018046642282

`A138442(n+1)-A138443(n+1)`
-/

namespace A138447.P3322787018046642282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138442 (n + 1) - A138443 (n + 1)

end

end A138447.P3322787018046642282

noncomputable section

/-- A138447: a(n) = ((n-th prime)^6-(n-th prime)^2)/12.

Offset 1, canonical program `A138447.P3322787018046642282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138447 (n : ℕ) : ℤ :=
  A138447.P3322787018046642282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138448.P10621642085581528040

`2*A138441(n+1)/15`
-/

namespace A138448.P10621642085581528040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A138441 (n + 1) : ℚ) / 15

end

end A138448.P10621642085581528040

noncomputable section

/-- A138448: a(n) = (prime(n)^6 - prime(n)^2)/15.

Offset 1, canonical program `A138448.P10621642085581528040`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138448 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138448.P10621642085581528040.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138452.P14547516998140644137

`A030078(n+1)*A006093(n+1)*A060800(n+1)/2`
-/

namespace A138452.P14547516998140644137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) * A006093 (n + 1) * A060800 (n + 1) : ℚ) / 2

end

end A138452.P14547516998140644137

noncomputable section

/-- A138452: a(n) = ((n-th prime)^6-(n-th prime)^3)/2.

Offset 1, canonical program `A138452.P14547516998140644137`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A030078, A060800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138452 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138452.P14547516998140644137.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A030078, A060800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138452.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138453.P1680090917158117575

`A138440(n+1)-A138417(n+1)`
-/

namespace A138453.P1680090917158117575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138440 (n + 1) - A138417 (n + 1)

end

end A138453.P1680090917158117575

noncomputable section

/-- A138453: a(n) = ((n-th prime)^6-(n-th prime)^4)/2.

Offset 1, canonical program `A138453.P1680090917158117575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138453 (n : ℕ) : ℤ :=
  A138453.P1680090917158117575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138460.P7852437336812005660

`A138440(n+1)-A138424(n+1)`
-/

namespace A138460.P7852437336812005660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138440 (n + 1) - A138424 (n + 1)

end

end A138460.P7852437336812005660

noncomputable section

/-- A138460: a(n) = ((n-th prime)^6-(n-th prime)^5)/2.

Offset 1, canonical program `A138460.P7852437336812005660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138460 (n : ℕ) : ℤ :=
  A138460.P7852437336812005660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138585.P8523475872901714175

`n-a(n-A002260(n+1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A138585.P8523475872901714175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n : ℤ) - a ((n : ℤ) - A002260 (n + 1)).toNat

end

end A138585.P8523475872901714175

noncomputable section

/-- A138585: The sequence is formed by concatenating subsequences S1, S2, ... each of finite length. S1 consists of the element 1. The n-th subsequence consist of numbers {(n/2)*(n/2 - 1)+ 1, ..., (n/2)*(n/2 + 1)} for n even, {((n-1)/2)^2, ..., (n-1)/2 * ((n-1)/2 + 2)} for n odd.

Offset 1, canonical program `A138585.P8523475872901714175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138585 (n : ℕ) : ℤ :=
  A138585.P8523475872901714175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138677.P14282766057730873660

`A069482(n+1)²²%A000040(n+1)`
-/

namespace A138677.P14282766057730873660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A069482 (n + 1) ^ 2) ^ 2) (A000040 (n + 1))

end

end A138677.P14282766057730873660

noncomputable section

/-- A138677: Prime(n)^8 mod prime(n-1).

Offset 2, canonical program `A138677.P14282766057730873660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138677 (n : ℕ) : ℤ :=
  A138677.P14282766057730873660.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138679.P638953005839991339

`A138674(n+2)²%A000040(n+1)`
-/

namespace A138679.P638953005839991339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138674 (n + 2) ^ 2) (A000040 (n + 1))

end

end A138679.P638953005839991339

noncomputable section

/-- A138679: Prime(n)^10 mod prime(n-1).

Offset 2, canonical program `A138679.P638953005839991339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138679 (n : ℕ) : ℤ :=
  A138679.P638953005839991339.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138680.P17821806884942595706

`(A038702(n+2)*A138678(n+2))%A000040(n+1)`
-/

namespace A138680.P17821806884942595706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038702 (n + 2) * A138678 (n + 2)) (A000040 (n + 1))

end

end A138680.P17821806884942595706

noncomputable section

/-- A138680: Prime(n)^11 mod prime(n-1).

Offset 2, canonical program `A138680.P17821806884942595706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138680 (n : ℕ) : ℤ :=
  A138680.P17821806884942595706.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138681.P10355278238073095109

`A138675(n+2)²%A000040(n+1)`
-/

namespace A138681.P10355278238073095109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138675 (n + 2) ^ 2) (A000040 (n + 1))

end

end A138681.P10355278238073095109

noncomputable section

/-- A138681: Prime(n)^12 mod prime(n-1).

Offset 2, canonical program `A138681.P10355278238073095109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138681 (n : ℕ) : ℤ :=
  A138681.P10355278238073095109.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139240.P18445357465252311486

`A139239(n+1)/2`
-/

namespace A139240.P18445357465252311486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139239 (n + 1) : ℚ) / 2

end

end A139240.P18445357465252311486

noncomputable section

/-- A139240: First differences of Mersenne numbers A001348, divided by 4.

Offset 1, canonical program `A139240.P18445357465252311486`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139239, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139240 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139240.P18445357465252311486.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139239, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139240.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139413.P8227947109060917718

`dr(∑[A010054(n)]*A002260(n+1))`
-/

namespace A139413.P8227947109060917718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j) * A002260 (n + 1))

end

end A139413.P8227947109060917718

noncomputable section

/-- A139413: Triangle read by rows: row n gives the numbers A010888(n*k) for k = 1..n.

Offset 1, canonical program `A139413.P8227947109060917718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139413 (n : ℕ) : ℤ :=
  (A139413.P8227947109060917718.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139547.P7585618527842302360

`A003418(ceil(ratio[A074909(n)]))`
-/

namespace A139547.P7585618527842302360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A139547.P7585618527842302360

noncomputable section

/-- A139547: Triangle read by rows: T(n,k) = A003418(A010766).

Offset 0, canonical program `A139547.P7585618527842302360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139547 (n : ℕ) : ℤ :=
  A139547.P7585618527842302360.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139836.P17757306842670462418

`∩[A106935(n+1), A122869(n+1)]`
-/

namespace A139836.P17757306842670462418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P17757306842670462418

noncomputable section

/-- A139836: Primes of the form 10x^2+10xy+11y^2.

Offset 1, canonical program `A139836.P17757306842670462418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4965 terms. -/
def A139836 (n : ℕ) : ℤ :=
  (A139836.P17757306842670462418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4965 terms. -/
def A139836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139945.P12251791057180537189

`∩[A106935(n+1), A139492(n+1)]`
-/

namespace A139945.P12251791057180537189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139945.P12251791057180537189

noncomputable section

/-- A139945: Primes of the form 7x^2+51y^2.

Offset 1, canonical program `A139945.P12251791057180537189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A139945 (n : ℕ) : ℤ :=
  (A139945.P12251791057180537189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A139945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139962.P16591384432573993768

`∩[A106935(n+1), A130063(n+1)]`
-/

namespace A139962.P16591384432573993768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P16591384432573993768

noncomputable section

/-- A139962: Primes of the form 23x^2+22xy+23y^2.

Offset 1, canonical program `A139962.P16591384432573993768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A139962 (n : ℕ) : ℤ :=
  (A139962.P16591384432573993768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A139962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140193.P1932437245816314854

`A140191(and(n, -2))`
-/

namespace A140193.P1932437245816314854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140191 (Int.land (n : ℤ) (-2)).toNat

end

end A140193.P1932437245816314854

noncomputable section

/-- A140193: Same as A140191 except here e=6.

Offset 0, canonical program `A140193.P1932437245816314854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A140193 (n : ℕ) : ℤ :=
  A140193.P1932437245816314854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A140193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140703.P2993075249473134701

`A061201(ceil(ratio[A074909(n)]))`
-/

namespace A140703.P2993075249473134701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061201 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A140703.P2993075249473134701

noncomputable section

/-- A140703: A000012 * A051731^3.

Offset 1, canonical program `A140703.P2993075249473134701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140703 (n : ℕ) : ℤ :=
  A140703.P2993075249473134701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141093.P15336954112827502955

`A065994(2*(n+1))-A004277(n+1)`
-/

namespace A141093.P15336954112827502955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065994 (2 * (n + 1)) - A004277 (n + 1)

end

end A141093.P15336954112827502955

noncomputable section

/-- A141093: a(n) = prime(prime(2*n) - 2*n) - 2*n.

Offset 1, canonical program `A141093.P15336954112827502955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A141093 (n : ℕ) : ℤ :=
  A141093.P15336954112827502955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A141093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141127.P3364534028347758274

`A065994((n+1)²)-(n+1)²`
-/

namespace A141127.P3364534028347758274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065994 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A141127.P3364534028347758274

noncomputable section

/-- A141127: a(n) = prime(prime(n*n) - n*n) - n*n where prime(n) is the n-th prime.

Offset 1, canonical program `A141127.P3364534028347758274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A141127 (n : ℕ) : ℤ :=
  A141127.P3364534028347758274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A141127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141402.P1092358202357288515

`A016742(A004247(n))+A003056(n)²`
-/

namespace A141402.P1092358202357288515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A004247 n).toNat + A003056 n ^ 2

end

end A141402.P1092358202357288515

noncomputable section

/-- A141402: Triangle T(n, k) = n^2 + (2*k*(n-k))^2, read by rows.

Offset 0, canonical program `A141402.P1092358202357288515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141402 (n : ℕ) : ℤ :=
  A141402.P1092358202357288515.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142242.P4378309256295079438

`2-xor(1, A038573(n))`
-/

namespace A142242.P4378309256295079438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (A038573 n)

end

end A142242.P4378309256295079438

noncomputable section

/-- A142242: Row sums of A143200.

Offset 0, canonical program `A142242.P4378309256295079438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. -/
def A142242 (n : ℕ) : ℤ :=
  A142242.P4378309256295079438.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. -/
def A142242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143084.P17645620774275274829

`A051162(n)!`
-/

namespace A143084.P17645620774275274829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A051162 n).toNat

end

end A143084.P17645620774275274829

noncomputable section

/-- A143084: Triangle read by rows: T(n,m) = (n + m)!.

Offset 0, canonical program `A143084.P17645620774275274829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A143084 (n : ℕ) : ℤ :=
  (A143084.P17645620774275274829.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A143084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143216.P9510215905544509168

`A008279(n)*A098361(n)`
-/

namespace A143216.P9510215905544509168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A098361 n

end

end A143216.P9510215905544509168

noncomputable section

/-- A143216: Triangle read by rows: T(n,k) = n!*k!, 0 <= k <= n.

Offset 0, canonical program `A143216.P9510215905544509168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 944 terms. -/
def A143216 (n : ℕ) : ℤ :=
  A143216.P9510215905544509168.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 944 terms. -/
def A143216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143218.P4624166105486444444

`(A051162(n)+1)²-A025581(n)²`
-/

namespace A143218.P4624166105486444444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n + 1) ^ 2 - A025581 n ^ 2

end

end A143218.P4624166105486444444

noncomputable section

/-- A143218: Triangle read by rows, A127775 * A000012 * A127775; 1<=k<=n.

Offset 1, canonical program `A143218.P4624166105486444444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143218 (n : ℕ) : ℤ :=
  A143218.P4624166105486444444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143270.P14800265188891555264

`(n+1)*A092249(n+1)`
-/

namespace A143270.P14800265188891555264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A092249 (n + 1)

end

end A143270.P14800265188891555264

noncomputable section

/-- A143270: a(n) = n*A002088(n).

Offset 1, canonical program `A143270.P14800265188891555264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143270 (n : ℕ) : ℤ :=
  A143270.P14800265188891555264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143903.P8390654288726678182

`eq[n+1, lcm(n+1, A037861(n+1))]+1`
-/

namespace A143903.P8390654288726678182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A037861 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A143903.P8390654288726678182

noncomputable section

/-- A143903: A positive integer k is included if |(number of 0's in binary k) - (number of 1's in binary k)| divides k.

Offset 1, canonical program `A143903.P8390654288726678182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4474 terms. -/
def A143903 (n : ℕ) : ℤ :=
  (A143903.P8390654288726678182.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4474 terms. -/
def A143903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144337.P16245323222226020514

`A004273(A144328(n+1))*A004736(n+1)`
-/

namespace A144337.P16245323222226020514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A144328 (n + 1)).toNat * A004736 (n + 1)

end

end A144337.P16245323222226020514

noncomputable section

/-- A144337: Triangle read by rows, A000012 * (2*A144328 - A000012).

Offset 1, canonical program `A144337.P16245323222226020514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144337 (n : ℕ) : ℤ :=
  A144337.P16245323222226020514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144394.P4302788189746045217

`A074909(lt[2, A002262(n+1)])`
-/

namespace A144394.P4302788189746045217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144394.P4302788189746045217

noncomputable section

/-- A144394: Triangle read by rows (n >= 4, 0 <= k <= n - 4): row n gives the coefficients in the expansion of ((x + 1)^n - (x^n + n*x^(n - 1) + n*x + 1))/x^2.

Offset 4, canonical program `A144394.P4302788189746045217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6903 terms. -/
def A144394 (n : ℕ) : ℤ :=
  A144394.P4302788189746045217.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6903 terms. -/
def A144394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145645.P239735135967047320

`eq[A000120(n), A037861(n)]`
-/

namespace A145645.P239735135967047320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145645.P239735135967047320

noncomputable section

/-- A145645: Numbers k such that (binary weight of k)/(length of binary representation of k) equals 1/3.

Offset 1, canonical program `A145645.P239735135967047320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A145645 (n : ℕ) : ℤ :=
  (A145645.P239735135967047320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A145645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147992.P5768023493417768980

`∑[∑{d}[A135517(n), #²]]+n`
-/

namespace A147992.P5768023493417768980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A147992.P5768023493417768980

noncomputable section

/-- A147992: Sequence S such that 1 is in S and if x is in S, then 4x-1 and 4x+1 are in S.

Offset 1, canonical program `A147992.P5768023493417768980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147992 (n : ℕ) : ℤ :=
  (A147992.P5768023493417768980.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151566.P2662618975660010276

`∑[A060632(n)]-A060632(n)`
-/

namespace A151566.P2662618975660010276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A060632 n

end

end A151566.P2662618975660010276

noncomputable section

/-- A151566: Leftist toothpicks (see Comments for definition).

Offset 0, canonical program `A151566.P2662618975660010276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151566 (n : ℕ) : ℤ :=
  A151566.P2662618975660010276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151673.P12118802834766587725

`A151669(n)²`
-/

namespace A151673.P12118802834766587725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 n ^ 2

end

end A151673.P12118802834766587725

noncomputable section

/-- A151673: G.f.: Product_{k>=0} (1 + 4*x^(4^k)).

Offset 0, canonical program `A151673.P12118802834766587725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151673 (n : ℕ) : ℤ :=
  A151673.P12118802834766587725.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151738.P8616112178150566337

`p?[A053767(n+9)-A053767(n)]`
-/

namespace A151738.P8616112178150566337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 9) - A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A151738.P8616112178150566337

noncomputable section

/-- A151738: Primes which are the sum of nine consecutive composite numbers.

Offset 1, canonical program `A151738.P8616112178150566337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A151738 (n : ℕ) : ℤ :=
  A151738.P8616112178150566337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A151738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151783.P15926003244653498625

`A048896(n)²`
-/

namespace A151783.P15926003244653498625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n ^ 2

end

end A151783.P15926003244653498625

noncomputable section

/-- A151783: a(n) = 4^(wt(n) - 1) where wt(n) = A000120(n).

Offset 1, canonical program `A151783.P15926003244653498625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151783 (n : ℕ) : ℤ :=
  A151783.P15926003244653498625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151787.P3022189616092416365

`floor(A160713(n)/2)`
-/

namespace A151787.P3022189616092416365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160713 n : ℚ) / 2⌋

end

end A151787.P3022189616092416365

noncomputable section

/-- A151787: a(1)=1; for n > 1, a(n)=3*2^{wt(n-1)-1}.

Offset 1, canonical program `A151787.P3022189616092416365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151787 (n : ℕ) : ℤ :=
  A151787.P3022189616092416365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151915.P17310513089141184951

`A134859(A000201(n+1))`
-/

namespace A151915.P17310513089141184951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (A000201 (n + 1)).toNat

end

end A151915.P17310513089141184951

noncomputable section

/-- A151915: Wythoff AAAA numbers.

Offset 1, canonical program `A151915.P17310513089141184951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151915 (n : ℕ) : ℤ :=
  A151915.P17310513089141184951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152724.P14148954812493097513

`floor(log2(n+1))+1-A152723(n+1)`
-/

namespace A152724.P14148954812493097513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (n + 1) + 1 : ℤ) - A152723 (n + 1)

end

end A152724.P14148954812493097513

noncomputable section

/-- A152724: In binary, count of most frequent bit of n.

Offset 1, canonical program `A152724.P14148954812493097513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152724 (n : ℕ) : ℤ :=
  A152724.P14148954812493097513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153044.P8228127336685737390

`A153043(n+1)+3`
-/

namespace A153044.P8228127336685737390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 1) + 3

end

end A153044.P8228127336685737390

noncomputable section

/-- A153044: Numbers n such that 2*n-9 is not a prime.

Offset 1, canonical program `A153044.P8228127336685737390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153044 (n : ℕ) : ℤ :=
  A153044.P8228127336685737390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153053.P11375225491096847210

`A153052(n+1)-1`
-/

namespace A153053.P11375225491096847210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1) - 1

end

end A153053.P11375225491096847210

noncomputable section

/-- A153053: Numbers j such that 2*j + 7 is not a prime.

Offset 1, canonical program `A153053.P11375225491096847210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153053 (n : ℕ) : ℤ :=
  A153053.P11375225491096847210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153238.P13831251492164971693

`A153052(n+1)+1`
-/

namespace A153238.P13831251492164971693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1) + 1

end

end A153238.P13831251492164971693

noncomputable section

/-- A153238: Numbers k such that 2*k + 3 is composite.

Offset 1, canonical program `A153238.P13831251492164971693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153238 (n : ℕ) : ℤ :=
  A153238.P13831251492164971693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153639.P65248954018329175

`1-A153638(n)`
-/

namespace A153639.P65248954018329175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A153638 n

end

end A153639.P65248954018329175

noncomputable section

/-- A153639: Evilness of triangular numbers.

Offset 0, canonical program `A153639.P65248954018329175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153639 (n : ℕ) : ℤ :=
  A153639.P65248954018329175.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154313.P14837244992857068618

`record[(n+1)/A048896(A090431(n+1)²)²]`
-/

namespace A154313.P14837244992857068618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A048896 (A090431 (n + 1) ^ 2).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154313.P14837244992857068618

noncomputable section

/-- A154313: Numbers n such that abs(A007605(n) - A007953(n)) < 2.

Offset 1, canonical program `A154313.P14837244992857068618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. -/
def A154313 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A154313.P14837244992857068618.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. -/
def A154313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154558.P3791085360457268512

`A001006(A002262(n)+1)*A074909(n-A003056(n))`
-/

namespace A154558.P3791085360457268512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (A002262 n + 1).toNat * A074909 ((n : ℤ) - A003056 n).toNat

end

end A154558.P3791085360457268512

noncomputable section

/-- A154558: Triangle read by rows: binomial(n-1,k-1)*A001006(k).

Offset 1, canonical program `A154558.P3791085360457268512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154558 (n : ℕ) : ℤ :=
  A154558.P3791085360457268512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155794.P2715441487080169983

`A004247(n)!`
-/

namespace A155794.P2715441487080169983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004247 n).toNat

end

end A155794.P2715441487080169983

noncomputable section

/-- A155794: Triangle read by rows: t(n,m)=(m*(m-n))!

Offset 0, canonical program `A155794.P2715441487080169983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A155794 (n : ℕ) : ℤ :=
  (A155794.P2715441487080169983.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A155794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155797.P3993386269109604850

`C(A004247(n), ∑[char[∑[n+1]]])`
-/

namespace A155797.P3993386269109604850
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004247 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155797.P3993386269109604850

noncomputable section

/-- A155797: Triangle read by rows: t(n,k)=Binomial[k*(n - k), n].

Offset 0, canonical program `A155797.P3993386269109604850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1979 terms. -/
def A155797 (n : ℕ) : ℤ :=
  (A155797.P3993386269109604850.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1979 terms. -/
def A155797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155856.P9351911224662601144

`A054142(n)*A119502(n)`
-/

namespace A155856.P9351911224662601144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 n * A119502 n

end

end A155856.P9351911224662601144

noncomputable section

/-- A155856: Triangle T(n,k) = binomial(2*n-k, k)*(n-k)!, read by rows.

Offset 0, canonical program `A155856.P9351911224662601144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A155856 (n : ℕ) : ℤ :=
  A155856.P9351911224662601144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A155856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155943.P14210588904046408266

`p?[2*A105135(n+1)+1]`
-/

namespace A155943.P14210588904046408266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105135 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155943.P14210588904046408266

noncomputable section

/-- A155943: Primes p such that 16*p + 1 is also prime.

Offset 1, canonical program `A155943.P14210588904046408266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1264 terms. -/
def A155943 (n : ℕ) : ℤ :=
  A155943.P14210588904046408266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1264 terms. -/
def A155943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155955.P16446568437069693186

`A000312(A002262(n))*A079901(n)`
-/

namespace A155955.P16446568437069693186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A002262 n).toNat * A079901 n

end

end A155955.P16446568437069693186

noncomputable section

/-- A155955: Triangle read by rows: T(n,k) = (k*n)^k, 0 <= k <= n.

Offset 0, canonical program `A155955.P16446568437069693186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 594 terms. -/
def A155955 (n : ℕ) : ℤ :=
  A155955.P16446568437069693186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 594 terms. -/
def A155955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156229.P14210188501640213565

`∑[A052343(n)]`
-/

namespace A156229.P14210188501640213565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156229.P14210188501640213565

noncomputable section

/-- A156229: Partial sums of A052343.

Offset 0, canonical program `A156229.P14210188501640213565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156229 (n : ℕ) : ℤ :=
  A156229.P14210188501640213565.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156297.P17455290593663372909

`val(A001105(A002260(n+1)), A092283(n+1))`
-/

namespace A156297.P17455290593663372909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001105 (A002260 (n + 1)).toNat).toNat (A092283 (n + 1)).toNat

end

end A156297.P17455290593663372909

noncomputable section

/-- A156297: Triangle T(n,k) read by rows. If n = k^2 then 1 else 0.

Offset 1, canonical program `A156297.P17455290593663372909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156297 (n : ℕ) : ℤ :=
  (A156297.P17455290593663372909.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156319.P9547265538393638978

`A114283(n)%3`
-/

namespace A156319.P9547265538393638978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114283 n) 3

end

end A156319.P9547265538393638978

noncomputable section

/-- A156319: Triangle by columns: (1, 2, 0, 0, 0, ...) in every column.

Offset 1, canonical program `A156319.P9547265538393638978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156319 (n : ℕ) : ℤ :=
  A156319.P9547265538393638978.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156543.P5898804048182279516

`eq[0, A156542(n+1)]+1`
-/

namespace A156543.P5898804048182279516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156542 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A156543.P5898804048182279516

noncomputable section

/-- A156543: Multiplicative closure of primes that are not Sophie Germain primes (A053176).

Offset 1, canonical program `A156543.P5898804048182279516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1777 terms. -/
def A156543 (n : ℕ) : ℤ :=
  (A156543.P5898804048182279516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1777 terms. -/
def A156543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156549.P5463997211392600684

`∑[and(2, A002522(A035103(n+1)))-1]`
-/

namespace A156549.P5463997211392600684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A002522 (A035103 (n + 1)).toNat) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156549.P5463997211392600684

noncomputable section

/-- A156549: Race between primes having an odd/even number of zeros in their binary representation.

Offset 1, canonical program `A156549.P5463997211392600684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156549 (n : ℕ) : ℤ :=
  A156549.P5463997211392600684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156749.P5634646217596127623

`∑[A156707(n+1)]`
-/

namespace A156749.P5634646217596127623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156749.P5634646217596127623

noncomputable section

/-- A156749: For all numbers k(n) congruent to -1 or +1 (mod 4) starting with k(n) = {3,5,7,9,11,...}, a(k(n)) is incremented by the congruence (mod 4) if k(n) is prime and by 0 if k(n) is composite.

Offset 1, canonical program `A156749.P5634646217596127623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156749 (n : ℕ) : ℤ :=
  A156749.P5634646217596127623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156874.P3410723949972869260

`∑[A156660(n+1)]`
-/

namespace A156874.P3410723949972869260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156874.P3410723949972869260

noncomputable section

/-- A156874: Number of Sophie Germain primes <= n.

Offset 1, canonical program `A156874.P3410723949972869260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156874 (n : ℕ) : ℤ :=
  A156874.P3410723949972869260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157493.P10261944289604514386

`∑[A157492(n+1)]`
-/

namespace A157493.P10261944289604514386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157493.P10261944289604514386

noncomputable section

/-- A157493: Apply partial sum operator thrice to sequence of squares of the first n primes.

Offset 1, canonical program `A157493.P10261944289604514386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157493 (n : ℕ) : ℤ :=
  A157493.P10261944289604514386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157528.P869269647061177937

`A004277(A004247(n))`
-/

namespace A157528.P869269647061177937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A004247 n).toNat

end

end A157528.P869269647061177937

noncomputable section

/-- A157528: Triangle read by rows: T(n, k) = 2*k*(n - k) with T(n, 0) = T(n, n) = 1.

Offset 0, canonical program `A157528.P869269647061177937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157528 (n : ℕ) : ℤ :=
  A157528.P869269647061177937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158116.P8861049905540556252

`A000400(A004247(n))`
-/

namespace A158116.P8861049905540556252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A004247 n).toNat

end

end A158116.P8861049905540556252

noncomputable section

/-- A158116: Triangle T(n,k) = 6^(k*(n-k)), read by rows.

Offset 0, canonical program `A158116.P8861049905540556252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A158116 (n : ℕ) : ℤ :=
  A158116.P8861049905540556252.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A158116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158117.P5063276462293378464

`A011557(A004247(n))`
-/

namespace A158117.P5063276462293378464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A004247 n).toNat

end

end A158117.P5063276462293378464

noncomputable section

/-- A158117: Triangle T(n, k) = 10^(k*(n-k)), read by rows.

Offset 0, canonical program `A158117.P5063276462293378464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A158117 (n : ℕ) : ℤ :=
  A158117.P5063276462293378464.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A158117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158332.P15794101750954824745

`∩[A119449(n+1)+2, A119449(n+1)]`
-/

namespace A158332.P15794101750954824745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119449 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158332.P15794101750954824745

noncomputable section

/-- A158332: Greater of twin primes, each prime having an even digit sum.

Offset 1, canonical program `A158332.P15794101750954824745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A158332 (n : ℕ) : ℤ :=
  (A158332.P15794101750954824745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A158332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158823.P222206125904905872

`A130270(n+1)+A004247(n)`
-/

namespace A158823.P222206125904905872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1) + A004247 n

end

end A158823.P222206125904905872

noncomputable section

/-- A158823: Triangle read by rows: matrix product A004736 * A158821.

Offset 1, canonical program `A158823.P222206125904905872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158823 (n : ℕ) : ℤ :=
  A158823.P222206125904905872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158894.P8366770793697318187

`A158405(n+1)+2`
-/

namespace A158894.P8366770793697318187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) + 2

end

end A158894.P8366770793697318187

noncomputable section

/-- A158894: Sawtooth pattern of one, then two, then three, then four etc. consecutive odd numbers, starting each time at 3.

Offset 1, canonical program `A158894.P8366770793697318187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A158894 (n : ℕ) : ℤ :=
  A158894.P8366770793697318187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A158894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158948.P15529743855966853988

`Δ[A115514(abs(1-n)+1)+n]`
-/

namespace A158948.P15529743855966853988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115514 (|1 - (n : ℤ)| + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158948.P15529743855966853988

noncomputable section

/-- A158948: Triangle read by rows, left border = natural numbers repeated (1, 1, 2, 2, 3, 3, ...); all other columns = (1, 0, 1, 0, 1, 0, ...).

Offset 1, canonical program `A158948.P15529743855966853988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158948 (n : ℕ) : ℤ :=
  A158948.P15529743855966853988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159798.P10840948543157147368

`A004247(n)+(1-A002262(n))²`
-/

namespace A159798.P10840948543157147368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (1 - A002262 n) ^ 2

end

end A159798.P10840948543157147368

noncomputable section

/-- A159798: Triangle read by rows in which row n lists n terms, starting with 1, such that the difference between successive terms is equal to n-3.

Offset 1, canonical program `A159798.P10840948543157147368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159798 (n : ℕ) : ℤ :=
  A159798.P10840948543157147368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160020.P17457078898098785969

`A048967(n)²+A102376(n)-A048967(n)`
-/

namespace A160020.P17457078898098785969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 n ^ 2 + (A102376 n - A048967 n)

end

end A160020.P17457078898098785969

noncomputable section

/-- A160020: Row sums of triangle in A160019 .

Offset 0, canonical program `A160020.P17457078898098785969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A160020 (n : ℕ) : ℤ :=
  A160020.P17457078898098785969.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A160020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160807.P7920303016798829141

`A160799(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160807.P7920303016798829141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160799 (n + 1) : ℚ) / 4

end

end A160807.P7920303016798829141

noncomputable section

/-- A160807: a(n) = A160799(n)/4.

Offset 1, canonical program `A160807.P7920303016798829141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160807 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160807.P7920303016798829141.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160807.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160836.P13397477465687703204

`2*A160834(n)-A160833(n)`
-/

namespace A160836.P13397477465687703204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160834 n - A160833 n

end

end A160836.P13397477465687703204

noncomputable section

/-- A160836: G.f.: (1+62*x+565*x^2+1050*x^3+485*x^4+52*x^5+x^6)/(1-x)^7.

Offset 0, canonical program `A160836.P13397477465687703204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160836 (n : ℕ) : ℤ :=
  A160836.P13397477465687703204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161154.P13076449686572951639

`eq[1, gcd(n, A071295(n))]`
-/

namespace A161154.P13076449686572951639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A071295 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161154.P13076449686572951639

noncomputable section

/-- A161154: Positive integers n such that both {the number of (non-leading) 0's in the binary representation of n} is coprime to n and {the number of 1's in the binary representation of n} is coprime to n.

Offset 1, canonical program `A161154.P13076449686572951639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161154 (n : ℕ) : ℤ :=
  (A161154.P13076449686572951639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161201.P10259147654263294185

`A020918(n)/A001316(n)`
-/

namespace A161201.P10259147654263294185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020918 n : ℚ) / (A001316 n : ℚ)

end

end A161201.P10259147654263294185

noncomputable section

/-- A161201: Numerators in expansion of (1-x)^(-7/2).

Offset 0, canonical program `A161201.P10259147654263294185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A161201 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161201.P10259147654263294185.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A161201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161219.P6562723531791296311

`4/(n+1)*A034738(n+1)`
-/

namespace A161219.P6562723531791296311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (n + 1 : ℚ) * (A034738 (n + 1) : ℚ)

end

end A161219.P6562723531791296311

noncomputable section

/-- A161219: a(n) = (1/n) * Sum_{d|n} phi(n/d)*2^(d+1).

Offset 1, canonical program `A161219.P6562723531791296311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A161219 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161219.P6562723531791296311.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A161219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161342.P3070800095137774965

`A160428(n)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161342.P3070800095137774965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160428 n : ℚ) / 8

end

end A161342.P3070800095137774965

noncomputable section

/-- A161342: Number of "ON" cubic cells at n-th stage in simple 3-dimensional cellular automaton: a(n) = A160428(n)/8.

Offset 0, canonical program `A161342.P3070800095137774965`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161342 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161342.P3070800095137774965.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161385.P3801833948456811551

`A161382(n+1)+1`
-/

namespace A161385.P3801833948456811551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161382 (n + 1) + 1

end

end A161385.P3801833948456811551

noncomputable section

/-- A161385: (1,2)-sequence where n-th run has length n^2.

Offset 1, canonical program `A161385.P3801833948456811551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161382, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161385 (n : ℕ) : ℤ :=
  A161385.P3801833948456811551.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161382, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161464.P870720688420773945

`A051351(Δ[n²])-A051351(n)`
-/

namespace A161464.P870720688420773945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A051351 n

end

end A161464.P870720688420773945

noncomputable section

/-- A161464: Sum of all digits of primes from n-th prime to (2*n-1)-th prime.

Offset 1, canonical program `A161464.P870720688420773945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161464 (n : ℕ) : ℤ :=
  A161464.P870720688420773945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161569.P9701514302156641996

`∑[A073425(n)]`
-/

namespace A161569.P9701514302156641996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161569.P9701514302156641996

noncomputable section

/-- A161569: Sum of first n nonprimes minus their indices.

Offset 1, canonical program `A161569.P9701514302156641996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161569 (n : ℕ) : ℤ :=
  A161569.P9701514302156641996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161639.P4052514948824096861

`eq[1, A001511(A001511(floor(n/8)+1)+1)]`
-/

namespace A161639.P4052514948824096861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001511 (⌊(n : ℚ) / 8⌋ + 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161639.P4052514948824096861

noncomputable section

/-- A161639: Positions n such that A010060(n) = A010060(n+8).

Offset 1, canonical program `A161639.P4052514948824096861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161639 (n : ℕ) : ℤ :=
  (A161639.P4052514948824096861.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162612.P17075956797174905893

`A025581(n)+A002024(n+1)²*A002260(n+1)`
-/

namespace A162612.P17075956797174905893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A002024 (n + 1) ^ 2 * A002260 (n + 1)

end

end A162612.P17075956797174905893

noncomputable section

/-- A162612: Triangle read by rows in which row n lists n terms, starting with n^2+n-1, with gaps = n^2-1 between successive terms.

Offset 1, canonical program `A162612.P17075956797174905893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162612 (n : ℕ) : ℤ :=
  A162612.P17075956797174905893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162620.P14495094572982818752

`A162619(n+1)+1`
-/

namespace A162620.P14495094572982818752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162619 (n + 1) + 1

end

end A162620.P14495094572982818752

noncomputable section

/-- A162620: Triangle read by rows in which row n lists n consecutive natural numbers A000027, starting with A000040(n)-n+1.

Offset 1, canonical program `A162620.P14495094572982818752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162620 (n : ℕ) : ℤ :=
  A162620.P14495094572982818752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162621.P13614541246017247815

`gcd(A000038(n), A162619(A014132(n+1)))`
-/

namespace A162621.P13614541246017247815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A162619 (A014132 (n + 1)).toNat)

end

end A162621.P13614541246017247815

noncomputable section

/-- A162621: Triangle read by rows in which row n lists n consecutive natural numbers A000027, starting with A014689(n+1) = A000040(n+1)-n-1.

Offset 1, canonical program `A162621.P13614541246017247815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A162621 (n : ℕ) : ℤ :=
  (A162621.P13614541246017247815.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A162621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162719.P1590148191479666792

`eq[0, A037861(floor(n/(xor(n, n+1)+1)))]`
-/

namespace A162719.P1590148191479666792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162719.P1590148191479666792

noncomputable section

/-- A162719: A positive integer n is included if n in binary contains as many 0's as the number of 1's in the binary representation of n+1, and if n in binary contains as many 1's as the number of 0's in the binary representation of n+1.

Offset 1, canonical program `A162719.P1590148191479666792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162719 (n : ℕ) : ℤ :=
  (A162719.P1590148191479666792.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162800.P4495527545912003925

`A162345(n)+a(n-1)` with `a(0)=0`
-/

namespace A162800.P4495527545912003925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A162345 n + a (n - 1)

end

end A162800.P4495527545912003925

noncomputable section

/-- A162800: a(n) = n-th grid point that is covered by the zig-zag function for prime numbers such that the grid point is a vertex in the graph of the function.

Offset 0, canonical program `A162800.P4495527545912003925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162800 (n : ℕ) : ℤ :=
  A162800.P4495527545912003925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163259.P761500205964420747

`A074909(n+1)%C(A003056(n), A025581(n))`
-/

namespace A163259.P761500205964420747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074909 (n + 1)) (Nat.choose (A003056 n).toNat (A025581 n).toNat : ℤ)

end

end A163259.P761500205964420747

noncomputable section

/-- A163259: Triangle T(n,k) read by rows: mod(A007318(n,k+1);A007318(n,k)).

Offset 1, canonical program `A163259.P761500205964420747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163259 (n : ℕ) : ℤ :=
  A163259.P761500205964420747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163508.P2387051790155868881

`A001414(Δ[A061802(n)])`
-/

namespace A163508.P2387051790155868881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (n + 1) - f1 n).toNat

end

end A163508.P2387051790155868881

noncomputable section

/-- A163508: The sum of the prime factors (with repetition) of the sum of 2 successive primes.

Offset 1, canonical program `A163508.P2387051790155868881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A163508 (n : ℕ) : ℤ :=
  A163508.P2387051790155868881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A163508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163636.P4823460307082995320

`(1-A153043(n+1))²-n²`
-/

namespace A163636.P4823460307082995320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A153043 (n + 1)) ^ 2 - (n ^ 2 : ℤ)

end

end A163636.P4823460307082995320

noncomputable section

/-- A163636: The sum of all odd numbers from 2n-1 up to the n-th odd nonprime.

Offset 1, canonical program `A163636.P4823460307082995320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163636 (n : ℕ) : ℤ :=
  A163636.P4823460307082995320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163769.P6265540848864808962

`p?[gcd(n, A156707(n+1))]`
-/

namespace A163769.P6265540848864808962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A156707 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A163769.P6265540848864808962

noncomputable section

/-- A163769: Primes p such that 2*p+3 is not prime.

Offset 1, canonical program `A163769.P6265540848864808962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3828 terms. -/
def A163769 (n : ℕ) : ℤ :=
  (A163769.P6265540848864808962.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3828 terms. -/
def A163769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163866.P7682049290721924147

`∑[A074909(n-A003056(n))]`
-/

namespace A163866.P7682049290721924147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 ((n : ℤ) - A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163866.P7682049290721924147

noncomputable section

/-- A163866: Partial sums of A007318.

Offset 1, canonical program `A163866.P7682049290721924147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163866 (n : ℕ) : ℤ :=
  A163866.P7682049290721924147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080584.P17484479246964496310

`A079944(A002264(n))`
-/

namespace A080584.P17484479246964496310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A002264 n).toNat

end

end A080584.P17484479246964496310

noncomputable section

/-- A080584: A run of 3*2^n 0's followed by a run of 3*2^n 1's, for n=0, 1, 2, ...

Offset 0, canonical program `A080584.P17484479246964496310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080584 (n : ℕ) : ℤ :=
  A080584.P17484479246964496310.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080586.P1986153064841671641

`1+A079944(A002264(n))`
-/

namespace A080586.P1986153064841671641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A079944 (A002264 n).toNat

end

end A080586.P1986153064841671641

noncomputable section

/-- A080586: A run of 3*2^n 1's followed by a run of 3*2^n 2's, for n=0, 1, 2, ...

Offset 0, canonical program `A080586.P1986153064841671641`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080586 (n : ℕ) : ℤ :=
  A080586.P1986153064841671641.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080586.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080818.P16206206201295920908

`A068527(A127773(n+1))+A002260(n+1)`
-/

namespace A080818.P16206206201295920908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A127773 (n + 1)).toNat + A002260 (n + 1)

end

end A080818.P16206206201295920908

noncomputable section

/-- A080818: Triangle read by rows in which the n-th row contains n distinct numbers whose sum is the smallest square.

Offset 1, canonical program `A080818.P16206206201295920908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080818 (n : ℕ) : ℤ :=
  A080818.P16206206201295920908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081204.P12343401143930803537

`∪[A005809(n), A165817(n)]`
-/

namespace A081204.P12343401143930803537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081204.P12343401143930803537

noncomputable section

/-- A081204: Staircase on Pascal's triangle.

Offset 0, canonical program `A081204.P12343401143930803537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A081204 (n : ℕ) : ℤ :=
  (A081204.P12343401143930803537.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A081204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081217.P14427768733718162418

`A070321(eq[1, A010055(n+1)]+1)`
-/

namespace A081217.P14427768733718162418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A081217.P14427768733718162418

noncomputable section

/-- A081217: Greatest squarefree number not exceeding n-th prime power.

Offset 1, canonical program `A081217.P14427768733718162418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1281 terms. -/
def A081217 (n : ℕ) : ℤ :=
  A081217.P14427768733718162418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1281 terms. -/
def A081217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081221.P6243088705239368053

`A067535(n+1)-(n+1)`
-/

namespace A081221.P6243088705239368053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (n + 1) - (n + 1 : ℤ)

end

end A081221.P6243088705239368053

noncomputable section

/-- A081221: Number of consecutive numbers >= n having at least one square divisor > 1.

Offset 1, canonical program `A081221.P6243088705239368053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081221 (n : ℕ) : ℤ :=
  A081221.P6243088705239368053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081289.P17307542022439683697

`A081291(A081290(n))`
-/

namespace A081289.P17307542022439683697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081291 (A081290 n).toNat

end

end A081289.P17307542022439683697

noncomputable section

/-- A081289: a(0) = 0, a(n) = A081293(A081288(n)-1).

Offset 0, canonical program `A081289.P17307542022439683697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081289 (n : ℕ) : ℤ :=
  A081289.P17307542022439683697.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081320.P8623539179415587777

`A060865(n+1)*A060901(n+1)`
-/

namespace A081320.P8623539179415587777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060865 (n + 1) * A060901 (n + 1)

end

end A081320.P8623539179415587777

noncomputable section

/-- A081320: Largest 3-smooth divisor of n-th Fibonacci number.

Offset 1, canonical program `A081320.P8623539179415587777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081320 (n : ℕ) : ℤ :=
  A081320.P8623539179415587777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081769.P1839311465366829947

`∑[3*A092910(n)-4]`
-/

namespace A081769.P1839311465366829947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A092910 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081769.P1839311465366829947

noncomputable section

/-- A081769: a(n)-th term of the continued fraction for 2*Sum_{k>=0} 1/2^(2^k) is 2.

Offset 1, canonical program `A081769.P1839311465366829947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081769 (n : ℕ) : ℤ :=
  A081769.P1839311465366829947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082686.P7085759963606305548

`2*A226567(n+1)+1`
-/

namespace A082686.P7085759963606305548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226567 (n + 1) + 1

end

end A082686.P7085759963606305548

noncomputable section

/-- A082686: Odd nonprime integers n which have an odd number of proper divisors.

Offset 1, canonical program `A082686.P7085759963606305548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082686 (n : ℕ) : ℤ :=
  A082686.P7085759963606305548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082728.P8463879847482110208

`filter[A078643(n+3), A005614(#)]`
-/

namespace A082728.P8463879847482110208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078643 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005614 (f1 j).toNat = 1) n)

end

end A082728.P8463879847482110208

noncomputable section

/-- A082728: Numbers expressible as a sum of 2 nonzero Fibonacci numbers in exactly 1 way.

Offset 1, canonical program `A082728.P8463879847482110208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A082728 (n : ℕ) : ℤ :=
  A082728.P8463879847482110208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A082728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082851.P6825031164580738321

`∑[(A308188(n+1)-1)*a(n-1)+1]` with `a(0)=1`
-/

namespace A082851.P6825031164580738321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (A308188 (n + 1) - 1) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082851.P6825031164580738321

noncomputable section

/-- A082851: Partial sums of A082850.

Offset 1, canonical program `A082851.P6825031164580738321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082851 (n : ℕ) : ℤ :=
  A082851.P6825031164580738321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082852.P5408554968582082285

`A155587(A072643(n))-1`
-/

namespace A082852.P5408554968582082285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (A072643 n).toNat - 1

end

end A082852.P5408554968582082285

noncomputable section

/-- A082852: a(0)=0, a(n) = A014137(A072643(n)-1).

Offset 0, canonical program `A082852.P5408554968582082285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082852 (n : ℕ) : ℤ :=
  A082852.P5408554968582082285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083273.P10952218317192786139

`A080374(n+1)/A001223(n+1)`
-/

namespace A083273.P10952218317192786139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080374 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ)

end

end A083273.P10952218317192786139

noncomputable section

/-- A083273: a(n) is the quotient of lcm of first n consecutive prime differences and A001223(n), the n-th difference between consecutive primes.

Offset 1, canonical program `A083273.P10952218317192786139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A080374, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083273 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083273.P10952218317192786139.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A080374, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083273.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083552.P3447721149402971387

`A083551(n+1)/A057467(n+1)`
-/

namespace A083552.P3447721149402971387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083551 (n + 1) : ℚ) / (A057467 (n + 1) : ℚ)

end

end A083552.P3447721149402971387

noncomputable section

/-- A083552: Quotient when LCM of 2 consecutive prime differences is divided by GCD of the same two differences.

Offset 1, canonical program `A083552.P3447721149402971387`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057467, A083551, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083552 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083552.P3447721149402971387.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057467, A083551, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083552.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083558.P13428316401202771703

`A000040(n+1)*A119959(n+1)`
-/

namespace A083558.P13428316401202771703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A119959 (n + 1)

end

end A083558.P13428316401202771703

noncomputable section

/-- A083558: p(p^2-p+1) as p runs through the primes.

Offset 1, canonical program `A083558.P13428316401202771703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A119959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083558 (n : ℕ) : ℤ :=
  A083558.P13428316401202771703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A119959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084196.P3907743680021484046

`A072627(A008864(n+1))-1`
-/

namespace A084196.P3907743680021484046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (A008864 (n + 1)).toNat - 1

end

end A084196.P3907743680021484046

noncomputable section

/-- A084196: Number of primes q

Offset 1, canonical program `A084196.P3907743680021484046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A084196 (n : ℕ) : ℤ :=
  A084196.P3907743680021484046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A084196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084675.P7647099767913281496

`a(n-1)*A028310(A098369(∑[n]))` with `a(0)=1`
-/

namespace A084675.P7647099767913281496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A028310 (A098369 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A084675.P7647099767913281496

noncomputable section

/-- A084675: Product of the first n digits of the Golden Ratio phi = 1.6180339... (treating 0's as if they were 1's).

Offset 1, canonical program `A084675.P7647099767913281496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A084675 (n : ℕ) : ℤ :=
  A084675.P7647099767913281496.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A084675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084771.P4193283616547471538

`Δ[n*A162326(n)]`
-/

namespace A084771.P4193283616547471538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A162326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084771.P4193283616547471538

noncomputable section

/-- A084771: Coefficients of expansion of 1/sqrt(1 - 10*x + 9*x^2); also, a(n) is the central coefficient of (1 + 5*x + 4*x^2)^n.

Offset 0, canonical program `A084771.P4193283616547471538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A084771 (n : ℕ) : ℤ :=
  A084771.P4193283616547471538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A084771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084917.P988097393730579605

`∩[2*n, A084916(n+1)]/2`
-/

namespace A084917.P988097393730579605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084916 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084917.P988097393730579605

noncomputable section

/-- A084917: Positive numbers of the form 3*y^2 - x^2.

Offset 1, canonical program `A084917.P988097393730579605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1593 terms. -/
def A084917 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084917.P988097393730579605.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1593 terms. -/
def A084917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085949.P14222808602695038026

`A109805(n+1)/A057467(n+1)`
-/

namespace A085949.P14222808602695038026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109805 (n + 1) : ℚ) / (A057467 (n + 1) : ℚ)

end

end A085949.P14222808602695038026

noncomputable section

/-- A085949: Smallest multiple of prime(n) of the form r*prime(n-1) + s*prime(n+1) with r and s positive integers.

Offset 2, canonical program `A085949.P14222808602695038026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085949 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085949.P14222808602695038026.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086668.P5824346919968236986

`A046886(n+1)-1`
-/

namespace A086668.P5824346919968236986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046886 (n + 1) - 1

end

end A086668.P5824346919968236986

noncomputable section

/-- A086668: Number of divisors d of n such that 2d+1 is a prime.

Offset 1, canonical program `A086668.P5824346919968236986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086668 (n : ℕ) : ℤ :=
  A086668.P5824346919968236986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087118.P15285861938204290638

`eq[A087734(n), A135481(n)]`
-/

namespace A087118.P15285861938204290638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087118.P15285861938204290638

noncomputable section

/-- A087118: Numbers having exactly one maximal group of consecutive zeros in binary representation of n.

Offset 1, canonical program `A087118.P15285861938204290638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A087118 (n : ℕ) : ℤ :=
  (A087118.P15285861938204290638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A087118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087748.P14719700054015883806

`A098158(n)%2`
-/

namespace A087748.P14719700054015883806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098158 n) 2

end

end A087748.P14719700054015883806

noncomputable section

/-- A087748: Triangle formed by reading triangle of Stirling numbers of the first kind (A048994) mod 2.

Offset 0, canonical program `A087748.P14719700054015883806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087748 (n : ℕ) : ℤ :=
  A087748.P14719700054015883806.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087755.P10889702025143067399

`A098157(n)%2`
-/

namespace A087755.P10889702025143067399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098157 n) 2

end

end A087755.P10889702025143067399

noncomputable section

/-- A087755: Triangle read by rows: Stirling numbers of the first kind (A008275) mod 2.

Offset 1, canonical program `A087755.P10889702025143067399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087755 (n : ℕ) : ℤ :=
  A087755.P10889702025143067399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087781.P18092569315473088163

`∑{d}[n+1, A035187(#)*A271102((n+1)/#)]`
-/

namespace A087781.P18092569315473088163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035187 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A087781.P18092569315473088163

noncomputable section

/-- A087781: Number of non-congruent solutions to x^2 - x - 1 == 0 mod n.

Offset 1, canonical program `A087781.P18092569315473088163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087781 (n : ℕ) : ℤ :=
  A087781.P18092569315473088163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088018.P1872163237001237444

`A071538(2*A028310(n))-A071538(A028310(n))`
-/

namespace A088018.P1872163237001237444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (2 * A028310 n).toNat - A071538 (A028310 n).toNat

end

end A088018.P1872163237001237444

noncomputable section

/-- A088018: Number of twin-prime pairs between n and 2n (inclusive).

Offset 1, canonical program `A088018.P1872163237001237444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088018 (n : ℕ) : ℤ :=
  A088018.P1872163237001237444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088631.P1406965661256894006

`2-A049653(n+2)+n`
-/

namespace A088631.P1406965661256894006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A049653 (n + 2) + (n : ℤ)

end

end A088631.P1406965661256894006

noncomputable section

/-- A088631: Largest number m < n such that m+n is a prime.

Offset 2, canonical program `A088631.P1406965661256894006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088631 (n : ℕ) : ℤ :=
  A088631.P1406965661256894006.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088682.P16408597995929489488

`A031377(n+2)-A031369(n+1)`
-/

namespace A088682.P16408597995929489488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (n + 2) - A031369 (n + 1)

end

end A088682.P16408597995929489488

noncomputable section

/-- A088682: a(n) = prime(3*n+1) - prime(3*n-1).

Offset 1, canonical program `A088682.P16408597995929489488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A088682 (n : ℕ) : ℤ :=
  A088682.P16408597995929489488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A088682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088723.P15091544922327729321

`2*lt[0, A325334(n)]`
-/

namespace A088723.P15091544922327729321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088723.P15091544922327729321

noncomputable section

/-- A088723: Numbers k with at least one divisor d>1 such that d+1 also divides k.

Offset 1, canonical program `A088723.P15091544922327729321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088723 (n : ℕ) : ℤ :=
  (A088723.P15091544922327729321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088764.P11806142455434414841

`(A087680(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088764.P11806142455434414841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087680 (n + 1) - 1 : ℚ) / 2

end

end A088764.P11806142455434414841

noncomputable section

/-- A088764: a(n) = (A087680(n)-1)/2.

Offset 1, canonical program `A088764.P11806142455434414841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088764 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088764.P11806142455434414841.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088764.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089038.P1158643592573954498

`A161720(n+3)+1`
-/

namespace A089038.P1158643592573954498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3) + 1

end

end A089038.P1158643592573954498

noncomputable section

/-- A089038: Nonnegative numbers k such that 2k+5 is prime.

Offset 1, canonical program `A089038.P1158643592573954498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089038 (n : ℕ) : ℤ :=
  A089038.P1158643592573954498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089038.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A089311.P16370938375623616626

`A089310(A261693(n))`
-/

namespace A089311.P16370938375623616626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089310 (A261693 n).toNat

end

end A089311.P16370938375623616626

noncomputable section

/-- A089311: Write n in binary; a(n) = number of 0's in rightmost block of zeros, after dropping any trailing 0's.

Offset 0, canonical program `A089311.P16370938375623616626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A089311 (n : ℕ) : ℤ :=
  A089311.P16370938375623616626.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A089311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090076.P14041092475761084439

`A205955(n+1)+A006094(n+1)`
-/

namespace A090076.P14041092475761084439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205955 (n + 1) + A006094 (n + 1)

end

end A090076.P14041092475761084439

noncomputable section

/-- A090076: a(n) = prime(n)*prime(n+2).

Offset 1, canonical program `A090076.P14041092475761084439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090076 (n : ℕ) : ℤ :=
  A090076.P14041092475761084439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090192.P1518387728064855857

`A000038(n)-A105523(n)`
-/

namespace A090192.P1518387728064855857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A105523 n

end

end A090192.P1518387728064855857

noncomputable section

/-- A090192: Carlitz-Riordan q-Catalan numbers (recurrence version) for q = -1.

Offset 0, canonical program `A090192.P1518387728064855857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A090192 (n : ℕ) : ℤ :=
  A090192.P1518387728064855857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A090192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090412.P5090535877680576514

`(3*a(n-1)-A105523(n))/2` with `a(0)=1`
-/

namespace A090412.P5090535877680576514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 * a (n - 1) - (A105523 n : ℚ)) / 2

end

end A090412.P5090535877680576514

noncomputable section

/-- A090412: A Chebyshev transform of 2^n.

Offset 0, canonical program `A090412.P5090535877680576514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A090412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090412.P5090535877680576514.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A090412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090433.P5899068372481364331

`A000040(A154311(n+1))`
-/

namespace A090433.P5899068372481364331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A154311 (n + 1)).toNat

end

end A090433.P5899068372481364331

noncomputable section

/-- A090433: Primes p(k) having a smaller sum of digits than k.

Offset 1, canonical program `A090433.P5899068372481364331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A090433 (n : ℕ) : ℤ :=
  A090433.P5899068372481364331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A090433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090736.P14073947983549201074

`∑[floor(atan(A000095(n+1)))]`
-/

namespace A090736.P14073947983549201074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A000095 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090736.P14073947983549201074

noncomputable section

/-- A090736: Number of positive integers <= n that can be expressed as a sum of 2 coprime squares > 0.

Offset 1, canonical program `A090736.P14073947983549201074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090736 (n : ℕ) : ℤ :=
  A090736.P14073947983549201074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090802.P9470819191447258427

`A008279(n)*A130321(n)`
-/

namespace A090802.P9470819191447258427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A130321 n

end

end A090802.P9470819191447258427

noncomputable section

/-- A090802: Triangle read by rows: a(n,k) = number of k-length walks in the Hasse diagram of a Boolean algebra of order n.

Offset 0, canonical program `A090802.P9470819191447258427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A090802 (n : ℕ) : ℤ :=
  A090802.P9470819191447258427.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A090802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091050.P13434770891422209589

`∑{d}[n+1, A075802(#)]`
-/

namespace A091050.P13434770891422209589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A075802 d

end

end A091050.P13434770891422209589

noncomputable section

/-- A091050: Number of divisors of n that are perfect powers.

Offset 1, canonical program `A091050.P13434770891422209589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091050 (n : ℕ) : ℤ :=
  A091050.P13434770891422209589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091051.P295852673504000466

`∑{d}[n+1, #*A075802(#)]`
-/

namespace A091051.P295852673504000466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A075802 d

end

end A091051.P295852673504000466

noncomputable section

/-- A091051: Sum of divisors of n that are perfect powers.

Offset 1, canonical program `A091051.P295852673504000466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091051 (n : ℕ) : ℤ :=
  A091051.P295852673504000466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091113.P2066234327924851190

`4*A045751(n+1)+1`
-/

namespace A091113.P2066234327924851190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A045751 (n + 1) + 1

end

end A091113.P2066234327924851190

noncomputable section

/-- A091113: Nonprimes of the form 4*k+1.

Offset 1, canonical program `A091113.P2066234327924851190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091113 (n : ℕ) : ℤ :=
  A091113.P2066234327924851190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091154.P3915821087696335756

`A002596(n)/(2*n+1)*A056617(n)`
-/

namespace A091154.P3915821087696335756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002596 n : ℚ) / (2 * n + 1 : ℚ) * (A056617 n : ℚ)

end

end A091154.P3915821087696335756

noncomputable section

/-- A091154: Numerator of Maclaurin expansion of (t*sqrt(t^2+1) + arcsinh(t))/2, the arc length of Archimedes' spiral.

Offset 1, canonical program `A091154.P3915821087696335756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A091154 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091154.P3915821087696335756.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A091154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091236.P7558247970017758999

`4*A045752(n+1)-1`
-/

namespace A091236.P7558247970017758999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A045752 (n + 1) - 1

end

end A091236.P7558247970017758999

noncomputable section

/-- A091236: Nonprimes of form 4k+3.

Offset 1, canonical program `A091236.P7558247970017758999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091236 (n : ℕ) : ℤ :=
  A091236.P7558247970017758999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092176.P14535964819899791975

`A111333(n+1)-A122958(n)`
-/

namespace A092176.P14535964819899791975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) - A122958 n

end

end A092176.P14535964819899791975

noncomputable section

/-- A092176: a(n) = A067076(n) + A000079(n)/2 with A067076(0)=0.

Offset 0, canonical program `A092176.P14535964819899791975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A092176 (n : ℕ) : ℤ :=
  A092176.P14535964819899791975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A092176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092390.P6063614975695933482

`A031215(n+1)+A000040(n+1)`
-/

namespace A092390.P6063614975695933482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + A000040 (n + 1)

end

end A092390.P6063614975695933482

noncomputable section

/-- A092390: a(n) = prime(n) + prime(2n).

Offset 1, canonical program `A092390.P6063614975695933482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092390 (n : ℕ) : ℤ :=
  A092390.P6063614975695933482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092475.P17166151400944152127

`∩[A049492(n+1), A156104(n+1)]`
-/

namespace A092475.P17166151400944152127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092475.P17166151400944152127

noncomputable section

/-- A092475: Primes p such that p + 2^2, p + 4^2 and p + 6^2 are also primes.

Offset 1, canonical program `A092475.P17166151400944152127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A092475 (n : ℕ) : ℤ :=
  (A092475.P17166151400944152127.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A092475.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A093688.P16553081961736122512

`eq[1, A227872(n+1)]+1`
-/

namespace A093688.P16553081961736122512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227872 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093688.P16553081961736122512

noncomputable section

/-- A093688: Numbers m such that all divisors of m, excluding the divisor 1, have an even number of 1's in their binary expansions.

Offset 1, canonical program `A093688.P16553081961736122512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. -/
def A093688 (n : ℕ) : ℤ :=
  (A093688.P16553081961736122512.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. -/
def A093688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093819.P10904425845107863521

`A055034(A225975(n+1))`
-/

namespace A093819.P10904425845107863521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A225975 (n + 1)).toNat

end

end A093819.P10904425845107863521

noncomputable section

/-- A093819: Algebraic degree of sin(2*Pi/n).

Offset 1, canonical program `A093819.P10904425845107863521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A093819 (n : ℕ) : ℤ :=
  A093819.P10904425845107863521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A093819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093957.P8179048002718482046

`A091799(n+1)-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093957.P8179048002718482046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091799 (n + 1) - 3

end

end A093957.P8179048002718482046

noncomputable section

/-- A093957: A091799(n) - 3.

Offset 1, canonical program `A093957.P8179048002718482046`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093957 (n : ℕ) : ℤ :=
  A093957.P8179048002718482046.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093957.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094205.P2936233271097691643

`p?[A031215(n+1)-2]`
-/

namespace A094205.P2936233271097691643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094205.P2936233271097691643

noncomputable section

/-- A094205: Lower bounds of twin prime pairs of the form prime(2n+1).

Offset 0, canonical program `A094205.P2936233271097691643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A094205 (n : ℕ) : ℤ :=
  A094205.P2936233271097691643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A094205.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A094338.P8537157207539536951

`Δ[A051352(A179865(n+1))]`
-/

namespace A094338.P8537157207539536951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051352 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094338.P8537157207539536951

noncomputable section

/-- A094338: (Sum of composites among next n numbers)-(sum of primes among next n numbers).

Offset 1, canonical program `A094338.P8537157207539536951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A094338 (n : ℕ) : ℤ :=
  A094338.P8537157207539536951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A094338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094517.P18314110436842178638

`p?[n*(1-A075743(2*n+3))]`
-/

namespace A094517.P18314110436842178638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A075743 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094517.P18314110436842178638

noncomputable section

/-- A094517: Primes p such that 6p+11 is not a prime.

Offset 1, canonical program `A094517.P18314110436842178638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A094517 (n : ℕ) : ℤ :=
  A094517.P18314110436842178638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A094517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095076.P3589875723574390605

`A010060(A003714(n))`
-/

namespace A095076.P3589875723574390605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A003714 n).toNat

end

end A095076.P3589875723574390605

noncomputable section

/-- A095076: Parity of 1-fibits in Zeckendorf expansion A014417(n).

Offset 0, canonical program `A095076.P3589875723574390605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095076 (n : ℕ) : ℤ :=
  A095076.P3589875723574390605.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095649.P15105114885412916824

`A004139(eq[8, A036263(n+1)])`
-/

namespace A095649.P15105114885412916824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095649.P15105114885412916824

noncomputable section

/-- A095649: Primes p = p_(n+1) such that p_n + p_(n+2) = 2*p_(n+1) + 8.

Offset 1, canonical program `A095649.P15105114885412916824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. -/
def A095649 (n : ℕ) : ℤ :=
  A095649.P15105114885412916824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. -/
def A095649.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A095886.P1499583680723249392

`A003992(n)*A095893(n+1)`
-/

namespace A095886.P1499583680723249392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n * A095893 (n + 1)

end

end A095886.P1499583680723249392

noncomputable section

/-- A095886: Triangle read by rows: T(n,k) = (n-k)^n, n>=1, 1<=k<=n.

Offset 1, canonical program `A095886.P1499583680723249392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A095886 (n : ℕ) : ℤ :=
  A095886.P1499583680723249392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A095886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095943.P14568149226162292481

`Δ[A098369(∑[n])]`
-/

namespace A095943.P14568149226162292481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098369 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095943.P14568149226162292481

noncomputable section

/-- A095943: Differences between adjacent digits of golden ratio phi.

Offset 1, canonical program `A095943.P14568149226162292481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A095943 (n : ℕ) : ℤ :=
  A095943.P14568149226162292481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A095943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096133.P16310231902311397784

`A003992(n)%A128227(n)*A123578(n)`
-/

namespace A096133.P16310231902311397784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003992 n) (A128227 n) * A123578 n

end

end A096133.P16310231902311397784

noncomputable section

/-- A096133: Triangle T(j,k) = (j^k) mod (j*k) for 1 <= k <= j, read by rows.

Offset 1, canonical program `A096133.P16310231902311397784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. -/
def A096133 (n : ℕ) : ℤ :=
  A096133.P16310231902311397784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. -/
def A096133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097702.P334235475160007035

`(A063880(n+1)-108)/216`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A097702.P334235475160007035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063880 (n + 1) - 108 : ℚ) / 216

end

end A097702.P334235475160007035

noncomputable section

/-- A097702: a(n) = (A063880(n) - 108)/216.

Offset 1, canonical program `A097702.P334235475160007035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097702 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A097702.P334235475160007035.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097702.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097997.P8265961898692889889

`p?[A034961(n+1)+A031167(n+1)]`
-/

namespace A097997.P8265961898692889889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + A031167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097997.P8265961898692889889

noncomputable section

/-- A097997: Primes of the form prime(n) + prime(n+1) + prime(n+4).

Offset 1, canonical program `A097997.P8265961898692889889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A097997 (n : ℕ) : ℤ :=
  A097997.P8265961898692889889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A097997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098351.P1437056384917666996

`A002808(A131818(n+1))*A002808(A193592(n))`
-/

namespace A098351.P1437056384917666996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A131818 (n + 1)).toNat * A002808 (A193592 n).toNat

end

end A098351.P1437056384917666996

noncomputable section

/-- A098351: Multiplication table of the composites read by antidiagonals.

Offset 1, canonical program `A098351.P1437056384917666996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098351 (n : ℕ) : ℤ :=
  A098351.P1437056384917666996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098363.P6417077990157004005

`A095711(n+1)*A138115(n+1)`
-/

namespace A098363.P6417077990157004005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095711 (n + 1) * A138115 (n + 1)

end

end A098363.P6417077990157004005

noncomputable section

/-- A098363: Multiplication table of the digits of e read by antidiagonals.

Offset 0, canonical program `A098363.P6417077990157004005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098363 (n : ℕ) : ℤ :=
  A098363.P6417077990157004005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098393.P849539689524523398

`A100484(n+1)-A098392(n+1)`
-/

namespace A098393.P849539689524523398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A098392 (n + 1)

end

end A098393.P849539689524523398

noncomputable section

/-- A098393: Prime(n)+Log2(Log2(prime(n))), where Log2=A000523.

Offset 1, canonical program `A098393.P849539689524523398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098393 (n : ℕ) : ℤ :=
  A098393.P849539689524523398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099056.P6861540062732746160

`A099774(n+1)+A099055(n)`
-/

namespace A099056.P6861540062732746160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1) + A099055 n

end

end A099056.P6861540062732746160

noncomputable section

/-- A099056: A bisection of A054519.

Offset 0, canonical program `A099056.P6861540062732746160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099056 (n : ℕ) : ℤ :=
  A099056.P6861540062732746160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099245.P15585639647905873699

`A099246(n)*A000120(n)/A070939(n)`
-/

namespace A099245.P15585639647905873699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099246 n * A000120 n : ℚ) / (A070939 n : ℚ)

end

end A099245.P15585639647905873699

noncomputable section

/-- A099245: Numerator of relative frequency of number of ones in the binary representation of n.

Offset 0, canonical program `A099245.P15585639647905873699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099246, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099245 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099245.P15585639647905873699.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099246, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099245.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099557.P7796845270064822578

`C(A110654(A294317(n)), A002262(n))`
-/

namespace A099557.P7796845270064822578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A110654 (A294317 n).toNat).toNat (A002262 n).toNat

end

end A099557.P7796845270064822578

noncomputable section

/-- A099557: Slanted Pascal's triangle, read by rows, such that T(n,k) = binomial(n-[k/2],k) for [n*2/3]>=k>=0, where [x]=floor(x).

Offset 0, canonical program `A099557.P7796845270064822578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099557 (n : ℕ) : ℤ :=
  (A099557.P7796845270064822578.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099585.P13745326318775610757

`A006093(n+1)/A068503(n+1)`
-/

namespace A099585.P13745326318775610757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A068503 (n + 1) : ℚ)

end

end A099585.P13745326318775610757

noncomputable section

/-- A099585: Remove all 3s from prime(n) - 1.

Offset 1, canonical program `A099585.P13745326318775610757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099585 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099585.P13745326318775610757.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100280.P9371418973308847882

`A006068(xor(n, a(floor(n/4))))` with `a(0)=0`
-/

namespace A100280.P9371418973308847882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A006068 (Int.xor (n : ℤ) (a ⌊(n : ℚ) / 4⌋.toNat)).toNat

end

end A100280.P9371418973308847882

noncomputable section

/-- A100280: Inverse permutation to A099896.

Offset 0, canonical program `A100280.P9371418973308847882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A100280 (n : ℕ) : ℤ :=
  A100280.P9371418973308847882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A100280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100318.P17095725171134732642

`A071538(a(n-1))+n+3` with `a(0)=3`
-/

namespace A100318.P17095725171134732642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A071538 (a (n - 1)).toNat + (n + 3 : ℤ)

end

end A100318.P17095725171134732642

noncomputable section

/-- A100318: Numbers n such that at least one of n-1 and n+1 is composite.

Offset 1, canonical program `A100318.P17095725171134732642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100318 (n : ℕ) : ℤ :=
  A100318.P17095725171134732642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100627.P1235859993925810470

`A000244(A072055(n+1))`
-/

namespace A100627.P1235859993925810470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A072055 (n + 1)).toNat

end

end A100627.P1235859993925810470

noncomputable section

/-- A100627: a(n) = 3^(2*prime(n) + 1).

Offset 1, canonical program `A100627.P1235859993925810470`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100627 (n : ℕ) : ℤ :=
  A100627.P1235859993925810470.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100627.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100637.P13819822131188342482

`A075743(n)+a(n-1)` with `a(0)=2`
-/

namespace A100637.P13819822131188342482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A075743 n + a (n - 1)

end

end A100637.P13819822131188342482

noncomputable section

/-- A100637: Trisection of A000720.

Offset 0, canonical program `A100637.P13819822131188342482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100637 (n : ℕ) : ℤ :=
  A100637.P13819822131188342482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100744.P5655901826974364497

`A157142(n)%4*A100735(n)`
-/

namespace A100744.P5655901826974364497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157142 n) 4 * A100735 n

end

end A100744.P5655901826974364497

noncomputable section

/-- A100744: Inverse modulo 2 binomial transform of (-2)^n.

Offset 0, canonical program `A100744.P5655901826974364497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A100744 (n : ℕ) : ℤ :=
  A100744.P5655901826974364497.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A100744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100876.P16570100526589804960

`A081611(A227471(n+1))`
-/

namespace A100876.P16570100526589804960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (A227471 (n + 1)).toNat

end

end A100876.P16570100526589804960

noncomputable section

/-- A100876: Least number of squares that sum to prime(n).

Offset 1, canonical program `A100876.P16570100526589804960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A100876 (n : ℕ) : ℤ :=
  A100876.P16570100526589804960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A100876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100923.P17128876040247013713

`Δ[A071538(3*(2*n+1))]`
-/

namespace A100923.P17128876040247013713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (3 * (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100923.P17128876040247013713

noncomputable section

/-- A100923: a(n) = 1 iff 6*n+1 and 6*n-1 are both prime numbers (0 otherwise).

Offset 1, canonical program `A100923.P17128876040247013713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100923 (n : ℕ) : ℤ :=
  A100923.P17128876040247013713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101656.P2452111853965697328

`a(n-1)*a(A071412(n+1)%2)` with `a(0)=1, a(1)=2`
-/

namespace A101656.P2452111853965697328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * a (Int.tmod (A071412 (n + 1)) 2).toNat

end

end A101656.P2452111853965697328

noncomputable section

/-- A101656: a(n)=Product{k=0..n, 1+0^A101650(k)}/2.

Offset 0, canonical program `A101656.P2452111853965697328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 896 terms. -/
def A101656 (n : ℕ) : ℤ :=
  (A101656.P2452111853965697328.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 896 terms. -/
def A101656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101657.P2248602799950987862

`∏[A000040(a(A101650(n)))]` with `a(0)=1`
-/

namespace A101657.P2248602799950987862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000040 (f1 (A101650 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101657.P2248602799950987862

noncomputable section

/-- A101657: a(n)=Product{k=0..n, 1+2^A101650(k)}/2.

Offset 0, canonical program `A101657.P2248602799950987862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A101657 (n : ℕ) : ℤ :=
  A101657.P2248602799950987862.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A101657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101658.P12420169299485616279

`∏[A000123(a(A101650(n)))]` with `a(0)=1`
-/

namespace A101658.P12420169299485616279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000123 (f1 (A101650 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101658.P12420169299485616279

noncomputable section

/-- A101658: a(n)=Product{k=0..n, 1+3^A101650(k)}/2.

Offset 0, canonical program `A101658.P12420169299485616279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A101658 (n : ℕ) : ℤ :=
  A101658.P12420169299485616279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A101658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101662.P7215598947080091620

`A134451(2*n)-A101674(n)`
-/

namespace A101662.P7215598947080091620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (2 * n) - A101674 n

end

end A101662.P7215598947080091620

noncomputable section

/-- A101662: Fixed point of morphism 0 -> 01, 1 -> 02, 2 -> 21.

Offset 0, canonical program `A101662.P7215598947080091620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101662 (n : ℕ) : ℤ :=
  A101662.P7215598947080091620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101863.P14631270369391181911

`abs(A075312(n+1)-A293688(n))`
-/

namespace A101863.P14631270369391181911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075312 (n + 1) - A293688 n|

end

end A101863.P14631270369391181911

noncomputable section

/-- A101863: Main diagonal of A101858.

Offset 1, canonical program `A101863.P14631270369391181911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101863 (n : ℕ) : ℤ :=
  A101863.P14631270369391181911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102299.P678831004927681121

`∑{e}[A068780(n+1), #]`
-/

namespace A102299.P678831004927681121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102299.P678831004927681121

noncomputable section

/-- A102299: Number of prime divisors with multiplicity of n where n and n+1 are composite or twin composite numbers.

Offset 1, canonical program `A102299.P678831004927681121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A102299 (n : ℕ) : ℤ :=
  (A102299.P678831004927681121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A102299.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A102699.P1856221950307135282

`A210736(n)+A206603(n)`
-/

namespace A102699.P1856221950307135282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n + A206603 n

end

end A102699.P1856221950307135282

noncomputable section

/-- A102699: Number of strings of length n, using as symbols numbers from the set {1, 2, ..., n}, in which consecutive symbols differ by exactly 1.

Offset 0, canonical program `A102699.P1856221950307135282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A102699 (n : ℕ) : ℤ :=
  A102699.P1856221950307135282.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A102699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102770.P14397254692394995982

`A023515(n+3)/2`
-/

namespace A102770.P14397254692394995982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023515 (n + 3) : ℚ) / 2

end

end A102770.P14397254692394995982

noncomputable section

/-- A102770: (p*q - 1)/2 where p and q are consecutive odd primes.

Offset 1, canonical program `A102770.P14397254692394995982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102770 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102770.P14397254692394995982.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102770.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A103970.P11872415913840163127

`2^n*A007971(n+1)`
-/

namespace A103970.P11872415913840163127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007971 (n + 1)

end

end A103970.P11872415913840163127

noncomputable section

/-- A103970: Expansion of (1 - sqrt(1 - 4*x - 12*x^2))/(2*x).

Offset 0, canonical program `A103970.P11872415913840163127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A103970 (n : ℕ) : ℤ :=
  A103970.P11872415913840163127.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A103970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104082.P7641445042095551914

`A104080(2*n)`
-/

namespace A104082.P7641445042095551914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104080 (2 * n)

end

end A104082.P7641445042095551914

noncomputable section

/-- A104082: Smallest prime >= 4^n.

Offset 0, canonical program `A104082.P7641445042095551914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104082 (n : ℕ) : ℤ :=
  A104082.P7641445042095551914.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104172.P15057019180774606762

`A061397(A005185(n+1))`
-/

namespace A104172.P15057019180774606762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A005185 (n + 1)).toNat

end

end A104172.P15057019180774606762

noncomputable section

/-- A104172: Replace nonprimes in A005185 with zeros.

Offset 0, canonical program `A104172.P15057019180774606762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104172 (n : ℕ) : ℤ :=
  A104172.P15057019180774606762.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104248.P281796729031124114

`Δ[A285976(n+1)]-1`
-/

namespace A104248.P281796729031124114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A104248.P281796729031124114

noncomputable section

/-- A104248: Lengths of successive runs of 1's in the Thue-Morse sequence A010060.

Offset 1, canonical program `A104248.P281796729031124114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A104248 (n : ℕ) : ℤ :=
  A104248.P281796729031124114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A104248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104280.P970002712020775772

`(A049591(n+1)+1)/2`
-/

namespace A104280.P970002712020775772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049591 (n + 1) + 1 : ℚ) / 2

end

end A104280.P970002712020775772

noncomputable section

/-- A104280: Numbers n such that 2n+1 is not prime and 2n-1 is prime.

Offset 1, canonical program `A104280.P970002712020775772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104280 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A104280.P970002712020775772.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104492.P15547546368258611959

`A055400(A000040(n+1))`
-/

namespace A104492.P15547546368258611959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A000040 (n + 1)).toNat

end

end A104492.P15547546368258611959

noncomputable section

/-- A104492: Cube excess of the n-th prime.

Offset 1, canonical program `A104492.P15547546368258611959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A055400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104492 (n : ℕ) : ℤ :=
  A104492.P15547546368258611959.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A055400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104492.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104684.P11433889178168133031

`A054142(n)*A106187(n)`
-/

namespace A104684.P11433889178168133031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 n * A106187 n

end

end A104684.P11433889178168133031

noncomputable section

/-- A104684: Triangle read by rows: T(n,k) is the number of lattice paths from (0,0) to (n,n) using steps E=(1,0), N=(0,1) and D=(1,1) (i.e., bilateral Schroeder paths), having k D=(1,1) steps.

Offset 0, canonical program `A104684.P11433889178168133031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9080 terms. -/
def A104684 (n : ℕ) : ℤ :=
  A104684.P11433889178168133031.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9080 terms. -/
def A104684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104715.P11158735043013185719

`abs(A122432(n)*A158405(n+1))`
-/

namespace A104715.P11158735043013185719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122432 n * A158405 (n + 1)|

end

end A104715.P11158735043013185719

noncomputable section

/-- A104715: Triangle T(n,k) = (2*k-1)*A000217(n-k+1) read by rows, 1<=k<=n.

Offset 1, canonical program `A104715.P11158735043013185719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104715 (n : ℕ) : ℤ :=
  A104715.P11158735043013185719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104895.P16075429497420938870

`-A065620(n)`
-/

namespace A104895.P16075429497420938870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A065620 n

end

end A104895.P16075429497420938870

noncomputable section

/-- A104895: a(0)=0; thereafter a(2n) = -2*a(n), a(2n+1) = 2*a(n) - 1.

Offset 0, canonical program `A104895.P16075429497420938870`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104895 (n : ℕ) : ℤ :=
  A104895.P16075429497420938870.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104895.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106069.P16981114974258630937

`∩[A023210(n+1), A023229(n+1)]`
-/

namespace A106069.P16981114974258630937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106069.P16981114974258630937

noncomputable section

/-- A106069: Primes p such that 3*p + 8 and 8*p + 3 are primes.

Offset 1, canonical program `A106069.P16981114974258630937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2637 terms. -/
def A106069 (n : ℕ) : ℤ :=
  (A106069.P16981114974258630937.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2637 terms. -/
def A106069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106079.P250417658828765197

`∩[A023219(n+1), A023221(n+1)]`
-/

namespace A106079.P250417658828765197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106079.P250417658828765197

noncomputable section

/-- A106079: Primes p such that 5*p + 6 and 6*p + 5 are primes.

Offset 1, canonical program `A106079.P250417658828765197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2671 terms. -/
def A106079 (n : ℕ) : ℤ :=
  (A106079.P250417658828765197.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2671 terms. -/
def A106079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106086.P12121000121007339975

`∩[A023206(n+1), A023223(n+1)]`
-/

namespace A106086.P12121000121007339975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106086.P12121000121007339975

noncomputable section

/-- A106086: Primes p such that 7*p + 2 and 2*p + 7 are primes.

Offset 1, canonical program `A106086.P12121000121007339975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2061 terms. -/
def A106086 (n : ℕ) : ℤ :=
  (A106086.P12121000121007339975.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2061 terms. -/
def A106086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106087.P13902758896492303522

`∩[A023215(n+1), A023224(n+1)]`
-/

namespace A106087.P13902758896492303522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106087.P13902758896492303522

noncomputable section

/-- A106087: Primes p such that 7*p+4 and 4*p+7 are primes.

Offset 1, canonical program `A106087.P13902758896492303522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A106087 (n : ℕ) : ℤ :=
  (A106087.P13902758896492303522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A106087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106757.P13942445452489068332

`∩[A062342(n+1), A107288(n+1)]`
-/

namespace A106757.P13942445452489068332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P13942445452489068332

noncomputable section

/-- A106757: Primes with digit sum = 16.

Offset 1, canonical program `A106757.P13942445452489068332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2564 terms. -/
def A106757 (n : ℕ) : ℤ :=
  (A106757.P13942445452489068332.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2564 terms. -/
def A106757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106758.P14051982100984720332

`p?[A235227(n+1)+1]`
-/

namespace A106758.P14051982100984720332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235227 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106758.P14051982100984720332

noncomputable section

/-- A106758: Primes with digit sum = 17.

Offset 1, canonical program `A106758.P14051982100984720332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1457 terms. -/
def A106758 (n : ℕ) : ℤ :=
  A106758.P14051982100984720332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1457 terms. -/
def A106758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106836.P17238804329404313382

`A091067(n+1)+1-A060833(n+1)`
-/

namespace A106836.P17238804329404313382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1) + (1 - A060833 (n + 1))

end

end A106836.P17238804329404313382

noncomputable section

/-- A106836: First differences of A060833 and (from a(2) onward) also of A091067 and A255068.

Offset 1, canonical program `A106836.P17238804329404313382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106836 (n : ℕ) : ℤ :=
  A106836.P17238804329404313382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106838.P13945628720281591576

`8*A091067(n+1)-2`
-/

namespace A106838.P13945628720281591576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A091067 (n + 1) - 2

end

end A106838.P13945628720281591576

noncomputable section

/-- A106838: Numbers m such that m, m+1 and m+2 have odd part of the form 4*k+3.

Offset 1, canonical program `A106838.P13945628720281591576`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106838 (n : ℕ) : ℤ :=
  A106838.P13945628720281591576.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106838.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A107323.P12004804082640452415

`abs(Δ[A051356(n)]+2)`
-/

namespace A107323.P12004804082640452415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 2|

end

end A107323.P12004804082640452415

noncomputable section

/-- A107323: If n-th prime is 6m-1, then a(n) = 6m+1. If n-th prime is 6m+1, then a(n) = 6m-1.

Offset 3, canonical program `A107323.P12004804082640452415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A107323 (n : ℕ) : ℤ :=
  A107323.P12004804082640452415.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A107323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107681.P10623158521977132351

`A083904(A054429(n+2))`
-/

namespace A107681.P10623158521977132351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083904 (A054429 (n + 2)).toNat

end

end A107681.P10623158521977132351

noncomputable section

/-- A107681: Repeat(first 2^k numbers with no 2 in ternary representation) for k>0.

Offset 1, canonical program `A107681.P10623158521977132351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8190 terms. -/
def A107681 (n : ℕ) : ℤ :=
  A107681.P10623158521977132351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8190 terms. -/
def A107681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107743.P1532081049074715641

`comp[A047791(n+1)-1]+1`
-/

namespace A107743.P1532081049074715641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A107743.P1532081049074715641

noncomputable section

/-- A107743: Numbers m such that m+(digit sum of m) is a composite number.

Offset 1, canonical program `A107743.P1532081049074715641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107743 (n : ℕ) : ℤ :=
  (A107743.P1532081049074715641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107966.P11630518422278864542

`(n+2)*A108680(n)-A107968(n)+A107891(n)-A047819(n)`
-/

namespace A107966.P11630518422278864542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A108680 n - A107968 n + (A107891 n - A047819 n)

end

end A107966.P11630518422278864542

noncomputable section

/-- A107966: a(n) = (n+1)(n+2)^3*(n+3)^2*(n+4)(5n^2 + 23n + 30)/8640.

Offset 0, canonical program `A107966.P11630518422278864542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107966 (n : ℕ) : ℤ :=
  A107966.P11630518422278864542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107987.P5415694799470960516

`A049591(n+1)+2`
-/

namespace A107987.P5415694799470960516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1) + 2

end

end A107987.P5415694799470960516

noncomputable section

/-- A107987: Odd composite numbers of the form p+2 where p is prime.

Offset 1, canonical program `A107987.P5415694799470960516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107987 (n : ℕ) : ℤ :=
  A107987.P5415694799470960516.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109579.P11529250460295610906

`∑[A109578(n+1)]`
-/

namespace A109579.P11529250460295610906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109579.P11529250460295610906

noncomputable section

/-- A109579: Sum([pi(j+1)-pi(j)][prime(j+1)-prime(j)],j=1..n), where pi(k) is the number of prime numbers less than or equal to k and prime(k) is the k-th prime.

Offset 1, canonical program `A109579.P11529250460295610906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109579 (n : ℕ) : ℤ :=
  A109579.P11529250460295610906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109970.P16827285265725124377

`A097807(n)*A116088(n)`
-/

namespace A109970.P16827285265725124377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A116088 n

end

end A109970.P16827285265725124377

noncomputable section

/-- A109970: Riordan array (1,x(1-x)^2).

Offset 0, canonical program `A109970.P16827285265725124377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109970 (n : ℕ) : ℤ :=
  A109970.P16827285265725124377.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110184.P13079875143077863507

`A001109(n)+2*A110127(n)`
-/

namespace A110184.P13079875143077863507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n + 2 * A110127 n

end

end A110184.P13079875143077863507

noncomputable section

/-- A110184: Number of (1,1)-steps on the lines y=x, y=x+1 and y=x-1 in all Delannoy paths of length n.

Offset 0, canonical program `A110184.P13079875143077863507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A110184 (n : ℕ) : ℤ :=
  A110184.P13079875143077863507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A110184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110496.P5483106087847076975

`A117762(n+1)+A111333(n+1)`
-/

namespace A110496.P5483106087847076975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117762 (n + 1) + A111333 (n + 1)

end

end A110496.P5483106087847076975

noncomputable section

/-- A110496: Least k such that prime(n)^3 divides binomial(2k,k).

Offset 1, canonical program `A110496.P5483106087847076975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110496 (n : ℕ) : ℤ :=
  A110496.P5483106087847076975.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111458.P16703842777134860266

`lt[3, A007895(n)]`
-/

namespace A111458.P16703842777134860266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111458.P16703842777134860266

noncomputable section

/-- A111458: Numbers that cannot be represented as the sum of at most three Fibonacci numbers (with repetitions allowed).

Offset 1, canonical program `A111458.P16703842777134860266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A111458 (n : ℕ) : ℤ :=
  (A111458.P16703842777134860266.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A111458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111949.P10964253214955943244

`∑{d}[n+1, A035187(#)*A275966((n+1)/#)]`
-/

namespace A111949.P10964253214955943244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035187 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111949.P10964253214955943244

noncomputable section

/-- A111949: Expansion of eta(q) * eta(q^2) * eta(q^10) * eta(q^20) / (eta(q^4) * eta(q^5)) in powers of q.

Offset 1, canonical program `A111949.P10964253214955943244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111949 (n : ℕ) : ℤ :=
  A111949.P10964253214955943244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111957.P3102712656651243960

`gcd(A104765(n+1), A131410(n+1))`
-/

namespace A111957.P3102712656651243960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104765 (n + 1)) (A131410 (n + 1))

end

end A111957.P3102712656651243960

noncomputable section

/-- A111957: Triangle read by rows: T(n,k) = gcd(Fibonacci(n), Lucas(k)), 1 <= k <= n.

Offset 1, canonical program `A111957.P3102712656651243960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A111957 (n : ℕ) : ℤ :=
  (A111957.P3102712656651243960.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A111957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112606.P17885378761059741003

`A112604(2*n)`
-/

namespace A112606.P17885378761059741003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112604 (2 * n)

end

end A112606.P17885378761059741003

noncomputable section

/-- A112606: Number of representations of n as a sum of six times a square and a triangular number.

Offset 0, canonical program `A112606.P17885378761059741003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112604, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112606 (n : ℕ) : ℤ :=
  A112606.P17885378761059741003.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112604, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112606.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112607.P8830648316655267802

`A112604(2*n+3)/2`
-/

namespace A112607.P8830648316655267802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112604 (2 * n + 3) : ℚ) / 2

end

end A112607.P8830648316655267802

noncomputable section

/-- A112607: Number of representations of n as a sum of a triangular number and twelve times a triangular number.

Offset 0, canonical program `A112607.P8830648316655267802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A112607 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112607.P8830648316655267802.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A112607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113415.P5418094861117166692

`A349371(n+1)/A001511(n+1)`
-/

namespace A113415.P5418094861117166692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349371 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A113415.P5418094861117166692

noncomputable section

/-- A113415: Expansion of Sum_{k>0} x^k/(1-x^(2k))^2.

Offset 1, canonical program `A113415.P5418094861117166692`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349371, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113415 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113415.P5418094861117166692.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349371, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113415.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113421.P13774597701108961501

`∑{d}[n+1, A275966(#)*A326503((n+1)/#)]`
-/

namespace A113421.P13774597701108961501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A275966 d * A326503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113421.P13774597701108961501

noncomputable section

/-- A113421: Expansion of eta(q)^2 * eta(q^4) * eta(q^6)^2 * eta(q^12) / eta(q^3)^2 in powers of q.

Offset 1, canonical program `A113421.P13774597701108961501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113421 (n : ℕ) : ℤ :=
  A113421.P13774597701108961501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113486.P8546128254641026094

`A113166(n+1)-A000045(n)`
-/

namespace A113486.P8546128254641026094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113166 (n + 1) - A000045 n

end

end A113486.P8546128254641026094

noncomputable section

/-- A113486: a(n) = A113166(n) - Fibonacci(n-1), where Fibonacci(n) = A000045(n).

Offset 1, canonical program `A113486.P8546128254641026094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A113486 (n : ℕ) : ℤ :=
  A113486.P8546128254641026094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A113486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113581.P305408065948707674

`∏{digits}[n, A113580(#)]`
-/

namespace A113581.P305408065948707674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A113580 x).prod

end

end A113581.P305408065948707674

noncomputable section

/-- A113581: Define prime(0) = 1; then a(n) = product prime(d), where d ranges over all the decimal digits of n.

Offset 0, canonical program `A113581.P305408065948707674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A113581 (n : ℕ) : ℤ :=
  A113581.P305408065948707674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A113581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113704.P2167875100220696113

`A000007(A372727(n))`
-/

namespace A113704.P2167875100220696113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A372727 n).toNat

end

end A113704.P2167875100220696113

noncomputable section

/-- A113704: Triangle read by rows. The indicator function for divisibility.

Offset 0, canonical program `A113704.P2167875100220696113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113704 (n : ℕ) : ℤ :=
  A113704.P2167875100220696113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113704.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A114643.P3385208476335884825

`and(A050361(n+1), A063659(n+1))`
-/

namespace A114643.P3385208476335884825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050361 (n + 1)) (A063659 (n + 1))

end

end A114643.P3385208476335884825

noncomputable section

/-- A114643: Number of real primitive Dirichlet characters modulo n.

Offset 1, canonical program `A114643.P3385208476335884825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114643 (n : ℕ) : ℤ :=
  A114643.P3385208476335884825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115061.P11822645177236110390

`A162345(n+1)+A000007(n)`
-/

namespace A115061.P11822645177236110390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1) + A000007 n

end

end A115061.P11822645177236110390

noncomputable section

/-- A115061: a(n) is the number of occurrences of the n-th prime number in A051697.

Offset 1, canonical program `A115061.P11822645177236110390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115061 (n : ℕ) : ℤ :=
  A115061.P11822645177236110390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115768.P9629902858414545769

`∩[A180054(n+1), A115767(n)]`
-/

namespace A115768.P9629902858414545769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115768.P9629902858414545769

noncomputable section

/-- A115768: Integers i such that 2*i XOR 5*i = 3*i, but 4*i XOR i is not 5*i.

Offset 1, canonical program `A115768.P9629902858414545769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A115768 (n : ℕ) : ℤ :=
  (A115768.P9629902858414545769.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A115768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116614.P7124806835608261155

`eq[1, A031215(n+1)%12]+1`
-/

namespace A116614.P7124806835608261155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031215 (n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116614.P7124806835608261155

noncomputable section

/-- A116614: Values of n such that prime(2n) mod 12 = 1.

Offset 1, canonical program `A116614.P7124806835608261155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A116614 (n : ℕ) : ℤ :=
  (A116614.P7124806835608261155.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A116614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117512.P1690792313298949061

`C(A129631(n+1)+1, 2)`
-/

namespace A117512.P1690792313298949061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A129631 (n + 1) + 1).toNat 2

end

end A117512.P1690792313298949061

noncomputable section

/-- A117512: Triangular numbers for which the sum of the digits is a prime number.

Offset 1, canonical program `A117512.P1690792313298949061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A117512 (n : ℕ) : ℤ :=
  (A117512.P1690792313298949061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A117512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117674.P10937197086857291007

`p?[A187744(n+1)]`
-/

namespace A117674.P10937197086857291007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117674.P10937197086857291007

noncomputable section

/-- A117674: Prime numbers whose sum of digits is a triangular number.

Offset 1, canonical program `A117674.P10937197086857291007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A117674 (n : ℕ) : ℤ :=
  A117674.P10937197086857291007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A117674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117943.P17059869879955634528

`a(A025480(A131452(n)))` with `a(0)=0, a(1)=1`
-/

namespace A117943.P17059869879955634528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A025480 (A131452 n).toNat).toNat

end

end A117943.P17059869879955634528

noncomputable section

/-- A117943: a(1) = 0, a(2) = 1; a(3n) = a(n); if every third term (a(3), a(6), a(9), ...) is deleted, this gives back the original sequence.

Offset 1, canonical program `A117943.P17059869879955634528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. -/
def A117943 (n : ℕ) : ℤ :=
  (A117943.P17059869879955634528.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. -/
def A117943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117997.P3744563621680806174

`∑{d}[n+1, A046692(#)*A364222((n+1)/#)]`
-/

namespace A117997.P3744563621680806174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A364222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117997.P3744563621680806174

noncomputable section

/-- A117997: Sum_{d|n} a(d) = n for n = 3^m (m >= 0) and for other n the sum is zero; i.e., the Möbius transform of [1, 0, 3, 0, 0, 0, 0, 0, 9, 0,...].

Offset 1, canonical program `A117997.P3744563621680806174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117997 (n : ℕ) : ℤ :=
  A117997.P3744563621680806174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118360.P8984286927158600420

`A057889(a(n-1))+2` with `a(0)=1`
-/

namespace A118360.P8984286927158600420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057889 (a (n - 1)).toNat + 2

end

end A118360.P8984286927158600420

noncomputable section

/-- A118360: Start with 1; repeatedly reverse the digits when the number is written in binary and add 2 to get the next term.

Offset 1, canonical program `A118360.P8984286927158600420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2979 terms. -/
def A118360 (n : ℕ) : ℤ :=
  A118360.P8984286927158600420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2979 terms. -/
def A118360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118547.P3214761931888259296

`A000290(A385656(n+1))`
-/

namespace A118547.P3214761931888259296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A385656 (n + 1)).toNat

end

end A118547.P3214761931888259296

noncomputable section

/-- A118547: Squares which are divisible by the sum of their digits.

Offset 1, canonical program `A118547.P3214761931888259296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1769 terms. -/
def A118547 (n : ℕ) : ℤ :=
  A118547.P3214761931888259296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1769 terms. -/
def A118547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118728.P17722591334986593474

`A067535(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A118728.P17722591334986593474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A067535 (a (n - 1) + a (n - 2)).toNat

end

end A118728.P17722591334986593474

noncomputable section

/-- A118728: a(n) = smallest squarefree number not less than a(n-1)+a(n-2), a(1)=1, a(0)=0.

Offset 0, canonical program `A118728.P17722591334986593474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067535, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118728 (n : ℕ) : ℤ :=
  A118728.P17722591334986593474.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067535, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118728.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119304.P4956205213881672858

`C(A294317(A292564(n)), A025581(n))`
-/

namespace A119304.P4956205213881672858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 (A292564 n).toNat).toNat (A025581 n).toNat

end

end A119304.P4956205213881672858

noncomputable section

/-- A119304: Triangle read by rows: T(n,k) = binomial(4n-k,n-k), 0 <= k <= n.

Offset 0, canonical program `A119304.P4956205213881672858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4753 terms. -/
def A119304 (n : ℕ) : ℤ :=
  (A119304.P4956205213881672858.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4753 terms. -/
def A119304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119505.P7465890050861402913

`A097902(A000124(A097902(A000124(n+1))))`
-/

namespace A119505.P7465890050861402913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097902 (A000124 (A097902 (A000124 (n + 1)).toNat).toNat).toNat

end

end A119505.P7465890050861402913

noncomputable section

/-- A119505: The Pi-th digit of Pi where the digit value of 0 is interpreted as decimal 10.

Offset 1, canonical program `A119505.P7465890050861402913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A119505 (n : ℕ) : ℤ :=
  A119505.P7465890050861402913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A119505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119608.P13313804277254006300

`abs(A065620(A280995(n)))`
-/

namespace A119608.P13313804277254006300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065620 (A280995 n).toNat|

end

end A119608.P13313804277254006300

noncomputable section

/-- A119608: Let b(1)=0, b(2)= 1. b(2^m +k) = (b(2^m+1-k) + b(k))/2, 1 <= k <= 2^m, m >= 0. a(n) is numerator of b(n).

Offset 1, canonical program `A119608.P13313804277254006300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119608 (n : ℕ) : ℤ :=
  A119608.P13313804277254006300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119636.P13421198858277065567

`A068553(n+1)*A120114(n)`
-/

namespace A119636.P13421198858277065567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068553 (n + 1) * A120114 n

end

end A119636.P13421198858277065567

noncomputable section

/-- A119636: a(n) = lcm(1,...,2n+4)/((n+1)*binomial(2n+2, n+1)).

Offset 0, canonical program `A119636.P13421198858277065567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 374 terms. -/
def A119636 (n : ℕ) : ℤ :=
  A119636.P13421198858277065567.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 374 terms. -/
def A119636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119644.P8451814668260315748

`A065091(A062501(n+2)+n)`
-/

namespace A119644.P8451814668260315748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A062501 (n + 2) + (n : ℤ)).toNat

end

end A119644.P8451814668260315748

noncomputable section

/-- A119644: a(n) = n-th prime from among those primes which are coprime to the n-th composite.

Offset 1, canonical program `A119644.P8451814668260315748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A119644 (n : ℕ) : ℤ :=
  A119644.P8451814668260315748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A119644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120303.P14720405322692262226

`A060308(A065475(n+1))`
-/

namespace A120303.P14720405322692262226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A065475 (n + 1)).toNat

end

end A120303.P14720405322692262226

noncomputable section

/-- A120303: Largest prime factor of Catalan number A000108(n).

Offset 2, canonical program `A120303.P14720405322692262226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. -/
def A120303 (n : ℕ) : ℤ :=
  A120303.P14720405322692262226.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. -/
def A120303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120624.P15001731129403360422

`eq[A099894(n), A099905(A028310(n))]`
-/

namespace A120624.P15001731129403360422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099905 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120624.P15001731129403360422

noncomputable section

/-- A120624: Numbers n such that the n-th Catalan number C(2n,n)/(n+1) is divisible by 2n.

Offset 1, canonical program `A120624.P15001731129403360422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1019 terms. -/
def A120624 (n : ℕ) : ℤ :=
  (A120624.P15001731129403360422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1019 terms. -/
def A120624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121450.P5061707180200879465

`A033999(n)*A113446(n+1)`
-/

namespace A121450.P5061707180200879465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A113446 (n + 1)

end

end A121450.P5061707180200879465

noncomputable section

/-- A121450: Expansion of (theta_4(q^3)^2 - theta_4(q)^2)/4 in powers of q.

Offset 1, canonical program `A121450.P5061707180200879465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121450 (n : ℕ) : ℤ :=
  A121450.P5061707180200879465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121948.P3244360123003645214

`floor(Δ[A110209(n)]/(n+1))`
-/

namespace A121948.P3244360123003645214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)⌋

end

end A121948.P3244360123003645214

noncomputable section

/-- A121948: Floor of n-th 3-almost prime / n.

Offset 1, canonical program `A121948.P3244360123003645214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A121948 (n : ℕ) : ℤ :=
  A121948.P3244360123003645214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A121948.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A122257.P4437493794124437711

`A010051(n+1)*A122255(n+1)`
-/

namespace A122257.P4437493794124437711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A122255 (n + 1)

end

end A122257.P4437493794124437711

noncomputable section

/-- A122257: Characteristic function of Pierpont primes (A005109).

Offset 1, canonical program `A122257.P4437493794124437711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122257 (n : ℕ) : ℤ :=
  A122257.P4437493794124437711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122864.P189972794959072762

`A061347(n+1)*A113446(n+1)`
-/

namespace A122864.P189972794959072762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A113446 (n + 1)

end

end A122864.P189972794959072762

noncomputable section

/-- A122864: Expansion of eta(q^3)^2 * eta(q^4) * eta(q^6)^2 * eta(q^36) / (eta(q) * eta(q^9) * eta(q^12)^2) in powers of q.

Offset 1, canonical program `A122864.P189972794959072762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122864 (n : ℕ) : ℤ :=
  A122864.P189972794959072762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122986.P14413099790891145371

`eq[char[A316347(n)], A014709(n)]`
-/

namespace A122986.P14413099790891145371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316347 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A122986.P14413099790891145371

noncomputable section

/-- A122986: Squares mod 1000.

Offset 1, canonical program `A122986.P14413099790891145371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A122986 (n : ℕ) : ℤ :=
  (A122986.P14413099790891145371.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A122986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123073.P6150319643950598268

`A200221(Δ[A110209(n)])`
-/

namespace A123073.P6150319643950598268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200221 (f1 (n + 1) - f1 n).toNat

end

end A123073.P6150319643950598268

noncomputable section

/-- A123073: Number of ordered triples of primes (p,q,r) such that pqr = n-th 3-almost prime A014612(n).

Offset 1, canonical program `A123073.P6150319643950598268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A123073 (n : ℕ) : ℤ :=
  A123073.P6150319643950598268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A123073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123272.P13833021826799175583

`char[A029709(n+1)-(n+4)]`
-/

namespace A123272.P13833021826799175583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029709 (n + 1) - (n + 4 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A123272.P13833021826799175583

noncomputable section

/-- A123272: Number of primes between consecutive terms of A105575.

Offset 1, canonical program `A123272.P13833021826799175583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A123272 (n : ℕ) : ℤ :=
  (A123272.P13833021826799175583.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A123272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123313.P2865230886219014765

`A056911(A103775(2*(n+1))+A072747(n+1))`
-/

namespace A123313.P2865230886219014765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (A103775 (2 * (n + 1)) + A072747 (n + 1)).toNat

end

end A123313.P2865230886219014765

noncomputable section

/-- A123313: Maximum of greatest common divisors of pairs of distinct squarefree numbers not greater than the n-th squarefree number; a(1)=1.

Offset 1, canonical program `A123313.P2865230886219014765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A123313 (n : ℕ) : ℤ :=
  A123313.P2865230886219014765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A123313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123391.P18124121775959414335

`∑{e}[n+1, A061397(#)]`
-/

namespace A123391.P18124121775959414335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A061397 (Nat.factorization (f1 n) p)

end

end A123391.P18124121775959414335

noncomputable section

/-- A123391: a(n) = sum of exponents that are primes in the prime factorization of n.

Offset 1, canonical program `A123391.P18124121775959414335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123391 (n : ℕ) : ℤ :=
  A123391.P18124121775959414335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123926.P8154078832846072749

`A154282(A001749(n+1))+A065331(A179931(n+1))`
-/

namespace A123926.P8154078832846072749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154282 (A001749 (n + 1)).toNat + A065331 (A179931 (n + 1)).toNat

end

end A123926.P8154078832846072749

noncomputable section

/-- A123926: Greatest common divisor of sigma_k(n) for all k >= 1.

Offset 1, canonical program `A123926.P8154078832846072749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A123926 (n : ℕ) : ℤ :=
  A123926.P8154078832846072749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A123926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123982.P2523592801930380568

`eq[A167020(2*n+1)*A167020(2*(n+1)), A072815(2*n)]`
-/

namespace A123982.P2523592801930380568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (2 * n + 1) * A167020 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123982.P2523592801930380568

noncomputable section

/-- A123982: Numbers k such that 12*k+1, 12*k+5 and 12*k+11 are primes.

Offset 1, canonical program `A123982.P2523592801930380568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A123982 (n : ℕ) : ℤ :=
  (A123982.P2523592801930380568.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A123982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124744.P713802155741888960

`A097807(n)*A124788(n)`
-/

namespace A124744.P713802155741888960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A124788 n

end

end A124744.P713802155741888960

noncomputable section

/-- A124744: Expansion of (1+x*y)/(1-x^2*y^2+x^3*y^2).

Offset 0, canonical program `A124744.P713802155741888960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124744 (n : ℕ) : ℤ :=
  A124744.P713802155741888960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124853.P6201558340224196537

`record[A075743(A024896(n+1))*A087505(n+1)]`
-/

namespace A124853.P6201558340224196537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A024896 (n + 1)).toNat * A087505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124853.P6201558340224196537

noncomputable section

/-- A124853: Numbers k such that 5k + 3 and 3k + 5 are primes.

Offset 1, canonical program `A124853.P6201558340224196537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1050 terms. -/
def A124853 (n : ℕ) : ℤ :=
  A124853.P6201558340224196537.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1050 terms. -/
def A124853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126015.P8104159376082709234

`A000032(n+1)/A061447(n+1)`
-/

namespace A126015.P8104159376082709234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) : ℚ) / (A061447 (n + 1) : ℚ)

end

end A126015.P8104159376082709234

noncomputable section

/-- A126015: Lucas numbers divided by their primitive part.

Offset 1, canonical program `A126015.P8104159376082709234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A126015 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126015.P8104159376082709234.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A126015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126068.P1244538512425352377

`and(-2, A007971(n))`
-/

namespace A126068.P1244538512425352377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A007971 n)

end

end A126068.P1244538512425352377

noncomputable section

/-- A126068: Expansion of 1 - x - sqrt(1 - 2*x - 3*x^2) in powers of x.

Offset 0, canonical program `A126068.P1244538512425352377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A126068 (n : ℕ) : ℤ :=
  A126068.P1244538512425352377.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A126068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126792.P15384401414342231186

`a(A004523(A038502(n)))+1` with `a(0)=0`
-/

namespace A126792.P15384401414342231186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A004523 (A038502 n).toNat).toNat + 1

end

end A126792.P15384401414342231186

noncomputable section

/-- A126792: Removing the first, fourth, seventh, tenth ... term of the sequence yields the original sequence, augmented by 1.

Offset 0, canonical program `A126792.P15384401414342231186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A126792 (n : ℕ) : ℤ :=
  (A126792.P15384401414342231186.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A126792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126990.P10536405924363556977

`A000040(ceil(A036263(n+1)/(n+1)+n+1))`
-/

namespace A126990.P10536405924363556977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌈(A036263 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)⌉.toNat

end

end A126990.P10536405924363556977

noncomputable section

/-- A126990: Largest prime preceding geometric mean of prime(n) and prime(n+2).

Offset 1, canonical program `A126990.P10536405924363556977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A126990 (n : ℕ) : ℤ :=
  A126990.P10536405924363556977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A126990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127590.P12891489478159892403

`eq[1, A156707(8*n+2)]`
-/

namespace A127590.P12891489478159892403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (8 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127590.P12891489478159892403

noncomputable section

/-- A127590: Numbers n such that 16n+5 is prime.

Offset 1, canonical program `A127590.P12891489478159892403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1200 terms. -/
def A127590 (n : ℕ) : ℤ :=
  (A127590.P12891489478159892403.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1200 terms. -/
def A127590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127921.P7066535292826904335

`2*(A191590(n+2)+A074367(n+1))`
-/

namespace A127921.P7066535292826904335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A191590 (n + 2) + A074367 (n + 1))

end

end A127921.P7066535292826904335

noncomputable section

/-- A127921: 1/12 of product of three numbers: n-th prime, previous and following number.

Offset 2, canonical program `A127921.P7066535292826904335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127921 (n : ℕ) : ℤ :=
  A127921.P7066535292826904335.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127922.P15641784194260255245

`A191590(n+2)+A074367(n+1)`
-/

namespace A127922.P15641784194260255245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191590 (n + 2) + A074367 (n + 1)

end

end A127922.P15641784194260255245

noncomputable section

/-- A127922: 1/24 of product of three numbers: n-th prime, previous and following number.

Offset 2, canonical program `A127922.P15641784194260255245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127922 (n : ℕ) : ℤ :=
  A127922.P15641784194260255245.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127922.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A129146.P11255753064502351239

`A065091(n+1)-A071904(n+1)`
-/

namespace A129146.P11255753064502351239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A071904 (n + 1)

end

end A129146.P11255753064502351239

noncomputable section

/-- A129146: a(n) = n-th odd prime minus n-th odd composite number.

Offset 1, canonical program `A129146.P11255753064502351239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065091, A071904, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A129146 (n : ℕ) : ℤ :=
  A129146.P11255753064502351239.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065091, A071904, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A129146.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129180.P7619671228952585693

`Δ[A001108(n)-A123164(n)]`
-/

namespace A129180.P7619671228952585693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n - A123164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129180.P7619671228952585693

noncomputable section

/-- A129180: Total area below all Schroeder paths of semilength n.

Offset 0, canonical program `A129180.P7619671228952585693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A129180 (n : ℕ) : ℤ :=
  A129180.P7619671228952585693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A129180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129303.P18038319524124215169

`∑{d}[n+1, A035187(#)*A126246((n+1)/#)]`
-/

namespace A129303.P18038319524124215169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035187 d * A126246 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A129303.P18038319524124215169

noncomputable section

/-- A129303: Expansion of eta(q^2)^3 * eta(q^5)^2 * eta(q^10) / eta(q)^2 in powers of q.

Offset 1, canonical program `A129303.P18038319524124215169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129303 (n : ℕ) : ℤ :=
  A129303.P18038319524124215169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129451.P17433401477157295441

`A129449(3*n)`
-/

namespace A129451.P17433401477157295441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129449 (3 * n)

end

end A129451.P17433401477157295441

noncomputable section

/-- A129451: Expansion of f(-x, -x^3) f(-x, x^2) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A129451.P17433401477157295441`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129451 (n : ℕ) : ℤ :=
  A129451.P17433401477157295441.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129811.P9493245702118033988

`∩[A097957(n+1), A253970(n+1)]`
-/

namespace A129811.P9493245702118033988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129811.P9493245702118033988

noncomputable section

/-- A129811: Lesser of consecutive prime pairs whose last digits differ by 4.

Offset 2, canonical program `A129811.P9493245702118033988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A129811 (n : ℕ) : ℤ :=
  (A129811.P9493245702118033988.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A129811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130246.P8954244627215801184

`A130248(n+1)-A130241(n+1)+n`
-/

namespace A130246.P8954244627215801184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130248 (n + 1) - A130241 (n + 1) + (n : ℤ)

end

end A130246.P8954244627215801184

noncomputable section

/-- A130246: Partial sums of A130245.

Offset 0, canonical program `A130246.P8954244627215801184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130246 (n : ℕ) : ℤ :=
  A130246.P8954244627215801184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130302.P1457114923218138745

`C(A144257(n+1)+1, A025581(n))`
-/

namespace A130302.P1457114923218138745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144257 (n + 1) + 1).toNat (A025581 n).toNat

end

end A130302.P1457114923218138745

noncomputable section

/-- A130302: A000012 * A130296.

Offset 1, canonical program `A130302.P1457114923218138745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130302 (n : ℕ) : ℤ :=
  (A130302.P1457114923218138745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130911.P12693574123707460580

`∑[1-2*A200244(n+1)]`
-/

namespace A130911.P12693574123707460580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A200244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130911.P12693574123707460580

noncomputable section

/-- A130911: a(n) is the number of primes with odd binary weight among the first n primes minus the number with an even binary weight.

Offset 1, canonical program `A130911.P12693574123707460580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130911 (n : ℕ) : ℤ :=
  A130911.P12693574123707460580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131894.P11952724371346339213

`A279891(n)+A158860(n+1)`
-/

namespace A131894.P11952724371346339213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + A158860 (n + 1)

end

end A131894.P11952724371346339213

noncomputable section

/-- A131894: A131843 * A000012.

Offset 0, canonical program `A131894.P11952724371346339213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131894 (n : ℕ) : ℤ :=
  A131894.P11952724371346339213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131962.P10633637517023814369

`A121361(2*n)`
-/

namespace A131962.P10633637517023814369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 (2 * n)

end

end A131962.P10633637517023814369

noncomputable section

/-- A131962: Expansion of psi(x) * phi(-x^12) / chi(-x^4) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A131962.P10633637517023814369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A131962 (n : ℕ) : ℤ :=
  A131962.P10633637517023814369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A131962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131964.P13799590537725457977

`A121361(Δ[n²])`
-/

namespace A131964.P13799590537725457977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A131964.P13799590537725457977

noncomputable section

/-- A131964: Expansion of f(x^2, x^10) / f(x, x^3) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A131964.P13799590537725457977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A131964 (n : ℕ) : ℤ :=
  A131964.P13799590537725457977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A131964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132090.P14228668176940392471

`A064557(A070320(n+1))`
-/

namespace A132090.P14228668176940392471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064557 (A070320 (n + 1)).toNat

end

end A132090.P14228668176940392471

noncomputable section

/-- A132090: a(n) = pi(pi(n)), where pi = A000720.

Offset 1, canonical program `A132090.P14228668176940392471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132090 (n : ℕ) : ℤ :=
  A132090.P14228668176940392471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132239.P15653864357621956803

`∪[A039949(n+1), A132234(n+1)]`
-/

namespace A132239.P15653864357621956803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132239.P15653864357621956803

noncomputable section

/-- A132239: Primes congruent to {17, 19} mod 30.

Offset 1, canonical program `A132239.P15653864357621956803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132239 (n : ℕ) : ℤ :=
  (A132239.P15653864357621956803.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132351.P15635442049154509357

`1-A072292(n+1)+n`
-/

namespace A132351.P15635442049154509357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A072292 (n + 1) + (n : ℤ)

end

end A132351.P15635442049154509357

noncomputable section

/-- A132351: Partial sums of A132350.

Offset 1, canonical program `A132351.P15635442049154509357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132351 (n : ℕ) : ℤ :=
  A132351.P15635442049154509357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132630.P11928070417678431762

`record[A070010(n+1)+A033879(n+1)]`
-/

namespace A132630.P11928070417678431762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070010 (n + 1) + A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132630.P11928070417678431762

noncomputable section

/-- A132630: Numbers n such that sigma(n)-n divides sigma(n+1)-n-1, where sigma(n) is sum of positive divisors of n.

Offset 1, canonical program `A132630.P11928070417678431762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1241 terms. -/
def A132630 (n : ℕ) : ℤ :=
  A132630.P11928070417678431762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1241 terms. -/
def A132630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132781.P6106266185422034442

`lt[A342697(or(n, floor(n/2))-n), 1]`
-/

namespace A132781.P6106266185422034442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342697 (Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A132781.P6106266185422034442

noncomputable section

/-- A132781: Numbers not containing '1010' in binary representation.

Offset 1, canonical program `A132781.P6106266185422034442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132781 (n : ℕ) : ℤ :=
  (A132781.P6106266185422034442.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132782.P11170084075801961624

`lt[0, A342697(or(n, floor(n/2))-n)]`
-/

namespace A132782.P11170084075801961624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342697 (Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132782.P11170084075801961624

noncomputable section

/-- A132782: Numbers with at least one occurrence of '1010' in binary representation.

Offset 1, canonical program `A132782.P11170084075801961624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9727 terms. -/
def A132782 (n : ℕ) : ℤ :=
  (A132782.P11170084075801961624.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9727 terms. -/
def A132782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134536.P8076309341585828443

`gcd(Δ[A053767(n)], A002808(2*(n+1)))`
-/

namespace A134536.P8076309341585828443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A002808 (2 * (n + 1)))

end

end A134536.P8076309341585828443

noncomputable section

/-- A134536: a(n) = gcd(c(n), c(2n)), where c(n) is the n-th composite positive integer.

Offset 1, canonical program `A134536.P8076309341585828443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134536 (n : ℕ) : ℤ :=
  (A134536.P8076309341585828443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135542.P16485540137991458943

`A135533(A054429(n+1))`
-/

namespace A135542.P16485540137991458943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135533 (A054429 (n + 1)).toNat

end

end A135542.P16485540137991458943

noncomputable section

/-- A135542: Guy Steele's sequence GS(6,4) (see A135416).

Offset 1, canonical program `A135542.P16485540137991458943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A135542 (n : ℕ) : ℤ :=
  A135542.P16485540137991458943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A135542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135965.P4441893064852484730

`record[C(A187968(n+1), A026741(n+1))]`
-/

namespace A135965.P4441893064852484730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A187968 (n + 1)).toNat (A026741 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135965.P4441893064852484730

noncomputable section

/-- A135965: a(n) = binomial(floor(n*(1+sqrt(2))),n) for n>=0.

Offset 0, canonical program `A135965.P4441893064852484730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A135965 (n : ℕ) : ℤ :=
  (A135965.P4441893064852484730.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A135965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136049.P2253946720504092098

`Δ[A071538((n+1)²+n)]`
-/

namespace A136049.P2253946720504092098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 ((n + 1) ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136049.P2253946720504092098

noncomputable section

/-- A136049: a(n)=number of primes p such that (p,p+2) is a pair of twin primes with n^2 + n < p < n^2+3*n+2.

Offset 1, canonical program `A136049.P2253946720504092098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A136049 (n : ℕ) : ℤ :=
  A136049.P2253946720504092098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A136049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136153.P235196325310988984

`A008864(eq[4, A008335(n+1)]+1)`
-/

namespace A136153.P235196325310988984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A136153.P235196325310988984

noncomputable section

/-- A136153: Composites one larger than a prime, with exactly four distinct prime factors.

Offset 1, canonical program `A136153.P235196325310988984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3396 terms. -/
def A136153 (n : ℕ) : ℤ :=
  A136153.P235196325310988984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3396 terms. -/
def A136153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136327.P5396216506797299296

`eq[1, A099905(n+1)]+1`
-/

namespace A136327.P5396216506797299296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A136327.P5396216506797299296

noncomputable section

/-- A136327: Numbers k > 1 such that binomial(2k-1, k-1) == 1 (mod k).

Offset 1, canonical program `A136327.P5396216506797299296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A136327 (n : ℕ) : ℤ :=
  (A136327.P5396216506797299296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A136327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136798.P11682257404800107167

`A049591(n+1)+1`
-/

namespace A136798.P11682257404800107167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1) + 1

end

end A136798.P11682257404800107167

noncomputable section

/-- A136798: First term in a sequence of at least 3 consecutive composite integers.

Offset 1, canonical program `A136798.P11682257404800107167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136798 (n : ℕ) : ℤ :=
  A136798.P11682257404800107167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136798.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137267.P13997790594792920379

`A137948(n)-A073424(n)`
-/

namespace A137267.P13997790594792920379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137948 n - A073424 n

end

end A137267.P13997790594792920379

noncomputable section

/-- A137267: Chung-Graham juggling polynomials as a triangular sequence of positive coefficients.

Offset 1, canonical program `A137267.P13997790594792920379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A137267 (n : ℕ) : ℤ :=
  A137267.P13997790594792920379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A137267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137851.P17236837595214995262

`∑{d}[n+1, A046692(#)*A328260((n+1)/#)]`
-/

namespace A137851.P17236837595214995262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A328260 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A137851.P17236837595214995262

noncomputable section

/-- A137851: a(n) = A054525(n) * A061397(n).

Offset 1, canonical program `A137851.P17236837595214995262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137851 (n : ℕ) : ℤ :=
  A137851.P17236837595214995262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138745.P4107493542608592355

`(-1)^n*A125061(n)`
-/

namespace A138745.P4107493542608592355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A125061 n

end

end A138745.P4107493542608592355

noncomputable section

/-- A138745: Expansion of eta(q) * eta(q^3) * eta(q^4)^3 / (eta(q^2)^2 * eta(q^12)) in powers of q.

Offset 0, canonical program `A138745.P4107493542608592355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138745 (n : ℕ) : ℤ :=
  A138745.P4107493542608592355.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138745.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139355.P6748165722254672452

`(A000120(n)+abs(A065359(n)))/2`
-/

namespace A139355.P6748165722254672452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 n + |A065359 n| : ℚ) / 2

end

end A139355.P6748165722254672452

noncomputable section

/-- A139355: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives max{e(n), o(n)}.

Offset 0, canonical program `A139355.P6748165722254672452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139355 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139355.P6748165722254672452.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139402.P1211866769529008911

`∩[A023228(n+1), A023229(n+1)]`
-/

namespace A139402.P1211866769529008911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P1211866769529008911

noncomputable section

/-- A139402: Prime numbers k such that 8*k+1 and 8*k+3 are also primes.

Offset 1, canonical program `A139402.P1211866769529008911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 781 terms. -/
def A139402 (n : ℕ) : ℤ :=
  (A139402.P1211866769529008911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 781 terms. -/
def A139402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139421.P9468121044167985317

`A136548(A212831(n+1)+1)`
-/

namespace A139421.P9468121044167985317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A212831 (n + 1) + 1).toNat

end

end A139421.P9468121044167985317

noncomputable section

/-- A139421: a(1)=1; for n>1, a(n) = largest prime divisor of n!!.

Offset 1, canonical program `A139421.P9468121044167985317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1093 terms. -/
def A139421 (n : ℕ) : ℤ :=
  A139421.P9468121044167985317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1093 terms. -/
def A139421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139531.P10560570213948682589

`eq[1, A075743(A004770(n+1))]`
-/

namespace A139531.P10560570213948682589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A004770 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139531.P10560570213948682589

noncomputable section

/-- A139531: Numbers k such that 24*k + 17 is prime.

Offset 1, canonical program `A139531.P10560570213948682589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. -/
def A139531 (n : ℕ) : ℤ :=
  (A139531.P10560570213948682589.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. -/
def A139531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139665.P1560313932667054479

`∩[A139502(n+1), A139655(n+1)]`
-/

namespace A139665.P1560313932667054479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P1560313932667054479

noncomputable section

/-- A139665: Primes of the form x^2 + 840*y^2.

Offset 1, canonical program `A139665.P1560313932667054479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4905 terms. -/
def A139665 (n : ℕ) : ℤ :=
  (A139665.P1560313932667054479.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4905 terms. -/
def A139665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139831.P14732116838604130436

`A107169(n+1)-C(2, n+2)`
-/

namespace A139831.P14732116838604130436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1) - (Nat.choose 2 (n + 2) : ℤ)

end

end A139831.P14732116838604130436

noncomputable section

/-- A139831: Primes of the form 2x^2+2xy+23y^2.

Offset 1, canonical program `A139831.P14732116838604130436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139831 (n : ℕ) : ℤ :=
  A139831.P14732116838604130436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139850.P14382659560258088933

`∩[A102273(n+1), A141302(n+1)]`
-/

namespace A139850.P14382659560258088933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P14382659560258088933

noncomputable section

/-- A139850: Primes of the form 11x^2 + 8xy + 11y^2.

Offset 1, canonical program `A139850.P14382659560258088933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5006 terms. -/
def A139850 (n : ℕ) : ℤ :=
  (A139850.P14382659560258088933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5006 terms. -/
def A139850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139878.P4049860983378405462

`∩[A102273(n+1), A107148(n+1)]`
-/

namespace A139878.P4049860983378405462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P4049860983378405462

noncomputable section

/-- A139878: Primes of the form 8x^2+8xy+23y^2.

Offset 1, canonical program `A139878.P4049860983378405462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A139878 (n : ℕ) : ℤ :=
  (A139878.P4049860983378405462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A139878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139943.P7773536031816728990

`∩[A106935(n+1), A141160(n+1)]`
-/

namespace A139943.P7773536031816728990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139943.P7773536031816728990

noncomputable section

/-- A139943: Primes of the form 3x^2+119y^2.

Offset 1, canonical program `A139943.P7773536031816728990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A139943 (n : ℕ) : ℤ :=
  (A139943.P7773536031816728990.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A139943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139956.P1465954480000345955

`∩[A106935(n+1), A141170(n+1)]`
-/

namespace A139956.P1465954480000345955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P1465954480000345955

noncomputable section

/-- A139956: Primes of the form 3x^2+136y^2.

Offset 1, canonical program `A139956.P1465954480000345955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. -/
def A139956 (n : ℕ) : ℤ :=
  (A139956.P1465954480000345955.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. -/
def A139956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139996.P13907857736179143124

`∩[A139860(n+1), A139918(n+1)]`
-/

namespace A139996.P13907857736179143124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P13907857736179143124

noncomputable section

/-- A139996: Primes of the form 28x^2+28xy+37y^2.

Offset 1, canonical program `A139996.P13907857736179143124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4977 terms. -/
def A139996 (n : ℕ) : ℤ :=
  (A139996.P13907857736179143124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4977 terms. -/
def A139996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140013.P17814475586989594916

`∩[A107145(n+1), A139870(n+1)]`
-/

namespace A140013.P17814475586989594916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P17814475586989594916

noncomputable section

/-- A140013: Primes of the form 41*x^2+38*x*y+41*y^2.

Offset 1, canonical program `A140013.P17814475586989594916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A140013 (n : ℕ) : ℤ :=
  (A140013.P17814475586989594916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A140013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140025.P5832999856353222194

`∩[A038918(n+1), A139844(n+1)]`
-/

namespace A140025.P5832999856353222194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140025.P5832999856353222194

noncomputable section

/-- A140025: Primes of the form 30x^2+30xy+53y^2.

Offset 1, canonical program `A140025.P5832999856353222194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 639 terms. -/
def A140025 (n : ℕ) : ℤ :=
  (A140025.P5832999856353222194.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 639 terms. -/
def A140025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140199.P1511912442749279269

`A071917(n+1)+1`
-/

namespace A140199.P1511912442749279269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071917 (n + 1) + 1

end

end A140199.P1511912442749279269

noncomputable section

/-- A140199: a(n) = the number of pairs of (not necessarily distinct) positive integers j and k where j <= n and k <= n such that k+j is prime.

Offset 1, canonical program `A140199.P1511912442749279269`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140199 (n : ℕ) : ℤ :=
  A140199.P1511912442749279269.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140199.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140511.P17287606289736036124

`A144519(n+1)+A028334(n+2)`
-/

namespace A140511.P17287606289736036124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144519 (n + 1) + A028334 (n + 2)

end

end A140511.P17287606289736036124

noncomputable section

/-- A140511: a(n) = (prime(n)^2 + prime(n+1))/2.

Offset 2, canonical program `A140511.P17287606289736036124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140511 (n : ℕ) : ℤ :=
  A140511.P17287606289736036124.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140584.P2555590282461382423

`∑{d}[n+1, #*A140254((n+1)/#)]`
-/

namespace A140584.P2555590282461382423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A140254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140584.P2555590282461382423

noncomputable section

/-- A140584: Row sums of A140583.

Offset 1, canonical program `A140584.P2555590282461382423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140584 (n : ℕ) : ℤ :=
  A140584.P2555590282461382423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140617.P13437074169227290798

`∩[A168539(n+1), A102273(n+1)]`
-/

namespace A140617.P13437074169227290798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P13437074169227290798

noncomputable section

/-- A140617: Primes of the form 11x^2+8xy+32y^2.

Offset 1, canonical program `A140617.P13437074169227290798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A140617 (n : ℕ) : ℤ :=
  (A140617.P13437074169227290798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A140617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140853.P323441421693498327

`A055003(n+1)-1`
-/

namespace A140853.P323441421693498327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (n + 1) - 1

end

end A140853.P323441421693498327

noncomputable section

/-- A140853: a(n) = prime(prime(n) - 1) - 1, where prime(n) is the n-th prime.

Offset 1, canonical program `A140853.P323441421693498327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140853 (n : ℕ) : ℤ :=
  A140853.P323441421693498327.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140853.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141086.P1641081762159397586

`A031215((n+1)²)-2*(n+1)²`
-/

namespace A141086.P1641081762159397586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 ((n + 1) ^ 2) - (2 * (n + 1) ^ 2 : ℤ)

end

end A141086.P1641081762159397586

noncomputable section

/-- A141086: a(n) = prime(2*n^2) - 2*n^2.

Offset 1, canonical program `A141086.P1641081762159397586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A141086 (n : ℕ) : ℤ :=
  A141086.P1641081762159397586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A141086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141101.P14515176853044154166

`A031215(n+1)-2*(n+1)`
-/

namespace A141101.P14515176853044154166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - (2 * (n + 1) : ℤ)

end

end A141101.P14515176853044154166

noncomputable section

/-- A141101: a(n) = prime(2*n) - 2*n.

Offset 1, canonical program `A141101.P14515176853044154166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141101 (n : ℕ) : ℤ :=
  A141101.P14515176853044154166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141241.P3299451088635231367

`∏{e}[A139118(n+1), #+1]`
-/

namespace A141241.P3299451088635231367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A141241.P3299451088635231367

noncomputable section

/-- A141241: a(n) = number of divisors of n-th positive integer with a nonprime number of divisors. a(n) = the number of divisors of A139118(n).

Offset 1, canonical program `A141241.P3299451088635231367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141241 (n : ℕ) : ℤ :=
  (A141241.P3299451088635231367.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142405.P7484043141253208572

`∩[A134517(n+1), A141194(n+1)]`
-/

namespace A142405.P7484043141253208572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P7484043141253208572

noncomputable section

/-- A142405: Primes congruent to 23 mod 48.

Offset 1, canonical program `A142405.P7484043141253208572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A142405 (n : ℕ) : ℤ :=
  (A142405.P7484043141253208572.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A142405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143062.P17484546011609023543

`Δ[A084176(3*(n+1))%2]`
-/

namespace A143062.P17484546011609023543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084176 (3 * (n + 1))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143062.P17484546011609023543

noncomputable section

/-- A143062: Expansion of false theta series variation of Euler's pentagonal number series in powers of x.

Offset 0, canonical program `A143062.P17484546011609023543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A143062 (n : ℕ) : ℤ :=
  A143062.P17484546011609023543.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A143062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143275.P7811182970154624071

`∑{d}[n+1, #*A007432((n+1)/#)]`
-/

namespace A143275.P7811182970154624071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143275.P7811182970154624071

noncomputable section

/-- A143275: A054525 * A029935.

Offset 1, canonical program `A143275.P7811182970154624071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143275 (n : ℕ) : ℤ :=
  A143275.P7811182970154624071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143538.P17358070422668101230

`A010051(A002260(n+1))`
-/

namespace A143538.P17358070422668101230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A002260 (n + 1)).toNat

end

end A143538.P17358070422668101230

noncomputable section

/-- A143538: Triangle read by rows, T(n,k) = 1 if k is prime, 0 otherwise; 1 <= k <= n.

Offset 1, canonical program `A143538.P17358070422668101230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143538 (n : ℕ) : ℤ :=
  A143538.P17358070422668101230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143575.P15638247367889798217

`eq[A125061(n), A169695(n)]`
-/

namespace A143575.P15638247367889798217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125061 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143575.P15638247367889798217

noncomputable section

/-- A143575: Numbers m such that A143574(m) = m.

Offset 1, canonical program `A143575.P15638247367889798217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1705 terms. -/
def A143575 (n : ℕ) : ℤ :=
  (A143575.P15638247367889798217.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1705 terms. -/
def A143575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143738.P8542796833355571080

`abs(A071538(abs(1-n)+1)-A071538((n+1)²))`
-/

namespace A143738.P8542796833355571080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A071538 (|1 - (n : ℤ)| + 1).toNat - A071538 ((n + 1) ^ 2))|

end

end A143738.P8542796833355571080

noncomputable section

/-- A143738: Number of twin primes between n and n^2. Only smaller of twins (terms of A001359) are counted.

Offset 1, canonical program `A143738.P8542796833355571080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A143738 (n : ℕ) : ℤ :=
  A143738.P8542796833355571080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A143738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143772.P6477686622307368865

`gcd(24, A079696(n+1))`
-/

namespace A143772.P6477686622307368865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 24 (A079696 (n + 1))

end

end A143772.P6477686622307368865

noncomputable section

/-- A143772: If m is the n-th composite, then a(n) = gcd(k + m/k), where k is over all divisors of m.

Offset 1, canonical program `A143772.P6477686622307368865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A143772 (n : ℕ) : ℤ :=
  (A143772.P6477686622307368865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A143772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144411.P17247777929449242437

`A067970(n+1)/2-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144411.P17247777929449242437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067970 (n + 1) : ℚ) / 2 - 2

end

end A144411.P17247777929449242437

noncomputable section

/-- A144411: Odd nonprime gaps adjusted to be {2,1,0,-1}: a(n)=A067970(n)/2-2.

Offset 1, canonical program `A144411.P17247777929449242437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067970, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144411 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144411.P17247777929449242437.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067970, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144411.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145024.P9653194186752503351

`Δ[record[gcd(n+3, A036263(n+1))]]`
-/

namespace A145024.P9653194186752503351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A036263 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A145024.P9653194186752503351

noncomputable section

/-- A145024: Number of primes between successive balanced primes (A006562).

Offset 1, canonical program `A145024.P9653194186752503351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145024 (n : ℕ) : ℤ :=
  A145024.P9653194186752503351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145398.P13757038828564537059

`A007429(n+1)+A145378(n+1)-A327096(n+1)`
-/

namespace A145398.P13757038828564537059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) + (A145378 (n + 1) - A327096 (n + 1))

end

end A145398.P13757038828564537059

noncomputable section

/-- A145398: a(n) = Sum_{d|n} sigma(d) - Sum_{2c|n} sigma(c) + 4*Sum_{4b|n} sigma(b).

Offset 1, canonical program `A145398.P13757038828564537059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145398 (n : ℕ) : ℤ :=
  A145398.P13757038828564537059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145446.P12610412576762922366

`A104147(n)^3`
-/

namespace A145446.P12610412576762922366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104147 n ^ 3

end

end A145446.P12610412576762922366

noncomputable section

/-- A145446: a(n) = the smallest cube > n-th prime.

Offset 1, canonical program `A145446.P12610412576762922366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145446 (n : ℕ) : ℤ :=
  A145446.P12610412576762922366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145487.P16425779050793417673

`(A145471(n+1)-5)/12`
-/

namespace A145487.P16425779050793417673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145471 (n + 1) - 5 : ℚ) / 12

end

end A145487.P16425779050793417673

noncomputable section

/-- A145487: Numbers k such that 6k+5 is prime and 12k+5 is also prime.

Offset 1, canonical program `A145487.P16425779050793417673`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145487 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145487.P16425779050793417673.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145487.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145834.P17484555634374077450

`A002808(n+1)-A046343(n+1)`
-/

namespace A145834.P17484555634374077450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A046343 (n + 1)

end

end A145834.P17484555634374077450

noncomputable section

/-- A145834: a(n) = difference between the n-th composite number and the sum of its prime factors with repetition.

Offset 1, canonical program `A145834.P17484555634374077450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145834 (n : ℕ) : ℤ :=
  A145834.P17484555634374077450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145989.P5652111938556337468

`A091318(lt[1, A091318(n+1)]+1)`
-/

namespace A145989.P5652111938556337468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A145989.P5652111938556337468

noncomputable section

/-- A145989: Run lengths of consecutive primes == 1 (mod 4) where the run length is at least 2.

Offset 1, canonical program `A145989.P5652111938556337468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145989 (n : ℕ) : ℤ :=
  A145989.P5652111938556337468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145992.P5369397507907685557

`A091267(lt[1, A091267(n+1)]+1)`
-/

namespace A145992.P5369397507907685557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A145992.P5369397507907685557

noncomputable section

/-- A145992: Run lengths of 2 or more consecutive primes of the form 4k+3.

Offset 1, canonical program `A145992.P5369397507907685557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145992 (n : ℕ) : ℤ :=
  A145992.P5369397507907685557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151292.P14289417684748015023

`5*a(n-1)-A014432(n)` with `a(0)=1`
-/

namespace A151292.P14289417684748015023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A014432 n

end

end A151292.P14289417684748015023

noncomputable section

/-- A151292: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (0, 1), (1, 1)}.

Offset 0, canonical program `A151292.P14289417684748015023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A151292 (n : ℕ) : ℤ :=
  A151292.P14289417684748015023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A151292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151665.P7749028135867019320

`A006046(A151669(n))`
-/

namespace A151665.P7749028135867019320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A151669 n).toNat

end

end A151665.P7749028135867019320

noncomputable section

/-- A151665: G.f.: Product_{k>=0} (1 + 3*x^(4^k)).

Offset 0, canonical program `A151665.P7749028135867019320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151665 (n : ℕ) : ℤ :=
  A151665.P7749028135867019320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151674.P15988754925228505936

`A006288(A151671(n))`
-/

namespace A151674.P15988754925228505936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (A151671 n).toNat

end

end A151674.P15988754925228505936

noncomputable section

/-- A151674: G.f.: Product_{k >= 0} (1 + 4*x^(5^k)).

Offset 0, canonical program `A151674.P15988754925228505936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151674 (n : ℕ) : ℤ :=
  A151674.P15988754925228505936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151742.P737792101325545151

`∩[A002808(n+1), A053767(n+4)-A053767(n)]`
-/

namespace A151742.P737792101325545151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 4) - A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151742.P737792101325545151

noncomputable section

/-- A151742: Composite numbers which are the sum of four consecutive composite numbers.

Offset 1, canonical program `A151742.P737792101325545151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A151742 (n : ℕ) : ℤ :=
  (A151742.P737792101325545151.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A151742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151758.P108105294660586572

`dr(A073267(n))-A209229(n)`
-/

namespace A151758.P108105294660586572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A073267 n) : ℤ) - A209229 n

end

end A151758.P108105294660586572

noncomputable section

/-- A151758: G.f.: Theta^2-Theta, where Theta = Sum_{k>=0} x^(2^k).

Offset 0, canonical program `A151758.P108105294660586572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A151758 (n : ℕ) : ℤ :=
  A151758.P108105294660586572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A151758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151920.P12681159998700896708

`(A130665(n+1)-1)/3`
-/

namespace A151920.P12681159998700896708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130665 (n + 1) - 1 : ℚ) / 3

end

end A151920.P12681159998700896708

noncomputable section

/-- A151920: a(n) = (Sum_{i=1..n+1} 3^wt(i))/3, where wt() = A000120().

Offset 0, canonical program `A151920.P12681159998700896708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130665, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151920 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A151920.P12681159998700896708.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130665, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151920.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152086.P468076761829832890

`A206603(n+1)+2^n`
-/

namespace A152086.P468076761829832890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 (n + 1) + (2 ^ n : ℤ)

end

end A152086.P468076761829832890

noncomputable section

/-- A152086: a(n) = Sum_{k=1..n-1} k*A110971(n,k).

Offset 2, canonical program `A152086.P468076761829832890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A152086 (n : ℕ) : ℤ :=
  A152086.P468076761829832890.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A152086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152539.P11128868835489364912

`∑[A146538(n+1)]`
-/

namespace A152539.P11128868835489364912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152539.P11128868835489364912

noncomputable section

/-- A152539: Partial sum of A146538.

Offset 1, canonical program `A152539.P11128868835489364912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152539 (n : ℕ) : ℤ :=
  A152539.P11128868835489364912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152881.P17251037129773782981

`A067988(n)-A001629(n+2)`
-/

namespace A152881.P17251037129773782981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067988 n - A001629 (n + 2)

end

end A152881.P17251037129773782981

noncomputable section

/-- A152881: Positions of those 1's that are followed by a 0, summed over all Fibonacci binary words of length n. A Fibonacci binary word is a binary word having no 00 subword.

Offset 1, canonical program `A152881.P17251037129773782981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A152881 (n : ℕ) : ℤ :=
  A152881.P17251037129773782981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A152881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153034.P227806529242985448

`A003714(A001690(n+1)-1)`
-/

namespace A153034.P227806529242985448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A001690 (n + 1) - 1).toNat

end

end A153034.P227806529242985448

noncomputable section

/-- A153034: Numbers with adjacent 0's and no adjacent 1's in binary expansion.

Offset 1, canonical program `A153034.P227806529242985448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9981 terms. -/
def A153034 (n : ℕ) : ℤ :=
  A153034.P227806529242985448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9981 terms. -/
def A153034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153045.P15986527208321006434

`5+A104275(n+2)`
-/

namespace A153045.P15986527208321006434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 + A104275 (n + 2)

end

end A153045.P15986527208321006434

noncomputable section

/-- A153045: Numbers k such that 2*k-11 is not a prime.

Offset 1, canonical program `A153045.P15986527208321006434`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153045 (n : ℕ) : ℤ :=
  A153045.P15986527208321006434.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153045.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153085.P13243709957649807552

`eq[0, A156707(2*(n+1))]`
-/

namespace A153085.P13243709957649807552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153085.P13243709957649807552

noncomputable section

/-- A153085: Numbers k such that 4*k + 5 is not prime.

Offset 1, canonical program `A153085.P13243709957649807552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153085 (n : ℕ) : ℤ :=
  (A153085.P13243709957649807552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153141.P2352624869990070463

`A006068(n)+n-A153142(A006068(n))`
-/

namespace A153141.P2352624869990070463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n + ((n : ℤ) - A153142 (A006068 n).toNat)

end

end A153141.P2352624869990070463

noncomputable section

/-- A153141: Permutation of nonnegative integers: A059893-conjugate of A153151.

Offset 0, canonical program `A153141.P2352624869990070463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153141 (n : ℕ) : ℤ :=
  A153141.P2352624869990070463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153188.P2665650372285925959

`A079901(n)*A233543(n)`
-/

namespace A153188.P2665650372285925959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 n * A233543 n

end

end A153188.P2665650372285925959

noncomputable section

/-- A153188: Triangle read by rows: T(n,k) = n^k * k!.

Offset 0, canonical program `A153188.P2665650372285925959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 740 terms. -/
def A153188 (n : ℕ) : ℤ :=
  A153188.P2665650372285925959.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 740 terms. -/
def A153188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153219.P6113425465272514699

`eq[0, A075743(2*(n+1))]`
-/

namespace A153219.P6113425465272514699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153219.P6113425465272514699

noncomputable section

/-- A153219: Numbers n such that 6*n + 7 is not prime.

Offset 1, canonical program `A153219.P6113425465272514699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153219 (n : ℕ) : ℤ :=
  (A153219.P6113425465272514699.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153236.P9988325728927142668

`eq[1, A156707(4*n+1)+1]`
-/

namespace A153236.P9988325728927142668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (4 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153236.P9988325728927142668

noncomputable section

/-- A153236: Numbers n such that 8*n + 3 is not prime.

Offset 1, canonical program `A153236.P9988325728927142668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153236 (n : ℕ) : ℤ :=
  (A153236.P9988325728927142668.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153309.P14599462344025828023

`A153184(n+1)-1`
-/

namespace A153309.P14599462344025828023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153184 (n + 1) - 1

end

end A153309.P14599462344025828023

noncomputable section

/-- A153309: Numbers k such that 3*k + 1 is not prime.

Offset 1, canonical program `A153309.P14599462344025828023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153309 (n : ℕ) : ℤ :=
  A153309.P14599462344025828023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153319.P18178413005395234770

`p?[A075743(4*n+3)+A005408(n+1)]`
-/

namespace A153319.P18178413005395234770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (4 * n + 3) + A005408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153319.P18178413005395234770

noncomputable section

/-- A153319: Primes p such that 6*p-7 is not prime.

Offset 1, canonical program `A153319.P18178413005395234770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1344 terms. -/
def A153319 (n : ℕ) : ℤ :=
  A153319.P18178413005395234770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1344 terms. -/
def A153319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153350.P12585267983721140221

`comp[A101123(n+1)]`
-/

namespace A153350.P12585267983721140221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153350.P12585267983721140221

noncomputable section

/-- A153350: Numbers k such that 7*k+11 is not prime.

Offset 1, canonical program `A153350.P12585267983721140221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153350 (n : ℕ) : ℤ :=
  (A153350.P12585267983721140221.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153877.P12442606473326752863

`∩[A024894(n+1), A153355(n+1)]`
-/

namespace A153877.P12442606473326752863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153877.P12442606473326752863

noncomputable section

/-- A153877: Numbers n such that 5n-1 and 5n+1 are both prime.

Offset 1, canonical program `A153877.P12442606473326752863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A153877 (n : ℕ) : ℤ :=
  (A153877.P12442606473326752863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A153877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153883.P3806345231788212027

`A153880(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153883.P3806345231788212027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153880 n : ℚ) / 2

end

end A153883.P3806345231788212027

noncomputable section

/-- A153883: a(n) = A153880(n)/2.

Offset 0, canonical program `A153883.P3806345231788212027`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153883 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A153883.P3806345231788212027.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153883.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A154221.P10253953106395039828

`A034008(A318274(n))+1`
-/

namespace A154221.P10253953106395039828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A318274 n).toNat + 1

end

end A154221.P10253953106395039828

noncomputable section

/-- A154221: A simple Pascal-like triangle.

Offset 0, canonical program `A154221.P10253953106395039828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154221 (n : ℕ) : ℤ :=
  A154221.P10253953106395039828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154314.P5025358904430600657

`∪[A023745(n+1), A031948(n+1)]`
-/

namespace A154314.P5025358904430600657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154314.P5025358904430600657

noncomputable section

/-- A154314: Numbers with not more than two distinct digits in ternary representation.

Offset 1, canonical program `A154314.P5025358904430600657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154314 (n : ℕ) : ℤ :=
  (A154314.P5025358904430600657.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154388.P13234151177117315551

`A023531(A211394(n+1)-1)`
-/

namespace A154388.P13234151177117315551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A211394 (n + 1) - 1).toNat

end

end A154388.P13234151177117315551

noncomputable section

/-- A154388: Triangle T(n,k), 0<=k<=n, read by rows given by [0,1,-1,0,0,0,0,0,0,0,...] DELTA [1,-1,-1,1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A154388.P13234151177117315551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154388 (n : ℕ) : ℤ :=
  A154388.P13234151177117315551.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154435.P12739002809181514319

`A006068(A154436(A006068(n)))`
-/

namespace A154435.P12739002809181514319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A154436 (A006068 n).toNat).toNat

end

end A154435.P12739002809181514319

noncomputable section

/-- A154435: Permutation of nonnegative integers induced by Lamplighter group generating wreath recursion, variant 3: a = s(b,a), b = (a,b), starting from the state a.

Offset 0, canonical program `A154435.P12739002809181514319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154435 (n : ℕ) : ℤ :=
  A154435.P12739002809181514319.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154447.P11287601721097405753

`A092569(A154448(A092569(n)))`
-/

namespace A154447.P11287601721097405753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A154448 (A092569 n).toNat).toNat

end

end A154447.P11287601721097405753

noncomputable section

/-- A154447: Permutation of nonnegative integers induced by wreath recursion a=s(b,c), b=s(c,a), c=(c,c), starting from state b, rewriting bits from the second most significant bit toward the least significant end.

Offset 0, canonical program `A154447.P11287601721097405753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154447 (n : ℕ) : ℤ :=
  A154447.P11287601721097405753.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156259.P15948419569371398233

`1-A156258(n+1)`
-/

namespace A156259.P15948419569371398233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A156258 (n + 1)

end

end A156259.P15948419569371398233

noncomputable section

/-- A156259: a(n)=(1/2)*(A000002(A078649(n)+2)-A000002(A078649(n))+1).

Offset 1, canonical program `A156259.P15948419569371398233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156259 (n : ℕ) : ℤ :=
  A156259.P15948419569371398233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156611.P13062868264229254532

`A151800(a(n-1)+2*n-1)` with `a(0)=2`
-/

namespace A156611.P13062868264229254532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (a (n - 1) + ((2 * n : ℤ) - 1)).toNat

end

end A156611.P13062868264229254532

noncomputable section

/-- A156611: a(1) = 2, a(n+1) is smallest prime >= a(n)+2*n.

Offset 1, canonical program `A156611.P13062868264229254532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A156611 (n : ℕ) : ℤ :=
  A156611.P13062868264229254532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A156611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156657.P13599752432908791123

`comp[p?[A072055(n+1)]]`
-/

namespace A156657.P13599752432908791123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A156657.P13599752432908791123

noncomputable section

/-- A156657: Numbers that are not safe primes.

Offset 1, canonical program `A156657.P13599752432908791123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156657 (n : ℕ) : ℤ :=
  (A156657.P13599752432908791123.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156659.P9694102179594452160

`A156660(A057979(n))`
-/

namespace A156659.P9694102179594452160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (A057979 n).toNat

end

end A156659.P9694102179594452160

noncomputable section

/-- A156659: Characteristic function of safe primes.

Offset 0, canonical program `A156659.P9694102179594452160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156659 (n : ℕ) : ℤ :=
  A156659.P9694102179594452160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156706.P17768432936100501538

`n-xor(n, A075743(n+1))`
-/

namespace A156706.P17768432936100501538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (A075743 (n + 1))

end

end A156706.P17768432936100501538

noncomputable section

/-- A156706: For all numbers k(n) congruent to +1 or -1 (mod 6) starting with k(n) = {5,7,11,13,...}, a(k(n)) is the congruence (mod 6) if k(n) is prime and 0 if k(n) is composite.

Offset 1, canonical program `A156706.P17768432936100501538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156706 (n : ℕ) : ℤ :=
  A156706.P17768432936100501538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156828.P15006888903266838988

`A151800(a(n-1)+3)` with `a(0)=2`
-/

namespace A156828.P15006888903266838988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (a (n - 1) + 3).toNat

end

end A156828.P15006888903266838988

noncomputable section

/-- A156828: a(1) = 2. a(n) = the smallest prime >= a(n-1) + 4.

Offset 1, canonical program `A156828.P15006888903266838988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8369 terms. -/
def A156828 (n : ℕ) : ℤ :=
  A156828.P15006888903266838988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8369 terms. -/
def A156828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156830.P6923617895616605751

`A151800(A001223(n)+a(n-1))` with `a(0)=2`
-/

namespace A156830.P6923617895616605751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A001223 n + a (n - 1)).toNat

end

end A156830.P6923617895616605751

noncomputable section

/-- A156830: a(1) = 2. For n >= 2, a(n) = the smallest prime > a(n-1) + p(n) - p(n-1), where p(n) is the n-th prime.

Offset 1, canonical program `A156830.P6923617895616605751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156830 (n : ℕ) : ℤ :=
  A156830.P6923617895616605751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157202.P3382835280700317586

`eq[1, A075743(A161709(n))]`
-/

namespace A157202.P3382835280700317586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A161709 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157202.P3382835280700317586

noncomputable section

/-- A157202: Numbers k such that 66*k + 5 is prime.

Offset 1, canonical program `A157202.P3382835280700317586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A157202 (n : ℕ) : ℤ :=
  (A157202.P3382835280700317586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A157202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157974.P8815639970148914134

`p?[floor(A134517(n+1)/12)]`
-/

namespace A157974.P8815639970148914134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134517 (n + 1) : ℚ) / 12⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157974.P8815639970148914134

noncomputable section

/-- A157974: Primes p such that 12*p + 11 is also prime.

Offset 1, canonical program `A157974.P8815639970148914134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1910 terms. -/
def A157974 (n : ℕ) : ℤ :=
  A157974.P8815639970148914134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1910 terms. -/
def A157974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158019.P16095416846168074272

`∩[A072055(n+1), A105042(n+1)]`
-/

namespace A158019.P16095416846168074272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158019.P16095416846168074272

noncomputable section

/-- A158019: Numbers such that (n-1)/2 and 10*n-1 are both prime.

Offset 1, canonical program `A158019.P16095416846168074272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 805 terms. -/
def A158019 (n : ℕ) : ℤ :=
  (A158019.P16095416846168074272.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 805 terms. -/
def A158019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158055.P15997520740979597074

`A151800(A000030(a(n-1))*A028310(n))` with `a(0)=2`
-/

namespace A158055.P15997520740979597074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A000030 (a (n - 1)).toNat * A028310 n).toNat

end

end A158055.P15997520740979597074

noncomputable section

/-- A158055: a(1)=2, a(n+1) is the smallest prime > n*first digit of a(n).

Offset 1, canonical program `A158055.P15997520740979597074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2003 terms. -/
def A158055 (n : ℕ) : ℤ :=
  A158055.P15997520740979597074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2003 terms. -/
def A158055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158635.P2502812629783732667

`5*(n+1)-A162177(n+1)`
-/

namespace A158635.P2502812629783732667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A162177 (n + 1)

end

end A158635.P2502812629783732667

noncomputable section

/-- A158635: 6n - A008578(n).

Offset 1, canonical program `A158635.P2502812629783732667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158635 (n : ℕ) : ℤ :=
  A158635.P2502812629783732667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158806.P17410747648070653925

`floor(A132234(n+1)/30)`
-/

namespace A158806.P17410747648070653925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132234 (n + 1) : ℚ) / 30⌋

end

end A158806.P17410747648070653925

noncomputable section

/-- A158806: Numbers n such that 30*n + 19 is prime.

Offset 1, canonical program `A158806.P17410747648070653925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158806 (n : ℕ) : ℤ :=
  A158806.P17410747648070653925.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158806.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A159477.P17083165607606757020

`A308052(a(n-1)+n+1)` with `a(0)=1`
-/

namespace A159477.P17083165607606757020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A308052 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A159477.P17083165607606757020

noncomputable section

/-- A159477: a(n) = smallest prime >= n, if 1 is counted as a prime.

Offset 1, canonical program `A159477.P17083165607606757020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A159477 (n : ℕ) : ℤ :=
  A159477.P17083165607606757020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A159477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159917.P11472049628818432676

`A003714(n)%4`
-/

namespace A159917.P11472049628818432676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003714 n) 4

end

end A159917.P11472049628818432676

noncomputable section

/-- A159917: Fixed point of the morphism 0 -> 01, 1 -> 2, 2 -> 01, starting from a(0) = 0.

Offset 0, canonical program `A159917.P11472049628818432676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159917 (n : ℕ) : ℤ :=
  A159917.P11472049628818432676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160377.P1754488293739471565

`C(n, C(A072273(n+1), A072273(n+1)²))`
-/

namespace A160377.P1754488293739471565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A072273 (n + 1)).toNat (A072273 (n + 1) ^ 2).toNat)

end

end A160377.P1754488293739471565

noncomputable section

/-- A160377: Phi-torial of n (A001783) modulo n.

Offset 1, canonical program `A160377.P1754488293739471565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160377 (n : ℕ) : ℤ :=
  (A160377.P1754488293739471565.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160522.P6565779723747450574

`A146538(n+1)-Δ[n²]`
-/

namespace A160522.P6565779723747450574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146538 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A160522.P6565779723747450574

noncomputable section

/-- A160522: The n-th odd composite number minus the n-th even composite number.

Offset 1, canonical program `A160522.P6565779723747450574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160522 (n : ℕ) : ℤ :=
  A160522.P6565779723747450574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160727.P938032724718537716

`Δ[A130665(n)]-A135416(n+1)`
-/

namespace A160727.P938032724718537716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A135416 (n + 1)

end

end A160727.P938032724718537716

noncomputable section

/-- A160727: a(n) = A161415(n+1)/4.

Offset 1, canonical program `A160727.P938032724718537716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160727 (n : ℕ) : ℤ :=
  A160727.P938032724718537716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161200.P10289639632069729149

`(n+1-7*n/5)*A161202(n)`
-/

namespace A161200.P10289639632069729149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) - 7 * ((n : ℚ) / 5)) * (A161202 n : ℚ)

end

end A161200.P10289639632069729149

noncomputable section

/-- A161200: Numerators in expansion of (1-x)^(3/2).

Offset 0, canonical program `A161200.P10289639632069729149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A161200 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161200.P10289639632069729149.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A161200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161528.P12747581726242673171

`A035187(5*n+1)`
-/

namespace A161528.P12747581726242673171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (5 * n + 1)

end

end A161528.P12747581726242673171

noncomputable section

/-- A161528: Expansion of the q-series Sum_{n >= 0} (-1)^nq^(n(n+1)/2)(1-q)(1-q^2)...(1-q^n)/((1-q^(n+1))(1-q^(n+2))...(1-q^(2n+1))).

Offset 0, canonical program `A161528.P12747581726242673171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035187, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161528 (n : ℕ) : ℤ :=
  A161528.P12747581726242673171.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035187, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161528.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161540.P11595900627706559669

`p?[A161537(n+1)]`
-/

namespace A161540.P11595900627706559669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161540.P11595900627706559669

noncomputable section

/-- A161540: Primes which are the sum of a smaller n and its composite(n) subscript. A002808 + a(n) (= prime).

Offset 1, canonical program `A161540.P11595900627706559669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161540 (n : ℕ) : ℤ :=
  A161540.P11595900627706559669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161753.P17172365697063617890

`∑{d}[n, A361709(#)]²`
-/

namespace A161753.P17172365697063617890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A361709 d) ^ 2

end

end A161753.P17172365697063617890

noncomputable section

/-- A161753: Squares of nonprime numbers A141468.

Offset 1, canonical program `A161753.P17172365697063617890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161753 (n : ℕ) : ℤ :=
  A161753.P17172365697063617890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161754.P16252943337925215701

`A175967(A002808(n+1))-A175967(A060462(n+1))`
-/

namespace A161754.P16252943337925215701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (A002808 (n + 1)).toNat - A175967 (A060462 (n + 1)).toNat

end

end A161754.P16252943337925215701

noncomputable section

/-- A161754: a(n) = sum of all nonprimes from nonprime(p) to nonprime(q) where p is nonprime(n+1) and q is nonprime(n+2).

Offset 1, canonical program `A161754.P16252943337925215701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A161754 (n : ℕ) : ℤ :=
  A161754.P16252943337925215701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A161754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161890.P15218163243923693132

`eq[A065359(n+9), A065359(n)]`
-/

namespace A161890.P15218163243923693132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161890.P15218163243923693132

noncomputable section

/-- A161890: Numbers such that A010060(n) = A010060(n+9).

Offset 0, canonical program `A161890.P15218163243923693132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161890 (n : ℕ) : ℤ :=
  (A161890.P15218163243923693132.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161896.P6775021465739901244

`∩[A034784(n+1), A271116(n+1)]`
-/

namespace A161896.P6775021465739901244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161896.P6775021465739901244

noncomputable section

/-- A161896: Integers m such that (9^m - 3 * 3^m - 4*m) / (2*m * (2*m + 1)) is an integer.

Offset 1, canonical program `A161896.P6775021465739901244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 745 terms. -/
def A161896 (n : ℕ) : ℤ :=
  (A161896.P6775021465739901244.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 745 terms. -/
def A161896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161975.P15136247777327515862

`A000217(A002808(n+1))-A000217(A046343(n+1)-1)`
-/

namespace A161975.P15136247777327515862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002808 (n + 1)).toNat - A000217 (A046343 (n + 1) - 1).toNat

end

end A161975.P15136247777327515862

noncomputable section

/-- A161975: Sum_{x=sum of prime factors of n-th composite..n-th composite} x.

Offset 1, canonical program `A161975.P15136247777327515862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A046343, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161975 (n : ℕ) : ℤ :=
  A161975.P15136247777327515862.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A046343, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161975.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162154.P2090983927440829256

`Δ[A111688(n+1)]`
-/

namespace A162154.P2090983927440829256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162154.P2090983927440829256

noncomputable section

/-- A162154: Odd-indexed terms are the number of consecutive prime numbers until a composite, even-indexed terms are the number of consecutive composite numbers until a prime.

Offset 1, canonical program `A162154.P2090983927440829256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162154 (n : ℕ) : ℤ :=
  A162154.P2090983927440829256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162566.P5236588116513518554

`p?[A065091(n+1)-A063086(n+1)]`
-/

namespace A162566.P5236588116513518554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A063086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162566.P5236588116513518554

noncomputable section

/-- A162566: Those primes p where (q-p) divides (p+1), where q is the least prime > p.

Offset 1, canonical program `A162566.P5236588116513518554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162566 (n : ℕ) : ℤ :=
  A162566.P5236588116513518554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162643.P6606291561920249230

`∪[A038109(n+1), A360723(n+1)]`
-/

namespace A162643.P6606291561920249230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162643.P6606291561920249230

noncomputable section

/-- A162643: Numbers whose number of divisors is not a power of 2.

Offset 1, canonical program `A162643.P6606291561920249230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162643 (n : ℕ) : ℤ :=
  (A162643.P6606291561920249230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163109.P8558914357586201345

`A055034(lcm(2, ∏{e}[n+1, #+1]))`
-/

namespace A163109.P8558914357586201345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (Nat.lcm 2 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A163109.P8558914357586201345

noncomputable section

/-- A163109: a(n) = phi(tau(n)).

Offset 1, canonical program `A163109.P8558914357586201345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163109 (n : ℕ) : ℤ :=
  A163109.P8558914357586201345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163375.P2557653577303073204

`∑{d}[A062821(n+1), #]`
-/

namespace A163375.P2557653577303073204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163375.P2557653577303073204

noncomputable section

/-- A163375: a(n) = sigma(tau(phi(n))).

Offset 1, canonical program `A163375.P2557653577303073204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163375 (n : ℕ) : ℤ :=
  (A163375.P2557653577303073204.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163478.P4938933501690302131

`A163242(n)/3`
-/

namespace A163478.P4938933501690302131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163242 n : ℚ) / 3

end

end A163478.P4938933501690302131

noncomputable section

/-- A163478: Row sums of A163233 and A163235 divided by 3.

Offset 0, canonical program `A163478.P4938933501690302131`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163242, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163478 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163478.P4938933501690302131.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163242, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163478.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163843.P11119471545613868718

`A163865(n+1)-A056040(n+1)`
-/

namespace A163843.P11119471545613868718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163865 (n + 1) - A056040 (n + 1)

end

end A163843.P11119471545613868718

noncomputable section

/-- A163843: Row sums of triangle A163840.

Offset 0, canonical program `A163843.P11119471545613868718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A163843 (n : ℕ) : ℤ :=
  A163843.P11119471545613868718.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A163843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164385.P969803390570272299

`A087680(n+2)`
-/

namespace A164385.P969803390570272299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087680 (n + 2)

end

end A164385.P969803390570272299

noncomputable section

/-- A164385: Composite numbers n such that n+4 and n-4 are both prime.

Offset 1, canonical program `A164385.P969803390570272299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164385 (n : ℕ) : ℤ :=
  A164385.P969803390570272299.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164566.P13004933412815303573

`∩[A023225(n+1), A136052(n+1)]`
-/

namespace A164566.P13004933412815303573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164566.P13004933412815303573

noncomputable section

/-- A164566: Primes p such that 7*p-6 and 7*p+6 are also prime numbers.

Offset 1, canonical program `A164566.P13004933412815303573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A164566 (n : ℕ) : ℤ :=
  (A164566.P13004933412815303573.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A164566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079779.P14774343609716682029

`A151800(A033286(n+1))`
-/

namespace A079779.P14774343609716682029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A033286 (n + 1)).toNat

end

end A079779.P14774343609716682029

noncomputable section

/-- A079779: a(n) = smallest prime > n*prime(n).

Offset 1, canonical program `A079779.P14774343609716682029`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033286, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079779 (n : ℕ) : ℤ :=
  A079779.P14774343609716682029.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033286, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079779.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080192.P1744504672858969870

`A000040(eq[1, A059788(n+2)/A059788(n+1)]+1)`
-/

namespace A080192.P1744504672858969870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059788 (n + 2) : ℚ) / (A059788 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A080192.P1744504672858969870

noncomputable section

/-- A080192: Complement of A080191 relative to A000040. Prime p is a term iff there is no prime between 2*p and 2*q, where q is the next prime after p.

Offset 1, canonical program `A080192.P1744504672858969870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A080192 (n : ℕ) : ℤ :=
  A080192.P1744504672858969870.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A080192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081531.P7633572976891130999

`A045344(lt[1, A082886(n+1)])`
-/

namespace A081531.P7633572976891130999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A081531.P7633572976891130999

noncomputable section

/-- A081531: Primes p such that (r-p)/log(p) > 2, where r is the next prime after p.

Offset 1, canonical program `A081531.P7633572976891130999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A081531 (n : ℕ) : ℤ :=
  A081531.P7633572976891130999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A081531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082522.P5892597509266673484

`A050376(n+1)²`
-/

namespace A082522.P5892597509266673484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) ^ 2

end

end A082522.P5892597509266673484

noncomputable section

/-- A082522: Numbers of the form p^(2^k) with p prime and k>0.

Offset 1, canonical program `A082522.P5892597509266673484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082522 (n : ℕ) : ℤ :=
  A082522.P5892597509266673484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082522.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083854.P7100940027082630718

`lt[1, A000034(A125061(n))]`
-/

namespace A083854.P7100940027082630718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A125061 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083854.P7100940027082630718

noncomputable section

/-- A083854: Numbers that are squares, twice squares, three times squares, or six times squares, i.e., numbers whose squarefree part divides 6.

Offset 0, canonical program `A083854.P7100940027082630718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 267 terms. -/
def A083854 (n : ℕ) : ℤ :=
  (A083854.P7100940027082630718.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 267 terms. -/
def A083854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084344.P2536127171943321024

`∩[A025583(n+1), A333326(n+1)]`
-/

namespace A084344.P2536127171943321024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084344.P2536127171943321024

noncomputable section

/-- A084344: A077982(n) >= 5.

Offset 1, canonical program `A084344.P2536127171943321024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4883 terms. -/
def A084344 (n : ℕ) : ℤ :=
  (A084344.P2536127171943321024.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4883 terms. -/
def A084344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084988.P10462834294168288044

`∩[A084984(n+1), A104211(n+1)]`
-/

namespace A084988.P10462834294168288044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084988.P10462834294168288044

noncomputable section

/-- A084988: Numbers made with nonprime digits such that the sum of the digits is also not prime.

Offset 1, canonical program `A084988.P10462834294168288044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1263 terms. -/
def A084988 (n : ℕ) : ℤ :=
  (A084988.P10462834294168288044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1263 terms. -/
def A084988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085057.P15424866120729747992

`A069113(n+1)`
-/

namespace A085057.P15424866120729747992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069113 (n + 1)

end

end A085057.P15424866120729747992

noncomputable section

/-- A085057: a(n) is the smallest integer of the form a*b*c.../p*q*r..., where the numerator and the denominator contain n numbers each and a,b,c,...p,q,r... are all the integers from 1 to 2n.

Offset 1, canonical program `A085057.P15424866120729747992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A085057 (n : ℕ) : ℤ :=
  A085057.P15424866120729747992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A085057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086046.P12566534839293457463

`∑[A014613(n+1)]`
-/

namespace A086046.P12566534839293457463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086046.P12566534839293457463

noncomputable section

/-- A086046: Sum of first n 4-almost primes.

Offset 1, canonical program `A086046.P12566534839293457463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086046 (n : ℕ) : ℤ :=
  A086046.P12566534839293457463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087030.P1288497495494676247

`2*A151800(n+1)-(n+1)`
-/

namespace A087030.P1288497495494676247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151800 (n + 1) - (n + 1 : ℤ)

end

end A087030.P1288497495494676247

noncomputable section

/-- A087030: n "reflected" in the next prime: a(n)=2p-n, p is smallest prime > n.

Offset 1, canonical program `A087030.P1288497495494676247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087030 (n : ℕ) : ℤ :=
  A087030.P1288497495494676247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087207.P18306598900717130858

`∑{p}[n+1, A048675(#)]`
-/

namespace A087207.P18306598900717130858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A048675 p

end

end A087207.P18306598900717130858

noncomputable section

/-- A087207: A binary representation of the primes that divide a number, shown in decimal.

Offset 1, canonical program `A087207.P18306598900717130858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A087207 (n : ℕ) : ℤ :=
  A087207.P18306598900717130858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A087207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087247.P1816243731063758448

`filter[A087246(n+1), A005171(#)]`
-/

namespace A087247.P1816243731063758448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A087247.P1816243731063758448

noncomputable section

/-- A087247: Squarefree deficient nonprime numbers.

Offset 1, canonical program `A087247.P1816243731063758448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7929 terms. -/
def A087247 (n : ℕ) : ℤ :=
  A087247.P1816243731063758448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7929 terms. -/
def A087247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087472.P6974076248790329574

`A031346(A056709(2*(n+1)))*A031346(n+1)`
-/

namespace A087472.P6974076248790329574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A056709 (2 * (n + 1))).toNat * A031346 (n + 1)

end

end A087472.P6974076248790329574

noncomputable section

/-- A087472: Number of iterations required for the function f(n) to reach a single digit, where f(n) is the product of the two numbers formed from the alternating digits of n.

Offset 1, canonical program `A087472.P6974076248790329574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A087472 (n : ℕ) : ℤ :=
  A087472.P6974076248790329574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A087472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088709.P16139510648427696938

`filter[A007422(n+1), A296211(#)]`
-/

namespace A088709.P16139510648427696938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A088709.P16139510648427696938

noncomputable section

/-- A088709: Numbers m that are a product of two primes j and k such that m+j+k is prime.

Offset 1, canonical program `A088709.P16139510648427696938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088709 (n : ℕ) : ℤ :=
  A088709.P16139510648427696938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089189.P12304478124887923302

`p?[A212793(n+1)+1+n]`
-/

namespace A089189.P12304478124887923302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089189.P12304478124887923302

noncomputable section

/-- A089189: Primes p such that p-1 is cubefree.

Offset 1, canonical program `A089189.P12304478124887923302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6712 terms. -/
def A089189 (n : ℕ) : ℤ :=
  A089189.P12304478124887923302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6712 terms. -/
def A089189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089191.P6897987938072641486

`p?[n*A212793(n+1)]`
-/

namespace A089191.P6897987938072641486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089191.P6897987938072641486

noncomputable section

/-- A089191: Primes p such that p+1 is cubefree.

Offset 1, canonical program `A089191.P6897987938072641486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6700 terms. -/
def A089191 (n : ℕ) : ℤ :=
  A089191.P6897987938072641486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6700 terms. -/
def A089191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089199.P16774325504568410811

`p?[n*(1-A212793(n+1))]`
-/

namespace A089199.P16774325504568410811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A212793 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089199.P16774325504568410811

noncomputable section

/-- A089199: Primes p such that p+1 is divisible by a cube.

Offset 1, canonical program `A089199.P16774325504568410811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2892 terms. -/
def A089199 (n : ℕ) : ℤ :=
  A089199.P16774325504568410811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2892 terms. -/
def A089199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089250.P7432070379802121157

`A010879(A097902(∑[n+2]-1)+2)`
-/

namespace A089250.P7432070379802121157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A097902 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 2).toNat

end

end A089250.P7432070379802121157

noncomputable section

/-- A089250: Add 2 (mod 10) to each decimal digit of Pi.

Offset 1, canonical program `A089250.P7432070379802121157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A089250 (n : ℕ) : ℤ :=
  A089250.P7432070379802121157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A089250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089402.P12649387450735140950

`(A000108(n)+A089408(n))/2`
-/

namespace A089402.P12649387450735140950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n + A089408 n : ℚ) / 2

end

end A089402.P12649387450735140950

noncomputable section

/-- A089402: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A089864.

Offset 0, canonical program `A089402.P12649387450735140950`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089408, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089402 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089402.P12649387450735140950.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089408, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089721.P6798565344662168487

`∩[A042992(n+1), A327752(n+1)]`
-/

namespace A089721.P6798565344662168487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P6798565344662168487

noncomputable section

/-- A089721: Primes ending in 1 such that floor(p/7) ends in a digit > 3.

Offset 1, canonical program `A089721.P6798565344662168487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. -/
def A089721 (n : ℕ) : ℤ :=
  (A089721.P6798565344662168487.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. -/
def A089721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089960.P1978568559231808263

`∩[A003233(n+1), A247425(n+1)]`
-/

namespace A089960.P1978568559231808263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089960.P1978568559231808263

noncomputable section

/-- A089960: Positions in A089959 where 4 occurs.

Offset 1, canonical program `A089960.P1978568559231808263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A089960 (n : ℕ) : ℤ :=
  (A089960.P1978568559231808263.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A089960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090633.P11231112395834428156

`A126646(n)/A014491(n+1)`
-/

namespace A090633.P11231112395834428156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 n : ℚ) / (A014491 (n + 1) : ℚ)

end

end A090633.P11231112395834428156

noncomputable section

/-- A090633: Start with the sequence [1, 1/2, 1/3, ..., 1/n]; form new sequence of n-1 terms by taking averages of successive terms; repeat until reach a single number F(n); a(n) = numerator of F(n).

Offset 1, canonical program `A090633.P11231112395834428156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A090633 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090633.P11231112395834428156.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A090633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090634.P4588373203180179203

`∑[A001792(n)]/A014491(n+1)`
-/

namespace A090634.P4588373203180179203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014491 (n + 1) : ℚ)

end

end A090634.P4588373203180179203

noncomputable section

/-- A090634: Start with the sequence [1, 1/2, 1/3, ..., 1/n]; form new sequence of n-1 terms by taking averages of successive terms; repeat until reach a single number F(n); a(n) = denominator of F(n).

Offset 1, canonical program `A090634.P4588373203180179203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A090634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090634.P4588373203180179203.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A090634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091633.P12351698367247899697

`∩[A030096(n+1), A136333(n+1)]`
-/

namespace A091633.P12351698367247899697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P12351698367247899697

noncomputable section

/-- A091633: Primes having only {1, 3, 7, 9} as digits.

Offset 1, canonical program `A091633.P12351698367247899697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1915 terms. -/
def A091633 (n : ℕ) : ℤ :=
  (A091633.P12351698367247899697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1915 terms. -/
def A091633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092785.P12558785064700393744

`(-1)^n*A072547(n+2)+1`
-/

namespace A092785.P12558785064700393744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A072547 (n + 2) + 1

end

end A092785.P12558785064700393744

noncomputable section

/-- A092785: a(n) = sum(sum(binomial(j-n-1,m),m=0..n),j=0..n).

Offset 0, canonical program `A092785.P12558785064700393744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A092785 (n : ℕ) : ℤ :=
  A092785.P12558785064700393744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A092785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093503.P1422518383799361702

`A151800(a(n-1)-1+n)` with `a(0)=2`
-/

namespace A093503.P1422518383799361702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (a (n - 1) - 1 + (n : ℤ)).toNat

end

end A093503.P1422518383799361702

noncomputable section

/-- A093503: a(0) = 2, a(n) = least prime >= a(n-1) + n.

Offset 0, canonical program `A093503.P1422518383799361702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A093503 (n : ℕ) : ℤ :=
  A093503.P1422518383799361702.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A093503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095880.P1900210885246212965

`eq[1, A000034(A112310(n))]`
-/

namespace A095880.P1900210885246212965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A112310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095880.P1900210885246212965

noncomputable section

/-- A095880: Numbers whose lazy Fibonacci representation has an even number of summands.

Offset 1, canonical program `A095880.P1900210885246212965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A095880 (n : ℕ) : ℤ :=
  (A095880.P1900210885246212965.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A095880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096501.P6057643749581904713

`Δ[∑{d}[A136548(n+1), #+2]]`
-/

namespace A096501.P6057643749581904713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A096501.P6057643749581904713

noncomputable section

/-- A096501: Difference between primes preceding n+1 and n.

Offset 1, canonical program `A096501.P6057643749581904713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A096501 (n : ℕ) : ℤ :=
  A096501.P6057643749581904713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A096501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096784.P17728823887735339806

`floor(A060254(n+1)/2)`
-/

namespace A096784.P17728823887735339806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060254 (n + 1) : ℚ) / 2⌋

end

end A096784.P17728823887735339806

noncomputable section

/-- A096784: Numbers k such that both k and k+1 are composite numbers that sum up to a prime.

Offset 1, canonical program `A096784.P17728823887735339806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096784 (n : ℕ) : ℤ :=
  A096784.P17728823887735339806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096844.P1230674438731432842

`eq[A249121(n), A304440(n)]`
-/

namespace A096844.P1230674438731432842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304440 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096844.P1230674438731432842

noncomputable section

/-- A096844: Numbers where 0 is the only even decimal digit.

Offset 1, canonical program `A096844.P1230674438731432842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A096844 (n : ℕ) : ℤ :=
  (A096844.P1230674438731432842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A096844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097050.P5885192772138064070

`A151800(A000217(n))`
-/

namespace A097050.P5885192772138064070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000217 n).toNat

end

end A097050.P5885192772138064070

noncomputable section

/-- A097050: Smallest prime > n(n+1)/2.

Offset 0, canonical program `A097050.P5885192772138064070`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097050 (n : ℕ) : ℤ :=
  A097050.P5885192772138064070.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098084.P2888162765627818762

`A151800(A001043(n+1)-1)-A001043(n+1)`
-/

namespace A098084.P2888162765627818762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001043 (n + 1) - 1).toNat - A001043 (n + 1)

end

end A098084.P2888162765627818762

noncomputable section

/-- A098084: a(n) satisfies P(n) + P(n+1) + a(n) = least prime >= P(n) + P(n+1), where P(i)=i-th prime.

Offset 1, canonical program `A098084.P2888162765627818762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A098084 (n : ℕ) : ℤ :=
  A098084.P2888162765627818762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A098084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098357.P18110220101278842981

`A088526(n+1)+A005171(n+2)`
-/

namespace A098357.P18110220101278842981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088526 (n + 1) + A005171 (n + 2)

end

end A098357.P18110220101278842981

noncomputable section

/-- A098357: a(n) = A061017(n) - pi(n+1).

Offset 1, canonical program `A098357.P18110220101278842981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098357 (n : ℕ) : ℤ :=
  A098357.P18110220101278842981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098391.P7594412131589195022

`A000040(n+1)-A098392(n+1)`
-/

namespace A098391.P7594412131589195022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A098392 (n + 1)

end

end A098391.P7594412131589195022

noncomputable section

/-- A098391: a(n) = Log2(Log2(prime(n))), where Log2 = A000523.

Offset 1, canonical program `A098391.P7594412131589195022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098391 (n : ℕ) : ℤ :=
  A098391.P7594412131589195022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098726.P16121288803637439389

`3-Δ[A037203(n)]`
-/

namespace A098726.P16121288803637439389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A098726.P16121288803637439389

noncomputable section

/-- A098726: Take three consecutive primes starting with the n-th prime. Calculate d(i,j) = abs(prime(i) - prime(j)), for all {i,j}, i.e., all possible differences. a(n) is the number of distinct differences (which can be either 3 or 2).

Offset 1, canonical program `A098726.P16121288803637439389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098726 (n : ℕ) : ℤ :=
  A098726.P16121288803637439389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099019.P264222523887219230

`∩[A269345(n+1)+2, A269345(n+1)]`
-/

namespace A099019.P264222523887219230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269345 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099019.P264222523887219230

noncomputable section

/-- A099019: Odd composite numbers k such that k-2 and k+2 are also composite.

Offset 1, canonical program `A099019.P264222523887219230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7461 terms. -/
def A099019 (n : ℕ) : ℤ :=
  (A099019.P264222523887219230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7461 terms. -/
def A099019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099327.P17907964122088018001

`A134389(n)+A210736(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A099327.P17907964122088018001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134389 n + (A210736 n + 2 * a (n - 1))

end

end A099327.P17907964122088018001

noncomputable section

/-- A099327: Expansion of ((1-x)*sqrt(1+2x) + (1+x)*sqrt(1-2x))/(2*(1-2x)^(5/2)).

Offset 0, canonical program `A099327.P17907964122088018001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A099327 (n : ℕ) : ℤ :=
  A099327.P17907964122088018001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A099327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100549.P3441829071280898481

`A136548(A051903(n+1)+2)`
-/

namespace A100549.P3441829071280898481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A051903 (n + 1) + 2).toNat

end

end A100549.P3441829071280898481

noncomputable section

/-- A100549: Let n = 2^e_2 * 3^e_ * 5^e_ * ... be the prime factorization of n; then a(n) = largest prime <= 1 + max{e_2, e_3, e_5, ...}; a(1) = 1 by convention.

Offset 1, canonical program `A100549.P3441829071280898481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100549 (n : ℕ) : ℤ :=
  A100549.P3441829071280898481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100777.P7440440407592815012

`∏[abs(A358272(n+1))]`
-/

namespace A100777.P7440440407592815012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A358272 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P7440440407592815012

noncomputable section

/-- A100777: Square-factorial numbers: a(1) = 1, a(n+1) = a(n) * largest square divisor of (n+1).

Offset 1, canonical program `A100777.P7440440407592815012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A100777 (n : ℕ) : ℤ :=
  A100777.P7440440407592815012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A100777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100861.P8415527314952672000

`A059344(n)/2^A055087(n)`
-/

namespace A100861.P8415527314952672000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059344 n : ℚ) / (2 : ℚ) ^ (A055087 n : ℤ)

end

end A100861.P8415527314952672000

noncomputable section

/-- A100861: Triangle of Bessel numbers read by rows: T(n,k) is the number of k-matchings of the complete graph K(n).

Offset 0, canonical program `A100861.P8415527314952672000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. -/
def A100861 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100861.P8415527314952672000.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. -/
def A100861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100959.P16394207133343140520

`∪[A008578(n+1), A033942(n+1)]`
-/

namespace A100959.P16394207133343140520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100959.P16394207133343140520

noncomputable section

/-- A100959: Non-semiprimes.

Offset 1, canonical program `A100959.P16394207133343140520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100959 (n : ℕ) : ℤ :=
  (A100959.P16394207133343140520.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101300.P7599830743545042440

`A151800(A151800(n))`
-/

namespace A101300.P7599830743545042440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 n).toNat

end

end A101300.P7599830743545042440

noncomputable section

/-- A101300: Second-smallest prime larger than n.

Offset 0, canonical program `A101300.P7599830743545042440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101300 (n : ℕ) : ℤ :=
  A101300.P7599830743545042440.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A102731.P15648990086754285571

`A102656(n+1)-2`
-/

namespace A102731.P15648990086754285571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102656 (n + 1) - 2

end

end A102731.P15648990086754285571

noncomputable section

/-- A102731: Numbers k such that 11*k + 23 is prime.

Offset 1, canonical program `A102731.P15648990086754285571`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102656, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102731 (n : ℕ) : ℤ :=
  A102731.P15648990086754285571.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102656, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102731.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A103339.P4822592513541350289

`lcm(A034448(n+1), A298473(n+1))/A034448(n+1)`
-/

namespace A103339.P4822592513541350289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A034448 (n + 1)) (A298473 (n + 1)) : ℚ) / (A034448 (n + 1) : ℚ)

end

end A103339.P4822592513541350289

noncomputable section

/-- A103339: Numerator of the unitary harmonic mean (i.e., the harmonic mean of the unitary divisors) of the positive integer n.

Offset 1, canonical program `A103339.P4822592513541350289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103339 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A103339.P4822592513541350289.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103340.P10740590519268141763

`A034448(n+1)/gcd(A034448(n+1), A298473(n+1))`
-/

namespace A103340.P10740590519268141763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (Int.gcd (A034448 (n + 1)) (A298473 (n + 1)) : ℚ)

end

end A103340.P10740590519268141763

noncomputable section

/-- A103340: Denominator of the unitary harmonic mean (i.e., the harmonic mean of the unitary divisors) of the positive integer n.

Offset 1, canonical program `A103340.P10740590519268141763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103340 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A103340.P10740590519268141763.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104163.P9304541644358022485

`(3*A158708(n+2)-1)/2`
-/

namespace A104163.P9304541644358022485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A158708 (n + 2) - 1 : ℚ) / 2

end

end A104163.P9304541644358022485

noncomputable section

/-- A104163: Primes p such that (2p+1)/3 is prime.

Offset 1, canonical program `A104163.P9304541644358022485`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158708, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104163 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A104163.P9304541644358022485.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158708, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104860.P17528912676967032139

`A151800(p?[abs(xor(n, -2))]+1+n)`
-/

namespace A104860.P17528912676967032139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 + (n : ℤ)).toNat

end

end A104860.P17528912676967032139

noncomputable section

/-- A104860: Prime next to (n + n-th prime).

Offset 1, canonical program `A104860.P17528912676967032139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A104860 (n : ℕ) : ℤ :=
  A104860.P17528912676967032139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A104860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106089.P9950603822401867982

`∩[A023226(n+1), A023231(n+1)]`
-/

namespace A106089.P9950603822401867982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106089.P9950603822401867982

noncomputable section

/-- A106089: Primes p such that 7*p + 8 and 8*p + 7 are primes.

Offset 1, canonical program `A106089.P9950603822401867982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2775 terms. -/
def A106089 (n : ℕ) : ℤ :=
  (A106089.P9950603822401867982.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2775 terms. -/
def A106089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106090.P16719435767229659218

`∩[A023227(n+1), A023239(n+1)]`
-/

namespace A106090.P16719435767229659218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P16719435767229659218

noncomputable section

/-- A106090: Prime numbers p such that 10p+7 and 7p+10 are primes.

Offset 1, canonical program `A106090.P16719435767229659218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3035 terms. -/
def A106090 (n : ℕ) : ℤ :=
  (A106090.P16719435767229659218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3035 terms. -/
def A106090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106102.P3375998700621158916

`p?[A084373(n+1)]`
-/

namespace A106102.P3375998700621158916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106102.P3375998700621158916

noncomputable section

/-- A106102: Primes with smallest digit 2.

Offset 1, canonical program `A106102.P3375998700621158916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6541 terms. -/
def A106102 (n : ℕ) : ℤ :=
  A106102.P3375998700621158916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6541 terms. -/
def A106102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106118.P5269121123413051575

`p?[A136399(n+1)]`
-/

namespace A106118.P5269121123413051575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106118.P5269121123413051575

noncomputable section

/-- A106118: Primes with maximal digit > 1.

Offset 1, canonical program `A106118.P5269121123413051575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A106118 (n : ℕ) : ℤ :=
  A106118.P5269121123413051575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A106118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106543.P16776134595658652118

`filter[A007916(n+1), A005171(#)]`
-/

namespace A106543.P16776134595658652118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A106543.P16776134595658652118

noncomputable section

/-- A106543: Composite numbers that are not perfect powers.

Offset 1, canonical program `A106543.P16776134595658652118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8758 terms. -/
def A106543 (n : ℕ) : ℤ :=
  A106543.P16776134595658652118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8758 terms. -/
def A106543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106755.P15161756311865311751

`p?[A143164(n+1)]`
-/

namespace A106755.P15161756311865311751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106755.P15161756311865311751

noncomputable section

/-- A106755: Primes p with digital sum equal to 13.

Offset 1, canonical program `A106755.P15161756311865311751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 980 terms. -/
def A106755 (n : ℕ) : ℤ :=
  A106755.P15161756311865311751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 980 terms. -/
def A106755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106756.P12145238415498527313

`p?[A143164(n+1)+1]`
-/

namespace A106756.P12145238415498527313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106756.P12145238415498527313

noncomputable section

/-- A106756: Primes with digit sum = 14.

Offset 1, canonical program `A106756.P12145238415498527313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1218 terms. -/
def A106756 (n : ℕ) : ℤ :=
  A106756.P12145238415498527313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1218 terms. -/
def A106756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106881.P10335683123271550517

`∩[A191026(n+1), A038872(n+1)]`
-/

namespace A106881.P10335683123271550517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P10335683123271550517

noncomputable section

/-- A106881: Primes of the form x^2+xy+9y^2.

Offset 1, canonical program `A106881.P10335683123271550517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4978 terms. -/
def A106881 (n : ℕ) : ℤ :=
  (A106881.P10335683123271550517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4978 terms. -/
def A106881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107136.P8570020010701659730

`∪[A139854(n+1), A139860(n+1)]`
-/

namespace A107136.P8570020010701659730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P8570020010701659730

noncomputable section

/-- A107136: Primes of the form 3x^2 + 10y^2.

Offset 1, canonical program `A107136.P8570020010701659730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107136 (n : ℕ) : ℤ :=
  (A107136.P8570020010701659730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107749.P144943964937098899

`A000203(n+1)*A034448(n+1)/A069184(n+1)`
-/

namespace A107749.P144943964937098899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A034448 (n + 1) : ℚ) / (A069184 (n + 1) : ℚ)

end

end A107749.P144943964937098899

noncomputable section

/-- A107749: OrdinaryUnitarySigma(n): If n = Product p_i^r_i then OUSigma(n) = Sigma(2^r_1)*UnitarySigma(n/2^r_1).

Offset 1, canonical program `A107749.P144943964937098899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107749 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107749.P144943964937098899.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108222.P17402844413063193059

`eq[A005171(n+1)+1, A010051(A075119(n+1)+1)]+1`
-/

namespace A108222.P17402844413063193059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A075119 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A108222.P17402844413063193059

noncomputable section

/-- A108222: Primes p such that ceiling(sqrt(p)) = prime.

Offset 1, canonical program `A108222.P17402844413063193059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A108222 (n : ℕ) : ℤ :=
  (A108222.P17402844413063193059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A108222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108601.P2870284263787811406

`(A138622(n+1)+65)*2`
-/

namespace A108601.P2870284263787811406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138622 (n + 1) + 65) * 2

end

end A108601.P2870284263787811406

noncomputable section

/-- A108601: Numbers n such that 7*n - 911 is prime.

Offset 1, canonical program `A108601.P2870284263787811406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108601 (n : ℕ) : ℤ :=
  A108601.P2870284263787811406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108666.P2376190023294096623

`n/2*A123164(n)`
-/

namespace A108666.P2376190023294096623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A123164 n : ℚ)

end

end A108666.P2376190023294096623

noncomputable section

/-- A108666: Number of (1,1)-steps in all Delannoy paths of length n.

Offset 0, canonical program `A108666.P2376190023294096623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A108666 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A108666.P2376190023294096623.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A108666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108775.P7069508120064595600

`floor(A017665(n+1)/A017666(n+1))`
-/

namespace A108775.P7069508120064595600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017665 (n + 1) : ℚ) / (A017666 (n + 1) : ℚ)⌋

end

end A108775.P7069508120064595600

noncomputable section

/-- A108775: a(n) = floor(sigma(n)/n).

Offset 1, canonical program `A108775.P7069508120064595600`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A108775 (n : ℕ) : ℤ :=
  A108775.P7069508120064595600.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A108775.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109274.P11602195938365358574

`A307390(n+1)-1`
-/

namespace A109274.P11602195938365358574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307390 (n + 1) - 1

end

end A109274.P11602195938365358574

noncomputable section

/-- A109274: Numbers k such that k+1 is prime, 2k+1 composite.

Offset 1, canonical program `A109274.P11602195938365358574`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307390, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109274 (n : ℕ) : ℤ :=
  A109274.P11602195938365358574.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307390, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110169.P12142494471206816610

`A110170(A025581(n))`
-/

namespace A110169.P12142494471206816610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 (A025581 n).toNat

end

end A110169.P12142494471206816610

noncomputable section

/-- A110169: Triangle read by rows: T(n,k) (0<=k<=n) is the number of Delannoy paths of length n that start with exactly k (1,1) steps.

Offset 0, canonical program `A110169.P12142494471206816610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8911 terms. -/
def A110169 (n : ℕ) : ℤ :=
  A110169.P12142494471206816610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8911 terms. -/
def A110169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110227.P17854938781314769759

`record[A082344(A014613(n+4))]`
-/

namespace A110227.P17854938781314769759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (A014613 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110227.P17854938781314769759

noncomputable section

/-- A110227: 4-almost primes p * q * r * s relatively prime to p + q + r + s.

Offset 1, canonical program `A110227.P17854938781314769759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5177 terms. -/
def A110227 (n : ℕ) : ℤ :=
  A110227.P17854938781314769759.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5177 terms. -/
def A110227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110299.P14323801455997029878

`A125180(n+2)-A000040(n+2)`
-/

namespace A110299.P14323801455997029878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125180 (n + 2) - A000040 (n + 2)

end

end A110299.P14323801455997029878

noncomputable section

/-- A110299: a(n) = Sum_{i=0..n-1} 2^i*prime(n-i).

Offset 1, canonical program `A110299.P14323801455997029878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A125180, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A110299 (n : ℕ) : ℤ :=
  A110299.P14323801455997029878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A125180, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A110299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110581.P9399505698075329016

`p?[A014682(A307390(n+1)+1)]`
-/

namespace A110581.P9399505698075329016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A307390 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110581.P9399505698075329016

noncomputable section

/-- A110581: Primes p such that 2p-1 is prime, but 4p-3 is not prime.

Offset 1, canonical program `A110581.P9399505698075329016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. -/
def A110581 (n : ℕ) : ℤ :=
  A110581.P9399505698075329016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. -/
def A110581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110854.P2471624004047318377

`A155750(n+1)-A155067(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110854.P2471624004047318377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155750 (n + 1) - A155067 (n + 1)

end

end A110854.P2471624004047318377

noncomputable section

/-- A110854: A155750(n)-A155067(n) = prime(2n+2)-prime(2n+1)-prime(2n)+prime(2n-1).

Offset 1, canonical program `A110854.P2471624004047318377`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A155067, A155750, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A110854 (n : ℕ) : ℤ :=
  A110854.P2471624004047318377.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A155067, A155750, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A110854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111087.P4608048223291234418

`∪[A033942(n+1), A001249(n)]`
-/

namespace A111087.P4608048223291234418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P4608048223291234418

noncomputable section

/-- A111087: Neither primes nor semiprimes.

Offset 1, canonical program `A111087.P4608048223291234418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111087 (n : ℕ) : ℤ :=
  (A111087.P4608048223291234418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111693.P13823889226538534485

`or(1, A007491(Δ[n²]))`
-/

namespace A111693.P13823889226538534485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007491 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A111693.P13823889226538534485

noncomputable section

/-- A111693: a(n) = nextprime((2*n-1)^2) for n >= 2, a(1) = 3.

Offset 1, canonical program `A111693.P13823889226538534485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A111693 (n : ℕ) : ℤ :=
  A111693.P13823889226538534485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A111693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111739.P2337404656181389244

`A151800(A272470(n+1))-A272470(n+1)`
-/

namespace A111739.P2337404656181389244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A272470 (n + 1)).toNat - A272470 (n + 1)

end

end A111739.P2337404656181389244

noncomputable section

/-- A111739: Distance between k*(n-th prime) and next prime, k=7 case.

Offset 1, canonical program `A111739.P2337404656181389244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1676 terms. -/
def A111739 (n : ℕ) : ℤ :=
  A111739.P2337404656181389244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1676 terms. -/
def A111739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113651.P7839326436900621094

`A004273(A051831(n+1))+A051831(n+1)²`
-/

namespace A113651.P7839326436900621094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A051831 (n + 1)).toNat + A051831 (n + 1) ^ 2

end

end A113651.P7839326436900621094

noncomputable section

/-- A113651: 2*JacobiSymbol(p,5) mod p^2 for p=prime(n).

Offset 1, canonical program `A113651.P7839326436900621094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A113651 (n : ℕ) : ℤ :=
  A113651.P7839326436900621094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A113651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114127.P17655491263968611698

`filter[A320632(n+1), A293449(#)]`
-/

namespace A114127.P17655491263968611698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A114127.P17655491263968611698

noncomputable section

/-- A114127: Numbers that factorize into a prime number of prime factors each raised to a prime exponent.

Offset 1, canonical program `A114127.P17655491263968611698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A114127 (n : ℕ) : ℤ :=
  A114127.P17655491263968611698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A114127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114404.P5917876743805946203

`A014613(n+2)-A014613(n+1)`
-/

namespace A114404.P5917876743805946203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 2) - A014613 (n + 1)

end

end A114404.P5917876743805946203

noncomputable section

/-- A114404: 4-almost prime gaps. First differences of A014613.

Offset 1, canonical program `A114404.P5917876743805946203`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114404 (n : ℕ) : ℤ :=
  A114404.P5917876743805946203.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114441.P1366112869479398456

`record[A025480(A114634(n+1))]`
-/

namespace A114441.P1366112869479398456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A114634 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114441.P1366112869479398456

noncomputable section

/-- A114441: Indices of 3-almost prime pentagonal numbers.

Offset 1, canonical program `A114441.P1366112869479398456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 796 terms. -/
def A114441 (n : ℕ) : ℤ :=
  A114441.P1366112869479398456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 796 terms. -/
def A114441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115143.P17301981336238266836

`A126079(n)/A329683(n)`
-/

namespace A115143.P17301981336238266836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126079 n : ℚ) / (A329683 n : ℚ)

end

end A115143.P17301981336238266836

noncomputable section

/-- A115143: a(n) = -4*binomial(2*n-5, n-4)/n for n > 0 and a(0) = 1.

Offset 0, canonical program `A115143.P17301981336238266836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A115143 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115143.P17301981336238266836.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A115143.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115299.P3852664111616169034

`∑{digits}[A073730(n+1), #]`
-/

namespace A115299.P3852664111616169034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A115299.P3852664111616169034

noncomputable section

/-- A115299: Greatest digit of n + least digit of n. Different from A088133.

Offset 1, canonical program `A115299.P3852664111616169034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115299 (n : ℕ) : ℤ :=
  (A115299.P3852664111616169034.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115300.P4396649241163166973

`∏{digits}[A073730(n+1), #]`
-/

namespace A115300.P4396649241163166973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A115300.P4396649241163166973

noncomputable section

/-- A115300: Greatest digit of n * least digit of n.

Offset 1, canonical program `A115300.P4396649241163166973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115300 (n : ℕ) : ℤ :=
  (A115300.P4396649241163166973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115606.P15732138880714301943

`A102540(n)+a(n-1)` with `a(0)=0`
-/

namespace A115606.P15732138880714301943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A102540 n + a (n - 1)

end

end A115606.P15732138880714301943

noncomputable section

/-- A115606: Partial sums of A102540 (primes that are not Chen primes).

Offset 0, canonical program `A115606.P15732138880714301943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115606 (n : ℕ) : ℤ :=
  A115606.P15732138880714301943.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116974.P10406584669402570229

`record[A151800(A151800(n))-A227291(n+1)]`
-/

namespace A116974.P10406584669402570229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 n).toNat - A227291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116974.P10406584669402570229

noncomputable section

/-- A116974: Numbers n for which the sum of the proper divisors equals the product of the proper divisors.

Offset 1, canonical program `A116974.P10406584669402570229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9594 terms. -/
def A116974 (n : ℕ) : ℤ :=
  A116974.P10406584669402570229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9594 terms. -/
def A116974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117486.P6653836064392567904

`A210068(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A117486.P6653836064392567904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A210068 n - a (n - 2)

end

end A117486.P6653836064392567904

noncomputable section

/-- A117486: Expansion of 1/((1-x)*(1-x^2)*(1-x^3)*(1-x^4))^2.

Offset 0, canonical program `A117486.P6653836064392567904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117486 (n : ℕ) : ℤ :=
  A117486.P6653836064392567904.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118144.P2885920573460353147

`∑{e}[A118534(n+1), #]`
-/

namespace A118144.P2885920573460353147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118534 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A118144.P2885920573460353147

noncomputable section

/-- A118144: Numbers of prime factors of l, where l is defined in A118534.

Offset 1, canonical program `A118144.P2885920573460353147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118144 (n : ℕ) : ℤ :=
  (A118144.P2885920573460353147.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118753.P10937995710031611133

`A151800(4*n)`
-/

namespace A118753.P10937995710031611133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (4 * n)

end

end A118753.P10937995710031611133

noncomputable section

/-- A118753: First prime after 4n. Smallest prime >= 4*n. Bisection of A060264.

Offset 0, canonical program `A118753.P10937995710031611133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118753 (n : ℕ) : ℤ :=
  A118753.P10937995710031611133.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118950.P7310832611478025886

`comp[A084984(n+1)]`
-/

namespace A118950.P7310832611478025886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118950.P7310832611478025886

noncomputable section

/-- A118950: Numbers containing at least one prime digit.

Offset 1, canonical program `A118950.P7310832611478025886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118950 (n : ℕ) : ℤ :=
  (A118950.P7310832611478025886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119257.P4892958941628964632

`A151800(a(n-1))+1-A175851(n+1)` with `a(0)=1`
-/

namespace A119257.P4892958941628964632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (a (n - 1)).toNat + (1 - A175851 (n + 1))

end

end A119257.P4892958941628964632

noncomputable section

/-- A119257: A permutation of the positive integers formed by reversing the order of the composites within each run of composites (1 and primes are left alone).

Offset 1, canonical program `A119257.P4892958941628964632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119257 (n : ℕ) : ℤ :=
  A119257.P4892958941628964632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119973.P6279921155899130007

`eq[A038189(n), A125061(n)]`
-/

namespace A119973.P6279921155899130007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125061 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119973.P6279921155899130007

noncomputable section

/-- A119973: Numbers of the form (4k+1)*2^j which are not a sum of two squares.

Offset 1, canonical program `A119973.P6279921155899130007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A119973 (n : ℕ) : ℤ :=
  (A119973.P6279921155899130007.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A119973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120045.P16719681067314808438

`A014613(10^n)`
-/

namespace A120045.P16719681067314808438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (10 ^ n)

end

end A120045.P16719681067314808438

noncomputable section

/-- A120045: The (10^n)-th 4-almost prime.

Offset 0, canonical program `A120045.P16719681067314808438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120045 (n : ℕ) : ℤ :=
  A120045.P16719681067314808438.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120045.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A120944.P15601852327349088346

`eq[A005171(n+1), A051903(n+1)]+1`
-/

namespace A120944.P15601852327349088346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A120944.P15601852327349088346

noncomputable section

/-- A120944: Composite squarefree numbers.

Offset 1, canonical program `A120944.P15601852327349088346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120944 (n : ℕ) : ℤ :=
  (A120944.P15601852327349088346.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121559.P2620035417922548176

`A175077(n+2)-1`
-/

namespace A121559.P2620035417922548176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175077 (n + 2) - 1

end

end A121559.P2620035417922548176

noncomputable section

/-- A121559: Final result (0 or 1) under iterations of {r mod (max prime p <= r)} starting at r = n.

Offset 1, canonical program `A121559.P2620035417922548176`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175077, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121559 (n : ℕ) : ℤ :=
  A121559.P2620035417922548176.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175077, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121559.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121561.P3772356346203237130

`A175078(n+2)`
-/

namespace A121561.P3772356346203237130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 2)

end

end A121561.P3772356346203237130

noncomputable section

/-- A121561: The number of iterations of "subtract the largest prime less than or equal to the current value" to go from n to the limiting value 0 or 1.

Offset 1, canonical program `A121561.P3772356346203237130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121561 (n : ℕ) : ℤ :=
  A121561.P3772356346203237130.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123870.P12259030212221851623

`A214295(A136548(n))+a(A180446(n))+1` with `a(0)=4`
-/

namespace A123870.P12259030212221851623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A214295 (A136548 n).toNat + a (A180446 n).toNat + 1

end

end A123870.P12259030212221851623

noncomputable section

/-- A123870: Order of minimal triangulation of nonorientable closed surface with n cross-caps (N_n).

Offset 0, canonical program `A123870.P12259030212221851623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A123870 (n : ℕ) : ℤ :=
  A123870.P12259030212221851623.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A123870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124283.P18121148305681950538

`A014613(eq[1, ∑{e}[n, #]])`
-/

namespace A124283.P18121148305681950538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124283.P18121148305681950538

noncomputable section

/-- A124283: 4-almost primes indexed by primes.

Offset 1, canonical program `A124283.P18121148305681950538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A124283 (n : ℕ) : ℤ :=
  A124283.P18121148305681950538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A124283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124941.P16218630572969216122

`∩[A014613(n+1)-4, A014613(n+1)]`
-/

namespace A124941.P16218630572969216122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124941.P16218630572969216122

noncomputable section

/-- A124941: Numbers k such that k and k+4 are 4-almost primes.

Offset 1, canonical program `A124941.P16218630572969216122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1570 terms. -/
def A124941 (n : ℕ) : ℤ :=
  (A124941.P16218630572969216122.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1570 terms. -/
def A124941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125495.P14051159433659481115

`filter[A000069(n+2), A005171(#)]`
-/

namespace A125495.P14051159433659481115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A125495.P14051159433659481115

noncomputable section

/-- A125495: Composite odious numbers.

Offset 1, canonical program `A125495.P14051159433659481115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8717 terms. -/
def A125495 (n : ℕ) : ℤ :=
  A125495.P14051159433659481115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8717 terms. -/
def A125495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128200.P16307540476520705107

`∏{e}[A085155(n+1), #+1]`
-/

namespace A128200.P16307540476520705107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A128200.P16307540476520705107

noncomputable section

/-- A128200: Numbers of divisors of semiprime powers: A000005(A085155(n)).

Offset 1, canonical program `A128200.P16307540476520705107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128200 (n : ℕ) : ℤ :=
  (A128200.P16307540476520705107.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129389.P10422043623490851629

`eq[1, A355449(n+2)]`
-/

namespace A129389.P10422043623490851629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355449 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129389.P10422043623490851629

noncomputable section

/-- A129389: Numbers k such that the mean of 5 consecutive squares starting with k^2 is prime.

Offset 1, canonical program `A129389.P10422043623490851629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129389 (n : ℕ) : ℤ :=
  (A129389.P10422043623490851629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129492.P1594792937777551858

`∩[A002808(n+1), comp[A226221(n+1)]]`
-/

namespace A129492.P1594792937777551858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226221 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A129492.P1594792937777551858

noncomputable section

/-- A129492: Composite numbers k such that 2^k mod k is a power of 2.

Offset 1, canonical program `A129492.P1594792937777551858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3554 terms. -/
def A129492 (n : ℕ) : ℤ :=
  (A129492.P1594792937777551858.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3554 terms. -/
def A129492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131789.P1774439132879897327

`Δ[A083794(n+1)]`
-/

namespace A131789.P1774439132879897327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131789.P1774439132879897327

noncomputable section

/-- A131789: The length of the n-th run of identical consecutive values in the sequence A000005, where A000005(k) is the number of divisors of k.

Offset 1, canonical program `A131789.P1774439132879897327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A131789 (n : ℕ) : ℤ :=
  A131789.P1774439132879897327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A131789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132791.P2807201736206907755

`eq[0, A005171(A065713(n))]`
-/

namespace A132791.P2807201736206907755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A065713 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132791.P2807201736206907755

noncomputable section

/-- A132791: Numbers k such that the sum of the digits of 4^k is prime.

Offset 1, canonical program `A132791.P2807201736206907755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1621 terms. -/
def A132791 (n : ℕ) : ℤ :=
  (A132791.P2807201736206907755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1621 terms. -/
def A132791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133525.P8571172351566193877

`A133530(n+1)+A030078(n+4)`
-/

namespace A133525.P8571172351566193877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133530 (n + 1) + A030078 (n + 4)

end

end A133525.P8571172351566193877

noncomputable section

/-- A133525: Sum of third powers of four consecutive primes.

Offset 1, canonical program `A133525.P8571172351566193877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, A133530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133525 (n : ℕ) : ℤ :=
  A133525.P8571172351566193877.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, A133530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133525.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133526.P8358073913299201745

`A133531(n+1)+A030514(n+4)`
-/

namespace A133526.P8358073913299201745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133531 (n + 1) + A030514 (n + 4)

end

end A133526.P8358073913299201745

noncomputable section

/-- A133526: Sum of fourth powers of four consecutive primes.

Offset 1, canonical program `A133526.P8358073913299201745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030514, A133531, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133526 (n : ℕ) : ℤ :=
  A133526.P8358073913299201745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030514, A133531, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133527.P1112467787998249490

`A133532(n+1)+A050997(n+4)`
-/

namespace A133527.P1112467787998249490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133532 (n + 1) + A050997 (n + 4)

end

end A133527.P1112467787998249490

noncomputable section

/-- A133527: Sum of fifth powers of four consecutive primes.

Offset 1, canonical program `A133527.P1112467787998249490`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050997, A133532, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133527 (n : ℕ) : ℤ :=
  A133527.P1112467787998249490.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050997, A133532, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133527.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133528.P15802330686603295123

`A133533(n+1)+A030516(n+4)`
-/

namespace A133528.P15802330686603295123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133533 (n + 1) + A030516 (n + 4)

end

end A133528.P15802330686603295123

noncomputable section

/-- A133528: Sum of sixth powers of four consecutive primes.

Offset 1, canonical program `A133528.P15802330686603295123`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030516, A133533, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133528 (n : ℕ) : ℤ :=
  A133528.P15802330686603295123.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030516, A133533, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133528.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134453.P14282000105266514445

`lt[A134452(n), 0]`
-/

namespace A134453.P14282000105266514445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134453.P14282000105266514445

noncomputable section

/-- A134453: Numbers m such that the digital root in balanced ternary representation equals -1.

Offset 1, canonical program `A134453.P14282000105266514445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134453 (n : ℕ) : ℤ :=
  (A134453.P14282000105266514445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134454.P11482993315645850512

`lt[0, A134452(n)]`
-/

namespace A134454.P11482993315645850512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134454.P11482993315645850512

noncomputable section

/-- A134454: Numbers m such that the digital root in balanced ternary representation equals +1.

Offset 1, canonical program `A134454.P11482993315645850512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134454 (n : ℕ) : ℤ :=
  (A134454.P11482993315645850512.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134533.P10425508017488399224

`eq[0, A005171(A066003(n))]`
-/

namespace A134533.P10425508017488399224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A066003 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134533.P10425508017488399224

noncomputable section

/-- A134533: Numbers n such that the sum of the digits of 7^n is prime.

Offset 1, canonical program `A134533.P10425508017488399224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1593 terms. -/
def A134533 (n : ℕ) : ℤ :=
  (A134533.P10425508017488399224.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1593 terms. -/
def A134533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135610.P10837418836104773190

`floor(A059344(A049068(n+1))/2)`
-/

namespace A135610.P10837418836104773190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059344 (A049068 (n + 1)).toNat : ℚ) / 2⌋

end

end A135610.P10837418836104773190

noncomputable section

/-- A135610: Triangle read by rows: the k-th entry of row n is the number of particular connectivity requirements that a k-linked graph with n >= 2k vertices has to satisfy T(n,k) = (1/2) * n!/(k!*(n-2*k)!) where k runs from 1 to floor(n/2).

Offset 1, canonical program `A135610.P10837418836104773190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A135610 (n : ℕ) : ℤ :=
  A135610.P10837418836104773190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A135610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135681.P17512842736067091502

`gcd((2*A151800(n))², A062509(n+1))`
-/

namespace A135681.P17512842736067091502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * A151800 n) ^ 2) (A062509 (n + 1))

end

end A135681.P17512842736067091502

noncomputable section

/-- A135681: a(n)=n if n=prime. Otherwise, a(n)=4 if n is even and a(n)=1 if n is odd.

Offset 1, canonical program `A135681.P17512842736067091502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135681 (n : ℕ) : ℤ :=
  (A135681.P17512842736067091502.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136693.P5864311361818308045

`A092205(a(floor(n/3))*a(n%3))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A136693.P5864311361818308045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1] fun n a =>
  A092205 (a ⌊(n : ℚ) / 3⌋.toNat * a (n % 3)).toNat

end

end A136693.P5864311361818308045

noncomputable section

/-- A136693: Final nonzero digit of n! in base 6.

Offset 0, canonical program `A136693.P5864311361818308045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4172 terms. -/
def A136693 (n : ℕ) : ℤ :=
  A136693.P5864311361818308045.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4172 terms. -/
def A136693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137427.P7977322006733834359

`A007913(A069891(n+1))`
-/

namespace A137427.P7977322006733834359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A069891 (n + 1)).toNat

end

end A137427.P7977322006733834359

noncomputable section

/-- A137427: Squarefree part of partial sum of squarefree part of n.

Offset 1, canonical program `A137427.P7977322006733834359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A137427 (n : ℕ) : ℤ :=
  A137427.P7977322006733834359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A137427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137458.P6215498444926118840

`A000040(Δ[A069891(n)])`
-/

namespace A137458.P6215498444926118840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A137458.P6215498444926118840

noncomputable section

/-- A137458: Prime(core(n)).

Offset 1, canonical program `A137458.P6215498444926118840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137458 (n : ℕ) : ℤ :=
  A137458.P6215498444926118840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137487.P5545813627763981507

`∩[A036457(n+1), A336418(n+1)]`
-/

namespace A137487.P5545813627763981507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137487.P5545813627763981507

noncomputable section

/-- A137487: Numbers with 24 divisors.

Offset 1, canonical program `A137487.P5545813627763981507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. -/
def A137487 (n : ℕ) : ℤ :=
  (A137487.P5545813627763981507.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. -/
def A137487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137874.P2737740016701994133

`∩[A124587(n+1), A151800(A124587(n+1))]`
-/

namespace A137874.P2737740016701994133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A124587 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137874.P2737740016701994133

noncomputable section

/-- A137874: Prime numbers, isolated from neighboring primes by >14.

Offset 1, canonical program `A137874.P2737740016701994133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 382 terms. -/
def A137874 (n : ℕ) : ℤ :=
  (A137874.P2737740016701994133.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 382 terms. -/
def A137874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138297.P9504987651790712023

`A030241(A048718(n))`
-/

namespace A138297.P9504987651790712023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030241 (A048718 n).toNat

end

end A138297.P9504987651790712023

noncomputable section

/-- A138297: Rows of triangle A138060 converge to this sequence.

Offset 1, canonical program `A138297.P9504987651790712023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A138297 (n : ℕ) : ℤ :=
  A138297.P9504987651790712023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A138297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138502.P2698045557476506495

`A002173(2*n+1)`
-/

namespace A138502.P2698045557476506495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002173 (2 * n + 1)

end

end A138502.P2698045557476506495

noncomputable section

/-- A138502: Expansion of q^(-1/2) * (eta(q)^4 * eta(q^4)^2 / eta(q^2)^3)^2 in powers of q.

Offset 0, canonical program `A138502.P2698045557476506495`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138502 (n : ℕ) : ℤ :=
  A138502.P2698045557476506495.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138502.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138505.P14452217802365060205

`(-1)^n*A002173(n+1)`
-/

namespace A138505.P14452217802365060205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002173 (n + 1)

end

end A138505.P14452217802365060205

noncomputable section

/-- A138505: Expansion of ((phi(q) * phi(-q^2)^2)^2 - 1) / 4 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A138505.P14452217802365060205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138505 (n : ℕ) : ℤ :=
  A138505.P14452217802365060205.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138505.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138837.P13204643735566073635

`p?[A379218(p?[2*n+1])]`
-/

namespace A138837.P13204643735566073635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379218 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138837.P13204643735566073635

noncomputable section

/-- A138837: Non-Mersenne primes: A000040 \ A000668.

Offset 1, canonical program `A138837.P13204643735566073635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3507 terms. -/
def A138837 (n : ℕ) : ℤ :=
  A138837.P13204643735566073635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3507 terms. -/
def A138837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139986.P14602032053010067332

`∩[A139899(n+1), A140616(n+1)]`
-/

namespace A139986.P14602032053010067332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P14602032053010067332

noncomputable section

/-- A139986: Primes of the form 5x^2+168y^2.

Offset 1, canonical program `A139986.P14602032053010067332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4980 terms. -/
def A139986 (n : ℕ) : ℤ :=
  (A139986.P14602032053010067332.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4980 terms. -/
def A139986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140002.P18414971143705571415

`∩[A139899(n+1), A139928(n+1)]`
-/

namespace A140002.P18414971143705571415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P18414971143705571415

noncomputable section

/-- A140002: Primes of the form 8*x^2 + 165*y^2.

Offset 1, canonical program `A140002.P18414971143705571415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A140002 (n : ℕ) : ℤ :=
  (A140002.P18414971143705571415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A140002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140003.P14266301806652680954

`∩[A139857(n+1), A139928(n+1)]`
-/

namespace A140003.P14266301806652680954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P14266301806652680954

noncomputable section

/-- A140003: Primes of the form 8x^2+8xy+167y^2.

Offset 1, canonical program `A140003.P14266301806652680954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A140003 (n : ℕ) : ℤ :=
  (A140003.P14266301806652680954.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A140003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140028.P5456480010220163943

`∩[A139848(n+1), A191029(n+1)]`
-/

namespace A140028.P5456480010220163943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P5456480010220163943

noncomputable section

/-- A140028: Primes of the form 42x^2+42xy+43y^2.

Offset 1, canonical program `A140028.P5456480010220163943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 637 terms. -/
def A140028 (n : ℕ) : ℤ :=
  (A140028.P5456480010220163943.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 637 terms. -/
def A140028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140615.P18277158942554378838

`∩[A068228(n+1), A139838(n+1)]`
-/

namespace A140615.P18277158942554378838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P18277158942554378838

noncomputable section

/-- A140615: Primes of the form 13x^2+6xy+21y^2.

Offset 1, canonical program `A140615.P18277158942554378838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2548 terms. -/
def A140615 (n : ℕ) : ℤ :=
  (A140615.P18277158942554378838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2548 terms. -/
def A140615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142413.P5132067326325250209

`∩[A127576(n+1), A134517(n+1)]`
-/

namespace A142413.P5132067326325250209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P5132067326325250209

noncomputable section

/-- A142413: Primes congruent to 47 mod 48.

Offset 1, canonical program `A142413.P5132067326325250209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A142413 (n : ℕ) : ℤ :=
  (A142413.P5132067326325250209.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A142413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145478.P8300234844944673233

`p?[A001747(n+1)-29]`
-/

namespace A145478.P8300234844944673233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145478.P8300234844944673233

noncomputable section

/-- A145478: Primes p such that (29 + p)/2 is prime.

Offset 1, canonical program `A145478.P8300234844944673233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1258 terms. -/
def A145478 (n : ℕ) : ℤ :=
  A145478.P8300234844944673233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1258 terms. -/
def A145478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151670.P12086214931527312146

`A061392(A151671(n))`
-/

namespace A151670.P12086214931527312146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A151671 n).toNat

end

end A151670.P12086214931527312146

noncomputable section

/-- A151670: G.f.: Product_{k>=0} (1 + 2*x^(5^k)).

Offset 0, canonical program `A151670.P12086214931527312146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151670 (n : ℕ) : ℤ :=
  A151670.P12086214931527312146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153343.P11659389129775803529

`eq[1, A005171(5*n+4)]`
-/

namespace A153343.P11659389129775803529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (5 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153343.P11659389129775803529

noncomputable section

/-- A153343: Numbers k such that 5*k + 4 is not prime.

Offset 1, canonical program `A153343.P11659389129775803529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153343 (n : ℕ) : ℤ :=
  (A153343.P11659389129775803529.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153368.P10746229264741133645

`A153369(n+1)+A153370(n+1)`
-/

namespace A153368.P10746229264741133645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153369 (n + 1) + A153370 (n + 1)

end

end A153368.P10746229264741133645

noncomputable section

/-- A153368: Number of zig-zag paths from top to bottom of a rectangle of width 11 with n rows.

Offset 1, canonical program `A153368.P10746229264741133645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153369, A153370, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A153368 (n : ℕ) : ℤ :=
  A153368.P10746229264741133645.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153369, A153370, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A153368.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A154385.P5436406511082933659

`p?[A085557(n+1)]`
-/

namespace A154385.P5436406511082933659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154385.P5436406511082933659

noncomputable section

/-- A154385: Primes such that number of prime digits > number of nonprime digits.

Offset 1, canonical program `A154385.P5436406511082933659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A154385 (n : ℕ) : ℤ :=
  A154385.P5436406511082933659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A154385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154386.P1065246102071994156

`p?[A085558(n+1)]`
-/

namespace A154386.P1065246102071994156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154386.P1065246102071994156

noncomputable section

/-- A154386: Primes such that number of prime digits < number of nonprime digits.

Offset 1, canonical program `A154386.P1065246102071994156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1063 terms. -/
def A154386 (n : ℕ) : ℤ :=
  A154386.P1065246102071994156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1063 terms. -/
def A154386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154679.P10868027328669372929

`p?[A004277(n)-A005171(A004155(n))]`
-/

namespace A154679.P10868027328669372929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A005171 (A004155 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154679.P10868027328669372929

noncomputable section

/-- A154679: Primes p such that the sum of digits of p+2 is a composite number.

Offset 1, canonical program `A154679.P10868027328669372929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1791 terms. -/
def A154679 (n : ℕ) : ℤ :=
  A154679.P10868027328669372929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1791 terms. -/
def A154679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156343.P612256446000310729

`p?[A085556(n+1)]`
-/

namespace A156343.P612256446000310729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156343.P612256446000310729

noncomputable section

/-- A156343: Primes with equal number of prime and nonprime digits.

Offset 1, canonical program `A156343.P612256446000310729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1037 terms. -/
def A156343 (n : ℕ) : ℤ :=
  A156343.P612256446000310729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1037 terms. -/
def A156343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156683.P11389173112947492787

`lt[1, A024361(n+1)]+1`
-/

namespace A156683.P11389173112947492787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A156683.P11389173112947492787

noncomputable section

/-- A156683: Integers that can occur as either leg in more than one primitive Pythagorean triple.

Offset 1, canonical program `A156683.P11389173112947492787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156683 (n : ℕ) : ℤ :=
  (A156683.P11389173112947492787.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157227.P14866030658019215904

`(A001615(n+1)-A000086(n+1))/3`
-/

namespace A157227.P14866030658019215904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) - A000086 (n + 1) : ℚ) / 3

end

end A157227.P14866030658019215904

noncomputable section

/-- A157227: Number of primitive inequivalent (up to Pi/3 rotation) non-hexagonal sublattices of hexagonal (triangular) lattice of index n.

Offset 1, canonical program `A157227.P14866030658019215904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157227.P14866030658019215904.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157423.P10964563261487709945

`A005171(A004736(n+1))`
-/

namespace A157423.P10964563261487709945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A004736 (n + 1)).toNat

end

end A157423.P10964563261487709945

noncomputable section

/-- A157423: Triangle read by rows, T(n,k) = 0 if (n-k+1) is prime, else 1.

Offset 1, canonical program `A157423.P10964563261487709945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157423 (n : ℕ) : ℤ :=
  A157423.P10964563261487709945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157724.P18355006247608017594

`∪[A048974(n+1), A282671(n+1)]`
-/

namespace A157724.P18355006247608017594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157724.P18355006247608017594

noncomputable section

/-- A157724: Numbers that are the sum of two distinct primes but are not twice a prime.

Offset 1, canonical program `A157724.P18355006247608017594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A157724 (n : ℕ) : ℤ :=
  (A157724.P18355006247608017594.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A157724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160144.P6080785552484719942

`(2*n+1)/A014491(2*n+1)`
-/

namespace A160144.P6080785552484719942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A014491 (2 * n + 1) : ℚ)

end

end A160144.P6080785552484719942

noncomputable section

/-- A160144: Numerator of (2*n+1)/(2^(2*n+1)-1).

Offset 0, canonical program `A160144.P6080785552484719942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A160144 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160144.P6080785552484719942.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A160144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162318.P421080468342978565

`eq[1, A130632(n+1)]+1`
-/

namespace A162318.P421080468342978565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130632 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A162318.P421080468342978565

noncomputable section

/-- A162318: A positive integer n is included if |d(n+1)-d(n)| = 2, where d(n) is the number of divisors of n.

Offset 1, canonical program `A162318.P421080468342978565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1905 terms. -/
def A162318 (n : ℕ) : ℤ :=
  (A162318.P421080468342978565.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1905 terms. -/
def A162318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162322.P10409462531012993339

`∏{e}[A083794(n+1), #+1]`
-/

namespace A162322.P10409462531012993339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A162322.P10409462531012993339

noncomputable section

/-- A162322: Take sequence A000005 (where A000005(n) = the number of divisors of n). To get {a(k)}, replace each run of multiple occurrences of the same integer in sequence A000005 with just one occurrence of that integer, such that a(n) never equals a(n+1).

Offset 1, canonical program `A162322.P10409462531012993339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A162322 (n : ℕ) : ℤ :=
  (A162322.P10409462531012993339.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A162322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164368.P4170227640801400143

`p?[A217564(n+1)+A000040(n+1)]`
-/

namespace A164368.P4170227640801400143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217564 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164368.P4170227640801400143

noncomputable section

/-- A164368: Primes p with the property: if q is the smallest prime > p/2, then a prime exists between p and 2q.

Offset 1, canonical program `A164368.P4170227640801400143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5807 terms. -/
def A164368 (n : ℕ) : ℤ :=
  A164368.P4170227640801400143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5807 terms. -/
def A164368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084558.P8374569854218058976

`A090529(n+1)-1`
-/

namespace A084558.P8374569854218058976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 (n + 1) - 1

end

end A084558.P8374569854218058976

noncomputable section

/-- A084558: a(0) = 0; for n >= 1: a(n) = largest m such that n >= m!.

Offset 0, canonical program `A084558.P8374569854218058976`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084558 (n : ℕ) : ℤ :=
  A084558.P8374569854218058976.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092057.P13672912862792873877

`∩[A066436(n+1), A179262(n+1)]`
-/

namespace A092057.P13672912862792873877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092057.P13672912862792873877

noncomputable section

/-- A092057: Primes of the form 2*p^2 - 1, where p is prime.

Offset 1, canonical program `A092057.P13672912862792873877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 931 terms. -/
def A092057 (n : ℕ) : ℤ :=
  (A092057.P13672912862792873877.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 931 terms. -/
def A092057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092622.P18267383796182270712

`p?[A092624(n+1)]`
-/

namespace A092622.P18267383796182270712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092622.P18267383796182270712

noncomputable section

/-- A092622: Primes with exactly two prime digits.

Offset 1, canonical program `A092622.P18267383796182270712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A092622 (n : ℕ) : ℤ :=
  A092622.P18267383796182270712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A092622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100319.P5803763208182587955

`A167692(n+2)`
-/

namespace A100319.P5803763208182587955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167692 (n + 2)

end

end A100319.P5803763208182587955

noncomputable section

/-- A100319: Even numbers m such that at least one of m-1 and m+1 is composite.

Offset 1, canonical program `A100319.P5803763208182587955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100319 (n : ℕ) : ℤ :=
  A100319.P5803763208182587955.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105773.P5284159350981166347

`A108727(n+3)-6`
-/

namespace A105773.P5284159350981166347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108727 (n + 3) - 6

end

end A105773.P5284159350981166347

noncomputable section

/-- A105773: Numbers n such that 11*n + 97 is prime.

Offset 1, canonical program `A105773.P5284159350981166347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A105773 (n : ℕ) : ℤ :=
  A105773.P5284159350981166347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A105773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106103.P12542325979256717480

`p?[A284064(n+1)]`
-/

namespace A106103.P12542325979256717480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106103.P12542325979256717480

noncomputable section

/-- A106103: Primes with minimal digit = 3.

Offset 1, canonical program `A106103.P12542325979256717480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. -/
def A106103 (n : ℕ) : ℤ :=
  A106103.P12542325979256717480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. -/
def A106103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113601.P12275914542053684162

`p?[floor(A142399(n+1)/4)]`
-/

namespace A113601.P12275914542053684162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142399 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113601.P12275914542053684162

noncomputable section

/-- A113601: Intersection of A002144 and A005098.

Offset 1, canonical program `A113601.P12275914542053684162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2220 terms. -/
def A113601 (n : ℕ) : ℤ :=
  A113601.P12275914542053684162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2220 terms. -/
def A113601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136071.P16113164721399552730

`5*A023218(n+1)+4`
-/

namespace A136071.P16113164721399552730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A023218 (n + 1) + 4

end

end A136071.P16113164721399552730

noncomputable section

/-- A136071: Primes of the form 5*p + 4 with p prime.

Offset 1, canonical program `A136071.P16113164721399552730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136071 (n : ℕ) : ℤ :=
  A136071.P16113164721399552730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139965.P1097653739943172126

`∪[A140037(n+1), A140038(n+1)]`
-/

namespace A139965.P1097653739943172126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139965.P1097653739943172126

noncomputable section

/-- A139965: Primes of the form 6x^2+77y^2.

Offset 1, canonical program `A139965.P1097653739943172126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139965 (n : ℕ) : ℤ :=
  (A139965.P1097653739943172126.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140845.P2138074440688167939

`∩[A140573(n+1), A142095(n+1)]`
-/

namespace A140845.P2138074440688167939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P2138074440688167939

noncomputable section

/-- A140845: Primes of the form 210k + 29.

Offset 1, canonical program `A140845.P2138074440688167939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A140845 (n : ℕ) : ℤ :=
  (A140845.P2138074440688167939.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A140845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141563.P13827635468112491936

`∩[A140743(n+1), A142082(n+1)]`
-/

namespace A141563.P13827635468112491936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P13827635468112491936

noncomputable section

/-- A141563: Primes of the form 2*3*5*7*n+79.

Offset 1, canonical program `A141563.P13827635468112491936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A141563 (n : ℕ) : ℤ :=
  (A141563.P13827635468112491936.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A141563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080332.P12047644629895740680

`A010815(n)*A116916(n)`
-/

namespace A080332.P12047644629895740680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A116916 n

end

end A080332.P12047644629895740680

noncomputable section

/-- A080332: G.f.: Product_{n>0} (1 - x^n)^3 * (1 - x^(2*n - 1))^2 = Sum_{n in Z} (6*n + 1) * x^(n*(3*n + 1)/2).

Offset 0, canonical program `A080332.P12047644629895740680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080332 (n : ℕ) : ℤ :=
  A080332.P12047644629895740680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080737.P3206243844003316961

`A052928(A067240(n+1))`
-/

namespace A080737.P3206243844003316961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A067240 (n + 1)).toNat

end

end A080737.P3206243844003316961

noncomputable section

/-- A080737: a(1) = a(2) = 0; for n > 2, the least dimension of a lattice possessing a symmetry of order n.

Offset 1, canonical program `A080737.P3206243844003316961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080737 (n : ℕ) : ℤ :=
  A080737.P3206243844003316961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080759.P78527280457839002

`eq[A005171(n+2), A005171(A000720(n+1)+1)]+2`
-/

namespace A080759.P78527280457839002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A000720 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A080759.P78527280457839002

noncomputable section

/-- A080759: Inverse Aronson transform of primes.

Offset 1, canonical program `A080759.P78527280457839002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080759 (n : ℕ) : ℤ :=
  (A080759.P78527280457839002.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081240.P9652852946263676047

`A081238(n+1)+A002321(n+1)²`
-/

namespace A081240.P9652852946263676047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081238 (n + 1) + A002321 (n + 1) ^ 2

end

end A081240.P9652852946263676047

noncomputable section

/-- A081240: a(n) = #{(i,j): mu(i)*mu(j) = 1, 1<=i,j<=n}, where mu = A008683 (Moebius function).

Offset 1, canonical program `A081240.P9652852946263676047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081240 (n : ℕ) : ℤ :=
  A081240.P9652852946263676047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081334.P8314980247781492951

`A010873(A065765(n+1))`
-/

namespace A081334.P8314980247781492951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A065765 (n + 1)).toNat

end

end A081334.P8314980247781492951

noncomputable section

/-- A081334: a(n) = sigma(2*n^2) modulo 4.

Offset 1, canonical program `A081334.P8314980247781492951`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065765, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081334 (n : ℕ) : ℤ :=
  A081334.P8314980247781492951.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065765, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081334.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081717.P73423759083911477

`p?[(n+1)*A005171(A000720(n+1)+n+1)]`
-/

namespace A081717.P73423759083911477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005171 (A000720 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081717.P73423759083911477

noncomputable section

/-- A081717: Primes prime(j) such that prime(j) + j is composite.

Offset 1, canonical program `A081717.P73423759083911477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5411 terms. -/
def A081717 (n : ℕ) : ℤ :=
  A081717.P73423759083911477.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5411 terms. -/
def A081717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082092.P6243506660087546577

`filter[A073803(n+1), A005171(#)]`
-/

namespace A082092.P6243506660087546577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A082092.P6243506660087546577

noncomputable section

/-- A082092: Composite k such that d(k) < d(sigma(k)), i.e., A000005(k) < A000005(A000203(k)).

Offset 1, canonical program `A082092.P6243506660087546577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. -/
def A082092 (n : ℕ) : ℤ :=
  A082092.P6243506660087546577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. -/
def A082092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083510.P3512523966846881467

`C(lt[2, A046110(n)]+1, 2)+1`
-/

namespace A083510.P3512523966846881467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) 2 + 1

end

end A083510.P3512523966846881467

noncomputable section

/-- A083510: Members of A000124 which are the arithmetic mean of two other members.

Offset 1, canonical program `A083510.P3512523966846881467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6762 terms. -/
def A083510 (n : ℕ) : ℤ :=
  (A083510.P3512523966846881467.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6762 terms. -/
def A083510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083901.P13271728194704751477

`A083900(n+1)+A083893(n+1)`
-/

namespace A083901.P13271728194704751477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083900 (n + 1) + A083893 (n + 1)

end

end A083901.P13271728194704751477

noncomputable section

/-- A083901: Number of divisors of n with largest digit <= 6 (base 10).

Offset 1, canonical program `A083901.P13271728194704751477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083893, A083900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083901 (n : ℕ) : ℤ :=
  A083901.P13271728194704751477.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083893, A083900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084369.P2349708795339258249

`A000720(A030096(n+1))`
-/

namespace A084369.P2349708795339258249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A030096 (n + 1)).toNat

end

end A084369.P2349708795339258249

noncomputable section

/-- A084369: Numbers n such that the n-th prime number doesn't contain any even digits.

Offset 1, canonical program `A084369.P2349708795339258249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A084369 (n : ℕ) : ℤ :=
  A084369.P2349708795339258249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A084369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087624.P6510087448774720234

`A001221(n+1)*A005171(n+1)`
-/

namespace A087624.P6510087448774720234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A005171 (n + 1)

end

end A087624.P6510087448774720234

noncomputable section

/-- A087624: a(n)=0 if n is prime, A001221(n) otherwise.

Offset 1, canonical program `A087624.P6510087448774720234`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087624 (n : ℕ) : ℤ :=
  A087624.P6510087448774720234.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087624.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087966.P11995963184022169249

`A064549(A014491(n+1))`
-/

namespace A087966.P11995963184022169249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A014491 (n + 1)).toNat

end

end A087966.P11995963184022169249

noncomputable section

/-- A087966: a(n) = gcd(-1 + 2^n, n^2).

Offset 1, canonical program `A087966.P11995963184022169249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087966 (n : ℕ) : ℤ :=
  A087966.P11995963184022169249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093013.P11698118702598108032

`A091992(n+1)/2`
-/

namespace A093013.P11698118702598108032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091992 (n + 1) : ℚ) / 2

end

end A093013.P11698118702598108032

noncomputable section

/-- A093013: Numbers n such that 10*n-3 and 10*n+3 are both primes.

Offset 1, canonical program `A093013.P11698118702598108032`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093013 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A093013.P11698118702598108032.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A093829.P14089070398035005194

`A112848(A038502(n+1))`
-/

namespace A093829.P14089070398035005194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112848 (A038502 (n + 1)).toNat

end

end A093829.P14089070398035005194

noncomputable section

/-- A093829: Expansion of q * psi(q^3)^3 / psi(q) in powers of q where psi() is a Ramanujan theta function.

Offset 1, canonical program `A093829.P14089070398035005194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093829 (n : ℕ) : ℤ :=
  A093829.P14089070398035005194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094551.P6308246149469362134

`lt[2, A046110(n)]+1`
-/

namespace A094551.P6308246149469362134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A094551.P6308246149469362134

noncomputable section

/-- A094551: Numbers k such that there are integers a < b with a+(a+1)+...+(k-1) = k+(k+1)+...+b.

Offset 1, canonical program `A094551.P6308246149469362134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6762 terms. -/
def A094551 (n : ℕ) : ℤ :=
  (A094551.P6308246149469362134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6762 terms. -/
def A094551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096215.P15586211263918386460

`A000040(A000720(Δ[A061802(n)]))`
-/

namespace A096215.P15586211263918386460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (f1 (n + 1) - f1 n).toNat).toNat

end

end A096215.P15586211263918386460

noncomputable section

/-- A096215: Greatest primes not greater than the sum of two succeeding primes.

Offset 1, canonical program `A096215.P15586211263918386460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A096215 (n : ℕ) : ℤ :=
  A096215.P15586211263918386460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A096215.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A097022.P6513166181426899163`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065765, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097022 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A097022.P6513166181426899163.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065765, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100193.P16215837900538251078

`2*A104530(n)-A088218(n)`
-/

namespace A100193.P16215837900538251078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104530 n - A088218 n

end

end A100193.P16215837900538251078

noncomputable section

/-- A100193: a(n) = Sum_{k=0..n} binomial(2*n,n+k)*3^k.

Offset 0, canonical program `A100193.P16215837900538251078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A100193 (n : ℕ) : ℤ :=
  A100193.P16215837900538251078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A100193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105149.P9840650363083447811

`Δ[A000720(A151800(floor(n²/2)))]`
-/

namespace A105149.P9840650363083447811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 ⌊(n ^ 2 : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105149.P9840650363083447811

noncomputable section

/-- A105149: Number of even semiprimes k such that n^2 < k <= (n+1)^2.

Offset 0, canonical program `A105149.P9840650363083447811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A105149 (n : ℕ) : ℤ :=
  A105149.P9840650363083447811.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A105149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106078.P16388488065149343356

`∩[A023214(n+1), A023218(n+1)]`
-/

namespace A106078.P16388488065149343356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106078.P16388488065149343356

noncomputable section

/-- A106078: Primes p such that 5*p+4 and 4*p+5 are primes.

Offset 1, canonical program `A106078.P16388488065149343356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2255 terms. -/
def A106078 (n : ℕ) : ℤ :=
  (A106078.P16388488065149343356.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2255 terms. -/
def A106078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109194.P15180095982522545927

`A275289(n+3)+A055218(n)`
-/

namespace A109194.P15180095982522545927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275289 (n + 3) + A055218 n

end

end A109194.P15180095982522545927

noncomputable section

/-- A109194: Number of returns to the x-axis (i.e., d or u steps hitting the x-axis) in all Grand Motzkin paths of length n. (A Grand Motzkin path of length n is a path in the half-plane x>=0, starting at (0,0), ending at (n,0) and consisting of steps u=(1,1), d=(1,-1) and h=(1,0).).

Offset 2, canonical program `A109194.P15180095982522545927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A109194 (n : ℕ) : ℤ :=
  A109194.P15180095982522545927.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A109194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112886.P13448642729938480381

`lt[n*A325334(n), n]`
-/

namespace A112886.P13448642729938480381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A325334 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A112886.P13448642729938480381

noncomputable section

/-- A112886: Positive integers that have no triangular divisors > 1.

Offset 1, canonical program `A112886.P13448642729938480381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112886 (n : ℕ) : ℤ :=
  (A112886.P13448642729938480381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113681.P4096137213470006319

`A010815(5*n)`
-/

namespace A113681.P4096137213470006319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (5 * n)

end

end A113681.P4096137213470006319

noncomputable section

/-- A113681: Expansion of f(-x^2, -x^3)^2 / f(-x, -x^2) in powers of x where f() is Ramanujan's two-variable theta function.

Offset 0, canonical program `A113681.P4096137213470006319`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113681 (n : ℕ) : ℤ :=
  A113681.P4096137213470006319.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113681.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A116568.P1460846526670126792

`1-abs(A097454(n+1))+n`
-/

namespace A116568.P1460846526670126792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A097454 (n + 1)| + (n : ℤ)

end

end A116568.P1460846526670126792

noncomputable section

/-- A116568: Difference between n and the absolute value of the difference between number of nonprimes not exceeding n and number of primes not exceeding n.

Offset 1, canonical program `A116568.P1460846526670126792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116568 (n : ℕ) : ℤ :=
  A116568.P1460846526670126792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116915.P15025365533881428146

`-A010815(5*n+2)`
-/

namespace A116915.P15025365533881428146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010815 (5 * n + 2)

end

end A116915.P15025365533881428146

noncomputable section

/-- A116915: Expansion of f(-x, -x^4)^2 / f(-x, -x^2) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A116915.P15025365533881428146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116915 (n : ℕ) : ℤ :=
  A116915.P15025365533881428146.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117204.P11529383568635817474

`(A117203(n+1)-1)/2`
-/

namespace A117204.P11529383568635817474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117203 (n + 1) - 1 : ℚ) / 2

end

end A117204.P11529383568635817474

noncomputable section

/-- A117204: Squarefree positive integers k such that 2*k+1 is also squarefree.

Offset 1, canonical program `A117204.P11529383568635817474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117203, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117204 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117204.P11529383568635817474.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117203, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117204.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117206.P17758905267963498377

`(A117205(n+1)+1)/2`
-/

namespace A117206.P17758905267963498377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117205 (n + 1) + 1 : ℚ) / 2

end

end A117206.P17758905267963498377

noncomputable section

/-- A117206: Squarefree positive integers k such that 2*k-1 is also squarefree.

Offset 1, canonical program `A117206.P17758905267963498377`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117205, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117206 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117206.P17758905267963498377.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117205, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117206.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117658.P10121944413526807387

`A034448(A003557(n+1))*A056671(n+1)`
-/

namespace A117658.P10121944413526807387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A003557 (n + 1)).toNat * A056671 (n + 1)

end

end A117658.P10121944413526807387

noncomputable section

/-- A117658: Number of solutions to x^(k+1) = x^k mod n for some k >= 1.

Offset 1, canonical program `A117658.P10121944413526807387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117658 (n : ℕ) : ℤ :=
  A117658.P10121944413526807387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119577.P2109827519578747427

`A119576(n)/2`
-/

namespace A119577.P2109827519578747427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119576 n : ℚ) / 2

end

end A119577.P2109827519578747427

noncomputable section

/-- A119577: a(n) = (n+n^2+n^3)*(binomial(2*n,n))/2.

Offset 0, canonical program `A119577.P2109827519578747427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119576, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119577 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119577.P2109827519578747427.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119576, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119577.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119656.P1920939192166810603

`A128059(A055670(n+1))*A128059(A072055(n+1))`
-/

namespace A119656.P1920939192166810603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (A055670 (n + 1)).toNat * A128059 (A072055 (n + 1)).toNat

end

end A119656.P1920939192166810603

noncomputable section

/-- A119656: Denominator of BernoulliB(4*prime(n))/30.

Offset 1, canonical program `A119656.P1920939192166810603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 368 terms. -/
def A119656 (n : ℕ) : ℤ :=
  A119656.P1920939192166810603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 368 terms. -/
def A119656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121373.P13063866257632154363

`(-1)^n*A010815(n)`
-/

namespace A121373.P13063866257632154363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A010815 n

end

end A121373.P13063866257632154363

noncomputable section

/-- A121373: Expansion of f(x) = f(x, -x^2) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A121373.P13063866257632154363`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121373 (n : ℕ) : ℤ :=
  A121373.P13063866257632154363.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121543.P10944832784654695596

`eq[2, 3-a(A049084(n))]` with `a(0)=1`
-/

namespace A121543.P10944832784654695596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  3 - f2 (A049084 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121543.P10944832784654695596

noncomputable section

/-- A121543: "If k appears then the k-th prime doesn't", with a(1)=1.

Offset 1, canonical program `A121543.P10944832784654695596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8936 terms. -/
def A121543 (n : ℕ) : ℤ :=
  (A121543.P10944832784654695596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8936 terms. -/
def A121543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122861.P10229164081842870848

`A115979(3*n+1)`
-/

namespace A122861.P10229164081842870848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (3 * n + 1)

end

end A122861.P10229164081842870848

noncomputable section

/-- A122861: Expansion of phi(-q)chi(-q)psi(q^3) in powers of q where phi(),chi(),psi() are Ramanujan theta functions.

Offset 0, canonical program `A122861.P10229164081842870848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115979, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122861 (n : ℕ) : ℤ :=
  A122861.P10229164081842870848.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115979, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122861.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123484.P10262199691466174921

`A035178(n+1)*A230074(n+1)`
-/

namespace A123484.P10262199691466174921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (n + 1) * A230074 (n + 1)

end

end A123484.P10262199691466174921

noncomputable section

/-- A123484: Expansion of eta(q)^2 * eta(q^6)^4 * eta(q^8) * eta(q^24) / (eta(q^2) * eta(q^3) * eta(q^12))^2 in powers of q.

Offset 1, canonical program `A123484.P10262199691466174921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123484 (n : ℕ) : ℤ :=
  A123484.P10262199691466174921.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124282.P16437808635077134670

`A055670(A014613(n+1))-1`
-/

namespace A124282.P16437808635077134670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A014613 (n + 1)).toNat - 1

end

end A124282.P16437808635077134670

noncomputable section

/-- A124282: Primes indexed by 4-almost primes.

Offset 1, canonical program `A124282.P16437808635077134670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3560 terms. -/
def A124282 (n : ℕ) : ℤ :=
  A124282.P16437808635077134670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3560 terms. -/
def A124282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125911.P3841651622429786425

`A007955(n+1)/A136655(n+1)`
-/

namespace A125911.P3841651622429786425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A136655 (n + 1) : ℚ)

end

end A125911.P3841651622429786425

noncomputable section

/-- A125911: Product of the even divisors of n.

Offset 1, canonical program `A125911.P3841651622429786425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A136655, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A125911 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125911.P3841651622429786425.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A136655, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A125911.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129667.P9864119466472355018

`∏{e}[n+1, A010815(#)]`
-/

namespace A129667.P9864119466472355018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A010815 (Nat.factorization (f1 n) p)

end

end A129667.P9864119466472355018

noncomputable section

/-- A129667: Dirichlet inverse of the Abelian group count (A000688).

Offset 1, canonical program `A129667.P9864119466472355018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129667 (n : ℕ) : ℤ :=
  A129667.P9864119466472355018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130199.P3088622024897580555

`record[(n+1)*n*A228039(2*n+1)]`
-/

namespace A130199.P3088622024897580555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) * A228039 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130199.P3088622024897580555

noncomputable section

/-- A130199: Evil oblong (promic) numbers.

Offset 1, canonical program `A130199.P3088622024897580555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130199 (n : ℕ) : ℤ :=
  A130199.P3088622024897580555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130199.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134013.P3057946440017959852

`(-1)^n*A112301(n+1)`
-/

namespace A134013.P3057946440017959852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112301 (n + 1)

end

end A134013.P3057946440017959852

noncomputable section

/-- A134013: Expansion of q * phi(q) * psi(q^8) in powers of q where phi(), psi() are Ramanujan theta functions.

Offset 1, canonical program `A134013.P3057946440017959852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134013 (n : ℕ) : ℤ :=
  A134013.P3057946440017959852.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134756.P5651471618166463539

`sqrt(24*n+1)*A010815(n)`
-/

namespace A134756.P5651471618166463539
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (24 * n + 1 : ℝ) * (A010815 n : ℝ)

end

end A134756.P5651471618166463539

noncomputable section

/-- A134756: Coefficients of a q-series of Zagier related to the Dedekind eta function.

Offset 0, canonical program `A134756.P5651471618166463539`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134756 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134756.P5651471618166463539.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134756.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136774.P9169465516778292592

`lt[4, A082850(4*(n+1))]`
-/

namespace A136774.P9169465516778292592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (4 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136774.P9169465516778292592

noncomputable section

/-- A136774: n! never ends in this many 0's in base 16.

Offset 1, canonical program `A136774.P9169465516778292592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 991 terms. -/
def A136774 (n : ℕ) : ℤ :=
  (A136774.P9169465516778292592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 991 terms. -/
def A136774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137412.P15505446152071389337

`A065359(xor(60, n))`
-/

namespace A137412.P15505446152071389337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (Nat.xor 60 n)

end

end A137412.P15505446152071389337

noncomputable section

/-- A137412: a(1)=0. If a(m) is odd, then a(2^(m-1)+k) = a(k)-1, for all k where 1<=k<=2^(m-1). If a(m) is even, then a(2^(m-1)+k) = a(k)+1, for all k where 1<=k<=2^(m-1).

Offset 1, canonical program `A137412.P15505446152071389337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A137412 (n : ℕ) : ℤ :=
  A137412.P15505446152071389337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A137412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137608.P11362222229796310962

`(-1)^n*A035178(n+1)`
-/

namespace A137608.P11362222229796310962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A035178 (n + 1)

end

end A137608.P11362222229796310962

noncomputable section

/-- A137608: Expansion of (1 - psi(-q)^3 / psi(-q^3)) / 3 in powers of q where psi() is a Ramanujan theta function.

Offset 1, canonical program `A137608.P11362222229796310962`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137608 (n : ℕ) : ℤ :=
  A137608.P11362222229796310962.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137608.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137713.P10408986335505349566

`a(n-1)+a(n-2)-A010815(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A137713.P10408986335505349566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 2) - A010815 (n + 1))

end

end A137713.P10408986335505349566

noncomputable section

/-- A137713: Row sums of triangle A137712.

Offset 1, canonical program `A137713.P10408986335505349566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A137713 (n : ℕ) : ℤ :=
  A137713.P10408986335505349566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A137713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137876.P7056768706059429066

`A028334(A000720(18*(n+1)))`
-/

namespace A137876.P7056768706059429066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (A000720 (18 * (n + 1))).toNat

end

end A137876.P7056768706059429066

noncomputable section

/-- A137876: a(n) = (nextprime(18n)-previousprime(18n))/2.

Offset 1, canonical program `A137876.P7056768706059429066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5555 terms. -/
def A137876 (n : ℕ) : ℤ :=
  A137876.P7056768706059429066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5555 terms. -/
def A137876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138501.P13350798590411214149

`(-1)^n*A050470(n+1)`
-/

namespace A138501.P13350798590411214149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A050470 (n + 1)

end

end A138501.P13350798590411214149

noncomputable section

/-- A138501: Expansion of (eta(q)^2 * eta(q^4)^4 / eta(q^2)^3)^2 in powers of q.

Offset 1, canonical program `A138501.P13350798590411214149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050470, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138501 (n : ℕ) : ℤ :=
  A138501.P13350798590411214149.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050470, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138501.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138754.P5480235727800616661

`A000720(A138751(n+1))`
-/

namespace A138754.P5480235727800616661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A138751 (n + 1)).toNat

end

end A138754.P5480235727800616661

noncomputable section

/-- A138754: a(n) = PrimePi(A138751(n)) - a variation of the Collatz (3n+1) map.

Offset 1, canonical program `A138754.P5480235727800616661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A138754 (n : ℕ) : ℤ :=
  A138754.P5480235727800616661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A138754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141468.P11281748312058034280

`A018252(n+1)-A054546(n+1)`
-/

namespace A141468.P11281748312058034280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - A054546 (n + 1)

end

end A141468.P11281748312058034280

noncomputable section

/-- A141468: Zero together with the nonprime numbers A018252.

Offset 1, canonical program `A141468.P11281748312058034280`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A054546, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A141468 (n : ℕ) : ℤ :=
  A141468.P11281748312058034280.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A054546, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A141468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156274.P1595059407233853913

`A023201(A008619(n))+6*n%2`
-/

namespace A156274.P1595059407233853913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (A008619 n).toNat + ((6 * (n % 2) : ℕ) : ℤ)

end

end A156274.P1595059407233853913

noncomputable section

/-- A156274: List of prime pairs of the form (p, p+6).

Offset 1, canonical program `A156274.P1595059407233853913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156274 (n : ℕ) : ℤ :=
  A156274.P1595059407233853913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158207.P14410960387144455574

`A158077(n)/A000034(A289207(n))`
-/

namespace A158207.P14410960387144455574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158077 n : ℚ) / (A000034 (A289207 n).toNat : ℚ)

end

end A158207.P14410960387144455574

noncomputable section

/-- A158207: Denominator of Bernoulli(n, -1/6).

Offset 0, canonical program `A158207.P14410960387144455574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A158207 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A158207.P14410960387144455574.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A158207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161601.P12806282394382421226

`2*lt[n+1, A145342(n+1)]+1`
-/

namespace A161601.P12806282394382421226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A161601.P12806282394382421226

noncomputable section

/-- A161601: Positive integers k that are less than the value of the reversal of k's representation in binary.

Offset 1, canonical program `A161601.P12806282394382421226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5563 terms. -/
def A161601 (n : ℕ) : ℤ :=
  (A161601.P12806282394382421226.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5563 terms. -/
def A161601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161603.P6263326332748998363

`2*lt[A145342(n+1), n+1]+1`
-/

namespace A161603.P6263326332748998363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A161603.P6263326332748998363

noncomputable section

/-- A161603: Odd terms of sequence A161602.

Offset 1, canonical program `A161603.P6263326332748998363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4155 terms. -/
def A161603 (n : ℕ) : ℤ :=
  (A161603.P6263326332748998363.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4155 terms. -/
def A161603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080650.P7881313728176217598

`eq[A000005(∑{d}[n+1, #]), A062821(n+1)]+1`
-/

namespace A080650.P7881313728176217598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A080650.P7881313728176217598

noncomputable section

/-- A080650: Numbers n such that phi(n) and sigma(n) have the same number of divisors.

Offset 1, canonical program `A080650.P7881313728176217598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A080650 (n : ℕ) : ℤ :=
  (A080650.P7881313728176217598.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A080650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083245.P760659149355917661

`A073757(n+1)-A045763(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083245.P760659149355917661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) - A045763 (n + 1)

end

end A083245.P760659149355917661

noncomputable section

/-- A083245: Difference between numbers of related and numbers of unrelated numbers belonging to n: a(n) = A073757(n)-A045763(n) = (n-u(n))-u(n) = n-2*A045763(n) = 2*A073757(n)-n.

Offset 1, canonical program `A083245.P760659149355917661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045763, A073757, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083245 (n : ℕ) : ℤ :=
  A083245.P760659149355917661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045763, A073757, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083245.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083534.P14032247145257894732

`A007617(n+2)-A007617(n+1)`
-/

namespace A083534.P14032247145257894732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007617 (n + 2) - A007617 (n + 1)

end

end A083534.P14032247145257894732

noncomputable section

/-- A083534: First difference sequence of A007617. Difference between consecutive values not being in the range of phi (A000010).

Offset 1, canonical program `A083534.P14032247145257894732`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083534 (n : ℕ) : ℤ :=
  A083534.P14032247145257894732.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083534.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083549.P7977387925089060211

`A083548(n+1)/A049586(n)`
-/

namespace A083549.P7977387925089060211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083548 (n + 1) : ℚ) / (A049586 n : ℚ)

end

end A083549.P7977387925089060211

noncomputable section

/-- A083549: Quotient if least common multiple (lcm) of cototient values of consecutive integers is divided by the greatest common divisor (gcd) of the same pair of consecutive numbers.

Offset 1, canonical program `A083549.P7977387925089060211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083549 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083549.P7977387925089060211.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083795.P8166944767162497193

`A005237(n+1)+1`
-/

namespace A083795.P8166944767162497193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1) + 1

end

end A083795.P8166944767162497193

noncomputable section

/-- A083795: Numbers k such that k and k-1 have the same number of divisors. Numbers not included in A083794.

Offset 1, canonical program `A083795.P8166944767162497193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083795 (n : ℕ) : ℤ :=
  A083795.P8166944767162497193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085122.P1768509895098590735

`A230980(A051612(n+1))-A085343(n+1)`
-/

namespace A085122.P1768509895098590735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A051612 (n + 1)).toNat - A085343 (n + 1)

end

end A085122.P1768509895098590735

noncomputable section

/-- A085122: a(n) = PrimePi(sigma(n)-phi(n)) - (PrimePi(sigma(n)) - PrimePi(phi(n))), where PrimePi = A000720, sigma = A000203 and phi = A000010.

Offset 1, canonical program `A085122.P1768509895098590735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3239 terms. -/
def A085122 (n : ℕ) : ℤ :=
  A085122.P1768509895098590735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3239 terms. -/
def A085122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085885.P6366113576804928038

`A000010(A056813((n+1)²))+A000010(A175851(n+1))`
-/

namespace A085885.P6366113576804928038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A056813 ((n + 1) ^ 2)).toNat + A000010 (A175851 (n + 1)).toNat

end

end A085885.P6366113576804928038

noncomputable section

/-- A085885: Let r and s be such that r + s = n; a(n) = maximum value of phi(r) + phi(s).

Offset 2, canonical program `A085885.P6366113576804928038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A085885 (n : ℕ) : ℤ :=
  A085885.P6366113576804928038.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A085885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085987.P7602126064279087842

`filter[A030630(n+1), A212793(#)]`
-/

namespace A085987.P7602126064279087842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A085987.P7602126064279087842

noncomputable section

/-- A085987: Product of exactly four primes, three of which are distinct (p^2*q*r).

Offset 1, canonical program `A085987.P7602126064279087842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9346 terms. -/
def A085987 (n : ℕ) : ℤ :=
  A085987.P7602126064279087842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9346 terms. -/
def A085987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086100.P12874924642419526521

`A007088(A086099(n))`
-/

namespace A086100.P12874924642419526521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A086099 n).toNat

end

end A086100.P12874924642419526521

noncomputable section

/-- A086100: A086099 in binary.

Offset 0, canonical program `A086100.P12874924642419526521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086100 (n : ℕ) : ℤ :=
  A086100.P12874924642419526521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086552.P11972272164469090646

`A057922(n)+1`
-/

namespace A086552.P11972272164469090646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057922 n + 1

end

end A086552.P11972272164469090646

noncomputable section

/-- A086552: Numbers x such that tau(x)/tau(x-1) is an integer, where tau() is the number of divisors function.

Offset 1, canonical program `A086552.P11972272164469090646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086552 (n : ℕ) : ℤ :=
  A086552.P11972272164469090646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086700.P3921417668241682798

`A067541(n+1)*A067541(Δ[n²])`
-/

namespace A086700.P3921417668241682798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (n + 1) * A067541 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A086700.P3921417668241682798

noncomputable section

/-- A086700: Euler phi function applied to the triangular numbers.

Offset 1, canonical program `A086700.P3921417668241682798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A086700 (n : ℕ) : ℤ :=
  A086700.P3921417668241682798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A086700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087782.P6831372611554785997

`gcd(n+1, A004526(n))*A256452(A007947(n+1))`
-/

namespace A087782.P6831372611554785997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A004526 n) : ℤ) * A256452 (A007947 (n + 1)).toNat

end

end A087782.P6831372611554785997

noncomputable section

/-- A087782: a(n) = number of solutions to x^3 + x == 0 (mod n).

Offset 1, canonical program `A087782.P6831372611554785997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087782 (n : ℕ) : ℤ :=
  A087782.P6831372611554785997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089692.P4290977152710679352

`A062570(n+1)/A034444(n+1)`
-/

namespace A089692.P4290977152710679352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062570 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A089692.P4290977152710679352

noncomputable section

/-- A089692: a(n) = phi(2n)/2^omega(n).

Offset 1, canonical program `A089692.P4290977152710679352`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A062570, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089692 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089692.P4290977152710679352.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A062570, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089692.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092590.P2036150213612992649

`A008332(n+1)-A008331(n+1)`
-/

namespace A092590.P2036150213612992649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008332 (n + 1) - A008331 (n + 1)

end

end A092590.P2036150213612992649

noncomputable section

/-- A092590: a(n) = A065395(A000040(n)); values of commutator of sigma and phi function at prime number arguments.

Offset 1, canonical program `A092590.P2036150213612992649`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008331, A008332, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A092590 (n : ℕ) : ℤ :=
  A092590.P2036150213612992649.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008331, A008332, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A092590.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096111.P4945051898542242552

`A121663(ceil(n/2))`
-/

namespace A096111.P4945051898542242552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 ⌈(n : ℚ) / 2⌉.toNat

end

end A096111.P4945051898542242552

noncomputable section

/-- A096111: If n = 2^k - 1, then a(n) = k+1, otherwise a(n) = (A000523(n)+1)*a(A053645(n)).

Offset 0, canonical program `A096111.P4945051898542242552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096111 (n : ℕ) : ℤ :=
  A096111.P4945051898542242552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096855.P4288218702433459592

`A062401(2^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096855.P4288218702433459592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (2 ^ n + 1)

end

end A096855.P4288218702433459592

noncomputable section

/-- A096855: a(n) = A062401(2^n + 1).

Offset 0, canonical program `A096855.P4288218702433459592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096855 (n : ℕ) : ℤ :=
  A096855.P4288218702433459592.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096855.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097884.P18184592152229519995

`Δ[A097605(n+1)]`
-/

namespace A097884.P18184592152229519995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097884.P18184592152229519995

noncomputable section

/-- A097884: First differences of A097605 (phi(n) divides n^2 - 1).

Offset 1, canonical program `A097884.P18184592152229519995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A097884 (n : ℕ) : ℤ :=
  A097884.P18184592152229519995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A097884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098189.P4675613756573831951

`A034448(n+1)-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098189.P4675613756573831951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A000010 (n + 1)

end

end A098189.P4675613756573831951

noncomputable section

/-- A098189: Sum of unitary divisors minus Euler phi: a(n) = A034448(n) - A000010(n).

Offset 1, canonical program `A098189.P4675613756573831951`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A098189 (n : ℕ) : ℤ :=
  A098189.P4675613756573831951.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A098189.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100363.P13811518360178267428

`∩[A063446(n+1)-1, A063446(n+1)]`
-/

namespace A100363.P13811518360178267428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063446 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100363.P13811518360178267428

noncomputable section

/-- A100363: Numbers n such that the numbers of divisors of n,n+1 and n+2 are k,2k,4k respectively for some k.

Offset 1, canonical program `A100363.P13811518360178267428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A100363 (n : ℕ) : ℤ :=
  (A100363.P13811518360178267428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A100363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100371.P1765266703165715938

`A066781(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100371.P1765266703165715938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1) - 1

end

end A100371.P1765266703165715938

noncomputable section

/-- A100371: a(n) = 2^phi(n) - 1 = A066781(n) - 1.

Offset 1, canonical program `A100371.P1765266703165715938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066781, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100371 (n : ℕ) : ℤ :=
  A100371.P1765266703165715938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066781, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101207.P6474118925145984398

`Δ[A056793(A028310(n))]^A001221(n+1)`
-/

namespace A101207.P6474118925145984398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056793 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A101207.P6474118925145984398

noncomputable section

/-- A101207: For each prime power n, a(n) is the number of positive integers that have n as their greatest prime power.

Offset 1, canonical program `A101207.P6474118925145984398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2128 terms. -/
def A101207 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A101207.P6474118925145984398.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2128 terms. -/
def A101207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101404.P6201192539946373633

`n*A101403(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101404.P6201192539946373633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A101403 n

end

end A101404.P6201192539946373633

noncomputable section

/-- A101404: a(n) = n*A101403(n).

Offset 0, canonical program `A101404.P6201192539946373633`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101403, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101404 (n : ℕ) : ℤ :=
  A101404.P6201192539946373633.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101403, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104152.P12944910986790038608

`∩[10*n, A102611(n+5)]`
-/

namespace A104152.P12944910986790038608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102611 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104152.P12944910986790038608

noncomputable section

/-- A104152: Numbers n such that n77 is prime and n is a multiple of ten.

Offset 1, canonical program `A104152.P12944910986790038608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 995 terms. -/
def A104152 (n : ℕ) : ℤ :=
  (A104152.P12944910986790038608.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 995 terms. -/
def A104152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105424.P5964440619879122362

`A007088(A105425(n))`
-/

namespace A105424.P5964440619879122362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A105425 n).toNat

end

end A105424.P5964440619879122362

noncomputable section

/-- A105424: The part of n in base phi left of the decimal point, using a greedy algorithm representation (more precisely, using the Bergman-canonical representation).

Offset 0, canonical program `A105424.P5964440619879122362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A105424 (n : ℕ) : ℤ :=
  A105424.P5964440619879122362.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A105424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106402.P14799609536326277547

`∑{d}[n+1, A002324(#)*A007434((n+1)/#)]`
-/

namespace A106402.P14799609536326277547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002324 d * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A106402.P14799609536326277547

noncomputable section

/-- A106402: Expansion of eta(q^3)^9 / eta(q)^3 in powers of q.

Offset 1, canonical program `A106402.P14799609536326277547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106402 (n : ℕ) : ℤ :=
  A106402.P14799609536326277547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106711.P16595419804593489169

`A000040(∩[A075177(n+1)-1, A075177(n+1)])`
-/

namespace A106711.P16595419804593489169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A106711.P16595419804593489169

noncomputable section

/-- A106711: Smaller prime of the set of two consecutive primes each of whose sum of digits is prime.

Offset 1, canonical program `A106711.P16595419804593489169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1622 terms. -/
def A106711 (n : ℕ) : ℤ :=
  A106711.P16595419804593489169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1622 terms. -/
def A106711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106712.P6872278606906120104

`A000040(∩[A075177(n+1)+1, A075177(n+1)])`
-/

namespace A106712.P6872278606906120104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A106712.P6872278606906120104

noncomputable section

/-- A106712: Larger prime of the set of two consecutive primes the sum of the digits of each of which is prime.

Offset 1, canonical program `A106712.P6872278606906120104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1621 terms. -/
def A106712 (n : ℕ) : ℤ :=
  A106712.P6872278606906120104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1621 terms. -/
def A106712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108164.P16644971163881353331

`A198773(eq[2, ∑{e}[A198773(n+1), #]]+1)`
-/

namespace A108164.P16644971163881353331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198773 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198773 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A108164.P16644971163881353331

noncomputable section

/-- A108164: Semiprimes p*q where both p and q are primes of the form 6n+1 (A002476).

Offset 1, canonical program `A108164.P16644971163881353331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4789 terms. -/
def A108164 (n : ℕ) : ℤ :=
  A108164.P16644971163881353331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4789 terms. -/
def A108164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108779.P13179977182298857629

`A001020(A002262(n))*A007088(A130321(n))`
-/

namespace A108779.P13179977182298857629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A002262 n).toNat * A007088 (A130321 n).toNat

end

end A108779.P13179977182298857629

noncomputable section

/-- A108779: Numbers of the form (10^i)*(11^j), with i, j >= 0.

Offset 1, canonical program `A108779.P13179977182298857629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A108779 (n : ℕ) : ℤ :=
  A108779.P13179977182298857629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A108779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111398.P16875926661935331434

`∪[A030626(n+1), A016759(n)]`
-/

namespace A111398.P16875926661935331434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111398.P16875926661935331434

noncomputable section

/-- A111398: Numbers which are the cube roots of the product of their proper divisors.

Offset 1, canonical program `A111398.P16875926661935331434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111398 (n : ℕ) : ℤ :=
  (A111398.P16875926661935331434.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111398.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A113339.P13837044038281480743

`record[(n+1)*A069158(A001223(n+1))]`
-/

namespace A113339.P13837044038281480743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069158 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113339.P13837044038281480743

noncomputable section

/-- A113339: Integers n such that prime(n+1)-prime(n) is nonprime, squarefree. Except for the initial term of 1, the terms are k-semiprime for some k>=2.

Offset 1, canonical program `A113339.P13837044038281480743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113339 (n : ℕ) : ℤ :=
  A113339.P13837044038281480743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113866.P4859233891628937342

`p?[A064491(n+1)]`
-/

namespace A113866.P4859233891628937342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113866.P4859233891628937342

noncomputable section

/-- A113866: Primes in the sequence A064491.

Offset 1, canonical program `A113866.P4859233891628937342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A113866 (n : ℕ) : ℤ :=
  A113866.P4859233891628937342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A113866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114520.P13451622057905116028

`filter[A114518(n+1), A005171(#)]`
-/

namespace A114520.P13451622057905116028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A114520.P13451622057905116028

noncomputable section

/-- A114520: Composites in sequence A114518.

Offset 1, canonical program `A114520.P13451622057905116028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5252 terms. -/
def A114520 (n : ℕ) : ℤ :=
  A114520.P13451622057905116028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5252 terms. -/
def A114520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115905.P435895685124942086

`eq[1, A002260(A000010(n+1)+n+2)]+1`
-/

namespace A115905.P435895685124942086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000010 (n + 1) + (n + 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115905.P435895685124942086

noncomputable section

/-- A115905: Numbers k such that k + phi(k) is a triangular number.

Offset 1, canonical program `A115905.P435895685124942086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A115905 (n : ℕ) : ℤ :=
  (A115905.P435895685124942086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A115905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115971.P14527840031339072436

`1-A236677(n)`
-/

namespace A115971.P14527840031339072436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A236677 n

end

end A115971.P14527840031339072436

noncomputable section

/-- A115971: a(0) = 0. If a(n) = 0, then a(2^n) through a(2^(n+1)-1) are each equal to 1. If a(n) = 1, then a(m + 2^n) = a(m) for each m, 0 <= m <= 2^n -1.

Offset 0, canonical program `A115971.P14527840031339072436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115971 (n : ℕ) : ℤ :=
  A115971.P14527840031339072436.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115971.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A117967.P4491383601677545787

`A059249(a(n-1)+n)` with `a(0)=0`
-/

namespace A117967.P4491383601677545787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A059249 (a (n - 1) + (n : ℤ)).toNat

end

end A117967.P4491383601677545787

noncomputable section

/-- A117967: Positive part of inverse of A117966; write n in balanced ternary and then replace (-1)'s with 2's.

Offset 0, canonical program `A117967.P4491383601677545787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A117967 (n : ℕ) : ℤ :=
  A117967.P4491383601677545787.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A117967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119705.P18254515124902290660

`p?[A005237(n+1)-1]`
-/

namespace A119705.P18254515124902290660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119705.P18254515124902290660

noncomputable section

/-- A119705: Primes p such that the number of divisors of p+1 equals number of divisors of p+2.

Offset 1, canonical program `A119705.P18254515124902290660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. -/
def A119705 (n : ℕ) : ℤ :=
  A119705.P18254515124902290660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. -/
def A119705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120311.P5390284773366377724

`∩[A080148(n+1), A120309(n+1)]`
-/

namespace A120311.P5390284773366377724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120311.P5390284773366377724

noncomputable section

/-- A120311: Numbers k such that pi(k) == 0 (mod 4), where pi() = A000720, and such that prime(k) == 3 (mod 4).

Offset 1, canonical program `A120311.P5390284773366377724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A120311 (n : ℕ) : ℤ :=
  (A120311.P5390284773366377724.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A120311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121494.P12392596324607679124

`filter[A074821(n+2), A005171(#)]`
-/

namespace A121494.P12392596324607679124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A121494.P12392596324607679124

noncomputable section

/-- A121494: Composite numbers k such that tau(k) = tau(2k+1).

Offset 1, canonical program `A121494.P12392596324607679124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9194 terms. -/
def A121494 (n : ℕ) : ℤ :=
  A121494.P12392596324607679124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9194 terms. -/
def A121494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122180.P2062228255680378258

`A088434(n+1)-A001281(A200213(n+1))`
-/

namespace A122180.P2062228255680378258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (n + 1) - A001281 (A200213 (n + 1)).toNat

end

end A122180.P2062228255680378258

noncomputable section

/-- A122180: Number of ways to write n as n = x*y*z with 1 < x < y < z < n.

Offset 1, canonical program `A122180.P2062228255680378258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122180 (n : ℕ) : ℤ :=
  A122180.P2062228255680378258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122373.P7813675859475871797

`∑{d}[n+1, A007434(#)*A035178((n+1)/#)]`
-/

namespace A122373.P7813675859475871797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A035178 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A122373.P7813675859475871797

noncomputable section

/-- A122373: Expansion of (c(q)^3 + c(q^2)^3) / 27 in powers of q where c() is a cubic AGM theta function.

Offset 1, canonical program `A122373.P7813675859475871797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122373 (n : ℕ) : ℤ :=
  A122373.P7813675859475871797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123240.P10296889505221293768

`eq[0, A122895(n+1)]+1`
-/

namespace A123240.P10296889505221293768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122895 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A123240.P10296889505221293768

noncomputable section

/-- A123240: Natural numbers with number of divisors not equal to a Fibonacci number.

Offset 1, canonical program `A123240.P10296889505221293768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6621 terms. -/
def A123240 (n : ℕ) : ℤ :=
  (A123240.P10296889505221293768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6621 terms. -/
def A123240.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A125721.P13273067158620434452

`2*A000142(n)/A027423(n)`
-/

namespace A125721.P13273067158620434452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000142 n : ℚ) / (A027423 n : ℚ)

end

end A125721.P13273067158620434452

noncomputable section

/-- A125721: a(n)=2*n!/d(n!); d(m)=A000005(m) is the number of divisors of m.

Offset 0, canonical program `A125721.P13273067158620434452`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027423, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125721 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125721.P13273067158620434452.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027423, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129134.P5494391760198014801

`(1-and(2, n))*A002325(n+1)`
-/

namespace A129134.P5494391760198014801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A002325 (n + 1)

end

end A129134.P5494391760198014801

noncomputable section

/-- A129134: Expansion of (1 - phi(-q) * phi(-q^2)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A129134.P5494391760198014801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A129134 (n : ℕ) : ℤ :=
  A129134.P5494391760198014801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A129134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133693.P6160581750214965149

`(-1)^n*A002325(n+1)`
-/

namespace A133693.P6160581750214965149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002325 (n + 1)

end

end A133693.P6160581750214965149

noncomputable section

/-- A133693: Expansion of (1 - phi(-q) * phi(q^2)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A133693.P6160581750214965149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133693 (n : ℕ) : ℤ :=
  A133693.P6160581750214965149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133725.P6332609790966904879

`(3*A007434(n+1)-A000010(n+1))/2`
-/

namespace A133725.P6332609790966904879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A007434 (n + 1) - A000010 (n + 1) : ℚ) / 2

end

end A133725.P6332609790966904879

noncomputable section

/-- A133725: a(n) = Sum_{d|n} mu(n/d)*d*(3*d - 1)/2.

Offset 1, canonical program `A133725.P6332609790966904879`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133725 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133725.P6332609790966904879.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134156.P1804567720612264438

`A000005(n+1)-A049820(n+1)`
-/

namespace A134156.P1804567720612264438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A049820 (n + 1)

end

end A134156.P1804567720612264438

noncomputable section

/-- A134156: a(n) = 2*tau(n) - n, where tau(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A134156.P1804567720612264438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A049820, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A134156 (n : ℕ) : ℤ :=
  A134156.P1804567720612264438.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A049820, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A134156.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134675.P852948724655989853

`A007434(n+1)+A001065(n+1)`
-/

namespace A134675.P852948724655989853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1) + A001065 (n + 1)

end

end A134675.P852948724655989853

noncomputable section

/-- A134675: Row sums of triangle A134674.

Offset 1, canonical program `A134675.P852948724655989853`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A134675 (n : ℕ) : ℤ :=
  A134675.P852948724655989853.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A134675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138010.P11552869138316052

`A046951(A009191(n+1)²)`
-/

namespace A138010.P11552869138316052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A009191 (n + 1) ^ 2).toNat

end

end A138010.P11552869138316052

noncomputable section

/-- A138010: a(n) is the number of positive divisors of n that divide d(n), where d(n) is the number of positive divisors of n, A000005(n); a(n) also equals d(gcd(n, d(n))).

Offset 1, canonical program `A138010.P11552869138316052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138010 (n : ℕ) : ℤ :=
  A138010.P11552869138316052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138707.P243569157619133773

`A046951(A214587(n+1)²)`
-/

namespace A138707.P243569157619133773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A214587 (n + 1) ^ 2).toNat

end

end A138707.P243569157619133773

noncomputable section

/-- A138707: Number of divisors of n that are also divisors of some d(k)*10^k, where n=Sum(d(k)*10^k).

Offset 1, canonical program `A138707.P243569157619133773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A138707 (n : ℕ) : ℤ :=
  A138707.P243569157619133773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A138707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138971.P14613520405082129352

`A080148(n+1)-1`
-/

namespace A138971.P14613520405082129352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080148 (n + 1) - 1

end

end A138971.P14613520405082129352

noncomputable section

/-- A138971: Positions of the primes congruent to 3 mod 4 when all primes except 2 are listed in order.

Offset 1, canonical program `A138971.P14613520405082129352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138971 (n : ℕ) : ℤ :=
  A138971.P14613520405082129352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138972.P14593272602870209204

`A138968(n+1)-1`
-/

namespace A138972.P14593272602870209204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138968 (n + 1) - 1

end

end A138972.P14593272602870209204

noncomputable section

/-- A138972: Positions of the primes congruent to 1 mod 6 when all primes except 2 and 3 are listed in order.

Offset 1, canonical program `A138972.P14593272602870209204`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138972 (n : ℕ) : ℤ :=
  A138972.P14593272602870209204.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139588.P5307626544462001957

`filter[A018252(n+1), A122895(#)]`
-/

namespace A139588.P5307626544462001957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A139588.P5307626544462001957

noncomputable section

/-- A139588: Nonprime numbers with Fibonacci number of divisors.

Offset 1, canonical program `A139588.P5307626544462001957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A139588 (n : ℕ) : ℤ :=
  A139588.P5307626544462001957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A139588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139708.P11046973668171261944

`A057889(A059893(n+1))`
-/

namespace A139708.P11046973668171261944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A059893 (n + 1)).toNat

end

end A139708.P11046973668171261944

noncomputable section

/-- A139708: Take n in binary. Rotate the binary digits to the left until a 1 once again appears as the leftmost digit. Convert back into decimal for a(n).

Offset 1, canonical program `A139708.P11046973668171261944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139708 (n : ℕ) : ℤ :=
  A139708.P11046973668171261944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140266.P8746548474832639475

`A004741((n+1)²-A004488(n))`
-/

namespace A140266.P8746548474832639475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (((n + 1) ^ 2 : ℤ) - A004488 n).toNat

end

end A140266.P8746548474832639475

noncomputable section

/-- A140266: Inverse permutation to A140265.

Offset 1, canonical program `A140266.P8746548474832639475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A140266 (n : ℕ) : ℤ :=
  A140266.P8746548474832639475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A140266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140773.P9739347816414512295

`(A007425(n+1)+A046951(n+1))/2`
-/

namespace A140773.P9739347816414512295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007425 (n + 1) + A046951 (n + 1) : ℚ) / 2

end

end A140773.P9739347816414512295

noncomputable section

/-- A140773: Consider the products of all pairs of (not necessarily distinct) positive divisors of n. a(n) is the number of these products that divide n. a(n) also is the number of the products that are divisible by n.

Offset 1, canonical program `A140773.P9739347816414512295`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A140773 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140773.P9739347816414512295.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A140773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140900.P9807194820524683252

`eq[0, A159780(n)]`
-/

namespace A140900.P9807194820524683252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140900.P9807194820524683252

noncomputable section

/-- A140900: A nonnegative integer n is included if the binary representation of n and the digit-reversal (with leading 0's) of the binary representation of n do not have any 1's in the same position.

Offset 1, canonical program `A140900.P9807194820524683252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140900 (n : ℕ) : ℤ :=
  (A140900.P9807194820524683252.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141545.P10467952662609606234

`∩[A036456(n+1), A274557(n+1)]`
-/

namespace A141545.P10467952662609606234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P10467952662609606234

noncomputable section

/-- A141545: Numbers k whose abundance is 12: sigma(k) - 2*k = 12.

Offset 1, canonical program `A141545.P10467952662609606234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A141545 (n : ℕ) : ℤ :=
  (A141545.P10467952662609606234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A141545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143271.P8968321967540902119

`A000005(A002024(n+1))*A002260(n+1)`
-/

namespace A143271.P8968321967540902119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002024 (n + 1)).toNat * A002260 (n + 1)

end

end A143271.P8968321967540902119

noncomputable section

/-- A143271: Triangle read by rows: A130209 * A000012 * A127648.

Offset 1, canonical program `A143271.P8968321967540902119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143271 (n : ℕ) : ℤ :=
  A143271.P8968321967540902119.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143273.P10442517176887740100

`A000005(A002260(n+1))*A002024(n+1)`
-/

namespace A143273.P10442517176887740100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002260 (n + 1)).toNat * A002024 (n + 1)

end

end A143273.P10442517176887740100

noncomputable section

/-- A143273: Triangle read by rows: A127648 * A000012 * A130209.

Offset 1, canonical program `A143273.P10442517176887740100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143273 (n : ℕ) : ℤ :=
  A143273.P10442517176887740100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143513.P17585744667518437941

`record[(n+1)/A003958(A003958(n+1))]`
-/

namespace A143513.P17585744667518437941
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003958 (A003958 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143513.P17585744667518437941

noncomputable section

/-- A143513: Numbers of the form 2^a * 3^b * 5^c * 17^d * 257^e * 65537^f; products of 2 and the Fermat primes.

Offset 1, canonical program `A143513.P17585744667518437941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 612 terms. -/
def A143513 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143513.P17585744667518437941.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 612 terms. -/
def A143513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144925.P3583665852339168035

`A000005(Δ[A053767(n)])-2`
-/

namespace A144925.P3583665852339168035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat - 2

end

end A144925.P3583665852339168035

noncomputable section

/-- A144925: Number of nontrivial divisors of the n-th composite number.

Offset 1, canonical program `A144925.P3583665852339168035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144925 (n : ℕ) : ℤ :=
  A144925.P3583665852339168035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145450.P1966516073320817296

`∩[A033950(n+1), A069067(n+1)]`
-/

namespace A145450.P1966516073320817296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145450.P1966516073320817296

noncomputable section

/-- A145450: Numbers k such that k/A000005(k) is a square.

Offset 1, canonical program `A145450.P1966516073320817296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A145450 (n : ℕ) : ℤ :=
  (A145450.P1966516073320817296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A145450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145769.P7080382248331292416

`∩[A006532(n+1), A036436(n+1)]`
-/

namespace A145769.P7080382248331292416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145769.P7080382248331292416

noncomputable section

/-- A145769: Numbers k such that the number of positive divisors of k and the sum of the positive divisors of k are both square numbers.

Offset 1, canonical program `A145769.P7080382248331292416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A145769 (n : ℕ) : ℤ :=
  (A145769.P7080382248331292416.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A145769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151948.P11800530288407106297

`A062068(A109606(n+1)+1)`
-/

namespace A151948.P11800530288407106297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (A109606 (n + 1) + 1).toNat

end

end A151948.P11800530288407106297

noncomputable section

/-- A151948: a(n) = tau(sigma(phi(n))).

Offset 1, canonical program `A151948.P11800530288407106297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151948 (n : ℕ) : ℤ :=
  A151948.P11800530288407106297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152771.P13412887130094788285

`A000203(n+1)-A114003(n+1)`
-/

namespace A152771.P13412887130094788285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A114003 (n + 1)

end

end A152771.P13412887130094788285

noncomputable section

/-- A152771: a(n) = sigma(n) - 2*d(n) + 1.

Offset 1, canonical program `A152771.P13412887130094788285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A114003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152771 (n : ℕ) : ℤ :=
  A152771.P13412887130094788285.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A114003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152771.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152985.P4090610972205696402

`A065608((n+1)²)-n*(n+2)`
-/

namespace A152985.P4090610972205696402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 ((n + 1) ^ 2) - (n * (n + 2) : ℤ)

end

end A152985.P4090610972205696402

noncomputable section

/-- A152985: Sum of proper divisors minus the number of proper divisors of the square A000290(n).

Offset 1, canonical program `A152985.P4090610972205696402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A152985 (n : ℕ) : ℤ :=
  A152985.P4090610972205696402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A152985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152986.P10864123389645543877

`A065608(A000326(n+1))+1-A000326(n+1)`
-/

namespace A152986.P10864123389645543877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (A000326 (n + 1)).toNat + (1 - A000326 (n + 1))

end

end A152986.P10864123389645543877

noncomputable section

/-- A152986: Sum of proper divisors minus the number of proper divisors of pentagonal number A000326(n).

Offset 1, canonical program `A152986.P10864123389645543877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A152986 (n : ℕ) : ℤ :=
  A152986.P10864123389645543877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A152986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152992.P10206136984884417694

`A065608(n+1)-A000720(n+1)`
-/

namespace A152992.P10206136984884417694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) - A000720 (n + 1)

end

end A152992.P10206136984884417694

noncomputable section

/-- A152992: a(n) = sigma(n) - d(n) - pi(n).

Offset 1, canonical program `A152992.P10206136984884417694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A065608, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A152992 (n : ℕ) : ℤ :=
  A152992.P10206136984884417694.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A065608, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A152992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153788.P4198305978530068517

`A152763(n)-1`
-/

namespace A153788.P4198305978530068517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152763 n - 1

end

end A153788.P4198305978530068517

noncomputable section

/-- A153788: Number of proper divisors of the Catalan number A000108(n).

Offset 0, canonical program `A153788.P4198305978530068517`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153788 (n : ℕ) : ℤ :=
  A153788.P4198305978530068517.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153788.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153823.P12958428199370976494

`A027423(n)-1`
-/

namespace A153823.P12958428199370976494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n - 1

end

end A153823.P12958428199370976494

noncomputable section

/-- A153823: Number of proper divisors of n!.

Offset 0, canonical program `A153823.P12958428199370976494`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027423, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153823 (n : ℕ) : ℤ :=
  A153823.P12958428199370976494.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027423, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153823.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A155043.P15229404394103528317

`1+a(A049820(n))` with `a(0)=0, a(1)=1`
-/

namespace A155043.P15229404394103528317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A049820 n).toNat

end

end A155043.P15229404394103528317

noncomputable section

/-- A155043: a(0)=0; for n >= 1, a(n) = 1 + a(n-d(n)), where d(n) is the number of divisors of n (A000005).

Offset 0, canonical program `A155043.P15229404394103528317`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155043 (n : ℕ) : ℤ :=
  (A155043.P15229404394103528317.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155043.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A155560.P3033731189565993518

`filter[A092572(n+1), A353814(#)]`
-/

namespace A155560.P3033731189565993518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A155560.P3033731189565993518

noncomputable section

/-- A155560: Intersection of A000404 and A092572: N = a^2 + b^2 = c^2 + 3d^2 with a,b,c,d>0.

Offset 1, canonical program `A155560.P3033731189565993518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2672 terms. -/
def A155560 (n : ℕ) : ℤ :=
  A155560.P3033731189565993518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2672 terms. -/
def A155560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157228.P6044199204996125931

`(A000089(n+1)-A019590(n+1))/2`
-/

namespace A157228.P6044199204996125931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000089 (n + 1) - A019590 (n + 1) : ℚ) / 2

end

end A157228.P6044199204996125931

noncomputable section

/-- A157228: Number of primitive inequivalent inclined square sublattices of square lattice of index n.

Offset 1, canonical program `A157228.P6044199204996125931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, A019590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157228 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157228.P6044199204996125931.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, A019590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157230.P2365165212862762183

`(A060594(n+1)-A019590(n+1))/2`
-/

namespace A157230.P2365165212862762183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060594 (n + 1) - A019590 (n + 1) : ℚ) / 2

end

end A157230.P2365165212862762183

noncomputable section

/-- A157230: Number of primitive inequivalent sublattices of square lattice having mirrors parallel to the diagonals of the unit cell of the parent lattice of index n.

Offset 1, canonical program `A157230.P2365165212862762183`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019590, A060594, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157230 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157230.P2365165212862762183.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019590, A060594, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157230.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158299.P14078010460539491531

`A001157(n+1)/gcd(A001157(n+1), A062011(n+1))`
-/

namespace A158299.P14078010460539491531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (Int.gcd (A001157 (n + 1)) (A062011 (n + 1)) : ℚ)

end

end A158299.P14078010460539491531

noncomputable section

/-- A158299: Numerators of averages of squares of the divisors of n.

Offset 1, canonical program `A158299.P14078010460539491531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158299 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A158299.P14078010460539491531.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158901.P2411227311583190290

`1+A065608(n+1)`
-/

namespace A158901.P2411227311583190290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A065608 (n + 1)

end

end A158901.P2411227311583190290

noncomputable section

/-- A158901: A051731 * (1, 1, 2, 3, 4, 5, ...).

Offset 1, canonical program `A158901.P2411227311583190290`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065608, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158901 (n : ℕ) : ℤ :=
  A158901.P2411227311583190290.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065608, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160892.P12129593318586188066

`15*A160889(n+1)`
-/

namespace A160892.P12129593318586188066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A160889 (n + 1)

end

end A160892.P12129593318586188066

noncomputable section

/-- A160892: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 4.

Offset 1, canonical program `A160892.P12129593318586188066`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160892 (n : ℕ) : ℤ :=
  A160892.P12129593318586188066.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160894.P7293678197695022492

`31*A160891(n+1)`
-/

namespace A160894.P7293678197695022492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 * A160891 (n + 1)

end

end A160894.P7293678197695022492

noncomputable section

/-- A160894: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 5.

Offset 1, canonical program `A160894.P7293678197695022492`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160894 (n : ℕ) : ℤ :=
  A160894.P7293678197695022492.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160896.P15933310030781691343

`63*A160893(n+1)`
-/

namespace A160896.P15933310030781691343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  63 * A160893 (n + 1)

end

end A160896.P15933310030781691343

noncomputable section

/-- A160896: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 6.

Offset 1, canonical program `A160896.P15933310030781691343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160896 (n : ℕ) : ℤ :=
  A160896.P15933310030781691343.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160896.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160898.P5753092248200493020

`127*A160895(n+1)`
-/

namespace A160898.P5753092248200493020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  127 * A160895 (n + 1)

end

end A160898.P5753092248200493020

noncomputable section

/-- A160898: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 7.

Offset 1, canonical program `A160898.P5753092248200493020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160898 (n : ℕ) : ℤ :=
  A160898.P5753092248200493020.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160898.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160913.P16731336130938992374

`255*A160897(n+1)`
-/

namespace A160913.P16731336130938992374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  255 * A160897 (n + 1)

end

end A160913.P16731336130938992374

noncomputable section

/-- A160913: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 8.

Offset 1, canonical program `A160913.P16731336130938992374`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160913 (n : ℕ) : ℤ :=
  A160913.P16731336130938992374.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160956.P1802841215077054632

`511*A160908(n+1)`
-/

namespace A160956.P1802841215077054632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  511 * A160908 (n + 1)

end

end A160956.P1802841215077054632

noncomputable section

/-- A160956: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 9.

Offset 1, canonical program `A160956.P1802841215077054632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160956 (n : ℕ) : ℤ :=
  A160956.P1802841215077054632.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160956.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160972.P10328099809638499813

`A160895(n+1)*A351301(n+1)`
-/

namespace A160972.P10328099809638499813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160895 (n + 1) * A351301 (n + 1)

end

end A160972.P10328099809638499813

noncomputable section

/-- A160972: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 13.

Offset 1, canonical program `A160972.P10328099809638499813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160972 (n : ℕ) : ℤ :=
  A160972.P10328099809638499813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161025.P16166816335795081500

`A160897(n+1)*A351302(n+1)`
-/

namespace A161025.P16166816335795081500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160897 (n + 1) * A351302 (n + 1)

end

end A161025.P16166816335795081500

noncomputable section

/-- A161025: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 15.

Offset 1, canonical program `A161025.P16166816335795081500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161025 (n : ℕ) : ℤ :=
  A161025.P16166816335795081500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161886.P10842892658287364340

`A006590(n+2)-2`
-/

namespace A161886.P10842892658287364340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 2) - 2

end

end A161886.P10842892658287364340

noncomputable section

/-- A161886: Number of nonzero elements in the n X n Redheffer matrix.

Offset 1, canonical program `A161886.P10842892658287364340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161886 (n : ℕ) : ℤ :=
  A161886.P10842892658287364340.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161886.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161913.P5348750324054830820

`comp[A068526(n+1)-1]+1`
-/

namespace A161913.P5348750324054830820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A161913.P5348750324054830820

noncomputable section

/-- A161913: Numbers k such that A001223(k) <> A000005(k).

Offset 1, canonical program `A161913.P5348750324054830820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161913 (n : ℕ) : ℤ :=
  (A161913.P5348750324054830820.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163371.P10951625180429939531

`∏{e}[A062401(n+1), #+1]`
-/

namespace A163371.P10951625180429939531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A163371.P10951625180429939531

noncomputable section

/-- A163371: a(n) = tau(phi(sigma(n))).

Offset 1, canonical program `A163371.P10951625180429939531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163371 (n : ℕ) : ℤ :=
  (A163371.P10951625180429939531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163373.P3735278863106384041

`A000010(A062401(n+1))`
-/

namespace A163373.P3735278863106384041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A062401 (n + 1)).toNat

end

end A163373.P3735278863106384041

noncomputable section

/-- A163373: a(n) = phi(phi(sigma(n))).

Offset 1, canonical program `A163373.P3735278863106384041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163373 (n : ℕ) : ℤ :=
  A163373.P3735278863106384041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163374.P17149860295564583967

`∏{e}[A032741(A109606(n+1)+1)+1, #+1]`
-/

namespace A163374.P17149860295564583967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A109606 (n + 1) + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A163374.P17149860295564583967

noncomputable section

/-- A163374: a(n) = tau(tau(phi(n))).

Offset 1, canonical program `A163374.P17149860295564583967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163374 (n : ℕ) : ℤ :=
  (A163374.P17149860295564583967.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163408.P15967600564679834179

`comp[A114518(n+1)-2]+2`
-/

namespace A163408.P15967600564679834179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A163408.P15967600564679834179

noncomputable section

/-- A163408: Positive integers n such that A008475(n) is composite.

Offset 1, canonical program `A163408.P15967600564679834179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163408 (n : ℕ) : ℤ :=
  (A163408.P15967600564679834179.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080218.P8051704122228594511

`comp[A182859(n+1)-1]+1`
-/

namespace A080218.P8051704122228594511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182859 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080218.P8051704122228594511

noncomputable section

/-- A080218: Monotonically increasing sequence such that every positive integer n appears if and only if d(n) doesn't (d(n)=number of divisors of n, A000005).

Offset 1, canonical program `A080218.P8051704122228594511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080218 (n : ℕ) : ℤ :=
  (A080218.P8051704122228594511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085722.P4138878208806873837

`eq[4, A193432(n)]`
-/

namespace A085722.P4138878208806873837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085722.P4138878208806873837

noncomputable section

/-- A085722: Numbers k such that k^2 + 1 is a semiprime.

Offset 1, canonical program `A085722.P4138878208806873837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2826 terms. -/
def A085722 (n : ℕ) : ℤ :=
  (A085722.P4138878208806873837.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2826 terms. -/
def A085722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087692.P14815720998810141369

`A115070(A282779(n+1))`
-/

namespace A087692.P14815720998810141369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115070 (A282779 (n + 1)).toNat

end

end A087692.P14815720998810141369

noncomputable section

/-- A087692: Number of cubes in multiplicative group modulo n.

Offset 1, canonical program `A087692.P14815720998810141369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087692 (n : ℕ) : ℤ :=
  A087692.P14815720998810141369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090780.P1948436138477558002

`A299822(n+1)/2^A001221(n+1)`
-/

namespace A090780.P1948436138477558002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299822 (n + 1) : ℚ) / (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A090780.P1948436138477558002

noncomputable section

/-- A090780: a(n) = n*Product_{p prime, p|n} (p - 1)/2.

Offset 1, canonical program `A090780.P1948436138477558002`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A299822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A090780 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090780.P1948436138477558002.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A299822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A090780.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091192.P718814886778094083

`eq[A294930(n+1), A294935(n+1)]+1`
-/

namespace A091192.P718814886778094083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A091192.P718814886778094083

noncomputable section

/-- A091192: Abundant numbers having at least one abundant proper divisor.

Offset 1, canonical program `A091192.P718814886778094083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091192 (n : ℕ) : ℤ :=
  (A091192.P718814886778094083.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099103.P14963529761325271933

`lt[A055642(A225530(n)), A055642(n)]`
-/

namespace A099103.P14963529761325271933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099103.P14963529761325271933

noncomputable section

/-- A099103: Natural numbers n with more digits than Euler totient phi(n).

Offset 1, canonical program `A099103.P14963529761325271933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A099103 (n : ℕ) : ℤ :=
  (A099103.P14963529761325271933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A099103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105499.P17659406568366471516

`A130784(A289813(n)+2)`
-/

namespace A105499.P17659406568366471516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A289813 n + 2).toNat

end

end A105499.P17659406568366471516

noncomputable section

/-- A105499: Trajectory of 1 under the morphism 1->{2,1,2}, 2->{1,3,1}, 3->{3,2,3}.

Offset 0, canonical program `A105499.P17659406568366471516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105499 (n : ℕ) : ℤ :=
  A105499.P17659406568366471516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114871.P5701746807057101

`lt[acot(1), A134269(n+1)]+1`
-/

namespace A114871.P5701746807057101
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A114871.P5701746807057101

noncomputable section

/-- A114871: Numbers of the form (p-1)p^k (where p is a prime and k>=0) in ascending order.

Offset 1, canonical program `A114871.P5701746807057101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A114871 (n : ℕ) : ℤ :=
  (A114871.P5701746807057101.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A114871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120350.P15236837773027403607

`∩[A033950(n+1), A120351(n+1)]`
-/

namespace A120350.P15236837773027403607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120350.P15236837773027403607

noncomputable section

/-- A120350: Refactorable numbers k such that the number of odd divisors and the number of even divisors of k are both divisors of k.

Offset 1, canonical program `A120350.P15236837773027403607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 809 terms. -/
def A120350 (n : ℕ) : ℤ :=
  (A120350.P15236837773027403607.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 809 terms. -/
def A120350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123978.P13458837915136754456

`∩[A139405(n+1), A139407(n+1)]`
-/

namespace A123978.P13458837915136754456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123978.P13458837915136754456

noncomputable section

/-- A123978: Numbers k for which 8*k+1, 8*k+3 and 8*k+7 are primes.

Offset 1, canonical program `A123978.P13458837915136754456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A123978 (n : ℕ) : ℤ :=
  (A123978.P13458837915136754456.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A123978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132857.P7774068241666715139

`A363097(n+1)-(n+1)`
-/

namespace A132857.P7774068241666715139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363097 (n + 1) - (n + 1 : ℤ)

end

end A132857.P7774068241666715139

noncomputable section

/-- A132857: a(0)=1. a(n) = phi(n+a(n-1)), for n>=1, where phi(m) is the number of positive integers which are <= m and are coprime to m.

Offset 0, canonical program `A132857.P7774068241666715139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A132857 (n : ℕ) : ℤ :=
  A132857.P7774068241666715139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A132857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134406.P9151964709588711400

`lt[2, A193432(n)]²+1`
-/

namespace A134406.P9151964709588711400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2 + 1

end

end A134406.P9151964709588711400

noncomputable section

/-- A134406: Composite numbers of the form k^2 + 1.

Offset 1, canonical program `A134406.P9151964709588711400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9159 terms. -/
def A134406 (n : ℕ) : ℤ :=
  (A134406.P9151964709588711400.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9159 terms. -/
def A134406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137926.P10137860299111423263

`lcm(n+1, A163299(n+1))/A163299(n+1)`
-/

namespace A137926.P10137860299111423263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A163299 (n + 1)) : ℚ) / (A163299 (n + 1) : ℚ)

end

end A137926.P10137860299111423263

noncomputable section

/-- A137926: a(n) = the largest divisor of n that is coprime to A000005(n). (A000005(n) = the number of positive divisors of n.)

Offset 1, canonical program `A137926.P10137860299111423263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137926 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137926.P10137860299111423263.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147806.P12689677907134375891

`∑[A193432(n+1)/2-1]`
-/

namespace A147806.P12689677907134375891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193432 (n + 1) : ℚ) / 2 - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147806.P12689677907134375891

noncomputable section

/-- A147806: Partial sums of A147809(n) = tau(n^2 + 1)/2 - 1.

Offset 1, canonical program `A147806.P12689677907134375891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147806 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A147806.P12689677907134375891.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154689.P8500291516967621561

`eq[1, char[A062249(A175304(n+1))]]`
-/

namespace A154689.P8500291516967621561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (A175304 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154689.P8500291516967621561

noncomputable section

/-- A154689: Numbers n such that sigma_0(n-sigma_0(n))= sigma_0(n).

Offset 1, canonical program `A154689.P8500291516967621561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A154689 (n : ℕ) : ℤ :=
  (A154689.P8500291516967621561.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A154689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157346.P9858211536238811526

`∩[A007304(n+1), A156541(n+1)]`
-/

namespace A157346.P9858211536238811526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157346.P9858211536238811526

noncomputable section

/-- A157346: Products of 3 distinct Sophie Germain primes.

Offset 1, canonical program `A157346.P9858211536238811526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 807 terms. -/
def A157346 (n : ℕ) : ℤ :=
  (A157346.P9858211536238811526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 807 terms. -/
def A157346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159961.P2276132974852648584

`A003215(lt[1, A350090(n)])`
-/

namespace A159961.P2276132974852648584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A159961.P2276132974852648584

noncomputable section

/-- A159961: Cuban composites: composite numbers equal to the difference of two consecutive cubes.

Offset 1, canonical program `A159961.P2276132974852648584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8035 terms. -/
def A159961 (n : ℕ) : ℤ :=
  A159961.P2276132974852648584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8035 terms. -/
def A159961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162143.P2076456533087592741

`A007304(n+1)²`
-/

namespace A162143.P2076456533087592741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1) ^ 2

end

end A162143.P2076456533087592741

noncomputable section

/-- A162143: Numbers that are the squares of the product of three distinct primes.

Offset 1, canonical program `A162143.P2076456533087592741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162143 (n : ℕ) : ℤ :=
  A162143.P2076456533087592741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162144.P1786924221262426532

`A007304(n+1)^3`
-/

namespace A162144.P1786924221262426532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1) ^ 3

end

end A162144.P1786924221262426532

noncomputable section

/-- A162144: Products of cubes of 3 distinct primes.

Offset 1, canonical program `A162144.P1786924221262426532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162144 (n : ℕ) : ℤ :=
  A162144.P1786924221262426532.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162144.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163343.P18183862503228985629

`A338086(A128173(n))`
-/

namespace A163343.P18183862503228985629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 (A128173 n).toNat

end

end A163343.P18183862503228985629

noncomputable section

/-- A163343: Central diagonal of A163334 and A163336.

Offset 0, canonical program `A163343.P18183862503228985629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128173, A338086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163343 (n : ℕ) : ℤ :=
  A163343.P18183862503228985629.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128173, A338086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100337.P11188072152999393634

`A100336(xor(n, xor(n, A100336(n+1))))`
-/

namespace A100337.P11188072152999393634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100336 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A100336 (n + 1)))).toNat

end

end A100337.P11188072152999393634

noncomputable section

/-- A100337: Arshon's sequence with a different start: start from 3 and replace the letters in odd positions using 1 -> 123, 2 -> 231, 3 -> 312 and the letters in even positions using 1 -> 321, 2-> 132, 3 -> 213.

Offset 1, canonical program `A100337.P11188072152999393634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A100337 (n : ℕ) : ℤ :=
  A100337.P11188072152999393634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A100337.provenance : SequenceMachineLib.Provenance := .conjectured

