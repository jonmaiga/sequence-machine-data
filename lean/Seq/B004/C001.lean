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
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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

/-! ## A093505.P1791230667715959471

`floor(A001969(n+1)/2+1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093505.P1791230667715959471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001969 (n + 1) : ℚ) / 2 + (1 : ℚ) / 2⌋

end

end A093505.P1791230667715959471

noncomputable section

/-- A093505: a(n) = floor(A001969(n)/2 + 1/2).

Offset 1, canonical program `A093505.P1791230667715959471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093505 (n : ℕ) : ℤ :=
  A093505.P1791230667715959471.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093505.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A097454.P2717210328983116484

`1+A072731(n+1)`
-/

namespace A097454.P2717210328983116484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A072731 (n + 1)

end

end A097454.P2717210328983116484

noncomputable section

/-- A097454: a(n) = (number of nonprimes <= n) - (number of primes <= n).

Offset 1, canonical program `A097454.P2717210328983116484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097454 (n : ℕ) : ℤ :=
  A097454.P2717210328983116484.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097454.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107254.P8896513998001831719

`A107252(n)*A000142(n)`
-/

namespace A107254.P8896513998001831719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107252 n * A000142 n

end

end A107254.P8896513998001831719

noncomputable section

/-- A107254: a(n) = SF(2n-1)/SF(n-1)^2 where SF = A000178.

Offset 0, canonical program `A107254.P8896513998001831719`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107254 (n : ℕ) : ℤ :=
  A107254.P8896513998001831719.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107254.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112491.P10615726357068052905

`(n+10)*a(n-1)+(n+9)*A112490(n+4)` with `a(0)=945`
-/

namespace A112491.P10615726357068052905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [945] fun n a =>
  (n + 10 : ℤ) * a (n - 1) + (n + 9 : ℤ) * A112490 (n + 4)

end

end A112491.P10615726357068052905

noncomputable section

/-- A112491: Sixth column of triangle A112486 used for e.g.f.s of |Stirling1|=|A008275| diagonals.

Offset 5, canonical program `A112491.P10615726357068052905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112491 (n : ℕ) : ℤ :=
  A112491.P10615726357068052905.a (n - 5)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112491.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A136277.P8666335175623531622

`C(A000120(n), A069010(n))`
-/

namespace A136277.P8666335175623531622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 n).toNat (A069010 n).toNat

end

end A136277.P8666335175623531622

noncomputable section

/-- A136277: From the binary representation of n: binomial(number of ones, number of blocks of contiguous ones).

Offset 0, canonical program `A136277.P8666335175623531622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136277 (n : ℕ) : ℤ :=
  (A136277.P8666335175623531622.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136277.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136363.P13840495246310185184

`A072692(n+1)-10^(n+1)*(10^(n+1)+3)/2+1`
-/

namespace A136363.P13840495246310185184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072692 (n + 1) : ℚ) - (10 ^ (n + 1) * (10 ^ (n + 1) + 3) : ℚ) / 2 + 1

end

end A136363.P13840495246310185184

noncomputable section

/-- A136363: a(n) = Sum_{ composite k, 1 <= k <= 10^n} (Sum of divisors d of k with 1 < d < k).

Offset 1, canonical program `A136363.P13840495246310185184`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136363 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A136363.P13840495246310185184.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136363.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A138418.P2359058537116539460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138418 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138418.P2359058537116539460.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138418.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A138419.P4878153572182925303`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138419 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138419.P4878153572182925303.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138419.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A138420.P16878004512610673702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138420 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138420.P16878004512610673702.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138420.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A138421.P8558237801673403202`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138421 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138421.P8558237801673403202.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138421.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A138422.P7361952017647566611`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138422 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138422.P7361952017647566611.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138422.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A138448.P10621642085581528040`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138448 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138448.P10621642085581528040.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138448.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A138452.P14547516998140644137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138452 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138452.P14547516998140644137.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138452.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A139240.P18445357465252311486`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139240 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139240.P18445357465252311486.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139240.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140592.P9802847602468291615

`A001969(n+1)+2`
-/

namespace A140592.P9802847602468291615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1) + 2

end

end A140592.P9802847602468291615

noncomputable section

/-- A140592: a(n) = 2n if A010060(n-1) is 0, and a(n) = 2n+1 if A010060(n-1) is 1.

Offset 1, canonical program `A140592.P9802847602468291615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140592 (n : ℕ) : ℤ :=
  A140592.P9802847602468291615.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140592.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A160467.P4224605916113656247

`(1+A140670(n+1))/2`
-/

namespace A160467.P4224605916113656247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A140670 (n + 1) : ℚ) / 2

end

end A160467.P4224605916113656247

noncomputable section

/-- A160467: a(n) = 1 if n is odd; otherwise, a(n) = 2^(k-1) where 2^k is the largest power of 2 that divides n.

Offset 1, canonical program `A160467.P4224605916113656247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160467 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160467.P4224605916113656247.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160467.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A174028.P16821711735342796914`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174028 (n : ℕ) : ℤ :=
  A174028.P16821711735342796914.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174028.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A177687.P13636215687742854353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177687 (n : ℕ) : ℤ :=
  A177687.P13636215687742854353.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177687.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094290.P11263062616059200680

`A000040(A001511(n+1))`
-/

namespace A094290.P11263062616059200680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001511 (n + 1)).toNat

end

end A094290.P11263062616059200680

noncomputable section

/-- A094290: a(n) = prime(A001511(n)), where A001511 is one more than the 2-adic valuation of n.

Offset 1, canonical program `A094290.P11263062616059200680`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094290 (n : ℕ) : ℤ :=
  A094290.P11263062616059200680.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094290.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A104002.P1106834138281463142

`A004736(n+1)*A002260(n+1)^(A004736(n+1)-1)`
-/

namespace A104002.P1106834138281463142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) * (A002260 (n + 1) : ℚ) ^ (A004736 (n + 1) - 1 : ℤ)

end

end A104002.P1106834138281463142

noncomputable section

/-- A104002: Triangle T(n,k) read by rows: number of permutations in S_n avoiding all k-length patterns that start with 1 except one fixed pattern and containing it exactly once.

Offset 2, canonical program `A104002.P1106834138281463142`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104002 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A104002.P1106834138281463142.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104002.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A115364.P11989985913028206529`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(A001511(n+1))` (program `A115364.P11989985913028206529`, by `A115364.P11989985913028206529.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A115364 (n : ℕ) : ℤ :=
  A115364.P11989985913028206529.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(A001511(n+1))` (program `A115364.P11989985913028206529`, by `A115364.P11989985913028206529.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A115364.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A127899.P14070485524225335318

`floor((A002260(n+1)+2)/(A003056(n)+2))*(A003056(n)+1)*(-1)^(A002260(n+1)+A003056(n)+1)`
-/

namespace A127899.P14070485524225335318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A002260 (n + 1) + 2 : ℚ) / (A003056 n + 2 : ℚ)⌋ * (A003056 n + 1) : ℚ) * (-1 : ℚ) ^ (A002260 (n + 1) + A003056 n + 1 : ℤ)

end

end A127899.P14070485524225335318

noncomputable section

/-- A127899: Transform related to the harmonic series.

Offset 1, canonical program `A127899.P14070485524225335318`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127899 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127899.P14070485524225335318.a (n - 1))

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

Offset 1, canonical program `A133525.P8571172351566193877`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133525 (n : ℕ) : ℤ :=
  A133525.P8571172351566193877.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133525.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A133526.P8358073913299201745`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133526 (n : ℕ) : ℤ :=
  A133526.P8358073913299201745.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133526.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A133528.P15802330686603295123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133528 (n : ℕ) : ℤ :=
  A133528.P15802330686603295123.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133528.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A144328.P13677371458497017703

`A002260(n+1)+A010054(n)-1`
-/

namespace A144328.P13677371458497017703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A010054 n - 1

end

end A144328.P13677371458497017703

noncomputable section

/-- A144328: A002260 preceded by a column of 1's: a (1, 1, 2, 3, 4, 5, ...) crescendo triangle by rows.

Offset 1, canonical program `A144328.P13677371458497017703`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144328 (n : ℕ) : ℤ :=
  A144328.P13677371458497017703.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144328.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A156353.P8326413882175110016

`A004736(n+1)^A002260(n+1)+A002260(n+1)^A004736(n+1)`
-/

namespace A156353.P8326413882175110016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A002260 (n + 1) : ℤ) + (A002260 (n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A156353.P8326413882175110016

noncomputable section

/-- A156353: A symmetrical powers triangle sequence: t(n,m) = (m^(n - m) + (n - m)^m).

Offset 1, canonical program `A156353.P8326413882175110016`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156353 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156353.P8326413882175110016.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165725.P14061313058113490236

`(n+1)/A355582(n+1)`
-/

namespace A165725.P14061313058113490236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A355582 (n + 1) : ℚ)

end

end A165725.P14061313058113490236

noncomputable section

/-- A165725: Largest divisor of n coprime to 30. I.e., a(n) = max { k | gcd(n, k) = k and gcd(k, 30) = 1 }.

Offset 1, canonical program `A165725.P14061313058113490236`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165725 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A165725.P14061313058113490236.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165725.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A088007.P4474793135921286268

`lt[A033879(n+1)², n+2]+1`
-/

namespace A088007.P4474793135921286268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088007.P4474793135921286268

noncomputable section

/-- A088007: Numbers n such that abs(sigma(n) - 2n) <= sqrt(n).

Offset 1, canonical program `A088007.P4474793135921286268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 886 terms. -/
def A088007 (n : ℕ) : ℤ :=
  (A088007.P4474793135921286268.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 886 terms. -/
def A088007.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A090973.P12922330251886877101

`A076080(n+1)+1`
-/

namespace A090973.P12922330251886877101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076080 (n + 1) + 1

end

end A090973.P12922330251886877101

noncomputable section

/-- A090973: a(n) = ceiling(prime(n)/n).

Offset 1, canonical program `A090973.P12922330251886877101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090973 (n : ℕ) : ℤ :=
  A090973.P12922330251886877101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090973.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A092131.P9669914762726222244

`A007920(A000079(n+1))`
-/

namespace A092131.P9669914762726222244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A000079 (n + 1)).toNat

end

end A092131.P9669914762726222244

noncomputable section

/-- A092131: Distance from 2^n to the next prime.

Offset 1, canonical program `A092131.P9669914762726222244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092131 (n : ℕ) : ℤ :=
  A092131.P9669914762726222244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092131.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A095729.P4795337716615768616

`A002260(n+1)*A049777(n+1)`
-/

namespace A095729.P4795337716615768616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A049777 (n + 1)

end

end A095729.P4795337716615768616

noncomputable section

/-- A095729: A002260 squared, as an infinite lower triangular matrix, read by rows.

Offset 1, canonical program `A095729.P4795337716615768616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095729 (n : ℕ) : ℤ :=
  A095729.P4795337716615768616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095729.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A096620.P12757446567571572911

`A093419(A028310(n))`
-/

namespace A096620.P12757446567571572911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093419 (A028310 n).toNat

end

end A096620.P12757446567571572911

noncomputable section

/-- A096620: Denominator of -3*n + 2*(1+n)*HarmonicNumber(n).

Offset 0, canonical program `A096620.P12757446567571572911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A096620 (n : ℕ) : ℤ :=
  A096620.P12757446567571572911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A096620.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A099795.P8359144970959057964

`A038610(A000040(n+1))`
-/

namespace A099795.P8359144970959057964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038610 (A000040 (n + 1)).toNat

end

end A099795.P8359144970959057964

noncomputable section

/-- A099795: Least common multiple of 1, 2, 3, ..., prime(n)-1.

Offset 1, canonical program `A099795.P8359144970959057964`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038610, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099795 (n : ℕ) : ℤ :=
  A099795.P8359144970959057964.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038610, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099795.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A101608.P15445479744008623992

`(Δ[A118827(n+1)]+n+3)%3+1`
-/

namespace A101608.P15445479744008623992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + (n + 3 : ℤ)) 3 + 1

end

end A101608.P15445479744008623992

noncomputable section

/-- A101608: Solution to Tower of Hanoi puzzle encoded in pairs with the moves (1,2),(2,3),(3,1),(2,1),(3,2),(1,3). The disks are moved from peg 1 to 2. For a tower of k disks use the first 2^k-1 number pairs.

Offset 1, canonical program `A101608.P15445479744008623992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101608 (n : ℕ) : ℤ :=
  A101608.P15445479744008623992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101608.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A103826.P3351314862640777646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. -/
def A103826 (n : ℕ) : ℤ :=
  (A103826.P3351314862640777646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. -/
def A103826.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104093.P9972697725533396511

`A014234(3*(n+1))`
-/

namespace A104093.P9972697725533396511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014234 (3 * (n + 1))

end

end A104093.P9972697725533396511

noncomputable section

/-- A104093: Largest prime <= 8^n.

Offset 1, canonical program `A104093.P9972697725533396511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A104093 (n : ℕ) : ℤ :=
  A104093.P9972697725533396511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A104093.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104633.P12323607776174508310

`A062707(n)+A049777(n+1)`
-/

namespace A104633.P12323607776174508310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n + A049777 (n + 1)

end

end A104633.P12323607776174508310

noncomputable section

/-- A104633: Triangle T(n,k) = k*(k-n-1)*(k-n-2)/2 read by rows, 1<=k<=n.

Offset 1, canonical program `A104633.P12323607776174508310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104633 (n : ℕ) : ℤ :=
  A104633.P12323607776174508310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104633.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A110770.P1014689969941647037

`C(A049777(n+1), A002260(n+1))`
-/

namespace A110770.P1014689969941647037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049777 (n + 1)).toNat (A002260 (n + 1)).toNat

end

end A110770.P1014689969941647037

noncomputable section

/-- A110770: Triangle read by rows: T(n,k) = binomial(t(n) - t(k-1),k), where t(j) = j*(j+1)/2; 1<=k<=n.

Offset 1, canonical program `A110770.P1014689969941647037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A110770 (n : ℕ) : ℤ :=
  (A110770.P1014689969941647037.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A110770.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A113126.P12357649058000027626

`and(1, C(3, A004202(n+1)%(n+1)))*A002260(n+1)`
-/

namespace A113126.P12357649058000027626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (Nat.choose 3 (Int.tmod (A004202 (n + 1)) (n + 1 : ℤ)).toNat) : ℤ) * A002260 (n + 1)

end

end A113126.P12357649058000027626

noncomputable section

/-- A113126: A simple 4-diagonal matrix.

Offset 0, canonical program `A113126.P12357649058000027626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113126 (n : ℕ) : ℤ :=
  A113126.P12357649058000027626.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113126.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A113184.P201915956103544403

`abs(A002129(n+1))`
-/

namespace A113184.P201915956103544403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002129 (n + 1)|

end

end A113184.P201915956103544403

noncomputable section

/-- A113184: Absolute difference between sum of odd divisors of n and sum of even divisors of n.

Offset 1, canonical program `A113184.P201915956103544403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113184 (n : ℕ) : ℤ :=
  A113184.P201915956103544403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113184.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A118509.P16894441633057397340

`Δ[A031921(n+1)]`
-/

namespace A118509.P16894441633057397340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118509.P16894441633057397340

noncomputable section

/-- A118509: First differences of A031921.

Offset 1, canonical program `A118509.P16894441633057397340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A118509 (n : ℕ) : ℤ :=
  A118509.P16894441633057397340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A118509.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A120476.P16713608828303402629

`A049777(n+1)*A165747(A002262(n))`
-/

namespace A120476.P16713608828303402629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) * A165747 (A002262 n).toNat

end

end A120476.P16713608828303402629

noncomputable section

/-- A120476: Triangle read by rows: a(n,m)=(2*n-1)*(n-m)*(n+m+1)/2, where n is the column and m the row index.

Offset 0, canonical program `A120476.P16713608828303402629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120476 (n : ℕ) : ℤ :=
  A120476.P16713608828303402629.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120476.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A121573.P8906326736553631704

`∑[A088680(n+1)-A078584(n+1)]`
-/

namespace A121573.P8906326736553631704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088680 (n + 1) - A078584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121573.P8906326736553631704

noncomputable section

/-- A121573: Prime-gap race; difference of the cumulative sums of gaps above and below prime(2n).

Offset 1, canonical program `A121573.P8906326736553631704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121573 (n : ℕ) : ℤ :=
  A121573.P8906326736553631704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121573.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A125494.P18071949956906500659

`filter[A001969(n+2), A066247(#)]`
-/

namespace A125494.P18071949956906500659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A125494.P18071949956906500659

noncomputable section

/-- A125494: Composite evil numbers.

Offset 1, canonical program `A125494.P18071949956906500659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9020 terms. -/
def A125494 (n : ℕ) : ℤ :=
  A125494.P18071949956906500659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9020 terms. -/
def A125494.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127777.P8172009707106496070

`A002260(n+1)*A127739(n+1)`
-/

namespace A127777.P8172009707106496070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A127739 (n + 1)

end

end A127777.P8172009707106496070

noncomputable section

/-- A127777: A127773 * A002260 as infinite lower triangular matrices.

Offset 1, canonical program `A127777.P8172009707106496070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127777 (n : ℕ) : ℤ :=
  A127777.P8172009707106496070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127777.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A128060.P14869908255004425999

`2*n-A128059(n)`
-/

namespace A128060.P14869908255004425999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A128059 n

end

end A128060.P14869908255004425999

noncomputable section

/-- A128060: a(n) = 2*n - numerator((2*n-1)^2/(2*(2*n)!)).

Offset 0, canonical program `A128060.P14869908255004425999`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128060 (n : ℕ) : ℤ :=
  A128060.P14869908255004425999.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128060.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A131783.P16711198060458241591

`A049777(n+1)+A025581(n)`
-/

namespace A131783.P16711198060458241591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + A025581 n

end

end A131783.P16711198060458241591

noncomputable section

/-- A131783: A000012 * (A004736 + A002260 - I).

Offset 1, canonical program `A131783.P16711198060458241591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131783 (n : ℕ) : ℤ :=
  A131783.P16711198060458241591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131783.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A133520.P6252828111992592762

`A053786(A000040(n+1))%A001248(n+1)`
-/

namespace A133520.P6252828111992592762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053786 (A000040 (n + 1)).toNat) (A001248 (n + 1))

end

end A133520.P6252828111992592762

noncomputable section

/-- A133520: Smallest k such that p(n)^4 + k is prime where p(n) is the n-th prime.

Offset 1, canonical program `A133520.P6252828111992592762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A133520 (n : ℕ) : ℤ :=
  A133520.P6252828111992592762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A133520.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134517.P14780992275921397288

`A183010(A131210(n+1))`
-/

namespace A134517.P14780992275921397288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 (A131210 (n + 1)).toNat

end

end A134517.P14780992275921397288

noncomputable section

/-- A134517: Primes of the form 24*k - 1.

Offset 1, canonical program `A134517.P14780992275921397288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134517 (n : ℕ) : ℤ :=
  A134517.P14780992275921397288.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134517.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A135734.P1458651204297931975`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135734 (n : ℕ) : ℤ :=
  A135734.P1458651204297931975.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A138033.P11625881484895560442

`floor(A014701(n+2)/2)`
-/

namespace A138033.P11625881484895560442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014701 (n + 2) : ℚ) / 2⌋

end

end A138033.P11625881484895560442

noncomputable section

/-- A138033: a(n) = max_{ 1 <= i <= n-1 } min{ wt(i), wt(n-i) }, where wt() = A000120() is the binary weight function; a(1) = 0 by convention.

Offset 1, canonical program `A138033.P11625881484895560442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138033 (n : ℕ) : ℤ :=
  A138033.P11625881484895560442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138349.P13572013119910435224

`A126120(n)*A126120(n+4)-A126120(n+2)²`
-/

namespace A138349.P13572013119910435224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n * A126120 (n + 4) - A126120 (n + 2) ^ 2

end

end A138349.P13572013119910435224

noncomputable section

/-- A138349: Moment sequence of tr(A) in USp(4).

Offset 0, canonical program `A138349.P13572013119910435224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138349 (n : ℕ) : ℤ :=
  A138349.P13572013119910435224.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138349.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A138754.P5480235727800616661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138751, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138754 (n : ℕ) : ℤ :=
  A138754.P5480235727800616661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138751, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138754.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A139988.P11809578982701821905

`∩[A139844(n+1), A139858(n+1)]`
-/

namespace A139988.P11809578982701821905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P11809578982701821905

noncomputable section

/-- A139988: Primes of the form 8x^2+105y^2.

Offset 1, canonical program `A139988.P11809578982701821905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4978 terms. -/
def A139988 (n : ℕ) : ℤ :=
  (A139988.P11809578982701821905.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4978 terms. -/
def A139988.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A152724.P5282381026792283561

`A070939(n+1)-A152723(n+1)`
-/

namespace A152724.P5282381026792283561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A152723 (n + 1)

end

end A152724.P5282381026792283561

noncomputable section

/-- A152724: In binary, count of most frequent bit of n.

Offset 1, canonical program `A152724.P5282381026792283561`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152724 (n : ℕ) : ℤ :=
  A152724.P5282381026792283561.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152724.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152864.P17433297577997831622

`A033879(n+1)+A032741(n+1)`
-/

namespace A152864.P17433297577997831622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + A032741 (n + 1)

end

end A152864.P17433297577997831622

noncomputable section

/-- A152864: Deficiency of n, plus the number of proper divisors of n: a(n) = 2n - sigma(n) + d(n) - 1.

Offset 1, canonical program `A152864.P17433297577997831622`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152864 (n : ℕ) : ℤ :=
  A152864.P17433297577997831622.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152864.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A162441.P13110107035018514604

`lcm(n+1, A001790(n+1))/(n+1)*A144396(n+1)`
-/

namespace A162441.P13110107035018514604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A001790 (n + 1)) : ℚ) / (n + 1 : ℚ) * (A144396 (n + 1) : ℚ)

end

end A162441.P13110107035018514604

noncomputable section

/-- A162441: Numerators of the column sums of the EG1 matrix coefficients.

Offset 2, canonical program `A162441.P13110107035018514604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A162441 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A162441.P13110107035018514604.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A162441.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A162995.P4985399532358805642

`A008279(A003057(n+2)²-(n+1))`
-/

namespace A162995.P4985399532358805642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A003057 (n + 2) ^ 2 - (n + 1 : ℤ)).toNat

end

end A162995.P4985399532358805642

noncomputable section

/-- A162995: A scaled version of triangle A162990.

Offset 1, canonical program `A162995.P4985399532358805642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A162995 (n : ℕ) : ℤ :=
  A162995.P4985399532358805642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A162995.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A168157.P3803105065153823946`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, A095375, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168157 (n : ℕ) : ℤ :=
  A168157.P3803105065153823946.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, A095375, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168157.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A173868.P3619677425062889459

`A151800(A000108(n+1))`
-/

namespace A173868.P3619677425062889459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000108 (n + 1)).toNat

end

end A173868.P3619677425062889459

noncomputable section

/-- A173868: Smallest prime > n-th Catalan number.

Offset 1, canonical program `A173868.P3619677425062889459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173868 (n : ℕ) : ℤ :=
  A173868.P3619677425062889459.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173868.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173926.P11646176690681357479

`Δ[A054270(n+1)]`
-/

namespace A173926.P11646176690681357479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173926.P11646176690681357479

noncomputable section

/-- A173926: First differences of A054270.

Offset 1, canonical program `A173926.P11646176690681357479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A173926 (n : ℕ) : ℤ :=
  A173926.P11646176690681357479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A173926.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A174321.P612213315116284694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174321 (n : ℕ) : ℤ :=
  A174321.P612213315116284694.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174321.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A176181.P2660284483944872761

`A065091(lt[A063086(n+1), A058263(n+1)])`
-/

namespace A176181.P2660284483944872761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176181.P2660284483944872761

noncomputable section

/-- A176181: Primes p(n) such that gcd(p(n)-1, p(n+1)-1) > gcd(p(n)+1, p(n+1)+1).

Offset 1, canonical program `A176181.P2660284483944872761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176181 (n : ℕ) : ℤ :=
  A176181.P2660284483944872761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176181.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A177718.P13912368437558654364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177718 (n : ℕ) : ℤ :=
  A177718.P13912368437558654364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

Offset 1, canonical program `A177959.P3892879503494814762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177959 (n : ℕ) : ℤ :=
  A177959.P3892879503494814762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A086222.P1188365077820885668

`A086165(n+1)+A048691(n+1)`
-/

namespace A086222.P1188365077820885668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086165 (n + 1) + A048691 (n + 1)

end

end A086222.P1188365077820885668

noncomputable section

/-- A086222: a(n) = card{ (x,y,z) | x <= y <= z and lcm(x,y,z) = n }.

Offset 1, canonical program `A086222.P1188365077820885668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086165, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086222 (n : ℕ) : ℤ :=
  A086222.P1188365077820885668.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086165, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086222.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A087032.P929361503282917607

`A010051(2*A151800(n+1)-(n+1))`
-/

namespace A087032.P929361503282917607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A151800 (n + 1) - (n + 1 : ℤ)).toNat

end

end A087032.P929361503282917607

noncomputable section

/-- A087032: a(n) = 1 if 2*A151800(n) - n is prime, otherwise 0, where A151800(n) is the smallest prime > n.

Offset 1, canonical program `A087032.P929361503282917607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087032 (n : ℕ) : ℤ :=
  A087032.P929361503282917607.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087032.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087165.P6335515186169840550

`4+A244041(4*n)-A244041(4*(n+1))`
-/

namespace A087165.P6335515186169840550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + A244041 (4 * n) - A244041 (4 * (n + 1))

end

end A087165.P6335515186169840550

noncomputable section

/-- A087165: a(n)=1 when n == 1 (mod 4), otherwise a(n) = a(n - ceiling(n/4)) + 1. Removing all the 1's results in the original sequence with every term incremented by 1.

Offset 1, canonical program `A087165.P6335515186169840550`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244041, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087165 (n : ℕ) : ℤ :=
  A087165.P6335515186169840550.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244041, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087165.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A089820.P16018739911247489937

`2^(n+1)-A089819(n+1)`
-/

namespace A089820.P16018739911247489937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A089819 (n + 1)

end

end A089820.P16018739911247489937

noncomputable section

/-- A089820: Number of subsets of {1,..,n} containing at least one prime.

Offset 1, canonical program `A089820.P16018739911247489937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A089820 (n : ℕ) : ℤ :=
  A089820.P16018739911247489937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A089820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089821.P1761871828032168591

`A000720(n+1)*A089819(n+1)`
-/

namespace A089821.P1761871828032168591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A089819 (n + 1)

end

end A089821.P1761871828032168591

noncomputable section

/-- A089821: Number of subsets of {1,.., n} containing exactly one prime.

Offset 1, canonical program `A089821.P1761871828032168591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089821 (n : ℕ) : ℤ :=
  A089821.P1761871828032168591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089822.P4169949727800120308

`A000217(A033270(n+1))*A089819(n+1)`
-/

namespace A089822.P4169949727800120308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A033270 (n + 1)).toNat * A089819 (n + 1)

end

end A089822.P4169949727800120308

noncomputable section

/-- A089822: Number of subsets of {1,.., n} containing exactly two primes.

Offset 1, canonical program `A089822.P4169949727800120308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A089822 (n : ℕ) : ℤ :=
  A089822.P4169949727800120308.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A089822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089880.P5542344257203775530

`(A000108(n)+A089849(n))/2`
-/

namespace A089880.P5542344257203775530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n + A089849 n : ℚ) / 2

end

end A089880.P5542344257203775530

noncomputable section

/-- A089880: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A069772.

Offset 0, canonical program `A089880.P5542344257203775530`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089880 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089880.P5542344257203775530.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089880.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A091498.P8170491020747909582

`A026812(n)+∑[A008670(n)]`
-/

namespace A091498.P8170491020747909582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091498.P8170491020747909582

noncomputable section

/-- A091498: The sixth column of triangle A091492, excluding leading zeros.

Offset 0, canonical program `A091498.P8170491020747909582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091498 (n : ℕ) : ℤ :=
  A091498.P8170491020747909582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091498.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A092509.P8072479887117834933

`A014683(n+1)-A048671(n+1)`
-/

namespace A092509.P8072479887117834933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (n + 1) - A048671 (n + 1)

end

end A092509.P8072479887117834933

noncomputable section

/-- A092509: Möbius transform of sequence A008475.

Offset 1, canonical program `A092509.P8072479887117834933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092509 (n : ℕ) : ℤ :=
  A092509.P8072479887117834933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092509.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A095256.P4900978918232643053

`A057494(n+1)-(n+2)²`
-/

namespace A095256.P4900978918232643053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057494 (n + 1) - ((n + 2) ^ 2 : ℤ)

end

end A095256.P4900978918232643053

noncomputable section

/-- A095256: Number of numbers not divisible by 10 that stay multiples of themselves when freed of their last n digits.

Offset 1, canonical program `A095256.P4900978918232643053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095256 (n : ℕ) : ℤ :=
  A095256.P4900978918232643053.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095256.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A096478.P11669575094309891601

`A000040(A096477(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096478.P11669575094309891601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A096477 (n + 1)).toNat

end

end A096478.P11669575094309891601

noncomputable section

/-- A096478: a(n) = A000040(A096477(n)), i.e., prime(a(n)) and prime(a(n)+1) are twin primes.

Offset 1, canonical program `A096478.P11669575094309891601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096478 (n : ℕ) : ℤ :=
  A096478.P11669575094309891601.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096478.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096479.P1185693016366905234

`A006450(A096477(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096479.P1185693016366905234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A096477 (n + 1)).toNat

end

end A096479.P1185693016366905234

noncomputable section

/-- A096479: "Secondary twin primes": a(n) = A006450(A096477(n)).

Offset 1, canonical program `A096479.P1185693016366905234`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096479 (n : ℕ) : ℤ :=
  A096479.P1185693016366905234.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096479.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096500.P16442061898091781287

`A151800(n+2)-A151800(n+1)`
-/

namespace A096500.P16442061898091781287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 2) - A151800 (n + 1)

end

end A096500.P16442061898091781287

noncomputable section

/-- A096500: Let f(n) = smallest prime > n; a(n) = f(n+1) - f(n).

Offset 1, canonical program `A096500.P16442061898091781287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096500 (n : ℕ) : ℤ :=
  A096500.P16442061898091781287.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096500.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A100007.P3347003901490045030

`A068068(2*n+1)`
-/

namespace A100007.P3347003901490045030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (2 * n + 1)

end

end A100007.P3347003901490045030

noncomputable section

/-- A100007: Number of unitary divisors of 2n-1 (d such that d divides 2n-1, GCD(d,(2n-1)/d)=1). Bisection of A034444.

Offset 1, canonical program `A100007.P3347003901490045030`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100007 (n : ℕ) : ℤ :=
  A100007.P3347003901490045030.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100007.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100008.P11065605102889167328

`2*A068068(n+1)`
-/

namespace A100008.P11065605102889167328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068068 (n + 1)

end

end A100008.P11065605102889167328

noncomputable section

/-- A100008: Number of unitary divisors of 2n.

Offset 1, canonical program `A100008.P11065605102889167328`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100008 (n : ℕ) : ℤ :=
  A100008.P11065605102889167328.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100008.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A100428.P16186461630446330392

`A332875(n+1)-A100429(n+1)`
-/

namespace A100428.P16186461630446330392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332875 (n + 1) - A100429 (n + 1)

end

end A100428.P16186461630446330392

noncomputable section

/-- A100428: Bisection of Kolakoski sequence A000002.

Offset 1, canonical program `A100428.P16186461630446330392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100428 (n : ℕ) : ℤ :=
  A100428.P16186461630446330392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100428.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A101932.P9208845352759817678

`A006073(n+1)+1`
-/

namespace A101932.P9208845352759817678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1) + 1

end

end A101932.P9208845352759817678

noncomputable section

/-- A101932: Numbers n with omega(n) equal to omega(n-1) and omega (n+1).

Offset 1, canonical program `A101932.P9208845352759817678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A101932 (n : ℕ) : ℤ :=
  A101932.P9208845352759817678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A101932.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A102548.P7683038375054225144

`∑[A057427(A035184(n+1))]`
-/

namespace A102548.P7683038375054225144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A035184 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P7683038375054225144

noncomputable section

/-- A102548: Number of positive integers <= n that are expressible in the form u^2+v^2, with u and v integers.

Offset 1, canonical program `A102548.P7683038375054225144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102548 (n : ℕ) : ℤ :=
  A102548.P7683038375054225144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102548.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A103973.P3322991728647571882

`A060546(n)*A089849(n)`
-/

namespace A103973.P3322991728647571882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A089849 n

end

end A103973.P3322991728647571882

noncomputable section

/-- A103973: Expansion of (sqrt(1-8*x^2)+8*x^2+2*x-1)/(2*x*sqrt(1-8*x^2)).

Offset 0, canonical program `A103973.P3322991728647571882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A103973 (n : ℕ) : ℤ :=
  A103973.P3322991728647571882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A103973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103978.P10574377061937498485

`A056449(n)*A089849(n)`
-/

namespace A103978.P10574377061937498485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n * A089849 n

end

end A103978.P10574377061937498485

noncomputable section

/-- A103978: Expansion of (sqrt(1-12*x^2)+12*x^2+2*x-1)/(2*x*sqrt(1-12*x^2)).

Offset 0, canonical program `A103978.P10574377061937498485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A103978 (n : ℕ) : ℤ :=
  A103978.P10574377061937498485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A103978.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104201.P12103817333759853652

`A011974(A073169(n+1))`
-/

namespace A104201.P12103817333759853652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (A073169 (n + 1)).toNat

end

end A104201.P12103817333759853652

noncomputable section

/-- A104201: Sums of straddle primes.

Offset 4, canonical program `A104201.P12103817333759853652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A104201 (n : ℕ) : ℤ :=
  A104201.P12103817333759853652.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A104201.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104768.P16790131426723885557

`4*A008441(n²+1)`
-/

namespace A104768.P16790131426723885557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008441 (n ^ 2 + 1)

end

end A104768.P16790131426723885557

noncomputable section

/-- A104768: Number of matrices G with entries in Z satisfying G^2=G+1 and having the form 2G=[1+p q-2n | q+2n 1-p].

Offset 0, canonical program `A104768.P16790131426723885557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A104768 (n : ℕ) : ℤ :=
  A104768.P16790131426723885557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A104768.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107279.P5813486238703992788

`(A014683(xor(1, n)+1)+1)%(n+1)`
-/

namespace A107279.P5813486238703992788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014683 (Nat.xor 1 n + 1) + 1) (n + 1 : ℤ)

end

end A107279.P5813486238703992788

noncomputable section

/-- A107279: a(n) = 1 if n is an odd prime, a(n) = 2 if n is a nonzero even number, otherwise a(n) = 0.

Offset 0, canonical program `A107279.P5813486238703992788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A107279 (n : ℕ) : ℤ :=
  A107279.P5813486238703992788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A107279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108081.P10199581490510874834

`A028329(n)-A268407(n)`
-/

namespace A108081.P10199581490510874834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A268407 n

end

end A108081.P10199581490510874834

noncomputable section

/-- A108081: a(n) = Sum_{i=0..n} binomial(2*n-i, n+i).

Offset 0, canonical program `A108081.P10199581490510874834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A108081 (n : ℕ) : ℤ :=
  A108081.P10199581490510874834.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A108081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109262.P3635105755243385556

`A268407(n)-A081696(n)`
-/

namespace A109262.P3635105755243385556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268407 n - A081696 n

end

end A109262.P3635105755243385556

noncomputable section

/-- A109262: A Catalan transform of the Fibonacci numbers.

Offset 0, canonical program `A109262.P3635105755243385556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A109262 (n : ℕ) : ℤ :=
  A109262.P3635105755243385556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A109262.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A110299.P14323801455997029878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125180, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110299 (n : ℕ) : ℤ :=
  A110299.P14323801455997029878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125180, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110299.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A113407.P13871132972543493262

`A008441(2*n)`
-/

namespace A113407.P13871132972543493262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (2 * n)

end

end A113407.P13871132972543493262

noncomputable section

/-- A113407: Expansion of psi(x) * phi(x^2) in powers of x where psi(), phi() are Ramanujan theta functions.

Offset 0, canonical program `A113407.P13871132972543493262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113407 (n : ℕ) : ℤ :=
  A113407.P13871132972543493262.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113407.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A113646.P14709912826224621284

`A014683(n+1)%a(n-3)²` with `a(0)=4, a(1)=4, a(2)=4`
-/

namespace A113646.P14709912826224621284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 4] fun n a =>
  Int.tmod (A014683 (n + 1)) (a (n - 3) ^ 2)

end

end A113646.P14709912826224621284

noncomputable section

/-- A113646: a(n) is the smallest composite integer which is >= n.

Offset 1, canonical program `A113646.P14709912826224621284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113646 (n : ℕ) : ℤ :=
  A113646.P14709912826224621284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113646.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115165.P1467438550897619179

`A088070(eq[1, A088070(n+1)%2]+1)`
-/

namespace A115165.P1467438550897619179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088070 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A115165.P1467438550897619179

noncomputable section

/-- A115165: Odd numbers k such that k-1 and k+1 have the same number of distinct prime divisors.

Offset 1, canonical program `A115165.P1467438550897619179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5130 terms. -/
def A115165 (n : ℕ) : ℤ :=
  A115165.P1467438550897619179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5130 terms. -/
def A115165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115166.P634160909117266982

`2*A088070(n+1)`
-/

namespace A115166.P634160909117266982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088070 (n + 1)

end

end A115166.P634160909117266982

noncomputable section

/-- A115166: Even numbers k such that k-2 and k+2 have the same number of distinct prime factors.

Offset 1, canonical program `A115166.P634160909117266982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115166 (n : ℕ) : ℤ :=
  A115166.P634160909117266982.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115166.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A116637.P550715832201764144

`A036453(n+1)*A047749(n)`
-/

namespace A116637.P550715832201764144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A047749 n

end

end A116637.P550715832201764144

noncomputable section

/-- A116637: G.f. satisfies: A(x) = x/series_reversion(x/G(x)) where A(x) + A(-x) = 2*G(x^2) and G(x) is the g.f. of A046646.

Offset 0, canonical program `A116637.P550715832201764144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A116637 (n : ℕ) : ℤ :=
  A116637.P550715832201764144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A116637.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A118255.P6599881384483095827

`A000225(n+1)-A072762(n+1)`
-/

namespace A118255.P6599881384483095827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A072762 (n + 1)

end

end A118255.P6599881384483095827

noncomputable section

/-- A118255: a(1)=1, then a(n)=2*a(n-1) if n is prime, a(n)=2*a(n-1)+1 if n not prime.

Offset 1, canonical program `A118255.P6599881384483095827`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118255 (n : ℕ) : ℤ :=
  A118255.P6599881384483095827.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118255.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A120007.P17212889191585270917

`A061397(A007947(n+1))`
-/

namespace A120007.P17212889191585270917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A007947 (n + 1)).toNat

end

end A120007.P17212889191585270917

noncomputable section

/-- A120007: Mobius transform of sum of prime factors of n with multiplicity (A001414).

Offset 1, canonical program `A120007.P17212889191585270917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061397, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120007 (n : ℕ) : ℤ :=
  A120007.P17212889191585270917.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061397, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120007.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121363.P18122927571743324693

`A008441(n)*A049347(n)`
-/

namespace A121363.P18122927571743324693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n * A049347 n

end

end A121363.P18122927571743324693

noncomputable section

/-- A121363: Expansion of q^(-1/4)(eta(q)*eta(q^6)*eta(q^9)/eta(q^3))^2/(eta(q^2)eta(q^18)) in powers of q.

Offset 0, canonical program `A121363.P18122927571743324693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121363 (n : ℕ) : ℤ :=
  A121363.P18122927571743324693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121363.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A125079.P1710399594586959767

`A035154(2*n+1)`
-/

namespace A125079.P1710399594586959767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (2 * n + 1)

end

end A125079.P1710399594586959767

noncomputable section

/-- A125079: Excess of number of divisors of 2n+1 of form 12k+1, 12k+5 over those of form 12k+7, 12k+11.

Offset 0, canonical program `A125079.P1710399594586959767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125079 (n : ℕ) : ℤ :=
  A125079.P1710399594586959767.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125079.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A127717.P7695093500598814241

`A002260(n+1)*A104712(n+2)`
-/

namespace A127717.P7695093500598814241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A104712 (n + 2)

end

end A127717.P7695093500598814241

noncomputable section

/-- A127717: Triangle read by rows. T(n, k) = k * binomial(n + 1, k + 1), for 1 <= k <= n.

Offset 1, canonical program `A127717.P7695093500598814241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127717 (n : ℕ) : ℤ :=
  A127717.P7695093500598814241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127717.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A129146.P11255753064502351239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129146 (n : ℕ) : ℤ :=
  A129146.P11255753064502351239.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A129188.P9160643260024677217

`n+1+A064799(n+1)`
-/

namespace A129188.P9160643260024677217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A064799 (n + 1)

end

end A129188.P9160643260024677217

noncomputable section

/-- A129188: n + n-th prime + n-th composite.

Offset 1, canonical program `A129188.P9160643260024677217`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129188 (n : ℕ) : ℤ :=
  A129188.P9160643260024677217.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129188.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129189.P3252235154664414244

`A064799(n+1)-(n+1)`
-/

namespace A129189.P3252235154664414244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1) - (n + 1 : ℤ)

end

end A129189.P3252235154664414244

noncomputable section

/-- A129189: n-th prime + n-th composite - n.

Offset 1, canonical program `A129189.P3252235154664414244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129189 (n : ℕ) : ℤ :=
  A129189.P3252235154664414244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129189.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 2, canonical program `A129811.P9493245702118033988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 536 terms. -/
def A129811 (n : ℕ) : ℤ :=
  (A129811.P9493245702118033988.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 536 terms. -/
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

/-! ## A130331.P15759110468226618183

`A000005(A123240(n+1))`
-/

namespace A130331.P15759110468226618183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A123240 (n + 1)).toNat

end

end A130331.P15759110468226618183

noncomputable section

/-- A130331: Number of divisors of A123240(n).

Offset 1, canonical program `A130331.P15759110468226618183`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130331 (n : ℕ) : ℤ :=
  A130331.P15759110468226618183.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130331.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A132004.P16065052976772229410

`(-1)^n*A035154(n+1)`
-/

namespace A132004.P16065052976772229410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A035154 (n + 1)

end

end A132004.P16065052976772229410

noncomputable section

/-- A132004: Expansion of (1 - phi(q^3) / phi(q) * phi(-q^2) * phi(-q^6)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A132004.P16065052976772229410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132004 (n : ℕ) : ℤ :=
  A132004.P16065052976772229410.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132004.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A132657.P7540794836136521252

`A007491(n+1)*A053001(n+2)`
-/

namespace A132657.P7540794836136521252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 1) * A053001 (n + 2)

end

end A132657.P7540794836136521252

noncomputable section

/-- A132657: a(n) is the product of the least prime > n^2 and the greatest prime < (n+1)^2.

Offset 1, canonical program `A132657.P7540794836136521252`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132657 (n : ℕ) : ℤ :=
  A132657.P7540794836136521252.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132657.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A133524.P7363267579138448459

`A133529(n+1)+A001248(n+4)`
-/

namespace A133524.P7363267579138448459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133529 (n + 1) + A001248 (n + 4)

end

end A133524.P7363267579138448459

noncomputable section

/-- A133524: Sum of squares of four consecutive primes.

Offset 1, canonical program `A133524.P7363267579138448459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133524 (n : ℕ) : ℤ :=
  A133524.P7363267579138448459.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133524.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134015.P8862688659031297198

`(-1)^n*A113406(n+1)`
-/

namespace A134015.P8862688659031297198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113406 (n + 1)

end

end A134015.P8862688659031297198

noncomputable section

/-- A134015: Expansion of (1 - phi(-q) * phi(q^4)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A134015.P8862688659031297198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134015 (n : ℕ) : ℤ :=
  A134015.P8862688659031297198.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134015.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134343.P11380617863790759177

`(-1)^n*A008441(n)`
-/

namespace A134343.P11380617863790759177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A008441 n

end

end A134343.P11380617863790759177

noncomputable section

/-- A134343: Expansion of psi(-x)^2 in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A134343.P11380617863790759177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134343 (n : ℕ) : ℤ :=
  A134343.P11380617863790759177.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134852.P13918386080311944106

`A080345(lt[C(2, A080345(n+1)), 2]+1)`
-/

namespace A134852.P13918386080311944106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A080345 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080345 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A134852.P13918386080311944106

noncomputable section

/-- A134852: Number of distinct prime factors of the Fibonacci numbers in A050937.

Offset 1, canonical program `A134852.P13918386080311944106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A134852 (n : ℕ) : ℤ :=
  A134852.P13918386080311944106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A134852.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A135776.P15334910980622929297

`eq[A000005(n+1), A390764(n)]+1`
-/

namespace A135776.P15334910980622929297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390764 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A135776.P15334910980622929297

noncomputable section

/-- A135776: Numbers having number of divisors equal to number of digits in base 6.

Offset 1, canonical program `A135776.P15334910980622929297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A135776 (n : ℕ) : ℤ :=
  (A135776.P15334910980622929297.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A135776.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A136364.P1042819273145216496

`A057494(n+1)-2*10^(n+1)+1`
-/

namespace A136364.P1042819273145216496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057494 (n + 1) - (2 * 10 ^ (n + 1) : ℤ) + 1

end

end A136364.P1042819273145216496

noncomputable section

/-- A136364: a(n) = Sum_{ composite k, 1 <= k <= 10^n} (Number of divisors d of k with 1 < d < k).

Offset 1, canonical program `A136364.P1042819273145216496`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136364 (n : ℕ) : ℤ :=
  A136364.P1042819273145216496.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136364.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A138350.P14922345514326361988

`A126120(n)*A138364(n+1)-A138364(n)*A126120(n+1)`
-/

namespace A138350.P14922345514326361988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n * A138364 (n + 1) - A138364 n * A126120 (n + 1)

end

end A138350.P14922345514326361988

noncomputable section

/-- A138350: Moment sequence of tr(A^2) in USp(4).

Offset 0, canonical program `A138350.P14922345514326361988`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126120, A138364, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138350 (n : ℕ) : ℤ :=
  A138350.P14922345514326361988.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126120, A138364, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138350.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138714.P17864452907051204205

`(A098363(∑[n+3])+1)%10`
-/

namespace A138714.P17864452907051204205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098363 (∑ j ∈ Finset.range (n + 1), f1 j) + 1) 10

end

end A138714.P17864452907051204205

noncomputable section

/-- A138714: Add 1, modulo 10, to the decimal expansion of e, A001113.

Offset 1, canonical program `A138714.P17864452907051204205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138714 (n : ℕ) : ℤ :=
  A138714.P17864452907051204205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138714.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A139587.P10239951385813778366

`∩[A123240(n+1), comp[A000045(n)]]`
-/

namespace A139587.P10239951385813778366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123240 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A139587.P10239951385813778366

noncomputable section

/-- A139587: Non-Fibonacci numbers with non-Fibonacci number of divisors.

Offset 1, canonical program `A139587.P10239951385813778366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A139587 (n : ℕ) : ℤ :=
  (A139587.P10239951385813778366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A139587.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A139995.P6653243888125786699

`∩[A139846(n+1), A139879(n+1)]`
-/

namespace A139995.P6653243888125786699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P6653243888125786699

noncomputable section

/-- A139995: Primes of the form 24x^2+24xy+41y^2.

Offset 1, canonical program `A139995.P6653243888125786699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4973 terms. -/
def A139995 (n : ℕ) : ℤ :=
  (A139995.P6653243888125786699.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4973 terms. -/
def A139995.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140841.P8028280117442468543

`∩[A030431(n+1), A140536(n+1)]`
-/

namespace A140841.P8028280117442468543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P8028280117442468543

noncomputable section

/-- A140841: Primes of the form 210n + 13.

Offset 1, canonical program `A140841.P8028280117442468543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4176 terms. -/
def A140841 (n : ℕ) : ℤ :=
  (A140841.P8028280117442468543.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4176 terms. -/
def A140841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141241.P12757171948806850283

`A000005(A139118(n+1))`
-/

namespace A141241.P12757171948806850283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A139118 (n + 1)).toNat

end

end A141241.P12757171948806850283

noncomputable section

/-- A141241: a(n) = number of divisors of n-th positive integer with a nonprime number of divisors. a(n) = the number of divisors of A139118(n).

Offset 1, canonical program `A141241.P12757171948806850283`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139118, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141241 (n : ℕ) : ℤ :=
  A141241.P12757171948806850283.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139118, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141241.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A143538.P17358070422668101230`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143538 (n : ℕ) : ℤ :=
  A143538.P17358070422668101230.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143544.P14179494280164840548

`A014683(A003056(n)+1)-A003056(n)`
-/

namespace A143544.P14179494280164840548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (A003056 n + 1).toNat - A003056 n

end

end A143544.P14179494280164840548

noncomputable section

/-- A143544: Triangle read by rows, T(n,k) = 2 if n is prime, 1 otherwise; 1<=k<=n.

Offset 1, canonical program `A143544.P14179494280164840548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143544 (n : ℕ) : ℤ :=
  A143544.P14179494280164840548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143545.P10821814786316977648

`n+1+A061397(n+1)`
-/

namespace A143545.P10821814786316977648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A061397 (n + 1)

end

end A143545.P10821814786316977648

noncomputable section

/-- A143545: a(n) = n unless n is a prime, in which case a(n) = 2n.

Offset 1, canonical program `A143545.P10821814786316977648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061397, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143545 (n : ℕ) : ℤ :=
  A143545.P10821814786316977648.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061397, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143545.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A144831.P7474642275724404831

`(n+2)²-A007491(n+1)`
-/

namespace A144831.P7474642275724404831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A007491 (n + 1)

end

end A144831.P7474642275724404831

noncomputable section

/-- A144831: (n+1)^2 - (smallest prime > n^2).

Offset 1, canonical program `A144831.P7474642275724404831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144831 (n : ℕ) : ℤ :=
  A144831.P7474642275724404831.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144831.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145342.P11180459690303212781

`(A145341(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145342.P11180459690303212781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145341 (n + 1) + 1 : ℚ) / 2

end

end A145342.P11180459690303212781

noncomputable section

/-- A145342: a(n) = (A145341(n) + 1)/2.

Offset 1, canonical program `A145342.P11180459690303212781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145342 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145342.P11180459690303212781.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145342.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A152563.P13954880354621690569

`∩[A122516(n+1), A152535(n+1)]`
-/

namespace A152563.P13954880354621690569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152563.P13954880354621690569

noncomputable section

/-- A152563: Primes in A152535.

Offset 1, canonical program `A152563.P13954880354621690569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A152563 (n : ℕ) : ℤ :=
  (A152563.P13954880354621690569.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A152563.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A152985.P2219434118744264934

`A152770(A000290(n+1))`
-/

namespace A152985.P2219434118744264934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A000290 (n + 1)).toNat

end

end A152985.P2219434118744264934

noncomputable section

/-- A152985: Sum of proper divisors minus the number of proper divisors of the square A000290(n).

Offset 1, canonical program `A152985.P2219434118744264934`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152985 (n : ℕ) : ℤ :=
  A152985.P2219434118744264934.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152985.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152986.P4892744179053441096

`A152770(A000326(n+1))`
-/

namespace A152986.P4892744179053441096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A000326 (n + 1)).toNat

end

end A152986.P4892744179053441096

noncomputable section

/-- A152986: Sum of proper divisors minus the number of proper divisors of pentagonal number A000326(n).

Offset 1, canonical program `A152986.P4892744179053441096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152986 (n : ℕ) : ℤ :=
  A152986.P4892744179053441096.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152986.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A152988.P2080984935002552249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152988 (n : ℕ) : ℤ :=
  A152988.P2080984935002552249.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152988.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152989.P9271480761926204214

`A152770(A000217(n+1))`
-/

namespace A152989.P9271480761926204214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A000217 (n + 1)).toNat

end

end A152989.P9271480761926204214

noncomputable section

/-- A152989: Sum of proper divisors minus the number of proper divisors of triangular number A000217(n).

Offset 1, canonical program `A152989.P9271480761926204214`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152989 (n : ℕ) : ℤ :=
  A152989.P9271480761926204214.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152990.P2911207475530451392

`A152770(A000045(n+1))`
-/

namespace A152990.P2911207475530451392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A000045 (n + 1)).toNat

end

end A152990.P2911207475530451392

noncomputable section

/-- A152990: Sum of proper divisors minus the number of proper divisors of Fibonacci number A000045(n).

Offset 1, canonical program `A152990.P2911207475530451392`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152990 (n : ℕ) : ℤ :=
  A152990.P2911207475530451392.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152990.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A153825.P2086424196053372448`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153825 (n : ℕ) : ℤ :=
  A153825.P2086424196053372448.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153825.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A154349.P14725127565816757340`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154349 (n : ℕ) : ℤ :=
  A154349.P14725127565816757340.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154349.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A156324.P16266470753599267487

`A014683(a(n-1)+n)` with `a(0)=0`
-/

namespace A156324.P16266470753599267487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A014683 (a (n - 1) + (n : ℤ)).toNat

end

end A156324.P16266470753599267487

noncomputable section

/-- A156324: a(1)=0, a(n+1) is smallest nonprime >= a(n)+n.

Offset 1, canonical program `A156324.P16266470753599267487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A156324 (n : ℕ) : ℤ :=
  A156324.P16266470753599267487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A156324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156583.P9591001356614490137

`A119505(eq[2, gcd(2, A119505(n+1))]+1)`
-/

namespace A156583.P9591001356614490137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A119505 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119505 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A156583.P9591001356614490137

noncomputable section

/-- A156583: The subsequence of even digits in A119505.

Offset 1, canonical program `A156583.P9591001356614490137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1440 terms. -/
def A156583 (n : ℕ) : ℤ :=
  A156583.P9591001356614490137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1440 terms. -/
def A156583.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A156944.P9088602599021019118

`A095711(A098363(∑[n+3])+57)`
-/

namespace A156944.P9088602599021019118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095711 (A098363 (∑ j ∈ Finset.range (n + 1), f1 j) + 57).toNat

end

end A156944.P9088602599021019118

noncomputable section

/-- A156944: Let d(i) be the i-th digit of the decimal expansion of e = 2.71828182845..., so that d(1) = 2, d(2) = 7, d(3) = 1, etc. Then a(n) = d(10 - d(n)).

Offset 1, canonical program `A156944.P9088602599021019118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156944 (n : ℕ) : ℤ :=
  A156944.P9088602599021019118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156944.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A159780.P2765697705373744263

`A000120(and(n, A145341(n+1)))`
-/

namespace A159780.P2765697705373744263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (n : ℤ) (A145341 (n + 1))).toNat

end

end A159780.P2765697705373744263

noncomputable section

/-- A159780: Inner product of the binary representation of n and its reverse.

Offset 0, canonical program `A159780.P2765697705373744263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159780 (n : ℕ) : ℤ :=
  A159780.P2765697705373744263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160522.P1046967172984511442

`A071904(n+1)-A005843(n+2)`
-/

namespace A160522.P1046967172984511442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) - A005843 (n + 2)

end

end A160522.P1046967172984511442

noncomputable section

/-- A160522: The n-th odd composite number minus the n-th even composite number.

Offset 1, canonical program `A160522.P1046967172984511442`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160522 (n : ℕ) : ℤ :=
  A160522.P1046967172984511442.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160522.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160651.P14045430326735677047

`A147810(Δ[n²])`
-/

namespace A160651.P14045430326735677047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A160651.P14045430326735677047

noncomputable section

/-- A160651: a(n) is the number of triangular nonnegative integers that are each equal to n(n+1)/2 - m(m+1)/2, for some m's where 0 <= m <= n.

Offset 0, canonical program `A160651.P14045430326735677047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A160651 (n : ℕ) : ℤ :=
  A160651.P14045430326735677047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A160651.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A161424.P13170212331515074192

`4*A161428(n+1)`
-/

namespace A161424.P13170212331515074192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A161428 (n + 1)

end

end A161424.P13170212331515074192

noncomputable section

/-- A161424: Numbers k whose largest divisor <= sqrt(k) equals 4.

Offset 1, canonical program `A161424.P13170212331515074192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161424 (n : ℕ) : ℤ :=
  A161424.P13170212331515074192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161425.P4609620829610950226

`2*A161428(n+1)`
-/

namespace A161425.P4609620829610950226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161428 (n + 1)

end

end A161425.P4609620829610950226

noncomputable section

/-- A161425: a(n) = A161424(n)/2.

Offset 1, canonical program `A161425.P4609620829610950226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161424, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161425 (n : ℕ) : ℤ :=
  A161425.P4609620829610950226.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161424, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161425.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A162196.P4903355078575306255

`A152770(A018252(n+1))`
-/

namespace A162196.P4903355078575306255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A018252 (n + 1)).toNat

end

end A162196.P4903355078575306255

noncomputable section

/-- A162196: Sum of proper divisors minus the number of proper divisors of nonprime number A018252(n).

Offset 1, canonical program `A162196.P4903355078575306255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162196 (n : ℕ) : ℤ :=
  A162196.P4903355078575306255.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162738.P6289440250695548267

`A064799(n+1)-A065859(n+1)`
-/

namespace A162738.P6289440250695548267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1) - A065859 (n + 1)

end

end A162738.P6289440250695548267

noncomputable section

/-- A162738: a(n) is the smallest positive multiple of {the n-th composite} that is greater than the n-th prime.

Offset 1, canonical program `A162738.P6289440250695548267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162738 (n : ℕ) : ℤ :=
  A162738.P6289440250695548267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163248.P10432575960891673536

`A008578(n+1)+A073169(n+1)`
-/

namespace A163248.P10432575960891673536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A073169 (n + 1)

end

end A163248.P10432575960891673536

noncomputable section

/-- A163248: Sum of the n-th composite number plus the number of composite numbers less than the n-th noncomposite number.

Offset 1, canonical program `A163248.P10432575960891673536`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, A073169, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163248 (n : ℕ) : ℤ :=
  A163248.P10432575960891673536.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, A073169, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163746.P11768047734020211813

`A125061(n+1)`
-/

namespace A163746.P11768047734020211813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125061 (n + 1)

end

end A163746.P11768047734020211813

noncomputable section

/-- A163746: Expansion of (theta_3(q)^2 + 3 * theta_3(q^3)^2) / 4 - 1 in powers of q.

Offset 1, canonical program `A163746.P11768047734020211813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163746 (n : ℕ) : ℤ :=
  A163746.P11768047734020211813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163807.P13093031249055492174

`A145341(A080513(n))-and(1, n)`
-/

namespace A163807.P13093031249055492174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (A080513 n).toNat - (Nat.land 1 n : ℤ)

end

end A163807.P13093031249055492174

noncomputable section

/-- A163807: Reverse the order of inner digits (all digits but the first and last) of n written in binary. a(n) = the decimal value of the result.

Offset 1, canonical program `A163807.P13093031249055492174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163807 (n : ℕ) : ℤ :=
  A163807.P13093031249055492174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163838.P7117750658777831456

`A002808(n+1)*A144925(n+1)`
-/

namespace A163838.P7117750658777831456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) * A144925 (n + 1)

end

end A163838.P7117750658777831456

noncomputable section

/-- A163838: a(n) = (n-th composite) * (number of nontrivial divisors of n-th composite).

Offset 1, canonical program `A163838.P7117750658777831456`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A144925, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163838 (n : ℕ) : ℤ :=
  A163838.P7117750658777831456.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A144925, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163838.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A163871.P6376979073296319069

`A002808(n+1)+A062825(n+2)`
-/

namespace A163871.P6376979073296319069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + A062825 (n + 2)

end

end A163871.P6376979073296319069

noncomputable section

/-- A163871: The n-th composite plus the sum of its nontrivial divisors.

Offset 1, canonical program `A163871.P6376979073296319069`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A062825, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163871 (n : ℕ) : ℤ :=
  A163871.P6376979073296319069.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A062825, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163871.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A165789.P3775044912176039512

`A145341(A145051(n+1))`
-/

namespace A165789.P3775044912176039512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (A145051 (n + 1)).toNat

end

end A165789.P3775044912176039512

noncomputable section

/-- A165789: a(n) is the smallest positive integer k that when written in binary, and leading 0's of k are ignored, contains the reversal of the digits of binary n.

Offset 1, canonical program `A165789.P3775044912176039512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165789 (n : ℕ) : ℤ :=
  A165789.P3775044912176039512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165789.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A173016.P1321067361305043164

`∪[A002191(n+1), ∑[A083531(n+1)]]`
-/

namespace A173016.P1321067361305043164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173016.P1321067361305043164

noncomputable section

/-- A173016: Numbers k such that the sequence B = B_k defined by {B(1) = 1; for i >= 2: B(i) = the smallest number h such that sigma(h) = A000203(h) = B(i-1) + k; or B(i) = 0 if no such number h exists} is not the sequence {A063524(j): j >= 1}.

Offset 1, canonical program `A173016.P1321067361305043164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173016 (n : ℕ) : ℤ :=
  (A173016.P1321067361305043164.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173016.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174425.P9911007775438505135

`A057494(n+1)-A057494(n)-2*(n+1)-1`
-/

namespace A174425.P9911007775438505135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057494 (n + 1) - A057494 n - (2 * (n + 1) : ℤ) - 1

end

end A174425.P9911007775438505135

noncomputable section

/-- A174425: Total number of divisors of all n-digit numbers.

Offset 1, canonical program `A174425.P9911007775438505135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174425 (n : ℕ) : ℤ :=
  A174425.P9911007775438505135.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174425.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A174961.P1799675732854535246

`A048105(A013929(n+1))`
-/

namespace A174961.P1799675732854535246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A013929 (n + 1)).toNat

end

end A174961.P1799675732854535246

noncomputable section

/-- A174961: Number of non-unitary divisors of the n-th nonsquarefree number.

Offset 1, canonical program `A174961.P1799675732854535246`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A048105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A174961 (n : ℕ) : ℤ :=
  A174961.P1799675732854535246.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A048105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A174961.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A175918.P158714506234326648

`A003817(n)-and(n, A145341(n+1))`
-/

namespace A175918.P158714506234326648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - Int.land (n : ℤ) (A145341 (n + 1))

end

end A175918.P158714506234326648

noncomputable section

/-- A175918: Convert n to binary. NAND each respective digit of binary n and binary A030101(n), where A030101(n) is the reversal of the order of the digits in the binary representation of n (given in decimal). a(n) is the decimal value of the result.

Offset 0, canonical program `A175918.P158714506234326648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175918 (n : ℕ) : ℤ :=
  A175918.P158714506234326648.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176345.P6787886685933491755

`∑{d}[n+1, A074722(#)*A345264((n+1)/#)]`
-/

namespace A176345.P6787886685933491755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A345264 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A176345.P6787886685933491755

noncomputable section

/-- A176345: Sum of gcd(k,n) from k = 1 to n over "regular" integers only (an integer k is regular if there is an x such that k^2 x == k (mod n)).

Offset 1, canonical program `A176345.P6787886685933491755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176345 (n : ℕ) : ℤ :=
  A176345.P6787886685933491755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176345.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A086933.P4574553822298761829

`∑{d}[n+1, A111938(#)*A374367((n+1)/#)]`
-/

namespace A086933.P4574553822298761829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111938 d * A374367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A086933.P4574553822298761829

noncomputable section

/-- A086933: Number of solutions to x^2 + y^2 = 0 mod n.

Offset 1, canonical program `A086933.P4574553822298761829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086933 (n : ℕ) : ℤ :=
  A086933.P4574553822298761829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087207.P12536008426233777954

`A048675(A007947(n+1))`
-/

namespace A087207.P12536008426233777954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A007947 (n + 1)).toNat

end

end A087207.P12536008426233777954

noncomputable section

/-- A087207: A binary representation of the primes that divide a number, shown in decimal.

Offset 1, canonical program `A087207.P12536008426233777954`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087207 (n : ℕ) : ℤ :=
  A087207.P12536008426233777954.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087207.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A089166.P15816680771421305787

`Δ[A161187(2*n+1)]-2`
-/

namespace A089166.P15816680771421305787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161187 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A089166.P15816680771421305787

noncomputable section

/-- A089166: Number of primes between squares of successive odd numbers.

Offset 1, canonical program `A089166.P15816680771421305787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A089166 (n : ℕ) : ℤ :=
  A089166.P15816680771421305787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A089166.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A092350.P468185143034267318

`A001158(n+1)-A001157(n+1)-A000203(n+1)`
-/

namespace A092350.P468185143034267318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - A001157 (n + 1) - A000203 (n + 1)

end

end A092350.P468185143034267318

noncomputable section

/-- A092350: a(n) = sigma_3(n) - sigma_2(n) - sigma_1(n).

Offset 1, canonical program `A092350.P468185143034267318`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A092350 (n : ℕ) : ℤ :=
  A092350.P468185143034267318.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A092350.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A096445.P14489248109655328566

`∑{d}[n+1, A120630(#)*A145392((n+1)/#)]`
-/

namespace A096445.P14489248109655328566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120630 d * A145392 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096445.P14489248109655328566

noncomputable section

/-- A096445: Number of reduced primitive positive definite binary quadratic forms of determinant n^2.

Offset 1, canonical program `A096445.P14489248109655328566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7000 terms. -/
def A096445 (n : ℕ) : ℤ :=
  A096445.P14489248109655328566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7000 terms. -/
def A096445.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A099377.P13407792628475185126

`A038040(n+1)/A324121(n+1)`
-/

namespace A099377.P13407792628475185126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A099377.P13407792628475185126

noncomputable section

/-- A099377: Numerators of the harmonic means of the divisors of the positive integers.

Offset 1, canonical program `A099377.P13407792628475185126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099377 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099377.P13407792628475185126.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099978.P7649442531335869287

`A001157(2*n+1)`
-/

namespace A099978.P7649442531335869287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (2 * n + 1)

end

end A099978.P7649442531335869287

noncomputable section

/-- A099978: Bisection of A001157: a(n) = sigma_2(2n-1).

Offset 1, canonical program `A099978.P7649442531335869287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099978 (n : ℕ) : ℤ :=
  A099978.P7649442531335869287.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099979.P4894634781484257350

`A001157(2*(n+1))`
-/

namespace A099979.P4894634781484257350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (2 * (n + 1))

end

end A099979.P4894634781484257350

noncomputable section

/-- A099979: Bisection of A001157: sigma_2(2n).

Offset 1, canonical program `A099979.P4894634781484257350`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099979 (n : ℕ) : ℤ :=
  A099979.P4894634781484257350.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099979.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A106099.P6342612745526486747

`∩[A160337(n+1), A277965(n+1)]`
-/

namespace A106099.P6342612745526486747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106099.P6342612745526486747

noncomputable section

/-- A106099: Primes with maximal digit = 3.

Offset 1, canonical program `A106099.P6342612745526486747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 871 terms. -/
def A106099 (n : ℕ) : ℤ :=
  (A106099.P6342612745526486747.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 871 terms. -/
def A106099.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107147.P16137290350496970727

`∪[A139874(n+1), A139879(n+1)]`
-/

namespace A107147.P16137290350496970727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P16137290350496970727

noncomputable section

/-- A107147: Primes of the form 3x^2 + 14y^2.

Offset 1, canonical program `A107147.P16137290350496970727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107147 (n : ℕ) : ℤ :=
  (A107147.P16137290350496970727.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107147.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A114305.P16547444787834545960

`A114306(n+1)-A169585(n)`
-/

namespace A114305.P16547444787834545960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114306 (n + 1) - A169585 n

end

end A114305.P16547444787834545960

noncomputable section

/-- A114305: Numbers k such that Fibonacci(k) has more distinct prime factors than k does.

Offset 1, canonical program `A114305.P16547444787834545960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A114305 (n : ℕ) : ℤ :=
  A114305.P16547444787834545960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A114305.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115000.P14466011705002378707

`Δ[A115001(n+4)]`
-/

namespace A115000.P14466011705002378707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115001 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115000.P14466011705002378707

noncomputable section

/-- A115000: a(n) = J_2(n) / 24.

Offset 5, canonical program `A115000.P14466011705002378707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A115000 (n : ℕ) : ℤ :=
  A115000.P14466011705002378707.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A115000.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A116906.P328593994969675773

`A001157(A000142(n))`
-/

namespace A116906.P328593994969675773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A000142 n).toNat

end

end A116906.P328593994969675773

noncomputable section

/-- A116906: Sum of squares of divisors of n!.

Offset 0, canonical program `A116906.P328593994969675773`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116906 (n : ℕ) : ℤ :=
  A116906.P328593994969675773.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A116913.P16129246459662584744

`(3*A001157(n+1)-A000203(n+1))/2`
-/

namespace A116913.P16129246459662584744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A001157 (n + 1) - A000203 (n + 1) : ℚ) / 2

end

end A116913.P16129246459662584744

noncomputable section

/-- A116913: Inverse Moebius transform of pentagonal numbers.

Offset 1, canonical program `A116913.P16129246459662584744`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116913 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A116913.P16129246459662584744.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117108.P13738302972164645940

`∑{d}[n+1, A327274(#)*A366813((n+1)/#)]`
-/

namespace A117108.P13738302972164645940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327274 d * A366813 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117108.P13738302972164645940

noncomputable section

/-- A117108: Moebius transform of tetrahedral numbers.

Offset 1, canonical program `A117108.P13738302972164645940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117108 (n : ℕ) : ℤ :=
  A117108.P13738302972164645940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117108.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A125203.P7914855552444812704

`round(A293513(4*n+5)/2)`
-/

namespace A125203.P7914855552444812704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A293513 (4 * n + 5) : ℚ) / 2)

end

end A125203.P7914855552444812704

noncomputable section

/-- A125203: Number of ways to write n as 4*x*y - x - y with 1<=x<=y.

Offset 1, canonical program `A125203.P7914855552444812704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A125203 (n : ℕ) : ℤ :=
  A125203.P7914855552444812704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A125203.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A128693.P540367086758786083

`∩[A106843(n+1), A231877(n+1)]`
-/

namespace A128693.P540367086758786083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128693.P540367086758786083

noncomputable section

/-- A128693: Numbers of the form 3^k*p, where 1 <= k <= 6 and p is a prime different from 3.

Offset 1, canonical program `A128693.P540367086758786083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A128693 (n : ℕ) : ℤ :=
  (A128693.P540367086758786083.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A128693.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140826.P13460497171487579116

`lt[A231167(n+3), 1]+3`
-/

namespace A140826.P13460497171487579116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231167 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A140826.P13460497171487579116

noncomputable section

/-- A140826: Arithmetic nondivisor means.

Offset 1, canonical program `A140826.P13460497171487579116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1234 terms. -/
def A140826 (n : ℕ) : ℤ :=
  (A140826.P13460497171487579116.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1234 terms. -/
def A140826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141138.P26682240259945506

`A175247(n+1)-1`
-/

namespace A141138.P26682240259945506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1) - 1

end

end A141138.P26682240259945506

noncomputable section

/-- A141138: a(n) = prime(A028815(n) - 1) - 1.

Offset 0, canonical program `A141138.P26682240259945506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141138 (n : ℕ) : ℤ :=
  A141138.P26682240259945506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141242.P5265677567583654278

`A000005(A009087(n+1))`
-/

namespace A141242.P5265677567583654278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A009087 (n + 1)).toNat

end

end A141242.P5265677567583654278

noncomputable section

/-- A141242: a(n) is the number of divisors of the n-th positive integer with a prime number of divisors. In other words, a(n) is the number of divisors of A009087(n).

Offset 1, canonical program `A141242.P5265677567583654278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141242 (n : ℕ) : ℤ :=
  A141242.P5265677567583654278.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141242.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144255.P6279309011135346714

`(A085722(n+1)%A081619(2*(n+1)))²+1`
-/

namespace A144255.P6279309011135346714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085722 (n + 1)) (A081619 (2 * (n + 1))) ^ 2 + 1

end

end A144255.P6279309011135346714

noncomputable section

/-- A144255: Semiprimes of the form k^2+1.

Offset 1, canonical program `A144255.P6279309011135346714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A144255 (n : ℕ) : ℤ :=
  A144255.P6279309011135346714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A144255.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A152442.P14276229364845082290

`lt[2, A000005(A137926(n+1))]+1`
-/

namespace A152442.P14276229364845082290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A137926 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A152442.P14276229364845082290

noncomputable section

/-- A152442: n is included if the largest divisor of n that is coprime to d(n) is a composite, where d(n) is the number of divisors of n.

Offset 1, canonical program `A152442.P14276229364845082290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152442 (n : ℕ) : ℤ :=
  (A152442.P14276229364845082290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152442.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A154405.P12804035702119283874

`A079273(A155133(n+1)+1)`
-/

namespace A154405.P12804035702119283874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079273 (A155133 (n + 1) + 1).toNat

end

end A154405.P12804035702119283874

noncomputable section

/-- A154405: Primes of the form 20n^2+8n+1.

Offset 1, canonical program `A154405.P12804035702119283874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. -/
def A154405 (n : ℕ) : ℤ :=
  A154405.P12804035702119283874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. -/
def A154405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155989.P8151914157851154812

`A000040(A092620(n+1))`
-/

namespace A155989.P8151914157851154812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A092620 (n + 1)).toNat

end

end A155989.P8151914157851154812

noncomputable section

/-- A155989: List of numbers prime(k) as k runs through the numbers with a single prime digit.

Offset 1, canonical program `A155989.P8151914157851154812`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155989 (n : ℕ) : ℤ :=
  A155989.P8151914157851154812.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155989.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A156976.P13794294361678853622

`∩[A023173(n+1), A092626(n+1)]`
-/

namespace A156976.P13794294361678853622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156976.P13794294361678853622

noncomputable section

/-- A156976: Primes whose last digit is not a prime but all the other digits are primes.

Offset 1, canonical program `A156976.P13794294361678853622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A156976 (n : ℕ) : ℤ :=
  (A156976.P13794294361678853622.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A156976.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A157227.P14866030658019215904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157227.P14866030658019215904.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A161841.P10874343468678800026

`A038548(n+1)*2`
-/

namespace A161841.P10874343468678800026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) * 2

end

end A161841.P10874343468678800026

noncomputable section

/-- A161841: Number of factors, with repetition, in all distinct pairs (a <= b) such that a*b = n.

Offset 1, canonical program `A161841.P10874343468678800026`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161841 (n : ℕ) : ℤ :=
  A161841.P10874343468678800026.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161841.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A164376.P15310961995427451889

`∪[A023002(n), A025583(n+1)]`
-/

namespace A164376.P15310961995427451889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164376.P15310961995427451889

noncomputable section

/-- A164376: Nonprime numbers that are not a sum of 2 primes.

Offset 1, canonical program `A164376.P15310961995427451889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164376 (n : ℕ) : ℤ :=
  (A164376.P15310961995427451889.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164376.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171567.P6146138832837628714

`A033184(n+1)*A097807(n)`
-/

namespace A171567.P6146138832837628714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (n + 1) * A097807 n

end

end A171567.P6146138832837628714

noncomputable section

/-- A171567: Riordan array (f(x), x*f(x)) where f(x) is the g.f. of A168491.

Offset 0, canonical program `A171567.P6146138832837628714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171567 (n : ℕ) : ℤ :=
  A171567.P6146138832837628714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171567.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174051.P16173755171828309437

`filter[A008784(n+1), A066247(#)]`
-/

namespace A174051.P16173755171828309437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A174051.P16173755171828309437

noncomputable section

/-- A174051: Composite numbers of the form x^2+y^2, gcd(x,y) = 1.

Offset 1, canonical program `A174051.P16173755171828309437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6476 terms. -/
def A174051 (n : ℕ) : ℤ :=
  A174051.P16173755171828309437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6476 terms. -/
def A174051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174933.P15059812043474275287

`∑{d}[n+1, A338576(#)]`
-/

namespace A174933.P15059812043474275287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A338576 d

end

end A174933.P15059812043474275287

noncomputable section

/-- A174933: a(n) = Sum_{d|n} A007955(d) * A000027(d) = Sum_{d|n} A007955(d) * (d), where A007955(m) = product of divisors of m.

Offset 1, canonical program `A174933.P15059812043474275287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A174933 (n : ℕ) : ℤ :=
  A174933.P15059812043474275287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A174933.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A128830.P9449490363820853623

`A000005(A137926(n+1))`
-/

namespace A128830.P9449490363820853623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A137926 (n + 1)).toNat

end

end A128830.P9449490363820853623

noncomputable section

/-- A128830: a(n) = the number of positive divisors of n which are coprime to d(n), where d(n) = the number of positive divisors of n.

Offset 1, canonical program `A128830.P9449490363820853623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A128830 (n : ℕ) : ℤ :=
  A128830.P9449490363820853623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A128830.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A165681.P2568694064747415589

`p?[A257772(n+1)+1]`
-/

namespace A165681.P2568694064747415589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257772 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165681.P2568694064747415589

noncomputable section

/-- A165681: Primes p such that 3*p*(p-1)+1 is not prime.

Offset 1, canonical program `A165681.P2568694064747415589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. -/
def A165681 (n : ℕ) : ℤ :=
  A165681.P2568694064747415589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. -/
def A165681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166565.P15076705835472780470

`∩[A084354(n+1), A166566(n+1)]`
-/

namespace A166565.P15076705835472780470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P15076705835472780470

noncomputable section

/-- A166565: Primes p such that product of digits +- 1 is prime.

Offset 1, canonical program `A166565.P15076705835472780470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A166565 (n : ℕ) : ℤ :=
  (A166565.P15076705835472780470.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A166565.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A112301.P15026904141317085207

`A113652(n+1)*A130731(n)`
-/

namespace A112301.P15026904141317085207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113652 (n + 1) * A130731 n

end

end A112301.P15026904141317085207

noncomputable section

/-- A112301: Expansion of (eta(q) * eta(q^16))^2 / (eta(q^2) * eta(q^8)) in powers of q.

Offset 1, canonical program `A112301.P15026904141317085207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112301 (n : ℕ) : ℤ :=
  A112301.P15026904141317085207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112301.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A128488.P2749553590906552551

`(n+1)*A126080(n+1)/2`
-/

namespace A128488.P2749553590906552551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A126080 (n + 1) : ℚ) / 2

end

end A128488.P2749553590906552551

noncomputable section

/-- A128488: a(n) = sum of terms in n-th row of irregular table A128487.

Offset 1, canonical program `A128488.P2749553590906552551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128488 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128488.P2749553590906552551.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128488.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129308.P2055734380787893719

`A088722(n+1)+A059841(n+1)`
-/

namespace A129308.P2055734380787893719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (n + 1) + A059841 (n + 1)

end

end A129308.P2055734380787893719

noncomputable section

/-- A129308: a(n) is the number of positive integers k such that k*(k+1) divides n.

Offset 1, canonical program `A129308.P2055734380787893719`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088722, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129308 (n : ℕ) : ℤ :=
  A129308.P2055734380787893719.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088722, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129308.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A137324.P13493334267181104569

`A048865(n+3)+A105221(n+3)`
-/

namespace A137324.P13493334267181104569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 3) + A105221 (n + 3)

end

end A137324.P13493334267181104569

noncomputable section

/-- A137324: a(n) = Sum_{prime p < n} gcd(n,p).

Offset 3, canonical program `A137324.P13493334267181104569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048865, A105221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A137324 (n : ℕ) : ℤ :=
  A137324.P13493334267181104569.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048865, A105221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A137324.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A145390.P15585800402733348238

`A112329(n+1)+A183063(n+1)`
-/

namespace A145390.P15585800402733348238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (n + 1) + A183063 (n + 1)

end

end A145390.P15585800402733348238

noncomputable section

/-- A145390: Number of sublattices of index n of a centered rectangular lattice fixed by a reflection.

Offset 1, canonical program `A145390.P15585800402733348238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145390 (n : ℕ) : ℤ :=
  A145390.P15585800402733348238.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147807.P3053565621181724089

`n+1+A147806(n+1)`
-/

namespace A147807.P3053565621181724089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A147806 (n + 1)

end

end A147807.P3053565621181724089

noncomputable section

/-- A147807: Partial sums of A147810(n) = tau(n^2 + 1)/2.

Offset 1, canonical program `A147807.P3053565621181724089`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147807 (n : ℕ) : ℤ :=
  A147807.P3053565621181724089.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147807.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147843.P14429766809705781327

`-n*A010815(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147843.P14429766809705781327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) * A010815 n

end

end A147843.P14429766809705781327

noncomputable section

/-- A147843: a(n) = -n*A010815(n).

Offset 0, canonical program `A147843.P14429766809705781327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147843 (n : ℕ) : ℤ :=
  A147843.P14429766809705781327.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147843.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A156077.P10312704143839705778

`n+1-A074286(n+1)`
-/

namespace A156077.P10312704143839705778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A074286 (n + 1)

end

end A156077.P10312704143839705778

noncomputable section

/-- A156077: a(n) = #{1<=k<=n : A000002(k)=1}.

Offset 1, canonical program `A156077.P10312704143839705778`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156077 (n : ℕ) : ℤ :=
  A156077.P10312704143839705778.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156077.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A158077.P7790536716201207724

`lcm(3^n, A157782(n))`
-/

namespace A158077.P7790536716201207724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 ^ n : ℤ) (A157782 n)

end

end A158077.P7790536716201207724

noncomputable section

/-- A158077: Denominator of Bernoulli(n, 1/6).

Offset 0, canonical program `A158077.P7790536716201207724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A158077 (n : ℕ) : ℤ :=
  (A158077.P7790536716201207724.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A158077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158654.P15431746256361164345

`2^n*A157818(n)`
-/

namespace A158654.P15431746256361164345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A157818 n

end

end A158654.P15431746256361164345

noncomputable section

/-- A158654: Denominator of Bernoulli(n, 1/8).

Offset 0, canonical program `A158654.P15431746256361164345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A158654 (n : ℕ) : ℤ :=
  A158654.P15431746256361164345.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A158654.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A086668.P4920581332236016487

`A305818(n+1)+A101264(n+1)`
-/

namespace A086668.P4920581332236016487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305818 (n + 1) + A101264 (n + 1)

end

end A086668.P4920581332236016487

noncomputable section

/-- A086668: Number of divisors d of n such that 2d+1 is a prime.

Offset 1, canonical program `A086668.P4920581332236016487`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101264, A305818, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086668 (n : ℕ) : ℤ :=
  A086668.P4920581332236016487.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101264, A305818, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086700.P8971596517453946543

`A000010(A000217(n+1))`
-/

namespace A086700.P8971596517453946543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000217 (n + 1)).toNat

end

end A086700.P8971596517453946543

noncomputable section

/-- A086700: Euler phi function applied to the triangular numbers.

Offset 1, canonical program `A086700.P8971596517453946543`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086700 (n : ℕ) : ℤ :=
  A086700.P8971596517453946543.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086700.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A089288.P14608164159203676811

`A000010(A011545(n))`
-/

namespace A089288.P14608164159203676811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A011545 n).toNat

end

end A089288.P14608164159203676811

noncomputable section

/-- A089288: Euler's totient of floor(Pi*10^n), Pi=3.14....

Offset 0, canonical program `A089288.P14608164159203676811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089288 (n : ℕ) : ℤ :=
  A089288.P14608164159203676811.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089288.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A091454.P11422470773491775725

`lt[3*A000010(n+1), n]+1`
-/

namespace A091454.P11422470773491775725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A091454.P11422470773491775725

noncomputable section

/-- A091454: Integers k such that 3*phi(k) < k.

Offset 1, canonical program `A091454.P11422470773491775725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8432 terms. -/
def A091454 (n : ℕ) : ℤ :=
  (A091454.P11422470773491775725.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8432 terms. -/
def A091454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093653.P11288549894357571453

`A292257(n+1)+A000120(n+1)`
-/

namespace A093653.P11288549894357571453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (n + 1) + A000120 (n + 1)

end

end A093653.P11288549894357571453

noncomputable section

/-- A093653: Total number of 1's in binary expansion of all divisors of n.

Offset 1, canonical program `A093653.P11288549894357571453`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292257, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093653 (n : ℕ) : ℤ :=
  A093653.P11288549894357571453.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292257, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093653.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094472.P13859718929151834946

`(n+1)*A000005(n+1)-A000203(n+1)-A000010(n+1)`
-/

namespace A094472.P13859718929151834946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) - A000203 (n + 1) - A000010 (n + 1)

end

end A094472.P13859718929151834946

noncomputable section

/-- A094472: a(n) = n*tau(n) - sigma(n) - phi(n), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A094472.P13859718929151834946`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094472 (n : ℕ) : ℤ :=
  A094472.P13859718929151834946.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094872.P17805697036999434631

`A000010(A056911(n+2))/A000005(A056911(n+2))`
-/

namespace A094872.P17805697036999434631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A056911 (n + 2)).toNat : ℚ) / (A000005 (A056911 (n + 2)).toNat : ℚ)

end

end A094872.P17805697036999434631

noncomputable section

/-- A094872: phi(n)/tau(n), for odd squarefree n > 1 (A056911), phi = A000010, tau = A000005.

Offset 1, canonical program `A094872.P17805697036999434631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A056911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A094872 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094872.P17805697036999434631.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A056911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A094872.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A097604.P12947743009759751019

`floor(sqrt(2*(n+1))*A000010(n+1)-(n+1))`
-/

namespace A097604.P12947743009759751019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 * (n + 1) : ℝ) * (A000010 (n + 1) : ℝ) - (n + 1 : ℝ)⌋

end

end A097604.P12947743009759751019

noncomputable section

/-- A097604: a(n) = floor( phi(n)*sqrt(2*n) ) - n.

Offset 1, canonical program `A097604.P12947743009759751019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097604 (n : ℕ) : ℤ :=
  A097604.P12947743009759751019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097605.P4373069648380416805

`lt[(n*(n+2))%A000010(n+1)+1, 2]+1`
-/

namespace A097605.P4373069648380416805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n * (n + 2) : ℤ) (A000010 (n + 1)) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097605.P4373069648380416805

noncomputable section

/-- A097605: Numbers n such that phi(n) divides n^2 - 1, where phi(n) (A000010) is number of positive integers <= n and coprime to n.

Offset 1, canonical program `A097605.P4373069648380416805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5153 terms. -/
def A097605 (n : ℕ) : ℤ :=
  (A097605.P4373069648380416805.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5153 terms. -/
def A097605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098006.P10183433005591828709

`A005097(n+1)-A000010(A006093(n+2))`
-/

namespace A098006.P10183433005591828709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - A000010 (A006093 (n + 2)).toNat

end

end A098006.P10183433005591828709

noncomputable section

/-- A098006: (p-1)/2 - phi(p-1) as p runs through the odd primes.

Offset 2, canonical program `A098006.P10183433005591828709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098006 (n : ℕ) : ℤ :=
  A098006.P10183433005591828709.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098006.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A100808.P5859117941916704897

`char[A156243(n+1)]*A078880(n+1)+1`
-/

namespace A100808.P5859117941916704897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A078880 (n + 1) + 1

end

end A100808.P5859117941916704897

noncomputable section

/-- A100808: Quet transform (see A101387 for definition) of Kolakoski sequence A000002.

Offset 1, canonical program `A100808.P5859117941916704897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100808 (n : ℕ) : ℤ :=
  A100808.P5859117941916704897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100808.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107647.P4071914148309250893

`A000010(A000073(n+2))`
-/

namespace A107647.P4071914148309250893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000073 (n + 2)).toNat

end

end A107647.P4071914148309250893

noncomputable section

/-- A107647: Euler's totient function applied to tribonacci numbers.

Offset 2, canonical program `A107647.P4071914148309250893`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107647 (n : ℕ) : ℤ :=
  A107647.P4071914148309250893.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107797.P5611527584116679134

`A000010(A134816(n+1))`
-/

namespace A107797.P5611527584116679134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A134816 (n + 1)).toNat

end

end A107797.P5611527584116679134

noncomputable section

/-- A107797: a(n) = phi(Padovan(n+4)).

Offset 1, canonical program `A107797.P5611527584116679134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107797 (n : ℕ) : ℤ :=
  A107797.P5611527584116679134.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107797.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A109606.P2415810041766612210

`A000010(n+1)-1`
-/

namespace A109606.P2415810041766612210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

end

end A109606.P2415810041766612210

noncomputable section

/-- A109606: Number of numbers k with 1 < k < n which are relatively prime to n.

Offset 1, canonical program `A109606.P2415810041766612210`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109606 (n : ℕ) : ℤ :=
  A109606.P2415810041766612210.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109606.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A110601.P15769092339802905093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110601 (n : ℕ) : ℤ :=
  A110601.P15769092339802905093.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110601.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111123.P4994184408905448114

`A001083(n+4)-A001083(n+3)`
-/

namespace A111123.P4994184408905448114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001083 (n + 4) - A001083 (n + 3)

end

end A111123.P4994184408905448114

noncomputable section

/-- A111123: Number of 2's in n-th "Kolakoski" string defined in A054349.

Offset 0, canonical program `A111123.P4994184408905448114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001083, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111123 (n : ℕ) : ℤ :=
  A111123.P4994184408905448114.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001083, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111123.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A114810.P3387844851624277263

`A000010((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]`
-/

namespace A114810.P3387844851624277263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

end

end A114810.P3387844851624277263

noncomputable section

/-- A114810: Number of complex, weakly primitive Dirichlet characters modulo n.

Offset 1, canonical program `A114810.P3387844851624277263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114810 (n : ℕ) : ℤ :=
  A114810.P3387844851624277263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115070.P14336137685640235068

`A000010(n+1)/A115069(n+1)`
-/

namespace A115070.P14336137685640235068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A115069 (n + 1) : ℚ)

end

end A115070.P14336137685640235068

noncomputable section

/-- A115070: a(n) = phi(n)/3^b(n), where b(n) is #{primes p=1 mod 3 dividing n}.

Offset 1, canonical program `A115070.P14336137685640235068`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A115069, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115070 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115070.P14336137685640235068.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A115069, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115070.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A117283.P3554693747055773777

`eq[1, A010057(n+1-A000010(n+1))]+1`
-/

namespace A117283.P3554693747055773777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 ((n + 1 : ℤ) - A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117283.P3554693747055773777

noncomputable section

/-- A117283: Numbers k for which the cototient k-phi(k) is a cube.

Offset 1, canonical program `A117283.P3554693747055773777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1625 terms. -/
def A117283 (n : ℕ) : ℤ :=
  (A117283.P3554693747055773777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1625 terms. -/
def A117283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117284.P233037619182171599

`record[n+1-A271439(n+1-A000010(n+1))]`
-/

namespace A117284.P233037619182171599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A271439 ((n + 1 : ℤ) - A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117284.P233037619182171599

noncomputable section

/-- A117284: Numbers k for which the cototient k-phi(k) is a triangular number.

Offset 1, canonical program `A117284.P233037619182171599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1816 terms. -/
def A117284 (n : ℕ) : ℤ :=
  A117284.P233037619182171599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1816 terms. -/
def A117284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117290.P4275547685329266440

`record[(n+1)*A010056(n+1-A000010(n+1))]`
-/

namespace A117290.P4275547685329266440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010056 ((n + 1 : ℤ) - A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117290.P4275547685329266440

noncomputable section

/-- A117290: Numbers k for which the cototient k - phi(k) is a Fibonacci number.

Offset 1, canonical program `A117290.P4275547685329266440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1699 terms. -/
def A117290 (n : ℕ) : ℤ :=
  A117290.P4275547685329266440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1699 terms. -/
def A117290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117307.P10752850070173381648

`eq[1, A289356(A000010(n+1))]+1`
-/

namespace A117307.P10752850070173381648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117307.P10752850070173381648

noncomputable section

/-- A117307: Numbers for which (phi(n))^2+phi(n)+1 is a prime number.

Offset 1, canonical program `A117307.P10752850070173381648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A117307 (n : ℕ) : ℤ :=
  (A117307.P10752850070173381648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A117307.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A120351.P11340224125315453001

`record[2*(n+1)/A000010(A090387(n+1))]`
-/

namespace A120351.P11340224125315453001
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A000010 (A090387 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120351.P11340224125315453001

noncomputable section

/-- A120351: Even numbers k such that the number of odd divisors r and the number of even divisors s are both divisors of k.

Offset 1, canonical program `A120351.P11340224125315453001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120351 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120351.P11340224125315453001.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121048.P10222907602682812102

`n+1+A000010(n+1)`
-/

namespace A121048.P10222907602682812102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000010 (n + 1)

end

end A121048.P10222907602682812102

noncomputable section

/-- A121048: a(n) = n + phi(n), where phi is the Euler totient function.

Offset 1, canonical program `A121048.P10222907602682812102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121048 (n : ℕ) : ℤ :=
  A121048.P10222907602682812102.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122255.P582623873584825635

`A065333(A000010(n+1))`
-/

namespace A122255.P582623873584825635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A000010 (n + 1)).toNat

end

end A122255.P582623873584825635

noncomputable section

/-- A122255: Characteristic function of numbers with 3-smooth Euler's totient (A000010).

Offset 1, canonical program `A122255.P582623873584825635`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A065333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122255 (n : ℕ) : ℤ :=
  A122255.P582623873584825635.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A065333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122410.P12302092588494273292

`∑{d}[n+1, A000010(#)*A100995((n+1)/#)]`
-/

namespace A122410.P12302092588494273292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A100995 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A122410.P12302092588494273292

noncomputable section

/-- A122410: a(n) is the sum of j's for those k's, 1 <= k <= n, where gcd(k,n) = p^j, p = prime.

Offset 1, canonical program `A122410.P12302092588494273292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122410 (n : ℕ) : ℤ :=
  A122410.P12302092588494273292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123139.P8555552717810402474

`A123134(n+1)-A123135(n+1)`
-/

namespace A123139.P8555552717810402474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) - A123135 (n + 1)

end

end A123139.P8555552717810402474

noncomputable section

/-- A123139: a(n) = prime(n)*(prime(n + 1) + 1) - (n^3 + sum of digits of n^3).

Offset 1, canonical program `A123139.P8555552717810402474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123135, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123139 (n : ℕ) : ℤ :=
  A123139.P8555552717810402474.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123135, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123139.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A126106.P3127223409629631580

`record[A000010(n)+a(A000010(n))]` with `a(0)=0, a(1)=0`
-/

namespace A126106.P3127223409629631580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A000010 n + f1 (A000010 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126106.P3127223409629631580

noncomputable section

/-- A126106: Record values in A092693 = sum of iterated phi(n).

Offset 1, canonical program `A126106.P3127223409629631580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A126106 (n : ℕ) : ℤ :=
  A126106.P3127223409629631580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A126106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126775.P10311173591226257013

`A000010(n+1)²*A000005(n+1)`
-/

namespace A126775.P10311173591226257013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2 * A000005 (n + 1)

end

end A126775.P10311173591226257013

noncomputable section

/-- A126775: a(n) = phi(n)^2 * d(n), where phi = A000010, d = A000005.

Offset 1, canonical program `A126775.P10311173591226257013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126775 (n : ℕ) : ℤ :=
  A126775.P10311173591226257013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127473.P9698007400369304439

`A000010(n+1)²`
-/

namespace A127473.P9698007400369304439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2

end

end A127473.P9698007400369304439

noncomputable section

/-- A127473: a(n) = phi(n)^2.

Offset 1, canonical program `A127473.P9698007400369304439`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127473 (n : ℕ) : ℤ :=
  A127473.P9698007400369304439.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127473.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A129335.P13851088518621729713

`A000010(A006882(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129335.P13851088518621729713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006882 (n + 1)).toNat

end

end A129335.P13851088518621729713

noncomputable section

/-- A129335: a(n) = phi(n!!) where phi is the Euler totient function. In other words, a(n) = A000010(A006882(n)).

Offset 1, canonical program `A129335.P13851088518621729713`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129335 (n : ℕ) : ℤ :=
  A129335.P13851088518621729713.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130586.P17925529439959671154

`∑{d}[n+1, A000010(#)*A011782(#)]`
-/

namespace A130586.P17925529439959671154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A011782 d

end

end A130586.P17925529439959671154

noncomputable section

/-- A130586: Row sums of triangle A130585.

Offset 0, canonical program `A130586.P17925529439959671154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A130586 (n : ℕ) : ℤ :=
  A130586.P17925529439959671154.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A130586.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134269.P13392884201192576431

`∑{d}[n+1, floor(A000010(n+1+#)/(n+1))]`
-/

namespace A134269.P13392884201192576431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(A000010 (n + 1 + d) : ℚ) / (n + 1 : ℚ)⌋

end

end A134269.P13392884201192576431

noncomputable section

/-- A134269: Number of solutions to the equation p^k - p^(k-1) = n, where k is a positive integer and p is prime.

Offset 1, canonical program `A134269.P13392884201192576431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134269 (n : ℕ) : ℤ :=
  A134269.P13392884201192576431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139791.P5658122934383190521

`ceil((A015919(n+3)-sqrt(2))/2)`
-/

namespace A139791.P5658122934383190521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A015919 (n + 3) : ℝ) - Real.sqrt (2 : ℝ)) / 2⌉

end

end A139791.P5658122934383190521

noncomputable section

/-- A139791: Numbers n for which 2n is a multiple of A002326(n), the multiplicative order of 2 mod 2n+1.

Offset 1, canonical program `A139791.P5658122934383190521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139791 (n : ℕ) : ℤ :=
  A139791.P5658122934383190521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139791.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140700.P15054236554757068483

`(n+1)*A069158(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140700.P15054236554757068483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069158 (n + 1)

end

end A140700.P15054236554757068483

noncomputable section

/-- A140700: a(n) = n*A069158(n).

Offset 1, canonical program `A140700.P15054236554757068483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140700 (n : ℕ) : ℤ :=
  A140700.P15054236554757068483.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140700.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A160889.P4866696132334601097

`A059376(n+1)/A000010(n+1)`
-/

namespace A160889.P4866696132334601097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059376 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160889.P4866696132334601097

noncomputable section

/-- A160889: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 4.

Offset 1, canonical program `A160889.P4866696132334601097`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059376, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160889 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160889.P4866696132334601097.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059376, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160889.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160891.P12024979058820824222

`A059377(n+1)/A000010(n+1)`
-/

namespace A160891.P12024979058820824222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160891.P12024979058820824222

noncomputable section

/-- A160891: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 5.

Offset 1, canonical program `A160891.P12024979058820824222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160891 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160891.P12024979058820824222.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160893.P16935836706349167096

`A059378(n+1)/A000010(n+1)`
-/

namespace A160893.P16935836706349167096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059378 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160893.P16935836706349167096

noncomputable section

/-- A160893: a(n) = Sum_{d|n} Möbius(n/d)*d^5/phi(n).

Offset 1, canonical program `A160893.P16935836706349167096`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059378, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160893 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160893.P16935836706349167096.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059378, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160893.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160895.P2150078273942846583

`A069091(n+1)/A000010(n+1)`
-/

namespace A160895.P2150078273942846583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069091 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160895.P2150078273942846583

noncomputable section

/-- A160895: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 7.

Offset 1, canonical program `A160895.P2150078273942846583`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160895 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160895.P2150078273942846583.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160895.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160897.P16752404958731061009

`A069092(n+1)/A000010(n+1)`
-/

namespace A160897.P16752404958731061009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069092 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160897.P16752404958731061009

noncomputable section

/-- A160897: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 8.

Offset 1, canonical program `A160897.P16752404958731061009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069092, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160897 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160897.P16752404958731061009.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069092, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160897.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160908.P5544833388897247786

`A069093(n+1)/A000010(n+1)`
-/

namespace A160908.P5544833388897247786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069093 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160908.P5544833388897247786

noncomputable section

/-- A160908: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 9.

Offset 1, canonical program `A160908.P5544833388897247786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160908 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160908.P5544833388897247786.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160908.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160953.P8938375607108306963

`A069094(n+1)/A000010(n+1)`
-/

namespace A160953.P8938375607108306963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069094 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160953.P8938375607108306963

noncomputable section

/-- A160953: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 10.

Offset 1, canonical program `A160953.P8938375607108306963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160953 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160953.P8938375607108306963.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160957.P14327442583971557876

`A069095(n+1)/A000010(n+1)`
-/

namespace A160957.P14327442583971557876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069095 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160957.P14327442583971557876

noncomputable section

/-- A160957: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 11.

Offset 1, canonical program `A160957.P14327442583971557876`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069095, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160957 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160957.P14327442583971557876.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069095, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160957.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163109.P21367379206329699

`A000010(A000005(n+1))`
-/

namespace A163109.P21367379206329699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (n + 1)).toNat

end

end A163109.P21367379206329699

noncomputable section

/-- A163109: a(n) = phi(tau(n)).

Offset 1, canonical program `A163109.P21367379206329699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163109 (n : ℕ) : ℤ :=
  A163109.P21367379206329699.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163109.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163368.P2070462197677030160

`A000010(A062069(n+1))`
-/

namespace A163368.P2070462197677030160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A062069 (n + 1)).toNat

end

end A163368.P2070462197677030160

noncomputable section

/-- A163368: a(n) = phi(sigma(tau(n))).

Offset 1, canonical program `A163368.P2070462197677030160`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163368 (n : ℕ) : ℤ :=
  A163368.P2070462197677030160.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163368.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A164876.P16113870689143514141

`record[(n+1)²-A000203(n+1)*A000010(n+1)]`
-/

namespace A164876.P16113870689143514141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000203 (n + 1) * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164876.P16113870689143514141

noncomputable section

/-- A164876: Record differences for n^2 - phi(n)*sigma(n).

Offset 1, canonical program `A164876.P16113870689143514141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 441 terms. -/
def A164876 (n : ℕ) : ℤ :=
  A164876.P16113870689143514141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 441 terms. -/
def A164876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164941.P10750457642055664605

`∑{d}[n+1, A000010(#)^floor(n/#)]`
-/

namespace A164941.P10750457642055664605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d : ℚ) ^ (⌊(n : ℚ) / (d : ℚ)⌋ : ℤ)

end

end A164941.P10750457642055664605

noncomputable section

/-- A164941: a(n) = Sum_{d|n} phi(n/d)^(d-1).

Offset 1, canonical program `A164941.P10750457642055664605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A164941 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A164941.P10750457642055664605.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A164941.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A166160.P15900755279161251971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047845, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166160 (n : ℕ) : ℤ :=
  A166160.P15900755279161251971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047845, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166362.P15440525138620438344

`A000010(A018252(n+1))`
-/

namespace A166362.P15440525138620438344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A018252 (n + 1)).toNat

end

end A166362.P15440525138620438344

noncomputable section

/-- A166362: a(n) = phi(nonprime(n)).

Offset 1, canonical program `A166362.P15440525138620438344`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166362 (n : ℕ) : ℤ :=
  A166362.P15440525138620438344.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171262.P14994919271324457303

`eq[2*A000010(n+2), A000010(n+1)]+1`
-/

namespace A171262.P14994919271324457303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A171262.P14994919271324457303

noncomputable section

/-- A171262: Numbers k such that phi(k) = 2*phi(k+1).

Offset 1, canonical program `A171262.P14994919271324457303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. -/
def A171262 (n : ℕ) : ℤ :=
  (A171262.P14994919271324457303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. -/
def A171262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171743.P3977573141868605585

`A000010(A001043(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171743.P3977573141868605585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001043 (n + 1)).toNat

end

end A171743.P3977573141868605585

noncomputable section

/-- A171743: a(n) = A000010(A001043(n)).

Offset 1, canonical program `A171743.P3977573141868605585`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171743 (n : ℕ) : ℤ :=
  A171743.P3977573141868605585.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171743.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172042.P6434497082481578345

`A000010(A083553(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172042.P6434497082481578345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A083553 (n + 1)).toNat

end

end A172042.P6434497082481578345

noncomputable section

/-- A172042: a(n) = A000010(A083553(n)).

Offset 1, canonical program `A172042.P6434497082481578345`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172042 (n : ℕ) : ℤ :=
  A172042.P6434497082481578345.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172042.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A173327.P8802107638902619474

`eq[A000005(A000010(n+1)), A008472(n+1)]+1`
-/

namespace A173327.P8802107638902619474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173327.P8802107638902619474

noncomputable section

/-- A173327: Numbers k such that tau(phi(k))= sopf(k).

Offset 1, canonical program `A173327.P8802107638902619474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A173327 (n : ℕ) : ℤ :=
  (A173327.P8802107638902619474.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A173327.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A175732.P1828120795872806297

`gcd(A000010(n+1), A001615(n+1))`
-/

namespace A175732.P1828120795872806297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A001615 (n + 1))

end

end A175732.P1828120795872806297

noncomputable section

/-- A175732: a(n) = gcd(phi(n), psi(n)).

Offset 1, canonical program `A175732.P1828120795872806297`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175732 (n : ℕ) : ℤ :=
  (A175732.P1828120795872806297.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175732.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176842.P18407075080678213704

`a(n-A000010(∑{e}[n+1, #]))+1` with `a(0)=0`
-/

namespace A176842.P18407075080678213704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000010 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat + 1

end

end A176842.P18407075080678213704

noncomputable section

/-- A176842: The number of iterations of the map x -> x - phi(bigomega(x)) needed to reach 1 starting at x=n.

Offset 1, canonical program `A176842.P18407075080678213704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176842 (n : ℕ) : ℤ :=
  (A176842.P18407075080678213704.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176997.P9587439984867558596

`A015919(n+2)-C(2, n+2)`
-/

namespace A176997.P9587439984867558596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 2) - (Nat.choose 2 (n + 2) : ℤ)

end

end A176997.P9587439984867558596

noncomputable section

/-- A176997: Integers k such that 2^(k-1) == 1 (mod k).

Offset 1, canonical program `A176997.P9587439984867558596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176997 (n : ℕ) : ℤ :=
  A176997.P9587439984867558596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176997.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A179179.P432816049346132752

`A000010(n+1)-A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179179.P432816049346132752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A001221 (n + 1)

end

end A179179.P432816049346132752

noncomputable section

/-- A179179: a(n) = phi(n) - omega(n) = A000010(n) - A001221(n).

Offset 1, canonical program `A179179.P432816049346132752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A179179 (n : ℕ) : ℤ :=
  A179179.P432816049346132752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A179179.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A114073.P9867924632758766548

`eq[1, A007913(A000010(n+1)+n+1)]+1`
-/

namespace A114073.P9867924632758766548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000010 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114073.P9867924632758766548

noncomputable section

/-- A114073: Numbers k such that phi(k) + k is a square.

Offset 1, canonical program `A114073.P9867924632758766548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A114073 (n : ℕ) : ℤ :=
  (A114073.P9867924632758766548.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A114073.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A117656.P11004913678404553061

`A055653(A019554(n+1))*A337101(2*(n+1))`
-/

namespace A117656.P11004913678404553061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (A019554 (n + 1)).toNat * A337101 (2 * (n + 1))

end

end A117656.P11004913678404553061

noncomputable section

/-- A117656: Number of solutions to x^(k+2)=x^2 mod n for some k>=1.

Offset 1, canonical program `A117656.P11004913678404553061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117656 (n : ℕ) : ℤ :=
  A117656.P11004913678404553061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117656.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A118731.P11117200247568763651

`lt[0, A071906(n)]`
-/

namespace A118731.P11117200247568763651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118731.P11117200247568763651

noncomputable section

/-- A118731: Numbers k such that 2^k has odd digit sum.

Offset 1, canonical program `A118731.P11117200247568763651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5024 terms. -/
def A118731 (n : ℕ) : ℤ :=
  (A118731.P11117200247568763651.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5024 terms. -/
def A118731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122179.P10778673272952612676

`A034836(n+1)-A038548(n+1)`
-/

namespace A122179.P10778673272952612676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - A038548 (n + 1)

end

end A122179.P10778673272952612676

noncomputable section

/-- A122179: Number of ways to write n as n = x*y*z with 1

Offset 1, canonical program `A122179.P10778673272952612676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034836, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122179 (n : ℕ) : ℤ :=
  A122179.P10778673272952612676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034836, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122179.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A129827.P12783245347972754053

`eq[2, A007913(A000010(n+1))]+1`
-/

namespace A129827.P12783245347972754053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A129827.P12783245347972754053

noncomputable section

/-- A129827: Numbers k such that Euler's totient phi(k) divided by 2 is a perfect square.

Offset 1, canonical program `A129827.P12783245347972754053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1163 terms. -/
def A129827 (n : ℕ) : ℤ :=
  (A129827.P12783245347972754053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1163 terms. -/
def A129827.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A137427.P7977322006733834359`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A069891, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A137427 (n : ℕ) : ℤ :=
  A137427.P7977322006733834359.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A069891, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A137427.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A162641.P7922189454188814525

`A001221(A336643(n+1))`
-/

namespace A162641.P7922189454188814525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A336643 (n + 1)).toNat

end

end A162641.P7922189454188814525

noncomputable section

/-- A162641: Number of even exponents in canonical prime factorization of n.

Offset 1, canonical program `A162641.P7922189454188814525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A336643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162641 (n : ℕ) : ℤ :=
  A162641.P7922189454188814525.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A336643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162641.provenance : SequenceMachineLib.Provenance := .conditional

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

